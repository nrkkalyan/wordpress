<?php
if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

if ( ! class_exists( 'YITH_WooCommerce_Order_Tracking' ) ) {

	/**
	 * Implements features of Yith WooCommerce Order Tracking
	 *
	 * @class   Yith_WooCommerce_Order_Tracking
	 * @package Yithemes
	 * @since   1.0.0
	 * @author  Your Inspiration Themes
	 */
	class YITH_WooCommerce_Order_Tracking {

		/**
		 * @var $_panel Panel Object
		 */
		protected $_panel;

		/**
		 * @var $_premium string Premium tab template file name
		 */
		protected $_premium = 'premium.php';

		/**
		 * @var string Premium version landing link
		 */
		protected $_premium_landing = 'http://yithemes.com/themes/plugins/yith-woocommerce-order-tracking/';

		/**
		 * @var string Plugin official documentation
		 */
		protected $_official_documentation = 'http://yithemes.com/docs-plugins/yith-woocommerce-order-tracking/';

		/**
		 * @var string Yith WooCommerce Order Tracking panel page
		 */
		protected $_panel_page = 'yith_woocommerce_order_tracking_panel';

		//region plugin settings page

		/**
		 * @var mixed|void  Default carrier name
		 */
		protected $default_carrier;

		/**
		 * @var string  Customizable text to be shown on orders
		 */
		protected $orders_pattern;

		/**
		 * @var position of text related to order details page
		 */
		protected $order_text_position;

		//endregion

		/**
		 *
		 * Initialize plugin and registers actions and filters to be used
		 *
		 * @since  1.0
		 * @author Lorenzo giuffrida
		 * @access public
		 */
		public function __construct() {

			add_action( 'admin_init', array( $this, 'register_pointer' ) );

			$this->initialize_settings();
			/**
			 *  Create YIT menu items for current plugin
			 */
			$this->create_menu_items();

			/**
			 * Add metabox on order, to let vendor add order tracking code and carrier
			 */
			add_action( 'add_meta_boxes', array( $this, 'add_order_tracking_metabox' ), 10, 2 );

			/**
			 * Save Order Meta Boxes
			 * */
			add_action( 'save_post', array( $this, 'save_order_tracking_metabox' ), 99, 2 );

			/**
			 * register action to show tracking information on customer order page
			 */
			$this->register_order_tracking_actions();

			/**
			 * Show icon on order list for picked up orders
			 */
			add_action( 'manage_shop_order_posts_custom_column', array( $this, 'prepare_picked_up_icon' ) );

			/**
			 * Set default carrier name on new orders
			 */
			add_action( 'woocommerce_checkout_order_processed', array( $this, 'set_default_carrier' ) );

			add_action( 'yith_order_tracking_premium', array( $this, 'premium_tab' ) );

			/**
			 * Show shipped icon on my orders page
			 */
			add_action( 'woocommerce_my_account_my_orders_actions', array(
				$this,
				'show_picked_up_icon_on_orders',
			), 99, 2 );

			/**
			 * Enqueue scripts and styles
			 */
			add_action( 'wp_enqueue_scripts', array( $this, 'enqueue_scripts' ) );
			add_action( 'admin_enqueue_scripts', array( $this, 'enqueue_scripts' ) );
		}

		/**
		 * Set values from plugin settings page
		 */
		public function initialize_settings() {
			$this->default_carrier     = get_option( 'ywot_carrier_default_name' );
			$this->orders_pattern      = get_option( 'ywot_order_tracking_text' );
			$this->order_text_position = get_option( 'ywot_order_tracking_text_position' );
		}

		/**
		 * Add scripts
		 *
		 * @since  1.0
		 * @author Lorenzo giuffrida
		 */
		public function enqueue_scripts() {
			global $post;

			wp_register_script( "tooltipster", YITH_YWOT_URL . 'assets/js/jquery.tooltipster.min.js', array( 'jquery' ) );
			wp_enqueue_script( 'tooltipster' );

			wp_enqueue_style( 'ywot_style', YITH_YWOT_URL . 'assets/css/ywot_style.css' );

			wp_register_script( "ywot_script",
				YITH_YWOT_URL . 'assets/js/ywot.js',
				array( 'jquery-form', 'jquery' ),
				YITH_YWOT_VERSION,
				true );

			$premium = defined( 'YITH_YWOT_PREMIUM' );

			wp_localize_script( 'ywot_script', 'ywot', array(
				'p'        => $premium,
				'ajax_url' => admin_url( 'admin-ajax.php' ),
			) );
			wp_enqueue_script( 'ywot_script' );
		}

		/**
		 * Set default carrier name when an order is created (if related option is set).
		 *
		 * @param int $post_id post id being created
		 *
		 * @since  1.0
		 * @author Lorenzo giuffrida
		 * @access public
		 * @return void
		 */
		public function set_default_carrier( $post_id ) {

			if ( isset( $this->default_carrier ) && ( strlen( $this->default_carrier ) > 0 ) ) {
				if ( defined( 'YITH_YWOT_PREMIUM' ) ) {
					add_post_meta( $post_id, 'ywot_carrier_id', $this->default_carrier );
				} else {
					add_post_meta( $post_id, 'ywot_carrier_name', $this->default_carrier );
				}
			}
		}

		/**
		 * Show a picked up icon on backend orders table
		 *
		 * @param   $column the column of backend order table being elaborated
		 *
		 * @since  1.0
		 * @author Lorenzo giuffrida
		 * @access public
		 * @return void
		 */
		public function prepare_picked_up_icon( $column ) {

			//  If column is not of type order_status, skip it
			if ( 'order_status' !== $column ) {
				return;
			}

			global $the_order;

			//  if current order is not flagged as picked up, skip
			if ( ! $this->is_order_shipped( $the_order ) ) {
				return;
			}

			$this->show_picked_up_icon( $the_order );
		}

		/**
		 *
		 * Build a text which indicates order tracking information
		 *
		 * @param WC_Order $order   post meta for current order
		 * @param string   $pattern text pattern to be used
		 *
		 * @since  1.0
		 * @author Lorenzo giuffrida
		 * @return string
		 */
		public function get_picked_up_message( $order, $pattern = '' ) {

			$data = $this->get_order_tracking_data( $order );

			if ( ! isset( $pattern ) || ( 0 == strlen( $pattern ) ) ) {
				$pattern = $this->orders_pattern;
			}

			//  Retrieve additional information to be shown
			$order_tracking_code = isset( $data['ywot_tracking_code'][0] ) ? $data['ywot_tracking_code'][0] : '';
			$order_carrier_name  = isset( $data['ywot_carrier_name'][0] ) ? $data['ywot_carrier_name'][0] : '';
			$order_pick_up_date  = isset( $data['ywot_pick_up_date'][0] ) ? $data['ywot_pick_up_date'][0] : '';

			$message = str_replace(
				array( "[carrier_name]", "[pickup_date]", "[track_code]" ),
				array(
					$order_carrier_name,
					date_i18n( get_option( 'date_format' ), strtotime( $order_pick_up_date ) ),
					$this->get_advanced_track_code( $order_tracking_code ),
				),
				$pattern );

			return $message;
		}

		/**
		 * Show a image link, stating the order has been picked up
		 *
		 * @param int|WC_Order $order     the order to show
		 * @param string       $css_class the custom CSS
		 */
		public function show_picked_up_icon( $order, $css_class = '' ) {
			if ( ! $this->is_order_shipped( $order ) ) {
				return;
			}

			$message = $this->get_picked_up_message( $order );
			?>
			<a class="button track-button <?php echo $css_class; ?>" href="#" data-title="<?php echo $message; ?>">
				<img class="track-icon track-button" src="' . YITH_YWOT_ASSETS_URL . '/images/order-picked-up.png" data-title="<?php echo $message; ?>" />
				<?php _e( 'Track', 'yith-woocommerce-order-tracking' ); ?>
			</a>
			<?php
		}

		/**
		 * Retrieve all post meta fields for a specific order
		 *
		 * @param int|WC_Order $order the order to be used
		 *
		 * @return array
		 * @author Lorenzo Giuffrida
		 * @since  1.0.0
		 */

		public function get_order_tracking_data( $order ) {
			if ( $order instanceof WC_Order ) {
			    $order_id = $order->get_id();
			} else {
			    $order_id = $order;
			}
			
			if (empty($order_id)) {
			    return false;
			}

			$data                  = get_post_custom( $order_id );
			if (empty($data)) {
			    return false;
			}
			
			$data["ywot_order_id"] = $order_id;

			return $data;
		}

		/**
		 * Show on my orders page, a link image stating the order has been picked
		 *
		 * @param array    $actions others actions registered to the same hook
		 * @param WC_Order $order   the order being shown
		 *
		 * @return mixed    action passed as arguments
		 */
		public function show_picked_up_icon_on_orders( $actions, $order ) {

			if ( function_exists( 'yith_wcmv_is_premium' ) && yith_wcmv_is_premium() ) {
				$sub_orders = apply_filters( 'yith_wcmv_suborder_icon_on_orders', YITH_Orders_Premium::get_suborder( $order->id ) );

				if ( $sub_orders ) {
					$message  = __( 'This order contains shipping costs from more than one seller. Click here to see details.', 'yith-woocommerce-order-tracking' );
					$shipped  = false;
					$url      = $order->get_view_order_url() . '#tracking_details';
					$to_print = '<a class="track-button button" style="display:inline-block;height:25px; padding-top:0; padding-bottom:0" href="' . $url . '" data-title="' . $message . '"><img class="track-button" style="height:25px;" src="' . YITH_YWOT_ASSETS_URL . '/images/order-picked-up.png" data-title="' . $message . '" /></a>';

					if ( $this->is_order_shipped( $order ) ) {
						$shipped = true;
					} else {
						foreach ( $sub_orders as $sub_order ) {
							if ( $this->is_order_shipped( $sub_order ) ) {

								$shipped = true;
								break;
							}
						}
					}

					if ( $shipped ) {
						echo $to_print;

						return $actions;
					}
				}
			}

			if ( $this->is_order_shipped( $order ) ) {
				$this->show_picked_up_icon( $order, 'button' );
			}

			return $actions;
		}

		//region    ****   Order tracking information methods   ****

		/**
		 * Add callback to show shipping details on order page, in the position choosen from plugin settings
		 *
		 * @since  1.0
		 * @author Lorenzo giuffrida
		 * @access public
		 * @return void
		 */
		public function register_order_tracking_actions() {

			if ( ! isset( $this->order_text_position ) || ( 1 == $this->order_text_position ) ) {
				add_action( 'woocommerce_order_items_table', array( $this, 'add_order_shipping_details' ) );
			} else {
				add_action( 'woocommerce_order_details_after_order_table', array(
					$this,
					'add_order_shipping_details',
				) );

			}
		}


		/**
		 * Show order tracking information on user order page when the order is set to "completed"
		 *
		 * @param $order WC_Order    the order whose tracking information have to be shown
		 *
		 * @since  1.0
		 * @author Lorenzo giuffrida
		 * @access public
		 * @return void
		 */
		function add_order_shipping_details( $order ) {

			if ( function_exists( 'yith_wcmv_is_premium' ) && yith_wcmv_is_premium() ) {
				//  Show a message stating that shipping details entered refers to the admin products only
				if ( YITH_Orders_Premium::get_suborder( $order->id ) ) {
					return;
				}
			}

			$container_class = "ywot_order_details";
			//  add top or bottom class, depending on the value of related option
			if ( 1 == $this->order_text_position ) {
				$container_class .= " top";
			} else {
				$container_class .= " bottom";
			}

			echo '<div class="' . $container_class . '">' . $this->show_tracking_information( $order, $this->orders_pattern, '' ) . '</div>';
		}


		/**
		 * Show message about the order tracking details.
		 *
		 * @param WC_Order $order   the order whose tracking information have to be shown
		 * @param string   $pattern custom text to be shown
		 * @param string   $prefix  Prefix to be shown before custom text
		 *
		 * @since  1.0
		 * @access public
		 * @return void|string
		 */
		function show_tracking_information( $order, $pattern, $prefix = '', $output = 'order' ) {

			if ( ! $this->is_order_shipped( $order->id ) ) {
				return '';
			}

			$message = $this->get_picked_up_message( $order, $pattern );

			return $prefix . $message;
		}

		//endregion


		//region    ****   Custom menu entry for plugin, using Yith plugin framework    ****

		/**
		 * Register actions and filters to be used for creating an entry on YIT Plugin menu
		 *
		 * @since  1.0
		 * @author Lorenzo giuffrida
		 * @access public
		 * @return void
		 */
		private function create_menu_items() {
			add_action( 'plugins_loaded', array( $this, 'plugin_fw_loader' ), 15 );

			//Add action links
			add_filter( 'plugin_action_links_' . plugin_basename( YITH_YWOT_DIR . '/' . basename( YITH_YWOT_FILE ) ), array(
				$this,
				'action_links',
			) );

			add_filter( 'plugin_row_meta', array( $this, 'plugin_row_meta' ), 10, 4 );

			//  Add stylesheets and scripts files
			add_action( 'admin_menu', array( $this, 'register_panel' ), 5 );
		}

		/**
		 * Load YIT core plugin
		 *
		 * @since  1.0
		 * @access public
		 * @return void
		 * @author Andrea Grillo <andrea.grillo@yithemes.com>
		 */
		public function plugin_fw_loader() {
			if ( ! defined( 'YIT_CORE_PLUGIN' ) ) {
				require_once( 'plugin-fw/yit-plugin.php' );
			}
		}

		/**
		 * Add a panel under YITH Plugins tab
		 *
		 * @return   void
		 * @since    1.0
		 * @author   Andrea Grillo <andrea.grillo@yithemes.com>
		 * @use      /Yit_Plugin_Panel class
		 * @see      plugin-fw/lib/yit-plugin-panel.php
		 */
		public function register_panel() {

			if ( ! empty( $this->_panel ) ) {
				return;
			}

			$admin_tabs = array(
				'general' => __( 'General', 'yith-woocommerce-order-tracking' ),
			);

			if ( defined( 'YITH_YWOT_PREMIUM' ) ) {
				$admin_tabs['carriers'] = __( 'Carriers', 'yith-woocommerce-order-tracking' );
			} else {
				$admin_tabs['premium-landing'] = __( 'Premium Version', 'yith-woocommerce-order-tracking' );
			}

			$args = array(
				'create_menu_page' => true,
				'parent_slug'      => '',
				'page_title'       => 'Order Tracking',
				'menu_title'       => 'Order Tracking',
				'capability'       => 'manage_options',
				'parent'           => '',
				'parent_page'      => 'yit_plugin_panel',
				'page'             => $this->_panel_page,
				'admin-tabs'       => $admin_tabs,
				'options-path'     => YITH_YWOT_DIR . '/plugin-options',
			);

			/* === Fixed: not updated theme  === */
			if ( ! class_exists( 'YIT_Plugin_Panel_WooCommerce' ) ) {

				require_once( 'plugin-fw/lib/yit-plugin-panel-wc.php' );
			}

			$this->_panel = new YIT_Plugin_Panel_WooCommerce( $args );
		}

		/**
		 * Premium Tab Template
		 *
		 * Load the premium tab template on admin page
		 *
		 * @return   void
		 * @since    1.0
		 * @author   Andrea Grillo <andrea.grillo@yithemes.com>
		 * @return void
		 */
		public function premium_tab() {

			$premium_tab_template = YITH_YWOT_TEMPLATE_PATH . '/admin/' . $this->_premium;
			if ( file_exists( $premium_tab_template ) ) {
				include_once( $premium_tab_template );
			}
		}

		/**
		 * Action Links
		 *
		 * add the action links to plugin admin page
		 *
		 * @param $links | links plugin array
		 *
		 * @return   mixed Array
		 * @since    1.0
		 * @author   Andrea Grillo <andrea.grillo@yithemes.com>
		 * @return mixed
		 * @use      plugin_action_links_{$plugin_file_name}
		 */
		public function action_links( $links ) {

			$links[] = '<a href="' . admin_url( "admin.php?page={$this->_panel_page}" ) . '">' . __( 'Settings', 'yith-woocommerce-order-tracking' ) . '</a>';

			if ( defined( 'YITH_YWOT_FREE_INIT' ) ) {
				$links[] = '<a href="' . $this->get_premium_landing_uri() . '" target="_blank">' . __( 'Premium Version', 'yith-woocommerce-order-tracking' ) . '</a>';
			}

			return $links;
		}

		/**
		 * plugin_row_meta
		 *
		 * add the action links to plugin admin page
		 *
		 * @param $plugin_meta
		 * @param $plugin_file
		 * @param $plugin_data
		 * @param $status
		 *
		 * @return   array
		 * @since    1.0
		 * @author   Andrea Grillo <andrea.grillo@yithemes.com>
		 * @use      plugin_row_meta
		 */
		public function plugin_row_meta( $plugin_meta, $plugin_file, $plugin_data, $status ) {
			if ( ( defined( 'YITH_YWOT_INIT' ) && ( YITH_YWOT_INIT == $plugin_file ) ) ||
			     ( defined( 'YITH_YWOT_FREE_INIT' ) && ( YITH_YWOT_FREE_INIT == $plugin_file ) )
			) {
				$plugin_meta[] = '<a href="' . $this->_official_documentation . '" target="_blank">' . __( 'Plugin Documentation', 'yith-woocommerce-order-tracking' ) . '</a>';
			}

			return $plugin_meta;
		}

		public function register_pointer() {
			if ( ! class_exists( 'YIT_Pointers' ) ) {
				include_once( 'plugin-fw/lib/yit-pointers.php' );
			}

			$premium_message = defined( 'YITH_YWOT_PREMIUM' )
				? ''
				: __( 'YITH WooCommerce Order Tracking is available in an outstanding PREMIUM version with many new options, discover it now.', 'yith-woocommerce-order-tracking' ) .
				  ' <a href="' . $this->get_premium_landing_uri() . '">' . __( 'Premium version', 'yith-woocommerce-order-tracking' ) . '</a>';

			$args[] = array(
				'screen_id'  => 'plugins',
				'pointer_id' => 'yith_woocommerce_order_tracking',
				'target'     => '#toplevel_page_yit_plugin_panel',
				'content'    => sprintf( '<h3> %s </h3> <p> %s </p>',
					__( 'YITH WooCommerce Order Tracking', 'yith-woocommerce-order-tracking' ),
					__( 'In YIT Plugins tab you can find YITH WooCommerce Order Tracking options. From this menu you can access all settings of YITH plugins activated.', 'yith-woocommerce-order-tracking' ) . '<br>' . $premium_message
				),
				'position'   => array( 'edge' => 'left', 'align' => 'center' ),
				'init'       => defined( 'YITH_YWOT_PREMIUM' ) ? YITH_YWOT_INIT : YITH_YWOT_FREE_INIT,
			);

			YIT_Pointers()->register( $args );
		}

		/**
		 * Get the premium landing uri
		 *
		 * @since   1.0.0
		 * @author  Andrea Grillo <andrea.grillo@yithemes.com>
		 * @return  string The premium landing link
		 */
		public function get_premium_landing_uri() {
			return defined( 'YITH_REFER_ID' ) ? $this->_premium_landing . '?refer_id=' . YITH_REFER_ID : $this->_premium_landing;
		}


		//endregion


		//region    ****   Metabox related methods ****

		/**
		 * Add a metabox on backend order page, to be filled with order tracking information
		 *
		 * @param string  $post_type the current post type
		 * @param WP_Post $post
		 *
		 * @author Lorenzo Giuffrida
		 * @since  1.0.0
		 */
		function add_order_tracking_metabox( $post_type, $post ) {


			if ( "shop_order" != $post_type ) {
				return;
			}

			$order = wc_get_order( $post );
			if ( ! $order ) {
				return;
			}

			if ( ! apply_filters( 'yith_woocommerce_order_tracking_for_vendor_enabled', true, $order ) ) {
				return;
			}

			add_meta_box( 'yith-order-tracking-information', __( 'Order tracking', 'yith-woocommerce-order-tracking' ), array(
				$this,
				'show_order_tracking_metabox',
			), 'shop_order', 'side', 'high' );
		}

		/**
		 * Show metabox content for tracking information on backend order page
		 *
		 * @param WP_Post $post the order object that is currently shown
		 *
		 * @since  1.0
		 * @author Lorenzo giuffrida
		 * @access public
		 * @return void
		 */
		function show_order_tracking_metabox( $post ) {

			$order = wc_get_order( $post );
			if ( ! $order ) {
				return;
			}

			$data                = $this->get_order_tracking_data( $order );
			$order_tracking_code = isset( $data['ywot_tracking_code'][0] ) ? $data['ywot_tracking_code'][0] : '';
			$order_carrier_name  = isset( $data['ywot_carrier_name'][0] ) ? $data['ywot_carrier_name'][0] : '';
			$order_pick_up_date  = isset( $data['ywot_pick_up_date'][0] ) ? $data['ywot_pick_up_date'][0] : '';
			$order_picked_up     = isset( $data['ywot_picked_up'][0] ) && ( '' !== $data['ywot_picked_up'][0] ) ? 'checked = "checked"' : '';

			?>
			<div class="track-information">
				<p>
					<label
						for="ywot_tracking_code"> <?php _e( 'Tracking code:', 'yith-woocommerce-order-tracking' ); ?></label>
					<br />
					<input style="width: 100%" type="text" name="ywot_tracking_code" id="ywot_tracking_code"
					       placeholder="<?php _e( 'Enter tracking code', 'yith-woocommerce-order-tracking' ); ?>"
					       value="<?php echo $order_tracking_code; ?>" />
				</p>

				<p>
					<label
						for="ywot_carrier_name"> <?php _e( 'Carrier name:', 'yith-woocommerce-order-tracking' ); ?></label>
					<br />
					<input style="width: 100%" type="text" id="ywot_carrier_name" name="ywot_carrier_name"
					       placeholder="<?php _e( 'Enter carrier name', 'yith-woocommerce-order-tracking' ); ?>"
					       value="<?php echo $order_carrier_name; ?>" />
				</p>

				<p class="form-field form-field-wide">
					<label
						for="ywot_pick_up_date"> <?php _e( 'Pickup date:', 'yith-woocommerce-order-tracking' ); ?></label>
					<br />
					<input style="width: 100%" type="text" class="date-picker-field" id="ywot_pick_up_date"
					       name="ywot_pick_up_date"
					       placeholder="<?php _e( 'Enter pick up date', 'yith-woocommerce-order-tracking' ); ?>"
					       value="<?php echo $order_pick_up_date; ?>"
					       pattern="[0-9]{4}-(0[1-9]|1[012])-(0[1-9]|1[0-9]|2[0-9]|3[01])" />
				</p>

				<p>
					<label><input type="checkbox"
					              name="ywot_picked_up" <?php echo $order_picked_up; ?> ><?php _e( 'Order picked up', 'yith-woocommerce-order-tracking' ); ?>
					</label>
				</p>
			</div>
			<?php
		}

		/**
		 * Save additional data to the order its going to be saved. We add tracking code, carrier name and data of picking.
		 *
		 * @param int     $post_id the order id
		 * @param WP_Post $post
		 *
		 * @since  1.0
		 * @author Lorenzo giuffrida
		 * @access public
		 * @return void
		 */
		function save_order_tracking_metabox( $post_id, $post ) {

			if ( 'shop_order' != $post->post_type ) {
				return;
			}

			/*  Avoid to save empty data when the plugin metabox is not set */
			if ( ! isset( $_POST['ywot_tracking_code'] ) ||
			     ! isset( $_POST['ywot_carrier_id'] )
			) {
				return;
			}


			$picked_up_val = isset( $_POST['ywot_picked_up'] ) ? $_POST['ywot_picked_up'] : '';
			$now_picked    = 'on' == $picked_up_val;

			//  Notify when the order is set as picked_up
			if ( $now_picked ) {

				do_action( 'yith_ywot_order_picked_up', $post_id );
			}

			update_post_meta( $post_id, 'ywot_tracking_code', stripslashes( $_POST['ywot_tracking_code'] ) );
			update_post_meta( $post_id, 'ywot_carrier_id', stripslashes( $_POST['ywot_carrier_id'] ) );
			update_post_meta( $post_id, 'ywot_pick_up_date', stripslashes( $_POST['ywot_pick_up_date'] ) );
			update_post_meta( $post_id, 'ywot_picked_up', $picked_up_val );
		}

		//endregion

		/**
		 * Check if the order is flagged as shipped
		 *
		 * @param WC_Order|int $order the order to check
		 *
		 * @return bool
		 *
		 * @author Lorenzo Giuffrida
		 * @since  1.0.0
		 *
		 */
		public function is_order_shipped( $order ) {

			$order_id = $order;

			if ( $order instanceof WC_Order ) {
				if ( ! $order ) {
					return false;
				}
				$order_id = $order->id;
			}

			$data            = $this->get_order_tracking_data( $order_id );
			$order_picked_up = isset( $data['ywot_picked_up'][0] ) && ( '' !== $data['ywot_picked_up'][0] );

			return $order_picked_up;
		}

	}
}
<?php
if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

if ( ! class_exists( 'YITH_WooCommerce_Order_Tracking_Premium' ) ) {

	/**
	 * Implements features of Yit WooCommerce Order Tracking
	 *
	 * @class   Yith_WooCommerce_Order_Tracking_Premium
	 * @package Yithemes
	 * @since   1.0.0
	 * @author  Lorenzo Giuffrida
	 */
	class YITH_WooCommerce_Order_Tracking_Premium extends YITH_WooCommerce_Order_Tracking {

		/**
		 * @var string $_premium Premium tab template file name
		 */
		public $_carriers = 'carriers.php';

		/**
		 * @var string  Customizable text to be shown on mail sent to buyer
		 */
		public $mail_pattern;

		/**
		 * @var string position of text related to order details sent by email
		 */
		public $mail_text_position;

		/**
		 * @var bool set if the order should turn to completed when the order is set as shipped
		 */
		public $complete_order = false;

		/**
		 * @var bool set if the tracking information should be shown in the packing slip document generated by YITH PDF Invoice
		 */
		public $show_in_packing_slip = false;

		/**
		 * Initialize plugin and registers actions and filters to be used
		 *
		 * @since  1.0
		 * @author Lorenzo giuffrida
		 */
		public function __construct() {
			parent::__construct();

			$this->initialize_settings();
			/**
			 * Custom options for carrier list for listing and saving carriers settings
			 */
			add_action( 'woocommerce_admin_field_carriers_list', array( $this, 'show_carriers_settings' ) );

			/**
			 * register plugin to licence/update system
			 */
			$this->licence_activation();

			/**
			 * Add some premium options to general tab
			 */
			add_filter( 'yith_ywot_general_options', array( $this, 'add_general_tab_premium_options' ) );

			add_filter( 'yith_woocommerce_order_tracking_for_vendor_enabled', array(
				$this,
				'show_multi_vendor_tracking_metabox'
			), 10, 2 );

			/**
			 * Show the track icon that point to carrier tracking url
			 */
			add_action( 'yith_wcmv_after_suborder_details', array( $this, 'show_multivendor_suborder_tracking_icon' ) );

			/**
			 * Show a table with tracking information in case of orders with suborders
			 */
			add_action( 'woocommerce_order_details_after_order_table', array( $this, 'show_suborder_tracking_table' ) );

			/**
			 * register action to show tracking information on email for completed orders
			 */
			$this->register_email_order_tracking_actions();

			/**
			 * Show the import button for bulk import of tracking code from a CSV file
			 */
			add_action( 'woocommerce_admin_field_ywot_import_tracking', array(
				$this,
				'show_import_tracking_code_button'
			) );

			add_action( 'admin_init', array( $this, 'register_csv_importer' ) );

			add_action( 'yith_ywot_order_picked_up', array( $this, 'set_picked_order_to_completed' ) );

			if ( $this->show_in_packing_slip ) {

				/**
				 * Show tracking information in packing slip document generated by the plugin YITH PDF Invoice
				 */
				add_filter( 'yith_ywpi_print_document_notes', array(
					$this,
					'show_tracking_information_in_packing_slip'
				), 10, 2 );
			}
		}

		/**
		 * Show tracking information in packing slip document generated by the plugin YITH PDF Invoice
		 *
		 * @param string        $note
		 * @param YITH_Document $document
		 *
		 * @return string
		 */
		public function show_tracking_information_in_packing_slip( $note, $document ) {

			if ( ( $document instanceof YITH_Shipping ) && $this->is_order_shipped( $document->order ) ) {
				$note = $this->get_picked_up_message( $document->order ) . '<br>' . $note;
			}

			return $note;

		}

		/**
		 * Check if the order should be set as completed when the picked up
		 *
		 * @param $post_id
		 *
		 * @author Lorenzo Giuffrida
		 * @since  1.0.0
		 */
		public function set_picked_order_to_completed( $post_id ) {

			if ( ! $this->complete_order ) {
				return;
			}

			//  Check if the order was not set as picked up before

			$prev_picked = 'on' == get_post_meta( $post_id, 'ywot_picked_up', true );
			if ( $prev_picked ) {
				//  Nothing to do if the order was still in picked_up status
				return;
			}

			$order          = wc_get_order( $post_id );
			$current_status = $order->get_status();
			/* Some order statuses are not eligible to be updated when the order is picked up */
			$unavailable_order_status = apply_filters( 'yith_ywot_order_status_disabled_for_picked_up_changes', array( 'completed' ) );
			if ( ! in_array( $current_status, $unavailable_order_status ) ) {
				$order->update_status( 'completed', __( 'The order was picked up.', 'yith-woocommerce-order-tracking' ) );
			}
		}

		public function register_csv_importer() {
			register_importer( 'ywot_import_tracking_codes', __( 'YITH Order Tracking (CSV)', 'yith-woocommerce-order-tracking' ), __( 'Import tracking codes via csv file.', 'yith-woocommerce-order-tracking' ), array(
				$this,
				'import_tracking_codes_csv'
			) );
		}

		/**
		 * Import tracking codes from csv file
		 *
		 * @return void
		 * @since 1.0.0
		 */
		public function import_tracking_codes_csv() {
			if ( ! class_exists( 'WP_Importer' ) ) {
				$class_wp_importer = ABSPATH . 'wp-admin/includes/class-wp-importer.php';

				if ( file_exists( $class_wp_importer ) ) {
					require $class_wp_importer;
				}
			}
			// includes
			require YITH_YWOT_DIR . 'class.yith-woocommerce-order-tracking-importer.php';
			// Dispatch
			YWOT_Importer()->dispatch();
		}

		/**
		 * Show the import button for bulk import of tracking code from a CSV file
		 *
		 * @param array $value the option values to show
		 *
		 * @author Lorenzo Giuffrida
		 * @since  1.0.0
		 */
		public function show_import_tracking_code_button( $value ) {
			?>
			<tr valign="top">
				<th scope="row" class="titledesc"><?php echo $value['title']; ?>
				</th>

				<td class="forminp plugin-option">
					<a href="<?php echo admin_url( 'admin.php?import=ywot_import_tracking_codes' ); ?>"
					   class="button import"><?php _e( 'Import CSV', 'yith-woocommerce-order-tracking' ); ?></a>
				</td>
			</tr>
			<?php
		}

		/**
		 * Show the track icon that point to carrier tracking url
		 *
		 * @param WC_Order $order the order whose details should be shown
		 *
		 * @author Lorenzo Giuffrida
		 * @since  1.0.0
		 */
		public function show_multivendor_suborder_tracking_icon( $order ) {

			//  if current order is not flagged as picked up, skip
			if ( ! $this->is_order_shipped( $order ) ) {
				return;
			}

			$this->show_picked_up_icon( $order );
		}

		/**
		 * register action to show tracking information on email for completed orders
		 *
		 * @param WC_Order $order the order whose details should be shown
		 */
		public function show_suborder_tracking_table( $order ) {
			if ( function_exists( 'yith_wcmv_is_premium' ) && yith_wcmv_is_premium() ) {

				$result = YITH_Orders_Premium::get_suborder( $order->id );

				if ( ! $result ) {
					return;
				}
				?>
				<h2><?php _e( "Order tracking information", 'yith-woocommerce-order-tracking' ); ?></h2>
				<table class="shop_table shop_table_responsive tracking_details" id="tracking_details">
					<tbody>
					<tr>
						<th><?php _e( "Vendor", 'yith-woocommerce-order-tracking' ); ?></th>
						<th><?php _e( "Track shipping", 'yith-woocommerce-order-tracking' ); ?></th>
					</tr>

					<tr>
						<td><?php
							$vendor = yith_get_vendor( $order->post->post_author, 'user' );
							if ( $vendor->is_valid() ) {
								echo $vendor->name;
							} else {
								echo apply_filters( 'yith_order_tracking_admin_as_vendor_title', __( '<b>Current shop</b>', 'yith-woocommerce-order-tracking' ) );
							}
							?>
						</td>
						<td><?php $this->show_multivendor_suborder_tracking_icon( $order ); ?></td>
					</tr>

					<?php foreach ( $result as $suborder_id ): ?>
						<tr>
							<td>
								<?php
								$suborder = wc_get_order( $suborder_id );
								$vendor   = yith_get_vendor( $suborder->post->post_author, 'user' );
								echo $vendor->name;
								?>
							</td>
							<td><?php $this->show_multivendor_suborder_tracking_icon( $suborder ); ?></td>
						</tr>
					<?php endforeach; ?>

					</tbody>
				</table>
				<?php
			}
		}

		/**
		 * Show the plugin metabox
		 *
		 * @param bool    $enabled
		 * @param WP_Post $post
		 *
		 * @return bool
		 * @author Lorenzo Giuffrida
		 * @since  1.0.0
		 */
		public function show_multi_vendor_tracking_metabox( $enabled, $post ) {

			$order = wc_get_order( $post );

			if ( ! $order ) {

				return false;
			}

			$verify_suborder = apply_filters( 'yith_order_tracking_verify_suborder', function_exists( 'yith_wcmv_is_premium' ) && yith_wcmv_is_premium() );

			if ( $verify_suborder ) {

				//  On sub orders, enable the tracking metabox if the YITH WooCommerce Multi Vendor option is set
				if ( ! YITH_Orders_Premium::get_suborder( $order->id ) ) {
					if ( $post->post_parent ) {
						$enabled = 'yes' == get_option( 'yith_wpv_vendors_option_order_tracking_management', false );
					}

				} else {
					//  Enable tracking metabox on admin order only if there are products on current order, sell by the admin
					$items_by_vendor = YITH_Orders_Premium::get_order_items_by_vendor( $order->id );

					return isset( $items_by_vendor[0] );
				}
			}

			return $enabled;
		}

		/**
		 * Set values from plugin settings page
		 */
		public function initialize_settings() {
			parent::initialize_settings();
			$this->mail_pattern         = get_option( 'ywot_mail_tracking_text' );
			$this->mail_text_position   = get_option( 'ywot_mail_tracking_text_position' );
			$this->complete_order       = "yes" == get_option( 'ywot_set_completed_status', 'no' );
			$this->show_in_packing_slip = "yes" == get_option( 'ywot_show_in_packing_slip_pdf_invoice', 'no' );
		}

		/**
		 * Add options related to tracking information ent to buyer on order completed
		 *
		 * @param array $options current options
		 *
		 * @return mixed
		 * @author Lorenzo Giuffrida
		 * @since  1.0.0
		 */
		function add_general_tab_premium_options( $options ) {

			$options['general']['mail_tracking_text'] = array(
				'name'    => __( 'Text in emails', 'yith-woocommerce-order-tracking' ),
				'type'    => 'text',
				'id'      => 'ywot_mail_tracking_text',
				'desc'    => __( 'This is the text of the email that will be sent to the buyer when the order is marked as complete. You can customize the text using the following 3 placeholders, which represent real shipping information.', 'yith-woocommerce-order-tracking' ) . '[carrier_name], [pickup_date], [track_code]',
				'default' => __( 'Your order has been picked up by [carrier_name] on [pickup_date]. Your track code is [track_code].', 'yith-woocommerce-order-tracking' ),
				'css'     => 'width:60%',
			);

			$options['general']['mail_tracking_text_position'] = array(
				'name'    => __( 'Position of the text in emails', 'yith-woocommerce-order-tracking' ),
				'type'    => 'select',
				'id'      => 'ywot_mail_tracking_text_position',
				'desc'    => __( 'Choose if tracking text have to be shown on top (before order product list) or on bottom (after product list).', 'yith-woocommerce-order-tracking' ),
				'options' => array(
					'1' => __( 'Show on top', 'yith-woocommerce-order-tracking' ),
					'2' => __( 'Show on bottom', 'yith-woocommerce-order-tracking' ),
				),
				'default' => '1',
			);

			$pdf_invoice_message = '';
			if ( ! defined( 'YITH_YWPI_PREMIUM' ) ) {
				$pdf_invoice_message = sprintf( __( 'Activate the plugin %s in order to include the shipping information in the packing slip.', 'yith-woocommerce-order-tracking' ),
					'<a target="_blank" href="https://yithemes.com/themes/plugins/yith-woocommerce-pdf-invoice/">YITH PDF Invoice Premium</a>' );
			}

			$options['general']['ywot_show_in_packing_slip_pdf_invoice'] = array(
				'name'    => __( 'Show in packing slip', 'yith-woocommerce-order-tracking' ),
				'type'    => 'checkbox',
				'id'      => 'ywot_show_in_packing_slip_pdf_invoice',
				'desc'    => __( 'Show tracking information in the packing slip generated by <b>YITH PDF Invoice</b>. ', 'yith-woocommerce-order-tracking' ) .
				             $pdf_invoice_message,
				'default' => 'not',
			);

			$options['general']['ywot_import_tracking'] = array(
				'name' => __( 'Import tracking codes', 'yith-woocommerce-order-tracking' ),
				'type' => 'ywot_import_tracking',
				'id'   => 'ywot_import_tracking',
				'desc' => '',
			);

			return $options;
		}

		//region ****   Carriers related features   ****

		/**
		 * Save custom options related to carriers set as in use
		 *
		 * @param array $value the custom field to be saved
		 *
		 * @since    1.0
		 * @author   Lorenzo Giuffrida
		 *
		 * @return bool true for save completed
		 */
		public function save_carriers_settings( $value ) {
			//  Not used anymore
			return;

			$options = array(
				$value['id'] => isset( $_POST[ $value['id'] ] ) ? stripslashes_deep( $_POST[ $value['id'] ] ) : false,
			);

			update_option( $value['id'], $options );

			return true;
		}

		/**
		 * Carriers Tab Template
		 *
		 * Load the carriers tab template on admin page
		 *
		 * @return   void
		 * @since    1.0
		 * @author   Lorenzo Giuffrida
		 * @return void
		 */
		public function show_carriers_settings() {
			$premium_tab_template = YITH_YWOT_TEMPLATE_PATH . '/admin/' . $this->_carriers;

			if ( file_exists( $premium_tab_template ) ) {
				include_once( $premium_tab_template );
			}
		}

		/**
		 * Save additional data to the order its going to be saved. We add tracking code, carrier name and data of picking.
		 *
		 * @param int     $post_id the post id whose order tracking information should be saved
		 * @param WP_Post $post
		 *
		 * @since  1.0
		 * @author Lorenzo giuffrida
		 * @access public
		 * @return void
		 */
		function save_order_tracking_metabox( $post_id, $post ) {


			parent::save_order_tracking_metabox( $post_id, $post );

			if ( isset( $_POST['ywot_carrier_id'] ) ) {
				update_post_meta( $post_id, 'ywot_carrier_id', stripslashes( $_POST['ywot_carrier_id'] ) );
			}
		}

		//endregion

		/**
		 * Show metabox content for tracking information on backend order page
		 *
		 * @param WC_Order $post the order object that is currently shown
		 *
		 * @since  1.0
		 * @author Lorenzo giuffrida
		 * @access public
		 * @return void
		 */
		function show_order_tracking_metabox( $post ) {

			if ( ! apply_filters( 'yith_woocommerce_order_tracking_for_vendor_enabled', true, $post ) ) {
				return;
			}

			$order = wc_get_order( $post );
			if ( ! $order ) {
				return;
			}

			if ( function_exists( 'yith_wcmv_is_premium' ) && yith_wcmv_is_premium() ) {
				//  Show a message stating that shipping details entered refers to the admin products only

				$items_by_vendor = YITH_Orders_Premium::get_order_items_by_vendor( $order->id );

				if ( isset( $items_by_vendor[0] ) ) {

					?>
					<div class="yith-multivendor-advice">
						<h3><?php _e( "Warning", 'yith-woocommerce-order-tracking' ); ?></h3>
						<span><?php _e( "The following tracking information is only valid for products belonging to current admin/vendor.", 'yith-woocommerce-order-tracking' ); ?></span>
					</div>
					<?php
				}
			}

			$data = $this->get_order_tracking_data( $order );
			$order_tracking_code = isset( $data['ywot_tracking_code'][0] ) ? $data['ywot_tracking_code'][0] : '';
			$order_carrier_id    = isset( $data['ywot_carrier_id'][0] ) ? $data['ywot_carrier_id'][0] : '';
			$order_pick_up_date  = isset( $data['ywot_pick_up_date'][0] ) ? $data['ywot_pick_up_date'][0] : '';
			$order_picked_up     = isset( $data['ywot_picked_up'][0] ) && ( '' !== $data['ywot_picked_up'][0] ) ? 'checked = "checked"' : '';

			$carriers = Carriers::get_instance()->get_carrier_list_selection( );

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
						for="ywot_carrier_id"> <?php _e( 'Carrier name:', 'yith-woocommerce-order-tracking' ); ?></label>
					<br />
					<select style="width: 100%" name="ywot_carrier_id" id="ywot_carrier_id">
						<?php foreach ( $carriers as $key => $value ) : ?>
							<option
								value="<?php echo $key; ?>" <?php is_option_selected_html( $key, $order_carrier_id ); ?> ><?php echo $value; ?></option>
						<?php endforeach; ?>
					</select>
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
		 * Show message about the order tracking details.
		 *
		 * @param WC_Order $order   the order whose tracking information have to be shown
		 * @param string   $pattern custom text to be shown
		 * @param string   $prefix  Prefix to be shown before custom text
		 * @param string   $output
		 *
		 * @since  1.0
		 * @author Lorenzo giuffrida
		 *
		 * @return string|void
		 */
		function show_tracking_information( $order, $pattern, $prefix = '', $output = 'frontend' ) {

			//  if current order is not flagged as picked, don't show shipping information
			if ( ! $this->is_order_shipped( $order->id ) ) {
				return '';
			}

			$data       = $this->get_order_tracking_data( $order );
			$message    = $this->get_picked_up_message( $order, $pattern );
			$track_form = $this->get_tracking_post_form( $order );
			$url        = $this->get_track_url( $order );
			$text       = __( "Live track your order", 'yith-woocommerce-order-tracking' );

			if ( 'email' == $output ) {
				if ( ! empty( $track_form ) ) {

					//  If the customer have an account, add the link to myaccount
					if ( $order->customer_user ) {
						$url  = wc_get_endpoint_url( 'view-order', $order->id, wc_get_page_permalink( 'myaccount' ) );
						$text = __( "Go to your order page to live track this shipping", 'yith-woocommerce-order-tracking' );
					} else {
						$url = '';
					}
				}

				$url = apply_filters( 'yith_ywot_email_tracking_url', $url, $data );

				if ( $url ) {
					$message .= '<br><a style="color:#3980c1; display:block;" href="' . $url . '" target="_blank">' . $text . "</a>";
				}
			} else {

				$message .= '<br><a class="track-button order-' . $order->id . '" href="' . $url . '" target="_blank" data-title="' . $message . '">' . $text . '</a>';

				if ( ! empty( $track_form ) ) {
					// Append a form to be used for post data to carrier web site
					?>
					<script type="text/javascript">
						jQuery(document).on("click", "a.track-button.order-<?php echo $order->id; ?>", (function (e) {
							e.preventDefault();

							jQuery("body").append('<?php echo str_replace( "\n", "\\", $track_form ); ?>');
							if (isset($data["ywot_carrier_id"][0])) {
        							jQuery("form[name='<?php echo $data["ywot_carrier_id"][0]; ?>']").submit();
        							jQuery("form[name='<?php echo $data["ywot_carrier_id"][0]; ?>']").remove();
							}
						}));


					</script>
					<?php
				}
			}

			return $prefix . $message;
		}

		/**
		 *
		 * Build a text which indicates order tracking information
		 *
		 * @param WC_Order $order   post meta for current order
		 * @param string   $pattern text pattern to be used
		 *
		 * @return string
		 */
		public function get_picked_up_message( $order, $pattern = '' ) {

			$data = $this->get_order_tracking_data( $order );

			if ( ! isset( $pattern ) || ( 0 == strlen( $pattern ) ) ) {
				$pattern = get_option( 'ywot_order_tracking_text' );
			}

			$carriers = Carriers::get_instance()->get_carrier_list();

			//  Retrieve additional information to be shown
			$order_tracking_code = isset( $data['ywot_tracking_code'][0] ) ? $data['ywot_tracking_code'][0] : '';
			$order_carrier_id    = isset( $data['ywot_carrier_id'][0] ) ? $data['ywot_carrier_id'][0] : '';
			$order_carrier_name  = isset( $data['ywot_carrier_name'][0] ) ? $data['ywot_carrier_name'][0] : '';
			$order_pick_up_date  = isset( $data['ywot_pick_up_date'][0] ) ? $data['ywot_pick_up_date'][0] : '';

			if ( ! isset( $carriers[ $order_carrier_id ] ) && ! isset( $order_carrier_name ) ) {
				return '';
			}

			$carrier_name = $order_carrier_id ? $carriers[ $order_carrier_id ]['name'] : $order_carrier_name;

			$message = str_replace(
				array( "[carrier_name]", "[pickup_date]", "[track_code]" ),
				array(
					$carrier_name,
					date_i18n( get_option( 'date_format' ), strtotime( $order_pick_up_date ) ),
					$this->get_advanced_track_code( $order_tracking_code ),
				),
				$pattern );

			return $message;
		}

		/**
		 * Show a picked up icon on backend orders table
		 *
		 * @param string $column the column of backend order table being elaborated
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
		 * Show a image link, stating the order has been picked up
		 *
		 * @param int|WC_Order $order     the order to show
		 * @param string       $css_class the custom CSS
		 */
		public function show_picked_up_icon( $order, $css_class = '' ) {

			if ( ! $this->is_order_shipped( $order ) ) {
				return;
			}

			$track_css_class = "button track-button order-" . $order->id;
			if ( ! empty( $css_class ) ) {
				$track_css_class .= " " . $css_class;
			}

			$message = $this->get_picked_up_message( $order );

			$track_url = $this->get_track_url( $order );
			if ( strlen( $track_url ) == 0 ) {
				$message   = __( "Track url not found.", 'yith-woocommerce-order-tracking' ) . $message;
				$track_url = '#';
			}

			echo '<a class="' . $track_css_class . '" href="' . $track_url . '" target="_blank" data-title="' . $message . '">';
			echo '<img class="track-icon track-button" src="' . apply_filters( 'yith_ywot_track_button_url', YITH_YWOT_ASSETS_URL . '/images/order-picked-up.png' ) . '" data-title="' . $message . '" />';

			if ( ! is_admin() ) {
				_e( 'Track', 'yith-woocommerce-order-tracking' );
			}

			echo '</a>';

			//  If the carrier website use a form to track shipment, add a hidden form under the button

			$track_form = $this->get_tracking_post_form( $order );
			$data       = $this->get_order_tracking_data( $order );
			if ( ! empty( $track_form ) ) {
				// Append a form to be used for post data to carrier web site
				?>
				<script type="text/javascript">
					jQuery(document).on("click", "a.track-button.order-<?php echo $order->id; ?>", (function (e) {
						e.preventDefault();

						jQuery("body").append('<?php echo str_replace( "\n", "\\", $track_form ); ?>');
						if (isset($data["ywot_carrier_id"][0])) {
        						jQuery("form[name='<?php echo $data["ywot_carrier_id"][0]; ?>']").submit();
        						jQuery("form[name='<?php echo $data["ywot_carrier_id"][0]; ?>']").remove();
						}
					}));
				</script>
				<?php
			}
		}

		//region    ****    Premium only features   ****

		/**
		 * Add callback to show shipping details on email sent to buyer, in the position choosen from plugin settings
		 *
		 * @since  1.0
		 * @author Lorenzo giuffrida
		 * @access public
		 * @return void
		 */
		public function register_email_order_tracking_actions() {
			if ( ! isset( $this->mail_text_position ) || ( 1 == $this->mail_text_position ) ) {
				add_action( 'woocommerce_email_before_order_table', array( $this, 'add_email_shipping_details' ) );
			} else {
				add_action( 'woocommerce_email_after_order_table', array( $this, 'add_email_shipping_details' ) );
			}
		}

		/**
		 * Show order tracking information on email sent to buyers when the order is set to "completed"
		 *
		 * @param WC_Order $order the order whose tracking information have to be shown
		 *
		 * @since  1.0
		 * @author Lorenzo giuffrida
		 * @access public
		 * @return void
		 */
		function add_email_shipping_details( $order ) {
			$container_class = "ywot_order_details";
			//  add top or bottom class, depending on the value of related option
			if ( 1 == $this->mail_text_position ) {
				$container_class .= " top";
			} else {
				$container_class .= " bottom";
			}
			$_mail_pattern = get_option( 'ywot_mail_tracking_text' );
			$title         = '<h2>' . __( 'Tracking details', 'yith-woocommerce-order-tracking' ) . '</h2>';

			echo '<div class="' . $container_class . '">' .
			     $this->show_tracking_information( $order, $_mail_pattern, $title, 'email' ) . '</div>';
		}

		/**
		 * Build a link for the current order tracking on carrier website
		 *
		 * @param WC_order $order the order
		 *
		 * @return mixed    track url
		 */
		private function get_track_url( $order ) {

			if ( ! $this->is_order_shipped( $order ) ) {
				return '';
			}

			$data                = $this->get_order_tracking_data( $order );
			$order_tracking_code = isset( $data['ywot_tracking_code'][0] ) ? $data['ywot_tracking_code'][0] : '';
			$order_carrier_id    = isset( $data['ywot_carrier_id'][0] ) ? $data['ywot_carrier_id'][0] : '';

			$carriers = Carriers::get_instance()->get_carrier_list();

			if ( ! isset( $carriers[ $order_carrier_id ] ) ) {
				return '';
			}

			$carrier_object = $carriers[ $order_carrier_id ];

			//  Check if tracking code is single or multiple
			if ( strpos( $order_tracking_code, '{' ) !== false ) {
				$order_track_url = $carrier_object["track_url"];

				preg_match_all( "/{(.*?)}/", $order_tracking_code, $words );
				for ( $i = 0; $i < count( $words[1] ); $i ++ ) {
					$order_track_url = str_replace( '[TRACK_CODE][' . $i . ']', $words[1][ $i ], $order_track_url );
				}
			} else {
				$order_track_url = str_replace( '[TRACK_CODE]', $order_tracking_code, $carrier_object["track_url"] );
			}

			return $order_track_url;
		}

		/**
		 * Get tracking code from the custom tracking code entered from the order.
		 * Can be a single tracking code or a multiple value text like {track_code}{additional_code}{additional_code2} ...
		 *
		 * @param string $order_tracking_code
		 *
		 * @return mixed
		 */
		public function get_advanced_track_code( $order_tracking_code ) {
			//  Check if tracking code is single or multiple
			if ( strpos( $order_tracking_code, '{' ) !== false ) {

				preg_match_all( "/{(.*?)}/", $order_tracking_code, $words );

				return implode( " ", $words[1] );
			} else {
				return $order_tracking_code;
			}
		}

		/**
		 * Retrieve optional POST form for shipmenti tracking
		 *
		 * @param WC_Order $order the order
		 *
		 * @return mixed    track url
		 */
		private function get_tracking_post_form( $order ) {
			if ( ! $this->is_order_shipped( $order ) ) {
				return '';
			}

			$data                = $this->get_order_tracking_data( $order );
			$order_tracking_code = isset( $data['ywot_tracking_code'][0] ) ? $data['ywot_tracking_code'][0] : '';
			$order_carrier_id    = isset( $data['ywot_carrier_id'][0] ) ? $data['ywot_carrier_id'][0] : '';

			$carriers = Carriers::get_instance()->get_carrier_list();

			if ( ! isset( $carriers[ $order_carrier_id ] ) ) {
				return '';
			}
			$carrier_object = $carriers[ $order_carrier_id ];

			if ( ! isset( $carrier_object["form"] ) ) {
				return '';
			}

			$order_track_form = str_replace( '[TRACK_CODE]', $this->get_advanced_track_code( $order_tracking_code ), $carrier_object["form"] );

			return $order_track_form;
		}


		//endregion

		//region    ****    licence related methods ****

		/**
		 * Add actions to manage licence activation and updates
		 */
		public function licence_activation() {
			add_action( 'wp_loaded', array( $this, 'register_plugin_for_activation' ), 99 );
			add_action( 'admin_init', array( $this, 'register_plugin_for_updates' ) );
		}

		/**
		 * Register plugins for activation tab
		 *
		 * @return void
		 * @since    2.0.0
		 * @author   Andrea Grillo <andrea.grillo@yithemes.com>
		 */
		public function register_plugin_for_activation() {
			if ( ! class_exists( 'YIT_Plugin_Licence' ) ) {
				require_once 'plugin-fw/lib/yit-plugin-licence.php';
			}
			YIT_Plugin_Licence()->register( YITH_YWOT_INIT, YITH_YWOT_SECRET_KEY, YITH_YWOT_SLUG );
		}

		/**
		 * Register plugins for update tab
		 *
		 * @return void
		 * @since    2.0.0
		 * @author   Andrea Grillo <andrea.grillo@yithemes.com>
		 */
		public function register_plugin_for_updates() {
			if ( ! class_exists( 'YIT_Upgrade' ) ) {
				require_once 'plugin-fw/lib/yit-upgrade.php';
			}
			YIT_Upgrade()->register( YITH_YWOT_SLUG, YITH_YWOT_INIT );
		}
		//endregion
	}
}
<?php
/**
 * Frontend class
 *
 * @author Yithemes
 * @package YITH WooCommerce Waiting List
 * @version 1.1.1
 */

if ( ! defined( 'YITH_WCWTL' ) ) {
	exit;
} // Exit if accessed directly

if( ! class_exists( 'YITH_WCWTL_Frontend' ) ) {
	/**
	 * Frontend class.
	 * The class manage all the Frontend behaviors.
	 *
	 * @since 1.0.0
	 */
	class YITH_WCWTL_Frontend {

		/**
		 * Single instance of the class
		 *
		 * @var \YITH_WCWTL_Frontend
		 * @since 1.0.0
		 */
		protected static $instance;

        /**
         * Plugin version
         *
         * @var string
         * @since 1.0.0
         */
        public $version = YITH_WCWTL_VERSION;

        /**
         * Frontend script was enqueued
         *
         * @var boolean
         * @since 1.0.0
         */
        public $scripts_enqueued = false;

		/**
		 * Current object product
		 *
		 * @var object
		 * @since 1.0.0
		 */
		protected $current_product = false;

		/**
		 * Returns single instance of the class
		 *
		 * @return \YITH_WCWTL_Frontend
		 * @since 1.0.0
		 */
		public static function get_instance(){
			if( is_null( self::$instance ) ){
				self::$instance = new self();
			}

			return self::$instance;
		}

		/**
		 * Constructor
		 *
		 * @access public
		 * @since 1.0.0
		 */
		public function __construct() {

			// add form
			add_action( 'woocommerce_before_single_product', array( $this, 'add_form' ) );
			add_action( 'jck_qv_summary', array( $this, 'add_form' ) );
			add_action( 'yith_wcqv_before_product_summary', array( $this, 'add_form' ) );

			add_action( 'template_redirect', array( $this, 'yith_waiting_submit' ), 100 );

			// my waitlist section on my account
			if( yith_waitlist_is_wc26() && ! ( defined('YITH_WCMAP') && YITH_WCMAP ) ) {
				add_filter( 'woocommerce_account_menu_items', array( $this, 'add_menu_item' ), 10, 1 );
				add_action( 'template_redirect', array( $this, 'load_account_template' ) );
			}
			else {
				add_action( 'woocommerce_before_my_account', array( $this, 'add_waitlist_my_account' ) );
			}

			// enqueue frontend js
			add_action( 'wp_enqueue_scripts', array( $this, 'register_scripts' ) );

			// update user meta
			add_action( 'woocommerce_created_customer', array( $this, 'add_meta_to_new_user' ), 10, 3 );

			// shortcode waitlist table
			add_shortcode( 'ywcwtl_waitlist_table', array( $this, 'shortcode_waitlist_my_account' ) );
            // shortcode waitlist form
            add_shortcode( 'ywcwtl_form', array( $this, 'shortcode_the_form' ) );
		}

		/**
		 * Register scripts frontend
		 *
		 * @access public
		 * @since 1.0.0
		 * @author Francesco Licandro <francesco.licandro@yithemes.com>
		 */
		public function register_scripts(){
			$min = ( defined('SCRIPT_DEBUG') && SCRIPT_DEBUG ) ? '' : '.min';
			wp_register_script( 'yith-wcwtl-frontend', YITH_WCWTL_ASSETS_URL . '/js/frontend'.$min.'.js', array( 'jquery'), YITH_WCWTL_VERSION, true );

			wp_register_style( 'yith-wcwtl-style', YITH_WCWTL_ASSETS_URL . '/css/ywcwtl.css', array(), YITH_WCWTL_VERSION, 'all' );

			$this->enqueue_scripts();
		}

		/**
		 * Enqueue scripts and style
		 *
		 * @since 1.0.8
		 * @access public
		 * @author Francesco Licandro
		 */
		public function enqueue_scripts(){

			if( ! $this->scripts_enqueued ) {
                wp_enqueue_script('yith-wcwtl-frontend');
                wp_enqueue_style('yith-wcwtl-style');

                $custom_style = yith_waitlist_get_custom_style();
                if ($custom_style && is_string($custom_style)) {
                    wp_add_inline_style('yith-wcwtl-style', $custom_style);
                }

                // scripts enqueued!
                $this->scripts_enqueued = true;
            }
		}

        /**
         * Check if the product can have the waitlist form
         *
         * @since 1.1.3
         * @param object $product The product to check
         * @return boolean
         * @author Francesco Licandro
         */
        public function can_have_waitlist( $product ){

            // check first id product is excluded
            $id = isset( $product->variation_id ) ? $product->variation_id : $product->id;

            $return = ! ( yith_waitlist_is_excluded( $id ) || ! in_array( $product->product_type, array( 'simple', 'variable', 'variation' ) ) || $product->is_in_stock() );

            // can third part filter this result
            return apply_filters( 'yith_wcwtl_can_product_have_waitlist', $return, $product );
        }

		/**
		 * Add form to stock html
		 *
		 * @access public
		 * @since 1.0.0
		 * @return string
		 * @author Francesco Licandro <francesco.licandro@yithemes.com>
		 */
		public function add_form() {
			global $post;

			if( get_post_type( $post->ID ) == 'product' && ( is_product() || $this->is_quick_view() ) ) {

				$this->current_product = wc_get_product( $post->ID );

				if ( ! in_array( $this->current_product->product_type, array( 'simple', 'variable', 'variation' ) ) ) {
					return;
				}

				if( $this->current_product->product_type == 'variable' ){
					add_action( 'woocommerce_stock_html', array( $this, 'output_form' ), 20, 3 );
				}
				else {
					add_action( 'woocommerce_stock_html', array( $this, 'output_form' ), 20, 2 );
				}
			}
		}

        /**
         * Check if is quick view action
         *
         * @since 1.1.5
         * @author Francesco Licandro
         * @return boolean
         */
        public function is_quick_view(){
            return isset( $_REQUEST['action'] ) && $_REQUEST['action'] == 'jckqv';
        }

		/**
		 * Add form to stock html
		 *
		 * @access public
		 * @since 1.0.0
		 * @param string $html
		 * @param int $availability
		 * @param object | boolean $product
		 * @return string
		 * @author Francesco Licandro <francesco.licandro@yithemes.com>
		 */
		public function output_form( $html, $availability, $product = false ) {

			if( ! $product ) {
				$product = $this->current_product;
			}

			// if can't have waitlist return
			if( ! $this->can_have_waitlist( $product ) ){
				return $html;
			}

			$product_id = ( $product->product_type == 'variation' ) ? $product->variation_id : $product->id;


			ob_start();
             echo do_shortcode( '[ywcwtl_form product_id="' . $product_id .'"]' );

            // then add form to current html
            $html .= ob_get_clean();

			return $html;
		}

        /**
         * Shortcode that add the form for the waiting list
         *
         * @since 1.1.3
         * @author Francesco Licandro
         * @param $atts
         * @return string
         */
        public function shortcode_the_form( $atts ) {

            extract( shortcode_atts( array(
                'product_id'            => '',
            ), $atts ) );

            if( $product_id ) {
                $product = wc_get_product( $product_id );
            }
            else {
                // get global
                global $product;
            }

            // exit if product is null or if can't have waitlist
            if( is_null( $product ) || ! $product || ! $this->can_have_waitlist( $product ) ) {
                return '';
            }

            $args = apply_filters( 'yith_wcwtl_form_template_args', array(
                'product'               => $product,
                'message'               => get_option( 'yith-wcwtl-form-message' ),
                'label_button_add'      => get_option( 'yith-wcwtl-button-add-label' ),
                'label_button_leave'    => get_option( 'yith-wcwtl-button-leave-label' ),
            ) );

            ob_start();

            wc_get_template( 'yith-wcwtl-form.php', $args, '', YITH_WCWTL_DIR . 'templates/' );

            return ob_get_clean();
        }

		/**
		 * Add user to waitlist
		 *
		 * @access public
		 * @since 1.0.0
		 * @author Francesco Licandro <francesco.licandro@yithemes.com>
		 */
		public function yith_waiting_submit() {

			$user = wp_get_current_user();

			if( ! ( isset( $_REQUEST[ YITH_WCWTL_META ] ) && is_numeric( $_REQUEST[ YITH_WCWTL_META ] ) && isset( $_REQUEST[ YITH_WCWTL_META . '-action' ] ) ) ) {
				return;
			}

			$action = $_REQUEST[ YITH_WCWTL_META . '-action' ];

			$user_email = ( isset( $_REQUEST[ 'yith-wcwtl-email' ] ) ) ? $_REQUEST[ 'yith-wcwtl-email' ] : $user->user_email;
			$product_id = $_REQUEST[ YITH_WCWTL_META ];
			$product = wc_get_product( $product_id );

			if( ! $user->exists() && empty( $_REQUEST[ 'yith-wcwtl-email' ] ) ) {
				wc_add_notice( __( 'You must provide a valid email address to join the waiting list of this product', 'yith-woocommerce-waiting-list' ), 'error' );
				wp_redirect( $product->get_permalink() );
				exit();
			}

			// set standard msg and type
			$msg        = get_option( 'yith-wcwtl-button-success-msg' );
			$msg_type   = 'success';

			// start user session and set cookies
			if( ! isset( $_COOKIE['woocommerce_items_in_cart'] ) ) {
				do_action( 'woocommerce_set_cart_cookies', true );
			}

			if( $action == 'register' ) {
				// register user;
				$res = yith_waitlist_register_user( $user_email, $product_id );

				if( ! $res ) {
					$msg = get_option( 'yith-wcwtl-button-error-msg' );
					$msg_type = 'error';
				}
				else {
					// send email
					do_action( 'send_yith_waitlist_mail_subscribe', $user_email, $product_id );
				}
			}
			elseif( $action == 'leave' ) {
				// unregister user
				yith_waitlist_unregister_user( $user_email, $product_id );
				$msg = get_option( 'yith-wcwtl-button-leave-msg' );
			}
			else {
				$msg = get_option( 'yith-wcwtl-button-error-msg' );
				$msg_type = 'error';
			}

			//redirect to product page
			$dest = remove_query_arg( array( YITH_WCWTL_META, YITH_WCWTL_META . '-action', '_wpnonce', 'yith-wcwtl-email' ) );
			wc_add_notice( $msg, $msg_type );
			wp_redirect( esc_url( $dest ) );
			exit;
		}

		/**
		 * Add waitlist section to my-account page
		 *
		 * @access public
		 * @since 1.0.0
		 * @author Francesco Licandro <francesco.licandro@yithemes.com>
		 */
		public function add_waitlist_my_account() {
			echo do_shortcode('[ywcwtl_waitlist_table]');
		}

		/**
		 * Waiting list table my account shortcode
		 *
		 * @access public
		 * @since 1.1.1
		 * @author Francesco Licandro
		 */
		public function shortcode_waitlist_my_account(){
			ob_start();
				wc_get_template( 'yith-wcwtl-my-waitlist.php', array(), '', YITH_WCWTL_DIR . 'templates/' );
			return ob_get_clean();
		}

		/**
		 * Update user meta after registration
		 *
		 * @access public
		 * @since 1.0.0
		 * @param int $customer_id
		 * @param mixed $new_customer_data
		 * @param string $password_generated
		 * @author Francesco Licandro <francesco.licandro@yithemes.com>
		 */
		public function add_meta_to_new_user( $customer_id, $new_customer_data, $password_generated ){

			global $wpdb;
			// get ids
			$query = "SELECT post_id FROM " . $wpdb->prefix . "postmeta WHERE meta_value LIKE '%" . $new_customer_data['user_email'] . "%'";
			$ids = $wpdb->get_col( $query );

			// update post meta for new user
			update_user_meta( $customer_id, YITH_WCWTL_META_USER, $ids );
		}

		/**
		 * Add menu item for standard wc account navigation ( for version >= 2.6 )
		 *
		 * @since 1.1.2
		 * @author Francesco Licandro
		 * @param array $items
		 * @return array
		 */
		public function add_menu_item( $items ) {

			$new_items = array();

			if( ! is_array( $items ) ){
				return $items;
			}

			$items_keys = array_keys( $items );
			$last_key = end( $items_keys );
			
			foreach ($items as $key => $value ) {
				if( $key == $last_key ) {
					$new_items['waiting-list'] = __( 'Waiting List', 'yith-woocommerce-waiting-list' );
				}
				$new_items[$key] = $value;
			}

			return $new_items;
		}

		/**
		 * Load my account section ( for WC >= 2.6 )
		 *
		 * @since 1.1.2
		 * @author Francesco Licandro
		 */
		public function load_account_template(){

			global $wp, $post;

			if( ! is_page( wc_get_page_id( 'myaccount' ) ) || ! isset( $wp->query_vars['waiting-list'] ) ) {
				return;
			}

            // extract from post content the my-account shortcode
            preg_match( '/\[woocommerce_my_account[^\]]*\]/', $post->post_content, $shortcode );
            // get content
            $shortcode = isset( $shortcode[0] ) ? $shortcode[0] : false;

            if( ! $shortcode ) {
                return;
            }

            ob_start();

            echo '<div class="woocommerce">';

            wc_print_notices();

            do_action( 'woocommerce_account_navigation' );
            echo '<div class="woocommerce-MyAccount-content">';
            echo '[ywcwtl_waitlist_table]';
            echo '</div>';

            echo '</div>';

            $content = ob_get_clean();

            $post->post_title = __( 'My Waiting List', 'yith-woocommerce-one-click-checkout' );
            $post->post_content = str_replace( $shortcode, $content, $post->post_content );
		}
	}
}
/**
 * Unique access to instance of YITH_WCWT_Frontend class
 *
 * @return \YITH_WCWTL_Frontend
 * @since 1.0.0
 */
function YITH_WCWTL_Frontend(){
	return YITH_WCWTL_Frontend::get_instance();
}

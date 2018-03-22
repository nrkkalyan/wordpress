<?php
/**
 * Admin class
 *
 * @author Yithemes
 * @package YITH WooCommerce Waiting List
 * @version 1.0.0
 */

if ( ! defined( 'YITH_WCWTL' ) ) {
	exit;
} // Exit if accessed directly

if ( ! class_exists( 'YITH_WCWTL_Admin_Premium' ) ) {
	/**
	 * Admin class.
	 * The class manage all the admin behaviors.
	 *
	 * @since 1.0.0
	 */
	class YITH_WCWTL_Admin_Premium extends YITH_WCWTL_Admin {

		/**
		 * Single instance of the class
		 *
		 * @var \YITH_WCWTL_Admin_Premium
		 * @since 1.0.0
		 */
		protected static $instance;

		/**
		 * Returns single instance of the class
		 *
		 * @return \YITH_WCWTL_Admin_Premium
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

			parent::__construct();

			add_action( 'admin_enqueue_scripts', array( $this, 'admin_scripts_premium' ) );

			add_filter( 'yith-wcwtl-admin-tabs', array( $this, 'add_premium_options_tabs' ), 10, 1 );

			// custom tab
			add_action( 'yith_wcwtl_exclusions_table', array( $this, 'exclusions_table' ) );
			add_action( 'yith_wcwtl_waitlist_data', array( $this, 'waitlist_data' ) );
			add_action( 'yith_wcwtl_email_instock_settings', array( $this, 'email_instock_settings' ) );
			add_action( 'yith_wcwtl_email_subscribe_settings', array( $this, 'email_subscribe_settings' ) );

			// Register plugin to licence/update system
			add_action( 'wp_loaded', array( $this, 'register_plugin_for_activation' ), 99 );
			add_action( 'admin_init', array( $this, 'register_plugin_for_updates' ) );

			// mailout on status change
			add_action( 'update_postmeta', array( $this, 'mailout_on_status_change' ), 10, 4 );
			// add notice
			add_action( 'all_admin_notices', array( $this, 'add_mailout_notice' ) );

			//Custom tinymce button
			add_action('admin_head', array( $this, 'tc_button' ) );

		}

		/**
		 * Enqueue script premium
		 *
		 * @access public
		 * @since 1.0.0
		 * @author Francesco Licandro <francesco.licandro@yithemes.com>
		 */
		public function admin_scripts_premium(){

			$min = ( defined('SCRIPT_DEBUG') && SCRIPT_DEBUG ) ? '' : '.min';

            if ( isset( $_GET['page'] ) && $_GET['page'] == $this->_panel_page ) {
                // style
                wp_enqueue_style('yith-waitlist-admin-stile', YITH_WCWTL_ASSETS_URL . '/css/admin.css', array(), YITH_WCWTL_VERSION, 'all');
                // script
                wp_enqueue_script('ajax-chosen');
                wp_enqueue_script('yith-waitlist-admin', YITH_WCWTL_ASSETS_URL . '/js/admin' . $min . '.js', array('jquery', 'ajax-chosen'), YITH_WCWTL_VERSION, true);

                wp_localize_script('yith-waitlist-admin', 'yith_wcwtl_admin', array(
                    'ajaxurl' => admin_url('admin-ajax.php'),
                    'security' => wp_create_nonce("search-products"),
                    'conf_msg' => __('Do you really want to send the mail?', 'yith-woocommerce-waiting-list')
                ));
            }
		}

		/**
		 * Add premium tabs options to standard
		 *
		 * @access public
		 * @since 1.0.0
		 * @param mixed $tabs Standard admin tabs
		 *
		 * @return mixed
		 * @author Francesco Licandro <francesco.licandro@yithemes.com>
		 */
		public function add_premium_options_tabs( $tabs ) {

			// add tab style options
			$tabs['style'] = __( 'Style', 'yith-woocommerce-waiting-list' );
			// add tab email in stock options
			$tabs['email-instock']  = __( 'In Stock Email Settings', 'yith-woocommerce-waiting-list' );
			// add tab email subscribe options
			$tabs['email-subscribe']  = __( 'Subscription Email Settings', 'yith-woocommerce-waiting-list' );
			// add tab exclusion list
			$tabs['exclusions'] = __( 'Exclusions List', 'yith-woocommerce-waiting-list' );
			// add tab waitlist data
			$tabs['waitlistdata'] = __( 'Waiting list Checklist', 'yith-woocommerce-waiting-list' );

			return $tabs;
		}

		/**
		 * Print exclusions table
		 *
		 * @access public
		 * @since 1.0.0
		 * @author Francesco Licandro <francesco.licandro@yithemes.com>
		 */
		public function exclusions_table() {
			if( file_exists( YITH_WCWTL_DIR . '/templates/admin/exclusions-tab.php' ) ) {
				include_once( YITH_WCWTL_DIR . '/templates/admin/exclusions-tab.php' );
			}
		}

		/**
		 * Print waitlist data table
		 *
		 * @access public
		 * @since 1.0.0
		 * @author Francesco Licandro <francesco.licandro@yithemes.com>
		 */
		public function waitlist_data() {
			if( file_exists( YITH_WCWTL_DIR . '/templates/admin/waitlistdata-tab.php' ) ) {
				include_once( YITH_WCWTL_DIR . '/templates/admin/waitlistdata-tab.php' );
			}
		}

		/**
		 * Duplicate email options in plugin settings
		 *
		 * @access public
		 * @since 1.0.0
		 * @author Francesco Licandro <francesco.licandro@yithemes.com>
		 */
		public function email_subscribe_settings() {

			if( file_exists( YITH_WCWTL_DIR . '/templates/admin/email-settings-tab.php' ) ) {
				global $current_section;
				$current_section = 'yith_wcwtl_mail_subscribe';

				$mailer = WC()->mailer();
				$class = $mailer->emails['YITH_WCWTL_Mail_Subscribe'];

				WC_Admin_Settings::get_settings_pages();

				if( ! empty( $_POST ) ) {
					$class->process_admin_options();
				}

				include_once( YITH_WCWTL_DIR . '/templates/admin/email-settings-tab.php' );
			}
		}

		/**
		 * Duplicate email options in plugin settings
		 *
		 * @access public
		 * @since 1.0.0
		 * @author Francesco Licandro <francesco.licandro@yithemes.com>
		 */
		public function email_instock_settings() {

			if( file_exists( YITH_WCWTL_DIR . '/templates/admin/email-settings-tab.php' ) ) {
				global $current_section;
				$current_section = 'yith_wcwtl_mail_instock';

				$mailer = WC()->mailer();
				$class = $mailer->emails['YITH_WCWTL_Mail_Instock'];

				WC_Admin_Settings::get_settings_pages();

				if( ! empty( $_POST ) ) {
					$class->process_admin_options();
				}

				include_once( YITH_WCWTL_DIR . '/templates/admin/email-settings-tab.php' );
			}
		}

		/**
		 * Send mail to users in waitlist for product when pass from 'out of stock' status to 'in stock'
		 *
		 * @access public
		 * @since 1.0.0
		 * @param integer $meta_id
		 * @param integer $object_id
		 * @param string $meta_key
		 * @param mixed $meta_value
		 * @author Francesco Licandro <francesco.licandro@yithemes.com>
		 */
		public function mailout_on_status_change( $meta_id, $object_id, $meta_key, $meta_value ) {

			if( get_option( 'yith-wcwtl-enable' ) !== 'yes' || get_option( 'yith-wcwtl-auto-mailout' ) !== 'yes' ||
                $meta_key != '_stock_status' || ( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) ) {
                return;
            }

			$old_value = get_post_meta( $object_id, $meta_key, true );

			// return if new value is the same as old or new value is not instock
			if( $old_value === $meta_value || $meta_value !== 'instock' ) {
                return;
            }

			// get waitlist users for product
			$users = yith_waitlist_get_registered_users( $object_id );
			// if there are users and product in not in excluded list
			if( ! empty( $users ) && ! yith_waitlist_is_excluded( $object_id ) ) {
				// send mail
				do_action( 'send_yith_waitlist_mail_instock', $users, $object_id );
			}

			add_filter( 'redirect_post_location', array( $this, 'add_query_to_redirect_location' ), 20, 2 );

			$response = apply_filters( 'yith_wcwtl_mail_instock_send_response', false );

			if( get_option( 'yith-wcwtl-keep-after-email' ) !== 'yes' && $response ) {
				// empty waitlist
				yith_waitlist_empty( $object_id );
			}
		}

		/**
		 * Add query string to standard location redirect after a post update
		 *
		 * @access public
		 * @since 1.0.0
		 * @param $location
		 * @param $post_id
		 *
		 * @return string
		 * @author Francesco Licandro <francesco.licandro@yithemes.com>
		 */
		public function add_query_to_redirect_location( $location, $post_id ) {

			$response = apply_filters( 'yith_wcwtl_mail_instock_send_response', false );

			if ( $response ) {
				$location = add_query_arg( 'yith_wcwtl_message', 1, $location );
			}
			else {
				$location = add_query_arg( 'yith_wcwtl_message', 2, $location );
			}

			return esc_url_raw( $location );
		}

		/**
		 * Admin Message after mailout on status change
		 *
		 * @access public
		 * @since 1.0.0
		 * @author Francesco Licandro <francesco.licandro@yithemes.com>
		 */
		public function add_mailout_notice() {

			if( ! ( isset( $_GET['post'] ) && isset( $_GET['yith_wcwtl_message'] ) && get_post_type( $_GET['post'] ) == 'product' ) ) {
				return;
			}

			if( $_GET['yith_wcwtl_message'] == 1 ) {
				$msg = apply_filters( 'yith_wcwtl_success_message_edit_post', __( 'You have successfully sent the email to the users of the waiting list!', 'yith-woocommerce-waiting-list' ) );
				echo '<div id="yith-success-message" class="updated"><p>' . $msg . '</p></div>';
			}
			elseif( $_GET['yith_wcwtl_message'] == 2 ) {
				$msg = apply_filters( 'yith_wcwtl_error_message_edit_post', __( 'An error occurred sending the email to the users. Please try again.', 'yith-woocommerce-waiting-list' ) );
				echo '<div class="error"><p>' . $msg . '</p></div>';
			}

		}

		/**
		 * Register plugins for activation tab
		 *
		 * @return void
		 * @since    2.0.0
		 * @author   Andrea Grillo <andrea.grillo@yithemes.com>
		 */
		public function register_plugin_for_activation() {
			if( ! class_exists( 'YIT_Plugin_Licence' ) ) {
				require_once( YITH_WCWTL_DIR . 'plugin-fw/licence/lib/yit-licence.php' );
				require_once( YITH_WCWTL_DIR . 'plugin-fw/licence/lib/yit-plugin-licence.php' );
			}
			YIT_Plugin_Licence()->register( YITH_WCWTL_INIT, YITH_WCWTL_SECRET_KEY, YITH_WCWTL_SLUG );
		}

		/**
		 * Register plugins for update tab
		 *
		 * @return void
		 * @since    2.0.0
		 * @author   Andrea Grillo <andrea.grillo@yithemes.com>
		 */
		public function register_plugin_for_updates() {
			if( ! class_exists( 'YIT_Upgrade' ) ) {
				require_once( YITH_WCWTL_DIR . 'plugin-fw/lib/yit-upgrade.php' );
			}
			YIT_Upgrade()->register( YITH_WCWTL_SLUG, YITH_WCWTL_INIT );
		}

		/**
		 * Add a new button to tinymce
		 *
		 * @return   void
		 * @since    1.0
		 * @author   Emanuela Castorina
		 */
		public function tc_button() {
			global $typenow;

			if ( !current_user_can( 'edit_posts' ) && !current_user_can( 'edit_pages' ) ) {
				return;
			}

			if ( !isset( $_GET['page'] ) || $_GET['page'] != $this->_panel_page ) {
				return;
			}

			if ( get_user_option( 'rich_editing' ) == 'true' ) {
				add_filter( "mce_external_plugins", array( $this, 'add_tinymce_plugin' ) );
				add_filter( "mce_buttons", array( $this, 'register_tc_button' ) );
				add_filter( 'mce_external_languages', array( $this, 'add_tc_button_lang' ) );
			}
		}

		/**
		 * Add plugin button to tinymce from filter mce_external_plugins
		 *
		 * @return   void
		 * @since    1.0
		 * @author   Emanuela Castorina
		 */
		function add_tinymce_plugin( $plugin_array ) {
			$min = ! ( defined( 'SCRIPT_DEBUG' ) && SCRIPT_DEBUG ) ? '.min' : '';
			$plugin_array['tc_button'] = YITH_WCWTL_ASSETS_URL . '/js/tinymce/text-editor' . $min . '.js';
			return $plugin_array;
		}

		/**
		 * Register the custom button to tinymce from filter mce_buttons
		 *
		 * @return   void
		 * @since    1.0
		 * @author   Emanuela Castorina
		 */
		function register_tc_button( $buttons ) {
			array_push( $buttons, "tc_button" );
			return $buttons;
		}

		/**
		 * Add multilingual to mce button from filter mce_external_languages
		 *
		 * @return   void
		 * @since    1.0
		 * @author   Emanuela Castorina
		 */
		function add_tc_button_lang( $locales ) {
			$locales ['tc_button'] = YITH_WCWTL_DIR . 'includes/tinymce/tinymce-plugin-langs.php';
			return $locales;
		}

		/**
		 * Get panel page name
		 *
		 * @access public
		 * @since 1.0.6
		 * @author Francesco Licandro
		 */
		public function get_panel_page_name() {
			return $this->_panel_page;
		}
	}
}
/**
 * Unique access to instance of YITH_WCWTL_Admin_Premium class
 *
 * @return \YITH_WCWTL_Admin_Premium
 * @since 1.0.0
 */
function YITH_WCWTL_Admin_Premium(){
	return YITH_WCWTL_Admin_Premium::get_instance();
}
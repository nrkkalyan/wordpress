<?php
/**
 * Main class
 *
 * @author Yithemes
 * @package YITH WooCommerce Color and Label Variations Premium
 * @version 1.0.0
 */


if ( ! defined( 'YITH_WCCL' ) ) {
	exit;
} // Exit if accessed directly

if ( ! class_exists( 'YITH_WCCL' ) ) {
	/**
	 * YITH WooCommerce Color and Label Variations Premium
	 *
	 * @since 1.0.0
	 */
	class YITH_WCCL {

		/**
		 * Single instance of the class
		 *
		 * @var \YITH_WCCL
		 * @since 1.0.0
		 */
		protected static $instance;

		/**
		 * Plugin version
		 *
		 * @var string
		 * @since 1.0.0
		 */
		public $version = YITH_WCCL_VERSION;


		/**
		 * Returns single instance of the class
		 *
		 * @return \YITH_WFBT
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
		 * @return mixed YITH_WCCL_Admin | YITH_WCCL_Frontend
		 * @since 1.0.0
		 */
		public function __construct() {
			
			// Class admin
			if ( is_admin() && ! ( defined( 'DOING_AJAX' ) && DOING_AJAX &&
               ( isset( $_REQUEST['context'] ) && $_REQUEST['context'] == 'frontend' ) ||
               ( isset( $_REQUEST['action'] ) && $_REQUEST['action'] == 'prdctfltr_respond_550' ) ) &&
				apply_filters( 'yith_wccl_load_admin_class', true ) ) {

				// Load Plugin Framework
				add_action( 'after_setup_theme', array( $this, 'plugin_fw_loader' ), 1 );
				// Admin Class
				YITH_WCCL_Admin();
			}
			else {
				// Frontend Class
				YITH_WCCL_Frontend();
			}
		}

		/**
		 * Load Plugin Framework
		 *
		 * @since  1.0
		 * @access public
		 * @return void
		 * @author Andrea Grillo <andrea.grillo@yithemes.com>
		 */
		public function plugin_fw_loader() {

			if ( ! defined( 'YIT_CORE_PLUGIN' ) ) {
				global $plugin_fw_data;
				if( ! empty( $plugin_fw_data ) ){
					$plugin_fw_file = array_shift( $plugin_fw_data );
					require_once( $plugin_fw_file );
				}
			}
		}
	}
}

/**
 * Unique access to instance of YITH_WCCL class
 *
 * @return \YITH_WCCL
 * @since 1.0.0
 */
function YITH_WCCL(){
	return YITH_WCCL::get_instance();
}
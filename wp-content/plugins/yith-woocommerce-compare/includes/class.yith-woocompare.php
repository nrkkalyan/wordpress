<?php
/**
 * Main class
 *
 * @author Your Inspiration Themes
 * @package YITH Woocommerce Compare
 * @version 1.1.4
 */

if ( !defined( 'YITH_WOOCOMPARE' ) ) { exit; } // Exit if accessed directly

if( !class_exists( 'YITH_Woocompare' ) ) {
    /**
     * YITH Woocommerce Compare
     *
     * @since 1.0.0
     */
    class YITH_Woocompare {

        /**
         * Plugin object
         *
         * @var string
         * @since 1.0.0
         */
        public $obj = null;

        /**
         * AJAX Helper
         *
         * @var string
         * @since 1.0.0
         */
        public $ajax = null;

        /**
         * Constructor
         *
         * @return mixed|YITH_Woocompare_Admin|YITH_Woocompare_Frontend
         * @since 1.0.0
         */
        public function __construct() {

	        add_action( 'widgets_init', array( $this, 'registerWidgets' ) );

	        if( $this->is_frontend() ) {

		        // requires frontend class
		        require_once( 'class.yith-woocompare-frontend.php' );
		        require_once( 'class.yith-woocompare-frontend-premium.php' );

                $this->obj = new YITH_Woocompare_Frontend_Premium();

            }
	        elseif( $this->is_admin() ) {

		        // Load Plugin Framework
		        add_action( 'after_setup_theme', array( $this, 'plugin_fw_loader' ), 1 );

		        // requires admin classes
		        require_once( 'class.yith-woocompare-admin.php' );
		        require_once( 'class.yith-woocompare-admin-premium.php' );

                $this->obj = new YITH_Woocompare_Admin_Premium();
            }

	        // init plugin
	        add_action( 'init', array( $this, 'init' ) );

            return $this->obj;
        }

	    /**
	     * Init plugin
	     *
	     * @since 2.0.0
	     * @author Francesco Licandro <francesco.licandro@yithemes.com>
	     */
	    public function init() {
		    // Add compare page
		    $this->_add_page();
	    }

        /**
         * Detect if is frontend
         * @return bool
         */
        public function is_frontend() {
            $is_ajax = ( defined( 'DOING_AJAX' ) && DOING_AJAX );
	        $context_check = isset( $_REQUEST['context'] ) && $_REQUEST['context'] == 'frontend';
	        $actions_to_check = array( 'woof_draw_products' );
	        $action_check = isset( $_REQUEST['action'] ) && in_array( $_REQUEST['action'], $actions_to_check );

            return (bool) ( ! is_admin() || ( $is_ajax && ( $context_check || $action_check ) ) );
        }

        /**
         * Detect if is admin
         * @return bool
         */
        public function is_admin() {
            $is_ajax = ( defined( 'DOING_AJAX' ) && DOING_AJAX );
            return (bool) ( is_admin() || $is_ajax && isset( $_REQUEST['context'] ) && $_REQUEST['context'] == 'admin' );
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

        /**
         * Load and register widgets
         *
         * @access public
         * @since 1.0.0
         */
        public function registerWidgets() {
            register_widget( 'YITH_Woocompare_Widget' );
        }

	    /**
	     * Add a page "Compare".
	     *
	     * @return void
	     * @since 1.0.0
	     */
	    private function _add_page() {
		    global $wpdb;

		    $option_value = get_option( 'yith-woocompare-page-id' );

		    if ( $option_value > 0 && get_post( $option_value ) )
			    return;

		    $page_found = $wpdb->get_var( "SELECT `ID` FROM `{$wpdb->posts}` WHERE `post_name` = 'yith-compare' LIMIT 1;" );
		    if ( $page_found ) :
			    if ( ! $option_value )
				    update_option( 'yith-woocompare-page-id', $page_found );
			    return;
		    endif;

		    $page_data = array(
			    'post_status' 		=> 'publish',
			    'post_type' 		=> 'page',
			    'post_author' 		=> 1,
			    'post_name' 		=> esc_sql( _x( 'yith-compare', 'page_slug', 'yith-woocommerce-compare' ) ),
			    'post_title' 		=> __( 'Compare', 'yith-woocommerce-compare' ),
			    'post_content' 		=> '[yith_woocompare_table]',
			    'post_parent' 		=> 0,
			    'comment_status' 	=> 'closed'
		    );
		    $page_id = wp_insert_post( $page_data );

		    update_option( 'yith-woocompare-page-id', $page_id );
	    }
    }
}
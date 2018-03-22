<?php
if (!defined('ABSPATH')) {
    exit;
} // Exit if accessed directly


if( !class_exists( 'YITH_WooCommerce_Sequential_Order_Number') ) {

    class YITH_WooCommerce_Sequential_Order_Number{

        /**Single instance of the class
         * @var YITH_WooCommerce_Sequential_Order_Number
         * #@since 1.0.0
         */
        protected static $instance;
        /**
         * @var Panel
         */
        protected $_panel;
        /**
         * @var Panel Page
         */
        protected $_panel_page              =   'yith_wc_sequential_order_number_panel';

        /**
         * @var string Premium version landing link
         */
        protected $premium_landing_url     = '';

        /**
         * @var string Plugin official documentation
         */
        protected $_official_documentation = '';

        /**
         * @var string , custom numeration postmeta name
         */
        private $_order_number_meta         =   '_ywson_custom_number_order';

        private $_order_number_complete     =   '_ywson_custom_number_order_complete';

        private $_order_free_number_meta    =   '_ywson_custom_free_number_order';

        /**
         * @var string, order post type
         */
        private $_shop_order_type           =   'shop_order';


        public function __construct(){
            // Load Plugin Framework
            add_action( 'plugins_loaded', array( $this, 'plugin_fw_loader' ),15 );
            //Add action links
            add_filter( 'plugin_action_links_' . plugin_basename( YWSON_DIR . '/' . basename( YWSON_FILE ) ), array( $this, 'action_links' ),5 );
            //add row meta
            add_filter( 'plugin_row_meta', array( $this, 'plugin_row_meta' ), 10, 4 );
            //  Add action menu
            add_action( 'admin_menu', array( $this, 'add_menu_page' ),5 );
            // register plugin to licence/update system
            add_action( 'wp_loaded', array( $this, 'register_plugin_for_activation' ), 99 );
            add_action( 'admin_init', array( $this, 'register_plugin_for_updates' ) );
            add_action( 'admin_enqueue_scripts', array( $this, 'enqueue_admin_script') );

            /*insert custom numeration order*/
            add_action( 'woocommerce_checkout_order_processed', array( $this, 'create_progressive_numeration' ), 5, 2 );
            add_action( 'woocommerce_process_shop_order_meta',  array( $this, 'create_progressive_numeration' ), 5, 2 );
            add_action( 'woocommerce_api_create_order',         array( $this, 'create_progressive_numeration' ), 10, 2 );

            /*print custom order number*/
            add_filter( 'woocommerce_order_number', array( $this, 'get_custom_order_number' ), 10, 2);

            /*WooCommerce Subscription support*/
            add_filter( 'woocommerce_subscriptions_renewal_order_meta_query', array( $this, 'ywson_subscriptions_remove_renewal_order_meta_query' ), 10, 4 );
            add_action( 'woocommerce_subscriptions_renewal_order_created',    array( $this, 'ywson_subscriptions_renewal_order_created' ), 10, 4 );
            /*order tracking page*/
            add_filter('woocommerce_shortcode_order_tracking_order_id', array( $this, 'ywson_get_order_by_custom_id') );

            if ( is_admin() )
            {
                /*Enable search order by id in [woocommerce_order_tracking] shortcode*/
                add_filter( 'woocommerce_shop_order_search_fields', array( $this, 'add_custom_search_fields' ) );

                /*WooCommerce PreOrders support*/
                add_filter( 'wc_pre_orders_search_fields',array( $this, 'add_custom_search_fields' ) );

            }

        }


        /**Insert an progressive numeration in custom order number
         * @author YITHEMES
         * @since 1.0.0
         * @param $post_id
         * @param $post
         * @use  woocommerce_checkout_order_processed, woocommerce_process_shop_order_meta, woocommerce_api_create_order
         */
        public function create_progressive_numeration( $post_id, $post=array() )
        {

            if ( (! is_admin() || defined( 'DOING_AJAX' ) ) || ( $this->_shop_order_type == $post->post_type ) && ( $post->post_status!='auto-draft' ) ) {

                $post_id = is_a($post_id, 'WC_Order') ? $post_id->id : $post_id;

                $is_req_a_quote = get_post_meta($post_id, 'ywraq_raq_status', true);


                if( empty( $is_req_a_quote ) || $is_req_a_quote == 'accepted' ) {

                    $current_order_number = get_post_meta($post_id, $this->_order_number_complete, true);

                    if(  $current_order_number === '' ) {

                        if ($this->is_free_numeration_enabled() && $this->is_order_free($post_id)) {
                            $this->save_custom_meta_free_order($post_id);
                        } else {
                            $this->save_custom_meta_order($post_id);
                        }

                    }
                }
            }
        }

        /**Save the custom order meta
         * @author YITHEMES
         * @since 1.0.0
         * @param $order_id
         */
        private function save_custom_meta_order( $order_id ){

            $order_date =   wc_get_order($order_id)->order_date;
            $prefix     =   $this->get_prefix_suffix( $this->get_prefix_order(), $order_date );
            $next_num   =   $this->get_next_number_order();
            $suffix     =   $this->get_prefix_suffix( $this->get_suffix_order(), $order_date );

            update_post_meta( $order_id, $this->_order_number_meta, $next_num );
            update_post_meta( $order_id, $this->_order_number_complete, $prefix . $next_num . $suffix );

        }

        /**Save the custom free orders meta
         * @author YITHEMES
         * @since 1.0.0
         * @param $order_id
         */
        private function save_custom_meta_free_order ( $order_id ){

            $order      =    wc_get_order( $order_id );
            $prefix     =   $this->get_prefix_suffix( $this->get_prefix_free_order(),  $order->order_date );
            $next_num   =   $this->get_next_number_free_order();
            $suffix     =   $this->get_prefix_suffix( $this->get_suffix_free_order(),  $order->order_date );
            update_post_meta( $order_id, $this->_order_free_number_meta, $next_num );
            update_post_meta( $order_id, $this->_order_number_complete, $prefix . $next_num . $suffix );
            delete_post_meta( $order_id, $this->_order_number_meta );

        }

        /**check if this order is free
         * @author YITHEMES
         * @since 1.0.0
         * @param $order_id
         * @return bool
         */
        private function is_order_free( $order_id ){

            $order      =    wc_get_order( $order_id );
            $type_free  =    $this->get_type_free_order();
            $free       =    true;
            switch  ( $type_free ) {

                case 'order_tot' :
                    $total  =   floatval( preg_replace( '#[^\d.]#', '', $order->get_total() ) );
                    if( $total!=0 )
                        $free   =   false;
                    break;

                case 'product_ord' :

                    $product_in_order   = $order->get_items();
                    $free   =   true;
                    foreach( $product_in_order as $product ) {
                        if( $product['line_total']>0 ) {
                            $free   =   false;
                            break;
                        }
                    }
                    break;
            }

            return $free;
        }


        /**Return the next order id
         * @author YITHEMES
         * @return int
         * @use create_progressive_numeration
         */
        private function get_next_number_order() {
            $next_number    =    intval($this->get_current_order_number());

            $this->set_current_order_number( ( $next_number+1 ) );
            return $next_number;

        }

        /**Return the next free order id
         * @author YITHEMES
         * @return int
         * @use update_meta_free_orders
         */
        private function get_next_number_free_order() {
            $next_number    =    intval($this->get_current_free_order_number());

            $this->set_current_free_order_number( ( $next_number+1) );
            return $next_number;

        }

        /**Returns a formatted string
         * @author YITHEMES
         * @param $custom_string
         * @param $current_date
         * @return string
         */
        public function get_prefix_suffix( $custom_string, $current_date )  {
            $custom_string  =   str_replace(
                array(  '[D]','[DD]','[M]','[MM]','[YY]','[YYYY]','[h]','[hh]','[m]','[s]' ),
                array(  date('j', strtotime( $current_date ) ),date('d', strtotime($current_date) ),date('n', strtotime( $current_date ) ),date('m', strtotime( $current_date ) ),
                        date('y', strtotime( $current_date ) ),date('Y', strtotime( $current_date ) ),date('G', strtotime( $current_date ) ),date('H', strtotime( $current_date ) ),
                        date('i', strtotime( $current_date ) ),date('s', strtotime( $current_date ) ) ),
                $custom_string
            );

            return $custom_string;
        }

        /**display the custom formatted id order
         * @author YITHEMES
         * @param $order_number
         * @param $order
         * @return string
         */
        public function get_custom_order_number ( $order_number, $order ) {

            $order_number_complete= get_post_meta( $order->id, $this->_order_number_complete, true);
                if( $order_number_complete )
                    return  $order_number_complete;
                else
                    return $order_number;
        }

        /**add custom order meta to search fields
         * @author YITHEMES
         * @param $search_fields
         * @return array
         * @use woocommerce_shop_order_search_fields
         */
        public function add_custom_search_fields ( $search_fields ) {

            $search_fields[]    =   $this->_order_number_complete;

            return $search_fields;
        }


        /**create a custom order number for subscriptions
         * @param $renewal_order
         * @param $original_order
         * @param $product_id
         * @param $new_order_role
         */
        public function ywson_subscriptions_renewal_order_created( $renewal_order, $original_order, $product_id, $new_order_role ) {
            $order_post =   get_post( $renewal_order->id );

            $this->create_progressive_numeration( $order_post->ID, $order_post );

        }

        public function ywson_subscriptions_remove_renewal_order_meta_query( $order_meta_query, $original_order_id, $renewal_order_id, $new_order_role ) {

            $order_meta_query .= " AND meta_key NOT IN ( '$this->_order_number_complete','$this->_order_number_meta','$this->_order_free_number_meta' )";

            return $order_meta_query;
        }

        /**get the real order id by custom_id
         * @author YITHEMES
         * @since 1.0.0
         * @param $ywson_custom_number_order_complete
         * @return order_id
         */
        public function ywson_get_order_by_custom_id ( $ywson_custom_number_order_complete ) {

            $args   =   array(
                'meta_key'      =>  '_ywson_custom_number_order_complete',
                'meta_value'    =>  $ywson_custom_number_order_complete,
                'post_type'     =>  'shop_order',
                'post_status'   =>  'any',
                'fields'        =>  'ids'
            );

            $order = get_posts( $args );

             $order_id  = ! empty( $order ) ? $order : null;

            if ( $order_id [0]!== null ) {
                return $order_id[0];
            }
        }

        /**
         * add script in admin
         * @author YITHEMES
         * @since 1.0.0
         * @use admin_enqueue_scripts
         */
        public function enqueue_admin_script ()
        {
            wp_register_style('yit-sequentialorder-style', YWSON_ASSETS_URL . 'css/ywson_admin.css',array(),YWSON_VERSION );
            wp_enqueue_style('yit-sequentialorder-style');
            wp_enqueue_script( 'yit-sequentialorder-script', YWSON_ASSETS_URL . 'js/ywson_admin.js', array('jquery'),YWSON_VERSION, true );
        }


        /**Returns single instance of the class
         * @author YITHEMES
         * @since 1.0.0
         * @return YITH_WooCommerce_Sequential_Order_Number
         */
        public static function get_instance()
        {
            if( is_null( self::$instance ) ){
                self::$instance = new self( $_REQUEST );
            }
            return self::$instance;
        }


        /**
         * Add a panel under YITH Plugins tab
         *
         * @return   void
         * @since    1.0
         * @author   Andrea Grillo <andrea.grillo@yithemes.com>
         * @use     /Yit_Plugin_Panel class
         * @see      plugin-fw/lib/yit-plugin-panel.php
         */
        public function add_menu_page() {
            if ( ! empty( $this->_panel ) ) {
                return;
            }

            $admin_tabs = array(
                'general'      => __( 'General', 'ywson' ),
            );

            $args = array(
                'create_menu_page' => true,
                'parent_slug'      => '',
                'page_title'       => __( 'Sequential Order Number', 'ywson' ),
                'menu_title'       => __( 'Sequential Order Number', 'ywson' ),
                'capability'       => 'manage_options',
                'parent'           => '',
                'parent_page'      => 'yit_plugin_panel',
                'page'             => $this->_panel_page,
                'admin-tabs'       => $admin_tabs,
                'options-path'     => YWSON_DIR . '/plugin-options'
            );

            $this->_panel = new YIT_Plugin_Panel_WooCommerce( $args );

        }

        /**load plugin_fw
         * @author YITHEMES
         * @since 1.0.0
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
         * @use plugin_action_links_{$plugin_file_name}
         */
        public function action_links( $links ) {

            $links[] = '<a href="' . admin_url( "admin.php?page={$this->_panel_page}" ) . '">' . __( 'Settings', 'ywson' ) . '</a>';

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
         * @return   Array
         * @since    1.0
         * @author   Andrea Grillo <andrea.grillo@yithemes.com>
         * @use plugin_row_meta
         */
        public function plugin_row_meta( $plugin_meta, $plugin_file, $plugin_data, $status ) {
            if ( ( defined( 'YWSON_INIT' ) && ( YWSON_INIT == $plugin_file ) ) ){

                $plugin_meta[] = '<a href="' . $this->_official_documentation . '" target="_blank">' . __( 'Plugin Documentation', 'ywson' ) . '</a>';
            }

            return $plugin_meta;
        }

        /**
         * Register plugins for activation tab
         *
         * @return void
         * @since    1.0.0
         * @author   Andrea Grillo <andrea.grillo@yithemes.com>
         */
        public function register_plugin_for_activation() {
            if ( ! class_exists( 'YIT_Plugin_Licence' ) ) {
                require_once YWSON_DIR.'plugin-fw/licence/lib/yit-licence.php';
                require_once YWSON_DIR.'plugin-fw/licence/lib/yit-plugin-licence.php';
            }
            YIT_Plugin_Licence()->register( YWSON_INIT, YWSON_SECRET_KEY, YWSON_SLUG );
        }

        /**
         * Register plugins for update tab
         *
         * @return void
         * @since    1.0.0
         * @author   Andrea Grillo <andrea.grillo@yithemes.com>
         */
        public function register_plugin_for_updates() {
            if ( ! class_exists( 'YIT_Upgrade' ) ) {
                require_once(YWSON_DIR.'plugin-fw/lib/yit-upgrade.php');
            }
            YIT_Upgrade()->register( YWSON_SLUG, YWSON_INIT );
        }

        /**
         * Get the premium landing uri
         *
         * @since   1.0.0
         * @author  Andrea Grillo <andrea.grillo@yithemes.com>
         * @return  string The premium landing link
         */
        public function get_premium_landing_uri(){
            return defined( 'YITH_REFER_ID' ) ? $this->premium_landing_url . '?refer_id=' . YITH_REFER_ID : $this->premium_landing_url;
        }


        /**return current order number
         * @author YITHEMES
         * @since 1.0.0
         * @return int
         */
        private function get_current_order_number() {
            return get_option( 'ywson_start_order_number', 1);
        }

        /**set next order number
         * @author YITHEMES
         * @since 1.0.0
         * @param $next_number
         */
        private function set_current_order_number( $next_number ) {
            update_option( 'ywson_start_order_number', $next_number );
        }

        /**get prefix order
         * @author YITHEMES
         * @since 1.0.0
         * @return string
         */
        private function get_prefix_order() {
            return get_option( 'ywson_order_prefix','' );
        }

        /**get suffix order
         * @author YITHEMES
         * @since 1.0.0
         * @return string
         */
        private function get_suffix_order() {
            return get_option( 'ywson_order_suffix','' );
        }

        /**return current free order number
         * @author YITHEMES
         * @since 1.0.0
         * @return int
         */
        private function get_current_free_order_number() {
            return get_option( 'ywson_start_free_order_number', 1 );
        }

        /**set next free order number
         * @author YITHEMES
         * @since 1.0.0
         * @param $next_number
         */
        private function set_current_free_order_number( $next_number ){
            update_option( 'ywson_start_free_order_number', $next_number );
        }

        /**get prefix free order
         * @author YITHEMES
         * @since 1.0.0
         * @return string
         */
        private function get_prefix_free_order() {
            return get_option('ywson_free_order_prefix','');
        }

        /**get suffix free order
         * @author YITHEMES
         * @since 1.0.0
         * @return string
         */
        private function get_suffix_free_order() {
            return get_option('ywson_free_order_suffix','');
        }

        /**Get the current "type" of free orders
         * @author YITHEMES
         * @since 1.0.0
         * @return string
         */
        private function get_type_free_order() {
            return get_option('ywson_free_order_type');
        }

        /**check if free numeration option is enabled
         * @author YITHEMES
         * @since 1.0.0
         * @return boolean
         */
        private function is_free_numeration_enabled() {
            return get_option('ywson_check_custom_free_order', 'no')=='yes' ? true : false;
        }

    }
}
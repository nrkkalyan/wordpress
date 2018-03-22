<?php
/**
 * Plugin Name: YITH WooCommerce Product Countdown Premium
 * Plugin URI: http://yithemes.com/themes/plugins/yith-woocommerce-product-countdown/
 * Description: The right time for the right product.
 * Author: YITHEMES
 * Text Domain: yith-woocommerce-product-countdown
 * Version: 1.1.5
 * Author URI: http://yithemes.com/
 */

if ( !defined( 'ABSPATH' ) ) {
    exit;
} // Exit if accessed directly

if ( !function_exists( 'is_plugin_active' ) ) {
    require_once( ABSPATH . 'wp-admin/includes/plugin.php' );
}

function ywpc_install_woocommerce_premium_admin_notice() {
    ?>
    <div class="error">
        <p><?php _e( 'YITH WooCommerce Product Countdown is enabled but not effective. It requires WooCommerce in order to work.', 'yith-woocommerce-product-countdown' ); ?></p>
    </div>
<?php
}

if( ! function_exists( 'yit_deactive_free_version' ) ) {
    require_once 'plugin-fw/yit-deactive-plugin.php';
}

yit_deactive_free_version( 'YWPC_FREE_INIT', plugin_basename( __FILE__ ) );

if ( !defined( 'YWPC_VERSION' ) ) {
    define( 'YWPC_VERSION', '1.1.5' );
}

if ( !defined( 'YWPC_INIT' ) ) {
    define( 'YWPC_INIT', plugin_basename( __FILE__ ) );
}

if ( ! defined( 'YWPC_SLUG' ) ) {
    define( 'YWPC_SLUG', 'yith-woocommerce-product-countdown' );
}

if ( ! defined( 'YWPC_SECRET_KEY' ) ) {
    define( 'YWPC_SECRET_KEY', 'be2HAkM7YPCcDI301FP9' );
}

if ( ! defined( 'YWPC_PREMIUM' ) ) {
    define( 'YWPC_PREMIUM', '1' );
}

if ( !defined( 'YWPC_FILE' ) ) {
    define( 'YWPC_FILE', __FILE__ );
}

if ( !defined( 'YWPC_DIR' ) ) {
    define( 'YWPC_DIR', plugin_dir_path( __FILE__ ) );
}

if ( !defined( 'YWPC_URL' ) ) {
    define( 'YWPC_URL', plugins_url( '/', __FILE__ ) );
}

if ( !defined( 'YWPC_ASSETS_URL' ) ) {
    define( 'YWPC_ASSETS_URL', YWPC_URL . 'assets' );
}

if ( !defined( 'YWPC_TEMPLATE_PATH' ) ) {
    define( 'YWPC_TEMPLATE_PATH', YWPC_DIR . 'templates' );
}

/* Plugin Framework Version Check */
if( ! function_exists( 'yit_maybe_plugin_fw_loader' ) && file_exists( YWPC_DIR . 'plugin-fw/init.php' ) ) {
    require_once( YWPC_DIR . 'plugin-fw/init.php' );
}
yit_maybe_plugin_fw_loader( YWPC_DIR  );

function ywpc_init() {

    /* Load text domain */
    load_plugin_textdomain( 'yith-woocommerce-product-countdown', false, dirname( plugin_basename( __FILE__ ) ) . '/languages/' );

    /* === Global YITH WooCommerce Product Countdown  === */
    YITH_WPC();

}

add_action( 'ywpc_init', 'ywpc_init' );

function ywpc_install() {

    if ( ! function_exists( 'WC' ) ) {
        add_action( 'admin_notices', 'ywpc_install_woocommerce_premium_admin_notice' );
    }
    else {
        do_action( 'ywpc_init' );
    }

}

add_action( 'plugins_loaded', 'ywpc_install', 11 );

/**
 * Init default plugin settings
 */
if ( !function_exists( 'yith_plugin_registration_hook' ) ) {
    require_once 'plugin-fw/yit-plugin-registration-hook.php';
}

register_activation_hook( __FILE__, 'yith_plugin_registration_hook' );

if ( !function_exists( 'YITH_WPC' ) ) {

    /**
     * Unique access to instance of YITH_WC_Product_Countdown class
     *
     * @since 1.0.0
     * @return YITH_WC_Product_Countdown|YITH_WC_Product_Countdown_Premium
     */
    function YITH_WPC() {
        // Load required classes and functions
        require_once( YWPC_DIR . 'class.yith-wc-product-countdown.php' );

        if ( defined( 'YWPC_PREMIUM' ) && file_exists( YWPC_DIR . 'class.yith-wc-product-countdown-premium.php' ) ) {


            require_once( YWPC_DIR . 'class.yith-wc-product-countdown-premium.php' );
            return YITH_WC_Product_Countdown_Premium::get_instance();
        }

        return YITH_WC_Product_Countdown::get_instance();
    }

}



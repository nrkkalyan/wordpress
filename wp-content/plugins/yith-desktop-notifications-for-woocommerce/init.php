<?php

/*
Plugin Name: YITH Desktop Notifications for WooCommerce
Plugin URI: https://yithemes.com/themes/plugins/yith-woocommerce-desktop-notifications/
Description: YITH Desktop Notifications for WooCommerce allows you to receive real time notifications right on your PC screen letting you know about orders and sales, a quick and easy way to feel connected to your customers and their needs.
Author: YITHEMES
Text Domain: yith-desktop-notifications-for-woocommerce
Version: 1.2.0
Author URI: http://yithemes.com/
WC requires at least: 3.0.0
WC tested up to: 3.3.0
*/

/*
 * This source file is subject to the GNU GENERAL PUBLIC LICENSE (GPL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://www.gnu.org/licenses/gpl-3.0.txt
 */

if ( ! defined( 'ABSPATH' ) ) {
    exit;
} // Exit if accessed directly

if( ! function_exists( 'yith_wcdn_install_woocommerce_admin_notice' ) ) {
    /**
     * Print an admin notice if WooCommerce is deactivated
     *
     * @author Carlos Rodriguez <carlos.rodriguez@yourinspiration.it>
     * @since 1.0
     * @return void
     * @use admin_notices hooks
     */
    function yith_wcdn_install_woocommerce_admin_notice() { ?>
        <div class="error">
            <p><?php _ex( 'YITH WooCommerce Desktop Notifications is enabled but not effective. It requires WooCommerce in order to work.', 'Alert Message: WooCommerce requires', 'yith-desktop-notifications-for-woocommerce' ); ?></p>
        </div>
        <?php
    }
}


/**
 * Check if WooCommerce is activated
 *
 * @author Carlos Rodriguez <carlos.rodriguez@yourinspiration.it>
 * @since 1.0
 * @return void
 * @use admin_notices hooks
 */
function yith_wcdn_install_free() {

    if ( !function_exists( 'WC' ) ) {
        add_action( 'admin_notices', 'yith_wcdn_install_woocommerce_admin_notice' );
    } else {
        do_action( 'yith_wcdn_init_free' );
        YITH_WCDN_DB::install();
    }
}

add_action( 'plugins_loaded', 'yith_wcdn_install_free', 11 );


/* === DEFINE === */
! defined( 'YITH_WCDN_VERSION' )            && define( 'YITH_WCDN_VERSION', '1.2.0' );
! defined( 'YITH_WCDN_FREE_INIT' )          && define( 'YITH_WCDN_FREE_INIT', plugin_basename( __FILE__ ) );
! defined( 'YITH_WCDN_SLUG' )               && define( 'YITH_WCDN_SLUG', 'yith-desktop-notifications-for-woocommerce' );
! defined( 'YITH_WCDN_FILE' )               && define( 'YITH_WCDN_FILE', __FILE__ );
! defined( 'YITH_WCDN_PATH' )               && define( 'YITH_WCDN_PATH', plugin_dir_path( __FILE__ ) );
! defined( 'YITH_WCDN_URL' )                && define( 'YITH_WCDN_URL', plugins_url( '/', __FILE__ ) );
! defined( 'YITH_WCDN_ASSETS_URL' )         && define( 'YITH_WCDN_ASSETS_URL', YITH_WCDN_URL . 'assets/' );
! defined( 'YITH_WCDN_TEMPLATE_PATH' )      && define( 'YITH_WCDN_TEMPLATE_PATH', YITH_WCDN_PATH . 'templates/' );
! defined( 'YITH_WCDN_WC_TEMPLATE_PATH' )   && define( 'YITH_WCDN_WC_TEMPLATE_PATH', YITH_WCDN_PATH . 'templates/woocommerce/' );
! defined( 'YITH_WCDN_OPTIONS_PATH' )       && define( 'YITH_WCDN_OPTIONS_PATH', YITH_WCDN_PATH . 'panel' );

/* Plugin Framework Version Check */
if( ! function_exists( 'yit_maybe_plugin_fw_loader' ) && file_exists( YITH_WCDN_PATH . 'plugin-fw/init.php' ) ) {
    require_once( YITH_WCDN_PATH . 'plugin-fw/init.php' );
}
yit_maybe_plugin_fw_loader( YITH_WCDN_PATH  );


function yith_wcdn_init_free() {
    load_plugin_textdomain( 'yith-desktop-notifications-for-woocommerce', false, dirname( plugin_basename( __FILE__ ) ) . '/languages/' );


    if ( ! function_exists( 'YITH_Desktop_Notifications' ) ) {
        /**
         * Unique access to instance of YITH_Desktop_Notifications class
         *
         * @return YITH_Desktop_Notifications
         * @since 1.0.0
         */
        function YITH_Desktop_Notifications() {
            // Load required classes and functions

            if ( defined( 'YITH_WCDN_PREMIUM' ) && file_exists( YITH_WCDN_PATH . 'includes/class.yith-wcdn-desktop-notifications-premium.php' ) ) {
                require_once( YITH_WCDN_PATH . 'includes/class.yith-wcdn-desktop-notifications-premium.php' );
                return YITH_Desktop_Notifications_Premium::instance();
            }
            require_once(YITH_WCDN_PATH . 'includes/class.yith-wcdn-desktop-notifications.php' );
            return YITH_Desktop_Notifications::instance();


        }
    }

    // Let's start the game!
    YITH_Desktop_Notifications();
}

add_action( 'yith_wcdn_init_free', 'yith_wcdn_init_free' );
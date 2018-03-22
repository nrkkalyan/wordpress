<?php
/*
Plugin Name: YITH Pre-Order for WooCommerce Premium
Plugin URI: https://yithemes.com/themes/plugins/yith-woocommerce-pre-order
Description: YITH Pre-Order for WooCommerce Premium allows your customers to purchase products even before they're available for sale
Author: YITHEMES
Text Domain: yith-woocommerce-pre-order
Version: 1.2.3
Author URI: http://yithemes.com/
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


/* === DEFINE === */
! defined( 'YITH_WCPO_VERSION' ) && define( 'YITH_WCPO_VERSION', '1.2.3' );
! defined( 'YITH_WCPO_INIT' ) && define( 'YITH_WCPO_INIT', plugin_basename( __FILE__ ) );
! defined( 'YITH_WCPO_SLUG' ) && define( 'YITH_WCPO_SLUG', 'yith-woocommerce-pre-order' );
! defined( 'YITH_WCPO_SECRETKEY' ) && define( 'YITH_WCPO_SECRETKEY', 'IuVtJPflp0YXWOXGW0uW' );
! defined( 'YITH_WCPO_FILE' ) && define( 'YITH_WCPO_FILE', __FILE__ );
! defined( 'YITH_WCPO_PATH' ) && define( 'YITH_WCPO_PATH', plugin_dir_path( __FILE__ ) );
! defined( 'YITH_WCPO_URL' ) && define( 'YITH_WCPO_URL', plugins_url( '/', __FILE__ ) );
! defined( 'YITH_WCPO_ASSETS_URL' ) && define( 'YITH_WCPO_ASSETS_URL', YITH_WCPO_URL . 'assets/' );
! defined( 'YITH_WCPO_ASSETS_JS_URL' ) && define( 'YITH_WCPO_ASSETS_JS_URL', YITH_WCPO_URL . 'assets/js/' );
! defined( 'YITH_WCPO_TEMPLATE_PATH' ) && define( 'YITH_WCPO_TEMPLATE_PATH', YITH_WCPO_PATH . 'templates/' );
! defined( 'YITH_WCPO_WC_TEMPLATE_PATH' ) && define( 'YITH_WCPO_WC_TEMPLATE_PATH', YITH_WCPO_PATH . 'templates/woocommerce/' );
! defined( 'YITH_WCPO_OPTIONS_PATH' ) && define( 'YITH_WCPO_OPTIONS_PATH', YITH_WCPO_PATH . 'plugin-options' );
! defined( 'YITH_WCPO_PREMIUM' ) && define( 'YITH_WCPO_PREMIUM', '1' );

require_once YITH_WCPO_PATH . '/functions.php';

/* Initialize */

yith_initialize_plugin_fw( plugin_dir_path( __FILE__ ) );

/* Plugin Framework Version Check */
yit_maybe_plugin_fw_loader( plugin_dir_path( __FILE__ ) );

/* Register the plugin when activated */
register_activation_hook( __FILE__, 'yith_plugin_registration_hook' );

/* Register the Pre-Order email notification */
function start_preorder_date_notification_scheduling() {
	wp_schedule_event( time(), 'daily', 'ywpo_preorder_date_notification' );
}

function start_preorder_date_end_check_scheduling() {
	wp_schedule_event( time(), 'twicedaily', 'ywpo_preorder_date_end_check' );
}

function end_preorder_date_notification_scheduling() {
	wp_clear_scheduled_hook( 'ywpo_preorder_date_notification' );
}
function end_preorder_date_end_check_scheduling() {
	wp_clear_scheduled_hook( 'ywpo_preorder_date_end_check' );
}
function end_preorder_is_for_sale_single_notification_scheduling() {
	wp_clear_scheduled_hook( 'ywpo_preorder_is_for_sale_single_notification' );
}



register_activation_hook( YITH_WCPO_FILE, 'start_preorder_date_notification_scheduling' );
register_activation_hook( YITH_WCPO_FILE, 'start_preorder_date_end_check_scheduling' );
register_deactivation_hook( YITH_WCPO_FILE, 'end_preorder_date_notification_scheduling' );
register_deactivation_hook( YITH_WCPO_FILE, 'end_preorder_date_end_check_scheduling' );
register_deactivation_hook( YITH_WCPO_FILE, 'end_preorder_is_for_sale_single_notification_scheduling' );

// Register 'My Pre-Orders'(From 'My Account' page) endpoint.
register_activation_hook( YITH_WCPO_URL . 'includes/class.yith-pre-order-my-account.php', array( 'YITH_Pre_Order_My_Account', 'install' ) );
register_deactivation_hook( YITH_WCPO_URL . 'includes/class.yith-pre-order-my-account.php', array( 'YITH_Pre_Order_My_Account', 'install' ) );


/* Start the plugin on plugins_loaded */
add_action( 'plugins_loaded', 'yith_ywpo_install', 11 );

<?php
/**
 * Plugin Name: WooCommerce Order Status
 * Description: Allows users to manage WooCommerce order statuses, create the action button that triggers the status and set up what happens to the order when the status is applied.
 * Version: 2.1.4
 * Author: Actuality Extensions
 * Author URI: http://actualityextensions.com/
 * Tested up to: 4.6
 *
 * Text Domain: woocommerce_status_actions
 * Domain Path: /lang/
 *
 * Copyright: (c) 2016 Actuality Extensions (info@actualityextensions.com)
 *
 * License: GNU General Public License v3.0
 * License URI: http://www.gnu.org/licenses/gpl-3.0.html
 *
 * @package     WC-Custom-Status
 * @author      Actuality Extensions
 * @category    Plugin
 * @copyright   Copyright (c) 2016, Actuality Extensions
 * @license     http://www.gnu.org/licenses/gpl-3.0.html GNU General Public License v3.0
 */

if (!defined('ABSPATH'))
    exit; // Exit if accessed directly

if (function_exists('is_multisite') && is_multisite()) {
    include_once( ABSPATH . 'wp-admin/includes/plugin.php' );
    if ( !is_plugin_active( 'woocommerce/woocommerce.php' ) )
        return;
}else{
    if (!in_array('woocommerce/woocommerce.php', apply_filters('active_plugins', get_option('active_plugins'))))
        return; // Check if WooCommerce is active    
}

// Load plugin class files
require_once( 'includes/class-wc-sa.php' );

/**
 * Returns the main instance of WC_SA to prevent the need to use globals.
 *
 * @since    1.4.9
 * @return object WC_SA
 */

function WC_SA () {
    return WC_SA::instance( __FILE__, '2.0.6' );
}
// Global for backwards compatibility.
$GLOBALS['woocommercestatusactions'] = WC_SA();
<?php
// This file is based on wp-includes/js/tinymce/langs/wp-langs.php

if ( ! defined( 'ABSPATH' ) )
    exit;

if ( ! class_exists( '_WP_Editors' ) )
    require( ABSPATH . WPINC . '/class-wp-editor.php' );

function ywcwtl_tinymce_plugin_translation() {
    $strings = array(
        'blogname'       => __( 'The Blogname', 'yith-woocommerce-waiting-list' ),
        'site_title'     => __( 'The Site Title', 'yith-woocommerce-waiting-list' ),
        'product_title'  => __( 'The Product Name', 'yith-woocommerce-waiting-list' )
    );

    if( isset( $_GET['tab'] ) && $_GET['tab'] == 'email-instock' ) {
        $strings['product_link'] =  __( 'The Product Link', 'yith-woocommerce-waiting-list' );
    }
    elseif( isset( $_GET['tab'] ) && $_GET['tab'] == 'email-subscribe' ) {
        $strings['remove_link'] = __( 'Remove from list link', 'yith-woocommerce-waiting-list' );
    }

    $locale = _WP_Editors::$mce_locale;
    $translated = 'tinyMCE.addI18n("' . $locale . '.tc_button", ' . json_encode( $strings ) . ");\n";

    return $translated;
}

$strings = ywcwtl_tinymce_plugin_translation();
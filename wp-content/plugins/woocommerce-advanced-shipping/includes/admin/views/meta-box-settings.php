<?php
if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly

/**
 * WAS meta box settings.
 *
 * Display the shipping settings in the meta box.
 *
 * @author		Jeroen Sormani
 * @package		WooCommerce Advanced Shipping
 * @version		1.0.0
 */

wp_nonce_field( 'was_settings_meta_box', 'was_settings_meta_box_nonce' );

global $post;
$settings = get_post_meta( $post->ID, '_was_shipping_method', true );

?><div class="was was_settings was_meta_box was_settings_meta_box">

	<p class="was-option">
		<label for="shipping_title"><?php _e( 'Description', 'woocommerce' ); ?></label>
		<textarea
			type="text"
			id="shipping_title"
			name="_was_shipping_method[shipping_title]"
			style="width: 190px;"
            placeholder="<?php _e( 'e.g. Shipping', 'woocommerce-advanced-shipping' ); ?>"><?php echo esc_attr( @$settings['shipping_title'] ); ?></textarea>
	</p>


	<p class="was-option">
		<label for="cost"><?php _e( 'Cost', 'woocommerce' ); ?></label>
		<span class="wpc-currency"><?php echo get_woocommerce_currency_symbol(); ?></span>
		<input
			type="text"
			step="any"
			class="wc_input_price"
			id="cost"
			name="_was_shipping_method[shipping_cost]"
			value="<?php echo esc_attr( wc_format_localized_price( @$settings['shipping_cost'] ) ); ?>"
			placeholder="<?php _e( 'Shipping cost', 'woocommerce-advanced-shipping' ); ?>">
	</p>


	<p class="was-option">
		<label for="handling_fee"><?php _e( 'Handling fee', 'woocommerce-advanced-shipping' ); ?></label>
		<span class="wpc-currency"><?php echo get_woocommerce_currency_symbol(); ?></span>
		<input
			type="text"
			class="wc_input_price"
			id="handling_fee"
			name="_was_shipping_method[handling_fee]"
			value="<?php echo esc_attr( wc_format_localized_price( @$settings['handling_fee'] ) ); ?>"
			placeholder="<?php _e( 'Fixed or percentage', 'woocommerce-advanced-shipping' ); ?>"
		><img class="help_tip" src="<?php echo WC()->plugin_url(); ?>/assets/images/help.png" height="16" width="16" data-tip="<?php _e( 'A fixed amount (e.g. 5) or percentage (e.g. 5%) which will always be charged.', 'woocommerce-advanced-shipping' ); ?>">
	</p>


	<p class="was-option">
		<label for="cost-per-item"><?php _e( 'Cost per item', 'woocommerce-advanced-shipping' ); ?></label>
		<span class="wpc-currency"><?php echo get_woocommerce_currency_symbol(); ?></span>
		<input
			type="text"
			class="wc_input_price"
			id="cost-per-item"
			name="_was_shipping_method[cost_per_item]"
			value="<?php echo esc_attr( wc_format_localized_price( @$settings['cost_per_item'] ) ); ?>"
			placeholder="<?php _e( 'Fixed or percentage', 'woocommerce-advanced-shipping' ); ?>"
		><img class="help_tip" src="<?php echo WC()->plugin_url(); ?>/assets/images/help.png" height="16" width="16" data-tip="<?php _e( 'Add a fee for each item that is in the cart. <br/>Quantity is also calculated', 'woocommerce-advanced-shipping' ); ?>">
	</p>


	<p class="was-option">
		<label for="cost-per-weight"><?php _e( 'Cost per weight', 'woocommerce-advanced-shipping' ); ?> (<?php echo get_option( 'woocommerce_weight_unit' ); ?>)</label>
		<span class="wpc-currency"><?php echo get_woocommerce_currency_symbol(); ?></span>
		<input
			type="text"
			class="wc_input_price"
			id="cost-per-weight"
			name="_was_shipping_method[cost_per_weight]"
			value="<?php echo esc_attr( wc_format_localized_price( @$settings['cost_per_weight'] ) ); ?>"
			placeholder="<?php _e( '0', 'woocommerce-advanced-shipping' ); ?>"
		><img class="help_tip" src="<?php echo WC()->plugin_url(); ?>/assets/images/help.png" height="16" width="16" data-tip="<?php echo sprintf( __( 'Add a fee multiplied by the amount of %s', 'woocommerce-advanced-shipping' ), get_option( 'woocommerce_weight_unit' ) ); ?>">
	</p>


	<p class="was-option">
		<label for="tax"><?php _e( 'Taxable', 'woocommerce' ); ?></label>
		<select name="_was_shipping_method[tax]" style="width: 189px;">
			<option value="taxable" <?php @selected( $settings['tax'], 'taxable' ); ?>><?php _e( 'Yes', 'woocommerce' ); ?></option>
			<option value="not_taxable" <?php @selected( $settings['tax'], 'not_taxable' ); ?>><?php _e( 'No', 'woocommerce' ); ?></option>
		</select>
	</p><?php

	do_action( 'was_after_meta_box_settings', $settings );

?></div>

<?php
/**
 * GENERAL ARRAY OPTIONS
 */

$style = array(

	'style'  => array(

		'style-options' => array(
			'title' => __( 'Style Options', 'yith-woocommerce-waiting-list' ),
			'type' => 'title',
			'desc' => '',
			'id' => 'yith-wcwtl-style-options'
		),

		'waiting-list-message'  => array(
			'id'        => 'yith-wcwtl-form-message',
			'name'      => __( 'Top Message', 'yith-woocommerce-waiting-list' ),
			'desc'      => __( 'A message to show before the waiting list form in single product pages.', 'yith-woocommerce-waiting-list' ),
			'type'      => 'text',
			'default'   => __( 'Notify me when item is back in stock.', 'yith-woocommerce-waiting-list' ),
		),

		'waiting-list-general-font-size'   => array(
			'id'        => 'yith-wcwtl-general-font-size',
			'name'      => __( 'Font Size', 'yith-woocommerce-waiting-list' ),
			'desc'      => __( 'Set the font size of the waiting list form in product pages (max value 99, min value 1. Size is in px).', 'yith-woocommerce-waiting-list' ),
			'type'      => 'number',
			'default'   => '15'
		),

		'waiting-list-general-font-color'   => array(
			'id'        => 'yith-wcwtl-general-font-color',
			'name'      => __( 'Font Color', 'yith-woocommerce-waiting-list' ),
			'desc'      => __( 'Set the font color of the waiting list form in product pages', 'yith-woocommerce-waiting-list' ),
			'type'      => 'color',
			'default'   => '#333333'
		),

		'waiting-list-button-add'  => array(
			'id'        => 'yith-wcwtl-button-add-label',
			'name'      => __( 'Subscription Button Label', 'yith-woocommerce-waiting-list' ),
			'desc'      => __( 'The label of the button for subscribing in the waiting list', 'yith-woocommerce-waiting-list' ),
			'type'      => 'text',
			'default'   => __( 'Add to waiting list', 'yith-woocommerce-waiting-list' ),
		),

		'waiting-list-button-add-background' => array(
			'id'        => 'yith-wcwtl-button-add-background',
			'name'      => __( 'Subscription Button Background', 'yith-woocommerce-waiting-list' ),
			'desc'      => __( 'Choose the background for the subscription button', 'yith-woocommerce-waiting-list' ),
			'type'      => 'color',
			'default'   => '#a46497'
		),

		'waiting-list-button-add-background-hover' => array(
			'id'        => 'yith-wcwtl-button-add-background-hover',
			'name'      => __( 'Subscription Button Hover Background', 'yith-woocommerce-waiting-list' ),
			'desc'      => __( 'Choose the hover background for the subscription button', 'yith-woocommerce-waiting-list' ),
			'type'      => 'color',
			'default'   => '#935386'
		),

		'waiting-list-button-add-text-color' => array(
			'id'        => 'yith-wcwtl-button-add-text-color',
			'name'      => __( 'Subscription Button Text Color', 'yith-woocommerce-waiting-list' ),
			'desc'      => __( 'Choose the text color for the subscription button', 'yith-woocommerce-waiting-list' ),
			'type'      => 'color',
			'default'   => '#ffffff'
		),

		'waiting-list-button-add-text-color-hover' => array(
			'id'        => 'yith-wcwtl-button-add-text-color-hover',
			'name'      => __( 'Subscription Button Hover Text Color', 'yith-woocommerce-waiting-list' ),
			'desc'      => __( 'Choose the hover text color for the subscription button', 'yith-woocommerce-waiting-list' ),
			'type'      => 'color',
			'default'   => '#ffffff'
		),

		'waiting-list-button-leave'  => array(
			'id'        => 'yith-wcwtl-button-leave-label',
			'name'      => __( 'Removal Button Label', 'yith-woocommerce-waiting-list' ),
			'desc'      => __( 'The label of the button to be removed from the waiting list', 'yith-woocommerce-waiting-list' ),
			'type'      => 'text',
			'default'   => __( 'Leave waiting list', 'yith-woocommerce-waiting-list' ),
		),

		'waiting-list-button-leave-background' => array(
			'id'        => 'yith-wcwtl-button-leave-background',
			'name'      => __( 'Removal Button Background', 'yith-woocommerce-waiting-list' ),
			'desc'      => __( 'Choose the background of the "Leave" button', 'yith-woocommerce-waiting-list' ),
			'type'      => 'color',
			'default'   => '#a46497'
		),

		'waiting-list-button-leave-background-hover' => array(
			'id'        => 'yith-wcwtl-button-leave-background-hover',
			'name'      => __( 'Removal Button Hover Background', 'yith-woocommerce-waiting-list' ),
			'desc'      => __( 'Choose the hover background of the "Leave" button', 'yith-woocommerce-waiting-list' ),
			'type'      => 'color',
			'default'   => '#935386'
		),

		'waiting-list-button-leave-text-color' => array(
			'id'        => 'yith-wcwtl-button-leave-text-color',
			'name'      => __( 'Removal Button Text Color', 'yith-woocommerce-waiting-list' ),
			'desc'      => __( 'Choose the text color of the "Leave" button', 'yith-woocommerce-waiting-list' ),
			'type'      => 'color',
			'default'   => '#ffffff'
		),

		'waiting-list-button-leave-text-color-hover' => array(
			'id'        => 'yith-wcwtl-button-leave-text-color-hover',
			'name'      => __( 'Removal Button Hover Text Color', 'yith-woocommerce-waiting-list' ),
			'desc'      => __( 'Choose the hover text color of the "Leave" button', 'yith-woocommerce-waiting-list' ),
			'type'      => 'color',
			'default'   => '#ffffff'
		),

		'style-options-end' => array(
			'type'      => 'sectionend',
			'id'        => 'yith-wcwtl-style-options'
		),
	)
);

return apply_filters( 'yith_wcwt_panel_style_options', $style );
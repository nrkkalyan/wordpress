<?php
/**
 * GENERAL ARRAY OPTIONS
 */

$general = array(

	'general'  => array(

		'general-options' => array(
			'title' => __( 'General Options', 'yith-woocommerce-waiting-list' ),
			'type' => 'title',
			'desc' => '',
			'id' => 'yith-wcwtl-general-options'
		),

		'enable-waiting-list' => array(
			'id'        => 'yith-wcwtl-enable',
			'name'      => __( 'Enable Waiting List', 'yith-woocommerce-waiting-list' ),
			'type'      => 'checkbox',
			'default'   => 'yes'
		),

		'waiting-list-success-msg'  => array(
			'id'        => 'yith-wcwtl-button-success-msg',
			'name'      => __( 'Subscription message', 'yith-woocommerce-waiting-list' ),
			'desc'      => __( 'Message for successful subscription in the waiting list.', 'yith-woocommerce-waiting-list' ),
			'type'      => 'text',
			'default'   => __( 'You have been added to the waiting list of this product.', 'yith-woocommerce-waiting-list' ),
		),

		'waiting-list-leave-msg'  => array(
			'id'        => 'yith-wcwtl-button-leave-msg',
			'name'      => __( 'Removal message', 'yith-woocommerce-waiting-list' ),
			'desc'      => __( 'Message for successful removal from the waiting list.', 'yith-woocommerce-waiting-list' ),
			'type'      => 'text',
			'default'   => __( 'You have been removed from the waiting list of this product.', 'yith-woocommerce-waiting-list' ),
		),

		'waiting-list-error-msg'  => array(
			'id'        => 'yith-wcwtl-button-error-msg',
			'name'      => __( 'Error message', 'yith-woocommerce-waiting-list' ),
			'desc'      => __( 'Error message showed when a user try to subscribe to a waiting list.', 'yith-woocommerce-waiting-list' ),
			'type'      => 'text',
			'default'   => __( 'An error has occurred or you\'re already register in this waiting list. Please try again.', 'yith-woocommerce-waiting-list' ),
		),

		'waiting-list-auto-mailout'  => array(
			'id'        => 'yith-wcwtl-auto-mailout',
			'name'      => __( 'Automatic email', 'yith-woocommerce-waiting-list' ),
			'desc'      => __( 'When a status product is set back as \'In-stock\', this option sends an email to all the users in the waiting list.', 'yith-woocommerce-waiting-list' ),
			'type'      => 'checkbox',
			'default'   => 'yes'
		),

		'waiting-list-keep-after-email'  => array(
			'id'        => 'yith-wcwtl-keep-after-email',
			'name'      => __( 'Keep the list after email', 'yith-woocommerce-waiting-list' ),
			'desc'      => __( 'Keep the waiting list after sending the email.', 'yith-woocommerce-waiting-list' ),
			'type'      => 'checkbox',
			'default'   => 'no'
		),

		'general-options-end' => array(
			'type'      => 'sectionend',
			'id'        => 'yith-wcwtl-general-options'
		),

		'mandrill-options' => array(
			'title' => __( 'Mandrill Options', 'yith-woocommerce-waiting-list' ),
			'type' => 'title',
			'desc' => '',
			'id' => 'yith-wcwtl-mandrill-options'
		),

		'enable-mandrill-list' => array(
			'id'        => 'yith-wcwtl-use-mandrill',
			'name'      => __( 'Use Mandrill', 'yith-woocommerce-waiting-list' ),
			'type'      => 'checkbox',
			'default'   => 'no'
		),

		'mandrill-api-key'  => array(
			'id'        => 'yith-wcwtl-mandrill-api-key',
			'name'      => __( 'Mandrill API Key', 'yith-woocommerce-waiting-list' ),
			'type'      => 'text',
			'default'   => '',
			'css'		=> 'max-width:350px;'
		),

		'mandrill-options-end' => array(
			'type'      => 'sectionend',
			'id'        => 'yith-wcwtl-mandrill-options'
		),
	)
);

return apply_filters( 'yith_wcwt_panel_general_options', $general );
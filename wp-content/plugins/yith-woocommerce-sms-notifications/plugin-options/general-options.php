<?php
/**
 * This file belongs to the YIT Plugin Framework.
 *
 * This source file is subject to the GNU GENERAL PUBLIC LICENSE (GPL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://www.gnu.org/licenses/gpl-3.0.txt
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit;
} // Exit if accessed directly

$url_shorteners = array(
	'none'   => __( 'None', 'yith-woocommerce-sms-notifications' ),
	'google' => __( 'Google', 'yith-woocommerce-sms-notifications' ),
	'bitly'  => __( 'bitly', 'yith-woocommerce-sms-notifications' ),
);

$query_args = array(
	'page' => isset( $_GET['page'] ) ? $_GET['page'] : '',
	'tab'  => 'howto',
);

$howto_url = esc_url( add_query_arg( $query_args, admin_url( 'admin.php' ) ) );

$debug_title = $debug_field = $debug_end = $log_file_link = '';

$logs     = WC_Admin_Status::scan_log_files();
$log_file = '';

//Check if exists a log file for current month
foreach ( $logs as $key => $value ) {
	if ( strpos( $value, 'ywsn-' . current_time( 'Y-m' ) ) !== false ) {
		$log_file = $key;
	}
}

if ( $log_file == '' ) {

	//If not found check if exists a log file for previous month
	foreach ( $logs as $key => $value ) {
		if ( strpos( $value, 'ywsn-' . date( 'Y-m', strtotime( '-1 months' ) ) ) !== false ) {
			$log_file = $key; // print key containing searched string
		}
	}

}

if ( $log_file != '' ) {

	$log_file_link = array(
		'type'  => 'yith-wc-label',
		'title' => __( 'Log File', 'yith-woocommerce-sms-notifications' ),
		'desc'  => sprintf( '<a href="%s" target="_blank">%s - %s</a>', admin_url( 'admin.php?page=wc-status&tab=logs&log_file=' . $log_file ), __( 'View Log File', 'yith-woocommerce-sms-notifications' ), $log_file ),
	);

}

if ( apply_filters( 'ywsn_save_send_log', false ) ) {

	$debug_title = array(
		'name' => __( 'SMS Debug', 'yith-woocommerce-sms-notifications' ),
		'type' => 'title',
	);

	$debug_field = array(
		'name'              => __( 'Debug Log', 'yith-woocommerce-sms-notifications' ),
		'type'              => 'yith-wc-textarea',
		'id'                => 'ywsn_debug_log',
		'css'               => 'resize: vertical; width: 100%; min-height: 200px;',
		'default'           => '',
		'custom_attributes' => array(
			'readonly' => 'readonly'
		)
	);

	$debug_end = array(
		'type' => 'sectionend',
	);

}

return array(

	'general' => array(

		'ywsn_main_section_title' => array(
			'name' => __( 'SMS Notifications settings', 'yith-woocommerce-sms-notifications' ),
			'type' => 'title',
		),
		'ywsn_enable_plugin'      => array(
			'name'    => __( 'Enable YITH WooCommerce SMS Notifications', 'yith-woocommerce-sms-notifications' ),
			'type'    => 'checkbox',
			'id'      => 'ywsn_enable_plugin',
			'default' => 'no',
		),
		'ywsn_log_file'           => $log_file_link,
		'ywsn_main_section_end'   => array(
			'type' => 'sectionend',
		),

		'ywsn_sms_service_title' => array(
			'name' => __( 'SMS Service settings', 'yith-woocommerce-sms-notifications' ),
			'type' => 'title',
		),
		'ywsn_sms_gateway'       => array(
			'name'    => __( 'SMS service enabled', 'yith-woocommerce-sms-notifications' ),
			'type'    => 'select',
			'id'      => 'ywsn_sms_gateway',
			'options' => array(
				'none'               => __( 'None', 'yith-woocommerce-sms-notifications' ),
				'YWSN_Twilio'        => __( 'Twilio', 'yith-woocommerce-sms-notifications' ),
				'YWSN_Clockwork'     => __( 'Clockwork', 'yith-woocommerce-sms-notifications' ),
				'YWSN_Agile_Telecom' => __( 'Agile Telecom', 'yith-woocommerce-sms-notifications' ),
				'YWSN_SmsCyber'      => __( 'SmsCyber', 'yith-woocommerce-sms-notifications' ),
				'YWSN_Msg91'         => __( 'Msg91', 'yith-woocommerce-sms-notifications' ),
				'YWSN_MessageBird'   => __( 'MessageBird', 'yith-woocommerce-sms-notifications' ),
				'YWSN_ClickSend'     => __( 'ClickSend', 'yith-woocommerce-sms-notifications' ),
				'YWSN_SMS_Country'   => __( 'SMS Country', 'yith-woocommerce-sms-notifications' ),
				'YWSN_Jazz'          => __( 'Jazz (Mobilink)', 'yith-woocommerce-sms-notifications' ),
			),
			'default' => 'none'
		),
		'ywsn_sms_service_end'   => array(
			'type' => 'sectionend',
		),

		'ywsn_twilio_title'      => array(
			'name' => __( 'Twilio settings', 'yith-woocommerce-sms-notifications' ),
			'type' => 'title',
		),
		'ywsn_twilio_desc'       => array(
			'label_id' => 'ywsn_twilio_desc',
			'type'     => 'yith-wc-label',
			'desc'     => sprintf( __( 'Create a Twilio account on %s', 'yith-woocommerce-sms-notifications' ), '<a href="https://www.twilio.com">https://www.twilio.com</a>' ),
		),
		'ywsn_twilio_sid'        => array(
			'name'              => __( 'Twilio Account SID', 'yith-woocommerce-sms-notifications' ),
			'type'              => 'text',
			'id'                => 'ywsn_twilio_sid',
			'css'               => 'width: 50%',
			'custom_attributes' => array(
				'required' => 'required'
			)
		),
		'ywsn_twilio_auth_token' => array(
			'name'              => __( 'Twilio Auth Token', 'yith-woocommerce-sms-notifications' ),
			'type'              => 'text',
			'id'                => 'ywsn_twilio_auth_token',
			'css'               => 'width: 50%',
			'custom_attributes' => array(
				'required' => 'required'
			)
		),
		'ywsn_twilio_end'        => array(
			'type' => 'sectionend',
		),

		'ywsn_clockwork_title'   => array(
			'name' => __( 'Clockwork settings', 'yith-woocommerce-sms-notifications' ),
			'type' => 'title',
		),
		'ywsn_clockwork_desc'    => array(
			'label_id' => 'ywsn_clockwork_desc',
			'type'     => 'yith-wc-label',
			'desc'     => sprintf( __( 'Create your Clockwork account on %s', 'yith-woocommerce-sms-notifications' ), '<a href="https://www.clockworksms.com/">https://www.clockworksms.com/</a>' ),
		),
		'ywsn_clockwork_api_key' => array(
			'name'              => __( 'Clockwork API Key', 'yith-woocommerce-sms-notifications' ),
			'type'              => 'text',
			'id'                => 'ywsn_clockwork_api_key',
			'css'               => 'width: 50%',
			'custom_attributes' => array(
				'required' => 'required'
			)
		),
		'ywsn_clockwork_end'     => array(
			'type' => 'sectionend',
		),

		'ywsn_agile_title' => array(
			'name' => __( 'Agile Telecom settings', 'yith-woocommerce-sms-notifications' ),
			'type' => 'title',
		),
		'ywsn_agile_desc'  => array(
			'label_id' => 'ywsn_agile_telecom_desc',
			'type'     => 'yith-wc-label',
			'desc'     => sprintf( __( 'Create your Agile Telecom account on %s', 'yith-woocommerce-sms-notifications' ), '<a href="http://www.agiletelecom.com">http://www.agiletelecom.com</a>' ),
		),
		'ywsn_agile_user'  => array(
			'name'              => __( 'Agile Telecom Username', 'yith-woocommerce-sms-notifications' ),
			'type'              => 'text',
			'id'                => 'ywsn_agile_user',
			'css'               => 'width: 50%',
			'custom_attributes' => array(
				'required' => 'required'
			)
		),
		'ywsn_agile_pwd'   => array(
			'name'              => __( 'Agile Telecom Password', 'yith-woocommerce-sms-notifications' ),
			'type'              => 'text',
			'id'                => 'ywsn_agile_pwd',
			'css'               => 'width: 50%',
			'custom_attributes' => array(
				'required' => 'required'
			)
		),
		'ywsn_agile_end'   => array(
			'type' => 'sectionend',
		),

		'ywsn_smscyber_title' => array(
			'name' => __( 'SmsCyber settings', 'yith-woocommerce-sms-notifications' ),
			'type' => 'title',
		),
		'ywsn_smscyber_desc'  => array(
			'label_id' => 'ywsn_smscyber_desc',
			'type'     => 'yith-wc-label',
			'desc'     => sprintf( __( 'Create your SmsCyber account on %s', 'yith-woocommerce-sms-notifications' ), '<a href="http://bulk.smscyber.com">http://bulk.smscyber.com</a>' ),
		),
		'ywsn_smscyber_user'  => array(
			'name'              => __( 'SmsCyber Username', 'yith-woocommerce-sms-notifications' ),
			'type'              => 'text',
			'id'                => 'ywsn_smscyber_user',
			'css'               => 'width: 50%',
			'custom_attributes' => array(
				'required' => 'required'
			)
		),
		'ywsn_smscyber_api'   => array(
			'name'              => __( 'SmsCyber API Password', 'yith-woocommerce-sms-notifications' ),
			'type'              => 'text',
			'id'                => 'ywsn_smscyber_api',
			'css'               => 'width: 50%',
			'custom_attributes' => array(
				'required' => 'required'
			)
		),
		'ywsn_smscyber_end'   => array(
			'type' => 'sectionend',
		),

		'ywsn_msg91_title' => array(
			'name' => __( 'Msg91 settings', 'yith-woocommerce-sms-notifications' ),
			'type' => 'title',
		),
		'ywsn_msg91_desc'  => array(
			'label_id' => 'ywsn_msg91_desc',
			'type'     => 'yith-wc-label',
			'desc'     => sprintf( __( 'Create your Msg91 account on %s', 'yith-woocommerce-sms-notifications' ), '<a href="https://msg91.com/">https://msg91.com/</a>' ),
		),
		'ywsn_msg91_key'   => array(
			'name'              => __( 'Msg91 API Key', 'yith-woocommerce-sms-notifications' ),
			'type'              => 'text',
			'id'                => 'ywsn_msg91_key',
			'css'               => 'width: 50%',
			'custom_attributes' => array(
				'required' => 'required'
			)
		),
		'ywsn_msg91_end'   => array(
			'type' => 'sectionend',
		),

		'ywsn_messagebird_title'   => array(
			'name' => __( 'MessageBird settings', 'yith-woocommerce-sms-notifications' ),
			'type' => 'title',
		),
		'ywsn_messagebird_desc'    => array(
			'label_id' => 'ywsn_messagebird_desc',
			'type'     => 'yith-wc-label',
			'desc'     => sprintf( __( 'Create your MessageBird account on %s', 'yith-woocommerce-sms-notifications' ), '<a href="https://www.messagebird.com/">https://www.messagebird.com/</a>' ),
		),
		'ywsn_messagebird_api_key' => array(
			'name'              => __( 'MessageBird API Key', 'yith-woocommerce-sms-notifications' ),
			'type'              => 'text',
			'id'                => 'ywsn_messagebird_api_key',
			'css'               => 'width: 50%',
			'custom_attributes' => array(
				'required' => 'required'
			)
		),
		'ywsn_messagebird_end'     => array(
			'type' => 'sectionend',
		),

		'ywsn_clicksend_title'    => array(
			'name' => __( 'ClickSend settings', 'yith-woocommerce-sms-notifications' ),
			'type' => 'title',
		),
		'ywsn_clicksend_desc'     => array(
			'label_id' => 'ywsn_clicksend_desc',
			'type'     => 'yith-wc-label',
			'desc'     => sprintf( __( 'Create your ClickSend account on %s', 'yith-woocommerce-sms-notifications' ), '<a href="https://www.clicksend.com/">https://www.clicksend.com/</a>' ),
		),
		'ywsn_clicksend_username' => array(
			'name'              => __( 'ClickSend Username', 'yith-woocommerce-sms-notifications' ),
			'type'              => 'text',
			'id'                => 'ywsn_clicksend_username',
			'css'               => 'width: 50%',
			'custom_attributes' => array(
				'required' => 'required'
			)
		),
		'ywsn_clicksend_api_key'  => array(
			'name'              => __( 'ClickSend API Key', 'yith-woocommerce-sms-notifications' ),
			'type'              => 'text',
			'id'                => 'ywsn_clicksend_api_key',
			'css'               => 'width: 50%',
			'custom_attributes' => array(
				'required' => 'required'
			)
		),
		'ywsn_clicksend_end'      => array(
			'type' => 'sectionend',
		),

		'ywsn_sms_country_title' => array(
			'name' => __( 'SMS Country settings', 'yith-woocommerce-sms-notifications' ),
			'type' => 'title',
		),
		'ywsn_sms_country_desc'  => array(
			'label_id' => 'ywsn_sms_country_desc',
			'type'     => 'yith-wc-label',
			'desc'     => sprintf( __( 'Create your SMS Country account on %s', 'yith-woocommerce-sms-notifications' ), '<a href="http://www.smscountry.com">http://www.smscountry.com</a>' ),
		),
		'ywsn_sms_country_user'  => array(
			'name'              => __( 'SMS Country Username', 'yith-woocommerce-sms-notifications' ),
			'type'              => 'text',
			'id'                => 'ywsn_sms_country_user',
			'css'               => 'width: 50%',
			'custom_attributes' => array(
				'required' => 'required'
			)
		),
		'ywsn_sms_country_pwd'   => array(
			'name'              => __( 'SMS Country Password', 'yith-woocommerce-sms-notifications' ),
			'type'              => 'text',
			'id'                => 'ywsn_sms_country_pwd',
			'css'               => 'width: 50%',
			'custom_attributes' => array(
				'required' => 'required'
			)
		),
		'ywsn_sms_country_end'   => array(
			'type' => 'sectionend',
		),

		'ywsn_jazz_title' => array(
			'name' => __( 'Jazz settings', 'yith-woocommerce-sms-notifications' ),
			'type' => 'title',
		),
		'ywsn_jazz_desc'  => array(
			'label_id' => 'ywsn_jazz_desc',
			'type'     => 'yith-wc-label',
			'desc'     => sprintf( __( 'Create your Jazz account on %s', 'yith-woocommerce-sms-notifications' ), '<a href="https://www.jazz.com.pk/business/">https://www.jazz.com.pk/business/</a>' ),
		),
		'ywsn_jazz_user'  => array(
			'name'              => __( 'Jazz CMS Portal Username', 'yith-woocommerce-sms-notifications' ),
			'type'              => 'text',
			'id'                => 'ywsn_jazz_username',
			'css'               => 'width: 50%',
			'custom_attributes' => array(
				'required' => 'required'
			)
		),
		'ywsn_jazz_pwd'   => array(
			'name'              => __( 'Jazz CMS Portal Password', 'yith-woocommerce-sms-notifications' ),
			'type'              => 'text',
			'id'                => 'ywsn_jazz_password',
			'css'               => 'width: 50%',
			'custom_attributes' => array(
				'required' => 'required'
			)
		),
		'ywsn_jazz_mask'  => array(
			'name'              => __( 'Jazz CMS Portal Mask', 'yith-woocommerce-sms-notifications' ),
			'type'              => 'text',
			'id'                => 'ywsn_jazz_mask',
			'css'               => 'width: 50%',
			'custom_attributes' => array(
				'required' => 'required'
			)
		),
		'ywsn_jazz_end'   => array(
			'type' => 'sectionend',
		),

		'ywsn_send_section_title'      => array(
			'name' => __( 'Sending settings', 'yith-woocommerce-sms-notifications' ),
			'type' => 'title',
		),
		'ywsn_from_number'             => array(
			'name'              => __( 'Sender telephone number', 'yith-woocommerce-sms-notifications' ),
			'type'              => 'text',
			'id'                => 'ywsn_from_number',
			'desc'              => __( 'Enter the telephone number that should appear as sender', 'yith-woocommerce-sms-notifications' ),
			'custom_attributes' => array(
				'required'  => 'required',
				'maxlength' => 16
			)
		),
		'ywsn_from_asid'               => array(
			'name'              => __( 'Alphanumeric Sender ID', 'yith-woocommerce-sms-notifications' ),
			'type'              => 'text',
			'id'                => 'ywsn_from_asid',
			'desc'              => __( 'Alphanumeric sender identifier: enter the text that should appear as sender (this option might not work correctly in some countries,
            check your country with your SMS service provider you have selected)', 'yith-woocommerce-sms-notifications' ),
			'custom_attributes' => array(
				'maxlength' => 11
			)
		),
		'ywsn_admin_phone'             => array(
			'name'        => __( 'Admin phone', 'yith-woocommerce-sms-notifications' ),
			'type'        => 'yith-wc-custom-checklist',
			'id'          => 'ywsn_admin_phone',
			'css'         => 'width: 50%;',
			'desc'        => __( 'Enter here the phone numbers of the admins who will be notified via SMS. Include country calling codes. You can also
            specify more than one phone number. Type the number and press Enter to add a new one.', 'yith-woocommerce-sms-notifications' ),
			'placeholder' => __( 'Type a phone number&hellip;', 'yith-woocommerce-sms-notifications' ),
		),
		'ywsn_customer_notification'   => array(
			'name'    => __( 'Send SMS notifications to customers', 'yith-woocommerce-sms-notifications' ),
			'type'    => 'radio',
			'id'      => 'ywsn_customer_notification',
			'options' => array(
				'automatic' => __( 'All customers', 'yith-woocommerce-sms-notifications' ),
				'requested' => __( 'Only customers who ask for it in checkout', 'yith-woocommerce-sms-notifications' ),
			),
			'class'   => 'ywsn-checkout-option',
			'default' => 'automatic'
		),
		'ywsn_checkout_checkbox_value' => array(
			'name'    => '',
			'type'    => 'checkbox',
			'id'      => 'ywsn_checkout_checkbox_value',
			'default' => 'no',
			'desc'    => __( 'Show checkbox selected by default', 'yith-woocommerce-sms-notifications' ),
		),
		'ywsn_checkout_checkbox_text'  => array(
			'name'    => __( 'Checkbox text', 'yith-woocommerce-sms-notifications' ),
			'type'    => 'yith-wc-textarea',
			'id'      => 'ywsn_checkout_checkbox_text',
			'default' => __( 'I want to be notified about any changes in the order via SMS', 'yith-woocommerce-sms-notifications' ),
			'css'     => 'width: 50%'
		),
		'ywsn_sms_active_send'         => array(
			'name'        => __( 'SMS notifications for the following order status changes', 'yith-woocommerce-sms-notifications' ),
			'type'        => 'yith-wc-check-matrix-table',
			'id'          => 'ywsn_sms_active_send',
			'main_column' => array(
				'label' => __( 'Order status', 'yith-woocommerce-sms-notifications' ),
				'rows'  => wc_get_order_statuses(),
			),
			'columns'     => array(
				array(
					'id'    => 'customer',
					'label' => __( 'Customer', 'yith-woocommerce-sms-notifications' ),
					'tip'   => __( 'Select/deselect all elements', 'yith-woocommerce-sms-notifications' ),
				),
				array(
					'id'    => 'admin',
					'label' => __( 'Admin', 'yith-woocommerce-sms-notifications' ),
					'tip'   => __( 'Select/deselect all elements', 'yith-woocommerce-sms-notifications' ),
				)
			)

		),
		'ywsn_send_section_end'        => array(
			'type' => 'sectionend',
		),

		'ywsn_url_shortening_title' => array(
			'name' => __( 'URL shortening settings', 'yith-woocommerce-sms-notifications' ),
			'type' => 'title',
		),
		'ywsn_url_shortening'       => array(
			'name'    => __( 'URL shortening service', 'yith-woocommerce-sms-notifications' ),
			'type'    => 'select',
			'id'      => 'ywsn_url_shortening',
			'options' => apply_filters( 'ywsn_url_shortening_services', $url_shorteners ),
			'default' => 'none'

		),
		'ywsn_bitly_access_token'   => array(
			'name'              => __( 'Bitly Access Token', 'yith-woocommerce-sms-notifications' ),
			'type'              => 'text',
			'id'                => 'ywsn_bitly_access_token',
			'css'               => 'width: 50%',
			'custom_attributes' => array(
				'required' => 'required'
			)
		),
		'ywsn_google_api_key'       => array(
			'name'              => __( 'Google API Key', 'yith-woocommerce-sms-notifications' ),
			'type'              => 'text',
			'id'                => 'ywsn_google_api_key',
			'css'               => 'width: 50%',
			'custom_attributes' => array(
				'required' => 'required'
			)
		),
		'ywsn_url_shortening_end'   => array(
			'type' => 'sectionend',
		),

		'ywsn_debug_title' => $debug_title,
		'ywsn_debug_log'   => $debug_field,
		'ywsn_debug_end'   => $debug_end,

	)

);
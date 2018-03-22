<?php
/**
 * Email subscribe class
 *
 * @author Yithemes
 * @package YITH WooCommerce Waiting List
 * @version 1.0.0
 */

if ( ! defined( 'YITH_WCWTL' ) ) {
	exit;
} // Exit if accessed directly

if ( ! class_exists( 'YITH_WCWTL_Mail_Subscribe' ) ) {
	/**
	 * Email Class
	 * Extend WC_Email to send mail to waitlist users
	 *
	 * @class   YITH_WCWTL_Mail_Subscribe
	 * @extends  WC_Email
	 */
	class YITH_WCWTL_Mail_Subscribe extends WC_Email {

		/**
		 * Constructor
		 *
		 * @author Francesco Licandro <francesco.licandro@yithemes.com>
		 */
		public function __construct() {

			$this->id           = 'yith_waitlist_mail_subscribe';
			$this->title        = __( 'YITH Waiting list Subscription Email', 'yith-woocommerce-waiting-list' );
			$this->description  = __( 'When a user subscribes to a waiting list, this email is sent for confirmation.', 'yith-woocommerce-waiting-list' );

			$this->heading      = __( 'You are now in the waiting list for {product_title}', 'yith-woocommerce-waiting-list' );
			$this->subject      = __( 'Subscription confirmation for waiting list', 'yith-woocommerce-waiting-list' );
			$this->mail_content = __( 'Hi, your email address has been saved and you will be notified when {product_title} is back in stock on {blogname}. If you want to be removed from this list, please click {remove_link}', 'yith-woocommerce-waiting-list' );

			$this->template_base    = YITH_WCWTL_TEMPLATE_PATH . '/email/';
			$this->template_html    = 'yith-wcwtl-mail-subscribe.php';
			$this->template_plain   = 'plain/yith-wcwtl-mail-subscribe.php';

			$this->remove_link_url = '#';
			$this->customer_email = true;

			// Triggers for this email
			add_action( 'send_yith_waitlist_mail_subscribe_notification', array( $this, 'trigger' ), 10, 2 );

			// Call parent constructor
			parent::__construct();
		}

		/**
		 * @return string|void
		 */
		public function init_form_fields() {

			parent::init_form_fields();

			$this->form_fields['mail_content'] = array(
				'title'         => __( 'Email content', 'yith-woocommerce-waiting-list' ),
				'type'          => 'yith_wcwtl_textarea',
				'description'   => sprintf( __( 'Defaults to <code>%s</code>', 'yith-woocommerce-waiting-list' ), $this->mail_content ),
				'placeholder'   => '',
				'default'       => $this->mail_content
			);
			$this->form_fields['show_thumb'] = array(
				'title'         => __( 'Show product thumbnail', 'yith-woocommerce-waiting-list' ),
				'type'          => 'checkbox',
				'description'   => __( 'Enable to show the product thumbnail in the email', 'yith-woocommerce-waiting-list' ),
				'default'       => 'yes'
			);
		}

		/**
		 * Return YITh Texteditor HTML.
		 *
		 * @param $key
		 * @param $data
		 * @return string
		 */
		public function generate_yith_wcwtl_textarea_html( $key, $data ) {

			// get html
			$html = yith_waitlist_textarea_editor_html( $key, $data, $this );

			return $html;
		}

		/**
		 * Trigger Function
		 *
		 * @access public
		 * @since 1.0.0
		 * @param mixed $user Waitlist user
		 * @param integer $product_id Product id
		 * @return void
		 * @author Francesco Licandro <francesco.licandro@yithemes.com>
		 */
		public function trigger( $user, $product_id ) {

			$this->object = wc_get_product( $product_id );

			if( ! $this->object ) {
				return;
			}

			// replace product title
			$this->find['product-title']       = '{product_title}';
			$this->replace['product-title']    = $this->object->get_title();

			// set remove url
			$product_id = $this->object->product_type == 'variation' ? $this->object->variation_id : $this->object->id;
			$url = add_query_arg( YITH_WCWTL_META , $product_id, get_permalink( $this->object->id ) );
			$url = wp_nonce_url( $url, 'action_waitlist' );
			$url = add_query_arg( YITH_WCWTL_META . '-action' , 'leave', $url );
			$url = add_query_arg( 'yith-wcwtl-email', $user, $url );

			// set global remove link
			$this->remove_link_url = $url;

			// replace product remove link
			$this->find['remove-link']       = '{remove_link}';
			$this->replace['remove-link']    = ( $this->get_email_type() != 'plain' ) ? '<a href="' . esc_url( $url ) . '">' . apply_filters( 'yith_wcwtl_label_remove_link_email', __( 'here', 'yith-woocommerce-waiting-list' ) ) . '</a>' : $url;

			if ( ! $this->is_enabled() ) {
				return;
			}

			$this->send( $user , $this->get_subject(), $this->get_content(), $this->get_headers(), $this->get_attachments() );
		}

		/**
		 * Send mail using standard WP Mail or Mandrill Service
		 *
		 * @access public
		 * @since 1.0.0
		 * @param string $to
		 * @param string $subject
		 * @param string $message
		 * @param string $headers
		 * @param string $attachments
		 *
		 * @return bool | void
		 * @author Francesco Licandro <francesco.licandro@yithemes.com>
		 */
		public function send( $to, $subject, $message, $headers, $attachments )	{

			if ( get_option('yith-wcwtl-use-mandrill') != 'yes' ) {
				return parent::send($to, $subject, $message, $headers, $attachments);
			} else {
				return yith_waitlist_mandrill_mail($to, $subject, $message, $headers, $attachments, $this );
			}
		}

		/**
		 * get custom email content from options
		 *
		 * @access public
		 * @since 1.0.0
		 * @return string
		 * @author Francesco Licandro <francesco.licandro@yithemes.com>
		 */
		public function get_custom_option_content() {
			$content = $this->get_option( 'mail_content' );

			return $this->format_string( $content );
		}

		/**
		 * get_content_html function.
		 *
		 * @access public
		 * @since 1.0.0
		 * @return string
		 * @author Francesco Licandro <francesco.licandro@yithemes.com>
		 */
		public function get_content_html() {

			$args = apply_filters( 'yith_wcwtl_email_subscribe_args', array(
				'product_link'  => get_permalink( $this->object->id ),
				'product_thumb' => ( $this->get_option( 'show_thumb' ) == 'yes' ) ? $this->object->get_image( 'shop_catalog' ) : '',
				'email_heading' => $this->get_heading(),
				'email_content' => $this->get_custom_option_content(),
				'email'         => $this
			));

			ob_start();

			wc_get_template( $this->template_html, $args, false, $this->template_base
			);

			return ob_get_clean();
		}

		/**
		 * get_content_plain function.
		 *
		 * @access public
		 * @since 1.0.0
		 * @return string
		 * @author Francesco Licandro <francesco.licandro@yithemes.com>
		 */
		public function get_content_plain() {

			$args = apply_filters( 'yith_wcwtl_email_subscribe_plain_args', array(
				'product_title'   => $this->object->get_title(),
				'product_link'  => get_permalink( $this->object->id ),
				'email_heading' => $this->get_heading()
			));

			ob_start();

			wc_get_template( $this->template_plain, $args, false, $this->template_base
			);

			return ob_get_clean();
		}
	}

}

return new YITH_WCWTL_Mail_Subscribe();

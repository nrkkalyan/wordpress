<?php
/**
 * General Function
 *
 * @author Yithemes
 * @package YITH WooCommerce Waiting List
 * @version 1.0.0
 */

if ( ! defined( 'YITH_WCWTL' ) ) {
	exit;
} // Exit if accessed directly

if( ! function_exists( 'yith_waitlist_get' ) ) {
	/**
	 * Get waitlist for product id
	 *
	 * @since 1.0.0
	 * @param int $id
	 * @return array
	 * @author Francesco Licandro <francesco.licandro@yithemes.com>
	 */
	function yith_waitlist_get( $id ) {
		$id = intval( $id );
		return get_post_meta( $id, YITH_WCWTL_META, true );
	}
}

if( ! function_exists( 'yith_waitlist_save' ) ) {
	/**
	 * Save waitlist for product id
	 *
	 * @since 1.0.0
	 * @param int $id
	 * @param array $waitlist
	 * @return void
	 * @author Francesco Licandro <francesco.licandro@yithemes.com>
	 */
	function yith_waitlist_save( $id, $waitlist ) {
		$id = intval( $id );
		update_post_meta( $id, YITH_WCWTL_META, $waitlist );
	}
}

if( ! function_exists( 'yith_waitlist_user_is_register' ) ) {
	/**
	 * Check if user is already register for a waitlist
	 *
	 * @since 1.0.0
	 * @param string $user
	 * @param array $waitlist
	 * @return bool
	 * @author Francesco Licandro <francesco.licandro@yithemes.com>
	 */
	function yith_waitlist_user_is_register( $user, $waitlist ) {
		return in_array( $user, $waitlist );
	}
}

if( ! function_exists( 'yith_waitlist_register_user' ) ) {
	/**
	 * Register user to waitlist
	 *
	 * @since 1.0.0
	 * @param string $user User email
	 * @param int $id Product id
	 * @return bool
	 * @author Francesco Licandro <francesco.licandro@yithemes.com>
	 */
	function yith_waitlist_register_user( $user, $id ) {

		$waitlist = yith_waitlist_get( $id );

		if ( ! is_email( $user ) || ( is_array( $waitlist ) && yith_waitlist_user_is_register( $user, $waitlist ) ) )
			return false;

		// add product to user meta
		yith_waitlist_save_user_meta( $id, $user );

		$waitlist[] = $user;
		// save it in product meta
		yith_waitlist_save( $id, $waitlist );

		return true;
	}
}

if( ! function_exists( 'yith_waitlist_unregister_user' ) ) {
	/**
	 * Unregister user from waitlist
	 *
	 * @since 1.0.0
	 * @param string $user User email
	 * @param int $id Product id
	 * @return bool
	 * @author Francesco Licandro <francesco.licandro@yithemes.com>
	 */
	function yith_waitlist_unregister_user( $user, $id ) {

		$waitlist = yith_waitlist_get( $id );

		if( is_array( $waitlist ) && yith_waitlist_user_is_register( $user, $waitlist ) ) {
			// remove product from user meta
			yith_waitlist_remove_user_meta( $id, $user );

			$waitlist = array_diff( $waitlist, array ( $user ) );

			// save it in product meta
			yith_waitlist_save( $id, $waitlist );
			return true;
		}

		return false;
	}
}

if( ! function_exists( 'yith_waitlist_get_registered_users' ) ) {
	/**
	 * Get registered users for product waitlist
	 *
	 * @since 1.0.0
	 * @param int $id Product id
	 * @return mixed
	 * @author Francesco Licandro <francesco.licandro@yithemes.com>
	 */
	function yith_waitlist_get_registered_users( $id ) {

		$waitlist = yith_waitlist_get( $id );
		$users = array();

		if( is_array( $waitlist ) ) {
			foreach( $waitlist as $key => $email ) {
				$users[] = $email;
			}
		}

		return $users;
	}
}

if( ! function_exists( 'yith_waitlist_empty' ) ) {
	/**
	 * Empty waitlist by product id
	 *
	 * @since 1.0.0
	 * @param int $id Product id
	 * @return void
	 * @author Francesco Licandro <francesco.licandro@yithemes.com>
	 */
	function yith_waitlist_empty( $id ) {
		// first of all get all users and update their meta
		$users = yith_waitlist_get_registered_users( $id );
		foreach( $users as $user ) {
			yith_waitlist_remove_user_meta( $id, $user );
		}
		// now empty waitlist
		update_post_meta( $id, YITH_WCWTL_META, array() );
	}
}

if( ! function_exists( 'yith_waitlist_is_excluded' ) ) {
	/**
	 * Check if product is in excluded list
	 *
	 * @since 1.0.0
	 * @param int $id product id
	 * @return bool
	 * @author Francesco Licandro <francesco.licandro@yithems.com>
	 */
	function yith_waitlist_is_excluded( $id ) {
		return get_post_meta( $id, YITH_WCWTL_META_EXCLUDE, true ) == '1';
	}
}

if( ! function_exists( 'yith_count_users_on_waitlist' ) ) {
	/**
	 * Count users on waitlist
	 *
	 * @since 1.0.0
	 * @param int $id product id
	 * @return bool
	 * @author Francesco Licandro <francesco.licandro@yithems.com>
	 */
	function yith_count_users_on_waitlist( $id ) {
		$user = get_post_meta( $id, YITH_WCWTL_META, true );
		 return $user ? count( $user ) : 0;
	}
}

/***************
 * USER FUNCTION
 **************/

if( ! function_exists( 'yith_get_user_wailists' ) ) {
	/**
	 * Get meta for user subscribed waitlists
	 *
	 * @since 1.0.0
	 * @param int $id User id
	 * @return mixed
	 * @author Francesco Licandro <francesco.licandro@yithems.com>
	 */
	function yith_get_user_wailists( $id ) {
		return get_user_meta( $id, YITH_WCWTL_META_USER, true );
	}
}

if( ! function_exists( 'yith_waitlist_user_meta' ) ) {
	/**
	 * Save new waitlist in user meta
	 *
	 * @since 1.0.0
	 * @param int $id Product id
	 * @param string $email User email
	 * @author Francesco Licandro <francesco.licandro@yithemes.com>
	 */
	function yith_waitlist_save_user_meta( $id, $email ) {

		$user = get_user_by( 'email', $email );

		if( ! $user )
			return;

		$products = yith_get_user_wailists( $user->ID );

		$products[] = $id;

		update_user_meta( $user->ID, YITH_WCWTL_META_USER, $products );
	}
}

if( ! function_exists( 'yith_waitlist_remove_user_meta' ) ) {
	/**
	 * Remove waitlist from user meta
	 *
	 * @since 1.0.0
	 * @param int $id Product Id
	 * @param string $email User email
	 * @author Francesco Licandro <francesco.licandro@yithemes.com>
	 */
	function yith_waitlist_remove_user_meta( $id, $email ) {

		$user = get_user_by( 'email', $email );

		if( ! $user )
			return;

		$products = yith_get_user_wailists( $user->ID );

		$products = array_diff( $products, array( $id ) );

		update_user_meta( $user->ID, YITH_WCWTL_META_USER, $products );
	}
}

if( ! function_exists( 'yith_waitlist_mandrill_mail' ) ) {
	/**
	 * Send mail using Mandrill Service
	 *
	 * @access public
	 * @since 1.0.0
	 * @param string $to
	 * @param string $subject
	 * @param string $message
	 * @param string $headers
	 * @param string $attachments
	 * @param object $email
	 *
	 * @return bool | void
	 * @author Francesco Licandro <francesco.licandro@yithemes.com>
	 */
	function yith_waitlist_mandrill_mail( $to, $subject, $message, $headers, $attachments, $email ) {

		// Retrieve Mandrill API KEY
		$api_key = get_option( 'yith-wcwtl-mandrill-api-key' );

		if( empty( $api_key ) ) {
			return false;
		}

		/**
		 * Filter the wp_mail() arguments.
		 *
		 * @since 2.2.0
		 *
		 * @param array $args A compacted array of wp_mail() arguments, including the "to" email,
		 *                    subject, message, headers, and attachments values.
		 */
		$atts = apply_filters( 'wp_mail', compact( 'to', 'subject', 'message', 'headers', 'attachments' ) );

		if ( isset( $atts['to'] ) ) {
			$to = $atts['to'];
		}

		if ( isset( $atts['subject'] ) ) {
			$subject = $atts['subject'];
		}

		if ( isset( $atts['message'] ) ) {
			$message = $atts['message'];
		}

		if ( isset( $atts['headers'] ) ) {
			$headers = $atts['headers'];
		}

		if ( isset( $atts['attachments'] ) ) {
			$attachments = $atts['attachments'];
		}

		if ( ! is_array( $attachments ) ) {
			$attachments = explode( "\n", str_replace( "\r\n", "\n", $attachments ) );
		}

		// include lib
		if( file_exists( YITH_WCWTL_DIR . 'includes/third-party/Mandrill/Mandrill.php' ) ) {
			include_once(YITH_WCWTL_DIR . 'includes/third-party/Mandrill/Mandrill.php');
		}
		else {
			return false;
		}

		// Headers
		if ( empty( $headers ) ) {
			$headers = array();
		}
		else {
			if ( ! is_array( $headers ) ) {
				// Explode the headers out, so this function can take both
				// string headers and an array of headers.
				$tempheaders = explode( "\n", str_replace( "\r\n", "\n", $headers ) );
			}
			else {
				$tempheaders = $headers;
			}

			$headers = array();
			$cc = array();
			$bcc = array();

			// If it's actually got contents
			if ( ! empty( $tempheaders ) ) {
				// Iterate through the raw headers
				foreach ( (array) $tempheaders as $header ) {
					if ( strpos($header, ':') === false ) {
						if ( false !== stripos( $header, 'boundary=' ) ) {
							$parts = preg_split('/boundary=/i', trim( $header ) );
							$boundary = trim( str_replace( array( "'", '"' ), '', $parts[1] ) );
						}
						continue;
					}
					// Explode them out
					list( $name, $content ) = explode( ':', trim( $header ), 2 );

					// Cleanup crew
					$name    = trim( $name    );
					$content = trim( $content );

					switch ( strtolower( $name ) ) {
						// Mainly for legacy -- process a From: header if it's there
						case 'from':
							if ( strpos($content, '<' ) !== false ) {
								// So... making my life hard again?
								$from_name = substr( $content, 0, strpos( $content, '<' ) - 1 );
								$from_name = str_replace( '"', '', $from_name );
								$from_name = trim( $from_name );

								$from_email = substr( $content, strpos( $content, '<' ) + 1 );
								$from_email = str_replace( '>', '', $from_email );
								$from_email = trim( $from_email );
							} else {
								$from_email = trim( $content );
							}
							break;
						default:
							// Add it to our grand headers array
							$headers[trim( $name )] = trim( $content );
							break;
					}
				}
			}
		}

		// From email and name
		// If we don't have a name from the input headers
		if ( !isset( $from_name ) )
			$from_name = $email->get_from_name();

		// If we don't have an email from the input headers
		if ( !isset( $from_email ) ) {
			$from_email = $email->get_from_address();
		}

		// Set destination addresses
		if ( ! is_array( $to ) ){
			$to = explode( ',', $to );
		}

		$recipients = array();

		foreach ( (array) $to as $recipient ) {
			try {
				// Break $recipient into name and address parts if in the format "Foo <bar@baz.com>"
				$recipient_name = '';
				if( preg_match( '/(.*)<(.+)>/', $recipient, $matches ) ) {
					if ( count( $matches ) == 3 ) {
						$recipient_name = $matches[1];
						$recipient = $matches[2];
					}
				}
				$recipients[] = array(
					'email' => $recipient,
					'name' 	=> $recipient_name,
					'type' 	=> 'to'
				);
			}
			catch ( phpmailerException $e ) {
				continue;
			}
		}

		$files_to_attach = array();

		if( ! empty( $attachments ) ){
			foreach ( $attachments as $attachment ) {
				try {
					$new_attachment = yith_waitlist_get_attachment_struct( $attachment );

					if( $new_attachment == false ){
						continue;
					}

					$files_to_attach[] = $new_attachment;
				} catch ( Exception $e ) {
					continue;
				}
			}
		}

		try{
			$mandrill = new Mandrill( $api_key );
			$message = apply_filters( 'yith_waitlist_mandrill_send_mail_message', array(
				'html' => apply_filters( 'woocommerce_mail_content', $email->style_inline( $message ) ),
				'subject' => $subject,
				'from_email' => apply_filters( 'wp_mail_from', $from_email ),
				'from_name' => apply_filters( 'wp_mail_from_name', $from_name ),
				'to' => $recipients,
				'headers' => $headers,
				'attachments' => $files_to_attach
			) );

			$async = apply_filters( 'yith_waitlist_mandrill_send_mail_async', false );
			$ip_pool = apply_filters( 'yith_waitlist_mandrill_send_mail_ip_pool', null );
			$send_at = apply_filters( 'yith_waitlist_mandrill_send_mail_send_at', null );

			$results = $mandrill->messages->send( $message, $async, $ip_pool, $send_at );
			$return = true;

			if( ! empty( $results ) ){
				foreach( $results as $result ){
					if( ! isset( $result['status'] ) || in_array( $result['status'], array( 'rejected', 'invalid' ) ) ){
						$return = false;
					}
				}
			}

			return $return;
		}
		catch( Mandrill_Error $e ) {
			return false;
		}
	}
}

if( ! function_exists( 'yith_waitlist_get_attachment_struct' ) ) {
	/**
	 * Using file path, build an attachment struct, to use in Mandrill send request
	 *
	 * @param $path string File absolute path
	 *
	 * @static
	 * @throws Exception When some error occurs with file handling
	 * @return bool|array
	 * [
	 *     type => mime type of the file
	 *     name => file name with extension
	 *     content => file complete content, divided in chunks
	 * ]
	 * @since  1.0.0
	 */
	function yith_waitlist_get_attachment_struct( $path ) {

		$struct = array();

		try {
			if (!@is_file($path)) throw new Exception($path . ' is not a valid file.');

			$filename = basename($path);

			$file_buffer = file_get_contents($path);
			$file_buffer = chunk_split(base64_encode($file_buffer), 76, "\n");

			$mime_type = '';
			if (function_exists('finfo_open') && function_exists('finfo_file')) {
				$finfo = finfo_open(FILEINFO_MIME_TYPE);
				$mime_type = finfo_file($finfo, $path);
			} elseif (function_exists('mime_content_type')) {
				$mime_type = mime_content_type($path);
			}

			if (!empty($mime_type)) {
				$struct['type'] = $mime_type;
			}

			$struct['name'] = $filename;
			$struct['content'] = $file_buffer;

		} catch (Exception $e) {
			return false;
		}

		return $struct;
	}
}

if( ! function_exists( 'yith_waitlist_textarea_editor_html' ) ) {
	/**
	 * Print textarea editor html for email options
	 *
	 * @access public
	 * @since 1.0.0
	 * @param string $key
	 * @param array $data
	 * @param object $email
	 * @return string
	 * @author Francesco Licandro
	 */
	function yith_waitlist_textarea_editor_html( $key, $data, $email ){

		$field  = $email->get_field_key( $key );

		$defaults = array(
			'title'             => '',
			'disabled'          => false,
			'class'             => '',
			'css'               => '',
			'placeholder'       => '',
			'type'              => 'text',
			'desc_tip'          => false,
			'description'       => '',
			'custom_attributes' => array()
		);

		$data = wp_parse_args( $data, $defaults );

		$editor_args = array(
			'wpautop'       => true, // use wpautop?
			'media_buttons' => true, // show insert/upload button(s)
			'textarea_name' => esc_attr( $field ), // set the textarea name to something different, square brackets [] can be used here
			'textarea_rows' => 20, // rows="..."
			'tabindex'      => '',
			'editor_css'    => '', // intended for extra styles for both visual and HTML editors buttons, needs to include the <style> tags, can use "scoped".
			'editor_class'  => '', // add extra class(es) to the editor textarea
			'teeny'         => false, // output the minimal editor config used in Press This
			'dfw'           => false, // replace the default fullscreen with DFW (needs specific DOM elements and css)
			'tinymce'       => true, // load TinyMCE, can be used to pass settings directly to TinyMCE using an array()
			'quicktags'     => true // load Quicktags, can be used to pass settings directly to Quicktags using an array()
		);

		ob_start();
		?>

		<tr valign="top">
			<th scope="row" class="select_categories">
				<label for="<?php echo esc_attr( $field ); ?>"><?php echo wp_kses_post( $data['title'] );  ?></label>
				<?php echo $email->get_tooltip_html( $data ); ?>
			</th>
			<td class="forminp">
				<fieldset>
					<div id="<?php echo esc_attr( $field ); ?>-container">
						<div class="editor"><?php wp_editor( $email->get_option( $key ), esc_attr( $field ), $editor_args ); ?></div>
						<?php echo $email->get_description_html( $data ); ?>
					</div>
				</fieldset>
			</td>
		</tr>

		<?php

		return ob_get_clean();
	}
}

if( ! function_exists( 'yith_waitlist_is_wc26' ) ) {
	/**
	 * Check if WooCommerce version is 2.6
	 *
	 * @author Francesco Licandro
	 */
	function yith_waitlist_is_wc26() {
		return version_compare(WC()->version, '2.6', '>=');
	}
}

if( ! function_exists( 'yith_waitlist_get_custom_style' ) ) {
	/**
	 * Get custom style from panel options
	 *
	 * @since 1.1.3
	 * @author Francesco Licandro
	 * @return string
	 */
	function yith_waitlist_get_custom_style(){

		// get size font
		$size = get_option( 'yith-wcwtl-general-font-size' );
		$size = ( $size < 1 || $size > 99 ) ? 15 : intval($size);

		$add_background 	= get_option( 'yith-wcwtl-button-add-background' );
		$add_color			= get_option( 'yith-wcwtl-button-add-text-color' );
		$add_background_h 	= get_option( 'yith-wcwtl-button-add-background-hover' );
		$add_color_h 		= get_option( 'yith-wcwtl-button-add-text-color-hover' );
		$leave_background   = get_option( 'yith-wcwtl-button-leave-background' );
		$leave_color   		= get_option( 'yith-wcwtl-button-leave-text-color' );
		$leave_background_h = get_option( 'yith-wcwtl-button-leave-background-hover' );
		$leave_color_h   	= get_option( 'yith-wcwtl-button-leave-text-color-hover' );
		$font_color			= get_option( 'yith-wcwtl-general-font-color' );

		$css = "#yith-wcwtl-output .button.alt{background:{$add_background};color:{$add_color};}
			#yith-wcwtl-output .button.alt:hover{background:{$add_background_h};color:{$add_color_h};}
			#yith-wcwtl-output .button.button-leave.alt{background:{$leave_background};color:{$leave_color};}
			#yith-wcwtl-output .button.button-leave.alt:hover{background:{$leave_background_h};color:{$leave_color_h};}
			#yith-wcwtl-output p, #yith-wcwtl-output label{font-size:{$size}px;color:{$font_color};}";

		return apply_filters( 'yith_waitlist_custom_style', $css );
	}
}

<?php
if ( ! defined( 'YITH_WCWTL' ) ) {
	exit; // Exit if accessed directly
}

/**
 * Displays the exclusions table in YITH_WCWTL plugin admin tab
 *
 * @class   YITH_WCWTL_WaitlistData_Table
 * @package YITH Woocommerce Waiting List
 * @since   1.0.0
 * @author  Yithemes
 *
 */
if( ! class_exists( 'YITH_WCWTL_WaitlistData_Table' ) ) {

	class YITH_WCWTL_WaitlistData_Table {

		/**
		 * Single instance of the class
		 *
		 * @var \YITH_WCWTL_Exclusions_Table
		 * @since 1.0.0
		 */
		protected static $instance;

		/**
		 * Returns single instance of the class
		 *
		 * @return \YITH_WCWTL_Exclusions_Table
		 * @since 1.0.0
		 */
		public static function get_instance(){
			if( is_null( self::$instance ) ){
				self::$instance = new self();
			}

			return self::$instance;
		}

		/**
		 * Constructor
		 *
		 * @access public
		 * @since 1.0.0
		 */
		public function __construct() {

			add_action( 'admin_init', array( $this, 'table_actions' ) );
		}

		/**
		 * Outputs the waitlist data table template
		 *
		 * @since   1.0.0
		 * @author  Francesco Licandro <francesco.licandro@yithemes.com>
		 * @return  string
		 */
		public function prepare_table() {

			if ( ! empty( $_GET['view'] ) && 'users' == $_GET['view'] ) {
				$table = $this->users_table();
			} else {
				$table = $this->waitlists_table();
			}

			return $table;
		}


		public function table_actions() {

			$page    = isset( $_GET['page'] ) ? $_GET['page'] : '';
			$tab     = isset( $_GET['tab'] ) ? $_GET['tab'] : '';
			$action  = isset( $_GET['action'] ) ? $_GET['action'] : '';
			// if action is empty check in POST
			if( $action == '' ) {
				$action  = isset( $_POST['action'] ) ? $_POST['action'] : '';
			}

			if( $page != 'yith_wcwtl_panel' || $tab != 'waitlistdata' || $action == '' ) {
				return;
			}

			// remove waitlists
			if ( 'delete' ==  $action ) {

				$ids = isset( $_GET['id'] ) ? $_GET['id'] : array();
				if ( ! is_array( $ids ) ) {
					$ids = explode( ',', $ids );
				}
				// delete post meta
				foreach( $ids as $id ) {
                    yith_waitlist_empty( $id );
				}
				// add message
				if( empty( $ids ) ) {
					$mess = 1;
				}
				else {
					$mess = 2;
				}
			}
			//remove users from waitlists
			elseif ( 'remove_user' == $action ) {

				if ( ! isset( $_GET['user_email'] ) && ! isset( $_GET['id'] ) ) {
					return;
				}
				$user_emails = is_array( $_GET['user_email'] ) ? $_GET['user_email'] : array( $_GET['user_email'] );
				foreach ( $user_emails as $user_email ) {
					yith_waitlist_unregister_user( $user_email, $_GET['id'] );
				}

				$mess = 8;
				//$messages[] = sprintf( _n( '%s user removed successfully', '%s users removed successfully', count( $_GET['id'] ), 'yith-wcwtl' ), count( $_GET['id'] ) );
			}
			// Add user to current waitlist
			elseif ( ! empty( $_POST['nonce'] ) && wp_verify_nonce( $_POST['nonce'], 'wcwtl_add_users' ) && 'insert' == $action ) {

				if ( empty( $_POST['users_id'] ) ) {
					$mess = 3;
				} else {

					$users = explode( ',', $_POST['users_id'] );

					foreach( $users as $user ) {
						$user_data = get_userdata( $user );

						yith_waitlist_register_user( $user_data->user_email, $_GET['id'] );
					}

					$mess = 7;
				}
			}
			// Send mail
			else if ( 'send_mail' == $action ) {

				if( get_option( 'yith-wcwtl-enable' ) !== 'yes' ) {
					$mess = 4;
				}
				else {

					$post_id = intval( $_GET['id'] );

					$users = ( isset( $_GET['user'] ) ) ? $_GET['user'] : yith_waitlist_get_registered_users( $_GET['id'] );

					do_action( 'send_yith_waitlist_mail_instock', $users, $post_id );

					$res = apply_filters( 'yith_wcwtl_mail_instock_send_response', false );

					if ( $res ) {
						$mess = 5;
						if( get_option( 'yith-wcwtl-keep-after-email' ) != 'yes' ){
							if( isset( $_GET['user'] ) ){
								yith_waitlist_unregister_user( $_GET['user'], $post_id );
							}
							else {
								yith_waitlist_empty( $post_id );
							}
						}
					} else {
						$mess = 6;
					}
				}
			}

			$list_query_args = array(
				'page'          => $page,
				'tab'           => $tab,
			);
			// Set users table
			if( ( isset( $_GET['view'] ) || isset( $_POST['view'] ) ) && isset( $_GET['id'] ) ) {
				$view = isset( $_GET['view'] ) ? $_GET['view'] : ( isset( $_POST['view'] ) ? $_POST['view'] : '' );
				$list_query_args['view'] = $view;
				$list_query_args['id']   = $_GET['id'];
			}
			// Add message
			if( isset( $mess ) && $mess != '' ) {
				$list_query_args['wcwtl_mess'] = $mess;

				if( $mess == 8 ) {
					$list_query_args['wcwtl_count'] = count( $_GET['id'] );
				}
			}

			$list_url = add_query_arg( $list_query_args, admin_url( 'admin.php' ) );

			wp_redirect( $list_url );
			exit;

		}

		public function waitlists_table(){

			global $wpdb;

			$table = new YITH_WCWTL_Custom_Table( array(
				'singular' => __( 'waiting list', 'yith-woocommerce-waiting-list' ),
				'plural'   => __( 'waiting lists', 'yith-woocommerce-waiting-list' )
			) );

			$table->options = array(
				'select_table'     => $wpdb->prefix . 'postmeta a',
				'select_columns'   => array(
					'a.post_id'
				),
				'select_where'     => apply_filters( 'yith-wcwtl-waitlistdata-where', 'a.meta_key = "' . YITH_WCWTL_META . '" AND a.meta_value NOT LIKE "a:0:{}"' ),
				'select_group'     => 'a.post_id',
				'select_order'     => 'a.post_id',
				'select_limit'     => 10,
				'count_table'      => '( SELECT COUNT(*) FROM ' . $wpdb->prefix . 'postmeta a WHERE a.meta_key = "' . YITH_WCWTL_META . '" AND a.meta_value NOT LIKE "a:0:{}" GROUP BY a.post_id ) AS count_table',
				'key_column'       => 'post_id',
				'view_columns'     => array(
					'cb'        => '<input type="checkbox" />',
					'product'   => __( 'Product', 'yith-woocommerce-waiting-list' ),
					'variation' => __( 'Variation', 'yith-woocommerce-waiting-list' ),
					'thumb'     => __( 'Thumbnail', 'yith-woocommerce-waiting-list' ),
					'status'    => __( 'Stock Status', 'yith-woocommerce-waiting-list' ),
					'users'     => __( 'Users in the Waiting list', 'yith-woocommerce-waiting-list' ),
					'actions'    => __( 'Actions', 'yith-woocommerce-waiting-list' )
				),
				'hidden_columns'   => array(),
				'sortable_columns' => array(
					'product' => array( 'post_title', true ),
					'status'  => array( 'post_status', true )
				),
				'custom_columns'   => array(
					'column_product' => function ( $item, $me, $product ) {

						$product_query_args = array(
							'post'   => isset( $product->variation_id ) ? $product->parent->id : $product->id,
							'action' => 'edit'
						);
						$product_url        = add_query_arg( $product_query_args, admin_url( 'post.php' ) );

						return sprintf( '<strong><a class="tips" target="_blank" href="%s" data-tip="%s">%s</a></strong>', esc_url( $product_url ), __( 'Edit product', 'yith-woocommerce-waiting-list' ), $product->get_title() );
					},
					'column_variation'  => function( $item, $me, $product ) {

						if( $product->product_type == 'variation' ) {

							$variations = $product->get_variation_attributes();

							$html = '<ul>';

							foreach( $variations as $key => $value ) {
								$key = ucfirst( str_replace( 'attribute_pa_' , '', $key ) );
								$html .= '<li>' . $key . ': ' . $value . '</li>';
							}

							$html .= '</ul>';

							echo $html;
						}
						else {
							echo '-';
						}

					},
					'column_thumb'   => function ( $item, $me, $product ) {

						return get_the_post_thumbnail( $item['post_id'], 'shop_thumbnail' );
					},
					'column_status'  => function ( $item, $me, $product ) {

						$status = $product->get_availability();

						return '<span class="' . $status['class'] . '">' . $status['availability'] . '</span>';
					},
					'column_users'   => function ( $item, $me, $product ) {

						$view_query_args = array(
							'page'   => $_GET['page'],
							'tab'    => $_GET['tab'],
							'view'   => 'users',
							'id'     => $item['post_id']
						);
						$view_url        = add_query_arg( $view_query_args, admin_url( 'admin.php' ) );

						return '<a href="' . esc_url( $view_url ) . '">' . yith_count_users_on_waitlist( $item['post_id'] ) . '</a>';

					},
					'column_actions'  => function ( $item, $me, $product ) {

						$delete_query_args = array(
							'page'   => $_GET['page'],
							'tab'    => $_GET['tab'],
							'action' => 'delete',
							'id'     => $item['post_id']
						);
						$delete_url        = add_query_arg( $delete_query_args, admin_url( 'admin.php' ) );
						$actions_button    = '<a href="' . esc_url( $delete_url ) . '" class="button">' . __( 'Delete Waiting list', 'yith-woocommerce-waiting-list' ) . '</a>';

						$view_query_args = array(
							'page'   => $_GET['page'],
							'tab'    => $_GET['tab'],
							'view'   => 'users',
							'id'     => $item['post_id']
						);
						$view_url        = add_query_arg( $view_query_args, admin_url( 'admin.php' ) );
						$actions_button .= '<a href="' . esc_url( $view_url ) . '" class="button">' . __( 'View Users', 'yith-woocommerce-waiting-list' ) . '</a>';

						$mail_query_args = array(
							'page'   => $_GET['page'],
							'tab'    => $_GET['tab'],
							'action' => 'send_mail',
							'id'     => $item['post_id']
						);
						$mail_url        = add_query_arg( $mail_query_args, admin_url( 'admin.php' ) );
						$actions_button .= '<a href="' . esc_url( $mail_url ) . '" class="send_mail button">' . __( 'Send email', 'yith-woocommerce-waiting-list' ) . '</a>';

						return $actions_button;
					}
				),
				'bulk_actions'     => array(
					'actions'   => array(
						'delete' => __( 'Delete waiting list', 'yith-woocommerce-waiting-list' )
					)
				),
			);

			return $table;
		}

		public function users_table() {

			global $wpdb;

			$table = new YITH_WCWTL_Custom_Table( array(
				'singular' => __( 'user', 'yith-woocommerce-waiting-list' ),
				'plural'   => __( 'users', 'yith-woocommerce-waiting-list' )
			) );

			$table->options = array(
				'select_table'     => $wpdb->prefix . 'postmeta a',
				'select_columns'   => array(
					'a.meta_value'
				),
				'select_where'     => 'a.meta_key = "' . YITH_WCWTL_META . '" AND a.post_id = "' . $_GET['id'] . '"',
				'select_limit'     => 10,
				'key_column'       => 'meta_value',
				'unserialized'     => true,
				'view_columns'     => array(
					'cb'       => '<input type="checkbox" />',
					'user'     => __( 'email', 'yith-woocommerce-waiting-list' ),
					'customer' => __( 'Is Customer', 'yith-woocommerce-waiting-list' ),
					'actions'   => __( 'Actions', 'yith-woocommerce-waiting-list' )
				),
				'hidden_columns'   => array(),
				'sortable_columns' => array(),
				'custom_columns'   => array(
					'column_user'     => function ( $item, $me, $product ) {

						return $item['meta_value'];
					},
					'column_customer' => function ( $item, $me, $product ) {

						$user = get_user_by( 'email', $item['meta_value'] );

						if ( $user ) {
							$class = 'show';
							$tip   = __( 'Yes', 'yith-woocommerce-waiting-list' );
						} else {
							$class = 'hide';
							$tip   = __( 'No', 'yith-woocommerce-waiting-list' );
						}

						return sprintf( '<mark class="%s tips" data-tip="%s">%s</mark>', $class, $tip, $tip );
					},
					'column_actions'   => function ( $item, $me, $product ) {

						$delete_query_args = array(
							'page'   => $_GET['page'],
							'tab'    => $_GET['tab'],
							'view'   => 'users',
							'action' => 'remove_user',
							'id'     => $_GET['id'],
							'user_email'   => $item['meta_value']
						);
						$delete_url        = add_query_arg( $delete_query_args, admin_url( 'admin.php' ) );
						$actions_button    = '<a href="' . esc_url( $delete_url ) . '" class="button">' . __( 'Remove User', 'yith-woocommerce-waiting-list' ) . '</a>';

						$mail_query_args = array(
							'page'   => $_GET['page'],
							'tab'    => $_GET['tab'],
							'view'   => 'users',
							'action' => 'send_mail',
							'id'     => $_GET['id'],
							'user'   => $item['meta_value']
						);
						$mail_url        = add_query_arg( $mail_query_args, admin_url( 'admin.php' ) );
						$actions_button .= '<a href="' . esc_url( $mail_url ) . '" class="send_mail button">' . __( 'Send Email', 'yith-woocommerce-waiting-list' ) . '</a>';

						return $actions_button;
					}
				),
				'bulk_actions'     => array(
					'actions'   => array(
						'remove_user' => __( 'Remove User', 'yith-woocommerce-waiting-list' )
					)
				),
			);

			return $table;
		}
	}
}
/**
 * Unique access to instance of YITH_WCWTL_Waitlistdata_Table class
 *
 * @return \YITH_WCWTL_Waitlistdata_Table
 * @since 1.0.0
 */
function YITH_WCWTL_Waitlistdata_Table(){
	return YITH_WCWTL_Waitlistdata_Table::get_instance();
}
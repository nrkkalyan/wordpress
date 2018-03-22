<?php
if ( ! defined( 'YITH_WCWTL' ) ) {
	exit; // Exit if accessed directly
}

if( ! class_exists( 'YITH_WCWTL_Exclusions_Table' ) ) {
	/**
	 * Exclusion table
	 *
	 * @class   YITH_WCWTL_Exclusions_Table
	 * @package YITH Woocommerce Waiting List
	 * @since   1.0.0
	 * @author  Yithemes
	 *
	 */
	class YITH_WCWTL_Exclusions_Table {

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
		 * Outputs the exclusions table template with insert form in plugin options panel
		 *
		 * @since   1.0.0
		 * @author  Francesco Licandro <francesco.licandro@yithemes.com>
		 * @return  string
		 */
		public function prepare_table() {

			global $wpdb;

			$table = new YITH_WCWTL_Custom_Table( array(
				'singular' => __( 'product', 'yith-woocommerce-waiting-list' ),
				'plural'   => __( 'products', 'yith-woocommerce-waiting-list' )
			) );

			$table->options = array(
				'select_table'     => $wpdb->prefix . 'postmeta a',
				'select_columns'   => array(
					'a.post_id'
				),
				'select_where'     => 'a.meta_key = "' . YITH_WCWTL_META_EXCLUDE . '" AND a.meta_value = "1"',
				'select_group'     => 'a.post_id',
				'select_order'     => 'a.post_id',
				'select_limit'     => 10,
				'count_table'      => '( SELECT COUNT(*) FROM ' . $wpdb->prefix . 'postmeta a WHERE a.meta_key = "' . YITH_WCWTL_META_EXCLUDE . '" AND a.meta_value="1" GROUP BY a.post_id ) AS count_table',
				'key_column'       => 'post_id',
				'view_columns'     => array(
					'cb'      => '<input type="checkbox" />',
					'product'   => __( 'Product', 'yith-woocommerce-waiting-list' ),
					'variation' => __( 'Variation', 'yith-woocommerce-waiting-list' ),
					'thumb'     => __( 'Thumbnail', 'yith-woocommerce-waiting-list' ),
					'actions'    => __( 'Action', 'yith-woocommerce-waiting-list' )
				),
				'hidden_columns'   => array(),
				'sortable_columns' => array(
					'product' => array( 'post_title', true )
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
					'column_variation' => function( $item, $me, $product ) {

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
					'column_actions' => function( $item, $me, $product ) {

						$delete_query_args = array(
							'page'   => $_GET['page'],
							'tab'    => $_GET['tab'],
							'action' => 'delete',
							'id'     => $item['post_id']
						);
						$delete_url        = add_query_arg( $delete_query_args, admin_url( 'admin.php' ) );

						return '<a href="' . esc_url( $delete_url ) . '" class="button">' . __( 'Remove', 'yith-woocommerce-waiting-list' ) . '</a>';

					}
				),
				'bulk_actions'     => array(
					'actions'   => array(
						'delete' => __( 'Remove from list', 'yith-woocommerce-waiting-list' )
					)
				),
			);

			return $table;
		}

		/**
		 * Exclusion table action
		 *
		 * @access public
		 * @since 1.0.0
		 * @author Francesco Licandro <francesco.licandro@yithemes.com>
		 */
		public function table_actions(){

			$page    = isset( $_GET['page'] ) ? $_GET['page'] : '';
			$tab     = isset( $_GET['tab'] ) ? $_GET['tab'] : '';
			$action  = isset( $_GET['action'] ) ? $_GET['action'] : '';
			// if action is empty check in POST
			if( $action == '' ) {
				$action  = isset( $_POST['action'] ) ? $_POST['action'] : '';
			}

			if( $page != 'yith_wcwtl_panel' || $tab != 'exclusions' || $action == '' ) {
				return;
			}

			$mess = '';

			// Delete product/products from exclude list
			if ( 'delete' === $action && isset( $_GET['id'] ) ) {

				$ids = isset( $_GET['id'] ) ? $_GET['id'] : array();
				if ( ! is_array( $ids ) ) {
					$ids = explode( ',', $ids );
				}
				// delete post meta
				foreach( $ids as $id ) {
					delete_post_meta( $id, '_yith_wcwtl_exclude_list' );
				}
				// add message
				if( empty( $ids ) ) {
					$mess = 1;
				}
				else {
					$mess = 2;
				}

			}
			// Add product to exclude list
			elseif ( 'insert' === $action && ! empty( $_POST['nonce'] ) && wp_verify_nonce( $_POST['nonce'], 'wcwtl_add_exclusions' ) ) {

				$products_id = explode( ',', $_POST['products'] );
				// update post meta for each product
				foreach ( $products_id as $product_id ) {
					update_post_meta( $product_id, '_yith_wcwtl_exclude_list', true );
				}

				// add message
				if( empty( $product_id ) ) {
					$mess = 4;
				}
				else {
					$mess = 3;
				}
			}

			$list_query_args = array(
				'page'          => $page,
				'tab'           => $tab,
			);
			// Add message
			if( isset( $mess ) ) {
				$list_query_args['wcwtl_mess'] = $mess;
			}

			$list_url = add_query_arg( $list_query_args, admin_url( 'admin.php' ) );

			wp_redirect( $list_url );
			exit;
		}
	}
}
/**
 * Unique access to instance of YITH_WCWTL_Exclusions_Table class
 *
 * @return \YITH_WCWTL_Exclusions_Table
 * @since 1.0.0
 */
function YITH_WCWTL_Exclusions_Table(){
	return YITH_WCWTL_Exclusions_Table::get_instance();
}
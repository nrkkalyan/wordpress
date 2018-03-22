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

/**
 * Displays the bulk operations in YWPC plugin admin tab
 *
 * @class   YWPC_Bulk_Operations
 * @package Yithemes
 * @since   1.0.0
 * @author  Your Inspiration Themes
 *
 */
class YWPC_Bulk_Operations {

	/**
	 * Outputs the bulk operations template in plugin options panel
	 *
	 * @since   1.0.0
	 * @author  Alberto Ruggiero
	 * @return  string
	 */
	public static function output() {

		$sections        = array(
			'selection' => __( 'Assign to a selection of products', 'yith-woocommerce-product-countdown' ),
			'category'  => __( 'Assign to a category', 'yith-woocommerce-product-countdown' ),
			'recent'    => __( 'Assign to all recent products', 'yith-woocommerce-product-countdown' ),
			'onsale'    => __( 'Assign to all on sale products', 'yith-woocommerce-product-countdown' ),
			'featured'  => __( 'Assign to all featured products', 'yith-woocommerce-product-countdown' ),
		);
		$array_keys      = array_keys( $sections );
		$current_section = isset( $_GET['section'] ) ? $_GET['section'] : 'selection';
		$nonce           = basename( __FILE__ );
		$products_list   = array();

		if ( ! empty( $_POST['nonce'] ) && wp_verify_nonce( $_POST['nonce'], $nonce ) ) {

			$args = array();

			switch ( $current_section ) {
				case 'recent':
					$args = array(
						'post_type'      => 'product',
						'post_status'    => 'publish',
						'posts_per_page' => - 1
					);
					break;

				case 'onsale':

					$args = array(
						'post_type'      => 'product',
						'post_status'    => 'publish',
						'posts_per_page' => - 1,
						'meta_query'     => array(
							'relation' => 'OR',
							array( // Simple products type
							       'key'     => '_sale_price',
							       'value'   => 0,
							       'compare' => '>',
							       'type'    => 'numeric'
							),
							array( // Variable products type
							       'key'     => '_min_variation_sale_price',
							       'value'   => 0,
							       'compare' => '>',
							       'type'    => 'numeric'
							)
						)
					);

					break;

				case 'featured':

					$args = array(
						'post_type'      => 'product',
						'post_status'    => 'publish',
						'posts_per_page' => - 1,
						'meta_key'       => '_featured',
						'meta_value'     => 'yes'
					);

					break;

				case 'category':

					$category = $_POST['ywpc_categories_search'];

					if ( ! $category ) {
						$notice = __( 'You must select a category', 'yith-woocommerce-product-countdown' );
						continue;
					}

					$args = array(
						'post_type'      => 'product',
						'post_status'    => 'publish',
						'posts_per_page' => - 1,
						'tax_query'      => array(
							array(
								'taxonomy' => 'product_cat',
								'field'    => 'slug',
								'terms'    => $category
							),
						)
					);
					break;

				default:

					$products = $_POST['ywpc_product_search'];

					if ( ! $products ) {
						$notice = __( 'You must select at least one product', 'yith-woocommerce-product-countdown' );
						continue;
					}

					$products_list = explode( ',', $products );

			}

			if ( $current_section != 'selection' ) {

				wp_reset_query();

				if ( $current_section == 'recent' ) {
					add_filter( 'posts_where', array( __CLASS__, 'bulk_filter_where' ) );
				}

				$query = new WP_Query( $args );

				if ( $current_section == 'recent' ) {
					remove_filter( 'posts_where', array( __CLASS__, 'bulk_filter_where' ) );
				}

				if ( $query->have_posts() ) {

					while ( $query->have_posts() ) {

						$query->the_post();
						$products_list[ $query->post->ID ] = $query->post->ID;

					}

				}

				wp_reset_postdata();

			}

			$ywpc_enabled        = isset( $_POST['_ywpc_enabled'] ) ? 'yes' : 'no';
			$override_variations = isset( $_POST['_ywpc_variations_global_countdown'] ) ? 'yes' : 'no';
			$start_sale          = isset( $_POST['_ywpc_sale_price_dates_from'] ) ? strtotime( wc_clean( $_POST['_ywpc_sale_price_dates_from'] ) ) : '';
			$end_sale            = isset( $_POST['_ywpc_sale_price_dates_to'] ) ? strtotime( wc_clean( $_POST['_ywpc_sale_price_dates_to'] ) ) : '';
			$discount_qty        = isset( $_POST['_ywpc_discount_qty'] ) ? $_POST['_ywpc_discount_qty'] : 0;
			$sold_qty            = isset( $_POST['_ywpc_sold_qty'] ) ? $_POST['_ywpc_sold_qty'] : 0;

			foreach ( $products_list as $product_id ) {

				$product = wc_get_product( $product_id );

				if ( $product->post->post_type != 'product' ) {
					continue;
				}

				update_post_meta( $product_id, '_ywpc_enabled', $ywpc_enabled );

				if ( $product->product_type != 'variable' || ( $product->product_type == 'variable' && $override_variations == 'yes' ) ) {

					if ( $product->product_type == 'variable' ) {

						update_post_meta( $product_id, '_ywpc_variations_global_countdown', $override_variations );

					}

					update_post_meta( $product_id, '_ywpc_sale_price_dates_from', $start_sale );
					update_post_meta( $product_id, '_ywpc_sale_price_dates_to', $end_sale );

					if ( $end_sale && ! $start_sale ) {
						update_post_meta( $product_id, '_ywpc_sale_price_dates_from', strtotime( 'NOW', current_time( 'timestamp' ) ) );
					}

					update_post_meta( $product_id, '_ywpc_sold_qty', $sold_qty );
					update_post_meta( $product_id, '_ywpc_discount_qty', $discount_qty );

				} else {


					$product_variables = $product->get_available_variations();

					if ( count( array_filter( $product_variables ) ) > 0 ) {

						$product_variables = array_filter( $product_variables );

						foreach ( $product_variables as $product_variable ) {

							update_post_meta( $product_variable['variation_id'], '_ywpc_sale_price_dates_from', $start_sale );
							update_post_meta( $product_variable['variation_id'], '_ywpc_sale_price_dates_to', $end_sale );

							if ( $end_sale && ! $start_sale ) {
								update_post_meta( $product_variable['variation_id'], '_ywpc_sale_price_dates_from', strtotime( 'NOW', current_time( 'timestamp' ) ) );
							}

							update_post_meta( $product_variable['variation_id'], '_ywpc_sold_qty', $sold_qty );
							update_post_meta( $product_variable['variation_id'], '_ywpc_discount_qty', $discount_qty );

						}

					}

				}

				$message = sprintf( _n( '%s product updated successfully', '%s products updated successfully', count( $products_list ), 'yith-woocommerce-product-countdown' ), count( $products_list ) );

			}

		}

		?>
		<ul class="subsubsub">
			<?php

			foreach ( $sections as $id => $label ) :

				$query_args = array(
					'page'    => $_GET['page'],
					'tab'     => $_GET['tab'],
					'section' => $id
				);
				$section_url = esc_url( add_query_arg( $query_args, admin_url( 'admin.php' ) ) );
				?>
				<li>
					<a href="<?php echo $section_url; ?>" class="<?php echo( $current_section == $id ? 'current' : '' ); ?>">
						<?php echo $label; ?>
					</a>
					<?php echo( end( $array_keys ) == $id ? '' : '|' ); ?>
				</li>
				<?php
			endforeach;
			?>
		</ul>
		<br class="clear" />
		<?php if ( ! empty( $notice ) ) : ?>
			<div id="notice" class="error below-h2">
				<p>
					<?php echo $notice; ?>
				</p>
			</div>
		<?php endif; ?>
		<?php if ( ! empty( $message ) ) : ?>
			<div id="message" class="updated below-h2">
				<p>
					<?php echo $message; ?>
				</p>
			</div>
		<?php endif; ?>
		<form id="plugin-fw-wc" method="POST">
			<input type="hidden" name="nonce" value="<?php echo wp_create_nonce( $nonce ); ?>" />
			<table class="form-table">
				<tbody>
				<?php

				switch ( $current_section ) :
					case 'recent':
						?>
						<tr valign="top" class="titledesc">
							<th scope="row">
								<label for="ywpc_days_ago">
									<?php _e( 'Days passed', 'yith-woocommerce-product-countdown' ); ?>
								</label>
							</th>
							<td class="forminp forminp-sold-qty">
								<input type="number" class="short" name="ywpc_days_ago" id="ywpc_days_ago" value="1" placeholder="" step="any" min="1">
                        <span class="description">
                            <?php _e( 'The number of days that have passed.', 'yith-woocommerce-product-countdown' ); ?>
                        </span>
							</td>
						</tr>
						<?php
						break;

					case 'onsale':
					case 'featured':
						break;

					case 'category':
						?>
						<tr valign="top" class="titledesc">
							<th scope="row">
								<label for="ywpc_categories_search">
									<?php _e( 'Category to assign', 'yith-woocommerce-product-countdown' ); ?>
								</label>
							</th>
							<td class="forminp forminp-categories">
								<input type="hidden" style="width: 50%" class="ywpc-wc-category-search" id="ywpc_categories_search" name="ywpc_categories_search" data-placeholder="<?php _e( 'Search for a category&hellip;', 'yith-woocommerce-product-countdown' ) ?>" data-action="ywpc_json_search_product_categories" data-multiple="false" data-selected="" value="" />
							</td>
						</tr>
						<?php
						break;

					default:
						?>
						<tr valign="top" class="titledesc">
							<th scope="row">
								<label for="ywpc_product_search">
									<?php _e( 'Products to assign', 'yith-woocommerce-product-countdown' ); ?>
								</label>
							</th>
							<td class="forminp forminp-categories">
								<input type="hidden" style="width: 50%" class="ywpc-wc-product-search" id="ywpc_product_search" name="ywpc_product_search" data-placeholder="<?php _e( 'Search for a product&hellip;', 'yith-woocommerce-product-countdown' ) ?>" data-action="woocommerce_json_search_products" data-multiple="true" data-selected="" value="" />
							</td>
						</tr>
						<?php
				endswitch;
				?>
				<tr valign="top" class="titledesc">
					<th scope="row">
						<label for="_ywpc_enabled">
							<?php _e( 'Enable', 'yith-woocommerce-product-countdown' ); ?>
						</label>
					</th>
					<td class="forminp forminp-enable">
						<input id="_ywpc_enabled" name="_ywpc_enabled" type="checkbox" class="ywpc-enabled" checked="checked" />
                        <span class="description">
                            <?php _e( 'Enable YITH WooCommerce Product Countdown for selected products.', 'yith-woocommerce-product-countdown' ); ?>
                        </span>
					</td>
				</tr>
				<tr valign="top" class="titledesc">
					<th scope="row">
						<label for="_ywpc_variations_global_countdown">
							<?php _e( 'General Countdown', 'yith-woocommerce-product-countdown' ); ?>
						</label>
					</th>
					<td class="forminp forminp-enable">
						<input id="_ywpc_variations_global_countdown" name="_ywpc_variations_global_countdown" type="checkbox" class="" checked="checked" />
                        <span class="description">
                            <?php _e( 'Set a general countdown for all the variations rather than for each single variation', 'yith-woocommerce-product-countdown' ); ?>
                        </span>
					</td>
				</tr>
				<tr valign="top" class="titledesc">
					<th scope="row">
						<label for="_ywpc_sale_price_dates_from">
							<?php _e( 'Sale Dates', 'yith-woocommerce-product-countdown' ); ?>
						</label>
					</th>
					<td class="forminp forminp-dates">
						<input type="text" class="short" name="_ywpc_sale_price_dates_from" id="_ywpc_sale_price_dates_from" value="" placeholder="<?php _e( 'From&hellip;', 'yith-woocommerce-product-countdown' ) ?> YYYY-MM-DD" maxlength="10" pattern="[0-9]{4}-(0[1-9]|1[012])-(0[1-9]|1[0-9]|2[0-9]|3[01])" />
						<input type="text" class="short" name="_ywpc_sale_price_dates_to" id="_ywpc_sale_price_dates_to" value="" placeholder="<?php _e( 'To&hellip;', 'yith-woocommerce-product-countdown' ) ?>  YYYY-MM-DD" maxlength="10" pattern="[0-9]{4}-(0[1-9]|1[012])-(0[1-9]|1[0-9]|2[0-9]|3[01])" />
					</td>
				</tr>
				<tr valign="top" class="titledesc">
					<th scope="row">
						<label for="_ywpc_discount_qty">
							<?php _e( 'Discounted products', 'yith-woocommerce-product-countdown' ); ?>
						</label>
					</th>
					<td class="forminp forminp-discount-qty">
						<input type="number" class="short" name="_ywpc_discount_qty" id="_ywpc_discount_qty" value="" placeholder="" step="any" min="0">
                        <span class="description">
                            <?php _e( 'The number of discounted products.', 'yith-woocommerce-product-countdown' ); ?>
                        </span>
					</td>
				</tr>
				<tr valign="top" class="titledesc">
					<th scope="row">
						<label for="_ywpc_sold_qty">
							<?php _e( 'Already sold products', 'yith-woocommerce-product-countdown' ); ?>
						</label>
					</th>
					<td class="forminp forminp-sold-qty">
						<input type="number" class="short" name="_ywpc_sold_qty" id="_ywpc_sold_qty" value="" placeholder="" step="any" min="0">
                        <span class="description">
                            <?php _e( 'The number of already sold products.', 'yith-woocommerce-product-countdown' ); ?>
                        </span>
					</td>
				</tr>
				</tbody>
			</table>
			<input type="submit" value="<?php _e( 'Submit', 'yith-woocommerce-product-countdown' ); ?>" id="submit" class="button-primary" name="submit">

		</form>
		<?php
	}

	/**
	 * Get category name
	 *
	 * @since   1.0.0
	 *
	 * @param   $x
	 * @param   $taxonomy_types
	 *
	 * @return  string
	 * @author  Alberto Ruggiero
	 */
	public static function json_search_product_categories( $x = '', $taxonomy_types = array( 'product_cat' ) ) {

		global $wpdb;

		$term = (string) urldecode( stripslashes( strip_tags( $_GET['term'] ) ) );
		$term = "%" . $term . "%";

		$query_cat = $wpdb->prepare( "SELECT {$wpdb->terms}.term_id,{$wpdb->terms}.name, {$wpdb->terms}.slug
                                   FROM {$wpdb->terms} INNER JOIN {$wpdb->term_taxonomy} ON {$wpdb->terms}.term_id = {$wpdb->term_taxonomy}.term_id
                                   WHERE {$wpdb->term_taxonomy}.taxonomy IN (%s) AND {$wpdb->terms}.slug LIKE %s", implode( ",", $taxonomy_types ), $term );

		$product_categories = $wpdb->get_results( $query_cat );

		$to_json = array();

		foreach ( $product_categories as $product_category ) {

			$to_json[ $product_category->slug ] = "#" . $product_category->term_id . "-" . $product_category->name;

		}

		echo json_encode( $to_json );

		die();

	}

	/**
	 * Set custom where condition
	 *
	 * @since   1.0.0
	 *
	 * @param   $where
	 *
	 * @return  string
	 * @author  Alberto Ruggiero
	 */
	public static function bulk_filter_where( $where = '' ) {

		$days = isset( $_POST['ywpc_days_ago'] ) ? $_POST['ywpc_days_ago'] : '';

		$where .= " AND post_date > '" . date( 'Y-m-d', strtotime( '-' . $days . ' days' ) ) . "'";

		return $where;

	}
}
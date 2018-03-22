<?php
/**
 * My Waitlist
 *
 * Shows subscribed waitlist on the account page
 *
 * @author 		Yithemes
 * @package 	YITH WooCommerce Waiting List
 * @version     1.1.1
 */

if( ! defined( 'YITH_WCWTL' ) ) {
	exit; // Exit if accessed directly
}

$user_id = get_current_user_id();
$products = yith_get_user_wailists( $user_id );

echo '<h2 class="waitlist-title-section">' . apply_filters( 'yith_waitlist_my_account_my_waitlist_title', __( 'My Waiting List', 'yith-woocommerce-waiting-list' ) ) . '</h2>';

if( $products ) : ?>

	<table class="shop_table shop_table_responsive my_account_waitlist my_account_orders">

		<thead>
		<tr>
			<th class="waitlist-product"><span class="nobr"><?php _e( 'Product', 'yith-woocommerce-waiting-list' ); ?></span></th>
			<th class="waitlist-product-variation"><span class="nobr"><?php _e( 'Variation', 'yith-woocommerce-waiting-list' ); ?></span></th>
			<th class="waitlist-product-status"><span class="nobr"><?php _e( 'Stock Status', 'yith-woocommerce-waiting-list' ); ?></span></th>
			<th class="waitlist-actions">&nbsp;</th>
		</tr>
		</thead>

		<tbody><?php
		foreach ( $products as $product_id ) {

			$product = wc_get_product( $product_id );

			if( empty( $product ) ){
				continue;
			}

			?>
			<tr class="waitlist">
				<td class="waitlist-product">
					<?php if( $product->is_visible() ) : ?>
						<?php echo $product->get_image('shop_thumbnail' ); ?>
						<a href="<?php echo get_permalink( $product->id ) ?>">
							<?php echo $product->get_title(); ?>
						</a>
					<?php else : ?>
						<?php echo $product->get_image('shop_thumbnail' ); ?>
						<?php echo $product->get_title(); ?>
					<?php endif; ?>
				</td>
				<td class="waitlist-product-variation">
					<?php
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
					?>
				</td>
				<td class="waitlist-product-status">
					<?php
					$status = $product->get_availability();
					echo '<span class="' . $status['class'] .'">' . $status['availability']. '</span>';
					?>
				</td>
				<td class="waitlist-actions">
					<?php
					// set correct product id
					$id = $product->product_type == 'variation' ? $product->variation_id : $product->id;
					// set url
					$url = add_query_arg( YITH_WCWTL_META , $id );
					$url = wp_nonce_url( $url, 'action_waitlist' );
					$url = add_query_arg( YITH_WCWTL_META . '-action' , 'leave', $url );

					echo '<a href="' . esc_url( $url ) . '" class="button leave-waitlist">' . apply_filters( 'yith_waitlist_my_account_leave_label', __( 'Leave', 'yith-woocommerce-waiting-list' ) ) . '</a>';

					?>
				</td>
			</tr>
		<?php
		}
		?>
		</tbody>

	</table>

<?php else:  ?>
	<p><?php echo apply_filters( 'yith_waitlist_my_account_my_waitlist_empty', __( 'You haven\'t subscribed any waiting list.', 'yith-woocommerce-waiting-list' ) ); ?></p>
<?php endif;  ?>
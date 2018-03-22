<?php
/**
 * Waitlist form on single product page
 *
 * @author 		Yithemes
 * @package 	YITH WooCommerce Waiting List
 * @version     1.1.1
 */

if( ! defined( 'YITH_WCWTL' ) ) {
	exit; // Exit if accessed directly
}

$user = wp_get_current_user();

$product_type   = $product->product_type;
$product_id     = ( $product_type == 'simple' ) ? $product->id : $product->variation_id;
$waitlist       = yith_waitlist_get( $product_id );

// set query
$url = ( $product->product_type == 'simple' ) ? get_permalink( $product->id ) : get_permalink( $product->parent->id );
$url = add_query_arg( YITH_WCWTL_META , $product_id, $url );
$url = add_query_arg( YITH_WCWTL_META . '-action' , 'register', $url );

?>

<div id="yith-wcwtl-output">

	<?php if( $message ) : ?>
		<p class="yith-wcwtl-msg"><?php echo esc_html( $message ) ?></p>
	<?php endif; ?>

	<?php if( $product_type != 'variation' && ! $user->exists() ) : ?>

		<form method="post" action="<?php echo esc_url( $url ) ?>">
			<label for="yith-wcwtl-email">
				<?php _e( 'Email Address', 'yith-woocommerce-waiting-list' ) ?>
				<input type="email" name="yith-wcwtl-email" id="yith-wcwtl-email" />
			</label>
			<input type="submit" value="<?php echo esc_html( $label_button_add ) ?>" class="button alt" />
		</form>

	<?php elseif( ! $user->exists() ) : ?>
		<label for="yith-wcwtl-email">
			<?php _e( 'Email Address', 'yith-woocommerce-waiting-list' ) ?>
			<input type="email" name="yith-wcwtl-email" id="yith-wcwtl-email" class="wcwtl-variation" />
		</label>
	  	<a href="<?php echo esc_url( $url ) ?>" class="button alt"><?php echo esc_html( $label_button_add ) ?></a>

	<?php elseif( is_array( $waitlist ) && isset( $user->user_email ) && yith_waitlist_user_is_register( $user->user_email, $waitlist ) ) : ?>

		<?php // change action arg
		$url = add_query_arg( YITH_WCWTL_META . '-action' , 'leave', $url ); ?>

		<a href="<?php echo esc_url( $url ) ?>" class="button button-leave alt"><?php echo esc_html( $label_button_leave ) ?></a>

	<?php else : ?>

		<a href="<?php echo esc_url( $url ) ?>" class="button alt"><?php echo esc_html( $label_button_add ) ?></a>

	<?php endif; ?>

</div>
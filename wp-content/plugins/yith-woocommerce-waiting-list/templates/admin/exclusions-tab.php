<?php
/**
 * Admin View: Exclusion Table Settings
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}
$table = YITH_WCWTL_Exclusions_Table()->prepare_table();
$table->prepare_items();

$mess = isset( $_GET['wcwtl_mess'] ) ? $_GET['wcwtl_mess'] : '';

switch( $mess ) {
	case 1:
		$notice = __( 'Select at least one product to remove.', 'yith-woocommerce-waiting-list' );
		break;
	case 2:
		$message = __( 'Products removed successfully.', 'yith-woocommerce-waiting-list' );
		break;
	case 3:
		$message = __( 'Products added successfully.', 'yith-woocommerce-waiting-list' );
		break;
	case 4:
		$notice = __( 'You must select at least one product to add', 'yith-woocommerce-waiting-list' );
		break;
	default:
		break;
}

$list_query_args = array(
	'page' => $_GET['page'],
	'tab'  => $_GET['tab']
);

$list_url = add_query_arg( $list_query_args, admin_url( 'admin.php' ) );

?>
<div class="wrap">
	<div class="icon32 icon32-posts-post" id="icon-edit"><br /></div>
	<h2><?php _e( 'Exclusion list', 'yith-woocommerce-waiting-list' ); ?></h2>

	<?php if ( ! empty( $notice ) ) : ?>
		<div id="notice" class="error below-h2"><p><?php echo $notice; ?></p></div>
	<?php endif;

	if ( ! empty( $message ) ) : ?>
		<div id="message" class="updated below-h2"><p><?php echo $message; ?></p></div>
	<?php endif;

	?>
	<form id="yith-add-exclusion" method="POST">
		<input type="hidden" name="nonce" value="<?php echo wp_create_nonce( 'wcwtl_add_exclusions' ); ?>" />
		<input type="hidden" name="action" value="insert" />
		<label for="products"><?php _e( 'Products to exclude', 'yith-woocommerce-waiting-list' ); ?></label>
		<input type="text" id="products" name="products" class="wc-product-search" data-multiple="true" placeholder="Search for product" />
		<input type="submit" value="<?php _e( 'Add product exclusion', 'yith-woocommerce-waiting-list' ); ?>" id="insert" class="button" name="insert">
	</form>

	<form id="yith-exclusion-table" class="yith-wcwtl-table" method="GET" action="<?php echo esc_url( $list_url ); ?>">
		<input type="hidden" name="page" value="<?php echo $_GET['page']; ?>" />
		<input type="hidden" name="tab" value="<?php echo $_GET['tab']; ?>" />
		<?php $table->display(); ?>
	</form>

</div>
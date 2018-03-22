<?php
/**
 * Admin View: Exclusion Table Settings
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}
$table = YITH_WCWTL_Waitlistdata_Table()->prepare_table();
$table->prepare_items();

$mess = isset( $_GET['wcwtl_mess'] ) ? $_GET['wcwtl_mess'] : '';

switch( $mess ) {
	case 1:
		$notice = __( 'Select at last one waitlist to remove.', 'yith-woocommerce-waiting-list' );
		break;
	case 2:
		$message = __( 'Waiting lists removed successfully.', 'yith-woocommerce-waiting-list' );
		break;
	case 3:
		$notice = __( 'You must select at least one user.', 'yith-woocommerce-waiting-list' );
		break;
	case 4:
		$notice = __( 'The plugin is currently inactive. Activate it from the admin settings to send emails.', 'yith-woocommerce-waiting-list' );
		break;
	case 5:
		$message = __( 'Email sent correctly!', 'yith-woocommerce-waiting-list' );
		break;
	case 6:
		$notice = __( 'An error occurred. Please try again.', 'yith-woocommerce-waiting-list' );
		break;
	case 7:
		$message = __( 'All users have been added to this waiting list', 'yith-woocommerce-waiting-list' );
		break;
	case 8:
		$message = sprintf( _n( '%s user removed successfully', '%s users removed successfully', $_GET['wcwtl_count'], 'yith-woocommerce-waiting-list' ), $_GET['wcwtl_count'] );
		break;
	default:
		break;
}

$list_query_args = array(
	'page'          => $_GET['page'],
	'tab'           => $_GET['tab'],
);
// Set users table
if( ( isset( $_GET['view'] ) || isset( $_POST['view'] ) ) && isset( $_GET['id'] ) ) {
	$view = isset( $_GET['view'] ) ? $_GET['view'] : ( isset( $_POST['view'] ) ? $_POST['view'] : '' );
	$list_query_args['view'] = $view;
	$list_query_args['id']   = $_GET['id'];
}

$list_url = add_query_arg( $list_query_args, admin_url( 'admin.php' ) );

?>
<div class="wrap">
	<div class="icon32 icon32-posts-post" id="icon-edit"><br /></div>
	<h2><?php

		if ( isset( $_GET['view'] ) && 'users' === $_GET['view'] ) {
			_e( 'Users in the Waiting list', 'yith-woocommerce-waiting-list' );

			$query_args   = array(
				'page' => $_GET['page'],
				'tab'  => $_GET['tab']
			);
			$add_form_url = add_query_arg( $query_args, admin_url( 'admin.php' ) );

			echo '<a class="add-new-h2" href="' . esc_url( $add_form_url ) . '">' . __( 'Return to waiting lists checklist', 'yith-woocommerce-waiting-list' ) . '</a>';
		} else {
			_e( 'Products with a Waiting List', 'yith-woocommerce-waiting-list' );
		}

		?></h2>

	<?php if ( ! empty( $notice ) ) : ?>
		<div id="notice" class="error below-h2"><p><?php echo $notice; ?></p></div>
	<?php endif;

	if ( ! empty( $message ) ) : ?>
		<div id="message" class="updated below-h2"><p><?php echo $message; ?></p></div>
	<?php endif;

	if ( isset( $_GET['view'] ) && 'users' === $_GET['view'] ) : ?>
		<form id="yith-add-user" method="POST">
			<input type="hidden" name="nonce" value="<?php echo wp_create_nonce( 'wcwtl_add_users' ); ?>" />
			<input type="hidden" name="action" value="insert" />
			<input type="hidden" name="view" value="users" />
			<label for="users_email"><?php _e( 'Add user to the Waiting list', 'yith-woocommerce-waiting-list' ); ?></label>
			<input type="text" name="users_id" id="users_id" class="wc-customer-search" data-multiple="true" placeholder="Search for an user"/>
			<input type="submit" value="<?php _e( 'Add new user', 'yith-woocommerce-waiting-list' ); ?>" id="insert" class="button" name="insert">
		</form>
	<?php endif; ?>

	<form id="yith-waitlistdata-table" class="yith-wcwtl-table" method="GET" action="<?php echo esc_url( $list_url ); ?>">
		<input type="hidden" name="page" value="<?php echo $_GET['page']; ?>" />
		<input type="hidden" name="tab" value="<?php echo $_GET['tab']; ?>" />
		<input type="hidden" name="tab" value="<?php echo $_GET['tab']; ?>" />
		<?php if ( isset( $_GET['view'] ) && 'users' === $_GET['view'] && isset( $_GET['id'] ) ) : ?>
			<input type="hidden" name="id" value="<?php echo $_GET['id'] ?>">
		<?php endif; ?>
		<?php $table->display(); ?>

	</form>

</div>
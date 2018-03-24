<?php
/**
 * Custom Order Statuses for WooCommerce - Tool Class
 *
 * @version 1.3.0
 * @since   1.2.0
 * @author  Algoritmika Ltd.
 */

if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly

if ( ! class_exists( 'Alg_WC_Custom_Order_Statuses_Tool' ) ) :

class Alg_WC_Custom_Order_Statuses_Tool {

	/**
	 * Constructor.
	 *
	 * @version 1.2.0
	 * @since   1.2.0
	 */
	function __construct() {
		add_action( 'admin_menu', array( $this, 'add_tool' ), PHP_INT_MAX );
	}

	/**
	 * Add menu item
	 *
	 * @version 1.3.0
	 * @since   1.0.0
	 * @todo    move tool to WC settings tabs (check SKU plugin)
	 */
	public function add_tool() {
		add_submenu_page(
			null,
			__( 'Custom Order Status', 'custom-order-statuses-woocommerce' ),
			__( 'Custom Order Status', 'custom-order-statuses-woocommerce' ),
			'manage_woocommerce',
			'alg-custom-order-statuses-tool',
			array( $this, 'create_custom_statuses_tool' )
		);
	}

	/**
	 * maybe_execute_actions.
	 *
	 * @version 1.3.0
	 * @since   1.3.0
	 * @todo    (maybe) add `wp_safe_redirect`
	 */
	function maybe_execute_actions() {
		$result_message = '';
		if ( isset( $_POST['alg_add_custom_status'] ) ) {
			$result_message = $this->add_custom_status(
				sanitize_key( $_POST['new_status'] ),
				$_POST['new_status_label'],
				$_POST['new_status_icon_content'],
				$_POST['new_status_icon_color']
			);
		} elseif ( isset( $_POST['alg_edit_custom_status'] ) ) {
			$result_message = $this->edit_custom_status(
				sanitize_key( $_POST['new_status'] ),
				$_POST['new_status_label'],
				$_POST['new_status_icon_content'],
				$_POST['new_status_icon_color']
			);
		} elseif ( isset( $_GET['delete'] ) && ( '' != $_GET['delete'] ) ) {
			$result_message = $this->delete_custom_status( $_GET['delete'] );
		}
		return $result_message;
	}

	/**
	 * get_status_table_html.
	 *
	 * @version 1.3.0
	 * @since   1.3.0
	 */
	function get_status_table_html() {
		$table_data = array();
		$table_data[] = array(
				__( 'Slug', 'woocommerce' ),
				__( 'Name', 'woocommerce' ),
				__( 'Icon Code', 'custom-order-statuses-woocommerce' ),
				__( 'Icon Color', 'custom-order-statuses-woocommerce' ),
				__( 'Actions', 'woocommerce' ),
		);
		$statuses         = function_exists( 'wc_get_order_statuses' ) ? wc_get_order_statuses() : array();
		$default_statuses = $this->get_default_order_statuses();
		$plugin_statuses  = alg_get_custom_order_statuses();
		foreach( $statuses as $status => $status_name ) {
			if ( array_key_exists( $status, $default_statuses ) || ! array_key_exists( $status, $plugin_statuses ) ) {
				$icon_and_actions = array( '', '', '' );
			} else {
				if ( '' != ( $icon_data = get_option( 'alg_orders_custom_status_icon_data_' . substr( $status, 3 ), '' ) ) ) {
					$content = $icon_data['content'];
					$color   = $icon_data['color'];
				} else {
					$content = 'e011';
					$color   = '#999999';
				}
				$fallback_status_without_wc_prefix = get_option( 'alg_orders_custom_statuses_fallback_delete_status', 'on-hold' );
				$delete_button_ending = ' href="' . add_query_arg( 'delete', $status, remove_query_arg( array( 'edit', 'fallback' ) ) ) .
					'" onclick="return confirm(\'' . __( 'Are you sure?', 'custom-order-statuses-woocommerce' ) . '\')">';
				$delete_with_fallback_button_ending = ( substr( $status, 3 ) != $fallback_status_without_wc_prefix ?
					' href="' . add_query_arg( array( 'delete' => $status, 'fallback' => 'yes' ), remove_query_arg( 'edit' ) ) .
					'" onclick="return confirm(\'' . __( 'Are you sure?', 'custom-order-statuses-woocommerce' ) . '\')" title="' .
					sprintf(
						__( 'Status for orders with this status will be changed to \'%s\'.' ),
						$this->get_status_title( 'wc-' . $fallback_status_without_wc_prefix )
					)
					. '">'
					:
					' disabled title="' .
					__( 'This status can not be deleted as it\'s set to be the fallback status. Change \'Fallback Delete Order Status\' to some other value in plugin\'s settings to delete this status.', 'custom-order-statuses-woocommerce' )
					. '">'
				);
				$edit_button_ending = ' href="' . add_query_arg( 'edit', $status, remove_query_arg( array( 'delete', 'fallback' ) ) ) . '">';
				$delete_button               = '<a class="button-primary"' . $delete_button_ending               . __( 'Delete', 'woocommerce' ) . '</a>';
				$delete_with_fallback_button = '<a class="button-primary"' . $delete_with_fallback_button_ending . __( 'Delete with fallback', 'custom-order-statuses-woocommerce' ) . '</a>';
				$edit_button                 = '<a class="button-primary"' . $edit_button_ending                 . __( 'Edit', 'woocommerce' )   . '</a>';
				$icon_and_actions = array(
					$content,
					'<input disabled type="color" value="' . $color . '">',
                    $delete_with_fallback_button . ' ' . $delete_button . ' ' . $edit_button,
				);
			}
			$table_data[] = array_merge( array( esc_attr( $status ), esc_html( $status_name ) ), $icon_and_actions );
		}
		return '<h2>' . __( 'Status Table', 'custom-order-statuses-woocommerce' ) . '</h2>' .
			alg_get_table_html( $table_data, array( 'table_class' => 'wc_status_table widefat striped' ) ) .
			'<p style="font-style:italic;">* ' . sprintf(
				__( '"Delete with fallback" button will delete custom status and change status for every order with that status to "fallback status". Fallback status can be set in <a href="%s">plugin\'s settings</a>. Please note - if you have large number of orders this may take longer.', 'custom-order-statuses-woocommerce' ),
				admin_url( 'admin.php?page=wc-settings&tab=alg_wc_custom_order_statuses' ) ) .
			'</p>';
	}

	/**
	 * get_actions_box_html.
	 *
	 * @version 1.3.0
	 * @since   1.3.0
	 * @todo    (maybe) wp_nonce_url / wp_create_nonce / wp_verify_nonce - https://codex.wordpress.org/Function_Reference/wp_create_nonce
	 * @todo    (maybe) "delete all custom statuses" and "delete all custom statuses with fallback" button
	 */
	function get_actions_box_html() {
		$is_editing = ( isset( $_GET['edit'] ) ) ? true : false;
		if ( $is_editing ) {
			$edit_slug = $_GET['edit'];
			$custom_order_statuses = alg_get_custom_order_statuses();
			$edit_label = isset( $custom_order_statuses[ $edit_slug ] ) ? $custom_order_statuses[ $edit_slug ] : '';
			if ( '' != ( $edit_icon_data = get_option( 'alg_orders_custom_status_icon_data_' . substr( $edit_slug, 3 ), '' ) ) ) {
				$edit_content = $edit_icon_data['content'];
				$edit_color   = $edit_icon_data['color'];
			} else {
				$edit_content = 'e011';
				$edit_color   = '#999999';
			}
		}
		$title            = ( $is_editing ? __( 'Edit', 'custom-order-statuses-woocommerce' ) : __( 'Add', 'custom-order-statuses-woocommerce' ) );
		$slug_input       = '<input required type="text" name="new_status" maxlength="17" style="width:100%;"' .
			( $is_editing ? ' value="' . substr( $edit_slug, 3 ) . '" readonly' : '' ) . '>';
		$label_input      = '<input required type="text" name="new_status_label" style="width:100%;"' . ( $is_editing ? ' value="' . $edit_label . '"' : '' ) . '>';
		$icon_input       = '<input required type="text" name="new_status_icon_content" maxlength="4" pattern="[e]{1,1}[a-fA-F\d]{3,3}" value="' .
			( $is_editing ? $edit_content : 'e011' ) . '">';
		$icon_color_input = '<input required type="color" name="new_status_icon_color" value="'  . ( $is_editing ? $edit_color   : '#999999' ) . '">';
		$icon_desc        = sprintf(
			'* ' . __( 'You can check icon codes <a target="_blank" href="%s">here</a>', 'custom-order-statuses-woocommerce' ),
			'https://rawgit.com/woothemes/woocommerce-icons/master/demo.html'
		);
		$slug_desc        = '* ' . __( 'Without <strong>wc-</strong> prefix', 'custom-order-statuses-woocommerce' );
		$icon_input .= '<br>' . '<em>' . $icon_desc . '</em>';
		$slug_input .= '<br>' . '<em>' . $slug_desc . '</em>';
		$add_edit_button = '<input class="button-primary" type="submit" ' .
			'name="'  . ( $is_editing ? 'alg_edit_custom_status' : 'alg_add_custom_status' ) . '" ' .
			'value="' . ( $is_editing ? __( 'Edit', 'woocommerce' ) : __( 'Add new', 'woocommerce' ) ) .
			'">';
		$clear_button = ( $is_editing ?
			'<a href="' . remove_query_arg( array( 'delete', 'fallback', 'edit' ) ) . '">' . __( 'Clear form', 'custom-order-statuses-woocommerce' ) . '</a>' : '' );

		$table_data = array(
            array( __( 'Name', 'woocommerce' ),      $label_input ),
            array( __( 'Slug', 'woocommerce' ),       $slug_input ),
			array( __( 'Icon Code', 'custom-order-statuses-woocommerce' ),  $icon_input ),
			array( __( 'Icon Color', 'custom-order-statuses-woocommerce' ), $icon_color_input ),
			array( $add_edit_button, '' ),
		);
		if ( '' != $clear_button ) {
			$table_data[] = array( $clear_button, '' );
		}
		return '<form method="post" action="' . remove_query_arg( array( 'delete', 'fallback' ) ) . '">' .
			'<h2>' . $title . ' ' . __( 'Status', 'custom-order-statuses-woocommerce' ) . '</h2>' .
			alg_get_table_html( $table_data, array( 'table_style' => 'width:50%;min-width:300px;', 'table_class' => 'widefat striped', 'table_heading_type' => 'vertical' ) ) .
		'</form>';
	}

	/**
	 * create_custom_statuses_tool.
	 *
	 * @version 1.3.0
	 * @since   1.0.0
	 */
	function create_custom_statuses_tool() {
		$html = '';
		$html .= '<div class="wrap">';
		$html .= '<p><a href="' . admin_url( 'admin.php?page=wc-settings&tab=alg_wc_custom_order_statuses' ) . '">' .
			'<< ' . __('Settings', 'woocommerce') . '</a></p>';
		$html .= $this->maybe_execute_actions();
		$html .= $this->get_actions_box_html();
		$html .= $this->get_status_table_html();
		$html .= '</div>';
		echo $html;
	}

	/**
	 * Add new custom status to alg_orders_custom_statuses_array.
	 *
	 * @version 1.3.0
	 * @since   1.0.0
	 */
	function add_custom_status( $new_status, $new_status_label, $new_status_icon_content, $new_status_icon_color ) {

		// Checking function arguments
		if ( '' == $new_status ) {
			return '<div class="error"><p>' . __( 'Status slug is empty. Status was not added!', 'custom-order-statuses-woocommerce' ) . '</p></div>';
		}
		if ( strlen( $new_status ) > 17 ) {
			return '<div class="error"><p>' . __( 'The length of status slug must be 17 or less characters. Status was not added!', 'custom-order-statuses-woocommerce' ) . '</p></div>';
		}
		if ( ! isset( $new_status_label ) || '' == $new_status_label ) {
			return '<div class="error"><p>' . __( 'Status label is empty. Status was not added!', 'custom-order-statuses-woocommerce' ) . '</p></div>';
		}

		// Checking status
		$statuses_updated = alg_get_custom_order_statuses();
		$new_key = 'wc-' . $new_status;
		if ( isset( $statuses_updated[ $new_key ] ) ) {
			return '<div class="error"><p>' . __( 'Duplicate slug. Status was not added!', 'custom-order-statuses-woocommerce' ) . '</p></div>';
		}
		$default_statuses = $this->get_default_order_statuses();
		if ( isset( $default_statuses[ $new_key ] ) ) {
			return '<div class="error"><p>' . __( 'Duplicate slug (default WooCommerce status). Status was not added!', 'custom-order-statuses-woocommerce' ) . '</p></div>';
		}
		$statuses_updated[ $new_key ] = $new_status_label;

		// Adding custom status
		$result = update_option( 'alg_orders_custom_statuses_array', $statuses_updated );
		$result = update_option( 'alg_orders_custom_status_icon_data_' . $new_status, array(
			'content' => $new_status_icon_content,
			'color'   => $new_status_icon_color,
		) );
		return ( true === $result ) ?
			'<div class="updated"><p>' . __( 'New status has been successfully added!', 'custom-order-statuses-woocommerce' ) . '</p></div>' :
			'<div class="error"><p>'   . __( 'Status was not added!', 'custom-order-statuses-woocommerce' )                   . '</p></div>';
	}

	/**
	 * edit_custom_status.
	 *
	 * @version 1.2.0
	 * @since   1.2.0
	 * @todo    (maybe) make slug editable (and if slug is changed - change all orders to new status)
	 */
	function edit_custom_status( $new_status, $new_status_label, $new_status_icon_content, $new_status_icon_color ) {
		if ( '' == $new_status_label ) {
			$result_message = '<div class="error"><p>' . __( 'Status label is empty. Status was not edited!', 'custom-order-statuses-woocommerce' ) . '</p></div>';
		} else {
			$statuses_updated = alg_get_custom_order_statuses();
			$statuses_updated[ 'wc-' . $new_status ] = $new_status_label;
			$result = update_option( 'alg_orders_custom_statuses_array', $statuses_updated );
			$result_icon_data = update_option( 'alg_orders_custom_status_icon_data_' . $new_status, array(
				'content' => $new_status_icon_content,
				'color'   => $new_status_icon_color,
			) );
			if ( $result || $result_icon_data ) {
				$result_message = '<div class="updated"><p>' . __( 'Status has been successfully edited!', 'custom-order-statuses-woocommerce' ) . '</p></div>';
			} else {
				$result_message = '<div class="error"><p>' . __( 'Status was not edited!', 'custom-order-statuses-woocommerce' ) . '</p></div>';
			}
		}
		return $result_message;
	}

	/**
	 * delete_custom_status.
	 *
	 * @version 1.3.0
	 * @since   1.2.0
	 * @todo    (maybe) check (e.g. temporary remove) emails (and possibly other triggers) on fallback status
	 * @todo    (maybe) fix "Order Notes"
	 */
	function delete_custom_status( $delete_status ) {
		// Statuses data
		$statuses_updated = alg_get_custom_order_statuses();
		if ( isset( $statuses_updated[ $delete_status ] ) ) {
			// Fallback
			if ( isset( $_GET['fallback'] ) && 'alg_none' != ( $new_status_without_wc_prefix = get_option( 'alg_orders_custom_statuses_fallback_delete_status', 'on-hold' ) ) ) {
				$total_orders_changed = $this->change_orders_status( $delete_status, $new_status_without_wc_prefix );
			} else {
				$total_orders_changed = 0;
			}
			// Delete status
			unset( $statuses_updated[ $delete_status ] );
			$result = update_option( 'alg_orders_custom_statuses_array', $statuses_updated );
			// Delete icon data
			$result_icon_data = delete_option( 'alg_orders_custom_status_icon_data_' . substr( $delete_status, 3 ) );
			// Result message
			if ( true === $result && true === $result_icon_data ) {
				$result_message = '<div class="updated"><p>' . __( 'Status has been successfully deleted.', 'custom-order-statuses-woocommerce' ) . '</p></div>';
				if ( $total_orders_changed > 0 ) {
					$result_message .= '<div class="updated"><p>' . sprintf( __( 'Status has been changed for %d orders.', 'custom-order-statuses-woocommerce' ), $total_orders_changed ) . '</p></div>';
				}
			} else {
				$result_message = '<div class="error"><p>' . __( 'Delete failed.', 'custom-order-statuses-woocommerce' ) . '</p></div>';
			}
		} else {
			$result_message = '<div class="error"><p>' . __( 'Delete failed (status not found).', 'custom-order-statuses-woocommerce' ) . '</p></div>';
		}
		return $result_message;
	}

	/**
	 * change_orders_status.
	 *
	 * @version 1.2.0
	 * @since   1.2.0
	 */
	function change_orders_status( $old_status, $new_status_without_wc_prefix ) {
		$total_orders_changed = 0;
		$offset = 0;
		$block_size = 1024;
		while( true ) {
			$args_orders = array(
				'post_type'      => 'shop_order',
				'post_status'    => $old_status,
				'posts_per_page' => $block_size,
				'offset'         => $offset,
				'fields'         => 'ids',
			);
			$loop_orders = new WP_Query( $args_orders );
			if ( ! $loop_orders->have_posts() ) {
				break;
			}
			foreach ( $loop_orders->posts as $order_id ) {
				$order = wc_get_order( $order_id );
				$order->update_status( $new_status_without_wc_prefix );
				$total_orders_changed++;
			}
			$offset += $block_size;
		}
		return $total_orders_changed;
	}

	/**
	 * get_status_title.
	 *
	 * @version 1.2.0
	 * @since   1.2.0
	 */
	function get_status_title( $slug ) {
		$statuses = $this->get_all_order_statuses();
		return ( isset( $statuses[ $slug ] ) ) ? $statuses[ $slug ] : '';
	}

	/**
	 * get_all_order_statuses.
	 *
	 * @version 1.2.0
	 * @since   1.2.0
	 */
	function get_all_order_statuses() {
		return array_merge( $this->get_default_order_statuses(), alg_get_custom_order_statuses() );
	}

	/**
	 * get_default_order_statuses.
	 *
	 * @version 1.0.0
	 * @since   1.0.0
	 */
	function get_default_order_statuses() {
		return array(
			'wc-pending'    => _x( 'Pending payment', 'Order status', 'woocommerce' ),
			'wc-processing' => _x( 'Processing', 'Order status', 'woocommerce' ),
			'wc-on-hold'    => _x( 'On hold', 'Order status', 'woocommerce' ),
			'wc-completed'  => _x( 'Completed', 'Order status', 'woocommerce' ),
			'wc-cancelled'  => _x( 'Cancelled', 'Order status', 'woocommerce' ),
			'wc-refunded'   => _x( 'Refunded', 'Order status', 'woocommerce' ),
			'wc-failed'     => _x( 'Failed', 'Order status', 'woocommerce' ),
		);
	}

}

endif;

return new Alg_WC_Custom_Order_Statuses_Tool();
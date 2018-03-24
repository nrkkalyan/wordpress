<?php
if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly

$methods           = get_posts( array( 'posts_per_page' => '-1', 'post_type' => 'was', 'post_status' => array( 'draft', 'publish' ), 'orderby' => 'menu_order', 'order' => 'ASC' ) );
$wc_status_options = wp_parse_args( get_option( 'woocommerce_status_options', array() ), array( 'shipping_debug_mode' => 0 ) );

?><tr valign="top">
	<th scope="row" class="titledesc"><?php esc_html_e( 'Shipping methods', 'woocommerce' ); ?></th>
	<td class="forminp" id="<?php echo esc_attr( $this->id ); ?>_shipping_methods">

		<table class='wp-list-table wpc-conditions-post-table widefat'>

			<thead>
				<tr>
					<th scope="col" style='width: 17px;' class="column-sort"></th>
					<th scope="col" style='padding-left: 0;' class="column-primary">
						<div style='padding-left: 10px;'><?php esc_html_e( 'Shipping method title', 'woocommerce' ); ?></div>
					</th>
					<th scope="col" style='padding-left: 10px;' class="column-title"><?php esc_html_e( 'Description', 'woocommerce' ); ?></th>
					<th scope="col" style='padding-left: 10px; width: 100px;' class="column-cost"><?php _e( 'Cost', 'woocommerce' ); ?></th>
				</tr>
			</thead>
			<tbody><?php

				$i = 0;
				foreach ( $methods as $method ) :

					$method_details = get_post_meta( $method->ID, '_was_shipping_method', true );

					$alt = ( $i++ ) % 2 == 0 ? 'alternate' : '';
					?><tr class='<?php echo $alt; ?>'>

						<td class='sort'>
							<input type='hidden' name='sort[]' value='<?php echo absint( $method->ID ); ?>' />
						</td>
						<td class="column-primary">
							<strong>
								<a href='<?php echo get_edit_post_link( $method->ID ); ?>' class='row-title' title='<?php _e( 'Edit', 'woocommerce' ); ?>'><?php
									if ( $wc_status_options['shipping_debug_mode'] ) {
										echo '<small>#' . absint( $method->ID ) . '</small> - ';
									}
									echo _draft_or_post_title( $method->ID );
								?></a><?php
								echo _post_states( $method );
							?></strong>
							<div class='row-actions'>
								<span class='edit'>
									<a href='<?php echo get_edit_post_link( $method->ID ); ?>' title='<?php _e( 'Edit', 'woocommerce' ); ?>'>
										<?php _e( 'Edit', 'woocommerce' ); ?>
									</a>
									|
								</span>
								<span class='trash'>
									<a href='<?php echo get_delete_post_link( $method->ID ); ?>' title='<?php _e( 'Delete', 'woocommerce' ); ?>'>
										<?php _e( 'Delete', 'woocommerce' ); ?>
									</a>
								</span>
							</div>
							<button type="button" class="toggle-row"><span class="screen-reader-text"><?php _e( 'Show more details' ); ?></span></button>
						</td>
						<td class="column-title" data-colname="<?php _e( 'Shipping', 'woocommerce-advanced-shipping' ); ?>"><?php
							if ( empty( $method_details['shipping_title'] ) ) :
								_e( 'Shipping', 'woocommerce-advanced-shipping' );
							else :
								echo wp_kses_post( $method_details['shipping_title'] );
							endif;
						?></td>
						<td class="column-cost" data-colname="<?php _e( 'Cost', 'woocommerce' ); ?>"><?php
							echo isset( $method_details['shipping_cost'] ) ? wp_kses_post( wc_price( $method_details['shipping_cost'] ) ) : '';
						?></td>

					</tr><?php

				endforeach;

				if ( empty( $method ) ) :
					?><tr>
						<td colspan='5'><?php _e( 'There are no Advanced Shipping rates. Yet...', 'woocommerce-advanced-shipping' ); ?></td>
					</tr><?php
				endif;

			?></tbody>
			<tfoot>
				<tr>
					<th colspan='5' style='padding-left: 10px;'>
						<a href='<?php echo admin_url( 'post-new.php?post_type=was' ); ?>' class='add button'>
                            <?php esc_attr_e( 'Add shipping method', 'woocommerce' ); ?>
						</a>
					</th>
				</tr>
			</tfoot>
		</table>
	</td>
</tr>

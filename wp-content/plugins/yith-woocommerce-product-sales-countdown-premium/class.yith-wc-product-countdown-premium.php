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
 * Main class
 *
 * @class   YITH_WC_Product_Countdown_Premium
 * @package Yithemes
 * @since   1.0.0
 * @author  Your Inspiration Themes
 */

if ( ! class_exists( 'YITH_WC_Product_Countdown_Premium' ) ) {

	class YITH_WC_Product_Countdown_Premium extends YITH_WC_Product_Countdown {

		/**
		 * Returns single instance of the class
		 *
		 * @return \YITH_WC_Product_Countdown_Premium
		 * @since 1.0.0
		 */
		public static function get_instance() {
			if ( is_null( self::$instance ) ) {
				self::$instance = new self( $_REQUEST );
			}

			return self::$instance;
		}

		/**
		 * Constructor
		 *
		 * @since   1.0.0
		 * @return  mixed
		 * @author  Alberto Ruggiero
		 */
		public function __construct() {

			parent::__construct();

			// register plugin to licence/update system
			add_action( 'wp_loaded', array( $this, 'register_plugin_for_activation' ), 99 );
			add_action( 'admin_init', array( $this, 'register_plugin_for_updates' ) );

			$this->includes_premium();

			if ( is_admin() ) {

				add_action( 'woocommerce_admin_field_custom-radio', 'YWPC_Custom_Radio::output' );
				add_action( 'woocommerce_admin_field_custom-radio-topbar', 'YWPC_Custom_Radio_Topbar::output' );
				add_action( 'woocommerce_admin_field_custom-selector', 'YWPC_Custom_Select::output' );
				add_action( 'admin_enqueue_scripts', array( $this, 'admin_scripts_premium' ) );
				add_action( 'ywpc_bulk_operations', 'YWPC_Bulk_Operations::output' );
				add_action( 'wp_ajax_ywpc_json_search_product_categories', 'YWPC_Bulk_Operations::json_search_product_categories', 10 );

				add_filter( 'manage_product_posts_columns', array( $this, 'add_ywpc_column' ), 11 );
				add_action( 'manage_product_posts_custom_column', array( $this, 'render_ywpc_column' ), 3 );

			}

			if ( get_option( 'ywpc_enable_plugin' ) == 'yes' ) {

				/* $priority = has_action( 'woocommerce_scheduled_sales', 'wc_scheduled_sales' );
				 remove_action( 'woocommerce_scheduled_sales', 'wc_scheduled_sales', $priority );
				 add_action( 'woocommerce_scheduled_sales', array( $this, 'ywpc_wc_scheduled_sales' ) );*/

				add_action( 'widgets_init', array( $this, 'register_widget' ) );
				add_shortcode( 'ywpc_shortcode', array( $this, 'set_ywpc_shortcode' ) );

				if ( is_admin() ) {

					add_filter( 'ywpc_tab_class', array( $this, 'get_tab_class' ) );
					add_filter( 'ywpc_countdown_tab_options', array( $this, 'write_tab_options_premium' ) );
					add_filter( 'ywpc_countdown_tab_notice', array( $this, 'write_tab_options_notice' ) );

					add_action( 'woocommerce_process_product_meta', array(
						$this,
						'save_countdown_tab_premium'
					), 10, 2 );
					add_action( 'woocommerce_product_after_variable_attributes', array(
						$this,
						'add_sale_options_product_variable'
					), 10, 3 );
					add_action( 'woocommerce_save_product_variation', array(
						$this,
						'save_sale_options_product_variable'
					), 10, 2 );
					add_action( 'admin_action_ywpc_shortcodes_panel', array( $this, 'ywpc_add_shortcodes_panel' ) );
					add_action( 'admin_init', array( $this, 'ywpc_add_shortcodes_button' ) );
					add_action( 'media_buttons_context', array( &$this, 'ywpc_media_buttons_context' ) );
					add_action( 'admin_print_footer_scripts', array( &$this, 'ywpc_add_quicktags' ) );

				} else {

					add_filter( 'ywpc_product_args', array( $this, 'get_product_args' ), 10, 3 );
					add_filter( 'ywpc_product_sales_bar', array( $this, 'add_sales_bar_product' ), 10, 3 );
					add_filter( 'ywpc_product_scripts', array( $this, 'add_script_product' ), 10, 2 );
					add_filter( 'ywpc_showing_position_product', array( $this, 'get_position_product' ) );
					add_filter( 'ywpc_timer_title', array( $this, 'get_timer_title' ), 10, 2 );
					add_filter( 'woocommerce_get_cart_item_from_session', array( $this, 'correct_quantity_product' ) );

					add_action( 'wp_print_scripts', array( $this, 'get_custom_css' ) );
					add_action( 'woocommerce_before_shop_loop_item', array( $this, 'check_show_ywpc_category' ) );
					add_action( 'init', array( $this, 'update_quantity_product_sold' ) );

					$end_sale = get_option( 'ywpc_end_sale' );

					if ( $end_sale == 'disable' ) {

						/** If on expired sale the product must be disabled */
						add_filter( 'woocommerce_add_to_cart_validation', array( $this, 'avoid_add_to_cart' ), 10, 2 );

						add_action( 'woocommerce_single_product_summary', array(
							$this,
							'hide_add_to_cart_single'
						), 10 );
						add_action( 'woocommerce_before_shop_loop_item_title', array(
							$this,
							'hide_add_to_cart_loop'
						), 5 );

					} elseif ( $end_sale == 'remove' ) {

						/** If on expired sale the product must be hidden */
						add_filter( 'woocommerce_add_to_cart_validation', array( $this, 'avoid_add_to_cart' ), 10, 2 );
						add_filter( 'woocommerce_variation_is_visible', array( $this, 'hide_variations' ), 10, 2 );

						add_action( 'woocommerce_product_query', array( $this, 'hide_product_from_catalog' ), 10, 1 );
						add_action( 'template_redirect', array( $this, 'avoid_direct_access' ) );

					}

					add_action( 'init', array( $this, 'initialize_topbar' ) );

				}

			}

		}

		/**
		 * Include required core files
		 *
		 * @since   1.0.0
		 * @return  void
		 * @author  Alberto Ruggiero
		 */
		public function includes_premium() {

			require_once( 'includes/class-ywpc-widget.php' );

			if ( is_admin() ) {

				include_once( 'templates/admin/custom-select.php' );
				include_once( 'templates/admin/custom-radio.php' );
				include_once( 'templates/admin/custom-radio-topbar.php' );
				include_once( 'templates/admin/bulk-operations.php' );

			}

		}

		/**
		 * Register YWPC Widget
		 *
		 * @since   1.0.0
		 * @return  void
		 * @author  Alberto Ruggiero
		 */
		public function register_widget() {
			register_widget( 'YWPC_Widget' );
		}

		/**
		 * Overrides WooCommerce wc_scheduled_sales
		 *
		 * @see     wc-product-functions.php
		 * @since   1.0.0
		 * @return  void
		 * @author  Alberto Ruggiero
		 */
		/*public function ywpc_wc_scheduled_sales() {

			global $wpdb;

			// Sales which are due to start
			$product_ids = $wpdb->get_col( $wpdb->prepare( "
		SELECT postmeta.post_id FROM {$wpdb->postmeta} as postmeta
		LEFT JOIN {$wpdb->postmeta} as postmeta_2 ON postmeta.post_id = postmeta_2.post_id
		LEFT JOIN {$wpdb->postmeta} as postmeta_3 ON postmeta.post_id = postmeta_3.post_id
		WHERE postmeta.meta_key = '_sale_price_dates_from'
		AND postmeta_2.meta_key = '_price'
		AND postmeta_3.meta_key = '_sale_price'
		AND postmeta.meta_value > 0
		AND postmeta.meta_value < %s
		AND postmeta_2.meta_value != postmeta_3.meta_value
	", current_time( 'timestamp' ) ) );

			if ( $product_ids ) {
				foreach ( $product_ids as $product_id ) {

					$parent = wp_get_post_parent_id( $product_id );

					//Check if current product is managed by YWPC
					$has_ywpc = get_post_meta( ( ( $parent ) ? $parent : $product_id ), '_ywpc_enabled', true );

					$sale_price = get_post_meta( $product_id, '_sale_price', true );

					if ( $sale_price ) {
						update_post_meta( $product_id, '_price', $sale_price );
					}
					else {

						if ( $has_ywpc != 'yes' ) {
							// No sale price!
							update_post_meta( $product_id, '_sale_price_dates_from', '' );
							update_post_meta( $product_id, '_sale_price_dates_to', '' );
						}

					}

					// Sync parent
					if ( $parent ) {
						// We can force variable product prices to sync up by removing their min price meta
						delete_post_meta( $parent, '_min_price_variation_id' );

						// Grouped products need syncing via a function
						$this_product = wc_get_product( $product_id );

						if ( $this_product->is_type( 'simple' ) ) {
							$this_product->grouped_product_sync();
						}
					}
				}

				delete_transient( 'wc_products_onsale' );
			}

			// Sales which are due to end
			$product_ids = $wpdb->get_col( $wpdb->prepare( "
		SELECT postmeta.post_id FROM {$wpdb->postmeta} as postmeta
		LEFT JOIN {$wpdb->postmeta} as postmeta_2 ON postmeta.post_id = postmeta_2.post_id
		LEFT JOIN {$wpdb->postmeta} as postmeta_3 ON postmeta.post_id = postmeta_3.post_id
		WHERE postmeta.meta_key = '_sale_price_dates_to'
		AND postmeta_2.meta_key = '_price'
		AND postmeta_3.meta_key = '_regular_price'
		AND postmeta.meta_value > 0
		AND postmeta.meta_value < %s
		AND postmeta_2.meta_value != postmeta_3.meta_value
	", current_time( 'timestamp' ) ) );

			if ( $product_ids ) {
				foreach ( $product_ids as $product_id ) {

					$parent = wp_get_post_parent_id( $product_id );

					//Check if current product is managed by YWPC
					$has_ywpc = get_post_meta( ( ( $parent ) ? $parent : $product_id ), '_ywpc_enabled', true );

					$regular_price = get_post_meta( $product_id, '_regular_price', true );

					update_post_meta( $product_id, '_price', $regular_price );
					update_post_meta( $product_id, '_sale_price', '' );

					if ( $has_ywpc != 'yes' ) {
						update_post_meta( $product_id, '_sale_price_dates_from', '' );
						update_post_meta( $product_id, '_sale_price_dates_to', '' );
					}

					// Sync parent
					if ( $parent ) {
						// We can force variable product price to sync up by removing their min price meta
						delete_post_meta( $parent, '_min_variation_price' );

						// Grouped products need syncing via a function
						$this_product = wc_get_product( $product_id );
						if ( $this_product->is_type( 'simple' ) ) {
							$this_product->grouped_product_sync();
						}
					}


				}

				WC_Cache_Helper::get_transient_version( 'product', true );
				delete_transient( 'wc_products_onsale' );
			}
		}*/

		/**
		 * ADMIN FUNCTIONS
		 */

		/**
		 * Add the countdown column
		 *
		 * @since   1.0.0
		 *
		 * @param   $columns
		 *
		 * @return  array
		 * @author  Alberto Ruggiero
		 */
		public function add_ywpc_column( $columns ) {

			$columns['ywpc_status'] = __( 'Countdown', 'yith-woocommerce-product-countdown' );

			return $columns;

		}

		/**
		 * Render the order fraud risk column
		 *
		 * @since   1.0.0
		 *
		 * @param   $column
		 *
		 * @return  void
		 * @author  Alberto Ruggiero
		 */
		public function render_ywpc_column( $column ) {

			global $post;


			if ( 'ywpc_status' == $column ) {

				$args = $this->get_product_args( '', $post->ID );


				if ( empty( $args['items'] ) ) {
					return;
				}

				$extra_class = ( $args['class'] ) ? $args['class'] . '-' : '';

				foreach ( $args['items'] as $id => $item ) {

					if ( isset( $args['active_var'] ) && $args['active_var'] != $id ) {
						continue;

					}

					?>

					<?php if ( isset( $item['end_date'] ) ) : ?>

						<?php $date = ywpc_get_countdown( $item['end_date'] ); ?>

						<div class="ywpc-countdown-admin ywpc-item-<?php echo $extra_class . $id; ?>">
                            <span class="ywpc-days">
                                <?php $days = ( ( is_rtl() ) ? strrev( $date['dd'] ) : $date['dd'] ); ?>
	                            <span class="ywpc-char-1"><?php echo substr( $days, 0, 1 ); ?></span><span class="ywpc-char-2"><?php echo substr( $days, 1, 1 ); ?></span>
	                            <?php echo _nx( 'd', 'dd', $date['dd'], 'Abbreviation for Days', 'yith-woocommerce-product-countdown' ); ?>
                            </span>
                            <span class="ywpc-hours">
                                <?php $hours = ( ( is_rtl() ) ? strrev( $date['hh'] ) : $date['hh'] ); ?>
	                            <span class="ywpc-char-1"><?php echo substr( $hours, 0, 1 ); ?></span><span class="ywpc-char-2"><?php echo substr( $hours, 1, 1 ); ?></span>
	                            <?php echo _nx( 'h', 'hh', $date['hh'], 'Abbreviation for Hours', 'yith-woocommerce-product-countdown' ); ?>
                            </span>
                            <span class="ywpc-minutes">
                                <?php $minutes = ( ( is_rtl() ) ? strrev( $date['mm'] ) : $date['mm'] ); ?>
	                            <span class="ywpc-char-1"><?php echo substr( $minutes, 0, 1 ); ?></span><span class="ywpc-char-2"><?php echo substr( $minutes, 1, 1 ); ?></span>
	                            <?php echo _nx( 'm', 'mm', $date['mm'], 'Abbreviation for Minutes', 'yith-woocommerce-product-countdown' ); ?>
                            </span>
                            <span class="ywpc-seconds">
                                <?php $seconds = ( ( is_rtl() ) ? strrev( $date['ss'] ) : $date['ss'] ); ?>
	                            <span class="ywpc-char-1"><?php echo substr( $seconds, 0, 1 ); ?></span><span class="ywpc-char-2"><?php echo substr( $seconds, 1, 1 ); ?></span>
	                            <?php echo _nx( 's', 'ss', $date['ss'], 'Abbreviation for Seconds', 'yith-woocommerce-product-countdown' ); ?>
                            </span>
						</div>
						<script type="text/javascript">
							jQuery(document).ready(function ($) {

								var countdown_div = $('.ywpc-item-<?php echo $extra_class . $id;?>'),
									countdown_html = countdown_div.clone(),
									first_char,
									second_char;

								<?php if (! is_rtl()):?>
								first_char = ' .ywpc-char-1';
								second_char = ' .ywpc-char-2';
								<?php else:?>
								second_char = ' .ywpc-char-1';
								first_char = ' .ywpc-char-2';
								<?php endif;?>

								$('.ywpc-days' + first_char, countdown_html).text('{d10}');
								$('.ywpc-days' + second_char, countdown_html).text('{d1}');

								$('.ywpc-hours' + first_char, countdown_html).text('{h10}');
								$('.ywpc-hours' + second_char, countdown_html).text('{h1}');

								$('.ywpc-minutes' + first_char, countdown_html).text('{m10}');
								$('.ywpc-minutes' + second_char, countdown_html).text('{m1}');

								$('.ywpc-seconds' + first_char, countdown_html).text('{s10}');
								$('.ywpc-seconds' + second_char, countdown_html).text('{s1}');

								countdown_div.countdown({
									until : $.countdown.UTCDate(<?php echo $date['gmt']; ?>, <?php echo date( 'Y', $date['to'] ); ?>, <?php echo( date( 'm', $date['to'] ) - 1 ); ?>, <?php echo date( 'd', $date['to'] ); ?>),
									layout: countdown_html.html()
								});

							});
						</script>

					<?php endif; ?>


					<?php if ( isset( $item['sold_qty'] ) && isset( $item['discount_qty'] ) ): ?>

						<div class="ywpc-label">
							<?php
							if ( ! is_rtl() ) {
								printf( __( '%d/%d Sold', 'yith-woocommerce-product-countdown' ), $item['sold_qty'], $item['discount_qty'] );
							} else {
								printf( __( '%d/%d Sold', 'yith-woocommerce-product-countdown' ), $item['discount_qty'], $item['sold_qty'] );
							}
							?>
						</div>
					<?php endif; ?>

					<?php
				}

			}

		}

		/**
		 * Get shortcode panel
		 *
		 * @since   1.0.0
		 * @return  void
		 * @author  Alberto Ruggiero
		 */
		public function ywpc_add_shortcodes_panel() {
			global $name_tab;
			include( YWPC_TEMPLATE_PATH . '/admin/lightbox.php' );
		}

		/**
		 * Add shortcode button to TinyMCE editor, adding filter on mce_external_plugins
		 *
		 * @since   1.0.0
		 * @return  void
		 * @author  Alberto Ruggiero
		 */
		public function ywpc_add_shortcodes_button() {

			if ( ! current_user_can( 'edit_posts' ) && ! current_user_can( 'edit_pages' ) ) {

				return;

			}

			if ( get_user_option( 'rich_editing' ) == 'true' ) {

				add_filter( 'mce_external_plugins', array( &$this, 'ywpc_add_shortcodes_tinymce_plugin' ) );
				add_filter( 'mce_buttons', array( &$this, 'ywpc_register_shortcodes_button' ) );

			}

		}

		/**
		 * Add a script to TinyMCE script list
		 *
		 * @since   1.0.0
		 *
		 * @param   $plugin_array
		 *
		 * @return  array
		 * @author  Alberto Ruggiero
		 */
		public function ywpc_add_shortcodes_tinymce_plugin( $plugin_array ) {

			$suffix = defined( 'SCRIPT_DEBUG' ) && SCRIPT_DEBUG ? '' : '.min';

			$plugin_array['ywpc_shortcode'] = YWPC_ASSETS_URL . '/js/ywpc-tinymce' . $suffix . '.js';

			return $plugin_array;

		}

		/**
		 * Make TinyMCE know a new button was included in its toolbar
		 *
		 * @since   1.0.0
		 *
		 * @param   $buttons
		 *
		 * @return  array()
		 * @author  Alberto Ruggiero
		 */
		public function ywpc_register_shortcodes_button( $buttons ) {

			array_push( $buttons, "|", "ywpc_shortcode" );

			return $buttons;

		}

		/**
		 * The markup of shortcode
		 *
		 * @since   1.0.0
		 *
		 * @param   $context
		 *
		 * @return  mixed
		 * @author  Alberto Ruggiero
		 */
		public function ywpc_media_buttons_context( $context ) {

			$out = '<a id="ywpc_shortcode" style="display:none" href="#" class="hide-if-no-js" title="' . __( 'Add YITH WooCommerce Product Countdown shortcode', 'yith-woocommerce-product-countdown' ) . '"></a>';

			return $context . $out;

		}

		/**
		 * Add quicktags to visual editor
		 *
		 * @since   1.0.0
		 * @return  void
		 * @author  Alberto Ruggiero
		 */
		public function ywpc_add_quicktags() {

			global $post_ID, $temp_ID;

			$query_args   = array(
				'action'    => 'ywpc_shortcodes_panel',
				'post_id'   => (int) ( 0 == $post_ID ? $temp_ID : $post_ID ),
				'KeepThis'  => true,
				'TB_iframe' => true
			);
			$lightbox_url = add_query_arg( $query_args, admin_url( 'admin.php' ) );

			?>
			<script type="text/javascript">

				if (window.QTags !== undefined) {
					QTags.addButton('ywpc_shortcode', 'add ywpc shortcode', function () {
						jQuery('#ywpc_shortcode').click()
					});
				}

				jQuery('#ywpc_shortcode').on('click', function () {

					tb_show('Add YITH WooCommerce Product Countdown shortcode', '<?php echo $lightbox_url ?>');

					ywpc_resize_thickbox();

				});

			</script>
			<?php
		}

		/**
		 * Enqueue admin script files
		 *
		 * @since   1.0.0
		 *
		 * @param   $hook
		 *
		 * @return  void
		 * @author  Alberto Ruggiero
		 */
		public function admin_scripts_premium( $hook ) {

			$template        = get_option( 'ywpc_template', '1' );
			$template_topbar = get_option( 'ywpc_topbar_template', '1' );

			wp_enqueue_style( 'ywpc-google-fonts', '//fonts.googleapis.com/css?family=Open+Sans:400,700' );
			wp_enqueue_style( 'ywpc-frontend', YWPC_ASSETS_URL . '/css/ywpc-style-' . $template . '.css' );
			wp_enqueue_style( 'ywpc-frontend-topbar', YWPC_ASSETS_URL . '/css/ywpc-bar-style-' . $template_topbar . '.css' );

			$suffix = defined( 'SCRIPT_DEBUG' ) && SCRIPT_DEBUG ? '' : '.min';

			if ( $hook == 'widgets.php' ) {

				wp_enqueue_script( 'select2', WC()->plugin_url() . '/assets/js/select2/select2' . $suffix . '.js', array( 'jquery' ), '3.5.2' );
				wp_enqueue_script( 'wc-enhanced-select', WC()->plugin_url() . '/assets/js/admin/wc-enhanced-select' . $suffix . '.js', array(
					'jquery',
					'select2'
				), WC_VERSION );

			}

			wp_enqueue_script( 'ywpc-admin-premium', YWPC_ASSETS_URL . '/js/ywpc-admin-premium' . $suffix . '.js' );
			wp_enqueue_script( 'ywpc-admin-premium-footer', YWPC_ASSETS_URL . '/js/ywpc-admin-footer-premium' . $suffix . '.js', array( 'woocommerce_settings' ), false, true );
			wp_enqueue_script( 'jquery-plugin', YWPC_ASSETS_URL . '/js/jquery.plugin' . $suffix . '.js', array( 'jquery' ) );
			wp_enqueue_script( 'jquery-countdown', YWPC_ASSETS_URL . '/js/jquery.countdown' . $suffix . '.js', array( 'jquery' ), '2.0.2' );

		}

		/**
		 * Get css class for countdown tab
		 *
		 * @since   1.0.0
		 * @return  string
		 * @author  Alberto Ruggiero
		 */
		public function get_tab_class() {

			return 'hide_if_grouped hide_if_external';

		}

		/**
		 * Add variable product notice in countdown tab
		 *
		 * @since   1.0.0
		 * @return  void
		 * @author  Alberto Ruggiero
		 */
		public function write_tab_options_notice() {

			global $post;

			$product = wc_get_product( $post->ID );

			if ( trim( $product->product_type ) == 'variable' ) {

				woocommerce_wp_checkbox(
					array(
						'id'          => '_ywpc_variations_global_countdown',
						'label'       => __( 'General countdown', 'yith-woocommerce-product-countdown' ),
						'description' => __( 'Set a general countdown for all the variations rather than for each single variation', 'yith-woocommerce-product-countdown' ),
					)
				);

			}

		}

		/**
		 * Add option in product edit tab
		 *
		 * @since   1.0.0
		 * @return  void
		 * @author  Alberto Ruggiero
		 */
		public function write_tab_options_premium() {

			woocommerce_wp_text_input(
				array(
					'id'                => '_ywpc_discount_qty',
					'label'             => __( 'Discounted products', 'yith-woocommerce-product-countdown' ),
					'placeholder'       => '',
					'desc_tip'          => 'true',
					'description'       => __( 'The number of discounted products.', 'yith-woocommerce-product-countdown' ),
					'default'           => '0',
					'type'              => 'number',
					'custom_attributes' => array(
						'step' => 'any',
						'min'  => '0'
					)
				)
			);
			woocommerce_wp_text_input(
				array(
					'id'                => '_ywpc_sold_qty',
					'label'             => __( 'Already sold products', 'yith-woocommerce-product-countdown' ),
					'placeholder'       => '',
					'desc_tip'          => 'true',
					'description'       => __( 'The number of already sold products.', 'yith-woocommerce-product-countdown' ),
					'type'              => 'number',
					'custom_attributes' => array(
						'step' => 'any',
						'min'  => '0'
					)
				)
			);

			global $post;

			$product = wc_get_product( $post->ID );

			if ( $product->product_type == 'variable' ) {

				?>

				<script type="text/javascript">

					jQuery(function ($) {

						$(window).load(function () {

							$('#_ywpc_discount_qty').change(function () {

								if (!$('#_ywpc_variations_global_countdown').is(':checked')) {

									$('.ywpc_discount_qty').val($(this).val());
									$('.woocommerce_variation').addClass('variation-needs-update');

								}

							});

							$('#_ywpc_sold_qty').change(function () {

								if (!$('#_ywpc_variations_global_countdown').is(':checked')) {

									$('.ywpc_sold_qty').val($(this).val());
									$('.woocommerce_variation').addClass('variation-needs-update');

								}

							});


						});

					});

				</script>

				<?php

			}

		}

		/**
		 * Save sales countdown tab options
		 *
		 * @since   1.0.0
		 * @return  void
		 * @author  Alberto Ruggiero
		 */
		public function save_countdown_tab_premium() {

			global $post;

			$product = wc_get_product( $post->ID );

			$wc_sold_qty     = isset( $_POST['_ywpc_sold_qty'] ) ? $_POST['_ywpc_sold_qty'] : 0;
			$wc_stock_qty    = isset( $_POST['_stock'] ) ? $_POST['_stock'] : 0;
			$wc_manage_stock = isset( $_POST['_manage_stock'] ) ? $_POST['_manage_stock'] : 'no';
			$wc_discount_qty = isset( $_POST['_ywpc_discount_qty'] ) ? $_POST['_ywpc_discount_qty'] : 0;

			if ( trim( $product->product_type ) == 'variable' ) {

				$override_variations = isset( $_POST['_ywpc_variations_global_countdown'] ) ? 'yes' : 'no';
				update_post_meta( $post->ID, '_ywpc_variations_global_countdown', $override_variations );

				if ( $override_variations != 'yes' ) {

					$wc_sold_qty     = 0;
					$wc_discount_qty = 0;

				}

			}

			if ( $wc_manage_stock == 'yes' ) {

				if ( $wc_stock_qty < 1 ) {

					$wc_discount_qty = 0;

				} elseif ( $wc_discount_qty > $wc_stock_qty ) {

					$wc_discount_qty = $wc_stock_qty;

				}

			}

			update_post_meta( $post->ID, '_ywpc_sold_qty', esc_attr( $wc_sold_qty ) );
			update_post_meta( $post->ID, '_ywpc_discount_qty', esc_attr( $wc_discount_qty ) );

		}

		/**
		 * Add sales options to product variable
		 *
		 * @since   1.0.0
		 *
		 * @param   $loop
		 * @param   $variation_data
		 * @param   $variation
		 *
		 * @return  void
		 * @author  Alberto Ruggiero
		 */
		public function add_sale_options_product_variable( $loop, $variation_data, $variation ) {

			$sale_price_dates_from = ( $date = get_post_meta( $variation->ID, '_ywpc_sale_price_dates_from', true ) ) ? date_i18n( 'Y-m-d', $date ) : '';
			$sale_price_dates_to   = ( $date = get_post_meta( $variation->ID, '_ywpc_sale_price_dates_to', true ) ) ? date_i18n( 'Y-m-d', $date ) : '';
			$discount_qty          = ( $dq = get_post_meta( $variation->ID, '_ywpc_discount_qty', true ) ) ? $dq : '';
			$sold_qty              = ( $sq = get_post_meta( $variation->ID, '_ywpc_sold_qty', true ) ) ? $sq : '';

			?>
			<div class="ywpc-dates">
				<p class="form-row form-row-first">
					<label><?php _e( 'Countdown start date', 'yith-woocommerce-product-countdown' ); ?></label>
					<input type="text" class="ywpc_sale_price_dates_from ywpc-variation-field" name="_ywpc_sale_price_dates_from_var[<?php echo $loop; ?>]" value="<?php echo $sale_price_dates_from; ?>" placeholder="<?php echo esc_attr_x( 'From&hellip;', 'placeholder', 'yith-woocommerce-product-countdown' ) ?> YYYY-MM-DD" maxlength="10" pattern="[0-9]{4}-(0[1-9]|1[012])-(0[1-9]|1[0-9]|2[0-9]|3[01])" />
				</p>

				<p class="form-row form-row-last">
					<label><?php _e( 'Countdown end date', 'yith-woocommerce-product-countdown' ); ?></label>
					<input type="text" class="ywpc_sale_price_dates_to ywpc-variation-field" name="_ywpc_sale_price_dates_to_var[<?php echo $loop; ?>]" value="<?php echo $sale_price_dates_to; ?>" placeholder="<?php echo esc_attr_x( 'To&hellip;', 'placeholder', 'yith-woocommerce-product-countdown' ) ?> YYYY-MM-DD" maxlength="10" pattern="[0-9]{4}-(0[1-9]|1[012])-(0[1-9]|1[0-9]|2[0-9]|3[01])" />
				</p>
			</div>
			<div class="ywpc-sales">
				<p class="form-row form-row-first">
					<label><?php _e( 'Discounted products', 'yith-woocommerce-product-countdown' ); ?><?php echo wc_help_tip( __( 'The number of discounted products.', 'yith-woocommerce-product-countdown' ) ); ?></label>
					<input type="number" class="ywpc_discount_qty ywpc-variation-field" name="_ywpc_discount_qty_var[<?php echo $loop; ?>]" value="<?php echo $discount_qty; ?>" step="any" min="0" />
				</p>

				<p class="form-row form-row-last">
					<label><?php _e( 'Already sold products', 'yith-woocommerce-product-countdown' ); ?><?php echo wc_help_tip( __( 'Already sold products.', 'yith-woocommerce-product-countdown' ) ); ?></label>
					<input type="number" class="ywpc_sold_qty ywpc-variation-field" name="_ywpc_sold_qty_var[<?php echo $loop; ?>]" value="<?php echo $sold_qty; ?>" step="any" min="0" />
				</p>
			</div>
			<?php

		}

		/**
		 * Save sales options of product variations
		 *
		 * @since   1.0.0
		 *
		 * @param   $variation_id
		 * @param   $loop
		 *
		 * @return  void
		 * @author  Alberto Ruggiero
		 */
		public function save_sale_options_product_variable( $variation_id, $loop ) {

			$override_variations = isset( $_POST['_ywpc_variations_global_countdown'] ) ? 'yes' : 'no';

			if ( $override_variations == 'yes' ) {

				update_post_meta( $variation_id, '_ywpc_sold_qty', 0 );
				update_post_meta( $variation_id, '_ywpc_discount_qty', 0 );
				update_post_meta( $variation_id, '_ywpc_sale_price_dates_from', '' );
				update_post_meta( $variation_id, '_ywpc_sale_price_dates_to', '' );

			} else {

				$wc_start_date   = isset( $_POST['_ywpc_sale_price_dates_from_var'][ $loop ] ) ? $_POST['_ywpc_sale_price_dates_from_var'][ $loop ] : '';
				$wc_end_date     = isset( $_POST['_ywpc_sale_price_dates_to_var'][ $loop ] ) ? $_POST['_ywpc_sale_price_dates_to_var'][ $loop ] : '';
				$wc_sale_qty     = isset( $_POST['_ywpc_sold_qty_var'][ $loop ] ) ? $_POST['_ywpc_sold_qty_var'][ $loop ] : 0;
				$wc_discount_qty = isset( $_POST['_ywpc_discount_qty_var'][ $loop ] ) ? $_POST['_ywpc_discount_qty_var'][ $loop ] : 0;
				$wc_stock_qty    = isset( $_POST['variable_stock'][ $loop ] ) ? $_POST['variable_stock'][ $loop ] : 0;
				$wc_manage_stock = isset( $_POST['variable_manage_stock'][ $loop ] ) ? $_POST['variable_manage_stock'][ $loop ] : 'off';

				if ( $wc_manage_stock == 'on' ) {

					if ( $wc_stock_qty < 1 ) {

						$wc_discount_qty = 0;

					} elseif ( $wc_discount_qty > $wc_stock_qty ) {

						$wc_discount_qty = $wc_stock_qty;

					}

				}

				update_post_meta( $variation_id, '_ywpc_sold_qty', $wc_sale_qty );
				update_post_meta( $variation_id, '_ywpc_discount_qty', $wc_discount_qty );
				update_post_meta( $variation_id, '_ywpc_sale_price_dates_from', $wc_start_date ? strtotime( $wc_start_date ) : '' );
				update_post_meta( $variation_id, '_ywpc_sale_price_dates_to', $wc_end_date ? strtotime( $wc_end_date ) : '' );

				if ( $wc_end_date && ! $wc_start_date ) {
					$wc_start_date = date( 'Y-m-d' );
					update_post_meta( $variation_id, '_ywpc_sale_price_dates_from', strtotime( $wc_start_date ) );
				}

			}

		}

		/**
		 * FRONTEND FUNCTIONS
		 */

		/**
		 * Check and correct quantity sold
		 *
		 * @since   1.0.0
		 * @return  array
		 * @author  Alberto Ruggiero
		 */
		public function update_quantity_product_sold() {

			if ( isset( $_GET['ywpc'] ) ) {

				$order_id = $_GET['ywpc'];

				$processed = get_post_meta( $order_id, '_ywpc_processed', true );

				if ( $processed != 'yes' ) {

					$order = new WC_Order( $order_id );

					$items = $order->get_items();

					foreach ( $items as $item ) {

						$has_ywpc = get_post_meta( $item['product_id'], '_ywpc_enabled', true );

						if ( $has_ywpc == 'yes' ) {

							$time_from = get_post_meta( $item['product_id'], '_ywpc_sale_price_dates_from', true );

							$current_time = strtotime( current_time( "Y-m-d G:i:s" ) );
							if ( $time_from > $current_time ) {
								continue;
							}

							if ( $item['variation_id'] == 0 ) {
								$sold_qty     = get_post_meta( $item['product_id'], '_ywpc_sold_qty', true );
								$variation_id = false;
								$product_id   = $item['product_id'];
							} else {
								$sold_qty     = get_post_meta( $item['variation_id'], '_ywpc_sold_qty', true );
								$variation_id = $item['variation_id'];
								$product_id   = $item['product_id'];
							}

							$sold_qty += $item['qty'];

							$id = ( $variation_id ) ? $variation_id : $product_id;

							update_post_meta( $id, '_ywpc_sold_qty', esc_attr( $sold_qty ) );

						}

					}

					update_post_meta( $order_id, '_ywpc_processed', 'yes' );

				}

			}

		}

		/**
		 * Check and correct quantity in sale
		 *
		 * @since   1.0.0
		 *
		 * @param   $data
		 *
		 * @return  array
		 * @author  Alberto Ruggiero
		 */
		public function correct_quantity_product( $data ) {

			if ( isset( $data['product_id'] ) ) {
				$discount_qty = get_post_meta( $data['product_id'], '_ywpc_discount_qty', true );
				$sold_qty     = get_post_meta( $data['product_id'], '_ywpc_sold_qty', true );
				$sold_qty     = $sold_qty ? $sold_qty : 0;

				if ( $discount_qty ) {

					$available_qty = $discount_qty - $sold_qty;

					if ( $available_qty > 0 && $available_qty < $data['quantity'] ) {

						$data['quantity'] = $available_qty;

					}

				}

			}

			return $data;

		}

		/**
		 * Get args for timer and sale bar
		 *
		 * @since   1.0.0
		 *
		 * @param   $value
		 * @param   $prod_id
		 * @param   $extra_class
		 *
		 * @return  array
		 * @author  Alberto Ruggiero
		 */
		public function get_product_args( $value, $prod_id = '', $extra_class = '' ) {

			global $post;

			$result = array(
				'items' => array(),
			);

			if ( $prod_id != '' ) {

				$id = $prod_id;

			} else {

				$id = $post->ID;

			}

			$result['class'] = $extra_class;

			$product          = wc_get_product( $id );
			$current_time     = strtotime( current_time( "Y-m-d G:i:s" ) );
			$before_sale      = get_option( 'ywpc_before_sale_start' );
			$has_ywpc         = get_post_meta( $id, '_ywpc_enabled', true );
			$end_sale         = get_option( 'ywpc_end_sale' );
			$end_sale_summary = get_option( 'ywpc_end_sale_summary' );

			if ( $has_ywpc == 'yes' ) {

				$variation_global = get_post_meta( $id, '_ywpc_variations_global_countdown', true );


				if ( $product->product_type != 'variable' || ( $product->product_type == 'variable' && $variation_global == 'yes' ) ) {

					$stock_status = get_post_meta( $id, '_stock_status', true );
					if ( $stock_status != 'outofstock' ) {

						$expired = false;

						$sale_start   = get_post_meta( $id, '_ywpc_sale_price_dates_from', true );
						$sale_end     = get_post_meta( $id, '_ywpc_sale_price_dates_to', true );
						$discount_qty = get_post_meta( $id, '_ywpc_discount_qty', true );
						$sold_qty     = get_post_meta( $id, '_ywpc_sold_qty', true );

						$result['items'][ $id ]['show_bar'] = 'hide';
						$result['items'][ $id ]['expired']  = 'valid';

						if ( empty( $sold_qty ) ) {
							$sold_qty = 0;
						}

						if ( $sold_qty < $discount_qty ) {

							$result['items'][ $id ]['show_bar']     = 'show';
							$result['items'][ $id ]['sold_qty']     = $sold_qty;
							$result['items'][ $id ]['discount_qty'] = $discount_qty;
							$result['items'][ $id ]['percent']      = intval( $sold_qty / $discount_qty * 100 );

						} else {

							if ( $sold_qty != 0 && $discount_qty != 0 ) {

								$result['items'][ $id ]['show_bar'] = 'hide';
								$expired                            = true;

							}

						}

						if ( ! empty( $sale_end ) && ! empty( $sale_start ) ) {

							if ( $current_time < $sale_start && $before_sale == 'yes' ) {

								$result['items'][ $id ]['before']   = true;
								$result['items'][ $id ]['end_date'] = $sale_start;

							} elseif ( $current_time >= $sale_start && $current_time <= $sale_end ) {

								$result['items'][ $id ]['before']   = false;
								$result['items'][ $id ]['end_date'] = $sale_end;

							} elseif ( $current_time > $sale_end ) {

								$expired = true;

							}

						}

						if ( $expired ) {

							$result['items'][ $id ]['show_bar'] = 'hide';

							if ( $end_sale == 'disable' && $end_sale_summary == 'yes' && $discount_qty > 0 ) {

								$result['items'][ $id ]['show_bar']     = 'show';
								$result['items'][ $id ]['sold_qty']     = $sold_qty;
								$result['items'][ $id ]['discount_qty'] = $discount_qty;
								$result['items'][ $id ]['percent']      = intval( $sold_qty / $discount_qty * 100 );

							}

							$result['items'][ $id ]['expired'] = 'expired';

						}

					}

				} else {
					$product_variables = $product->get_available_variations();

					if ( count( array_filter( $product_variables ) ) > 0 ) {
						$product_variables = array_filter( $product_variables );

						$result['active_var'] = 0;
						$result['variable']   = true;

						$default_atts = get_post_meta( $product->id, '_default_attributes', true );

						$variation_points = array();

						foreach ( $product_variables as $product_variable ) {

							$stock_status = get_post_meta( $product_variable['variation_id'], '_stock_status', true );

							if ( $stock_status != 'outofstock' ) {

								$expired = false;

								$sale_start   = get_post_meta( $product_variable['variation_id'], '_ywpc_sale_price_dates_from', true );
								$sale_end     = get_post_meta( $product_variable['variation_id'], '_ywpc_sale_price_dates_to', true );
								$discount_qty = get_post_meta( $product_variable['variation_id'], '_ywpc_discount_qty', true );
								$sold_qty     = get_post_meta( $product_variable['variation_id'], '_ywpc_sold_qty', true );

								$discount_qty = ( empty( $discount_qty ) ? 0 : $discount_qty );
								$sold_qty     = ( empty( $sold_qty ) ? 0 : $sold_qty );

								$result['items'][ $product_variable['variation_id'] ]['show_bar'] = 'hide';
								$result['items'][ $product_variable['variation_id'] ]['expired']  = 'valid';

								if ( $sold_qty < $discount_qty ) {

									$result['items'][ $product_variable['variation_id'] ]['show_bar']     = 'show';
									$result['items'][ $product_variable['variation_id'] ]['sold_qty']     = $sold_qty;
									$result['items'][ $product_variable['variation_id'] ]['discount_qty'] = $discount_qty;
									$result['items'][ $product_variable['variation_id'] ]['percent']      = ( $sold_qty && $discount_qty ) ? intval( $sold_qty / $discount_qty * 100 ) : 0;

								} else {

									if ( $sold_qty != 0 && $discount_qty != 0 ) {

										$result['items'][ $product_variable['variation_id'] ]['show_bar'] = 'hide';

										$expired = true;

									}

								}

								if ( ! empty( $sale_end ) && ! empty( $sale_start ) ) {

									if ( $current_time < $sale_start && $before_sale == 'yes' ) {

										$result['items'][ $product_variable['variation_id'] ]['before']   = true;
										$result['items'][ $product_variable['variation_id'] ]['end_date'] = $sale_start;

									} elseif ( $current_time >= $sale_start && $current_time <= $sale_end ) {

										$result['items'][ $product_variable['variation_id'] ]['before']   = false;
										$result['items'][ $product_variable['variation_id'] ]['end_date'] = $sale_end;

									} elseif ( $current_time > $sale_end ) {

										$expired = true;

									}

								}

								if ( $expired ) {

									$result['items'][ $product_variable['variation_id'] ]['show_bar'] = 'hide';

									if ( $end_sale == 'disable' && $end_sale_summary == 'yes' ) {

										$result['items'][ $product_variable['variation_id'] ]['show_bar']     = 'show';
										$result['items'][ $product_variable['variation_id'] ]['sold_qty']     = $sold_qty;
										$result['items'][ $product_variable['variation_id'] ]['discount_qty'] = $discount_qty;
										$result['items'][ $product_variable['variation_id'] ]['percent']      = ( $sold_qty && $discount_qty ) ? intval( $sold_qty / $discount_qty * 100 ) : 0;

									}

									$result['items'][ $product_variable['variation_id'] ]['expired'] = 'expired';

								}

								if ( $default_atts ) {

									foreach ( $default_atts as $key => $val ) {

										$variation_points[ $product_variable['variation_id'] ] = 0;

										if ( isset( $product_variable['attributes'][ 'attribute_' . $key ] ) && $product_variable['attributes'][ 'attribute_' . $key ] != '' ) {

											if ( $product_variable['attributes'][ 'attribute_' . $key ] == $val ) {

												$variation_points[ $product_variable['variation_id'] ] ++;

											}

										}

									}

								}

							}

						}

						if ( ! empty( $variation_points ) ) {

							$result['active_var'] = max( $variation_points ) > 0 ? array_search( max( $variation_points ), $variation_points ) : 0;

						}

					}

				}

			}

			return $result;

		}

		/**
		 * Get countdown e sale bar position in product page
		 *
		 * @since   1.0.0
		 * @return  array
		 * @author  Alberto Ruggiero
		 */
		public function get_position_product() {

			$position = get_option( 'ywpc_position_product' );

			switch ( $position ) {

				case '1':
					return array(
						'hook'     => 'single_product',
						'priority' => 15
					);
					break;

				case '2':
					return array(
						'hook'     => 'single_product',
						'priority' => 25
					);
					break;

				case '3':
					return array(
						'hook'     => 'after_single_product',
						'priority' => 5
					);
					break;

				case '4':
					return array(
						'hook'     => 'after_single_product',
						'priority' => 15
					);
					break;

				case '5':
					return array(
						'hook'     => 'after_single_product',
						'priority' => 25
					);
					break;

				default:
					return array(
						'hook'     => 'before_single_product',
						'priority' => 5
					);

			}

		}

		/**
		 * Get countdown e sale bar position in product page
		 *
		 * @since   1.0.0
		 * @return  array
		 * @author  Alberto Ruggiero
		 */
		public function get_position_category() {

			$position = get_option( 'ywpc_position_category' );

			switch ( $position ) {

				case '1':
					return array(
						'hook'     => 'after_shop_loop_item_title',
						'priority' => 9
					);
					break;

				case '2':
					return array(
						'hook'     => 'after_shop_loop_item',
						'priority' => 9
					);
					break;

				case '3':
					return array(
						'hook'     => 'after_shop_loop_item',
						'priority' => 15
					);
					break;

				default:
					return array(
						'hook'     => 'before_shop_loop_item_title',
						'priority' => 15
					);

			}

		}

		/**
		 * Get timer title
		 *
		 * @since   1.0.0
		 *
		 * @param   $value
		 * @param   $before
		 *
		 * @return  string
		 * @author  Alberto Ruggiero
		 */
		public function get_timer_title( $value, $before ) {

			$arg = '';

			if ( $before === true ) {
				$arg = '_before';
			}

			return get_option( 'ywpc_timer_title' . $arg );

		}

		/**
		 * Add countdown css to product page
		 *
		 * @since   1.0.0
		 * @return  void
		 * @author  Alberto Ruggiero
		 */
		public function get_custom_css() {

			?>
			<style type="text/css">

				<?php if ( get_option( 'ywpc_timer_title' ) == '' ) : ?>

				.ywpc-countdown > .ywpc-header,
				.ywpc-countdown-loop > .ywpc-header {
					display: none;
				}

				<?php endif;?>

				<?php if ( get_option( 'ywpc_sale_bar_title' ) == '' ) : ?>

				.ywpc-sale-bar > .ywpc-header,
				.ywpc-sale-bar-loop > .ywpc-header {
					display: none;
				}

				<?php endif; ?>

				<?php if ( get_option( 'ywpc_appearance' ) == 'cust' ) : ?>

				<?php

				$text_font_size       = get_option( 'ywpc_text_font_size', 25 );
				$text_font_size_loop  = get_option( 'ywpc_text_font_size_loop', 15 );
				$timer_font_size      = get_option( 'ywpc_timer_font_size', 28 );
				$timer_font_size_loop = get_option( 'ywpc_timer_font_size_loop', 15 );
				$text_color           = get_option( 'ywpc_text_color', '#a12418' );
				$border_color         = get_option( 'ywpc_border_color', '#dbd8d8' );
				$back_color           = get_option( 'ywpc_back_color', '#fafafa' );
				$timer_fore_color     = get_option( 'ywpc_timer_fore_color', '#3c3c3c' );
				$timer_back_color     = get_option( 'ywpc_timer_back_color', '#ffffff' );
				$bar_fore_color       = get_option( 'ywpc_bar_fore_color', '#a12418' );
				$bar_back_color       = get_option( 'ywpc_bar_back_color', '#e6e6e6' );

				?>

				.ywpc-countdown,
				.ywpc-sale-bar {
					background: <?php echo $back_color; ?>;
					border: 1px solid <?php echo $border_color; ?>;
				}

				.ywpc-countdown > .ywpc-header,
				.ywpc-sale-bar > .ywpc-header {
					color: <?php echo $text_color; ?>;
					font-size: <?php echo $text_font_size; ?>px;
				}

				.ywpc-countdown-loop > .ywpc-header,
				.ywpc-sale-bar-loop > .ywpc-header {
					color: <?php echo $text_color; ?>;
					font-size: <?php echo $text_font_size_loop; ?>px;
				}

				<?php if ( get_option( 'ywpc_template', '1' ) == '1' ) : ?>

				.ywpc-countdown > .ywpc-timer > div > .ywpc-amount > span {
					background: <?php echo $timer_back_color; ?>;
					color: <?php echo $timer_fore_color; ?>;
					font-size: <?php echo $timer_font_size; ?>px;

				}

				.ywpc-countdown-loop > .ywpc-timer > div > .ywpc-amount > span {
					background: <?php echo $timer_back_color; ?>;
					color: <?php echo $timer_fore_color; ?>;
					font-size: <?php echo $timer_font_size_loop; ?>px;

				}

				<?php else: ?>

				.ywpc-countdown > .ywpc-timer > div > .ywpc-amount,
				.ywpc-countdown-loop > .ywpc-timer > div > .ywpc-amount {
					background: <?php echo $timer_back_color; ?>;
				}

				.ywpc-countdown > .ywpc-timer > div > .ywpc-amount > span {
					color: <?php echo $timer_fore_color; ?>;
					font-size: <?php echo $timer_font_size; ?>px;
				}

				.ywpc-countdown-loop > .ywpc-timer > div > .ywpc-amount > span {
					color: <?php echo $timer_fore_color; ?>;
					font-size: <?php echo $timer_font_size_loop; ?>px;
				}

				<?php endif; ?>

				.ywpc-sale-bar > .ywpc-bar > .ywpc-back,
				.ywpc-sale-bar-loop > .ywpc-bar > .ywpc-back {
					background: <?php echo $bar_back_color; ?>;
				}

				.ywpc-sale-bar > .ywpc-bar > .ywpc-back > .ywpc-fore,
				.ywpc-sale-bar-loop > .ywpc-bar > .ywpc-back > .ywpc-fore {
					background: <?php echo $bar_fore_color; ?>;
				}

				<?php endif; ?>

				<?php if ( get_option( 'ywpc_topbar_appearance' ) == 'cust' &&  get_option( 'ywpc_topbar_enable' ) == 'yes') : ?>

				<?php

				$topbar_text_font_size   = get_option( 'ywpc_topbar_text_font_size', 30 );
				$topbar_timer_font_size  = get_option( 'ywpc_topbar_timer_font_size', 18 );
				$topbar_text_color       = get_option( 'ywpc_topbar_text_color', '#a12418' );
				$topbar_label_color      = get_option( 'ywpc_topbar_text_label_color', '#232323' );
				$topbar_back_color       = get_option( 'ywpc_topbar_back_color', '#ffba00' );
				$topbar_timer_text_color = get_option( 'ywpc_topbar_timer_text_color', '#363636' );
				$topbar_timer_back_color = get_option( 'ywpc_topbar_timer_back_color', '#ffffff' );
				$topbar_border_color     = get_option( 'ywpc_topbar_timer_border_color', '#ff8a00' );

				?>

				.ywpc-countdown-topbar {
					background: <?php echo $topbar_back_color; ?>;
				}

				.ywpc-countdown-topbar > .ywpc-header {
					color: <?php echo $topbar_text_color; ?>;
					font-size: <?php echo $topbar_text_font_size; ?>px;
				}

				.ywpc-countdown-topbar > .ywpc-timer > div > .ywpc-label {
					color: <?php echo $topbar_label_color; ?>;
				}

				<?php if ( get_option( 'ywpc_topbar_template', '2' ) == '2' ) : ?>

				.ywpc-countdown-topbar > .ywpc-timer > div > .ywpc-amount > span {
					background: <?php echo $topbar_timer_back_color; ?>;
					color: <?php echo $topbar_timer_text_color; ?>;
					font-size: <?php echo $topbar_timer_font_size; ?>px;
				}

				.ywpc-countdown-topbar > .ywpc-timer > div > .ywpc-amount {
					background: <?php echo $topbar_border_color; ?>;
				}

				<?php else: ?>

				.ywpc-countdown-topbar > .ywpc-timer > div > .ywpc-amount {
					background: <?php echo $topbar_timer_back_color; ?>;
					border: 1px solid <?php echo $topbar_border_color; ?>;
				}

				.ywpc-countdown-topbar > .ywpc-timer > div > .ywpc-amount > span {
					color: <?php echo $topbar_timer_text_color; ?>;
					font-size: <?php echo $topbar_timer_font_size; ?>px;
				}

				<?php endif; ?>

				<?php endif; ?>
			</style>

			<?php

		}

		/**
		 * Add sales bar to product page
		 *
		 * @since   1.0.0
		 *
		 * @param   $value
		 * @param   $what_show
		 * @param   $args
		 *
		 * @return  void
		 * @author  Alberto Ruggiero
		 */
		public function add_sales_bar_product( $value, $what_show, $args ) {

			if ( $what_show == 'bar' || $what_show == 'both' ) {

				include( YWPC_TEMPLATE_PATH . '/frontend/single-product-bar.php' );

			}

		}

		/**
		 * Add scripts to product page
		 *
		 * @since   1.0.0
		 *
		 * @param   $value
		 * @param   $args
		 *
		 * @return  void
		 * @author  Alberto Ruggiero
		 */
		public function add_script_product( $value, $args ) {

			if ( isset( $args['variable'] ) && $args['variable'] == true ) {
				?>

				<script type='text/javascript'>
					jQuery(window).load(function () {
						jQuery('input[name=\"variation_id\"]').change(function () {
							var pv_id = parseInt(jQuery(this).val());
							jQuery('.ywpc-countdown').hide();
							jQuery('.ywpc-sale-bar').hide();

							if (pv_id) {
								jQuery('.ywpc-item-' + pv_id).show();
							}
						});
					});
				</script>

				<?php
			}

		}

		/**
		 * Check if product/variation is valid or expired
		 *
		 * @since   1.0.0
		 *
		 * @param   $id
		 *
		 * @return  bool
		 * @author  Alberto Ruggiero
		 */
		public function check_ywpc_expiration( $id ) {

			$current_time       = strtotime( current_time( "Y-m-d G:i:s" ) );
			$before_sale        = get_option( 'ywpc_before_sale_start' );
			$before_sale_status = get_option( 'ywpc_before_sale_start_status' );
			$sale_start         = get_post_meta( $id, '_ywpc_sale_price_dates_from', true );
			$sale_end           = get_post_meta( $id, '_ywpc_sale_price_dates_to', true );
			$discount_qty       = get_post_meta( $id, '_ywpc_discount_qty', true );
			$sold_qty           = get_post_meta( $id, '_ywpc_sold_qty', true );

			$expired = false;

			if ( ! empty( $sale_start ) && ! empty( $sale_end ) ) {

				if ( $current_time < $sale_start && $before_sale == 'yes' ) {

					if ( $before_sale_status == 'yes' ) {
						$expired = true;
					} else {
						$expired = false;
					}

				} elseif ( $current_time >= $sale_start && $current_time <= $sale_end ) {

					$expired = false;

				} elseif ( $current_time > $sale_end ) {

					$expired = true;

				}

			}

			if ( ! $expired ) {

				if ( $sold_qty < $discount_qty ) {

					$expired = false;

				} else {

					if ( $sold_qty == 0 && $discount_qty == 0 || $discount_qty < $sold_qty ) {

						$expired = false;

					} else {

						$expired = true;

					}

				}

			}

			if ( defined( 'YWCTM_PREMIUM' ) && YWCTM_PREMIUM && get_option( 'ywpc_end_sale' ) == 'disable' ) {

				global $YITH_WC_Catalog_Mode;

				if ( get_option( 'ywctm_enable_plugin' ) == 'yes' && $YITH_WC_Catalog_Mode->check_user_admin_enable() ) {

					if ( get_option( 'ywctm_hide_cart_header' ) == 'yes' ) {

						$expired = true;

					} else {

						if ( get_option( 'ywctm_hide_add_to_cart_single' ) == 'yes' || get_option( 'ywctm_hide_add_to_cart_loop' ) == 'yes' ) {

							$ywctm_hide_price_users = ( get_option( 'ywctm_hide_price_users' ) != 'unregistered' ) ? true : false;
							$user_logged            = is_user_logged_in();

							if ( ! ( ! $ywctm_hide_price_users && $user_logged ) ) {

								$exclude_catalog  = get_post_meta( $id, '_ywctm_exclude_catalog_mode', true );
								$enable_exclusion = get_option( 'ywctm_exclude_hide_add_to_cart' );

								if ( $enable_exclusion == '' || $enable_exclusion == 'no' ) {

									$expired = true;

								} else {

									if ( $exclude_catalog == '' || $exclude_catalog == 'no' ) {

										$expired = true;

									}

								}

								$reverse_criteria = get_option( 'ywctm_exclude_hide_add_to_cart_reverse' );

								if ( $reverse_criteria == 'yes' ) {

									$expired = ! $expired;

								}

							}

						}

						if ( $YITH_WC_Catalog_Mode->check_price_hidden( $id ) ) {

							$expired = true;

						}

					}

				}

			}

			return $expired;

		}

		/**
		 * Check if ywpc needs to be showed in category page
		 *
		 * @since   1.0.0
		 * @return  void
		 * @author  Alberto Ruggiero
		 */
		public function check_show_ywpc_category() {

			global $post, $ywpc_loop;

			$has_countdown  = get_post_meta( $post->ID, '_ywpc_enabled', true );
			$show_countdown = get_option( 'ywpc_where_show' );

			if ( $has_countdown == 'yes' && ( ( $show_countdown == 'both' || $show_countdown == 'loop' ) || ( $show_countdown == 'code' && $ywpc_loop != '' ) ) ) {

				$args = $this->get_position_category();

				add_action( 'woocommerce_' . $args['hook'], array( $this, 'add_ywpc_category' ), $args['priority'] );

			}

		}

		/**
		 * Add sales countdown to category page
		 *
		 * @since   1.0.0
		 * @return  void
		 * @author  Alberto Ruggiero
		 */
		public function add_ywpc_category() {

			$what_show = get_option( 'ywpc_what_show' );

			global $post;

			$args = apply_filters( 'ywpc_product_args', array(
				'items' => array(
					$post->ID => get_post_meta( $post->ID, '_ywpc_sale_price_dates_to', true )
				)
			), '', ''
			);

			if ( $what_show != 'bar' || $what_show == 'both' ) {

				include( YWPC_TEMPLATE_PATH . '/frontend/category-timer.php' );

			}

			if ( $what_show == 'bar' || $what_show == 'both' ) {

				include( YWPC_TEMPLATE_PATH . '/frontend/category-bar.php' );

			}

		}

		/**
		 * Set ywpc shortcode
		 *
		 * @since   1.0.0
		 *
		 * @param   $atts
		 *
		 * @return  string
		 * @author  Alberto Ruggiero
		 */
		public function set_ywpc_shortcode( $atts ) {

			shortcode_atts( array(
				                'id'   => '',
				                'type' => ''
			                ), $atts );

			add_filter( 'widget_text', 'shortcode_unautop' );
			add_filter( 'widget_text', 'do_shortcode' );

			$ids = '';

			if ( isset( $atts['id'] ) ) {
				$ids = explode( ',', str_replace( ' ', '', $atts['id'] ) );
				$ids = array_map( 'trim', $ids );
			}

			if ( isset( $atts['type'] ) && $atts['type'] == 'single' ) {

				$what_show = get_option( 'ywpc_what_show' );

				$args = $this->get_product_args( '', $ids[0] );

				$args['shortcode'] = true;
				ob_start();

				if ( $what_show != 'bar' || $what_show == 'both' ) {

					include( YWPC_TEMPLATE_PATH . '/frontend/single-product-timer.php' );

				}

				if ( $what_show == 'bar' || $what_show == 'both' ) {

					include( YWPC_TEMPLATE_PATH . '/frontend/single-product-bar.php' );

				}

				$shortcode = ob_get_clean();

			} else {

				$options = array(
					'show_title'     => get_option( 'ywpc_shortcode_title', 'yes' ),
					'show_rating'    => get_option( 'ywpc_shortcode_rating', 'yes' ),
					'show_price'     => get_option( 'ywpc_shortcode_price', 'yes' ),
					'show_image'     => get_option( 'ywpc_shortcode_image', 'yes' ),
					'show_addtocart' => get_option( 'ywpc_shortcode_addtocart', 'yes' ),
				);

				ob_start();

				$this->get_ywpc_custom_loop( $ids, 'shortcode', $options );

				$shortcode = ob_get_clean();

			}

			return $shortcode;

		}

		/**
		 * Get custom loop for widget and shortcode
		 *
		 * @since   1.0.0
		 *
		 * @param   $ids
		 * @param   $type
		 * @param   $options
		 *
		 * @return  void
		 * @author  Alberto Ruggiero
		 */
		public function get_ywpc_custom_loop( $ids, $type, $options = array() ) {

			global $ywpc_loop;

			$ywpc_loop = 'ywpc_' . $type;

			if ( $ids ) {

				$query_args = array(
					'posts_per_page' => - 1,
					'no_found_rows'  => 1,
					'post_status'    => 'publish',
					'post_type'      => 'product',
					'post__in'       => $ids,
				);

			} else {

				$query_args = array(
					'posts_per_page' => - 1,
					'no_found_rows'  => 1,
					'post_status'    => 'publish',
					'post_type'      => 'product',
					'meta_query'     => array(
						'relation' => 'AND',
						array(
							'key'   => '_ywpc_enabled',
							'value' => 'yes',
						),
						array(
							'key'     => '_ywpc_sale_price_dates_from',
							'value'   => strtotime( 'NOW', current_time( 'timestamp' ) ),
							'compare' => '<=',
							'type'    => 'NUMERIC'
						),
						array(
							'key'     => '_ywpc_sale_price_dates_to',
							'value'   => strtotime( 'NOW', current_time( 'timestamp' ) ),
							'compare' => '>=',
							'type'    => 'NUMERIC'
						)
					)
				);

			}
			$products = new WP_Query( $query_args );

			if ( $products->have_posts() ) {

				?>
				<div class="woocommerce ywpc-<?php echo $type; ?> <?php echo apply_filters( 'ywpc_' . $type . '_div_loop_class', '' ); ?>">
					<ul class="products ywpc-<?php echo $type; ?>-products <?php echo apply_filters( 'ywpc_' . $type . '_ul_loop_class', '' ); ?>">
						<?php

						while ( $products->have_posts() ) : $products->the_post(); ?>
							<?php

							global $product;

							$args = $this->get_product_args( '', $product->id, $type );

							if ( $options['show_title'] != 'yes' ) {
								add_filter( 'the_title', array( $this, 'ywpc_loop_hide_filter' ), 999 );
							}

							if ( $options['show_rating'] != 'yes' ) {
								add_filter( 'woocommerce_product_get_rating_html', array(
									$this,
									'ywpc_loop_hide_filter'
								), 999 );
							}

							if ( $options['show_price'] != 'yes' ) {
								add_filter( 'woocommerce_get_price_html', array(
									$this,
									'ywpc_loop_hide_filter'
								), 999 );
							}

							if ( $options['show_image'] != 'yes' ) {
								add_filter( 'post_thumbnail_html', array( $this, 'ywpc_loop_hide_filter' ), 999 );
								add_filter( 'woocommerce_placeholder_img', array(
									$this,
									'ywpc_loop_hide_filter'
								), 999 );
							}

							if ( $options['show_addtocart'] != 'yes' ) {
								add_filter( 'woocommerce_loop_add_to_cart_link', array(
									$this,
									'ywpc_loop_hide_filter'
								), 999 );
							}

							$has_ywpc = get_post_meta( $product->id, '_ywpc_enabled', true );

							if ( $has_ywpc != 'yes' ) {
								continue;
							}

							if ( isset ( $args['active_var'] ) && $args['active_var'] == 0 ) {
								continue;
							}

							if ( $this->check_ywpc_expiration( ( isset ( $args['active_var'] ) && $args['active_var'] != 0 ) ? $args['active_var'] : $product->id ) ) {
								continue;
							};

							?>

							<?php wc_get_template( 'content-product.php' ); ?>

						<?php endwhile; ?>

					</ul>
				</div>
				<?php

			}

			wp_reset_query();

			$ywpc_loop = false;

		}

		/**
		 * Function for Widget and Shortcode to hide loop elements
		 *
		 * @since   1.0.0
		 *
		 * @param    $value
		 *
		 * @return  string
		 * @author  Alberto Ruggiero
		 */
		public function ywpc_loop_hide_filter( $value ) {

			global $ywpc_loop;

			if ( $ywpc_loop == 'ywpc_shortcode' || $ywpc_loop == 'ywpc_widget' ) {

				return '';

			} else {

				return $value;

			}

		}

		/**
		 * Hides "Add to cart" button from loop page (if option is enabled)
		 *
		 * @since   1.0.0
		 * @return  void
		 * @author  Alberto Ruggiero
		 */
		public function hide_add_to_cart_loop() {

			$result = $this->hide_add_to_cart_check();

			if ( ! empty( $result ) ) {

				if ( $result['type'] == 'simple' ) {

					remove_action( 'woocommerce_after_shop_loop_item', 'woocommerce_template_loop_add_to_cart', 10 );
					add_filter( 'woocommerce_loop_add_to_cart_link', '__return_empty_string', 10 );

				}

			} else {

				add_action( 'woocommerce_after_shop_loop_item', 'woocommerce_template_loop_add_to_cart', 10 );
				remove_filter( 'woocommerce_loop_add_to_cart_link', '__return_empty_string', 10 );

			}

		}

		/**
		 * Hides "Add to cart" button from single product page (if option is enabled)
		 *
		 * @since   1.0.0
		 * @return  void
		 * @author  Alberto Ruggiero
		 */
		public function hide_add_to_cart_single() {

			$result = $this->hide_add_to_cart_check();

			if ( ! empty( $result ) ) {

				$args = array();

				if ( ! class_exists( 'YITH_YWRAQ_Frontend' ) ) {

					$args[] = 'form.cart .quantity';

				}

				if ( $result['type'] == 'simple' ) {

					$args[] = 'form.cart button.single_add_to_cart_button';

				} else {
					//$args[] = '.single_variation_wrap .variations_button';

					$expired = ( ( isset( $result['ids'] ) && ! empty( $result['ids'] ) ) ? implode( ', ', $result['ids'] ) : '' );

					ob_start();

					?>

					var expired = [ <?php echo $expired ?> ],
					value = parseInt($('.single_variation_wrap .variation_id, .single_variation_wrap input[name="variation_id"]').val());

					if (expired.length > 0 && $.inArray(value, expired) != -1) {
					$('.single_variation_wrap .variations_button').hide()
					}

					$(document).on('woocommerce_variation_has_changed', function () {
					value = parseInt($('.single_variation_wrap .variation_id, .single_variation_wrap input[name="variation_id"]').val());

					if(expired.length > 0){
					if ( $.inArray(value, expired) == -1) {
					$('.single_variation_wrap .variations_button').show();
					} else {
					$('.single_variation_wrap .variations_button').hide();
					}
					}

					});

					<?php

					$inline_js = ob_get_clean();
					wc_enqueue_js( $inline_js );
				}

				$classes = implode( ', ', apply_filters( 'ywpc_hide_classes', $args ) );


				ob_start();
				?>
				<style>

					<?php echo $classes; ?>
					{

					<?php echo ( $result['type'] == 'simple'? 'display: none !important;': 'display: none;' ); ?>

					}

				</style>
				<?php
				echo ob_get_clean();

			}

		}

		/**
		 * Check if "Add to cart" needs to be hidden (if option is enabled)
		 *
		 * @since   1.0.0
		 *
		 * @param   $product_id
		 *
		 * @return  array
		 * @author  Alberto Ruggiero
		 */
		public function hide_add_to_cart_check( $product_id = false ) {

			$result = array();

			global $post;

			$id       = ( $product_id ) ? $product_id : $post->ID;
			$product  = wc_get_product( $id );
			$has_ywpc = get_post_meta( $id, '_ywpc_enabled', true );

			if ( $has_ywpc == 'yes' ) {

				if ( $product->product_type != 'variable' ) {

					if ( $this->check_ywpc_expiration( $id ) ) {

						$result['type'] = 'simple';

					}

				} else {

					$product_variables = $product->get_available_variations();

					if ( count( array_filter( $product_variables ) ) > 0 ) {
						$product_variables = array_filter( $product_variables );

						$result['type'] = 'variable';

						foreach ( $product_variables as $product_variable ) {

							if ( $this->check_ywpc_expiration( $product_variable['variation_id'] ) ) {

								$result['ids'][] = $product_variable['variation_id'];

							}

						}

					}
				}

			}

			return $result;

		}

		/**
		 * Avoid "Add to cart" action (if option is enabled)
		 *
		 * @since   1.0.0
		 *
		 * @param   $passed
		 * @param   $product_id
		 *
		 * @return  bool
		 * @author  Alberto Ruggiero
		 */
		public function avoid_add_to_cart( $passed, $product_id ) {


			$result = $this->hide_add_to_cart_check( $product_id );

			if ( ! empty( $result ) ) {
				if ( $result['type'] == 'simple' ) {
					$passed = false;
				}
			}

			return $passed;
		}

		/**
		 * Hide product form the shop
		 *
		 * @use      the_title filter
		 * @since    1.0.0
		 *
		 * @param    $query
		 *
		 * @return   string
		 * @author   Alberto Ruggiero
		 */
		public function hide_product_from_catalog( $query ) {

			$products_list = array();

			$product_args = array(
				'post_type'      => 'product',
				'post_status'    => 'publish',
				'posts_per_page' => - 1,
				'meta_key'       => '_ywpc_enabled',
				'meta_value'     => 'yes'
			);

			wp_reset_query();

			$expired = new WP_Query( $product_args );

			if ( $expired->have_posts() ) {

				while ( $expired->have_posts() ) {

					$expired->the_post();

					$product = wc_get_product( $expired->post->ID );

					if ( $this->check_ywpc_expiration( $expired->post->ID ) && $product->product_type != 'variable' ) {

						$products_list[] = $expired->post->ID;

					}

				}

			}

			wp_reset_postdata();

			if ( $products_list ) {

				$query->set( 'post__not_in', $products_list );

			}

		}

		/**
		 * Hide variation
		 *
		 * @since    1.0.0
		 *
		 * @param    $visible
		 * @param    $variation_id
		 *
		 * @return   bool
		 * @author   Alberto Ruggiero
		 */
		public function hide_variations( $visible, $variation_id ) {

			if ( $this->check_ywpc_expiration( $variation_id ) ) {

				$visible = false;

			}

			return $visible;

		}

		/**
		 * Avoid direct access to disabled products
		 *
		 *
		 * @use      template_redirect filter
		 * @since    1.0.0
		 * @return   string
		 * @author   Alberto Ruggiero
		 */
		public function avoid_direct_access() {

			global $post;

			if ( is_singular( 'product' ) ) {

				$product = wc_get_product( $post->ID );

				$has_ywpc = get_post_meta( $post->ID, '_ywpc_enabled', true );

				if ( $has_ywpc == 'yes' ) {

					if ( $this->check_ywpc_expiration( $post->ID ) && $product->product_type != 'variable' ) {

						include( get_query_template( '404' ) );
						exit;

					}

				}

			}

		}

		/**
		 * Initialize topbar
		 *
		 * @since   1.1.5
		 * @return  void
		 * @author  Alberto Ruggiero
		 */
		public function initialize_topbar() {

			if ( get_option( 'ywpc_topbar_enable' ) == 'yes' ) {

				add_filter( 'body_class', array( $this, 'add_body_classes' ) );

				add_action( 'wp_footer', array( $this, 'print_bar_countdown' ), 999 );
				add_action( 'wp_enqueue_scripts', array( $this, 'frontend_scripts_premium' ) );

			}

		}

		/**
		 * Add countdown all pages
		 *
		 * @since   1.0.0
		 * @return  void
		 * @author  Alberto Ruggiero
		 */
		public function print_bar_countdown() {

			$prod_id  = get_option( 'ywpc_topbar_product' );
			$has_ywpc = get_post_meta( $prod_id, '_ywpc_enabled', true );
			$args     = array();

			if ( $has_ywpc == 'yes' ) {

				$product      = wc_get_product( $prod_id );
				$current_time = strtotime( current_time( "Y-m-d G:i:s" ) );

				if ( $product->product_type != 'variable' ) {

					$sale_start = get_post_meta( $prod_id, '_ywpc_sale_price_dates_from', true );
					$sale_end   = get_post_meta( $prod_id, '_ywpc_sale_price_dates_to', true );

					if ( $current_time >= $sale_start && $current_time <= $sale_end ) {

						$args['id']       = $prod_id;
						$args['end_date'] = $sale_end;
						$args['type']     = 'simple';
					}

				} else {
					$product_variables = $product->get_available_variations();

					if ( count( array_filter( $product_variables ) ) > 0 ) {
						$product_variables = array_filter( $product_variables );

						foreach ( $product_variables as $product_variable ) {

							$check_default = get_post_meta( $product->id, '_default_attributes', true );

							if ( $check_default ) {

								$key_select_default = key( $check_default );
								$check_default      = $check_default[ $key_select_default ];
								$key_attr           = str_replace( 'attribute_', '', key( $product_variable['attributes'] ) );
								$data_attr          = $product_variable['attributes'][ 'attribute_' . $key_attr ];

								if ( $key_attr == $key_select_default && $check_default == $data_attr ) {

									$sale_start = get_post_meta( $product_variable['variation_id'], '_ywpc_sale_price_dates_from', true );
									$sale_end   = get_post_meta( $product_variable['variation_id'], '_ywpc_sale_price_dates_to', true );

									if ( ! empty( $sale_end ) && ! empty( $sale_start ) ) {

										if ( $current_time >= $sale_start && $current_time <= $sale_end ) {

											$args['id']       = $prod_id;
											$args['end_date'] = $sale_end;
											$args['type']     = 'variable';
											$args['url']      = '?attribute_' . $key_attr . '=' . $data_attr;

										}

									}

								}

							}

						}

					}

				}

				if ( ! empty( $args ) ) {
					include( YWPC_TEMPLATE_PATH . '/frontend/bar-timer.php' );

				}

			}

		}

		/**
		 * Enqueue frontend script files
		 *
		 * @since   1.0.0
		 * @return  void
		 * @author  Alberto Ruggiero
		 */
		public function frontend_scripts_premium() {

			$template = get_option( 'ywpc_topbar_template', '1' );
			$suffix   = defined( 'SCRIPT_DEBUG' ) && SCRIPT_DEBUG ? '' : '.min';

			wp_enqueue_style( 'ywpc-frontend-topbar', YWPC_ASSETS_URL . '/css/ywpc-bar-style-' . $template . '.css' );
			wp_enqueue_script( 'ywpc-premium-footer', YWPC_ASSETS_URL . '/js/ywpc-footer-premium' . $suffix . '.js', array( 'jquery' ), false, true );

			$theme = wp_get_theme();

			$js_vars = array(
				'theme' => $theme->name
			);

			wp_localize_script( 'ywpc-premium-footer', 'ywpc_footer', $js_vars );

		}

		/**
		 * Add classes to body
		 *
		 * @since   1.0.0
		 *
		 * @param   $classes
		 *
		 * @return  array
		 * @author  Alberto Ruggiero
		 */
		public function add_body_classes( $classes ) {

			$position = get_option( 'ywpc_topbar_position', 'top' );

			$classes[] = 'ywpc-' . $position;

			if ( is_admin_bar_showing() && $position == 'top' ) {
				$classes[] = 'ywpc-admin';
			}

			return $classes;

		}

		/**
		 * YITH FRAMEWORK
		 */

		/**
		 * Register plugins for activation tab
		 *
		 * @return  void
		 * @since   2.0.0
		 * @author  Andrea Grillo <andrea.grillo@yithemes.com>
		 */
		public function register_plugin_for_activation() {
			if ( ! class_exists( 'YIT_Plugin_Licence' ) ) {
				require_once 'plugin-fw/licence/lib/yit-licence.php';
				require_once 'plugin-fw/licence/lib/yit-plugin-licence.php';
			}
			YIT_Plugin_Licence()->register( YWPC_INIT, YWPC_SECRET_KEY, YWPC_SLUG );
		}

		/**
		 * Register plugins for update tab
		 *
		 * @return  void
		 * @since   2.0.0
		 * @author  Andrea Grillo <andrea.grillo@yithemes.com>
		 */
		public function register_plugin_for_updates() {
			if ( ! class_exists( 'YIT_Upgrade' ) ) {
				require_once( 'plugin-fw/lib/yit-upgrade.php' );
			}
			YIT_Upgrade()->register( YWPC_SLUG, YWPC_INIT );
		}

	}

}

if ( ! function_exists( 'alter_checkout_url' ) ) {

	/**
	 * Alters "Thank you" page url for further operations
	 *
	 * @since   1.0.0
	 *
	 * @param   $result
	 * @param   $order_id
	 *
	 * @return  mixed
	 * @author  Alberto Ruggiero
	 */
	function alter_checkout_url( $url, $order ) {

		$url .= '&ywpc=' . $order->id;

		return $url;

	}

	add_filter( 'woocommerce_get_checkout_order_received_url', 'alter_checkout_url', 10, 2 );

}

if ( ! function_exists( 'wc_help_tip' ) && version_compare( WC()->version, '2.5.0', '<' ) ) {

	/**
	 * Display a WooCommerce help tip. (Added for compatibility with WC 2.4)
	 *
	 * @since  2.5.0
	 *
	 * @param  string $tip        Help tip text
	 * @param  bool   $allow_html Allow sanitized HTML if true or escape
	 *
	 * @return string
	 */
	function wc_help_tip( $tip, $allow_html = false ) {
		if ( $allow_html ) {
			$tip = wc_sanitize_tooltip( $tip );
		} else {
			$tip = esc_attr( $tip );
		}

		return '<span class="woocommerce-help-tip" data-tip="' . $tip . '"></span>';
	}

}

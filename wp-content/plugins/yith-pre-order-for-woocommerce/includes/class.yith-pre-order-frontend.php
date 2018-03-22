<?php
/*
 * This file belongs to the YIT Framework.
 *
 * This source file is subject to the GNU GENERAL PUBLIC LICENSE (GPL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://www.gnu.org/licenses/gpl-3.0.txt
 */
if ( ! defined( 'YITH_WCPO_VERSION' ) ) {
	exit( 'Direct access forbidden.' );
}

/**
 *
 *
 * @class      YITH_Pre_Order_Frontend
 * @package    Yithemes
 * @since      Version 1.0.0
 * @author     Carlos Mora <carlos.eugenio@yourinspiration.it>
 *
 */

if ( ! class_exists( 'YITH_Pre_Order_Frontend' ) ) {
	/**
	 * Class YITH_Pre_Order_Frontend
	 *
	 * @author Carlos Mora <carlos.eugenio@yourinspiration.it>
	 */
	class YITH_Pre_Order_Frontend {

		/**
		 * Construct
		 *
		 * @author Carlos Mora <carlos.eugenio@yourinspiration.it>
		 * @since  1.0
		 */
		public function __construct() {
			if ( 'no' == get_option( 'yith_wcpo_enable_pre_order', 'no' ) ) {
				return false;
			}
			add_action( 'wp_enqueue_scripts', array( $this, 'enqueue_scripts' ) );
			add_filter( 'woocommerce_product_single_add_to_cart_text', array( $this, 'pre_order_label' ), 20, 2 );
			add_filter( 'woocommerce_product_add_to_cart_text', array( $this, 'pre_order_label' ), 10, 2 );
			//*********** Compatibility for The Polygon and Bazar theme ***********//
			add_filter( 'add_to_cart_text', array( $this, 'pre_order_add_to_cart_text' ), 20 );
			add_filter( 'single_add_to_cart_text', array( $this, 'pre_order_add_to_cart_text' ), 20 );
			//***********************************************************//

			add_filter( 'woocommerce_get_item_downloads', array( $this, 'hide_pre_order_download_link_from_single_order_page' ), 10, 3 );
			add_filter( 'woocommerce_customer_get_downloadable_products', array( $this, 'delete_pre_order_download_from_array' ) );
			add_filter( 'woocommerce_available_variation', array( $this, 'add_variable_pre_order_data' ), 10, 3 );
			add_action( 'woocommerce_checkout_update_order_meta', array( $this, 'add_pre_order_flag_to_new_order' ), 10, 2 );
			if ( version_compare( WC()->version, '3.0.0', '<' ) ) {
				add_action( 'woocommerce_order_add_product', array( $this, 'add_order_item_meta_legacy' ), 10, 3 );
			} else {
				add_action( 'woocommerce_new_order_item', array( $this, 'add_order_item_meta' ), 10, 2 );
			}
		}


		public function pre_order_label( $text, $product ) {
			global $sitepress;
			$_product_id = yit_get_product_id( $product );
			$product_id  = $sitepress ? yit_wpml_object_id( $_product_id, 'product', true, $sitepress->get_default_language() ) : $_product_id;
			$pre_order   = new YITH_Pre_Order_Product( $product_id );
			$is_preorder = $pre_order->get_pre_order_status();
			if ( 'yes' == $is_preorder ) {
				$label                = $pre_order->get_pre_order_label();
				$plugin_options_label = get_option( 'yith_wcpo_default_add_to_cart_label' );
				if ( ! empty( $label ) ) {
					return $label;
				} else if ( ! empty( $plugin_options_label ) ) {
					return $plugin_options_label;
				} else {
					return __( 'Pre-Order Now', 'yith-woocommerce-pre-order' );
				}
			}


			return $text;
		}

		//*********** Compatibility for The Polygon theme ***********//
		public function pre_order_add_to_cart_text( $text ) {
			global $product;

			return apply_filters( 'woocommerce_product_single_add_to_cart_text', $text, $product );
		}


		public function hide_pre_order_download_link_from_single_order_page( $files, $item, $order ) {

			if ( ( isset( $item['ywpo_item_for_sale_date'] ) && $item['ywpo_item_for_sale_date'] > time() ) || empty( $item['ywpo_item_for_sale_date'] ) ) {
				$order_status = yit_get_prop( $order, 'status' );
				if ( 'completed' != $order_status ) {
					foreach ( $files as $download_id => $file ) {
						unset( $files[ $download_id ] );
					}
				}
			}

			return $files;
		}

		public function delete_pre_order_download_from_array( $downloads ) {

			foreach ( $downloads as $key => &$download ) {
				$order        = wc_get_order( $download['order_id'] );
				$order_status = $order->get_status();   //move the check for order completed as soon as possible

				if ( ( 'yes' == yit_get_prop( $order, '_order_has_preorder', true ) ) && ( 'completed' != $order_status ) ) {
					foreach ( $order->get_items() as $item ) {
						if ( ( isset( $item['ywpo_item_for_sale_date'] ) && $item['ywpo_item_for_sale_date'] > time() ) || empty( $item['ywpo_item_for_sale_date'] ) ) {
							if ( $item['product_id'] == $download['product_id'] ) {
								unset( $downloads[ $key ] );
								break;
							}
						}
					}
				}
			}

			return $downloads;
		}


		public function add_variable_pre_order_data( $array, $variable_product, $variation ) {
			global $sitepress;

			$id = $variation->get_id();
			$id = $sitepress ? yit_wpml_object_id( $id, 'product', true, $sitepress->get_default_language() ) : $id;

			$pre_order   = new YITH_Pre_Order_Product( $id );
			$is_pre_order = $pre_order->get_pre_order_status();


			// Pre-Order label
			$edit_product_page_label = $pre_order->get_pre_order_label();
			$default_pre_order_label = get_option( 'yith_wcpo_default_add_to_cart_label' );
			if ( ! empty( $edit_product_page_label ) ) {
				$pre_order_label = $edit_product_page_label;
			} else if ( ! empty( $default_pre_order_label ) ) {
				$pre_order_label = $default_pre_order_label;
			} else {
				$pre_order_label = __( 'Pre-Order Now!', 'yith-woocommerce-pre-order' );
			}


			$array['is_pre_order']    = $is_pre_order;
			$array['pre_order_label'] = $pre_order_label;

			return $array;
		}

		public function add_pre_order_flag_to_new_order( $order_id, $post ) {
			$order = wc_get_order( $order_id );
			$items = $order->get_items();

			foreach ( $items as $key => $item ) {
				if ( ! empty( $item['variation_id'] ) ) {
					$pre_order = new YITH_Pre_Order_Product( $item['variation_id'] );
				} else {
					$pre_order = new YITH_Pre_Order_Product( $item['product_id'] );
				}

				if ( 'yes' == $pre_order->get_pre_order_status() ) {
					yit_save_prop( $order, '_order_has_preorder', 'yes' );
					$order->add_order_note( sprintf( __( 'Item %s was Pre-Ordered', 'yith-woocommerce-pre-order' ), $pre_order->product->get_formatted_name() ) );
				}
			}
		}

		public function add_order_item_meta_legacy( $order_id, $item_id, $product ) {
			$this->ywpo_add_order_item_meta( $item_id, $product );
		}

		public function add_order_item_meta( $item_id, $item ) {
			if ( 'line_item' != $item->get_type() ) {
				return;
			}
			$product = $item->get_product();
			$this->ywpo_add_order_item_meta( $item_id, $product );
		}

		public function ywpo_add_order_item_meta( $item_id, $product ) {
			$pre_order = new YITH_Pre_Order_Product( $product->get_id() );
			if ( 'yes' == $pre_order->get_pre_order_status() ) {
				wc_add_order_item_meta( $item_id, '_ywpo_item_preorder', 'yes' );
				do_action( 'ywpo_add_order_item_meta', $item_id, $pre_order );
			}
		}


		public function enqueue_scripts() {
			if ( is_product() || is_shop() || is_cart() || is_checkout() || is_account_page() ) {
				wp_enqueue_style( 'wcpo-frontend',
					YITH_WCPO_ASSETS_URL . '/css/frontend.css',
					array(),
					YITH_WCPO_VERSION );
			}

			wp_register_script( 'yith-wcpo-frontend-single-product', YITH_WCPO_ASSETS_JS_URL . yit_load_js_file( 'frontend-single-product.js' ), array( 'jquery' ), YITH_WCPO_VERSION, 'true' );
			if ( is_product() ) {
				wp_enqueue_script( 'yith-wcpo-frontend-single-product' );
			}
		}


	}
}
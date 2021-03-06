<?php
/**
 * Functions
 *
 * @author Your Inspiration Themes
 * @package YITH Woocommerce Compare
 * @version 1.1.4
 */

if ( !defined( 'YITH_WOOCOMPARE' ) ) { exit; } // Exit if accessed directly

if( ! function_exists( 'yith_woocompare_user_style' ) ) {
	/**
	 * Return custom style based on user options
	 *
	 * @since 2.1.0
	 * @author Francesco Licandro
	 * @return string
	 */
	function yith_woocompare_user_style() {

		$custom_css = "
				#yith-woocompare-cat-nav h3 {
                    color: " . get_option( 'yith-woocompare-categories-filter-title-color' ) . ";
                }
                #yith-woocompare-cat-nav li a {
                    color: " . get_option( 'yith-woocompare-categories-filter-link-color' ) . ";
                }
                #yith-woocompare-cat-nav li a:hover, #yith-woocompare-cat-nav li .active {
                    color: " . get_option( 'yith-woocompare-categories-filter-link-hover-color' ) . ";
                }
                table.compare-list .remove a {
                    color: " . get_option( 'yith-woocompare-table-remove-color' ) . ";
                }
                table.compare-list .remove a:hover {
                    color: " . get_option( 'yith-woocompare-table-remove-color-hover' ) . ";
                }
                table.compare-list .product_info .button, table.compare-list .add-to-cart .button, table.compare-list .added_to_cart {
                    color: " . get_option( 'yith-woocompare-table-button-text-color' ) . ";
                    background-color: " . get_option( 'yith-woocompare-table-button-color' ) . ";
                }
                table.compare-list .product_info .button:hover, table.compare-list .add-to-cart .button:hover, table.compare-list .added_to_cart:hover {
                    color: " . get_option( 'yith-woocompare-table-button-text-color-hover' ) . ";
                    background-color: " . get_option( 'yith-woocompare-table-button-color-hover' ) . ";
                }
                table.compare-list .rating .star-rating {
                    color: " . get_option( 'yith-woocompare-table-star' ) . ";
                }
                #yith-woocompare-related .yith-woocompare-related-title {
                    color: " . get_option( 'yith-woocompare-related-title-color' ) . ";
                }
                #yith-woocompare-related .related-products .button {
                    color: " . get_option( 'yith-woocompare-related-button-text-color' ) . ";
                    background-color: " . get_option( 'yith-woocompare-related-button-color' ) . ";
                }
                #yith-woocompare-related .related-products .button:hover {
                    color: " . get_option( 'yith-woocompare-related-button-text-color-hover' ) . ";
                    background-color: " . get_option( 'yith-woocompare-related-button-color-hover' ) . ";
                }
                #yith-woocompare-share h3 {
                    color: " . get_option( 'yith-woocompare-share-title-color' ) . ";
                }
                table.compare-list tr.different, table.compare-list tr.different th {
                	background-color: " . get_option( 'yith-woocompare-highlights-color' ) . " !important;
                }";

		return apply_filters( 'yith_woocompare_user_style_value', $custom_css );
	}
}
<?php
/**
 * Shortcode class
 *
 * @author Your Inspiration Themes
 * @package YITH WooCommerce Brands Add-on
 * @version 1.0.0
 */

/*
 * This file belongs to the YIT Framework.
 *
 * This source file is subject to the GNU GENERAL PUBLIC LICENSE (GPL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://www.gnu.org/licenses/gpl-3.0.txt
 */

if ( ! defined( 'YITH_WCBR' ) ) {
	exit;
} // Exit if accessed directly

if ( ! class_exists( 'YITH_WCBR_Shortcode' ) ) {
	/**
	 * WooCommerce Brands Shortcode
	 *
	 * @since 1.0.0
	 */
	class YITH_WCBR_Shortcode {

		/**
		 * Performs all required add_shortcode
		 *
		 * @return void
		 * @since 1.0.0
		 */
		public static function init(){
			add_shortcode( 'yith_wcbr_brand_filter', array( 'YITH_WCBR_Shortcode', 'brand_filter' ) );
			add_shortcode( 'yith_wcbr_brand_thumbnail', array( 'YITH_WCBR_Shortcode', 'brand_thumbnail' ) );
			add_shortcode( 'yith_wcbr_brand_thumbnail_carousel', array( 'YITH_WCBR_Shortcode', 'brand_thumbnail_carousel' ) );
			add_shortcode( 'yith_wcbr_brand_product', array( 'YITH_WCBR_Shortcode', 'brand_product' ) );
			add_shortcode( 'yith_wcbr_brand_product_carousel', array( 'YITH_WCBR_Shortcode', 'brand_product_carousel' ) );
			add_shortcode( 'yith_wcbr_brand_select', array( 'YITH_WCBR_Shortcode', 'brand_select' ) );
			add_shortcode( 'yith_wcbr_brand_list', array( 'YITH_WCBR_Shortcode', 'brand_list' ) );
			add_shortcode( 'yith_wcbr_brand_grid', array( 'YITH_WCBR_Shortcode', 'brand_grid' ) );

			// register shortcodes to WPBackery Visual Composer
			add_action( 'vc_before_init', array( 'YITH_WCBR_Shortcode', 'register_vc_shortcodes' ) );
		}

		/**
		 * Register brands shortcode to visual composer
		 *
		 * @return void
		 * @since 1.0.0
		 */
		public static function register_vc_shortcodes(){
			$vc_map_params = apply_filters( 'yith_wcbr_vc_shortcodes_params', array(

				'yith_wcbr_brand_filter' => array(
					'name' => __( 'YITH Brand Filter', 'yith-woocommerce-brands-add-on' ),
					'base' => 'yith_wcbr_brand_filter',
					'description' => __( 'Adds a list of brands with js filter for name', 'yith-woocommerce-brands-add-on' ),
					'category' => __( 'Brands', 'yith-woocommerce-brands-add-on' ),
					'params' => array(
						array(
							'type' => 'textfield',
							'holder' => 'div',
							'heading' => __( 'Title', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'title',
							'value' => '',
							'description' => __( 'Text to enter as shortcode title', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Pagination', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'pagination',
							'value' => array(
								__( 'Paginate items', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not paginate items', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Paginate brand elements or not', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'textfield',
							'holder' => '',
							'heading' => __( 'Per page', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'category',
							'value' => '5',
							'description' => __( 'Number of elements to show for each page', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'textfield',
							'holder' => '',
							'heading' => __( 'Categories', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'category',
							'value' => '',
							'description' => __( 'A list of valid comma separated category slugs, if you want to filter brands by product cat', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Show filters', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'show_filter',
							'value' => array(
								__( 'Show filters', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not show filters', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Show letters to filter brands or not', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Show reset', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'show_reset',
							'value' => array(
								__( 'Show reset', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not show reset', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Show "All" label to reset all filters or not', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Show all letters', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'show_all_letters',
							'value' => array(
								__( 'Show all letters', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not show all letters', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Show all letters or only available letters', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Show count', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'show_count',
							'value' => array(
								__( 'Show term count', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not show term count', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'show term count or not', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Hide if empty', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'hide_empty',
							'value' => array(
								__( 'Hide if empty', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not hide even if empty', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Choose to show empty terms or not', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Style', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'style',
							'value' => array(
								__( 'Default', 'yith-woocommerce-brands-add-on' ) => 'default',
								__( 'Big Header', 'yith-woocommerce-brands-add-on' ) => 'big-header',
								__( 'Small Header', 'yith-woocommerce-brands-add-on' ) => 'small-header',
								__( 'Shadow', 'yith-woocommerce-brands-add-on' ) => 'shadow',
								__( 'Boxed', 'yith-woocommerce-brands-add-on' ) => 'boxed',
								__( 'Highlight', 'yith-woocommerce-brands-add-on' ) => 'highlight'
							),
							'description' => __( 'Shortcode style', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'colorpicker',
							'holder' => '',
							'heading' => __( 'Highlight color', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'highlight_color',
							'value' => '#ffd900',
							'description' => __( 'Color to use as background in "Highlight" style', 'yith-woocommerce-brands-add-on' )
						)
					)
				),

				'yith_wcbr_brand_thumbnail' => array(
					'name' => __( 'YITH Brand Thumbnail', 'yith-woocommerce-brands-add-on' ),
					'base' => 'yith_wcbr_brand_thumbnail',
					'description' => __( 'Adds a list of brand thumbnails', 'yith-woocommerce-brands-add-on' ),
					'category' => __( 'Brands', 'yith-woocommerce-brands-add-on' ),
					'params' => array(
						array(
							'type' => 'textfield',
							'holder' => 'div',
							'heading' => __( 'Title', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'title',
							'value' => '',
							'description' => __( 'Text to enter as shortcode title', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Pagination', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'pagination',
							'value' => array(
								__( 'Paginate items', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not paginate items', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Paginate brand elements or not', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'textfield',
							'holder' => '',
							'heading' => __( 'Per page', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'per_page',
							'value' => '5',
							'description' => __( 'Number of elements to show for each page', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'textfield',
							'holder' => '',
							'heading' => __( 'Categories', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'category',
							'value' => '',
							'description' => __( 'A list of valid comma separated category slugs, if you want to filter brands by product cat', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Hide if empty', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'hide_empty',
							'value' => array(
								__( 'Hide if empty', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not hide even if empty', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Choose to show empty terms or not', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Hide terms without image', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'hide_no_image',
							'value' => array(
								__( 'Hide terms without image', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not hide terms even if without image', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Choose to show terms without image or not', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'textfield',
							'holder' => '',
							'heading' => __( 'Columns', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'cols',
							'value' => '2',
							'description' => __( 'Number of elements per row', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Style', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'style',
							'value' => array(
								__( 'Default', 'yith-woocommerce-brands-add-on' ) => 'default',
								__( 'Boxed', 'yith-woocommerce-brands-add-on' ) => 'boxed',
								__( 'Shadow', 'yith-woocommerce-brands-add-on' ) => 'shadow',
								__( 'Without borders', 'yith-woocommerce-brands-add-on' ) => 'borderless',
								__( 'Small Header', 'yith-woocommerce-brands-add-on' ) => 'top-border'
							),
							'description' => __( 'Shortcode style', 'yith-woocommerce-brands-add-on' )
						)
					)
				),

				'yith_wcbr_brand_thumbnail_carousel' => array(
					'name' => __( 'YITH Brand Thumbnail Carousel', 'yith-woocommerce-brands-add-on' ),
					'base' => 'yith_wcbr_brand_thumbnail_carousel',
					'description' => __( 'Adds a carousel of brand thumbnails', 'yith-woocommerce-brands-add-on' ),
					'category' => __( 'Brands', 'yith-woocommerce-brands-add-on' ),
					'params' => array(
						array(
							'type' => 'textfield',
							'holder' => 'div',
							'heading' => __( 'Title', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'title',
							'value' => '',
							'description' => __( 'Text to enter as shortcode title', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'textfield',
							'holder' => '',
							'heading' => __( 'Categories', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'category',
							'value' => '',
							'description' => __( 'A list of valid comma separated category slugs, if you want to filter brands by product cat', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Hide if empty', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'hide_empty',
							'value' => array(
								__( 'Hide if empty', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not hide even if empty', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Choose to show empty terms or not', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Autoplay', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'autoplay',
							'value' => array(
								__( 'Yes', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'No', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Start autoplay for carousel or not', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Hide terms without image', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'hide_no_image',
							'value' => array(
								__( 'Hide terms without image', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not hide terms even if without image', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Choose to show terms without image or not', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Direction', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'direction',
							'value' => array(
								__( 'Horizontal', 'yith-woocommerce-brands-add-on' ) => 'horizontal',
								__( 'Vertical', 'yith-woocommerce-brands-add-on' ) => 'vertical'
							),
							'description' => __( 'Show terms without image or not', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'textfield',
							'holder' => '',
							'heading' => __( 'Columns', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'cols',
							'value' => '2',
							'description' => __( 'Number of elements per row', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Carousel pagination', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'pagination',
							'value' => array(
								__( 'Show carousel pagination', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not show carousel pagination', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Show carousel pagination or not', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Carousel pagination style', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'pagination_style',
							'value' => array(
								__( 'Square', 'yith-woocommerce-brands-add-on' ) => 'square',
								__( 'Round', 'yith-woocommerce-brands-add-on' ) => 'round'
							),
							'description' => __( 'Style for Carousel pagination', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Prev/Next button', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'prev_next',
							'value' => array(
								__( 'Show prev/next button', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not show prev/next button', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Show prev/next button or not', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Prev/Next button style', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'prev_next_style',
							'value' => array(
								__( 'Square', 'yith-woocommerce-brands-add-on' ) => 'square',
								__( 'Round', 'yith-woocommerce-brands-add-on' ) => 'round'
							),
							'description' => __( 'Carousel prev/next button style', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Show name', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'show_name',
							'value' => array(
								__( 'Show name', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not show name', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Show brand name or not', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Show rating', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'show_rating',
							'value' => array(
								__( 'Show average brand rating', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not show average brand rating', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Show average brand rating or not (based on brand\'s product rating)', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Style', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'style',
							'value' => array(
								__( 'Default', 'yith-woocommerce-brands-add-on' ) => 'default',
								__( 'Top border', 'yith-woocommerce-brands-add-on' ) => 'top-border',
								__( 'Shadow', 'yith-woocommerce-brands-add-on' ) => 'shadow',
								__( 'Centered title', 'yith-woocommerce-brands-add-on' ) => 'centered-title',
								__( 'Boxed', 'yith-woocommerce-brands-add-on' ) => 'boxed',
								__( 'Squared', 'yith-woocommerce-brands-add-on' ) => 'squared',
								__( 'Background', 'yith-woocommerce-brands-add-on' ) => 'background'
							),
							'description' => __( 'Shortcode style', 'yith-woocommerce-brands-add-on' )
						)
					)
				),

				'yith_wcbr_brand_product' => array(
					'name' => __( 'YITH Brand Products', 'yith-woocommerce-brands-add-on' ),
					'base' => 'yith_wcbr_brand_product',
					'description' => __( 'Adds a list of brand products', 'yith-woocommerce-brands-add-on' ),
					'category' => __( 'Brands', 'yith-woocommerce-brands-add-on' ),
					'params' => array(
						array(
							'type' => 'textfield',
							'holder' => 'div',
							'heading' => __( 'Title', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'title',
							'value' => '',
							'description' => __( 'Text to show as shortcode title', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Pagination', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'pagination',
							'value' => array(
								__( 'Paginate items', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not paginate items', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Paginate brand elements or not', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'textfield',
							'holder' => '',
							'heading' => __( 'Per page', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'per_page',
							'value' => '-1',
							'description' => __( 'Number of elements to show for each page', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'textfield',
							'holder' => '',
							'heading' => __( 'Columns', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'cols',
							'value' => '4',
							'description' => __( 'Number of elements per row', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'textfield',
							'holder' => '',
							'heading' => __( 'Brands', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'brand',
							'value' => '',
							'description' => __( 'A list of valid comma separated brand slugs, if you want to filter products by brand', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Product type', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'product_type',
							'value' => array(
								__( 'All products', 'yith-woocommerce-brands-add-on' ) => 'all',
								__( 'Featured products', 'yith-woocommerce-brands-add-on' ) => 'featured',
								__( 'On sale products', 'yith-woocommerce-brands-add-on' ) => 'on_sale',
							),
							'description' => __( 'Type of products to show', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Order by', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'orderby',
							'value' => array(
								__( 'Random order', 'yith-woocommerce-brands-add-on' ) => 'rand',
								__( '"Created at" date', 'yith-woocommerce-brands-add-on' ) => 'date',
								__( 'Product title', 'yith-woocommerce-brands-add-on' ) => 'title',
								__( 'Product price', 'yith-woocommerce-brands-add-on' ) => 'price',
								__( 'Product sales', 'yith-woocommerce-brands-add-on' ) => 'sales',
							),
							'description' => __( 'Set order criteria for products', 'yith-woocommerce-brands-add-on' )
						),

						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Order', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'order',
							'value' => array(
								__( 'Descending', 'yith-woocommerce-brands-add-on' ) => 'DESC',
								__( 'Ascending', 'yith-woocommerce-brands-add-on' ) => 'ASC'
							),
							'description' => __( 'Set order direction for products', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Hide free products', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'hide_free',
							'value' => array(
								__( 'Hide free products', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not hide free products', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Hide free products or not', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Show hidden products', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'show_hidden',
							'value' => array(
								__( 'Show products hidden in catalog', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not show products hidden in catalog', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Show products hidden in catalog or not', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Show brand box before shortcode', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'show_brand_box',
							'value' => array(
								__( 'Show brand box', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not show brand box', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Show brand box or not', 'yith-woocommerce-brands-add-on' )
						),
					)
				),

				'yith_wcbr_brand_product_carousel' => array(
					'name' => __( 'YITH Brand Product Carousel', 'yith-woocommerce-brands-add-on' ),
					'base' => 'yith_wcbr_brand_product_carousel',
					'description' => __( 'Adds a carousel of products', 'yith-woocommerce-brands-add-on' ),
					'category' => __( 'Brands', 'yith-woocommerce-brands-add-on' ),
					'params' => array(
						array(
							'type' => 'textfield',
							'holder' => 'div',
							'heading' => __( 'Title', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'title',
							'value' => '',
							'description' => __( 'Text to show as shortcode title', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'textfield',
							'holder' => '',
							'heading' => __( 'Columns', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'cols',
							'value' => '2',
							'description' => __( 'Number of elements per row', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'textfield',
							'holder' => '',
							'heading' => __( 'Total products to show', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'per_page',
							'value' => '-1',
							'description' => __( 'Total number of products to show; -1 to show all products', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Direction', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'direction',
							'value' => array(
								__( 'Horizontal', 'yith-woocommerce-brands-add-on' ) => 'horizontal',
								__( 'Vertical', 'yith-woocommerce-brands-add-on' ) => 'vertical'
							),
							'description' => __( 'Show terms without image or not', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Autoplay', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'autoplay',
							'value' => array(
								__( 'Yes', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'No', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Start autoplay for carousel or not', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Carousel pagination', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'pagination',
							'value' => array(
								__( 'Show carousel pagination', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not show carousel pagination', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Show carousel pagination or not', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Carousel pagination style', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'pagination_style',
							'value' => array(
								__( 'Square', 'yith-woocommerce-brands-add-on' ) => 'square',
								__( 'Round', 'yith-woocommerce-brands-add-on' ) => 'round'
							),
							'description' => __( 'Carousel pagination style', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Prev/Next button', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'prev_next',
							'value' => array(
								__( 'Show prev/next button', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not show prev/next button', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Show prev/next button or not', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Prev/Next button style', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'prev_next_style',
							'value' => array(
								__( 'Square', 'yith-woocommerce-brands-add-on' ) => 'square',
								__( 'Round', 'yith-woocommerce-brands-add-on' ) => 'round'
							),
							'description' => __( 'Carousel prev/next button style', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'textfield',
							'holder' => '',
							'heading' => __( 'Brands', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'brand',
							'value' => '',
							'description' => __( 'A list of valid comma separated brands slugs, if you want to filter products by brand', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Product type', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'product_type',
							'value' => array(
								__( 'All products', 'yith-woocommerce-brands-add-on' ) => 'all',
								__( 'Featured products', 'yith-woocommerce-brands-add-on' ) => 'featured',
								__( 'On sale products', 'yith-woocommerce-brands-add-on' ) => 'on_sale',
							),
							'description' => __( 'Type of products to show', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Order by', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'orderby',
							'value' => array(
								__( 'Random order', 'yith-woocommerce-brands-add-on' ) => 'rand',
								__( '"Created at" date', 'yith-woocommerce-brands-add-on' ) => 'date',
								__( 'Product title', 'yith-woocommerce-brands-add-on' ) => 'title',
								__( 'Product price', 'yith-woocommerce-brands-add-on' ) => 'price',
								__( 'Product sales', 'yith-woocommerce-brands-add-on' ) => 'sales',
							),
							'description' => __( 'Select sorting criteria for products', 'yith-woocommerce-brands-add-on' )
						),

						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Order', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'order',
							'value' => array(
								__( 'Descending', 'yith-woocommerce-brands-add-on' ) => 'DESC',
								__( 'Ascending', 'yith-woocommerce-brands-add-on' ) => 'ASC'
							),
							'description' => __( 'Select sorting direction for products', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Hide free products', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'hide_free',
							'value' => array(
								__( 'Hide free products', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not hide free products', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Hide free products or not', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Show hidden products', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'show_hidden',
							'value' => array(
								__( 'Show products hidden in catalog', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not show products hidden in catalog', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Show products hidden in catalog or not', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Style', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'style',
							'value' => array(
								__( 'Default', 'yith-woocommerce-brands-add-on' ) => 'default',
								__( 'Square', 'yith-woocommerce-brands-add-on' ) => 'square',
								__( 'Round', 'yith-woocommerce-brands-add-on' ) => 'round'
							),
							'description' => __( 'Shortcode style', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Show brand box before shortcode', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'show_brand_box',
							'value' => array(
								__( 'Show brand box', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not show brand box', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Show brand box or not', 'yith-woocommerce-brands-add-on' )
						),
					)
				),

				'yith_wcbr_brand_select' => array(
					'name' => __( 'YITH Brand Select', 'yith-woocommerce-brands-add-on' ),
					'base' => 'yith_wcbr_brand_select',
					'description' => __( 'Adds a select with all brands that redirects to archive page on change', 'yith-woocommerce-brands-add-on' ),
					'category' => __( 'Brands', 'yith-woocommerce-brands-add-on' ),
					'params' => array(
						array(
							'type' => 'textfield',
							'holder' => 'div',
							'heading' => __( 'Title', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'title',
							'value' => '',
							'description' => __( 'Text to show as shortcode title', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'textfield',
							'holder' => '',
							'heading' => __( 'Categories', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'category',
							'value' => '',
							'description' => __( 'A list of valid comma separated category slugs, if you want to filter brands by product cat', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Hide empty', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'hide_empty',
							'value' => array(
								__( 'Hide empty', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not hide empty', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Show empty terms or not', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Show count', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'show_count',
							'value' => array(
								__( 'Show term count', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not show term count', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Show term count or not', 'yith-woocommerce-brands-add-on' )
						),
					)
				),

				'yith_wcbr_brand_list' => array(
					'name' => __( 'YITH Brand List', 'yith-woocommerce-brands-add-on' ),
					'base' => 'yith_wcbr_brand_list',
					'description' => __( 'Prints a list of all brands', 'yith-woocommerce-brands-add-on' ),
					'category' => __( 'Brands', 'yith-woocommerce-brands-add-on' ),
					'params' => array(
						array(
							'type' => 'textfield',
							'holder' => 'div',
							'heading' => __( 'Title', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'title',
							'value' => '',
							'description' => __( 'Text to show as shortcode title', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'textfield',
							'holder' => '',
							'heading' => __( 'Categories', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'category',
							'value' => '',
							'description' => __( 'A list of valid comma separated category slugs, if you want to filter brands by product cat', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Pagination', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'pagination',
							'value' => array(
								__( 'Paginate items', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not paginate items', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Paginate brand elements or not', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'textfield',
							'holder' => '',
							'heading' => __( 'Per page', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'per_page',
							'value' => '-1',
							'description' => __( 'Number of elements to show for each page', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Show count', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'show_count',
							'value' => array(
								__( 'Show term count', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not show term count', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Show term count or not', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Hide empty', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'hide_empty',
							'value' => array(
								__( 'Hide empty', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not hide empty', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Show empty terms or not', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Style', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'style',
							'value' => array(
								__( 'Default', 'yith-woocommerce-brands-add-on' ) => 'default',
								__( 'Big Header', 'yith-woocommerce-brands-add-on' ) => 'big-header',
								__( 'Small Header', 'yith-woocommerce-brands-add-on' ) => 'small-header',
								__( 'Shadow', 'yith-woocommerce-brands-add-on' ) => 'shadow',
								__( 'Boxed', 'yith-woocommerce-brands-add-on' ) => 'boxed',
								__( 'HIghlight', 'yith-woocommerce-brands-add-on' ) => 'highlight'
							),
							'description' => __( 'Shortcode style', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'colorpicker',
							'holder' => '',
							'heading' => __( 'Highlight color', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'highlight_color',
							'value' => '#ffd900',
							'description' => __( 'Color to use as background in "Highlight" style', 'yith-woocommerce-brands-add-on' )
						)
					)
				),

				'yith_wcbr_brand_grid' => array(
					'name' => __( 'YITH Brand Grid', 'yith-woocommerce-brands-add-on' ),
					'base' => 'yith_wcbr_brand_grid',
					'description' => __( 'Prints a grid of all brands with js filters', 'yith-woocommerce-brands-add-on' ),
					'category' => __( 'Brands', 'yith-woocommerce-brands-add-on' ),
					'params' => array(
						array(
							'type' => 'textfield',
							'holder' => 'div',
							'heading' => __( 'Title', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'title',
							'value' => '',
							'description' => __( 'Text to show as shortcode title', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'textfield',
							'holder' => '',
							'heading' => __( 'Columns', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'cols',
							'value' => '2',
							'description' => __( 'Number of elements per row', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Show count', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'show_count',
							'value' => array(
								__( 'Show term count', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not show term count', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Show term count or not', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Show image', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'show_image',
							'value' => array(
								__( 'Show term image', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not show term image', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Show term image or not', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Hide if empty', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'hide_empty',
							'value' => array(
								__( 'Hide if empty', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not hide even if empty', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Show empty terms or not', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Hide terms without image', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'hide_no_image',
							'value' => array(
								__( 'Hide terms without image', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not hide terms even if without image', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Show terms without image or not', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Show name', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'show_name',
							'value' => array(
								__( 'Show name', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not show name', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Show brand name or not', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Show filtered', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'show_filtered_by',
							'value' => array(
								__( 'Show brands grouped by heading letter', 'yith-woocommerce-brands-add-on' ) => 'name',
								__( 'Show brands grouped by product category', 'yith-woocommerce-brands-add-on' ) => 'category',
								__( 'Do not show brands filtered', 'yith-woocommerce-brands-add-on' ) => 'none'
							),
							'description' => __( 'Show brands grouped or not', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Show category filter', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'show_category_filter',
							'value' => array(
								__( 'Show filters for product category', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not show filters for product category', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Show filters for product category or not (only when filtered by name)', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Category filter type', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'category_filter_type',
							'value' => array(
								__( 'Multiselect', 'yith-woocommerce-brands-add-on' ) => 'multiselect',
								__( 'Dropdown', 'yith-woocommerce-brands-add-on' ) => 'dropdown'
							),
							'description' => __( 'Show filters for product category as multiselect or as a dropdown (only when filtered by name)', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Category filter style', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'category_filter_style',
							'value' => array(
								__( 'Default', 'yith-woocommerce-brands-add-on' ) => 'default',
								__( 'Shadow', 'yith-woocommerce-brands-add-on' ) => 'shadow',
								__( 'Border', 'yith-woocommerce-brands-add-on' ) => 'border',
								__( 'Round', 'yith-woocommerce-brands-add-on' ) => 'round'
							),
							'description' => __( 'Category filter style (only when filtered by name)', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Show name filters', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'show_name_filter',
							'value' => array(
								__( 'Show letters to filter brands', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not show letters', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Show letters to filter brands (only when filtered by name)', 'yith-woocommerce-brands-add-on' )
						),
						array(
							'type' => 'dropdown',
							'holder' => '',
							'heading' => __( 'Show all letters', 'yith-woocommerce-brands-add-on' ),
							'param_name' => 'show_all_letters',
							'value' => array(
								__( 'Show all letters', 'yith-woocommerce-brands-add-on' ) => 'yes',
								__( 'Do not show all letters', 'yith-woocommerce-brands-add-on' ) => 'no'
							),
							'description' => __( 'Whether to show all letters or only available letters (only when filtered by name)', 'yith-woocommerce-brands-add-on' )
						)
					)
				)
			) );

			if( ! empty( $vc_map_params ) && function_exists( 'vc_map' ) ){
				foreach( $vc_map_params as $params ){
					vc_map( $params );
				}
			}
		}

		/**
		 * Returns output for brand filter
		 *
		 * @param $atts mixed Array of shortcodes attributes
		 *
		 * @return string Shortcode content
		 * @since 1.0.0
		 */
		public static function brand_filter( $atts ){
			global $wp_query;

			$defaults = array(
				'title' => '',
				'pagination' => 'no',           // yes - no
				'per_page' => 5,                // int
				'autosense_category' => 'no',   // yes - no (if yes, on product category page, ignores "category" options, and shows only brands for current category)
				'category' => 'all',            // all - a list of comma separated valid category slug
				'show_filter' => 'yes',         // yes - no
				'show_reset' => 'yes',          // yes - no
				'show_all_letters' => 'yes',    // yes - no
				'show_count' => 'yes',          // yes - no
				'hide_empty' => 'no',           // yes - no
				'style' => 'default',           // default - big-header - small-header - shadow - boxed - highlight
				'highlight_color' => '#ffd900'  // hex color code (only for highlight style)
			);

			$atts = shortcode_atts(
				$defaults,
				$atts
			);

			// make attributes available
			extract( $atts );

			// sets pagination variable
			if( $pagination == 'yes' ){
				$count = wp_count_terms(
					YITH_WCBR::$brands_taxonomy,
					array(
						'hide_empty' => $hide_empty == 'yes'
					)
				);

				$pages = ceil( $count / $per_page );
				$current_page = max( 1, get_query_var( 'paged' ) );

				if( $current_page > $pages ){
					$current_page = $pages;
				}

				$offset = ( $current_page - 1 ) * $per_page;

				if( $pages > 1 ) {
					$page_links = paginate_links( array(
						'base'     => esc_url( add_query_arg( array( 'paged' => '%#%' ) ) ),
						'format'   => '?paged=%#%',
						'current'  => $current_page,
						'total'    => $pages,
						'show_all' => true,
						'prev_text' => '<',
						'next_text' => '>'
					) );

					$atts['page_links'] = $page_links;
				}

				$atts['count'] = $count;
				$atts['pages'] = $pages;
				$atts['current_page'] = $current_page;
				$atts['offset'] = $offset;
			}

			// sets category filter variables
			if( $category != 'all' || ( $autosense_category == 'yes' && is_tax( 'product_cat' ) ) ){
				$categories = ( $autosense_category == 'yes' && is_tax( 'product_cat' ) ) ? array( get_query_var( $wp_query->query_vars['taxonomy'] ) ) : explode( ',', $category );

				$include = array();
				if( ! empty( $categories ) ){
					$brand_category_relationship = YITH_WCBR_Premium()->get_category_brand_relationships();

					foreach( $categories as $category_slug ){
						$category = get_term_by( 'slug', $category_slug, 'product_cat' );

						if( $category && isset( $brand_category_relationship[ $category->term_id ] ) ){
							$include = array_merge( $include, $brand_category_relationship[ $category->term_id ] );
						}
					}
				}
			}

			// retrieve elements
			$terms = yith_wcbr_get_terms(
				YITH_WCBR::$brands_taxonomy,
				array_merge(
					array(
						'hide_empty' => $hide_empty == 'yes',
						'include' => isset( $include ) ? $include : array()
					),
					$pagination != 'yes' ? array() : array(
						'offset' => $offset,
						'number' => $per_page
					)
				)
			);

			if( is_wp_error( $terms ) ){
				return '';
			}

			$atts['terms'] = $terms;

			// if filters enabled, retrieve heading letter
			$available_filters = array();

			if( $show_filter == 'yes' ){
				$stack = explode( ' ', apply_filters( 'yith_wcbr_brand_filter_heading_letters', 'a b c d e f g h i j k l m n o p q r s t u v w x y z' ) );

				foreach( $terms as & $term ){
					$heading_letter = apply_filters( 'yith_wcbr_brand_filter_heading_letter', strtolower( substr( $term->name, 0, 1 ) ), $term->name );

					if( ! in_array( $heading_letter, $stack ) && ! in_array( '123', $available_filters ) ){
						$available_filters[] = '123';
						$term->heading = '123';
					}
					else{
						if( ! in_array( $heading_letter, $available_filters ) ) {
							$available_filters[] = $heading_letter;
						}

						$term->heading = $heading_letter;
					}
				}

				

				uasort( $terms, array( 'YITH_WCBR_Shortcode', 'compare_terms_heading' ) );
				asort( $available_filters );

				$atts['stack'] = ( $show_all_letters == 'yes' ) ? array_merge( $stack, array( '123' ) ) : $available_filters;
				$atts['available_filters'] = $available_filters;
			}

			$template_name = 'brand-filter.php';

			ob_start();

			yith_wcbr_get_template( $template_name, $atts, 'shortcodes' );

			return ob_get_clean();
		}

		/**
		 * Returns output for brand thumbnail
		 *
		 * @param $atts mixed Array of shortcodes attributes
		 *
		 * @return string Shortcode content
		 * @since 1.0.0
		 */
		public static function brand_thumbnail( $atts ){
			global $wp_query;

			$defaults = array(
				'title' => '',
				'pagination' => 'no',           // yes - no
				'autosense_category' => 'no',   // yes - no (if yes, on product category page, ignores "category" options, and shows only brands for current category)
				'category' => 'all',            // all - a list of comma separated valid category slug
				'per_page' => -1,               // int
				'hide_empty' => 'no',           // yes - no
				'hide_no_image' => 'no',        // yes - no
				'cols' => 2,                    // int
				'style' => 'default',           // default - boxed - shadow - borderless - top-border
				'orderby' => 'none',            // terms ordering name - slug - term_group - term_id - id - description
				'order' => 'ASC'                // order ascending or descending
			);

			$atts = shortcode_atts(
				$defaults,
				$atts
			);

			// make attributes available
			extract( $atts );

			if( $pagination == 'yes' ){
				$count = wp_count_terms(
					YITH_WCBR::$brands_taxonomy,
					array(
						'hide_empty' => $hide_empty == 'yes'
					)
				);

				$pages = ceil( $count / $per_page );
				$current_page = max( 1, get_query_var( 'paged' ) );

				if( $current_page > $pages ){
					$current_page = $pages;
				}

				$offset = ( $current_page - 1 ) * $per_page;

				if( $pages > 1 ) {
					$page_links = paginate_links( array(
						'base'     => esc_url( add_query_arg( array( 'paged' => '%#%' ) ) ),
						'format'   => '?paged=%#%',
						'current'  => $current_page,
						'total'    => $pages,
						'show_all' => true,
						'prev_text' => '<',
						'next_text' => '>'
					) );

					$atts['page_links'] = $page_links;
				}

				$atts['count'] = $count;
				$atts['pages'] = $pages;
				$atts['current_page'] = $current_page;
				$atts['offset'] = $offset;
			}

			if( $hide_no_image == 'yes' && version_compare( WC()->version, '2.6', '<' ) ){
				add_filter( 'terms_clauses', array( YITH_WCBR_Premium(), 'filter_term_without_image' ), 10, 3 );
			}

			if( $category != 'all' || ( $autosense_category == 'yes' && is_tax( 'product_cat' ) ) ){
				$categories = ( $autosense_category == 'yes' && is_tax( 'product_cat' ) ) ? array( get_query_var( $wp_query->query_vars['taxonomy'] ) ) : explode( ',', $category );

				$include = array();
				if( ! empty( $categories ) ){
					$brand_category_relationship = YITH_WCBR_Premium()->get_category_brand_relationships();

					foreach( $categories as $category_slug ){
						$category = get_term_by( 'slug', $category_slug, 'product_cat' );

						if( $category && isset( $brand_category_relationship[ $category->term_id ] ) ){
							$include = array_merge( $include, $brand_category_relationship[ $category->term_id ] );
						}
					}
				}
			}

			// retrieve elements
			$terms = yith_wcbr_get_terms(
				YITH_WCBR::$brands_taxonomy,
				array_merge(
					array(
						'hide_empty' => $hide_empty == 'yes',
						'number' => $per_page,
						'include' => isset( $include ) ? $include : array(),
						'orderby' => isset( $orderby ) ? $orderby : 'none',
						'order' => isset( $order ) ? $order : 'ASC'
					),
					$pagination != 'yes' ? array() : array(
						'offset' => $offset
					),
					( $hide_no_image != 'yes' && ! version_compare( WC()->version, '2.6', '<' ) ) ? array() : array(
						'meta_query' => array(
							array(
								'key' => 'thumbnail_id',
								'value' => 0,
								'compare' => '!='
							)
						)
					)
				)
			);

			if( $hide_no_image == 'yes' && version_compare( WC()->version, '2.6', '<' ) ){
				remove_filter( 'terms_clauses', array( YITH_WCBR_Premium(), 'filter_term_without_image' ) );
			}

			if( is_wp_error( $terms ) ){
				return '';
			}

			$atts['terms'] = $terms;
			$atts['cols_width'] = floor( 100 / intval( $cols ) );

			$template_name = 'brand-thumbnail.php';

			ob_start();

			yith_wcbr_get_template( $template_name, $atts, 'shortcodes' );

			return ob_get_clean();
		}

		/**
		 * Returns output for brand thumbnail carousel
		 *
		 * @param $atts mixed Array of shortcodes attributes
		 *
		 * @return string Shortcode content
		 * @since 1.0.0
		 */
		public static function brand_thumbnail_carousel( $atts ){
			global $wp_query;

			$defaults = array(
				'title' => '',
				'autosense_category' => 'no',   // yes - no (if yes, on product category page, ignores "category" options, and shows only brands for current category)
				'category' => 'all',            // all - a list of comma separated valid category slug
				'hide_empty' => 'no',           // yes - no
				'hide_no_image' => 'no',        // yes - no
				'direction' => 'horizontal',    // horizontal - vertical
				'cols' => 2,                    // int
				'autoplay' => 'yes',            // yes - no
				'pagination' => 'no',           // yes - no
				'pagination_style' => 'round',  // round - square
				'prev_next' => 'yes',           // yes - no
				'prev_next_style' => 'round',   // round - square
				'show_name' => 'yes',           // yes - no
				'show_rating' => 'no',          // yes - no
				'style' => 'default',           // default - top-border - shadow - centered-title - boxed - squared - background
			);

			$atts = shortcode_atts(
				$defaults,
				$atts
			);

			// make attributes available
			extract( $atts );

			if( $category != 'all' || ( $autosense_category == 'yes' && is_tax( 'product_cat' ) ) ){
				$categories = ( $autosense_category == 'yes' && is_tax( 'product_cat' ) ) ? array( get_query_var( $wp_query->query_vars['taxonomy'] ) ) : explode( ',', $category );

				$include = array();
				if( ! empty( $categories ) ){
					$brand_category_relationship = YITH_WCBR_Premium()->get_category_brand_relationships();

					foreach( $categories as $category_slug ){
						$category = get_term_by( 'slug', $category_slug, 'product_cat' );

						if( $category && isset( $brand_category_relationship[ $category->term_id ] ) ){
							$include = array_merge( $include, $brand_category_relationship[ $category->term_id ] );
						}
					}
				}
			}

			if( $hide_no_image == 'yes' && version_compare( WC()->version, '2.6', '<' ) ){
				add_filter( 'terms_clauses', array( YITH_WCBR_Premium(), 'filter_term_without_image' ), 10, 3 );
			}

			// retrieve elements
			$terms = yith_wcbr_get_terms(
				YITH_WCBR::$brands_taxonomy,
				array(
					'hide_empty' => $hide_empty == 'yes',
					'include' => isset( $include ) ? $include : array(),
					'meta_query' => ( $hide_no_image == 'yes' && ! version_compare( WC()->version, '2.6', '<' ) ) ? array(
						array(
							'key' => 'thumbnail_id',
							'value' => 0,
							'compare' => '!='
						)
					) : array()
				)
			);

			if( $hide_no_image == 'yes' && version_compare( WC()->version, '2.6', '<' ) ){
				remove_filter( 'terms_clauses', array( YITH_WCBR_Premium(), 'filter_term_without_image' ) );
			}

			if( is_wp_error( $terms ) ){
				return '';
			}

			$atts['terms'] = $terms;

			$template_name = 'brand-thumbnail-carousel.php';

			ob_start();

			yith_wcbr_get_template( $template_name, $atts, 'shortcodes' );

			return ob_get_clean();
		}

		/**
		 * Returns output for brand product carousel
		 *
		 * @param $atts mixed Array of shortcodes attributes
		 *
		 * @return string Shortcode content
		 * @since 1.0.0
		 */
		public static function brand_product_carousel( $atts ){
			global $woocommerce_loop;
			$defaults = array(
				'title' => '',
				'per_page' => -1,               // int (-1 for all available)
				'cols' => 4,                    // int
				'direction' => 'horizontal',    // horizontal - vertical
				'autoplay' => 'yes',            // yes - no
				'pagination' => 'yes',          // yes - no
				'pagination_style' => 'round',  // round - square
				'prev_next' => 'yes',           // yes - no
				'prev_next_style' => 'round',   // round - square
				'brand' => 'all',               // string (comma separated list of valid brand slug)
				'category' => 'all',            // all - string (comma separated list of valid category slug)
				'product_type' => 'all',        // featured - on_sale - all
				'orderby' => 'rand',            // rand - date - title - price - sales
				'order' => 'asc',               // asc - desc
				'hide_free' => 'no',            // yes - no
				'show_hidden' => 'no',          // yes - no
				'show_brand_box' => 'yes',      // yes - no
				'style' => 'default'            // default - square - round
			);

			$atts = shortcode_atts(
				$defaults,
				$atts
			);

			// make attributes available
			extract( $atts );

			$query_args = array(
				'posts_per_page' => $per_page,
				'post_status'    => 'publish',
				'post_type'      => 'product',
				'no_found_rows'  => 1,
				'order'          => $order,
			);

			if( ( ! empty( $brand ) && $brand != 'all' ) || ( ! empty( $category ) && $category != 'all' ) ){
				$query_args['tax_query'] = array(
					'relation' => 'AND',
				);
			}

			if( ! empty( $brand ) && $brand != 'all' ) {
				$query_args['tax_query'][] = array(
					'taxonomy' => YITH_WCBR::$brands_taxonomy,
					'field'    => 'slug',
					'terms'    => explode( ',', $brand )
				);
			}

			if( ! empty( $category ) && $category != 'all' ) {
				$query_args['tax_query'][] = array(
					'taxonomy' => 'product_cat',
					'field'    => 'slug',
					'terms'    => explode( ',', $category )
				);
			}

			if ( isset( $show_hidden ) && $show_hidden == 'no' ) {
				$query_args['meta_query'][] = WC()->query->visibility_meta_query();
				$query_args['post_parent']  = 0;
			}

			if ( isset( $hide_free ) && $hide_free == 'yes' ) {
				$query_args['meta_query'][] = array(
					'key'     => '_price',
					'value'   => 0,
					'compare' => '>',
					'type'    => 'DECIMAL',
				);
			}

			switch ( $product_type ) {

				case 'featured':
					$query_args['meta_query'][] = array(
						'key'   => '_featured',
						'value' => 'yes'
					);
					break;

				case 'on_sale' :
					$product_ids_on_sale    = wc_get_product_ids_on_sale();
					$product_ids_on_sale[]  = 0;
					$query_args['post__in'] = $product_ids_on_sale;
					break;

				default:
					break;
			}

			switch ( $orderby ) {

				case 'rand':
					$query_args['orderby'] = 'rand';
					break;

				case 'date':
					$query_args['orderby'] = 'date';
					break;

				case 'price' :
					$query_args['meta_key'] = '_price';
					$query_args['orderby']  = 'meta_value_num';
					break;

				case 'sales' :
					$query_args['meta_key'] = 'total_sales';
					$query_args['orderby']  = 'meta_value_num';
					break;

				case 'title' :
					$query_args['orderby'] = 'title';
			}

			if( 'yes' == get_option( 'woocommerce_hide_out_of_stock_items' ) ){
				$query_args['meta_query'][] = WC()->query->stock_status_meta_query();
			}

			$atts['products'] = new WP_Query( $query_args );

			$template_name = 'brand-product-carousel.php';

			ob_start();

			$old_woocommerce_loop = $woocommerce_loop;
			/**
			 * Since 1.0.5
			 *
			 * @param $woocommerce_loop mixed Woocommerce loop global
			 * @param $plugin_slug string Current plugin slug
			 */
			$woocommerce_loop = apply_filters( 'yith_customize_product_carousel_loop', $woocommerce_loop, YITH_WCBR_SLUG );

			yith_wcbr_get_template( $template_name, $atts, 'shortcodes' );

			$woocommerce_loop = $old_woocommerce_loop;

			return ob_get_clean();
		}

		/**
		 * Returns output for brand product
		 *
		 * @param $atts mixed Array of shortcodes attributes
		 *
		 * @return string Shortcode content
		 * @since 1.0.0
		 */
		public static function brand_product( $atts ){
			$defaults = array(
				'title' => '',
				'per_page' => -1,               // int (-1 for all available)
				'pagination' => 'yes',          // yes - no
				'cols' => 4,                    // int
				'brand' => 'all',               // string (comma separated list of valid brand slug)
				'category' => 'all',            // all - string (comma separated list of valid category slug)
				'product_type' => 'all',        // featured - on_sale - all
				'orderby' => 'rand',            // rand - date - title - price - sales
				'order' => 'asc',               // asc - desc
				'hide_free' => 'no',            // yes - no
				'show_hidden' => 'no',          // yes - no
				'show_brand_box' => 'yes',      // yes - no
			);

			$atts = shortcode_atts(
				$defaults,
				$atts
			);

			// make attributes available
			extract( $atts );

			$current_page = max( 1, get_query_var( 'paged' ) );

			$query_args = array(
				'posts_per_page' => $per_page,
				'paged'          => $current_page,
				'post_status'    => 'publish',
				'post_type'      => 'product',
				'order'          => $order,
			);

			if( ( ! empty( $brand ) && $brand != 'all' ) || ( ! empty( $category ) && $category != 'all' ) ){
				$query_args['tax_query'] = array(
					'relation' => 'AND',
				);
			}

			if( ! empty( $brand ) && $brand != 'all' ) {
				$query_args['tax_query'][] = array(
					'taxonomy' => YITH_WCBR::$brands_taxonomy,
					'field'    => 'slug',
					'terms'    => explode( ',', $brand )
				);
			}

			if( ! empty( $category ) && $category != 'all' ) {
				$query_args['tax_query'][] = array(
					'taxonomy' => 'product_cat',
					'field'    => 'slug',
					'terms'    => explode( ',', $category )
				);
			}

			if ( isset( $show_hidden ) && $show_hidden == 'no' ) {
				$query_args['meta_query'][] = WC()->query->visibility_meta_query();
				$query_args['post_parent']  = 0;
			}

			if ( isset( $hide_free ) && $hide_free == 'yes' ) {
				$query_args['meta_query'][] = array(
					'key'     => '_price',
					'value'   => 0,
					'compare' => '>',
					'type'    => 'DECIMAL',
				);
			}

			switch ( $product_type ) {

				case 'featured':
					$query_args['meta_query'][] = array(
						'key'   => '_featured',
						'value' => 'yes'
					);
					break;

				case 'on_sale' :
					$product_ids_on_sale    = wc_get_product_ids_on_sale();
					$product_ids_on_sale[]  = 0;
					$query_args['post__in'] = $product_ids_on_sale;
					break;

				default:
					break;
			}

			switch ( $orderby ) {

				case 'rand':
					$query_args['orderby'] = 'rand';
					break;

				case 'date':
					$query_args['orderby'] = 'date';
					break;

				case 'price' :
					$query_args['meta_key'] = '_price';
					$query_args['orderby']  = 'meta_value_num';
					break;

				case 'sales' :
					$query_args['meta_key'] = 'total_sales';
					$query_args['orderby']  = 'meta_value_num';
					break;

				case 'title' :
					$query_args['orderby'] = 'title';
			}

			if( 'yes' == get_option( 'woocommerce_hide_out_of_stock_items' ) ){
				$query_args['meta_query'][] = WC()->query->stock_status_meta_query();
			}

			$query = new WP_Query( $query_args );

			if( $pagination == 'yes' ){
				$count = $query->found_posts;

				$pages = ceil( $count / $per_page );

				if( $current_page > $pages ){
					$current_page = $pages;
				}

				if( $pages > 1 ) {
					$page_links = paginate_links( array(
						'base'     => esc_url( add_query_arg( array( 'paged' => '%#%' ) ) ),
						'format'   => '?paged=%#%',
						'current'  => $current_page,
						'total'    => $pages,
						'show_all' => true,
						'prev_text' => '<',
						'next_text' => '>'
					) );

					$atts['page_links'] = $page_links;
				}

				$atts['count'] = $count;
				$atts['pages'] = $pages;
				$atts['current_page'] = $current_page;
			}

			$atts['products'] = $query;

			$template_name = 'brand-product.php';

			ob_start();

			yith_wcbr_get_template( $template_name, $atts, 'shortcodes' );

			return ob_get_clean();
		}

		/**
		 * Returns output for brand select
		 *
		 * @param $atts mixed Array of shortcodes attributes
		 *
		 * @return string Shortcode content
		 * @since 1.0.0
		 */
		public static function brand_select( $atts ){
			global $wp_query;

			$defaults = array(
				'title' => '',
				'autosense_category' => 'no',   // yes - no (if yes, on product category page, ignores "category" options, and shows only brands for current category)
				'category' => 'all',            // all - a list of comma separated valid category slug
				'show_count' => 'yes',          // yes - no
				'hide_empty' => 'no'            // yes - no
			);

			$atts = shortcode_atts(
				$defaults,
				$atts
			);

			// make attributes available
			extract( $atts );

			if( $category != 'all' || ( $autosense_category == 'yes' && is_tax( 'product_cat' ) ) ){
				$categories = ( $autosense_category == 'yes' && is_tax( 'product_cat' ) ) ? array( get_query_var( $wp_query->query_vars['taxonomy'] ) ) : explode( ',', $category );

				$include = array();
				if( ! empty( $categories ) ){
					$brand_category_relationship = YITH_WCBR_Premium()->get_category_brand_relationships();

					foreach( $categories as $category_slug ){
						$category = get_term_by( 'slug', $category_slug, 'product_cat' );

						if( $category && isset( $brand_category_relationship[ $category->term_id ] ) ){
							$include = array_merge( $include, $brand_category_relationship[ $category->term_id ] );
						}
					}
				}
			}

			// retrieve elements
			$terms = yith_wcbr_get_terms(
				YITH_WCBR::$brands_taxonomy,
				array(
					'hide_empty' => $hide_empty == 'yes',
					'include' => isset( $include ) ? $include : array()
				)
			);

			if( is_wp_error( $terms ) ){
				return '';
			}

			$atts['terms'] = $terms;

			$template_name = 'brand-select.php';

			ob_start();

			yith_wcbr_get_template( $template_name, $atts, 'shortcodes' );

			return ob_get_clean();
		}

		/**
		 * Returns output for brand list
		 *
		 * @param $atts mixed Array of shortcodes attributes
		 *
		 * @return string Shortcode content
		 * @since 1.0.0
		 */
		public static function brand_list( $atts ){
			$defaults = array(
				'title' => '',
				'autosense_category' => 'no',   // yes - no (if yes, on product category page, ignores "category" options, and shows only brands for current category)
				'category' => 'all',            // all - a list of comma separated valid category slug
				'per_page' => -1,               // int
				'pagination' => 'no',           // yes - no
				'show_count' => 'yes',          // yes - no
				'hide_empty' => 'no',           // yes - no
				'style' => 'default',           // default - big-header - small-header - shadow - boxed - highlight
				'highlight_color' => '#ffd900'  // hex color code (only for highlight style)
			);

			$atts = shortcode_atts(
				$defaults,
				$atts
			);

			return YITH_WCBR_Shortcode::brand_filter( array_merge( $atts, array( 'show_filter' => 'no' ) ) );
		}

		/**
		 * Returns output for brand grid
		 *
		 * @param $atts mixed Array of shortcodes attributes
		 *
		 * @return string Shortcode content
		 * @since 1.0.0
		 */
		public static function brand_grid( $atts ){
			global $wpdb;

			$defaults = array(
				'title' => '',
				'cols' => 4,                                // int
				'show_count' => 'yes',                      // yes - no
				'hide_empty' => 'no',                       // yes - no
				'show_image' => 'yes',                      // yes - no
				'hide_no_image' => 'no',                    // yes - no
				'show_name' => 'yes',                       // yes - no

				'show_filtered_by' => 'name',               // none - name - category

				// when filtered by name
				'show_category_filter' => 'yes',            // yes - no
				'category_filter_type' => 'multiselect',    // multiselect - dropdown
				'category_filter_style' => 'default',       // default - shadow - border - round
				'show_name_filter' => 'yes',                // yes - no
				'show_all_letters' => 'yes'                 // yes - no
			);

			$atts = shortcode_atts(
				$defaults,
				$atts
			);

			// make attributes available
			extract( $atts );

			if( $hide_no_image == 'yes' && version_compare( WC()->version, '2.6', '<' ) ){
				add_filter( 'terms_clauses', array( YITH_WCBR_Premium(), 'filter_term_without_image' ), 10, 3 );
			}

			// retrieve elements
			$terms = yith_wcbr_get_terms(
				YITH_WCBR::$brands_taxonomy,
				array(
					'orderby' => 'slug',
					'hide_empty' => $hide_empty == 'yes',
					'meta_query' => ( $hide_no_image == 'yes' && ! version_compare( WC()->version, '2.6', '<' ) ) ? array(
						array(
							'key' => 'thumbnail_id',
							'value' => 0,
							'compare' => '!='
						)
					) : array()
				)
			);

			if( $hide_no_image == 'yes' && version_compare( WC()->version, '2.6', '<' ) ){
				remove_filter( 'terms_clauses', array( YITH_WCBR_Premium(), 'filter_term_without_image' ) );
			}

			if( is_wp_error( $terms ) ){
				return '';
			}

			$atts['terms'] = $terms;

			// if name filters enabled, retrieve heading letter
			$available_filters = array();
			$filtered_terms = array();
			$stack = explode( ' ', apply_filters('yith_wcbr_brand_filter_heading_letters', 'a b c d e f g h i j k l m n o p q r s t u v w x y z') );

			if( $show_filtered_by == 'name' ){
				foreach( $terms as & $term ){
					$heading_letter = apply_filters( 'yith_wcbr_brand_filter_heading_letter', strtolower( substr( $term->name, 0, 1 ) ), $term->name );

					if( ! in_array( $heading_letter, $stack ) && ! in_array( '123', $available_filters ) ){
						$available_filters[] = '123';
						$term->heading = '123';
					}
					else{
						if( ! in_array( $heading_letter, $available_filters ) ) {
							$available_filters[] = $heading_letter;
						}

						$term->heading = $heading_letter;
					}

					if( isset( $filtered_terms[ $term->heading ] ) ){
						$filtered_terms[ $term->heading ][] = $term;
					}
					else{
						$filtered_terms[ $term->heading ] = array( $term );
					}
				}

				ksort( $filtered_terms );
				foreach( $filtered_terms as $heading_letter => & $terms_array ){
					uasort( $terms_array, array( 'YITH_WCBR_Shortcode', 'compare_terms_heading' ) );
				}
				asort( $stack );

				$atts['filtered_terms'] = $filtered_terms;
				$atts['available_filters'] = $available_filters;
			}

			if( $show_name_filter == 'yes' ){
				$atts['stack'] = ( $show_all_letters == 'yes' ) ? array_merge( $stack, array( '123' ) ) : $available_filters;
			}

			// if category filters enabled, retrieve category-brand relation
			$brand_category_relationship = YITH_WCBR_Premium()->get_brand_category_relationships();

			if( $show_filtered_by == 'category' ){
				foreach( $terms as & $term ){
					if( isset( $brand_category_relationship[ $term->term_id ] ) ){
						foreach( $brand_category_relationship[ $term->term_id ] as $category_id ){
							if( ! in_array( $category_id, $available_filters ) ){
								$available_filters[] = $category_id;
							}

							if( isset( $filtered_terms[ $category_id ] ) ){
								$filtered_terms[ $category_id ][] = $term;
							}
							else{
								$filtered_terms[ $category_id ] = array( $term );
							}
						}
					}
				}

				$atts['filtered_terms'] = $filtered_terms;
				$atts['available_filters'] = $available_filters;
			}

			if( $show_category_filter == 'yes' ){
				$default_category = new stdClass();
				$default_category->term_id = 0;
				$default_category->name = apply_filters( 'yith_wcbr_default_category_name', __( 'All', 'yith-woocommerce-brands-add-on' ) );

				$atts['brand_category_relationship'] = $brand_category_relationship;
				$atts['categories'] = array_merge(
					array( $default_category ),
					yith_wcbr_get_terms(
						'product_cat',
						array(
							'hide_empty' => 'yes'
						)
					)
				);
			}

			$atts['cols_width'] = floor( 100 / intval( $cols ) );

			$template_name = 'brand-grid.php';

			ob_start();

			yith_wcbr_get_template( $template_name, $atts, 'shortcodes' );

			return ob_get_clean();
		}

		/* === HELPER METHODS === */

		/**
		 * Used to compare terms by heading, whenever terms need to be ordered by custom heading letter
		 *
		 * @param $term_1 \WP_Term First term of comparison
		 * @param $term_2 \WP_Term Second term of comparison
		 * @return int -1/0/1 whether first term is minor/equal/major of second term
		 *
		 * @since 1.0.9
		 */
		public static function compare_terms_heading( $term_1, $term_2 ) {
			return strcmp( $term_1->name , $term_2->name );
		}
	}
}
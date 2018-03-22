<?php
/**
 * STYLE OPTIONS ARRAY
 *
 * @author Your Inspiration Themes
 * @package YITH Woocommerce Compare Premium
 * @version 2.0.0
 */

if ( ! defined( 'YITH_WOOCOMPARE' ) ) {
	exit;
} // Exit if accessed directly

$options = array(
    'table' => array(

	    array(
		    'name' => __( 'Comparison Table Settings', 'yith-woocommerce-compare' ),
		    'type' => 'title',
		    'desc' => '',
		    'id' => 'yith_woocompare_table'
	    ),

	    array(
		    'name' => __( 'Table title', 'yith-woocommerce-compare' ),
		    'desc' => __( 'Type the text for the table title.', 'yith-woocommerce-compare' ),
		    'id'   => 'yith_woocompare_table_text',
		    'std'  => __( 'Compare products', 'yith-woocommerce-compare' ),
		    'type' => 'text'
	    ),

	    array(
		    'name' => __( 'Table image', 'yith-woocommerce-compare' ),
		    'desc' => __( 'Choose an image/logo for the comparison table', 'yith-woocommerce-compare' ),
		    'id'   => 'yith-woocompare-table-image',
		    'std'  => '',
		    'default'  => '',
		    'type' => 'yith_woocompare_upload'
	    ),

	    array(
		    'name' => __( 'Show table image in', 'yith-woocommerce-compare' ),
		    'desc' => __( 'Popup', 'yith-woocommerce-compare' ),
		    'id'   => 'yith-woocompare-table-image-in-popup',
		    'default' => 'yes',
		    'type' => 'checkbox',
		    'checkboxgroup' => 'start'
	    ),

	    array(
		    'id'            => 'yith-woocompare-table-image-in-page',
		    'desc'          => __( 'Page', 'yith-woocommerce-compare' ),
		    'type'          => 'checkbox',
		    'default'       => 'yes',
		    'checkboxgroup' => 'end'
	    ),

	    array(
		    'name'  => __( 'Dynamic Attribute fields', 'yith-woocommerce-compare' ),
		    'desc'  => __( 'Choose to get dynamic attribute fields based on products', 'yith-woocommerce-compare' ),
		    'id'    => 'yith_woocompare_dynamic_attributes',
		    'std'   => 'no',
		    'default'   => 'no',
		    'type'  => 'checkbox'
	    ),

		array(
		    'name'  => __( 'Add product custom attributes', 'yith-woocommerce-compare' ),
		    'desc'  => __( 'Choose to add custom product attributes to compare table', 'yith-woocommerce-compare' ),
		    'id'    => 'yith_woocompare_custom_attributes',
		    'std'   => 'no',
		    'default'   => 'no',
		    'type'  => 'checkbox'
	    ),

	    array(
		    'name' => __( 'Fields to show', 'yith-woocommerce-compare' ),
		    'desc' => __( 'Select the fields to show in the comparison table and order them by drag&drop (WooCommerce attributes are also included)', 'yith-woocommerce-compare' ),
		    'id'   => 'yith_woocompare_fields_attrs',
		    'std'  => 'all',
		    'default' => 'all',
		    'type' => 'woocompare_attributes'
	    ),

	    array(
		    'name' => __( 'Product Info Fields', 'yith-woocommerce-compare' ),
		    'desc' => __( 'Title', 'yith-woocommerce-compare' ),
		    'id'   => 'yith_woocompare_fields_product_info_title',
		    'default' => 'yes',
		    'type' => 'checkbox',
		    'checkboxgroup' => 'start',
		    'custom_attributes' => array(
			    'data-deps' => 'yith_woocompare_fields_attrs_product_info'
		    )
	    ),

	    array(
		    'id'            => 'yith_woocompare_fields_product_info_image',
		    'desc'          => __( 'Image', 'yith-woocommerce-compare' ),
		    'type'          => 'checkbox',
		    'default'       => 'yes',
		    'checkboxgroup' => ''
	    ),

	    array(
		    'id'            => 'yith_woocompare_fields_product_info_add_cart',
		    'desc'          => __( 'Add to Cart', 'yith-woocommerce-compare' ),
		    'type'          => 'checkbox',
		    'default'       => 'yes',
		    'checkboxgroup' => 'end'
	    ),

		array(
		    'id'            => 'yith_woocompare_use_full_description',
		    'name'          => __( 'Use full description', 'yith-woocommerce-compare' ),
		    'desc'          => __( 'Choose to use full description instead of short description.', 'yith-woocommerce-compare' ),
		    'type'          => 'checkbox',
		    'default'       => 'no',
		    'std'       	=> 'no'
	    ),

	    array(
		    'name' => __( 'Repeat "Price" field', 'yith-woocommerce-compare' ),
		    'desc' => __( 'Repeat the "Price" field at the end of the table', 'yith-woocommerce-compare' ),
		    'id'   => 'yith_woocompare_price_end',
		    'std'  => 'no',
		    'default' => 'no',
		    'type' => 'checkbox',
		    'custom_attributes' => array(
			    'data-deps' => 'yith_woocompare_fields_attrs_price'
		    ),
	    ),

	    array(
		    'name' => __( 'Repeat "Add to cart" field', 'yith-woocommerce-compare' ),
		    'desc' => __( 'Repeat the "Add to cart" field at the end of the table', 'yith-woocommerce-compare' ),
		    'id'   => 'yith_woocompare_add_to_cart_end',
		    'std'  => 'no',
		    'default' => 'no',
		    'type' => 'checkbox'
	    ),

	    array(
		    'name' => __( 'Image size', 'yith-woocommerce-compare' ),
		    'desc' => sprintf( __( 'Set image size (in px). After changing these settings you may need to %s.', 'yith-woocommerce-compare' ), '<a href="http://wordpress.org/extend/plugins/regenerate-thumbnails/">' . __( 'regenerate your thumbnails', 'yith-woocommerce-compare' ) . '</a>' ),
		    'id'   => 'yith_woocompare_image_size',
		    'type' 		=> 'woocompare_image_width',
		    'default'	=> array(
			    'width' 	=> 220,
			    'height'	=> 154,
			    'crop'		=> 1
		    ),
		    'std'	=> array(
			    'width' 	=> 220,
			    'height'	=> 154,
			    'crop'		=> 1
		    )
	    ),

		array(
			'name' => __( 'Highlight different values', 'yith-woocommerce-compare' ),
			'desc' => __( 'Choose to highlight row with different values.', 'yith-woocommerce-compare' ),
			'id'   => 'yith_woocompare_highlights_different',
			'std'  => 'no',
			'default' => 'no',
			'type' => 'checkbox'
		),

		array(
			'name' => __( 'Number of fixed columns', 'yith-woocommerce-compare' ),
			'desc' => __( 'Choose the number of fixed columns in compare table.', 'yith-woocommerce-compare' ),
			'id'   => 'yith_woocompare_num_fixedcolumns',
			'std'  => '1',
			'default' => '1',
			'type' => 'number',
			'custom_attributes' => array(
				'min'	=> '1'
			)
		),

	    array(
		    'type' => 'sectionend',
		    'id' => 'yith_woocompare_table_end'
	    ),

    )
);

return apply_filters( 'yith_woocompare_table_settings', $options );

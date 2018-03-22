<?php
/**
 * Get attribute name by attribute_id
 * @param  string $taxonomy 
 * @return boolean
 */
function jcaa_get_attribute_id_by_name($taxonomy){

	global $wpdb;

	$taxonomy_name = substr($taxonomy, strlen('pa_'));
	$result = $wpdb->get_col( $wpdb->prepare("SELECT attribute_id FROM " . $wpdb->prefix . "woocommerce_attribute_taxonomies WHERE attribute_name = %s", $taxonomy_name ) );
	if($result){
		$attribute_id = isset($result[0]) ? absint($result[0]) : false;
		return $attribute_id;
	}

	return false;
}

/**
 * Remove grouped attributes from attribute list, and add as elemnt to group attribute
 */
function jcaa_get_product_attributes($attributes){

	$temp = array();
	foreach( $attributes as $name => $data){

		$id = jcaa_get_attribute_id_by_name($name);
		$jcaa_attribute_grouped = JCAA()->get_attr_setting($id, 'jcaa_attribute_grouped');

		if( $jcaa_attribute_grouped === 'yes' ){

			$jcaa_attribute_group = JCAA()->get_attr_setting($id, 'jcaa_attribute_group');
			if(!empty($jcaa_attribute_group)){

				$temp[$jcaa_attribute_group][] = $attributes[$name];
				unset($attributes[$name]);
			}
		}		
	}

	// create empty attribute with groups name
	foreach($temp as $id => $attribute){
		$attributes[$id] = array(
			'name' => $id,
			'value' => '',
			'position' => '0',
			'is_visible' => 1,
			'is_variation' => 0,
			'is_taxonomy' => 0,
			'jcaa_attributes' => $attribute
		);
	}

	return $attributes;
}

if(!is_admin()){
	add_action( 'woocommerce_after_add_to_cart_button', 'jcaa_enable_output_grouped_attrs' );	
	add_action( 'woocommerce_before_add_to_cart_form', 'jcaa_disable_output_grouped_attrs' );
	add_filter( 'woocommerce_attribute', 'jcaa_attribute', 10, 2 );
	add_filter( 'woocommerce_attribute_label', 'jcaa_attribute_label', 10, 2);
	add_action( 'woocommerce_single_product_summary', 'jcaa_show_simple_attributes', 25 );
}

/**
 * Enable Attribute Groups Output on product attributes list: $product->list_attributes()
 */
function jcaa_enable_output_grouped_attrs(){
	add_filter( 'woocommerce_get_product_attributes', 'jcaa_get_product_attributes', 10, 1 );
}

/**
 * Disable Attribute Groups Output at the end of product attributes list: $product->list_attributes()
 */
function jcaa_disable_output_grouped_attrs(){
	remove_filter( 'woocommerce_get_product_attributes', 'jcaa_get_product_attributes', 10, 1 );
}

/**
 * Output group attribites in product information
 */
function jcaa_attribute($attribute, $values){

	remove_filter( 'woocommerce_attribute', 'jcaa_attribute', 10, 2 );
	$term_seperator = '</span><span class="jcaa_attr_seperator">' . apply_filters( 'jcaa/term_seperator', ', ' ) . '</span><span class="jcaa_attr_value">';
	$attribute_seperator = apply_filters( 'jcaa/attribute_seperator', ': ' );

	$output_table = JCAA()->get_settings('group_attr_term_display') == 'table' ? true : false;

	global $product;

	if(isset($values['jcaa_attributes'])){

		if( $output_table ){
			// TABLE opening tabs
			$output = '<table class="jcaa_group_attr jcaa_group_table"><tbody>';
		}else{
			// LIST opening tabs
			$output = '<ul class="jcaa_group_attr jcaa_group_list">';
		}

        $counter = 0;

		foreach($values['jcaa_attributes'] as $attr_grouped){

            $counter++;

			// todo: allow custom display type
			$attr_values = wc_get_product_terms( $product->id, $attr_grouped['name'], array( 'fields' => 'names' ) );
			$attr_label = wc_attribute_label($attr_grouped['name']);
			$attr_terms = apply_filters( 'woocommerce_attribute', wptexturize( implode( $term_seperator, $attr_values )  ), $attr_grouped, $attr_values );

            $row_class = ($counter % 2) == 0 ? 'alt' : '';

			if( $output_table ){
				// TABLE row
				$output .= '<tr class="jcaa_group_attr_term ' . $row_class . '"><th class="jcaa_attr_label">' . $attr_label . '</th><td class="jcaa_attr_value">' . $attr_terms . '</td></tr>';
			}else{
				// LIST row
				$output .= '<li class="jcaa_group_attr_term ' . $row_class . '"><span class="jcaa_attr_label">'. $attr_label  . $attribute_seperator .'</span> <span  class="jcaa_attr_value">' . $attr_terms .'</span></li>';
			}			
		}

		if( $output_table ){
			// TABLE closing tabs
			$output .= "</tbody></table>";
		}else{
			// LIST closing tabs
			$output .= '</ul>';
		}

		$attribute = $output;
	}

	add_filter( 'woocommerce_attribute', 'jcaa_attribute', 10, 2 );
	
	return $attribute;
}

/**
 * Replace label with custom label from attribute add/edit screen
 */

function jcaa_attribute_label($label, $name){

	// show full name in admin screens
	if(is_admin()){
		return $label;
	}

	global $wpdb;
	$id = $wpdb->get_var( $wpdb->prepare( "SELECT attribute_id FROM {$wpdb->prefix}woocommerce_attribute_taxonomies WHERE attribute_name = %s;", $name ) );
	$jcaa_attribute_label = JCAA()->get_attr_setting($id, 'jcaa_attribute_label');
	if(! empty($jcaa_attribute_label) ){
		return $jcaa_attribute_label;
	}	

	return $label;
}

/**
 * Show product attributes above add to cart button on non variable products
 * Request feature by ursacescu
 */
function jcaa_show_simple_attributes(){

	$enable_simple_attr_output = JCAA()->get_settings('enable_simple_attr_output');
	if($enable_simple_attr_output !== 'yes'){
		return;
	}
	
	global $product;
	if(!$product->is_type('variable')){
		jcaa_enable_output_grouped_attrs();
		$product->list_attributes();
		jcaa_disable_output_grouped_attrs();
	}
}

/**
 * Get advanced attribute settings for the passed attribute
 *
 * Convert the attribute into an advanced attribute, otherwise return false
 * @param  array  	$attr 	WC_Attribute
 * @return array 	JCAA_Attribute
 */
function jcaa_get_advanced_attribute($name){

	global $product;

	$id = jcaa_get_attribute_id_by_name($name);
	$settings = JCAA()->get_attr_setting($id);	

	$result = array();
	$result['name'] = sanitize_title( $name ); //str_replace( 'pa_', '', sanitize_title( $name ) );
	$result['size'] = isset($settings['jcaa_attribute_size']) && !empty($settings['jcaa_attribute_size']) ? $settings['jcaa_attribute_size'] : 'small';
	$result['type'] = isset($settings['jcaa_attribute_type']) && !empty($settings['jcaa_attribute_type']) ? $settings['jcaa_attribute_type'] : 'default';
	$result['label'] = isset($settings['jcaa_attribute_label']) && !empty($settings['jcaa_attribute_label']) ? $settings['jcaa_attribute_label'] : 'show';
	$result['style'] = isset($settings['jcaa_attribute_style']) && !empty($settings['jcaa_attribute_style']) ? $settings['jcaa_attribute_style'] : 'default';
	$result['catalog'] = isset($settings['jcaa_attribute_catalog']) && !empty($settings['jcaa_attribute_catalog']) ? $settings['jcaa_attribute_catalog'] : 'no';
	$result['options'] = array();

	$terms = wc_get_product_terms( $product->id, $name, array( 'fields' => 'all') );

	foreach($terms as $term){

		$option = array();

		// wpml check parent for attribute settings
		$translated_term_id = false;

		if(function_exists('icl_object_id'))
			$translated_term_id = icl_object_id($term->term_id, $name, true, icl_get_default_language());

		$term_id = $translated_term_id > 0 ? $translated_term_id : $term->term_id;

		$option['name'] = $term->name;
		$option['value'] = $term->slug;
		$option['img'] =  wp_get_attachment_thumb_url( get_woocommerce_term_meta( $term_id, '_jcaa_product_attr_thumbnail_id', true ) );
		$option['color'] = get_woocommerce_term_meta( $term_id, '_jcaa_product_attr_color', true );
		$option['alt'] = $term->slug;			

		$result['options'][] = $option;
	}

	return $result;
}
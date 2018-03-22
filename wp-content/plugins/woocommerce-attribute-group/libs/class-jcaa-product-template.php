<?php 
/**
 * @author James Collings <james@jclabs.co.uk>
 * @version 0.1
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

class JCAA_Product_Template{

	public function __construct(){

		add_filter( 'woocommerce_attribute', array( $this, 'jc_woocommerce_attribute'), 10, 3 );
		add_action('woocommerce_before_add_to_cart_button', array( $this, 'jcaa_before_single_variation' ) );

		// display custom user styles for attributes.
		add_action('wp_print_styles', array( $this, 'output_product_attribute_styles' ));

		// display attribute on product archive
		add_action( 'woocommerce_after_shop_loop_item' , array( $this, 'output_archive_attributes' ), 5 );

		// test action to output attribute term
		add_action('jcaa/display_attribute_term', array($this, 'output_product_attribute_term'), 10, 2);

		add_action('wp_enqueue_scripts', array( $this, 'enqueue_scripts' ) );
		add_action('wp_enqueue_scripts', array( $this, 'enqueue_styles' ) );
	}

	/**
	 * Load plugin frontend javascript files
	 * @return void
	 */
	public function enqueue_scripts(){

		if(!is_woocommerce()){
			return;
		}

		wp_register_script( 'jcaa-product', JCAA()->get_plugin_url() . 'assets/js/frontend/product.js', array('jquery'), JCAA()->get_version(), true );
		wp_localize_script( 'jcaa-product', 'jcaa', array('enable_validation' => JCAA()->get_settings('enable_validation')) );
		wp_enqueue_script( 'jcaa-product' );
	}

	/**
	 * Load plugin frontend css files
	 * @return void
	 */
	public function enqueue_styles(){

		if(!is_woocommerce()){
			return;
		}

		// core styles
		wp_enqueue_style( 'jcaa-core', JCAA()->get_plugin_url() . 'assets/css/core.css', false, JCAA()->get_version() );

		// optional styles
		if(JCAA()->get_settings('enable_css') === 'yes'){
			wp_enqueue_style( 'jcaa-basic', JCAA()->get_plugin_url() . 'assets/css/basic.css', array('jcaa-core'), JCAA()->get_version() );
		}
	}

	/**
	 * Generate attribute object with plugin settings
	 * @param  array
	 * @return array
	 */
	public function jcaa_populate_attr($attr = array()){

		// escape at the moment if attribute is not added as an attribute term
		if($attr['is_taxonomy'] == 0){
			return false;
		}

		return jcaa_get_advanced_attribute($attr['name']);
	}

	/**
	 * Fetch list of all product attibutes and
	 * @param  object
	 * @return array
	 */
	public function jcaa_get_product_attrs($product){

		if($product->product_type != 'variable'){
			return;
		}

		// get attributes
		$attributes = $product->get_attributes();
		$output = array();

		foreach($attributes as $attr){
			$result = $this->jcaa_populate_attr($attr);
			if($result){
				$output[] = $result;
			}
		}

		return $output;
	}

	/**
	 * Output dynamic styles and localize javascript variables
	 * @return void
	 */
	public function jcaa_before_single_variation(){
		
		global $product;

		// pass attributes to js
		$result = $this->jcaa_get_product_attrs($product);
		wp_localize_script( 'jcaa-product', 'jcaa_attrs', $result );
	}

	/**
	 * Change output of attributes in single product view additonal info tab
	 * @param  string
	 * @param  array
	 * @return string
	 */
	public function jc_woocommerce_attribute($output, $attribute){
		
		if(JCAA()->get_settings('enable_additional_info') !== 'yes'){
			return $output;
		}

		$result = $this->output_product_attribute_display($attribute, true);
		if($result){
			$output = $result;
		}

		return $output;
	}

	public function output_product_attribute_styles(){

		if(!is_woocommerce()){
			return;
		}

		// get dynamic attribute sizes
		$small_image = JCAA()->get_settings('image_size_small');
		$medium_image = JCAA()->get_settings('image_size_medium');
		$large_image = JCAA()->get_settings('image_size_large');

		$sizes = array(
			'small' => array(
				'width' => $small_image.'px',
				'height' => $small_image.'px',
				'font' => ($small_image*0.5).'px'
			),
			'medium' => array(
				'width' => $medium_image.'px',
				'height' => $medium_image.'px',
				'font' => ($medium_image*0.5).'px'
			),
			'large' => array(
				'width' => $large_image.'px',
				'height' => $large_image.'px',
				'font' => ($large_image*0.5).'px'
			),
		);

		?>
		<style type="text/css">

		/**
		 * Dynamic Styles
		 */
		ul.jcaa_attr_variable_select .jcaa_attr_option:hover{
		 	border-color:<?php echo JCAA()->get_settings('attr_border_color_active'); ?> !important;
		 }
		
		.jcaa_attr_select .jcaa_attr_option, .jcaa_attr_select .jcaa_attr_option.jcass_attr_disable:hover{
			border: <?php echo JCAA()->get_settings('attr_padding_size'); ?>px solid <?php echo JCAA()->get_settings('attr_padding_color'); ?> !important;
		}

		<?php foreach($sizes as $key => $size): ?>
		.jcaa_attr_select.jcaa_size_<?php echo $key; ?> .jcaa_obj_image.jcaa_attr_option, .jcaa_attr_select.jcaa_size_<?php echo $key; ?> .jcaa_obj_color.jcaa_attr_option{
			width: <?php echo $size['width']; ?>;
			height: <?php echo $size['height']; ?>;
		}

        .upsells.products .jcaa_attr_select.jcaa_size_<?php echo $key; ?> .jcaa_obj_image.jcaa_attr_option, .upsells.products .jcaa_attr_select.jcaa_size_<?php echo $key; ?> .jcaa_obj_color.jcaa_attr_option{
            width: <?php echo $size['width']; ?>;
            height: <?php echo $size['height']; ?>;
        }

		.jcaa_attr_select.jcaa_size_<?php echo $key; ?> .jcaa_obj_text.jcaa_attr_option{
			line-height: <?php echo $size['height']; ?>;
			font-size:<?php echo $size['font']; ?>;
		}
		<?php endforeach; ?>

		ul.jcaa_attr_select li{
			border: <?php echo intval(JCAA()->get_settings('attr_border_size')); ?>px solid <?php echo JCAA()->get_settings('attr_border_color'); ?>;
		}

		.jcaa_attr_select .jcaa_active_attr{
			border-color: <?php echo JCAA()->get_settings('attr_border_color_active'); ?>;
		}

		.jcaa_attr_select .jcass_attr_disabled{
			opacity: <?php echo JCAA()->get_settings('attr_opacity_disabled'); ?>;
		}

		</style>
		<?php
	}

	/**
	 * Output advanced product attribute
	 * @return mixed boolean/string
	 */
	public function output_product_attribute_display( $attribute , $product_info = false){

		$advanced_attribute = $this->jcaa_populate_attr($attribute);
		
		if($advanced_attribute['type'] !== 'image' && $advanced_attribute['type'] !== 'color'){
			return false;
		}

		// dont display in catalog
		if(!$product_info && $advanced_attribute['catalog'] === 'no'){
			return false;
		}
		
		ob_start();
		$classes = array('jcaa_attr_select');
		$classes[] = 'jcaa_size_' . $advanced_attribute['size'];

		if( $advanced_attribute['style'] === 'rounded'){
			$classes[] = 'jcaa_rounded_corners';
		}
		?>
		<ul class="<?php echo implode(' ', $classes); ?>">
			<?php
			foreach($advanced_attribute['options'] as $option){
				do_action('jcaa/display_attribute_term', $option, $advanced_attribute );
			}
			?>
		</ul>
		<?php
		$output = ob_get_clean();

		return $output;
	}

	// public function output_product_attribute_term( $output, $attribute_term, $advanced_attribute){
	public function output_product_attribute_term( $option, $advanced_attribute){

		global $product;
		$permalink = $product->get_permalink();
		$attribute_link = add_query_arg(array('attribute_'.$advanced_attribute['name'] => $option['value']), $permalink);


		if($advanced_attribute['type'] == 'image'): ?>
			<li>
				<?php if(!is_product()): ?><a href="<?php echo esc_url($attribute_link); ?>"><?php endif; ?>
				<img src="<?php echo $option['img']; ?>" alt="<?php echo $option['name']; ?>" title="<?php echo $option['name']; ?>" class="jcaa_obj_image jcaa_attr_option">
				<?php if(!is_product()): ?></a><?php endif; ?>
			</li>
		<?php elseif($advanced_attribute['type'] == 'color'): ?>
			<li>
				<?php if(!is_product()): ?><a href="<?php echo esc_url($attribute_link); ?>"><?php endif; ?>
				<div style="background: <?php echo $option['color']; ?>" class="jcaa_obj_color jcaa_attr_option" title="<?php echo $option['name']; ?>"></div>
				<?php if(!is_product()): ?></a><?php endif; ?>
			</li>
		<?php endif;
	}

	public function output_archive_attributes(){
		global $product;

		$wc_attributes = $product->product_attributes;
		foreach($wc_attributes as $attribute){
			echo $this->output_product_attribute_display($attribute);
		}
	}
}

new JCAA_Product_Template();
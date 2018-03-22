<?php
if ( ! defined( 'ABSPATH' ) ) {
    exit;
} // Exit if accessed directly

$desc_tip   =   sprintf( '%s <ul><li>%s</li><li>%s</li><li>%s</li><li>%s</li><li>%s</li><li>%s</li><li>%s</li><li>%s</li><li>%s</li><li>%s </li></ul>',
    __( 'You can use these placehoders', 'ywson' ),
    __( '[D] Day without leading zeros', 'ywson' ),
    __( '[DD] Day with leading zeros', 'ywson' ),
    __( '[M] Month without leading zeros', 'ywson' ),
    __( '[MM] Month with leading zeros', 'ywson' ),
    __( '[YY] two-digit year', 'ywson' ),
    __( '[YYYY] Full year', 'ywson' ),
    __( '[h] 24-hour format of an hour without leading zeros', 'ywson' ),
    __( '[hh] 24-hour format of an hour with leading zeros', 'ywson' ),
    __( '[m] Minutes with leading zeros', 'ywson' ),
    __( '[s] Seconds, with leading zeros', 'ywson' )
);

$settings   =   array(

    'general'   =>  array(
        'section_sequential_order_settings' =>  array(
            'name'  => __('General Settings', 'ywson'),
            'type'  =>  'title',
            'id'    =>  'ywson_section_sequential_order'
            ),
        'start_order_number'    =>  array(
            'name'  =>  __('Numeration starting from', 'ywson'),
            'type'  =>  'number',
            'desc_tip'  =>  __('Set the starting number for order numeration','ywson'),
            'id'    =>  'ywson_start_order_number',
            'default'                           => 1,
			'std'                               => 1,
			'custom_attributes'                 => array(
				'min'      => 1,
				'step'     => 1,
                'max'      =>  2147483647,
				'required' => 'required')
            ),
        'order_prefix'  =>  array(
            'name'  =>  __('Order prefix', 'ywson'),
            'type'  =>  'text',
            'desc'  =>  __('Set a text to be used as prefix for order numbers.', 'ywson'),
            'desc_tip'  => $desc_tip,
            'id'    =>  'ywson_order_prefix',
            'placeholder'   => 'Ex: YWSON-',
            'default'       =>  '',
            'std'           =>  ''

        ),
        'order_suffix'  =>  array(
            'name'  =>  __('Order suffix', 'ywson'),
            'type'  =>  'text',
            'desc'  =>  __('Set a text to be used as suffix for order numbers.', 'ywson'),
            'desc_tip'  => $desc_tip,
            'id'    =>  'ywson_order_suffix',
            'placeholder'   =>' Ex: -YWSON',
            'default'       =>  '',
            'std'           =>  ''

        ),
        'custom_check_free_order'  => array(
            'name'  =>  __('Use different numeration for free orders', 'ywson'),
            'type'  =>   'checkbox',
            'desc'  =>  __('If this option has been activated, you can use a different numeration for your free orders.', 'ywson'),
            'id'    =>  'ywson_check_custom_free_order',
            'default'   => 0,
            'std'       =>  0
        ),
        'custom_numeration_free_order'  =>  array(
            'name'  =>  __('Numeration starting from:', 'ywson'),
            'type'  =>  'number',
            'desc_tip'  =>  __('Set the starting number for free order numeration','ywson'),
            'id'    =>  'ywson_start_free_order_number',
            'default'                           => 1,
            'std'                               => 1,
            'custom_attributes'                 => array(
                'min'      =>   1,
                'step'     =>   1,
                'max'      =>   2147483647,
                'required' =>   'required')
        ),
        'order_free_prefix'=> array(
            'name'  =>  __('Free order prefix','ywson'),
            'type'  =>  'text',
            'id'    =>  'ywson_free_order_prefix',
            'desc'  =>  __('Set a text to be used as prefix for free order numbers.', 'ywson'),
            'desc_tip'  => $desc_tip,
            'placeholder'   => 'Ex: YWSON_FREE-',
            'default'       =>  '',
            'std'           =>  ''


        ),
        'order_free_suffix'=> array(
            'name'  =>  __('Free order suffix','ywson'),
            'type'  =>  'text',
            'id'    =>  'ywson_free_order_suffix',
            'desc'  =>  __('Set a text to be used as suffix for free order numbers.', 'ywson'),
            'desc_tip'  => $desc_tip,
            'placeholder'   => 'Ex: -YWSON_FREE',
            'default'       =>  '',
            'std'           =>  ''


        ),
        'type_order_free'   =>  array(
            'name'  =>  __('Set your free order type', 'ywson'),
            'type'  =>  'select',
            'id'    =>  'ywson_free_order_type',
            'desc_tip'  =>  sprintf( '%s<br/><b>%s<br/>%s<b/>',
                __('With this option, you can choose in which way orders have to be recognized as free.', 'ywson' ),
                __( 'Order total: your order is free if the total is 0 (coupon and shipping included).', 'ywson'),
                __( 'Order products: your order is free only if all products it contains are free (coupon and shipping excluded).', 'ywson' ) ),

            'options'   =>  array(
                'order_tot'     =>__( 'Order Total', 'ywson' ),
                'product_ord'   =>__( 'Products in Order', 'ywson')
            ),
            'default'   => 'order_tot',
            'std'       =>  'order_tot'

        ),
        'general_settings_end'     => array(
            'type' => 'sectionend',
            'id'   => 'ywson_section_general_end'
        )

        )

    );

return apply_filters( 'ywson_general_options', $settings);
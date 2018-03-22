<?php
/**
 * This file belongs to the YIT Plugin Framework.
 *
 * This source file is subject to the GNU GENERAL PUBLIC LICENSE (GPL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://www.gnu.org/licenses/gpl-3.0.txt
 */

if ( !defined( 'ABSPATH' ) ) {
    exit;
} // Exit if accessed directly

$is_admin = is_admin_bar_showing() ? ' ywpc-admin' : '';
$position = get_option( 'ywpc_topbar_position', 'top' );
$date     = ywpc_get_countdown( $args['end_date'] );
$variable = ( $args['type'] == 'variable' ) ? $args['url'] : '';

?>
<div class="ywpc-topbar<?php echo $is_admin; ?> ywpc-<?php echo $position; ?>">
    <a href="<?php echo get_permalink( $args['id'] ) . $variable; ?>" class="ywpc-countdown-topbar">
        <div class="ywpc-header">
            <?php

            echo get_option( 'ywpc_topbar_timer_title', __( 'Click here for a special offer!', 'yith-woocommerce-product-countdown' ) );

            ?>
        </div>
        <div class="ywpc-timer">
            <div class="ywpc-days">
                <div class="ywpc-amount">
                    <?php $days = ( ( is_rtl() ) ? strrev( $date['dd'] ) : $date['dd'] ); ?>
                    <span class="ywpc-char-1"><?php echo substr( $days, 0, 1 ); ?></span>
                    <span class="ywpc-char-2"><?php echo substr( $days, 1, 1 ); ?></span>
                </div>
                <div class="ywpc-label">
                    <?php _e( 'Days', 'yith-woocommerce-product-countdown' ) ?>
                </div>
            </div>
            <div class="ywpc-hours">
                <div class="ywpc-amount">
                    <?php $hours = ( ( is_rtl() ) ? strrev( $date['hh'] ) : $date['hh'] ); ?>
                    <span class="ywpc-char-1"><?php echo substr( $hours, 0, 1 ); ?></span>
                    <span class="ywpc-char-2"><?php echo substr( $hours, 1, 1 ); ?></span>
                </div>
                <div class="ywpc-label">
                    <?php _e( 'Hours', 'yith-woocommerce-product-countdown' ) ?>
                </div>
            </div>
            <div class="ywpc-minutes">
                <div class="ywpc-amount">
                    <?php $minutes = ( ( is_rtl() ) ? strrev( $date['mm'] ) : $date['mm'] ); ?>
                    <span class="ywpc-char-1"><?php echo substr( $minutes, 0, 1 ); ?></span>
                    <span class="ywpc-char-2"><?php echo substr( $minutes, 1, 1 ); ?></span>
                </div>
                <div class="ywpc-label">
                    <?php _e( 'Minutes', 'yith-woocommerce-product-countdown' ) ?>
                </div>
            </div>
            <div class="ywpc-seconds">
                <div class="ywpc-amount">
                    <?php $seconds = ( ( is_rtl() ) ? strrev( $date['ss'] ) : $date['ss'] ); ?>
                    <span class="ywpc-char-1"><?php echo substr( $seconds, 0, 1 ); ?></span>
                    <span class="ywpc-char-2"><?php echo substr( $seconds, 1, 1 ); ?></span>
                </div>
                <div class="ywpc-label">
                    <?php _e( 'Seconds', 'yith-woocommerce-product-countdown' ) ?>
                </div>
            </div>
        </div>
    </a>
</div>
<script type="text/javascript">
    jQuery(document).ready(function ($) {

        var countdown_div = $('.ywpc-countdown-topbar .ywpc-timer'),
            countdown_html = countdown_div.clone(),
            first_char,
            second_char;

        <?php if (! is_rtl()):?>
        first_char = ' .ywpc-amount .ywpc-char-1';
        second_char = ' .ywpc-amount .ywpc-char-2';
        <?php else:?>
        second_char = ' .ywpc-amount .ywpc-char-1';
        first_char = ' .ywpc-amount .ywpc-char-2';
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
            until : $.countdown.UTCDate(<?php echo $date['gmt']; ?>, <?php echo date( 'Y', $date['to'] ); ?>, <?php echo ( date( 'm', $date['to'] ) - 1 ); ?>, <?php echo date( 'd', $date['to'] ); ?>),
            layout: countdown_html.html()
        });

    });
</script>




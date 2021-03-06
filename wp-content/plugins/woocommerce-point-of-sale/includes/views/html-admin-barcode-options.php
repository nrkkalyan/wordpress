<?php

if (!defined('ABSPATH')) {
    exit;
}
$products = array();

?>
<div id="woocommerce-order-items">
    <div class="woocommerce_order_items_wrapper wc-order-items-editable">
        <table cellspacing="0" cellpadding="0" class="woocommerce_order_items wp-list-table">
            <thead>
            <tr>
                <th class="item_cost sortable" data-sort="float"><?php _e('SKU', 'woocommerce'); ?></th>
                <th class="item sortable" colspan="2"
                    data-sort="string-ins"><?php _e('Product', 'woocommerce'); ?></th>
                <th class="item_cost sortable" data-sort="float"><?php _e('Price', 'woocommerce'); ?></th>
                <th class="item_cost sortable" data-sort="float"><?php _e('Type', 'woocommerce'); ?></th>
                <th class="line_cost sortable"
                    data-sort="float"><?php _e('Preview', 'woocommerce'); ?></th>
                <th class="item_cost sortable" data-sort="float"><?php _e('Qty', 'woocommerce'); ?></th>
                <th class="wc-order-edit-line-item" width="1%">&nbsp;</th>
            </tr>
            </thead>
            <tbody id="order_line_items">
            <?php
            if (empty($products)) {
                ?>
                <tr class="no_products">
                    <td colspan="8"><?php _e('No items found.'); ?></td>
                </tr>
                <?php
            } else {
                foreach ($products as $product_id) {
                    $_product = wc_get_product($product_id);
                    $class = '';
                    if (!$_product) continue;

                    include 'html-admin-barcode-item.php';
                }
            } ?>
            </tbody>
        </table>
    </div>
    <div class="wc-order-data-row wc-order-bulk-actions wc-order-data-row-toggle">
        <button type="button" class="button bulk-delete-items"
                style="display:none;"><?php _e('Delete selected row(s)', 'woocommerce'); ?></button>
        <button type="button" class="button bulk-add-variations"
                style="display:none;"><?php _e('Add all variations', 'woocommerce'); ?></button>
        <button class="button add-line-item" type="button"><?php _e('Add new product', 'woocommerce'); ?></button>
        <button class="button add-line-item-category"
                type="button"><?php _e('Add new category', 'woocommerce'); ?></button>


        <div class="barcode-edit-item">
            <button type="button" class="button cancel-action"><?php _e('Cancel', 'woocommerce'); ?></button>
            <button type="button" class="button button-primary save-action"><?php _e('Save', 'woocommerce'); ?></button>
        </div>
    </div>
</div>

<script type="text/template" id="wc_pos_modal_barcode_add_products">
    <div id="wc-pos-barcode-modal-dialog" tabindex="0">
        <div class="wc-backbone-modal">
            <div class="wc-backbone-modal-content">
                <section class="wc-backbone-modal-main" role="main">
                    <header class="wc-backbone-modal-header">
                        <h1><?php _e('Add products', 'woocommerce'); ?></h1>
                        <button class="modal-close modal-close-link dashicons dashicons-no-alt">
                            <span class="screen-reader-text">Close modal panel</span>
                        </button>
                    </header>
                    <article>
                        <form action="" method="post">
                            <?php if (WC_VERSION >= 3) : ?>
                                <select id="add_item_id" name="add_order_items" class="wc-product-search"
                                        style="width: 100%;"
                                        data-placeholder="<?php esc_attr_e('Search for a product&hellip;', 'woocommerce'); ?>"
                                        data-minimum_input_length="2"
                                        multiple="multiple"></select>
                            <?php else : ?>
                                <input type="hidden" id="add_item_id" name="add_order_items" class="wc-product-search"
                                       style="width: 100%;"
                                       data-placeholder="<?php esc_attr_e('Search for a product&hellip;', 'woocommerce'); ?>"
                                       data-minimum_input_length="2"
                                       data-multiple="true"/>
                            <?php endif; ?>
                        </form>
                    </article>
                    <footer>
                        <div class="inner">
                            <button id="add_products"
                                    class="button button-primary button-large"><?php _e('Add', 'woocommerce'); ?></button>
                        </div>
                    </footer>
                </section>
            </div>
        </div>
        <div class="wc-backbone-modal-backdrop modal-close"></div>
    </div>
</script>
<script type="text/template" id="wc_pos_barcode_no_products">
    <tr class="no_products">
        <td colspan="8"><?php _e('No items found.'); ?></td>
    </tr>
</script>
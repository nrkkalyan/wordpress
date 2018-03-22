=== YITH Pre-Order for WooCommerce Premium ===

Contributors: yithemes
Tags: woocommerce, e-commerce, shop, pre, order, pre-order, pre-purchase, buy, purchase, date, release, yit, yith, yithemes
Requires at least: 4.0
Tested up to: 4.7
Stable tag: 1.2.3
License: GPLv2 or later
License URI: http://www.gnu.org/licenses/gpl-2.0.html

== Changelog ==

= Version 1.2.3 - Released: May 26, 2017 =

* Fix: "Force 'Allow Backorders' and 'In stock' status" option fixed for WooCommerce 3.0
* Dev: Added filter 'yith_ywpo_no_auto_time' for modify the time part of availability date.

= Version 1.2.2 - Released: Apr 24, 2017 =

* New: Added Order notes notifying Pre-Order items which have been ordered.
* Update: YITH Plugin Framework.
* Fix: Saving duplicated post meta.

= Version 1.2.1 - Released: Mar 22, 2017 =

* Fix: Availability dates hasn't been showing on WC v2.6 or less on single product page and cart page.
* Fix: Check if product exists on Pre-Orders column on Orders backend page.
* Dev: Now using get_formatted_name() instead of get_title() on Pre-Orders column on Orders backend page.
* Dev: Increased priority on woocommerce_stock_html filter to 20.

= Version 1.2.0 - Released: Mar 21, 2017 =

* New:  Support to WooCommerce 3.0.0-rc.1
* Update: YITH Plugin Framework
* New: Shortcode for display the availability date of a Pre-Order product. [yith_wcpo_availability_date product_id=<insert the product id here>]
* New: Bulk action for setting Pre-Order status now available for variations.

= Version 1.1.3 - Released: Jan 24, 2017 =

* New: column in Products page to see which product is Pre-Order or not quickly.

= Version 1.1.2 - Released: Jan 18, 2017 =

* New: option to choose whether allowing Pre-Order products and regular products in the same cart or not
* Fix: download link for Pre-Order product visible before sale date

= Version 1.1.1 - Released: Dec 22, 2016 =

* Fixed: error on single product page "Missing argument 3 for YITH_Pre_Order_Frontend_Premium::show_date_on_single_product()"

= Version 1.1.0 - Released: Dec 14, 2016 =

* Added: Compatibility for Bazar theme.
* Added: 'Default Add to Cart text', 'Default Availability date text', 'No Date message' strings for WPML translation.
* Fixed: Updated translation strings.
* Fixed: Issue Pre-Order prices with decimal numbers rounded to 0. Now displayed correctly.

= Version 1.0.13 - Released: Nov 11, 2016 =

* Added: Availability dates can be shown on pages other that the single product page with the 'yith_ywpo_enqueue_script' hook
* Fixed: Now in Edit Order page the custom item metas for orders which has pre-ordered items are hidden.

= Version 1.0.12 - Released: Oct 28, 2016 =

* Fixed add to cart button issue in variations for Atelier theme.

= Version 1.0.11 - Released: Oct 20, 2016 =

* Fixed: Out of stock products issue. Redesigned options for allow Pre-Order products to be purchased when has no stock, only available when managing stock.
* Added: Option to force allow backorders and 'in stock' stock status.

= Version 1.0.10 - Released: Oct 18, 2016 =

* Added: Color picker for 'availability date' and 'no date' messages.
* Fixed: Out of stock products with Pre-Order status can be purchased now.

= Version 1.0.9 - Released: Oct 06, 2016 =

* Added: Availability date can be displayed in automatic JS format or WordPress setting format.

= Version 1.0.8 - Released: Oct 03, 2016 =

* Fixed: added check to WPML plugin status

= Version 1.0.7 - Released: Sep 28, 2016 =

* Fixed: Date issue on Order Receipt email.
* Added: Some translation strings.
* Removed: WC installation check on init.php. (It's already checked on functions.php).
* Fixed: Wrong translation on 'Pre-Order label' in Add to cart button

= Version 1.0.6 - Released: Sep 26, 2016 =

* Added: Now the user can choose which order statuses that are removed from Pre-Ordered view.

= Version 1.0.5 - Released: Sep 21, 2016 =

* Fixed: Compatibility for The Polygon theme.
* Fixed: Now availability dates are shown on Product Category pages.

= Version 1.0.4 - Released: Sep 19, 2016 =

* Fixed: Deactivated email notifications still sending.

= Version 1.0.3 - Released: Sep 15, 2016 =

* Fixed: Requires WC installed in order to work.
* Fixed: Duplicated email notification for the same user.
* Fixed: Only send a date change notification to the users who really bought a Pre-Order product and has not finished yet.

= Version 1.0.2 - Released: Sep 08, 2016 =

* Fixed: Require functions.php on init.php, now specifying the plugin path.

= Version 1.0.1 - Released: Sep 06, 2016 =

* Fixed: Variations saving date field bug.

= Version 1.0.0 - Released: Sep 02, 2016 =

* First release


== Suggestions ==


If you have suggestions about how to improve YITH Pre-Order for WooCommerce, you can [write us](mailto:plugins@yithemes.com "Your Inspiration Themes")
so we can bundle them into the next release of the plugin.




== Translators ==


If you have created your own language pack, or have an update for an existing one, 
you can send [gettext PO and MO file](http://codex.wordpress.org/Translating_WordPress "Translating WordPress")
[use](http://yithemes.com/contact/ "Your Inspiration Themes") 
so we can bundle it into YITH Pre-Order for WooCommerce languages.




= Available Languages =

* English
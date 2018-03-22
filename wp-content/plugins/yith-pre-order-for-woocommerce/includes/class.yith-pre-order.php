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
 * @class      YITH_Pre_Order
 * @package    Yithemes
 * @since      Version 1.0.0
 * @author     Your Inspiration Themes
 *
 */

if ( ! class_exists( 'YITH_Pre_Order' ) ) {
	/**
	 * Class YITH_Pre_Order
	 *
	 * @author Carlos Mora <carlos.eugenio@yourinspiration.it>
	 */
	class YITH_Pre_Order {
		/**
		 * Plugin version
		 *
		 * @var string
		 * @since 1.0
		 */
		public $version = YITH_WCPO_VERSION;

		/**
		 * Main Instance
		 *
		 * @var YITH_Pre_Order
		 * @since  1.0
		 * @access protected
		 */
		protected static $_instance = null;

		/**
		 * Main Admin Instance
		 *
		 * @var YITH_Pre_Order_Admin
		 * @since 1.0
		 */
		public $admin = null;

		/**
		 * Main Frontpage Instance
		 *
		 * @var YITH_Pre_Order_Frontend
		 * @since 1.0
		 */
		public $frontend = null;




		/**
		 * Construct
		 *
		 * @author Andrea Grillo <andrea.grillo@yithemes.com>
		 * @since  1.0
		 */
		protected function __construct() {
            if ( version_compare( WC()->version, '2.6', '>=' ) ) {
                add_action( 'init', array( $this, 'add_endpoints' ), 1 );
            }
            $this->init_includes();
            $this->init_my_account();
            $this->init();
		}

		/**
		 * Main plugin Instance
		 *
		 * @return YITH_Pre_Order Main instance
		 * @author Andrea Grillo <andrea.grillo@yithemes.com>
		 */
		public static function instance() {
			if ( is_null( self::$_instance ) ) {
				self::$_instance = new self();
			}

			return self::$_instance;
		}

		public function init_includes() {
            require_once( YITH_WCPO_PATH . 'includes/class.yith-ywpo-plugin-fw-loader.php' );
            require_once( YITH_WCPO_PATH . 'includes/class.yith-pre-order-admin.php' );
            require_once( YITH_WCPO_PATH . 'includes/class.yith-pre-order-edit-product-page.php' );
            require_once( YITH_WCPO_PATH . 'includes/class.yith-pre-order-frontend.php' );
            require_once( YITH_WCPO_PATH . 'includes/class.yith-pre-order-my-account.php' );
            require_once( YITH_WCPO_PATH . 'includes/class.yith-pre-order-product.php' );
        }


		/**
		 * Class Initializzation
		 *
		 * Instance the admin or frontend classes
		 *
		 * @author Andrea Grillo <andrea.grillo@yithemes.com>
		 * @since  1.0
		 * @return void
		 * @access protected
		 */

		public function init() {

			if ( is_admin() ) {
				$this->admin = new YITH_Pre_Order_Admin();
			}

			if ( ! is_admin() || ( defined( 'DOING_AJAX' ) && DOING_AJAX ) ) {
				$this->frontend = new YITH_Pre_Order_Frontend();
			}
		}

		/**
		 * Add waiting list account endpoints for WC 2.6
		 *
		 * @author Lorenzo Giuffrida
		 * @access public
		 */
		public function add_endpoints() {
            add_rewrite_endpoint( 'my-pre-orders', EP_ROOT | EP_PAGES );
		}

		public function init_my_account() {
            new YITH_Pre_Order_My_Account();
        }
	}
}
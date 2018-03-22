/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : 192.168.10.10:3306
 Source Schema         : hanghieu.sale

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 22/03/2018 21:51:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for wp_commentmeta
-- ----------------------------
DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- ----------------------------
-- Table structure for wp_comments
-- ----------------------------
DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- ----------------------------
-- Records of wp_comments
-- ----------------------------
BEGIN;
INSERT INTO `wp_comments` VALUES (1, 1, 'Một người bình luận WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-03-21 04:08:30', '2018-03-21 04:08:30', 'Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for wp_links
-- ----------------------------
DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- ----------------------------
-- Table structure for wp_options
-- ----------------------------
DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9311 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- ----------------------------
-- Records of wp_options
-- ----------------------------
BEGIN;
INSERT INTO `wp_options` VALUES (1, 'siteurl', 'http://hanghieu.test', 'yes');
INSERT INTO `wp_options` VALUES (2, 'home', 'http://hanghieu.test', 'yes');
INSERT INTO `wp_options` VALUES (3, 'blogname', 'hanghieu.sale - Diễm My Store', 'yes');
INSERT INTO `wp_options` VALUES (4, 'blogdescription', 'Một trang web mới sử dụng WordPress', 'yes');
INSERT INTO `wp_options` VALUES (5, 'users_can_register', '0', 'yes');
INSERT INTO `wp_options` VALUES (6, 'admin_email', 'xuan.0211@gmail.com', 'yes');
INSERT INTO `wp_options` VALUES (7, 'start_of_week', '1', 'yes');
INSERT INTO `wp_options` VALUES (8, 'use_balanceTags', '0', 'yes');
INSERT INTO `wp_options` VALUES (9, 'use_smilies', '1', 'yes');
INSERT INTO `wp_options` VALUES (10, 'require_name_email', '1', 'yes');
INSERT INTO `wp_options` VALUES (11, 'comments_notify', '1', 'yes');
INSERT INTO `wp_options` VALUES (12, 'posts_per_rss', '10', 'yes');
INSERT INTO `wp_options` VALUES (13, 'rss_use_excerpt', '0', 'yes');
INSERT INTO `wp_options` VALUES (14, 'mailserver_url', 'mail.example.com', 'yes');
INSERT INTO `wp_options` VALUES (15, 'mailserver_login', 'login@example.com', 'yes');
INSERT INTO `wp_options` VALUES (16, 'mailserver_pass', 'password', 'yes');
INSERT INTO `wp_options` VALUES (17, 'mailserver_port', '110', 'yes');
INSERT INTO `wp_options` VALUES (18, 'default_category', '1', 'yes');
INSERT INTO `wp_options` VALUES (19, 'default_comment_status', 'open', 'yes');
INSERT INTO `wp_options` VALUES (20, 'default_ping_status', 'open', 'yes');
INSERT INTO `wp_options` VALUES (21, 'default_pingback_flag', '0', 'yes');
INSERT INTO `wp_options` VALUES (22, 'posts_per_page', '10', 'yes');
INSERT INTO `wp_options` VALUES (23, 'date_format', 'j F, Y', 'yes');
INSERT INTO `wp_options` VALUES (24, 'time_format', 'g:i a', 'yes');
INSERT INTO `wp_options` VALUES (25, 'links_updated_date_format', 'j F, Y g:i a', 'yes');
INSERT INTO `wp_options` VALUES (26, 'comment_moderation', '0', 'yes');
INSERT INTO `wp_options` VALUES (27, 'moderation_notify', '1', 'yes');
INSERT INTO `wp_options` VALUES (28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes');
INSERT INTO `wp_options` VALUES (29, 'rewrite_rules', 'a:220:{s:33:\"^point-of-sale/([^/]+)/([^/]+)/?$\";s:78:\"index.php?page=wc_pos_registers&action=view&outlet=$matches[1]&reg=$matches[2]\";s:24:\"^bill-screen/([0-9]+)/?$\";s:49:\"index.php?page=wc_pos_bill_screen&reg=$matches[1]\";s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:11:\"cua-hang/?$\";s:27:\"index.php?post_type=product\";s:41:\"cua-hang/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:36:\"cua-hang/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:28:\"cua-hang/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\"pos_temp_register_or/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:58:\"pos_temp_register_or/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:78:\"pos_temp_register_or/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:73:\"pos_temp_register_or/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:73:\"pos_temp_register_or/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:54:\"pos_temp_register_or/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"pos_temp_register_or/([^/]+)/embed/?$\";s:53:\"index.php?pos_temp_register_or=$matches[1]&embed=true\";s:41:\"pos_temp_register_or/([^/]+)/trackback/?$\";s:47:\"index.php?pos_temp_register_or=$matches[1]&tb=1\";s:49:\"pos_temp_register_or/([^/]+)/page/?([0-9]{1,})/?$\";s:60:\"index.php?pos_temp_register_or=$matches[1]&paged=$matches[2]\";s:56:\"pos_temp_register_or/([^/]+)/comment-page-([0-9]{1,})/?$\";s:60:\"index.php?pos_temp_register_or=$matches[1]&cpage=$matches[2]\";s:46:\"pos_temp_register_or/([^/]+)/wc-api(/(.*))?/?$\";s:61:\"index.php?pos_temp_register_or=$matches[1]&wc-api=$matches[3]\";s:52:\"pos_temp_register_or/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:63:\"pos_temp_register_or/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:45:\"pos_temp_register_or/([^/]+)(?:/([0-9]+))?/?$\";s:59:\"index.php?pos_temp_register_or=$matches[1]&page=$matches[2]\";s:37:\"pos_temp_register_or/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"pos_temp_register_or/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"pos_temp_register_or/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"pos_temp_register_or/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"pos_temp_register_or/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"pos_temp_register_or/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:46:\"pos_custom_product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:56:\"pos_custom_product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:76:\"pos_custom_product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"pos_custom_product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"pos_custom_product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:52:\"pos_custom_product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"pos_custom_product/([^/]+)/embed/?$\";s:51:\"index.php?pos_custom_product=$matches[1]&embed=true\";s:39:\"pos_custom_product/([^/]+)/trackback/?$\";s:45:\"index.php?pos_custom_product=$matches[1]&tb=1\";s:47:\"pos_custom_product/([^/]+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?pos_custom_product=$matches[1]&paged=$matches[2]\";s:54:\"pos_custom_product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:58:\"index.php?pos_custom_product=$matches[1]&cpage=$matches[2]\";s:44:\"pos_custom_product/([^/]+)/wc-api(/(.*))?/?$\";s:59:\"index.php?pos_custom_product=$matches[1]&wc-api=$matches[3]\";s:50:\"pos_custom_product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"pos_custom_product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:43:\"pos_custom_product/([^/]+)(?:/([0-9]+))?/?$\";s:57:\"index.php?pos_custom_product=$matches[1]&page=$matches[2]\";s:35:\"pos_custom_product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"pos_custom_product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"pos_custom_product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"pos_custom_product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"pos_custom_product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"pos_custom_product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:47:\"danh-muc/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:42:\"danh-muc/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:23:\"danh-muc/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:35:\"danh-muc/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:17:\"danh-muc/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:48:\"tu-khoa/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:43:\"tu-khoa/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:24:\"tu-khoa/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:36:\"tu-khoa/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:18:\"tu-khoa/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:36:\"san-pham/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"san-pham/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"san-pham/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"san-pham/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"san-pham/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"san-pham/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"san-pham/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:29:\"san-pham/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:49:\"san-pham/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:44:\"san-pham/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:37:\"san-pham/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:44:\"san-pham/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:34:\"san-pham/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:40:\"san-pham/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:51:\"san-pham/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:33:\"san-pham/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:25:\"san-pham/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"san-pham/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"san-pham/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"san-pham/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"san-pham/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"san-pham/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"was/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"was/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"was/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"was/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"was/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"was/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:20:\"was/([^/]+)/embed/?$\";s:36:\"index.php?was=$matches[1]&embed=true\";s:24:\"was/([^/]+)/trackback/?$\";s:30:\"index.php?was=$matches[1]&tb=1\";s:32:\"was/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?was=$matches[1]&paged=$matches[2]\";s:39:\"was/([^/]+)/comment-page-([0-9]{1,})/?$\";s:43:\"index.php?was=$matches[1]&cpage=$matches[2]\";s:29:\"was/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?was=$matches[1]&wc-api=$matches[3]\";s:35:\"was/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:46:\"was/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:28:\"was/([^/]+)(?:/([0-9]+))?/?$\";s:42:\"index.php?was=$matches[1]&page=$matches[2]\";s:20:\"was/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\"was/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\"was/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"was/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"was/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\"was/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\"(.?.+?)/waiting-list(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&waiting-list=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes');
INSERT INTO `wp_options` VALUES (30, 'hack_file', '0', 'yes');
INSERT INTO `wp_options` VALUES (31, 'blog_charset', 'UTF-8', 'yes');
INSERT INTO `wp_options` VALUES (32, 'moderation_keys', '', 'no');
INSERT INTO `wp_options` VALUES (33, 'active_plugins', 'a:9:{i:0;s:63:\"woocommerce-advanced-shipping/woocommerce-advanced-shipping.php\";i:1;s:58:\"woocommerce-create-customer-on-order/create-user-order.php\";i:2;s:55:\"woocommerce-point-of-sale/woocommerce-point-of-sale.php\";i:3;s:63:\"woocommerce-shipment-tracking/woocommerce-shipment-tracking.php\";i:4;s:55:\"woocommerce-stock-manager/woocommerce-stock-manager.php\";i:5;s:27:\"woocommerce/woocommerce.php\";i:6;s:60:\"yith-woocommerce-color-and-label-variations-premium/init.php\";i:7;s:38:\"yith-woocommerce-waiting-list/init.php\";i:8;s:43:\"yith-woocommerce-watermark-premium/init.php\";}', 'yes');
INSERT INTO `wp_options` VALUES (34, 'category_base', '', 'yes');
INSERT INTO `wp_options` VALUES (35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes');
INSERT INTO `wp_options` VALUES (36, 'comment_max_links', '2', 'yes');
INSERT INTO `wp_options` VALUES (37, 'gmt_offset', '0', 'yes');
INSERT INTO `wp_options` VALUES (38, 'default_email_category', '1', 'yes');
INSERT INTO `wp_options` VALUES (39, 'recently_edited', '', 'no');
INSERT INTO `wp_options` VALUES (40, 'template', 'storefront', 'yes');
INSERT INTO `wp_options` VALUES (41, 'stylesheet', 'storefront', 'yes');
INSERT INTO `wp_options` VALUES (42, 'comment_whitelist', '1', 'yes');
INSERT INTO `wp_options` VALUES (43, 'blacklist_keys', '', 'no');
INSERT INTO `wp_options` VALUES (44, 'comment_registration', '0', 'yes');
INSERT INTO `wp_options` VALUES (45, 'html_type', 'text/html', 'yes');
INSERT INTO `wp_options` VALUES (46, 'use_trackback', '0', 'yes');
INSERT INTO `wp_options` VALUES (47, 'default_role', 'subscriber', 'yes');
INSERT INTO `wp_options` VALUES (48, 'db_version', '38590', 'yes');
INSERT INTO `wp_options` VALUES (49, 'uploads_use_yearmonth_folders', '1', 'yes');
INSERT INTO `wp_options` VALUES (50, 'upload_path', '', 'yes');
INSERT INTO `wp_options` VALUES (51, 'blog_public', '0', 'yes');
INSERT INTO `wp_options` VALUES (52, 'default_link_category', '2', 'yes');
INSERT INTO `wp_options` VALUES (53, 'show_on_front', 'posts', 'yes');
INSERT INTO `wp_options` VALUES (54, 'tag_base', '', 'yes');
INSERT INTO `wp_options` VALUES (55, 'show_avatars', '1', 'yes');
INSERT INTO `wp_options` VALUES (56, 'avatar_rating', 'G', 'yes');
INSERT INTO `wp_options` VALUES (57, 'upload_url_path', '', 'yes');
INSERT INTO `wp_options` VALUES (58, 'thumbnail_size_w', '150', 'yes');
INSERT INTO `wp_options` VALUES (59, 'thumbnail_size_h', '150', 'yes');
INSERT INTO `wp_options` VALUES (60, 'thumbnail_crop', '1', 'yes');
INSERT INTO `wp_options` VALUES (61, 'medium_size_w', '300', 'yes');
INSERT INTO `wp_options` VALUES (62, 'medium_size_h', '300', 'yes');
INSERT INTO `wp_options` VALUES (63, 'avatar_default', 'mystery', 'yes');
INSERT INTO `wp_options` VALUES (64, 'large_size_w', '1024', 'yes');
INSERT INTO `wp_options` VALUES (65, 'large_size_h', '1024', 'yes');
INSERT INTO `wp_options` VALUES (66, 'image_default_link_type', '', 'yes');
INSERT INTO `wp_options` VALUES (67, 'image_default_size', '', 'yes');
INSERT INTO `wp_options` VALUES (68, 'image_default_align', '', 'yes');
INSERT INTO `wp_options` VALUES (69, 'close_comments_for_old_posts', '0', 'yes');
INSERT INTO `wp_options` VALUES (70, 'close_comments_days_old', '14', 'yes');
INSERT INTO `wp_options` VALUES (71, 'thread_comments', '1', 'yes');
INSERT INTO `wp_options` VALUES (72, 'thread_comments_depth', '5', 'yes');
INSERT INTO `wp_options` VALUES (73, 'page_comments', '0', 'yes');
INSERT INTO `wp_options` VALUES (74, 'comments_per_page', '50', 'yes');
INSERT INTO `wp_options` VALUES (75, 'default_comments_page', 'newest', 'yes');
INSERT INTO `wp_options` VALUES (76, 'comment_order', 'asc', 'yes');
INSERT INTO `wp_options` VALUES (77, 'sticky_posts', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES (78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (81, 'uninstall_plugins', 'a:0:{}', 'no');
INSERT INTO `wp_options` VALUES (82, 'timezone_string', '', 'yes');
INSERT INTO `wp_options` VALUES (83, 'page_for_posts', '0', 'yes');
INSERT INTO `wp_options` VALUES (84, 'page_on_front', '0', 'yes');
INSERT INTO `wp_options` VALUES (85, 'default_post_format', '0', 'yes');
INSERT INTO `wp_options` VALUES (86, 'link_manager_enabled', '0', 'yes');
INSERT INTO `wp_options` VALUES (87, 'finished_splitting_shared_terms', '1', 'yes');
INSERT INTO `wp_options` VALUES (88, 'site_icon', '0', 'yes');
INSERT INTO `wp_options` VALUES (89, 'medium_large_size_w', '768', 'yes');
INSERT INTO `wp_options` VALUES (90, 'medium_large_size_h', '0', 'yes');
INSERT INTO `wp_options` VALUES (91, 'initial_db_version', '38590', 'yes');
INSERT INTO `wp_options` VALUES (92, 'wp_user_roles', 'a:9:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:128:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:13:\"view_register\";b:1;s:23:\"manage_wc_point_of_sale\";b:1;s:15:\"edit_size_chart\";b:1;s:17:\"delete_size_chart\";b:1;s:16:\"edit_size_charts\";b:1;s:23:\"edit_others_size_charts\";b:1;s:19:\"publish_size_charts\";b:1;s:24:\"read_private_size_charts\";b:1;s:18:\"delete_size_charts\";b:1;s:26:\"delete_private_size_charts\";b:1;s:28:\"delete_published_size_charts\";b:1;s:25:\"delete_others_size_charts\";b:1;s:24:\"edit_private_size_charts\";b:1;s:26:\"edit_published_size_charts\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:12:\"Khách hàng\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:22:\"Quản lý cửa hàng\";s:12:\"capabilities\";a:104:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:15:\"edit_size_chart\";b:1;s:17:\"delete_size_chart\";b:1;s:16:\"edit_size_charts\";b:1;s:23:\"edit_others_size_charts\";b:1;s:19:\"publish_size_charts\";b:1;s:24:\"read_private_size_charts\";b:1;s:18:\"delete_size_charts\";b:1;s:26:\"delete_private_size_charts\";b:1;s:28:\"delete_published_size_charts\";b:1;s:25:\"delete_others_size_charts\";b:1;s:24:\"edit_private_size_charts\";b:1;s:26:\"edit_published_size_charts\";b:1;}}s:7:\"cashier\";a:2:{s:4:\"name\";s:7:\"Cashier\";s:12:\"capabilities\";a:8:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:0;s:12:\"delete_posts\";b:0;s:10:\"list_users\";b:1;s:13:\"view_register\";b:1;s:24:\"read_private_shop_orders\";b:1;s:21:\"read_private_products\";b:1;s:25:\"read_private_shop_coupons\";b:1;}}s:11:\"pos_manager\";a:2:{s:4:\"name\";s:11:\"POS Manager\";s:12:\"capabilities\";a:107:{s:4:\"read\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:12:\"delete_posts\";b:1;s:15:\"unfiltered_html\";b:1;s:12:\"upload_files\";b:1;s:10:\"list_users\";b:1;s:13:\"view_register\";b:1;s:24:\"read_private_shop_orders\";b:1;s:21:\"read_private_products\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:23:\"manage_wc_point_of_sale\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:18:\"manage_woocommerce\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:15:\"edit_size_chart\";b:1;s:17:\"delete_size_chart\";b:1;s:16:\"edit_size_charts\";b:1;s:23:\"edit_others_size_charts\";b:1;s:19:\"publish_size_charts\";b:1;s:24:\"read_private_size_charts\";b:1;s:18:\"delete_size_charts\";b:1;s:26:\"delete_private_size_charts\";b:1;s:28:\"delete_published_size_charts\";b:1;s:25:\"delete_others_size_charts\";b:1;s:24:\"edit_private_size_charts\";b:1;s:26:\"edit_published_size_charts\";b:1;}}}', 'yes');
INSERT INTO `wp_options` VALUES (93, 'fresh_site', '0', 'yes');
INSERT INTO `wp_options` VALUES (94, 'WPLANG', 'vi', 'yes');
INSERT INTO `wp_options` VALUES (95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (100, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:13:\"array_version\";i:3;}', 'yes');
INSERT INTO `wp_options` VALUES (101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (110, 'cron', 'a:9:{i:1521730408;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1521734911;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1521735467;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1521763200;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1521778128;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1521778667;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1521778839;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1522713600;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes');
INSERT INTO `wp_options` VALUES (111, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1521605995;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes');
INSERT INTO `wp_options` VALUES (122, '_site_transient_timeout_browser_2be981a485dfe5ea3024005a2eea1a96', '1522210118', 'no');
INSERT INTO `wp_options` VALUES (123, '_site_transient_browser_2be981a485dfe5ea3024005a2eea1a96', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"65.0.3325.162\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no');
INSERT INTO `wp_options` VALUES (124, 'can_compress_scripts', '1', 'no');
INSERT INTO `wp_options` VALUES (144, 'recently_activated', 'a:12:{s:49:\"woocommerce-pre-orders/woocommerce-pre-orders.php\";i:1521724911;s:53:\"woocommerce-order-status/woocommerce-order-status.php\";i:1521722157;s:69:\"woocommerce-conditional-shipping/woocommerce-conditional-shipping.php\";i:1521720084;s:40:\"yith-woocommerce-order-tracking/init.php\";i:1521717708;s:45:\"yith-woocommerce-custom-order-status/init.php\";i:1521714158;s:39:\"yith-pre-order-for-woocommerce/init.php\";i:1521713463;s:46:\"yith-woocommerce-bulk-product-editing/init.php\";i:1521712947;s:39:\"yith-woocommerce-brands-add-on/init.php\";i:1521712925;s:49:\"yith-product-size-charts-for-woocommerce/init.php\";i:1521705657;s:50:\"yith-woocommerce-advanced-product-options/init.php\";i:1521704275;s:59:\"woocommerce-attribute-group/woocommerce-attribute-group.php\";i:1521704046;s:9:\"hello.php\";i:1521701775;}', 'yes');
INSERT INTO `wp_options` VALUES (153, 'woocommerce_store_address', 'Số 17, Tổ dân cư 16, Phú Đô, Nam Từ Liêm', 'yes');
INSERT INTO `wp_options` VALUES (154, 'woocommerce_store_address_2', '', 'yes');
INSERT INTO `wp_options` VALUES (155, 'woocommerce_store_city', 'Hà Nội', 'yes');
INSERT INTO `wp_options` VALUES (156, 'woocommerce_default_country', 'VN', 'yes');
INSERT INTO `wp_options` VALUES (157, 'woocommerce_store_postcode', '10000', 'yes');
INSERT INTO `wp_options` VALUES (158, 'woocommerce_allowed_countries', 'all', 'yes');
INSERT INTO `wp_options` VALUES (159, 'woocommerce_all_except_countries', '', 'yes');
INSERT INTO `wp_options` VALUES (160, 'woocommerce_specific_allowed_countries', '', 'yes');
INSERT INTO `wp_options` VALUES (161, 'woocommerce_ship_to_countries', '', 'yes');
INSERT INTO `wp_options` VALUES (162, 'woocommerce_specific_ship_to_countries', '', 'yes');
INSERT INTO `wp_options` VALUES (163, 'woocommerce_default_customer_address', 'geolocation', 'yes');
INSERT INTO `wp_options` VALUES (164, 'woocommerce_calc_taxes', 'no', 'yes');
INSERT INTO `wp_options` VALUES (165, 'woocommerce_currency', 'VND', 'yes');
INSERT INTO `wp_options` VALUES (166, 'woocommerce_currency_pos', 'left', 'yes');
INSERT INTO `wp_options` VALUES (167, 'woocommerce_price_thousand_sep', ',', 'yes');
INSERT INTO `wp_options` VALUES (168, 'woocommerce_price_decimal_sep', '.', 'yes');
INSERT INTO `wp_options` VALUES (169, 'woocommerce_price_num_decimals', '2', 'yes');
INSERT INTO `wp_options` VALUES (170, 'woocommerce_shop_page_id', '4', 'yes');
INSERT INTO `wp_options` VALUES (171, 'woocommerce_cart_redirect_after_add', 'no', 'yes');
INSERT INTO `wp_options` VALUES (172, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (173, 'woocommerce_weight_unit', 'g', 'yes');
INSERT INTO `wp_options` VALUES (174, 'woocommerce_dimension_unit', 'cm', 'yes');
INSERT INTO `wp_options` VALUES (175, 'woocommerce_enable_reviews', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (176, 'woocommerce_review_rating_verification_label', 'yes', 'no');
INSERT INTO `wp_options` VALUES (177, 'woocommerce_review_rating_verification_required', 'yes', 'no');
INSERT INTO `wp_options` VALUES (178, 'woocommerce_enable_review_rating', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (179, 'woocommerce_review_rating_required', 'yes', 'no');
INSERT INTO `wp_options` VALUES (180, 'woocommerce_manage_stock', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (181, 'woocommerce_hold_stock_minutes', '60', 'no');
INSERT INTO `wp_options` VALUES (182, 'woocommerce_notify_low_stock', 'yes', 'no');
INSERT INTO `wp_options` VALUES (183, 'woocommerce_notify_no_stock', 'yes', 'no');
INSERT INTO `wp_options` VALUES (184, 'woocommerce_stock_email_recipient', 'nguyenthidiemmyhanu@gmail.com', 'no');
INSERT INTO `wp_options` VALUES (185, 'woocommerce_notify_low_stock_amount', '2', 'no');
INSERT INTO `wp_options` VALUES (186, 'woocommerce_notify_no_stock_amount', '0', 'yes');
INSERT INTO `wp_options` VALUES (187, 'woocommerce_hide_out_of_stock_items', 'no', 'yes');
INSERT INTO `wp_options` VALUES (188, 'woocommerce_stock_format', 'no_amount', 'yes');
INSERT INTO `wp_options` VALUES (189, 'woocommerce_file_download_method', 'force', 'no');
INSERT INTO `wp_options` VALUES (190, 'woocommerce_downloads_require_login', 'yes', 'no');
INSERT INTO `wp_options` VALUES (191, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no');
INSERT INTO `wp_options` VALUES (192, 'woocommerce_prices_include_tax', 'no', 'yes');
INSERT INTO `wp_options` VALUES (193, 'woocommerce_tax_based_on', 'shipping', 'yes');
INSERT INTO `wp_options` VALUES (194, 'woocommerce_shipping_tax_class', 'inherit', 'yes');
INSERT INTO `wp_options` VALUES (195, 'woocommerce_tax_round_at_subtotal', 'no', 'yes');
INSERT INTO `wp_options` VALUES (196, 'woocommerce_tax_classes', 'Giảm tỉ lệ\nTỉ lệ rỗng', 'yes');
INSERT INTO `wp_options` VALUES (197, 'woocommerce_tax_display_shop', 'excl', 'yes');
INSERT INTO `wp_options` VALUES (198, 'woocommerce_tax_display_cart', 'excl', 'no');
INSERT INTO `wp_options` VALUES (199, 'woocommerce_price_display_suffix', '', 'yes');
INSERT INTO `wp_options` VALUES (200, 'woocommerce_tax_total_display', 'itemized', 'no');
INSERT INTO `wp_options` VALUES (201, 'woocommerce_enable_shipping_calc', 'yes', 'no');
INSERT INTO `wp_options` VALUES (202, 'woocommerce_shipping_cost_requires_address', 'no', 'no');
INSERT INTO `wp_options` VALUES (203, 'woocommerce_ship_to_destination', 'billing', 'no');
INSERT INTO `wp_options` VALUES (204, 'woocommerce_shipping_debug_mode', 'no', 'no');
INSERT INTO `wp_options` VALUES (205, 'woocommerce_enable_coupons', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (206, 'woocommerce_calc_discounts_sequentially', 'no', 'no');
INSERT INTO `wp_options` VALUES (207, 'woocommerce_enable_guest_checkout', 'yes', 'no');
INSERT INTO `wp_options` VALUES (208, 'woocommerce_force_ssl_checkout', 'no', 'yes');
INSERT INTO `wp_options` VALUES (209, 'woocommerce_unforce_ssl_checkout', 'no', 'yes');
INSERT INTO `wp_options` VALUES (210, 'woocommerce_cart_page_id', '5', 'yes');
INSERT INTO `wp_options` VALUES (211, 'woocommerce_checkout_page_id', '6', 'yes');
INSERT INTO `wp_options` VALUES (212, 'woocommerce_terms_page_id', '', 'no');
INSERT INTO `wp_options` VALUES (213, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes');
INSERT INTO `wp_options` VALUES (214, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes');
INSERT INTO `wp_options` VALUES (215, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes');
INSERT INTO `wp_options` VALUES (216, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes');
INSERT INTO `wp_options` VALUES (217, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes');
INSERT INTO `wp_options` VALUES (218, 'woocommerce_myaccount_page_id', '7', 'yes');
INSERT INTO `wp_options` VALUES (219, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no');
INSERT INTO `wp_options` VALUES (220, 'woocommerce_enable_myaccount_registration', 'no', 'no');
INSERT INTO `wp_options` VALUES (221, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no');
INSERT INTO `wp_options` VALUES (222, 'woocommerce_registration_generate_username', 'yes', 'no');
INSERT INTO `wp_options` VALUES (223, 'woocommerce_registration_generate_password', 'no', 'no');
INSERT INTO `wp_options` VALUES (224, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes');
INSERT INTO `wp_options` VALUES (225, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes');
INSERT INTO `wp_options` VALUES (226, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes');
INSERT INTO `wp_options` VALUES (227, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes');
INSERT INTO `wp_options` VALUES (228, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes');
INSERT INTO `wp_options` VALUES (229, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes');
INSERT INTO `wp_options` VALUES (230, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes');
INSERT INTO `wp_options` VALUES (231, 'woocommerce_logout_endpoint', 'customer-logout', 'yes');
INSERT INTO `wp_options` VALUES (232, 'woocommerce_email_from_name', 'hanghieu.sale &#8211; Diễm My Store', 'no');
INSERT INTO `wp_options` VALUES (233, 'woocommerce_email_from_address', 'xuan.0211@gmail.com', 'no');
INSERT INTO `wp_options` VALUES (234, 'woocommerce_email_header_image', '', 'no');
INSERT INTO `wp_options` VALUES (235, 'woocommerce_email_footer_text', '{site_title}', 'no');
INSERT INTO `wp_options` VALUES (236, 'woocommerce_email_base_color', '#96588a', 'no');
INSERT INTO `wp_options` VALUES (237, 'woocommerce_email_background_color', '#f7f7f7', 'no');
INSERT INTO `wp_options` VALUES (238, 'woocommerce_email_body_background_color', '#ffffff', 'no');
INSERT INTO `wp_options` VALUES (239, 'woocommerce_email_text_color', '#3c3c3c', 'no');
INSERT INTO `wp_options` VALUES (240, 'woocommerce_api_enabled', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (241, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:8:\"san-pham\";s:13:\"category_base\";s:8:\"danh-muc\";s:8:\"tag_base\";s:7:\"tu-khoa\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes');
INSERT INTO `wp_options` VALUES (242, 'current_theme_supports_woocommerce', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (243, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes');
INSERT INTO `wp_options` VALUES (246, 'default_product_cat', '15', 'yes');
INSERT INTO `wp_options` VALUES (249, 'woocommerce_version', '3.3.4', 'yes');
INSERT INTO `wp_options` VALUES (250, 'woocommerce_db_version', '3.3.4', 'yes');
INSERT INTO `wp_options` VALUES (251, 'woocommerce_admin_notices', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES (252, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES (253, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (254, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (255, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (256, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (257, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (258, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (259, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (260, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (261, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (262, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (263, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (264, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (268, 'woocommerce_product_type', 'physical', 'yes');
INSERT INTO `wp_options` VALUES (269, 'woocommerce_sell_in_person', '1', 'yes');
INSERT INTO `wp_options` VALUES (270, 'woocommerce_allow_tracking', 'no', 'yes');
INSERT INTO `wp_options` VALUES (271, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";b:0;}', 'yes');
INSERT INTO `wp_options` VALUES (272, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes');
INSERT INTO `wp_options` VALUES (273, 'woocommerce_bacs_settings', 'a:5:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:28:\"Chuyển khoản ngân hàng\";s:11:\"description\";s:226:\"Thực hiện thanh toán vào ngay tài khoản ngân hàng của chúng tôi. Vui lòng sử dụng Mã đơn hàng của bạn trong phần Nội dung thanh toán. Đơn hàng sẽ đươc giao sau khi tiền đã chuyển.\";s:12:\"instructions\";s:0:\"\";s:15:\"account_details\";s:0:\"\";}', 'yes');
INSERT INTO `wp_options` VALUES (274, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes');
INSERT INTO `wp_options` VALUES (275, '_transient_shipping-transient-version', '1521727241', 'yes');
INSERT INTO `wp_options` VALUES (276, 'woocommerce_flat_rate_1_settings', 'a:3:{s:5:\"title\";s:12:\"Đồng giá\";s:10:\"tax_status\";s:4:\"none\";s:4:\"cost\";s:5:\"30000\";}', 'yes');
INSERT INTO `wp_options` VALUES (277, 'woocommerce_flat_rate_2_settings', 'a:3:{s:5:\"title\";s:12:\"Đồng giá\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:6:\"250000\";}', 'yes');
INSERT INTO `wp_options` VALUES (286, 'current_theme', 'Storefront', 'yes');
INSERT INTO `wp_options` VALUES (287, 'theme_mods_storefront', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:17:\"storefront_styles\";s:5060:\"\n			.main-navigation ul li a,\n			.site-title a,\n			ul.menu li a,\n			.site-branding h1 a,\n			.site-footer .storefront-handheld-footer-bar a:not(.button),\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				color: #333333;\n			}\n\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				border-color: #333333;\n			}\n\n			.main-navigation ul li a:hover,\n			.main-navigation ul li:hover > a,\n			.site-title a:hover,\n			a.cart-contents:hover,\n			.site-header-cart .widget_shopping_cart a:hover,\n			.site-header-cart:hover > li > a,\n			.site-header ul.menu li.current-menu-item > a {\n				color: #747474;\n			}\n\n			table th {\n				background-color: #f8f8f8;\n			}\n\n			table tbody td {\n				background-color: #fdfdfd;\n			}\n\n			table tbody tr:nth-child(2n) td,\n			fieldset,\n			fieldset legend {\n				background-color: #fbfbfb;\n			}\n\n			.site-header,\n			.secondary-navigation ul ul,\n			.main-navigation ul.menu > li.menu-item-has-children:after,\n			.secondary-navigation ul.menu ul,\n			.storefront-handheld-footer-bar,\n			.storefront-handheld-footer-bar ul li > a,\n			.storefront-handheld-footer-bar ul li.search .site-search,\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				background-color: #ffffff;\n			}\n\n			p.site-description,\n			.site-header,\n			.storefront-handheld-footer-bar {\n				color: #404040;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count,\n			button.menu-toggle:after,\n			button.menu-toggle:before,\n			button.menu-toggle span:before {\n				background-color: #333333;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				color: #ffffff;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				border-color: #ffffff;\n			}\n\n			h1, h2, h3, h4, h5, h6 {\n				color: #333333;\n			}\n\n			.widget h1 {\n				border-bottom-color: #333333;\n			}\n\n			body,\n			.secondary-navigation a,\n			.onsale,\n			.pagination .page-numbers li .page-numbers:not(.current), .woocommerce-pagination .page-numbers li .page-numbers:not(.current) {\n				color: #6d6d6d;\n			}\n\n			.widget-area .widget a,\n			.hentry .entry-header .posted-on a,\n			.hentry .entry-header .byline a {\n				color: #727272;\n			}\n\n			a  {\n				color: #96588a;\n			}\n\n			a:focus,\n			.button:focus,\n			.button.alt:focus,\n			.button.added_to_cart:focus,\n			.button.wc-forward:focus,\n			button:focus,\n			input[type=\"button\"]:focus,\n			input[type=\"reset\"]:focus,\n			input[type=\"submit\"]:focus {\n				outline-color: #96588a;\n			}\n\n			button, input[type=\"button\"], input[type=\"reset\"], input[type=\"submit\"], .button, .added_to_cart, .widget a.button, .site-header-cart .widget_shopping_cart a.button {\n				background-color: #eeeeee;\n				border-color: #eeeeee;\n				color: #333333;\n			}\n\n			button:hover, input[type=\"button\"]:hover, input[type=\"reset\"]:hover, input[type=\"submit\"]:hover, .button:hover, .added_to_cart:hover, .widget a.button:hover, .site-header-cart .widget_shopping_cart a.button:hover {\n				background-color: #d5d5d5;\n				border-color: #d5d5d5;\n				color: #333333;\n			}\n\n			button.alt, input[type=\"button\"].alt, input[type=\"reset\"].alt, input[type=\"submit\"].alt, .button.alt, .added_to_cart.alt, .widget-area .widget a.button.alt, .added_to_cart, .widget a.button.checkout {\n				background-color: #333333;\n				border-color: #333333;\n				color: #ffffff;\n			}\n\n			button.alt:hover, input[type=\"button\"].alt:hover, input[type=\"reset\"].alt:hover, input[type=\"submit\"].alt:hover, .button.alt:hover, .added_to_cart.alt:hover, .widget-area .widget a.button.alt:hover, .added_to_cart:hover, .widget a.button.checkout:hover {\n				background-color: #1a1a1a;\n				border-color: #1a1a1a;\n				color: #ffffff;\n			}\n\n			.pagination .page-numbers li .page-numbers.current, .woocommerce-pagination .page-numbers li .page-numbers.current {\n				background-color: #e6e6e6;\n				color: #636363;\n			}\n\n			#comments .comment-list .comment-content .comment-text {\n				background-color: #f8f8f8;\n			}\n\n			.site-footer {\n				background-color: #f0f0f0;\n				color: #6d6d6d;\n			}\n\n			.site-footer a:not(.button) {\n				color: #333333;\n			}\n\n			.site-footer h1, .site-footer h2, .site-footer h3, .site-footer h4, .site-footer h5, .site-footer h6 {\n				color: #333333;\n			}\n\n			#order_review {\n				background-color: #ffffff;\n			}\n\n			#payment .payment_methods > li .payment_box,\n			#payment .place-order {\n				background-color: #fafafa;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice) {\n				background-color: #f5f5f5;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice):hover {\n				background-color: #f0f0f0;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.secondary-navigation ul.menu a:hover {\n					color: #595959;\n				}\n\n				.secondary-navigation ul.menu a {\n					color: #404040;\n				}\n\n				.site-header-cart .widget_shopping_cart,\n				.main-navigation ul.menu ul.sub-menu,\n				.main-navigation ul.nav-menu ul.children {\n					background-color: #f0f0f0;\n				}\n\n				.site-header-cart .widget_shopping_cart .buttons,\n				.site-header-cart .widget_shopping_cart .total {\n					background-color: #f5f5f5;\n				}\n\n				.site-header {\n					border-bottom-color: #f0f0f0;\n				}\n			}\";s:29:\"storefront_woocommerce_styles\";s:2283:\"\n			a.cart-contents,\n			.site-header-cart .widget_shopping_cart a {\n				color: #333333;\n			}\n\n			table.cart td.product-remove,\n			table.cart td.actions {\n				border-top-color: #ffffff;\n			}\n\n			.woocommerce-tabs ul.tabs li.active a,\n			ul.products li.product .price,\n			.onsale,\n			.widget_search form:before,\n			.widget_product_search form:before {\n				color: #6d6d6d;\n			}\n\n			.woocommerce-breadcrumb a,\n			a.woocommerce-review-link,\n			.product_meta a {\n				color: #727272;\n			}\n\n			.onsale {\n				border-color: #6d6d6d;\n			}\n\n			.star-rating span:before,\n			.quantity .plus, .quantity .minus,\n			p.stars a:hover:after,\n			p.stars a:after,\n			.star-rating span:before,\n			#payment .payment_methods li input[type=radio]:first-child:checked+label:before {\n				color: #96588a;\n			}\n\n			.widget_price_filter .ui-slider .ui-slider-range,\n			.widget_price_filter .ui-slider .ui-slider-handle {\n				background-color: #96588a;\n			}\n\n			.order_details {\n				background-color: #f8f8f8;\n			}\n\n			.order_details > li {\n				border-bottom: 1px dotted #e3e3e3;\n			}\n\n			.order_details:before,\n			.order_details:after {\n				background: -webkit-linear-gradient(transparent 0,transparent 0),-webkit-linear-gradient(135deg,#f8f8f8 33.33%,transparent 33.33%),-webkit-linear-gradient(45deg,#f8f8f8 33.33%,transparent 33.33%)\n			}\n\n			p.stars a:before,\n			p.stars a:hover~a:before,\n			p.stars.selected a.active~a:before {\n				color: #6d6d6d;\n			}\n\n			p.stars.selected a.active:before,\n			p.stars:hover a:before,\n			p.stars.selected a:not(.active):before,\n			p.stars.selected a.active:before {\n				color: #96588a;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger {\n				background-color: #eeeeee;\n				color: #333333;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger:hover {\n				background-color: #d5d5d5;\n				border-color: #d5d5d5;\n				color: #333333;\n			}\n\n			.button.loading {\n				color: #eeeeee;\n			}\n\n			.button.loading:hover {\n				background-color: #eeeeee;\n			}\n\n			.button.loading:after {\n				color: #333333;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.site-header-cart .widget_shopping_cart,\n				.site-header .product_list_widget li .quantity {\n					color: #404040;\n				}\n			}\";s:39:\"storefront_woocommerce_extension_styles\";s:0:\"\";s:18:\"custom_css_post_id\";i:-1;}', 'yes');
INSERT INTO `wp_options` VALUES (288, 'theme_switched', '', 'yes');
INSERT INTO `wp_options` VALUES (289, 'woocommerce_maybe_regenerate_images_hash', '27acde77266b4d2a3491118955cb3f66', 'yes');
INSERT INTO `wp_options` VALUES (290, '_transient_timeout_external_ip_address_192.168.10.10', '1522210791', 'no');
INSERT INTO `wp_options` VALUES (291, '_transient_external_ip_address_192.168.10.10', '113.190.254.153', 'no');
INSERT INTO `wp_options` VALUES (294, 'woocommerce_catalog_rows', '4', 'yes');
INSERT INTO `wp_options` VALUES (295, 'woocommerce_catalog_columns', '3', 'yes');
INSERT INTO `wp_options` VALUES (296, 'storefront_nux_fresh_site', '0', 'yes');
INSERT INTO `wp_options` VALUES (301, '_transient_product_query-transient-version', '1521729531', 'yes');
INSERT INTO `wp_options` VALUES (302, '_transient_timeout_external_ip_address_192.168.10.1', '1522210846', 'no');
INSERT INTO `wp_options` VALUES (303, '_transient_external_ip_address_192.168.10.1', '113.190.254.153', 'no');
INSERT INTO `wp_options` VALUES (304, 'storefront_nux_dismissed', '1', 'yes');
INSERT INTO `wp_options` VALUES (305, 'wc_pos_custom_product_id', '130', 'yes');
INSERT INTO `wp_options` VALUES (306, 'wc_pos_guest_checkout', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (307, 'wc_pos_admin_notices', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES (310, 'wc_pos_db_version', '4.2.5.8', 'yes');
INSERT INTO `wp_options` VALUES (311, '_pos_default_receipt', '1', 'yes');
INSERT INTO `wp_options` VALUES (312, 'wc_pos_default_country', 'VN', 'yes');
INSERT INTO `wp_options` VALUES (313, 'woocommerce_pos_register_discount_presets', 'a:4:{i:0;s:1:\"5\";i:1;s:2:\"10\";i:2;s:2:\"15\";i:3;s:2:\"20\";}', 'yes');
INSERT INTO `wp_options` VALUES (314, 'woocommerce_pos_register_instant_quantity', 'no', 'yes');
INSERT INTO `wp_options` VALUES (315, 'woocommerce_pos_register_instant_quantity_keypad', 'no', 'yes');
INSERT INTO `wp_options` VALUES (316, 'wc_pos_tile_layout', 'image_title_price', 'yes');
INSERT INTO `wp_options` VALUES (317, 'wc_pos_tile_variables', 'overlay', 'yes');
INSERT INTO `wp_options` VALUES (318, 'woocommerce_pos_end_of_sale_order_status', 'processing', 'yes');
INSERT INTO `wp_options` VALUES (319, 'wc_pos_save_order_status', 'wc-pending', 'yes');
INSERT INTO `wp_options` VALUES (320, 'wc_pos_load_order_status', 'a:1:{i:0;s:10:\"wc-pending\";}', 'yes');
INSERT INTO `wp_options` VALUES (321, 'wc_pos_load_web_order', 'no', 'yes');
INSERT INTO `wp_options` VALUES (322, 'woocommerce_pos_register_ready_to_scan', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (323, 'woocommerce_pos_register_cc_scanning', 'no', 'yes');
INSERT INTO `wp_options` VALUES (324, 'woocommerce_pos_calculate_tax_based_on', 'default', 'yes');
INSERT INTO `wp_options` VALUES (325, 'woocommerce_pos_tax_calculation', 'disabled', 'yes');
INSERT INTO `wp_options` VALUES (326, 'woocommerce_pos_tax_default_customer_address', 'no_address', 'yes');
INSERT INTO `wp_options` VALUES (327, 'wc_pos_email_notifications', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (328, 'wc_pos_automatic_emails', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (329, 'pos_enabled_gateways', 'a:2:{i:0;s:4:\"bacs\";i:1;s:3:\"cod\";}', 'yes');
INSERT INTO `wp_options` VALUES (330, 'pos_exist_gateways', 'a:5:{i:0;s:4:\"bacs\";i:1;s:6:\"cheque\";i:2;s:3:\"cod\";i:3;s:6:\"paypal\";i:4;s:12:\"pos_chip_pin\";}', 'yes');
INSERT INTO `wp_options` VALUES (341, 'widget_woocommerce_brand_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (342, 'widget_pw_widget_carousel', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (343, 'widget_pw_widget_thumbnails', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (344, 'widget_pw_widget_a_z_views', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (345, 'widget_pw_brands_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (346, 'widget_pw_brands_carousel_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (347, 'widget_wc_brands_brand_thumbnails', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (362, 'product_cat_children', 'a:1:{i:16;a:1:{i:0;i:19;}}', 'yes');
INSERT INTO `wp_options` VALUES (363, '_jcaa_attr_settings_1', 'a:7:{s:19:\"jcaa_attribute_size\";s:5:\"small\";s:20:\"jcaa_attribute_style\";s:7:\"default\";s:19:\"jcaa_attribute_type\";s:7:\"default\";s:20:\"jcaa_attribute_label\";s:0:\"\";s:22:\"jcaa_attribute_grouped\";s:2:\"no\";s:20:\"jcaa_attribute_group\";s:0:\"\";s:22:\"jcaa_attribute_catalog\";s:2:\"no\";}', 'yes');
INSERT INTO `wp_options` VALUES (368, '_jcaa_attr_settings_2', 'a:7:{s:19:\"jcaa_attribute_size\";s:5:\"small\";s:20:\"jcaa_attribute_style\";s:7:\"default\";s:19:\"jcaa_attribute_type\";s:7:\"default\";s:20:\"jcaa_attribute_label\";s:0:\"\";s:22:\"jcaa_attribute_grouped\";s:2:\"no\";s:20:\"jcaa_attribute_group\";s:0:\"\";s:22:\"jcaa_attribute_catalog\";s:2:\"no\";}', 'yes');
INSERT INTO `wp_options` VALUES (371, '_jcaa_attr_settings_3', 'a:7:{s:19:\"jcaa_attribute_size\";s:5:\"small\";s:20:\"jcaa_attribute_style\";s:7:\"default\";s:19:\"jcaa_attribute_type\";s:7:\"default\";s:20:\"jcaa_attribute_label\";s:0:\"\";s:22:\"jcaa_attribute_grouped\";s:2:\"no\";s:20:\"jcaa_attribute_group\";s:0:\"\";s:22:\"jcaa_attribute_catalog\";s:2:\"no\";}', 'yes');
INSERT INTO `wp_options` VALUES (375, '_transient_product-transient-version', '1521729531', 'yes');
INSERT INTO `wp_options` VALUES (388, 'pos_removed_posts_ids', 'a:22:{i:0;i:21;i:1;i:22;i:2;i:18;i:3;i:35;i:4;i:36;i:5;i:25;i:6;i:26;i:7;i:27;i:8;i:28;i:9;i:29;i:10;i:30;i:11;i:31;i:12;i:32;i:13;i:33;i:14;i:34;i:15;i:23;i:16;i:24;i:17;i:128;i:18;i:10;i:19;i:135;i:20;i:133;i:21;i:131;}', 'yes');
INSERT INTO `wp_options` VALUES (790, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES (812, '_transient_wc_attribute_taxonomies', 'a:2:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:10:\"kich-thuoc\";s:15:\"attribute_label\";s:14:\"Kích thước\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:1;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"3\";s:14:\"attribute_name\";s:7:\"mau-sac\";s:15:\"attribute_label\";s:10:\"Màu sắc\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}}', 'yes');
INSERT INTO `wp_options` VALUES (1049, '_transient_timeout_wc_addons_sections', '1522217915', 'no');
INSERT INTO `wp_options` VALUES (1050, '_transient_wc_addons_sections', 'a:8:{i:0;O:8:\"stdClass\":2:{s:4:\"slug\";s:9:\"_featured\";s:5:\"label\";s:8:\"Featured\";}i:1;O:8:\"stdClass\":2:{s:4:\"slug\";s:4:\"_all\";s:5:\"label\";s:3:\"All\";}i:2;O:8:\"stdClass\":2:{s:4:\"slug\";s:7:\"bundles\";s:5:\"label\";s:7:\"Bundles\";}i:3;O:8:\"stdClass\":2:{s:4:\"slug\";s:18:\"product-extensions\";s:5:\"label\";s:12:\"Enhancements\";}i:4;O:8:\"stdClass\":2:{s:4:\"slug\";s:20:\"marketing-extensions\";s:5:\"label\";s:9:\"Marketing\";}i:5;O:8:\"stdClass\":2:{s:4:\"slug\";s:16:\"payment-gateways\";s:5:\"label\";s:8:\"Payments\";}i:6;O:8:\"stdClass\":2:{s:4:\"slug\";s:16:\"shipping-methods\";s:5:\"label\";s:8:\"Shipping\";}i:7;O:8:\"stdClass\":2:{s:4:\"slug\";s:10:\"operations\";s:5:\"label\";s:16:\"Store Management\";}}', 'no');
INSERT INTO `wp_options` VALUES (1051, '_transient_timeout_wc_addons_featured', '1522217915', 'no');
INSERT INTO `wp_options` VALUES (1052, '_transient_wc_addons_featured', 'O:8:\"stdClass\":1:{s:8:\"sections\";a:11:{i:0;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"banner_block\";s:5:\"title\";s:50:\"Take your store beyond the typical - sell anything\";s:11:\"description\";s:81:\"From services to content, there\'s no limit to what you can sell with WooCommerce.\";s:5:\"items\";a:9:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:139:\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:13:\"Subscriptions\";s:5:\"image\";s:71:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/subscriptions-icon@2x.png\";s:11:\"description\";s:98:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\";s:6:\"button\";s:10:\"From: $199\";s:6:\"plugin\";s:55:\"woocommerce-subscriptions/woocommerce-subscriptions.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:134:\"https://woocommerce.com/products/woocommerce-bookings/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:8:\"Bookings\";s:5:\"image\";s:66:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/bookings-icon@2x.png\";s:11:\"description\";s:76:\"Allow customers to book appointments for services without leaving your site.\";s:6:\"button\";s:10:\"From: $249\";s:6:\"plugin\";s:45:\"woocommerce-bookings/woocommerce-bookings.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:137:\"https://woocommerce.com/products/woocommerce-memberships/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:11:\"Memberships\";s:5:\"image\";s:69:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/memberships-icon@2x.png\";s:11:\"description\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:6:\"button\";s:10:\"From: $149\";s:6:\"plugin\";s:51:\"woocommerce-memberships/woocommerce-memberships.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:129:\"https://woocommerce.com/products/product-bundles/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:15:\"Product Bundles\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:50:\"Offer customizable bundles and assembled products.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:59:\"woocommerce-product-bundles/woocommerce-product-bundles.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:132:\"https://woocommerce.com/products/composite-products/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:18:\"Composite Products\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:59:\"Create and offer product kits with configurable components.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:65:\"woocommerce-composite-products/woocommerce-composite-products.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:129:\"https://woocommerce.com/products/product-vendors/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:15:\"Product Vendors\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:47:\"Turn your store into a multi-vendor marketplace\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:59:\"woocommerce-product-vendors/woocommerce-product-vendors.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:132:\"https://woocommerce.com/products/groups-woocommerce/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:22:\"Groups for WooCommerce\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:94:\"Sell memberships using the free &#039;Groups&#039; plugin, Groups integration and WooCommerce.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:41:\"groups-woocommerce/groups-woocommerce.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:136:\"https://woocommerce.com/products/woocommerce-pre-orders/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:22:\"WooCommerce Pre-Orders\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:60:\"Allow customers to order products before they are available.\";s:6:\"button\";s:10:\"From: $129\";s:6:\"plugin\";s:49:\"woocommerce-pre-orders/woocommerce-pre-orders.php\";}i:8;O:8:\"stdClass\":6:{s:4:\"href\";s:130:\"https://woocommerce.com/products/chained-products/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:16:\"Chained Products\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:69:\"Create and sell pre-configured product bundles and discounted combos.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:61:\"woocommerce-chained-products/woocommerce-chained-products.php\";}}}i:1;O:8:\"stdClass\":1:{s:6:\"module\";s:16:\"wcs_banner_block\";}i:2;O:8:\"stdClass\":2:{s:6:\"module\";s:12:\"column_start\";s:9:\"container\";s:22:\"column_container_start\";}i:3;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"column_block\";s:5:\"title\";s:46:\"Improve the main features of your online store\";s:11:\"description\";s:71:\"Sell more by helping customers find the products and options they want.\";s:5:\"items\";a:9:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:129:\"https://woocommerce.com/products/product-add-ons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:15:\"Product Add-ons\";s:5:\"image\";s:73:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/product-add-ons-icon@2x.png\";s:11:\"description\";s:82:\"Give your customers the option to customize their purchase or add personalization.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:57:\"woocommerce-product-addons/woocommerce-product-addons.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:140:\"https://woocommerce.com/products/woocommerce-product-search/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:14:\"Product Search\";s:5:\"image\";s:72:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/product-search-icon@2x.png\";s:11:\"description\";s:67:\"Make sure customers find what they want when they search your site.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:57:\"woocommerce-product-search/woocommerce-product-search.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:142:\"https://woocommerce.com/products/woocommerce-checkout-add-ons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:16:\"Checkout Add-ons\";s:5:\"image\";s:74:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/checkout-add-ons-icon@2x.png\";s:11:\"description\";s:89:\"Highlight relevant products, offers like free shipping and other upsells during checkout.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:61:\"woocommerce-checkout-add-ons/woocommerce-checkout-add-ons.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:147:\"https://woocommerce.com/products/woocommerce-checkout-field-editor/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:21:\"Checkout Field Editor\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:128:\"The checkout field editor provides you with an interface to add, edit and remove fields shown on your WooCommerce checkout page.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:71:\"woocommerce-checkout-field-editor/woocommerce-checkout-field-editor.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:138:\"https://woocommerce.com/products/woocommerce-social-login/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:24:\"WooCommerce Social Login\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:62:\"Enable Social Login for Seamless Checkout and Account Creation\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:53:\"woocommerce-social-login/woocommerce-social-login.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:135:\"https://woocommerce.com/products/woocommerce-wishlists/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:21:\"WooCommerce Wishlists\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:113:\"WooCommerce Wishlists allows guests and customers to create and add products to an unlimited number of Wishlists.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:47:\"woocommerce-wishlists/woocommerce-wishlists.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:126:\"https://woocommerce.com/products/cart-notices/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:12:\"Cart Notices\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:73:\"Display dynamic, actionable messages to your customers as they check out.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:53:\"woocommerce-cart-notices/woocommerce-cart-notices.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:126:\"https://woocommerce.com/products/cart-add-ons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:12:\"Cart Add-ons\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:109:\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\";s:6:\"button\";s:9:\"From: $29\";s:6:\"plugin\";s:53:\"woocommerce-cart-add-ons/woocommerce-cart-add-ons.php\";}i:8;O:8:\"stdClass\":6:{s:4:\"href\";s:134:\"https://woocommerce.com/products/woocommerce-waitlist/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:20:\"WooCommerce Waitlist\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:117:\"With WooCommerce Waitlist customers can register for email notifications when out-of-stock products become available.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:45:\"woocommerce-waitlist/woocommerce-waitlist.php\";}}}i:4;O:8:\"stdClass\":5:{s:6:\"module\";s:17:\"small_light_block\";s:5:\"title\";s:34:\"Get the official WooCommerce theme\";s:11:\"description\";s:128:\"Storefront is the lean, flexible, and free theme, built by the people who make WooCommerce - everything you need to get started.\";s:5:\"image\";s:70:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/storefront-screen@2x.png\";s:7:\"buttons\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"href\";s:44:\"/wp-admin/theme-install.php?theme=storefront\";s:4:\"text\";s:7:\"Install\";}i:1;O:8:\"stdClass\":2:{s:4:\"href\";s:115:\"https://woocommerce.com/storefront/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:4:\"text\";s:9:\"Read More\";}}}i:5;O:8:\"stdClass\":1:{s:6:\"module\";s:10:\"column_end\";}i:6;O:8:\"stdClass\":1:{s:6:\"module\";s:12:\"column_start\";}i:7;O:8:\"stdClass\":4:{s:6:\"module\";s:16:\"small_dark_block\";s:5:\"title\";s:20:\"Square + WooCommerce\";s:11:\"description\";s:176:\"Keep your WooCommerce and brick-and-mortar stores in sync. Use Square to take payments both online and offline, keep inventory updated between the two and sync product changes.\";s:5:\"items\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"href\";s:120:\"https://woocommerce.com/products/square/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:6:\"button\";s:5:\"Free!\";}}}i:8;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"column_block\";s:5:\"title\";s:19:\"Get deeper insights\";s:11:\"description\";s:58:\"Learn how your store is performing with enhanced reporting\";s:5:\"items\";a:8:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:142:\"https://woocommerce.com/products/woocommerce-google-analytics/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:16:\"Google Analytics\";s:5:\"image\";s:60:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/ga-icon@2x.png\";s:11:\"description\";s:93:\"Understand your customers and increase revenue with the world’s leading analytics platform.\";s:6:\"button\";s:4:\"Free\";s:6:\"plugin\";s:85:\"woocommerce-google-analytics-integration/woocommerce-google-analytics-integration.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:138:\"https://woocommerce.com/products/woocommerce-cart-reports/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:12:\"Cart reports\";s:5:\"image\";s:70:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/cart-reports-icon@2x.png\";s:11:\"description\";s:66:\"Get real-time reports on what customers are leaving in their cart.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:53:\"woocommerce-cart-reports/woocommerce-cart-reports.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:139:\"https://woocommerce.com/products/woocommerce-cost-of-goods/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:13:\"Cost of Goods\";s:5:\"image\";s:71:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/cost-of-goods-icon@2x.png\";s:11:\"description\";s:64:\"Easily track profit by including  cost of goods in your reports.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:55:\"woocommerce-cost-of-goods/woocommerce-cost-of-goods.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:146:\"https://woocommerce.com/products/woocommerce-google-analytics-pro/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:32:\"WooCommerce Google Analytics Pro\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:85:\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\";s:6:\"button\";s:9:\"From: $29\";s:6:\"plugin\";s:69:\"woocommerce-google-analytics-pro/woocommerce-google-analytics-pro.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:142:\"https://woocommerce.com/products/woocommerce-customer-history/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:28:\"WooCommerce Customer History\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:125:\"Observe how your customers use your store, keep a full purchase history log, and calculate the total customer lifetime value.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:61:\"woocommerce-customer-history/woocommerce-customer-history.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:126:\"https://woocommerce.com/products/kiss-metrics/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:11:\"Kissmetrics\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:79:\"Easily add Kissmetrics event tracking to your WooCommerce store with one click.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:52:\"woocommerce-kiss-metrics/woocommerce-kissmetrics.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:122:\"https://woocommerce.com/products/mixpanel/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:8:\"Mixpanel\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:65:\"Add event tracking powered by Mixpanel to your WooCommerce store.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:45:\"woocommerce-mixpanel/woocommerce-mixpanel.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:144:\"https://woocommerce.com/products/woocommerce-sales-report-email/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:30:\"WooCommerce Sales Report Email\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:107:\"Receive emails daily, weekly or monthly with meaningful information about how your products are performing.\";s:6:\"button\";s:9:\"From: $29\";s:6:\"plugin\";s:65:\"woocommerce-sales-report-email/woocommerce-sales-report-email.php\";}}}i:9;O:8:\"stdClass\":2:{s:6:\"module\";s:10:\"column_end\";s:9:\"container\";s:20:\"column_container_end\";}i:10;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"banner_block\";s:5:\"title\";s:40:\"Promote your products and increase sales\";s:11:\"description\";s:77:\"From coupons to emails, these extensions can power up your marketing efforts.\";s:5:\"items\";a:9:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:127:\"https://woocommerce.com/products/smart-coupons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:13:\"Smart Coupons\";s:5:\"image\";s:71:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/smart-coupons-icon@2x.png\";s:11:\"description\";s:106:\"Enhance your coupon options - create gift certificates, store credit, coupons based on purchases and more.\";s:6:\"button\";s:9:\"From: $99\";s:6:\"plugin\";s:55:\"woocommerce-smart-coupons/woocommerce-smart-coupons.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:130:\"https://woocommerce.com/products/follow-up-emails/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:16:\"Follow Up Emails\";s:5:\"image\";s:74:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/follow-up-emails-icon@2x.png\";s:11:\"description\";s:140:\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\";s:6:\"button\";s:9:\"From: $99\";s:6:\"plugin\";s:61:\"woocommerce-follow-up-emails/woocommerce-follow-up-emails.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:133:\"https://woocommerce.com/products/google-product-feed/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:19:\"Google Product Feed\";s:5:\"image\";s:77:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/google-product-feed-icon@2x.png\";s:11:\"description\";s:61:\"Let customers find you when shopping for products via Google.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:45:\"woocommerce-product-feeds/woocommerce-gpf.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:129:\"https://woocommerce.com/products/dynamic-pricing/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:15:\"Dynamic Pricing\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:48:\"Bulk discounts, role-based pricing and much more\";s:6:\"button\";s:10:\"From: $129\";s:6:\"plugin\";s:59:\"woocommerce-dynamic-pricing/woocommerce-dynamic-pricing.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:144:\"https://woocommerce.com/products/woocommerce-points-and-rewards/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:30:\"WooCommerce Points and Rewards\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:102:\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\";s:6:\"button\";s:10:\"From: $129\";s:6:\"plugin\";s:65:\"woocommerce-points-and-rewards/woocommerce-points-and-rewards.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:126:\"https://woocommerce.com/products/store-credit/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:24:\"WooCommerce Store Credit\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:152:\"Generate store credit coupons that enable customers to make multiple purchases until the total value specified is exhausted or the coupons life expires.\";s:6:\"button\";s:9:\"From: $29\";s:6:\"plugin\";s:53:\"woocommerce-store-credit/woocommerce-store-credit.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:122:\"https://woocommerce.com/products/facebook/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:24:\"Facebook for WooCommerce\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:89:\"Get the Facebook for WooCommerce plugin for two powerful ways to help grow your business.\";s:6:\"button\";s:4:\"Free\";s:6:\"plugin\";s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:137:\"https://woocommerce.com/products/newsletter-subscription/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:23:\"Newsletter Subscription\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:127:\"Allow customers to subscribe to your MailChimp or CampaignMonitor mailing list(s) via a widget or by opting in during checkout.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:63:\"woocommerce-subscribe-to-newsletter/subscribe-to-newsletter.php\";}i:8;O:8:\"stdClass\":6:{s:4:\"href\";s:142:\"https://woocommerce.com/products/woocommerce-email-customizer/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:28:\"WooCommerce Email Customizer\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:125:\"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:61:\"woocommerce-email-customizer/woocommerce-email-customizer.php\";}}}}}', 'no');
INSERT INTO `wp_options` VALUES (1053, 'storefront_nux_guided_tour', '1', 'yes');
INSERT INTO `wp_options` VALUES (1062, 'cxccoo_user_can_create_customers', 'pos_manager', 'yes');
INSERT INTO `wp_options` VALUES (1065, 'woocommerce_pos_order_filters', 'a:1:{i:0;s:8:\"register\";}', 'yes');
INSERT INTO `wp_options` VALUES (1066, 'wc_pos_disable_sound_notifications', 'no', 'yes');
INSERT INTO `wp_options` VALUES (1067, 'wc_pos_disable_connection_status', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (1068, 'wc_pos_keyboard_shortcuts', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (1069, 'wc_pos_rounding', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (1070, 'wc_pos_rounding_value', '0.01', 'yes');
INSERT INTO `wp_options` VALUES (1071, 'wc_pos_display_reports', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (1072, 'wc_pos_day_end_report', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (1073, 'wc_pos_day_end_emails', 'xuan.0211@gmail.com', 'yes');
INSERT INTO `wp_options` VALUES (1074, 'wc_pos_cash_management_order_status', 'a:1:{i:0;s:13:\"wc-processing\";}', 'yes');
INSERT INTO `wp_options` VALUES (1075, 'wc_pos_autoupdate_stock', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (1076, 'wc_pos_autoupdate_interval', '240', 'yes');
INSERT INTO `wp_options` VALUES (1077, 'wc_pos_show_stock', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (1078, 'wc_pos_show_out_of_stock_products', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (1079, 'wc_pos_bill_screen', 'no', 'yes');
INSERT INTO `wp_options` VALUES (1080, 'wc_pos_visibility', 'no', 'yes');
INSERT INTO `wp_options` VALUES (1081, 'wc_pos_custom_fee', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (1082, 'woocommerce_pos_force_ssl_checkout', 'no', 'yes');
INSERT INTO `wp_options` VALUES (1083, 'woocommerce_pos_end_of_sale_username_add_customer', '1', 'yes');
INSERT INTO `wp_options` VALUES (1084, 'wc_pos_load_customer_after_selecting', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (1085, 'wc_pos_last_force_db_update', 'a:2:{s:4:\"date\";s:16:\"2018-03-21 06:52\";s:3:\"log\";a:3:{s:5:\"3.2.1\";a:5:{s:8:\"show_sku\";s:2:\"OK\";s:11:\"show_outlet\";s:2:\"OK\";s:13:\"show_register\";s:2:\"OK\";s:14:\"show_site_name\";s:2:\"OK\";s:18:\"gift_receipt_title\";s:2:\"OK\";}s:7:\"3.2.2.0\";a:1:{s:12:\"sale_reports\";b:0;}s:5:\"4.0.0\";a:1:{s:18:\"pos_custom_product\";i:0;}}}', 'yes');
INSERT INTO `wp_options` VALUES (1090, '_transient_orders-transient-version', '1521724579', 'yes');
INSERT INTO `wp_options` VALUES (1091, '_transient_timeout_wc_cbp_3c0ea1254e550eb1c9e10e462edd8b85', '1524209171', 'no');
INSERT INTO `wp_options` VALUES (1092, '_transient_wc_cbp_3c0ea1254e550eb1c9e10e462edd8b85', 'a:0:{}', 'no');
INSERT INTO `wp_options` VALUES (1413, '_transient_timeout__woocommerce_helper_updates', '1521768113', 'no');
INSERT INTO `wp_options` VALUES (1414, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"a04525c366607140ef08487d480ee6e2\";s:7:\"updated\";i:1521724913;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no');
INSERT INTO `wp_options` VALUES (1415, '_transient_timeout_plugin_slugs', '1521815683', 'no');
INSERT INTO `wp_options` VALUES (1416, '_transient_plugin_slugs', 'a:28:{i:0;s:19:\"akismet/akismet.php\";i:1;s:27:\"woocommerce/woocommerce.php\";i:2;s:63:\"woocommerce-advanced-shipping/woocommerce-advanced-shipping.php\";i:3;s:59:\"woocommerce-attribute-group/woocommerce-attribute-group.php\";i:4;s:58:\"woocommerce-create-customer-on-order/create-user-order.php\";i:5;s:53:\"woocommerce-order-status/woocommerce-order-status.php\";i:6;s:55:\"woocommerce-point-of-sale/woocommerce-point-of-sale.php\";i:7;s:49:\"woocommerce-pre-orders/woocommerce-pre-orders.php\";i:8;s:63:\"woocommerce-shipment-tracking/woocommerce-shipment-tracking.php\";i:9;s:55:\"woocommerce-stock-manager/woocommerce-stock-manager.php\";i:10;s:51:\"yith-desktop-notifications-for-woocommerce/init.php\";i:11;s:39:\"yith-pre-order-for-woocommerce/init.php\";i:12;s:49:\"yith-product-size-charts-for-woocommerce/init.php\";i:13;s:34:\"yith-woocommerce-barcodes/init.php\";i:14;s:46:\"yith-woocommerce-best-sellers-premium/init.php\";i:15;s:39:\"yith-woocommerce-brands-add-on/init.php\";i:16;s:46:\"yith-woocommerce-bulk-product-editing/init.php\";i:17;s:60:\"yith-woocommerce-color-and-label-variations-premium/init.php\";i:18;s:33:\"yith-woocommerce-compare/init.php\";i:19;s:45:\"yith-woocommerce-custom-order-status/init.php\";i:20;s:40:\"yith-woocommerce-order-tracking/init.php\";i:21;s:50:\"yith-woocommerce-advanced-product-options/init.php\";i:22;s:57:\"yith-woocommerce-product-sales-countdown-premium/init.php\";i:23;s:49:\"yith-woocommerce-sequential-order-number/init.php\";i:24;s:43:\"yith-woocommerce-sms-notifications/init.php\";i:25;s:48:\"yith-woocommerce-terms-conditions-popup/init.php\";i:26;s:38:\"yith-woocommerce-waiting-list/init.php\";i:27;s:43:\"yith-woocommerce-watermark-premium/init.php\";}', 'no');
INSERT INTO `wp_options` VALUES (1417, 'yit_recently_activated', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES (1418, 'yith_wcpo_enable_pre_order', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (1419, 'yith_wcpo_wc-completed', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (1420, 'yith_wcpo_wc-cancelled', 'no', 'yes');
INSERT INTO `wp_options` VALUES (1421, 'yith_wcpo_wc-refunded', 'no', 'yes');
INSERT INTO `wp_options` VALUES (1422, 'yith_wcpo_wc-failed', 'no', 'yes');
INSERT INTO `wp_options` VALUES (1423, 'yith_wcpo_default_add_to_cart_label', 'Pre-Order Now', 'yes');
INSERT INTO `wp_options` VALUES (1424, 'yit_plugin_fw_panel_wc_default_options_set', 'a:1:{s:15:\"yith_wcpo_panel\";b:1;}', 'yes');
INSERT INTO `wp_options` VALUES (1463, '_transient_timeout_yit_panel_sidebar_remote_widgets', '1521975561', 'no');
INSERT INTO `wp_options` VALUES (1464, '_transient_yit_panel_sidebar_remote_widgets', 'a:0:{}', 'no');
INSERT INTO `wp_options` VALUES (1465, '_transient_timeout_yit_panel_sidebar_remote_widgets_update', '1521788848', 'no');
INSERT INTO `wp_options` VALUES (1466, '_transient_yit_panel_sidebar_remote_widgets_update', '1', 'no');
INSERT INTO `wp_options` VALUES (1467, 'yith_wcpo_enable_pre_order_purchasable', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (1468, 'yith_wcpo_enable_pre_order_auto_outofstock_notification', 'no', 'yes');
INSERT INTO `wp_options` VALUES (1469, 'yith_wcpo_enable_pre_order_auto_backorders', 'no', 'yes');
INSERT INTO `wp_options` VALUES (1470, 'yith_wcpo_enable_automatic_date_formatting', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (1471, 'yith_wcpo_mixing', 'false', 'yes');
INSERT INTO `wp_options` VALUES (1472, 'yith_wcpo_default_availability_date_label', 'Available on: {availability_date} at {availability_time}', 'yes');
INSERT INTO `wp_options` VALUES (1473, 'yith_wcpo_no_date_label', 'Coming soon...', 'yes');
INSERT INTO `wp_options` VALUES (1474, 'yith_wcpo_availability_date_color_loop', '#b20015', 'yes');
INSERT INTO `wp_options` VALUES (1475, 'yith_wcpo_availability_date_color_single_product', '#a46497', 'yes');
INSERT INTO `wp_options` VALUES (1476, 'yith_wcpo_availability_date_color_cart', '#a46497', 'yes');
INSERT INTO `wp_options` VALUES (1477, 'yith_wcpo_enable_pre_order_notification', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (1478, 'yith_wcpo_notification_number_days', '1', 'yes');
INSERT INTO `wp_options` VALUES (1479, 'yith_wcpo_enable_pre_order_notification_for_sale', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (6501, 'yith-wcwtl-enable', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (6502, 'yith-wcwtl-button-success-msg', 'You have been added to the waiting list of this product.', 'yes');
INSERT INTO `wp_options` VALUES (6503, 'yith-wcwtl-button-leave-msg', 'You have been removed from the waiting list of this product.', 'yes');
INSERT INTO `wp_options` VALUES (6504, 'yith-wcwtl-button-error-msg', 'An error has occurred or you\'re already register in this waiting list. Please try again.', 'yes');
INSERT INTO `wp_options` VALUES (6505, 'yith-wcwtl-auto-mailout', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (6506, 'yith-wcwtl-keep-after-email', 'no', 'yes');
INSERT INTO `wp_options` VALUES (6507, 'yith-wcwtl-use-mandrill', 'no', 'yes');
INSERT INTO `wp_options` VALUES (6508, 'yith-wcwtl-mandrill-api-key', '', 'yes');
INSERT INTO `wp_options` VALUES (6509, 'yith-wcwtl-form-message', 'Notify me when item is back in stock.', 'yes');
INSERT INTO `wp_options` VALUES (6510, 'yith-wcwtl-general-font-size', '15', 'yes');
INSERT INTO `wp_options` VALUES (6511, 'yith-wcwtl-general-font-color', '#333333', 'yes');
INSERT INTO `wp_options` VALUES (6512, 'yith-wcwtl-button-add-label', 'Add to waiting list', 'yes');
INSERT INTO `wp_options` VALUES (6513, 'yith-wcwtl-button-add-background', '#a46497', 'yes');
INSERT INTO `wp_options` VALUES (6514, 'yith-wcwtl-button-add-background-hover', '#935386', 'yes');
INSERT INTO `wp_options` VALUES (6515, 'yith-wcwtl-button-add-text-color', '#ffffff', 'yes');
INSERT INTO `wp_options` VALUES (6516, 'yith-wcwtl-button-add-text-color-hover', '#ffffff', 'yes');
INSERT INTO `wp_options` VALUES (6517, 'yith-wcwtl-button-leave-label', 'Leave waiting list', 'yes');
INSERT INTO `wp_options` VALUES (6518, 'yith-wcwtl-button-leave-background', '#a46497', 'yes');
INSERT INTO `wp_options` VALUES (6519, 'yith-wcwtl-button-leave-background-hover', '#935386', 'yes');
INSERT INTO `wp_options` VALUES (6520, 'yith-wcwtl-button-leave-text-color', '#ffffff', 'yes');
INSERT INTO `wp_options` VALUES (6521, 'yith-wcwtl-button-leave-text-color-hover', '#ffffff', 'yes');
INSERT INTO `wp_options` VALUES (6522, 'ywot_set_completed_status', 'no', 'yes');
INSERT INTO `wp_options` VALUES (6523, 'ywot_order_tracking_text', 'Your order has been picked up by [carrier_name] on [pickup_date]. Your track code is [track_code].', 'yes');
INSERT INTO `wp_options` VALUES (6524, 'ywot_order_tracking_text_position', '1', 'yes');
INSERT INTO `wp_options` VALUES (6525, 'ywot_mail_tracking_text', 'Your order has been picked up by [carrier_name] on [pickup_date]. Your track code is [track_code].', 'yes');
INSERT INTO `wp_options` VALUES (6526, 'ywot_mail_tracking_text_position', '1', 'yes');
INSERT INTO `wp_options` VALUES (6527, 'ywot_show_in_packing_slip_pdf_invoice', 'not', 'yes');
INSERT INTO `wp_options` VALUES (6528, 'yith_wccl_db_version', '1.0.0', 'yes');
INSERT INTO `wp_options` VALUES (6529, 'yith_wapo_db_version', '1.0.8', 'yes');
INSERT INTO `wp_options` VALUES (6530, 'yith_wapo_settings_formposition', 'before', 'yes');
INSERT INTO `wp_options` VALUES (6531, 'yith_wapo_settings_addtocartlabel', 'Select Options', 'yes');
INSERT INTO `wp_options` VALUES (6532, 'yith_wapo_settings_show_product_price_cart', 'no', 'yes');
INSERT INTO `wp_options` VALUES (6533, 'yith_wapo_settings_show_add_ons_price_table', 'no', 'yes');
INSERT INTO `wp_options` VALUES (6534, 'yith_wapo_settings_showlabeltype', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (6535, 'yith_wapo_settings_showimagetype', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (6536, 'yith_wapo_settings_showdescrtype', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (6537, 'yith_wapo_settings_showimageopt', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (6538, 'yith_wapo_settings_showdescropt', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (6539, 'yith_wapo_settings_tooltip_icon', 'http://hanghieu.test/wp-content/plugins/yith-woocommerce-advanced-product-options/assets/img/description-icon.png', 'yes');
INSERT INTO `wp_options` VALUES (6540, 'yith_wapo_settings_date_format', 'mm/dd/yy', 'yes');
INSERT INTO `wp_options` VALUES (6541, 'yith-wapo-enable-tooltip', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (6542, 'yith-wapo-tooltip-position', 'top', 'yes');
INSERT INTO `wp_options` VALUES (6543, 'yith-wapo-tooltip-animation', 'fade', 'yes');
INSERT INTO `wp_options` VALUES (6544, 'yith-wapo-tooltip-background', '#222222', 'yes');
INSERT INTO `wp_options` VALUES (6545, 'yith-wapo-tooltip-text-color', '#ffffff', 'yes');
INSERT INTO `wp_options` VALUES (6546, 'yith_wapo_settings_uploadfolder', 'yith_advanced_product_options', 'yes');
INSERT INTO `wp_options` VALUES (6547, 'yith_wapo_settings_filetypes', '.gif, .jpg, .png, .rar, .txt, .zip', 'yes');
INSERT INTO `wp_options` VALUES (6548, 'yith_wapo_settings_upload_size', '10', 'yes');
INSERT INTO `wp_options` VALUES (6549, 'yith-wccl-attributes-style', 'hide', 'yes');
INSERT INTO `wp_options` VALUES (6550, 'yith-wccl-enable-tooltip', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (6551, 'yith-wccl-tooltip-position', 'top', 'yes');
INSERT INTO `wp_options` VALUES (6552, 'yith-wccl-tooltip-animation', 'fade', 'yes');
INSERT INTO `wp_options` VALUES (6553, 'yith-wccl-tooltip-background', '#222222', 'yes');
INSERT INTO `wp_options` VALUES (6554, 'yith-wccl-tooltip-text-color', '#ffffff', 'yes');
INSERT INTO `wp_options` VALUES (6555, 'yith-wccl-enable-description', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (6556, 'yith-wccl-enable-in-loop', 'yes', 'yes');
INSERT INTO `wp_options` VALUES (6557, 'yith-wccl-position-in-loop', 'after', 'yes');
INSERT INTO `wp_options` VALUES (6558, 'yith-wccl-add-to-cart-label', 'Add to cart', 'yes');
INSERT INTO `wp_options` VALUES (6559, 'yith-wccl-change-image-hover', 'no', 'yes');
INSERT INTO `wp_options` VALUES (6560, 'yith-wccl-show-custom-on-tab', 'no', 'yes');
INSERT INTO `wp_options` VALUES (6574, 'widget_yith_wcpsc_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (6575, 'yith-wcpsc-popup-style', 'default', 'yes');
INSERT INTO `wp_options` VALUES (6576, 'yith-wcpsc-popup-base-color', '#ffffff', 'yes');
INSERT INTO `wp_options` VALUES (6577, 'yith-wcpsc-popup-position', 'center', 'yes');
INSERT INTO `wp_options` VALUES (6578, 'yith-wcpsc-popup-effect', 'fade', 'yes');
INSERT INTO `wp_options` VALUES (6579, 'yith-wcpsc-popup-overlay-color', '#000000', 'yes');
INSERT INTO `wp_options` VALUES (6580, 'yith-wcpsc-popup-overlay-opacity', '0.8', 'yes');
INSERT INTO `wp_options` VALUES (6581, 'yith-wcpsc-popup-button-position', 'after_add_to_cart', 'yes');
INSERT INTO `wp_options` VALUES (6582, 'yith-wcpsc-popup-button-color', '#b369a5', 'yes');
INSERT INTO `wp_options` VALUES (6583, 'yith-wcpsc-popup-button-text-color', '#ffffff', 'yes');
INSERT INTO `wp_options` VALUES (6584, 'yith-wcpsc-popup-button-border-radius', '3', 'yes');
INSERT INTO `wp_options` VALUES (6585, 'yith-wcpsc-popup-button-padding', 'a:4:{i:0;i:6;i:1;i:15;i:2;i:6;i:3;i:15;}', 'yes');
INSERT INTO `wp_options` VALUES (6586, 'yith-wcpsc-popup-button-shadow-color', '#dddddd', 'yes');
INSERT INTO `wp_options` VALUES (6587, 'yith-wcpsc-table-style', 'default', 'yes');
INSERT INTO `wp_options` VALUES (6588, 'yith-wcpsc-table-base-color', '#f9f9f9', 'yes');
INSERT INTO `wp_options` VALUES (6589, 'widget_yith_wcbr_brands_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (6590, 'widget_yith_wcbr_brands_thumbnail', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (6591, 'widget_yith_wcbr_brands_thumbnail_carousel', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (6592, 'widget_yith_wcbr_brands_select', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (6593, 'widget_yith_wcbr_brands_list', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (6594, 'yith_wcbr_brands_taxonomy', 'yith_product_brand', 'yes');
INSERT INTO `wp_options` VALUES (6595, 'yith_wcbr_brands_label', 'Brand:', 'yes');
INSERT INTO `wp_options` VALUES (6596, 'yith_wcbr_single_product_brands_position', 'woocommerce_template_single_meta', 'yes');
INSERT INTO `wp_options` VALUES (6597, 'yith_wcbr_single_product_brands_content', 'both', 'yes');
INSERT INTO `wp_options` VALUES (6598, 'yith_wcbr_single_product_brands_size', 'a:3:{s:5:\"width\";i:0;s:6:\"height\";i:30;s:4:\"crop\";b:1;}', 'yes');
INSERT INTO `wp_options` VALUES (6599, 'yith_wcbr_loop_product_brands_position', 'woocommerce_template_loop_price', 'yes');
INSERT INTO `wp_options` VALUES (6600, 'yith_wcbr_loop_product_brands_size', 'a:3:{s:5:\"width\";i:0;s:6:\"height\";i:60;s:4:\"crop\";b:1;}', 'yes');
INSERT INTO `wp_options` VALUES (6601, 'yith_wcbr_loop_product_brands_content', 'name', 'yes');
INSERT INTO `wp_options` VALUES (6602, 'yith_wcbr_use_logo_default', 'no', 'yes');
INSERT INTO `wp_options` VALUES (6603, 'ywcwat_quality_jpg', '100', 'yes');
INSERT INTO `wp_options` VALUES (6604, 'ywcwat_watermark_select', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES (6609, '_site_transient_timeout_popular_importers_784bf1e53cac86aa0a13768c3453f180', '1521879234', 'no');
INSERT INTO `wp_options` VALUES (6610, '_site_transient_popular_importers_784bf1e53cac86aa0a13768c3453f180', 'a:2:{s:9:\"importers\";a:8:{s:7:\"blogger\";a:4:{s:4:\"name\";s:7:\"Blogger\";s:11:\"description\";s:54:\"Import posts, comments, and users from a Blogger blog.\";s:11:\"plugin-slug\";s:16:\"blogger-importer\";s:11:\"importer-id\";s:7:\"blogger\";}s:9:\"wpcat2tag\";a:4:{s:4:\"name\";s:29:\"Categories and Tags Converter\";s:11:\"description\";s:71:\"Convert existing categories to tags or tags to categories, selectively.\";s:11:\"plugin-slug\";s:18:\"wpcat2tag-importer\";s:11:\"importer-id\";s:10:\"wp-cat2tag\";}s:11:\"livejournal\";a:4:{s:4:\"name\";s:11:\"LiveJournal\";s:11:\"description\";s:46:\"Import posts from LiveJournal using their API.\";s:11:\"plugin-slug\";s:20:\"livejournal-importer\";s:11:\"importer-id\";s:11:\"livejournal\";}s:11:\"movabletype\";a:4:{s:4:\"name\";s:24:\"Movable Type and TypePad\";s:11:\"description\";s:62:\"Import posts and comments from a Movable Type or TypePad blog.\";s:11:\"plugin-slug\";s:20:\"movabletype-importer\";s:11:\"importer-id\";s:2:\"mt\";}s:4:\"opml\";a:4:{s:4:\"name\";s:8:\"Blogroll\";s:11:\"description\";s:28:\"Import links in OPML format.\";s:11:\"plugin-slug\";s:13:\"opml-importer\";s:11:\"importer-id\";s:4:\"opml\";}s:3:\"rss\";a:4:{s:4:\"name\";s:3:\"RSS\";s:11:\"description\";s:30:\"Import posts from an RSS feed.\";s:11:\"plugin-slug\";s:12:\"rss-importer\";s:11:\"importer-id\";s:3:\"rss\";}s:6:\"tumblr\";a:4:{s:4:\"name\";s:6:\"Tumblr\";s:11:\"description\";s:53:\"Import posts &amp; media from Tumblr using their API.\";s:11:\"plugin-slug\";s:15:\"tumblr-importer\";s:11:\"importer-id\";s:6:\"tumblr\";}s:9:\"wordpress\";a:4:{s:4:\"name\";s:9:\"WordPress\";s:11:\"description\";s:96:\"Import posts, pages, comments, custom fields, categories, and tags from a WordPress export file.\";s:11:\"plugin-slug\";s:18:\"wordpress-importer\";s:11:\"importer-id\";s:9:\"wordpress\";}}s:10:\"translated\";b:0;}', 'no');
INSERT INTO `wp_options` VALUES (6666, 'yith_product_brand_children', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES (8374, 'wc_pre_orders_add_to_cart_button_text', 'Pre-Order Now', 'yes');
INSERT INTO `wp_options` VALUES (8375, 'wc_pre_orders_place_order_button_text', 'Place Pre-Order Now', 'yes');
INSERT INTO `wp_options` VALUES (8376, 'wc_pre_orders_single_product_message', 'This item will be released on {availability_date}.', 'yes');
INSERT INTO `wp_options` VALUES (8377, 'wc_pre_orders_shop_loop_product_message', 'Available on {availability_date}.', 'yes');
INSERT INTO `wp_options` VALUES (8378, 'wc_pre_orders_availability_date_cart_title_text', 'Available On', 'yes');
INSERT INTO `wp_options` VALUES (8379, 'wc_pre_orders_upon_release_order_total_format', '{order_total} charged on {availability_date}', 'yes');
INSERT INTO `wp_options` VALUES (8380, 'wc_pre_orders_upfront_order_total_format', '{order_total} charged upfront', 'yes');
INSERT INTO `wp_options` VALUES (8381, 'wc_pre_orders_version', '1.4.6', 'yes');
INSERT INTO `wp_options` VALUES (8936, 'wc_sa_meta_box_errors', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES (8938, '_site_transient_timeout_available_translations', '1521725530', 'no');
INSERT INTO `wp_options` VALUES (8939, '_site_transient_available_translations', 'a:113:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-06 13:56:09\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 18:16:41\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-01-25 21:29:53\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.4/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-13 19:13:01\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.8.5\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:7:\"Bengali\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.5/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-22 03:44:52\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-04 20:20:28\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 20:33:12\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-21 07:01:05\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-11 09:40:36\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-19 17:34:31\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-12 10:10:36\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-18 12:08:55\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.9.4/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-18 12:08:30\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-22 15:43:53\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/4.9.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-12 12:57:07\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 08:59:25\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-17 05:20:05\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-15 20:17:27\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 09:54:30\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-01-24 19:13:22\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-18 17:06:15\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 16:21:50\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 23:17:08\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 15:03:42\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"4.8.5\";s:7:\"updated\";s:19:\"2017-07-31 15:12:02\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.5/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-01 17:54:52\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-28 20:09:49\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-23 18:34:33\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-27 05:22:44\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-19 14:11:29\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-12-09 21:12:23\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-11 06:05:10\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-12 17:00:17\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 17:11:16\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-21 22:04:16\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.5\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.5/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-10 18:19:59\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-14 06:16:04\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-12 09:39:31\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-13 12:30:42\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 15:33:49\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-01-29 19:54:36\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-28 12:42:14\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-04-13 13:55:54\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 08:18:46\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-16 18:46:39\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-14 11:47:57\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-08 06:01:48\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-11 21:30:32\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.4/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-07 02:07:59\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-15 02:27:09\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:48:25\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 19:40:23\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-03-17 20:40:40\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.7/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:54:41\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"4.8.5\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.5/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-28 10:55:13\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-02 11:50:29\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-19 05:29:03\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 07:20:23\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.9.4/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-02 13:50:55\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-16 10:26:09\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-22 09:27:50\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 08:32:20\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 09:37:35\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 09:30:48\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/4.9.4/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-20 15:15:55\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 12:09:47\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-19 13:10:09\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-22 08:50:10\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 09:59:50\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-05 20:37:27\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 12:42:33\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-02 17:08:41\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-14 15:26:30\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-05 09:23:39\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:9:\"Uyƣurqə\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-11-02 17:05:02\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.3/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-13 08:24:25\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 10:37:43\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-19 14:34:44\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-06 17:26:08\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-17 22:20:52\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-13 02:41:15\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no');
INSERT INTO `wp_options` VALUES (8940, 'new_admin_email', 'xuan.0211@gmail.com', 'yes');
INSERT INTO `wp_options` VALUES (8946, '_transient_timeout_wc_cbp_9fc6788036b2a18ebe30e3ca436c4096', '1524306783', 'no');
INSERT INTO `wp_options` VALUES (8947, '_transient_wc_cbp_9fc6788036b2a18ebe30e3ca436c4096', 'a:0:{}', 'no');
INSERT INTO `wp_options` VALUES (8958, 'woocommerce_shipment_tracking_version', '1.6.8', 'yes');
INSERT INTO `wp_options` VALUES (8959, '_transient_timeout_b707de9d962a6fa7c3eaeb33763bdb29_version_data', '1521804201', 'no');
INSERT INTO `wp_options` VALUES (8960, '_transient_b707de9d962a6fa7c3eaeb33763bdb29_version_data', 'a:4:{s:4:\"date\";s:4:\"2018\";s:7:\"version\";s:6:\"1.6.10\";s:6:\"update\";s:77:\"Fix - Ensures a vertical space below the tracking information in HTML emails.\";s:9:\"changelog\";a:6:{s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:11:{s:12:\"content-type\";s:10:\"text/plain\";s:14:\"content-length\";s:4:\"5530\";s:4:\"date\";s:29:\"Sat, 03 Feb 2018 11:05:22 GMT\";s:13:\"last-modified\";s:29:\"Fri, 02 Feb 2018 07:14:41 GMT\";s:4:\"etag\";s:34:\"\"5d6ff396ce0278d0c7127fd818a67bab\"\";s:13:\"accept-ranges\";s:5:\"bytes\";s:6:\"server\";s:8:\"AmazonS3\";s:3:\"age\";s:4:\"9032\";s:7:\"x-cache\";s:19:\"Hit from cloudfront\";s:3:\"via\";s:64:\"1.1 fd213e166adb46a27b539f026394e26d.cloudfront.net (CloudFront)\";s:11:\"x-amz-cf-id\";s:56:\"DJN_OBu8OajJVL96PyMcChIeP_kV102XJ1RK76JgJ0yGwbu8UraOsw==\";}}s:4:\"body\";s:5530:\"*** Shipment Tracking Changelog ***\n\n2018-01-25 - version 1.6.10\n* Fix - Ensures a vertical space below the tracking information in HTML emails.\n* Fix - Ensure the \"Date\" label is shown correctly when viewing tracking information on a mobile device.\n* Tweak - Hide the \"Track\" button if no tracking URL is present.\n\n2017-12-14 - version 1.6.9\n* Add - WC minimum requirements to header.\n\n2017-06-07 - version 1.6.8\n* Tweak - Added services for Romania.\n* Tweak - Added support for WC API v2.\n* Fix - Don\'t include tracking info in order refunded email.\n\n2017-05-29 - version 1.6.7\n* Fix - Updated tracking link for DTDC India.\n\n2017-05-15 - version 1.6.6\n* Tweak - Added support for custom mapping in order CSV export.\n\n2017-05-09 - version 1.6.5\n* Fix - Added updater to convert legacy meta introduced before 1.4.0.\n\n2017-04-03 - version 1.6.4\n* Fix - Some tracking information was using billing postcode instead of shipping.\n* Fix - WooCommerce 3.0 compatibility.\n* Update - Removed some legacy code related to storage of tracking data that is no longer needed.\n\n2016-12-21 - version 1.6.3\n* Update - Swedish Postal name and tracking link.\n\n2016-11-25 - version 1.6.2\n* Enhancement - Support for adding or updating tracking information via Customer / Coupon / Order CSV Import\n* Fix - Incorrect DHL US URL format\n* Enhancement - Added translations for fr_FR\n\n2016-10-05 - version 1.6.1\n* Enhancement - Support for Customer / Order XML Export\n* Enhancement - Added DHL US provider.\n* Fix - Issue of template load order. Now it\'s overriden via yourtheme/woocommerce-shipment-tracking/{template_name}. For example storefront-child/woocommerce-shipment-tracking/myaccount/view-order.php.\n* Enhancement - Add Shipment Tracking column in admin orders list.\n\n2016-08-30 - version 1.6.0\n* Tweak - Adds support for one-row-per-item custom formats with Customer / Order CSV Export\n* Tweak - Adds PIP support to display shipment tracking information\n* Fix - Update plugin\'s main to match with plugin\'s slug\n* Fix - Update text domain slug to match with plugin\'s slug\n\n2016-08-10 - version 1.5.0\n* Fix - Improves compatibility with Customer / Order CSV Export 4.0+\n* Tweak - Added An Post (track.anpost.ie) to providers list\n* Tweak - Expose shipment tracking to REST API\n\n2016-07-19 - version 1.4.5\n* Fix - Properly enqueue JS asset no matter what base directory name is.\n  There was hardcoded URL path with \'woocommerce-shipment-tracking\' when\n  enqueueing admin.min.js. Using plugin_dir_url( __FILE__ ) should make it\n  agnostic.\n\n2016-07-07 - version 1.4.4\n* Fix - Add deprecated subscription filter check.\n\n2016-02-17 - version 1.4.3\n* Fix - Added text domain and language files\n\n2016-01-06 - version 1.4.2\n* Fixes issue with selecting DPD in Ireland and the UK.\n\n2015-08-10 - version 1.4.1\n* Fixing minor issue where View Order template can clash with a template of the same name is a custom theme.\n* Fixes minor issues with Subscriptions where renewals create a PHP notice\n\n2015-07-15 - version 1.4.0\n* Made it possible to add multiple tracking numbers to an order.\n* Fixes minor issue where custom tracking link shows in admin when no url has been provided.\n\n2015-06-23 - version 1.3.6\n* Make all date translatable\n* Add Austria DPD\n\n2015-04-20 - version 1.3.5\n* Fix Česká pošta.\n\n2015-04-13 - version 1.3.4\n* Fix Interlink URL error\n* Update Czech.\n\n2015-03-03 - version 1.3.3\n* Prevent data being copied to subscription renewals.\n* Fix royal mail tracking link.\n\n2015-01-17 - version 1.3.2\n* Add Germany DPD\n\n2015-01-11 - version 1.3.1\n* remove CityLink\n* Add Interlink\n\n2014-10-22 - version 1.3.0\n* Added wc_shipment_tracking_get_providers filter.\n* Add DHL to Italy\n\n2014-10-06 - version 1.2.9\n* Added NZ providers\n\n2014-09-23 - version 1.2.8\n* Added Ireland DPD\n\n2014-09-02 - version 1.2.7\n* Update Swedish carriers\n* More swedish providers\n\n2014-08-26 - version 1.2.6\n* Update and add Swedish carriers\n\n2014-06-05 - version 1.2.5\n* Update Royal Mail tracking URL\n* Add CSV Export support to Shipment Tracking\n\n2014-06-03 - version 1.2.4\n* Added FedEx Sameday\n\n2014-04-16 - version 1.2.3\n* Added DHL Intraship (DE)\n\n2014-03-19 - version 1.2.2\n* BRT (Bartolini)\n\n2014-01-28 - version 1.2.1\n* UK Mail\n\n2014-01-06 - version 1.2.0\n* Add UPS Germany\n* Finland tracking\n* 2.1 compatibility\n\n2013-09-23 - version 1.1.12\n* Run sanitize_title() on woocommerce_shipment_tracking_default_provider filter to match sanitized $provider\n\n2013-09-20 - version 1.1.11\n* Unique providers\n\n2013-09-20 - version 1.1.10\n* Czech Republic methods (thanks Petr Silon)\n\n2013-09-16 - version 1.1.9\n* Split UK and NL DPD methods\n\n2013-08-16 - version 1.1.8\n* Add Hermes\n\n2013-07-15 - version 1.1.7\n* Update royal mail url\n\n2013-06-04 - version 1.1.6\n* Fixed tracking link in plain text emails.\n\n2013-04-19 - version 1.1.5\n* woocommerce_shipment_tracking_default_provider filter for setting a default\n\n2013-03-11 - version 1.1.4\n* Added austrian services\n\n2013-03-11 - version 1.1.3\n* Added Deutsche Post DHL\n\n2013-03-08 - version 1.1.2\n* SAPO URL change\n\n2013-01-15 - version 1.1.1\n* Change localisation strings\n\n2013-01-11 - version 1.1.0\n* WC 2.0 Compatibility\n* Custom providers can have custom links and provider names.\n\n2012-12-04 - version 1.0.5\n* New updater\n\n2012-08-15 - version 1.0.4\n* PostNL support\n\n2012-06-25 - version 1.0.3\n* Changed text for \'custom\' links\n* Changed save priority\n\n2012-06-25 - version 1.0.2\n* Added Correios\n* Added Posten AB\n\n2012-06-06 - version 1.0.1\n* Added DTDC shipping\n\n2012-05-17 - version 1.0\n* First Release\n\";s:8:\"response\";a:2:{s:4:\"code\";i:200;s:7:\"message\";s:2:\"OK\";}s:7:\"cookies\";a:0:{}s:8:\"filename\";N;s:13:\"http_response\";O:25:\"WP_HTTP_Requests_Response\":5:{s:11:\"\0*\0response\";O:17:\"Requests_Response\":10:{s:4:\"body\";s:5530:\"*** Shipment Tracking Changelog ***\n\n2018-01-25 - version 1.6.10\n* Fix - Ensures a vertical space below the tracking information in HTML emails.\n* Fix - Ensure the \"Date\" label is shown correctly when viewing tracking information on a mobile device.\n* Tweak - Hide the \"Track\" button if no tracking URL is present.\n\n2017-12-14 - version 1.6.9\n* Add - WC minimum requirements to header.\n\n2017-06-07 - version 1.6.8\n* Tweak - Added services for Romania.\n* Tweak - Added support for WC API v2.\n* Fix - Don\'t include tracking info in order refunded email.\n\n2017-05-29 - version 1.6.7\n* Fix - Updated tracking link for DTDC India.\n\n2017-05-15 - version 1.6.6\n* Tweak - Added support for custom mapping in order CSV export.\n\n2017-05-09 - version 1.6.5\n* Fix - Added updater to convert legacy meta introduced before 1.4.0.\n\n2017-04-03 - version 1.6.4\n* Fix - Some tracking information was using billing postcode instead of shipping.\n* Fix - WooCommerce 3.0 compatibility.\n* Update - Removed some legacy code related to storage of tracking data that is no longer needed.\n\n2016-12-21 - version 1.6.3\n* Update - Swedish Postal name and tracking link.\n\n2016-11-25 - version 1.6.2\n* Enhancement - Support for adding or updating tracking information via Customer / Coupon / Order CSV Import\n* Fix - Incorrect DHL US URL format\n* Enhancement - Added translations for fr_FR\n\n2016-10-05 - version 1.6.1\n* Enhancement - Support for Customer / Order XML Export\n* Enhancement - Added DHL US provider.\n* Fix - Issue of template load order. Now it\'s overriden via yourtheme/woocommerce-shipment-tracking/{template_name}. For example storefront-child/woocommerce-shipment-tracking/myaccount/view-order.php.\n* Enhancement - Add Shipment Tracking column in admin orders list.\n\n2016-08-30 - version 1.6.0\n* Tweak - Adds support for one-row-per-item custom formats with Customer / Order CSV Export\n* Tweak - Adds PIP support to display shipment tracking information\n* Fix - Update plugin\'s main to match with plugin\'s slug\n* Fix - Update text domain slug to match with plugin\'s slug\n\n2016-08-10 - version 1.5.0\n* Fix - Improves compatibility with Customer / Order CSV Export 4.0+\n* Tweak - Added An Post (track.anpost.ie) to providers list\n* Tweak - Expose shipment tracking to REST API\n\n2016-07-19 - version 1.4.5\n* Fix - Properly enqueue JS asset no matter what base directory name is.\n  There was hardcoded URL path with \'woocommerce-shipment-tracking\' when\n  enqueueing admin.min.js. Using plugin_dir_url( __FILE__ ) should make it\n  agnostic.\n\n2016-07-07 - version 1.4.4\n* Fix - Add deprecated subscription filter check.\n\n2016-02-17 - version 1.4.3\n* Fix - Added text domain and language files\n\n2016-01-06 - version 1.4.2\n* Fixes issue with selecting DPD in Ireland and the UK.\n\n2015-08-10 - version 1.4.1\n* Fixing minor issue where View Order template can clash with a template of the same name is a custom theme.\n* Fixes minor issues with Subscriptions where renewals create a PHP notice\n\n2015-07-15 - version 1.4.0\n* Made it possible to add multiple tracking numbers to an order.\n* Fixes minor issue where custom tracking link shows in admin when no url has been provided.\n\n2015-06-23 - version 1.3.6\n* Make all date translatable\n* Add Austria DPD\n\n2015-04-20 - version 1.3.5\n* Fix Česká pošta.\n\n2015-04-13 - version 1.3.4\n* Fix Interlink URL error\n* Update Czech.\n\n2015-03-03 - version 1.3.3\n* Prevent data being copied to subscription renewals.\n* Fix royal mail tracking link.\n\n2015-01-17 - version 1.3.2\n* Add Germany DPD\n\n2015-01-11 - version 1.3.1\n* remove CityLink\n* Add Interlink\n\n2014-10-22 - version 1.3.0\n* Added wc_shipment_tracking_get_providers filter.\n* Add DHL to Italy\n\n2014-10-06 - version 1.2.9\n* Added NZ providers\n\n2014-09-23 - version 1.2.8\n* Added Ireland DPD\n\n2014-09-02 - version 1.2.7\n* Update Swedish carriers\n* More swedish providers\n\n2014-08-26 - version 1.2.6\n* Update and add Swedish carriers\n\n2014-06-05 - version 1.2.5\n* Update Royal Mail tracking URL\n* Add CSV Export support to Shipment Tracking\n\n2014-06-03 - version 1.2.4\n* Added FedEx Sameday\n\n2014-04-16 - version 1.2.3\n* Added DHL Intraship (DE)\n\n2014-03-19 - version 1.2.2\n* BRT (Bartolini)\n\n2014-01-28 - version 1.2.1\n* UK Mail\n\n2014-01-06 - version 1.2.0\n* Add UPS Germany\n* Finland tracking\n* 2.1 compatibility\n\n2013-09-23 - version 1.1.12\n* Run sanitize_title() on woocommerce_shipment_tracking_default_provider filter to match sanitized $provider\n\n2013-09-20 - version 1.1.11\n* Unique providers\n\n2013-09-20 - version 1.1.10\n* Czech Republic methods (thanks Petr Silon)\n\n2013-09-16 - version 1.1.9\n* Split UK and NL DPD methods\n\n2013-08-16 - version 1.1.8\n* Add Hermes\n\n2013-07-15 - version 1.1.7\n* Update royal mail url\n\n2013-06-04 - version 1.1.6\n* Fixed tracking link in plain text emails.\n\n2013-04-19 - version 1.1.5\n* woocommerce_shipment_tracking_default_provider filter for setting a default\n\n2013-03-11 - version 1.1.4\n* Added austrian services\n\n2013-03-11 - version 1.1.3\n* Added Deutsche Post DHL\n\n2013-03-08 - version 1.1.2\n* SAPO URL change\n\n2013-01-15 - version 1.1.1\n* Change localisation strings\n\n2013-01-11 - version 1.1.0\n* WC 2.0 Compatibility\n* Custom providers can have custom links and provider names.\n\n2012-12-04 - version 1.0.5\n* New updater\n\n2012-08-15 - version 1.0.4\n* PostNL support\n\n2012-06-25 - version 1.0.3\n* Changed text for \'custom\' links\n* Changed save priority\n\n2012-06-25 - version 1.0.2\n* Added Correios\n* Added Posten AB\n\n2012-06-06 - version 1.0.1\n* Added DTDC shipping\n\n2012-05-17 - version 1.0\n* First Release\n\";s:3:\"raw\";s:5964:\"HTTP/1.1 200 OK\r\nContent-Type: text/plain\r\nContent-Length: 5530\r\nConnection: close\r\nDate: Sat, 03 Feb 2018 11:05:22 GMT\r\nLast-Modified: Fri, 02 Feb 2018 07:14:41 GMT\r\nETag: \"5d6ff396ce0278d0c7127fd818a67bab\"\r\nAccept-Ranges: bytes\r\nServer: AmazonS3\r\nAge: 9032\r\nX-Cache: Hit from cloudfront\r\nVia: 1.1 fd213e166adb46a27b539f026394e26d.cloudfront.net (CloudFront)\r\nX-Amz-Cf-Id: DJN_OBu8OajJVL96PyMcChIeP_kV102XJ1RK76JgJ0yGwbu8UraOsw==\r\n\r\n*** Shipment Tracking Changelog ***\n\n2018-01-25 - version 1.6.10\n* Fix - Ensures a vertical space below the tracking information in HTML emails.\n* Fix - Ensure the \"Date\" label is shown correctly when viewing tracking information on a mobile device.\n* Tweak - Hide the \"Track\" button if no tracking URL is present.\n\n2017-12-14 - version 1.6.9\n* Add - WC minimum requirements to header.\n\n2017-06-07 - version 1.6.8\n* Tweak - Added services for Romania.\n* Tweak - Added support for WC API v2.\n* Fix - Don\'t include tracking info in order refunded email.\n\n2017-05-29 - version 1.6.7\n* Fix - Updated tracking link for DTDC India.\n\n2017-05-15 - version 1.6.6\n* Tweak - Added support for custom mapping in order CSV export.\n\n2017-05-09 - version 1.6.5\n* Fix - Added updater to convert legacy meta introduced before 1.4.0.\n\n2017-04-03 - version 1.6.4\n* Fix - Some tracking information was using billing postcode instead of shipping.\n* Fix - WooCommerce 3.0 compatibility.\n* Update - Removed some legacy code related to storage of tracking data that is no longer needed.\n\n2016-12-21 - version 1.6.3\n* Update - Swedish Postal name and tracking link.\n\n2016-11-25 - version 1.6.2\n* Enhancement - Support for adding or updating tracking information via Customer / Coupon / Order CSV Import\n* Fix - Incorrect DHL US URL format\n* Enhancement - Added translations for fr_FR\n\n2016-10-05 - version 1.6.1\n* Enhancement - Support for Customer / Order XML Export\n* Enhancement - Added DHL US provider.\n* Fix - Issue of template load order. Now it\'s overriden via yourtheme/woocommerce-shipment-tracking/{template_name}. For example storefront-child/woocommerce-shipment-tracking/myaccount/view-order.php.\n* Enhancement - Add Shipment Tracking column in admin orders list.\n\n2016-08-30 - version 1.6.0\n* Tweak - Adds support for one-row-per-item custom formats with Customer / Order CSV Export\n* Tweak - Adds PIP support to display shipment tracking information\n* Fix - Update plugin\'s main to match with plugin\'s slug\n* Fix - Update text domain slug to match with plugin\'s slug\n\n2016-08-10 - version 1.5.0\n* Fix - Improves compatibility with Customer / Order CSV Export 4.0+\n* Tweak - Added An Post (track.anpost.ie) to providers list\n* Tweak - Expose shipment tracking to REST API\n\n2016-07-19 - version 1.4.5\n* Fix - Properly enqueue JS asset no matter what base directory name is.\n  There was hardcoded URL path with \'woocommerce-shipment-tracking\' when\n  enqueueing admin.min.js. Using plugin_dir_url( __FILE__ ) should make it\n  agnostic.\n\n2016-07-07 - version 1.4.4\n* Fix - Add deprecated subscription filter check.\n\n2016-02-17 - version 1.4.3\n* Fix - Added text domain and language files\n\n2016-01-06 - version 1.4.2\n* Fixes issue with selecting DPD in Ireland and the UK.\n\n2015-08-10 - version 1.4.1\n* Fixing minor issue where View Order template can clash with a template of the same name is a custom theme.\n* Fixes minor issues with Subscriptions where renewals create a PHP notice\n\n2015-07-15 - version 1.4.0\n* Made it possible to add multiple tracking numbers to an order.\n* Fixes minor issue where custom tracking link shows in admin when no url has been provided.\n\n2015-06-23 - version 1.3.6\n* Make all date translatable\n* Add Austria DPD\n\n2015-04-20 - version 1.3.5\n* Fix Česká pošta.\n\n2015-04-13 - version 1.3.4\n* Fix Interlink URL error\n* Update Czech.\n\n2015-03-03 - version 1.3.3\n* Prevent data being copied to subscription renewals.\n* Fix royal mail tracking link.\n\n2015-01-17 - version 1.3.2\n* Add Germany DPD\n\n2015-01-11 - version 1.3.1\n* remove CityLink\n* Add Interlink\n\n2014-10-22 - version 1.3.0\n* Added wc_shipment_tracking_get_providers filter.\n* Add DHL to Italy\n\n2014-10-06 - version 1.2.9\n* Added NZ providers\n\n2014-09-23 - version 1.2.8\n* Added Ireland DPD\n\n2014-09-02 - version 1.2.7\n* Update Swedish carriers\n* More swedish providers\n\n2014-08-26 - version 1.2.6\n* Update and add Swedish carriers\n\n2014-06-05 - version 1.2.5\n* Update Royal Mail tracking URL\n* Add CSV Export support to Shipment Tracking\n\n2014-06-03 - version 1.2.4\n* Added FedEx Sameday\n\n2014-04-16 - version 1.2.3\n* Added DHL Intraship (DE)\n\n2014-03-19 - version 1.2.2\n* BRT (Bartolini)\n\n2014-01-28 - version 1.2.1\n* UK Mail\n\n2014-01-06 - version 1.2.0\n* Add UPS Germany\n* Finland tracking\n* 2.1 compatibility\n\n2013-09-23 - version 1.1.12\n* Run sanitize_title() on woocommerce_shipment_tracking_default_provider filter to match sanitized $provider\n\n2013-09-20 - version 1.1.11\n* Unique providers\n\n2013-09-20 - version 1.1.10\n* Czech Republic methods (thanks Petr Silon)\n\n2013-09-16 - version 1.1.9\n* Split UK and NL DPD methods\n\n2013-08-16 - version 1.1.8\n* Add Hermes\n\n2013-07-15 - version 1.1.7\n* Update royal mail url\n\n2013-06-04 - version 1.1.6\n* Fixed tracking link in plain text emails.\n\n2013-04-19 - version 1.1.5\n* woocommerce_shipment_tracking_default_provider filter for setting a default\n\n2013-03-11 - version 1.1.4\n* Added austrian services\n\n2013-03-11 - version 1.1.3\n* Added Deutsche Post DHL\n\n2013-03-08 - version 1.1.2\n* SAPO URL change\n\n2013-01-15 - version 1.1.1\n* Change localisation strings\n\n2013-01-11 - version 1.1.0\n* WC 2.0 Compatibility\n* Custom providers can have custom links and provider names.\n\n2012-12-04 - version 1.0.5\n* New updater\n\n2012-08-15 - version 1.0.4\n* PostNL support\n\n2012-06-25 - version 1.0.3\n* Changed text for \'custom\' links\n* Changed save priority\n\n2012-06-25 - version 1.0.2\n* Added Correios\n* Added Posten AB\n\n2012-06-06 - version 1.0.1\n* Added DTDC shipping\n\n2012-05-17 - version 1.0\n* First Release\n\";s:7:\"headers\";O:25:\"Requests_Response_Headers\":1:{s:7:\"\0*\0data\";a:11:{s:12:\"content-type\";a:1:{i:0;s:10:\"text/plain\";}s:14:\"content-length\";a:1:{i:0;s:4:\"5530\";}s:4:\"date\";a:1:{i:0;s:29:\"Sat, 03 Feb 2018 11:05:22 GMT\";}s:13:\"last-modified\";a:1:{i:0;s:29:\"Fri, 02 Feb 2018 07:14:41 GMT\";}s:4:\"etag\";a:1:{i:0;s:34:\"\"5d6ff396ce0278d0c7127fd818a67bab\"\";}s:13:\"accept-ranges\";a:1:{i:0;s:5:\"bytes\";}s:6:\"server\";a:1:{i:0;s:8:\"AmazonS3\";}s:3:\"age\";a:1:{i:0;s:4:\"9032\";}s:7:\"x-cache\";a:1:{i:0;s:19:\"Hit from cloudfront\";}s:3:\"via\";a:1:{i:0;s:64:\"1.1 fd213e166adb46a27b539f026394e26d.cloudfront.net (CloudFront)\";}s:11:\"x-amz-cf-id\";a:1:{i:0;s:56:\"DJN_OBu8OajJVL96PyMcChIeP_kV102XJ1RK76JgJ0yGwbu8UraOsw==\";}}}s:11:\"status_code\";i:200;s:16:\"protocol_version\";d:1.1;s:7:\"success\";b:1;s:9:\"redirects\";i:0;s:3:\"url\";s:90:\"http://dzv365zjfbd8v.cloudfront.net/changelogs/woocommerce-shipment-tracking/changelog.txt\";s:7:\"history\";a:0:{}s:7:\"cookies\";O:19:\"Requests_Cookie_Jar\":1:{s:10:\"\0*\0cookies\";a:0:{}}}s:11:\"\0*\0filename\";N;s:4:\"data\";N;s:7:\"headers\";N;s:6:\"status\";N;}}}', 'no');
INSERT INTO `wp_options` VALUES (8961, 'wc_custom_status_edit_existing_status', 'a:7:{s:10:\"wc-pending\";a:4:{s:4:\"name\";s:17:\"Chờ thanh toán\";s:5:\"label\";s:7:\"pending\";s:5:\"color\";s:7:\"#ffba00\";s:12:\"item_editing\";s:3:\"yes\";}s:13:\"wc-processing\";a:3:{s:4:\"name\";s:14:\"Đang xử lý\";s:5:\"label\";s:10:\"processing\";s:5:\"color\";s:7:\"#73a724\";}s:10:\"wc-on-hold\";a:4:{s:4:\"name\";s:11:\"Tạm giữ\";s:5:\"label\";s:7:\"on-hold\";s:5:\"color\";s:7:\"#999999\";s:12:\"item_editing\";s:3:\"yes\";}s:12:\"wc-completed\";a:3:{s:4:\"name\";s:17:\"Đã hoàn thành\";s:5:\"label\";s:9:\"completed\";s:5:\"color\";s:7:\"#2ea2cc\";}s:12:\"wc-cancelled\";a:3:{s:4:\"name\";s:10:\"Đã hủy\";s:5:\"label\";s:9:\"cancelled\";s:5:\"color\";s:7:\"#a00a00\";}s:11:\"wc-refunded\";a:3:{s:4:\"name\";s:23:\"Đã hoàn lại tiền\";s:5:\"label\";s:8:\"refunded\";s:5:\"color\";s:7:\"#999999\";}s:9:\"wc-failed\";a:3:{s:4:\"name\";s:12:\"Thất bại\";s:5:\"label\";s:6:\"failed\";s:5:\"color\";s:7:\"#d0c21f\";}}', 'yes');
INSERT INTO `wp_options` VALUES (8962, 'woocommerce_status_actions_default_style', '0', 'yes');
INSERT INTO `wp_options` VALUES (8963, 'wc_custom_status_payment_complete_status', 'wc-completed', 'yes');
INSERT INTO `wp_options` VALUES (8969, '_transient_timeout_wc_cbp_4634fdc34201ab789adea2b7d815a0da', '1524310039', 'no');
INSERT INTO `wp_options` VALUES (8970, '_transient_wc_cbp_4634fdc34201ab789adea2b7d815a0da', 'a:4:{i:0;i:19;i:1;i:50;i:2;i:19;i:3;i:50;}', 'no');
INSERT INTO `wp_options` VALUES (8985, '_transient_timeout_wc_shipping_method_count_1_1521718255', '1524310297', 'no');
INSERT INTO `wp_options` VALUES (8986, '_transient_wc_shipping_method_count_1_1521718255', '3', 'no');
INSERT INTO `wp_options` VALUES (9015, 'woocommerce_bacs_accounts', 'a:5:{i:0;a:6:{s:12:\"account_name\";s:24:\"Nguyễn Thị Diễm My\";s:14:\"account_number\";s:13:\"0451000430921\";s:9:\"bank_name\";s:47:\"Vietcombank - Chi nhánh Mỹ Đình, Hà Nội\";s:9:\"sort_code\";s:0:\"\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";}i:1;a:6:{s:12:\"account_name\";s:24:\"Nguyễn Thị Diễm My\";s:14:\"account_number\";s:13:\"1410205508131\";s:9:\"bank_name\";s:44:\"Agribank - Chi nhánh Mỹ Đình, Hà Nội\";s:9:\"sort_code\";s:0:\"\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";}i:2;a:6:{s:12:\"account_name\";s:24:\"Nguyễn Thị Diễm My\";s:14:\"account_number\";s:12:\"101005427303\";s:9:\"bank_name\";s:46:\"VietinBank - Chi nhánh Mỹ Đình, Hà Nội\";s:9:\"sort_code\";s:0:\"\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";}i:3;a:6:{s:12:\"account_name\";s:24:\"Nguyễn Thị Diễm My\";s:14:\"account_number\";s:14:\"12310000670994\";s:9:\"bank_name\";s:56:\"BIDV - Chi nhánh Quang Trung, Hai Bà Trưng, Hà Nội\";s:9:\"sort_code\";s:0:\"\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";}i:4;a:6:{s:12:\"account_name\";s:24:\"Nguyễn Thị Diễm My\";s:14:\"account_number\";s:14:\"03201010506475\";s:9:\"bank_name\";s:49:\"Maritime Bank - Chi nhánh Thanh Xuân, Hà Nội\";s:9:\"sort_code\";s:0:\"\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";}}', 'yes');
INSERT INTO `wp_options` VALUES (9022, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-4.9.4.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-4.9.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.4\";s:7:\"version\";s:5:\"4.9.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1521720836;s:15:\"version_checked\";s:5:\"4.9.4\";s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` VALUES (9025, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1521729272;s:7:\"checked\";a:28:{s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.3.4\";s:63:\"woocommerce-advanced-shipping/woocommerce-advanced-shipping.php\";s:6:\"1.0.14\";s:59:\"woocommerce-attribute-group/woocommerce-attribute-group.php\";s:5:\"1.3.0\";s:58:\"woocommerce-create-customer-on-order/create-user-order.php\";s:4:\"1.26\";s:53:\"woocommerce-order-status/woocommerce-order-status.php\";s:5:\"2.1.4\";s:55:\"woocommerce-point-of-sale/woocommerce-point-of-sale.php\";s:5:\"4.2.6\";s:49:\"woocommerce-pre-orders/woocommerce-pre-orders.php\";s:5:\"1.4.6\";s:63:\"woocommerce-shipment-tracking/woocommerce-shipment-tracking.php\";s:5:\"1.6.8\";s:55:\"woocommerce-stock-manager/woocommerce-stock-manager.php\";s:5:\"1.2.4\";s:51:\"yith-desktop-notifications-for-woocommerce/init.php\";s:5:\"1.0.1\";s:39:\"yith-pre-order-for-woocommerce/init.php\";s:5:\"1.2.3\";s:49:\"yith-product-size-charts-for-woocommerce/init.php\";s:6:\"1.0.10\";s:34:\"yith-woocommerce-barcodes/init.php\";s:5:\"1.0.3\";s:46:\"yith-woocommerce-best-sellers-premium/init.php\";s:5:\"1.0.8\";s:39:\"yith-woocommerce-brands-add-on/init.php\";s:5:\"1.0.9\";s:46:\"yith-woocommerce-bulk-product-editing/init.php\";s:6:\"1.1.26\";s:60:\"yith-woocommerce-color-and-label-variations-premium/init.php\";s:5:\"1.2.1\";s:33:\"yith-woocommerce-compare/init.php\";s:5:\"2.0.7\";s:45:\"yith-woocommerce-custom-order-status/init.php\";s:6:\"1.0.21\";s:40:\"yith-woocommerce-order-tracking/init.php\";s:6:\"1.2.75\";s:50:\"yith-woocommerce-advanced-product-options/init.php\";s:5:\"1.2.4\";s:57:\"yith-woocommerce-product-sales-countdown-premium/init.php\";s:5:\"1.1.5\";s:49:\"yith-woocommerce-sequential-order-number/init.php\";s:5:\"1.0.5\";s:43:\"yith-woocommerce-sms-notifications/init.php\";s:5:\"1.0.8\";s:48:\"yith-woocommerce-terms-conditions-popup/init.php\";s:5:\"1.0.5\";s:38:\"yith-woocommerce-waiting-list/init.php\";s:5:\"1.1.5\";s:43:\"yith-woocommerce-watermark-premium/init.php\";s:6:\"1.0.13\";}s:8:\"response\";a:9:{s:51:\"yith-desktop-notifications-for-woocommerce/init.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:56:\"w.org/plugins/yith-desktop-notifications-for-woocommerce\";s:4:\"slug\";s:42:\"yith-desktop-notifications-for-woocommerce\";s:6:\"plugin\";s:51:\"yith-desktop-notifications-for-woocommerce/init.php\";s:11:\"new_version\";s:5:\"1.2.0\";s:3:\"url\";s:73:\"https://wordpress.org/plugins/yith-desktop-notifications-for-woocommerce/\";s:7:\"package\";s:91:\"https://downloads.wordpress.org/plugin/yith-desktop-notifications-for-woocommerce.1.2.0.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:95:\"https://ps.w.org/yith-desktop-notifications-for-woocommerce/assets/icon-128x128.jpg?rev=1557398\";s:0:\"\";s:93:\"https://ps.w.org/yith-desktop-notifications-for-woocommerce/assets/icon-64x64.jpg?rev=1557390\";s:7:\"default\";s:95:\"https://ps.w.org/yith-desktop-notifications-for-woocommerce/assets/icon-128x128.jpg?rev=1557398\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:98:\"https://ps.w.org/yith-desktop-notifications-for-woocommerce/assets/banner-1544x500.jpg?rev=1557390\";s:2:\"1x\";s:97:\"https://ps.w.org/yith-desktop-notifications-for-woocommerce/assets/banner-772x250.jpg?rev=1557390\";s:7:\"default\";s:98:\"https://ps.w.org/yith-desktop-notifications-for-woocommerce/assets/banner-1544x500.jpg?rev=1557390\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:49:\"yith-product-size-charts-for-woocommerce/init.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:54:\"w.org/plugins/yith-product-size-charts-for-woocommerce\";s:4:\"slug\";s:40:\"yith-product-size-charts-for-woocommerce\";s:6:\"plugin\";s:49:\"yith-product-size-charts-for-woocommerce/init.php\";s:11:\"new_version\";s:5:\"1.1.2\";s:3:\"url\";s:71:\"https://wordpress.org/plugins/yith-product-size-charts-for-woocommerce/\";s:7:\"package\";s:89:\"https://downloads.wordpress.org/plugin/yith-product-size-charts-for-woocommerce.1.1.2.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:93:\"https://ps.w.org/yith-product-size-charts-for-woocommerce/assets/icon-128x128.jpg?rev=1229104\";s:0:\"\";s:91:\"https://ps.w.org/yith-product-size-charts-for-woocommerce/assets/icon-64x64.jpg?rev=1229104\";s:7:\"default\";s:93:\"https://ps.w.org/yith-product-size-charts-for-woocommerce/assets/icon-128x128.jpg?rev=1229104\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:96:\"https://ps.w.org/yith-product-size-charts-for-woocommerce/assets/banner-1544x500.jpg?rev=1229104\";s:2:\"1x\";s:95:\"https://ps.w.org/yith-product-size-charts-for-woocommerce/assets/banner-772x250.jpg?rev=1229104\";s:7:\"default\";s:96:\"https://ps.w.org/yith-product-size-charts-for-woocommerce/assets/banner-1544x500.jpg?rev=1229104\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:39:\"yith-woocommerce-brands-add-on/init.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:44:\"w.org/plugins/yith-woocommerce-brands-add-on\";s:4:\"slug\";s:30:\"yith-woocommerce-brands-add-on\";s:6:\"plugin\";s:39:\"yith-woocommerce-brands-add-on/init.php\";s:11:\"new_version\";s:5:\"1.2.1\";s:3:\"url\";s:61:\"https://wordpress.org/plugins/yith-woocommerce-brands-add-on/\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/plugin/yith-woocommerce-brands-add-on.1.2.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:83:\"https://ps.w.org/yith-woocommerce-brands-add-on/assets/icon-128x128.jpg?rev=1164835\";s:0:\"\";s:81:\"https://ps.w.org/yith-woocommerce-brands-add-on/assets/icon-64x64.jpg?rev=1164835\";s:7:\"default\";s:83:\"https://ps.w.org/yith-woocommerce-brands-add-on/assets/icon-128x128.jpg?rev=1164835\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:86:\"https://ps.w.org/yith-woocommerce-brands-add-on/assets/banner-1544x500.jpg?rev=1164835\";s:2:\"1x\";s:85:\"https://ps.w.org/yith-woocommerce-brands-add-on/assets/banner-772x250.jpg?rev=1164835\";s:7:\"default\";s:86:\"https://ps.w.org/yith-woocommerce-brands-add-on/assets/banner-1544x500.jpg?rev=1164835\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:46:\"yith-woocommerce-bulk-product-editing/init.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:51:\"w.org/plugins/yith-woocommerce-bulk-product-editing\";s:4:\"slug\";s:37:\"yith-woocommerce-bulk-product-editing\";s:6:\"plugin\";s:46:\"yith-woocommerce-bulk-product-editing/init.php\";s:11:\"new_version\";s:5:\"1.2.4\";s:3:\"url\";s:68:\"https://wordpress.org/plugins/yith-woocommerce-bulk-product-editing/\";s:7:\"package\";s:86:\"https://downloads.wordpress.org/plugin/yith-woocommerce-bulk-product-editing.1.2.4.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:90:\"https://ps.w.org/yith-woocommerce-bulk-product-editing/assets/icon-128x128.jpg?rev=1212460\";s:0:\"\";s:88:\"https://ps.w.org/yith-woocommerce-bulk-product-editing/assets/icon-64x64.jpg?rev=1212460\";s:7:\"default\";s:90:\"https://ps.w.org/yith-woocommerce-bulk-product-editing/assets/icon-128x128.jpg?rev=1212460\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:93:\"https://ps.w.org/yith-woocommerce-bulk-product-editing/assets/banner-1544x500.jpg?rev=1212460\";s:2:\"1x\";s:92:\"https://ps.w.org/yith-woocommerce-bulk-product-editing/assets/banner-772x250.jpg?rev=1212460\";s:7:\"default\";s:93:\"https://ps.w.org/yith-woocommerce-bulk-product-editing/assets/banner-1544x500.jpg?rev=1212460\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:33:\"yith-woocommerce-compare/init.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:38:\"w.org/plugins/yith-woocommerce-compare\";s:4:\"slug\";s:24:\"yith-woocommerce-compare\";s:6:\"plugin\";s:33:\"yith-woocommerce-compare/init.php\";s:11:\"new_version\";s:5:\"2.3.0\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/yith-woocommerce-compare/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/yith-woocommerce-compare.2.3.0.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:77:\"https://ps.w.org/yith-woocommerce-compare/assets/icon-128x128.jpg?rev=1460909\";s:0:\"\";s:75:\"https://ps.w.org/yith-woocommerce-compare/assets/icon-64x64.jpg?rev=1460909\";s:7:\"default\";s:77:\"https://ps.w.org/yith-woocommerce-compare/assets/icon-128x128.jpg?rev=1460909\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:80:\"https://ps.w.org/yith-woocommerce-compare/assets/banner-1544x500.jpg?rev=1460909\";s:2:\"1x\";s:79:\"https://ps.w.org/yith-woocommerce-compare/assets/banner-772x250.jpg?rev=1460909\";s:7:\"default\";s:80:\"https://ps.w.org/yith-woocommerce-compare/assets/banner-1544x500.jpg?rev=1460909\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.2\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:45:\"yith-woocommerce-custom-order-status/init.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:50:\"w.org/plugins/yith-woocommerce-custom-order-status\";s:4:\"slug\";s:36:\"yith-woocommerce-custom-order-status\";s:6:\"plugin\";s:45:\"yith-woocommerce-custom-order-status/init.php\";s:11:\"new_version\";s:5:\"1.1.5\";s:3:\"url\";s:67:\"https://wordpress.org/plugins/yith-woocommerce-custom-order-status/\";s:7:\"package\";s:85:\"https://downloads.wordpress.org/plugin/yith-woocommerce-custom-order-status.1.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:89:\"https://ps.w.org/yith-woocommerce-custom-order-status/assets/icon-128x128.jpg?rev=1196330\";s:7:\"default\";s:89:\"https://ps.w.org/yith-woocommerce-custom-order-status/assets/icon-128x128.jpg?rev=1196330\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:92:\"https://ps.w.org/yith-woocommerce-custom-order-status/assets/banner-1544x500.jpg?rev=1196330\";s:2:\"1x\";s:91:\"https://ps.w.org/yith-woocommerce-custom-order-status/assets/banner-772x250.jpg?rev=1196330\";s:7:\"default\";s:92:\"https://ps.w.org/yith-woocommerce-custom-order-status/assets/banner-1544x500.jpg?rev=1196330\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.2\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:38:\"yith-woocommerce-waiting-list/init.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:43:\"w.org/plugins/yith-woocommerce-waiting-list\";s:4:\"slug\";s:29:\"yith-woocommerce-waiting-list\";s:6:\"plugin\";s:38:\"yith-woocommerce-waiting-list/init.php\";s:11:\"new_version\";s:5:\"1.2.0\";s:3:\"url\";s:60:\"https://wordpress.org/plugins/yith-woocommerce-waiting-list/\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/plugin/yith-woocommerce-waiting-list.1.2.0.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:82:\"https://ps.w.org/yith-woocommerce-waiting-list/assets/icon-128x128.jpg?rev=1460914\";s:0:\"\";s:80:\"https://ps.w.org/yith-woocommerce-waiting-list/assets/icon-64x64.jpg?rev=1460914\";s:7:\"default\";s:82:\"https://ps.w.org/yith-woocommerce-waiting-list/assets/icon-128x128.jpg?rev=1460914\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:85:\"https://ps.w.org/yith-woocommerce-waiting-list/assets/banner-1544x500.jpg?rev=1460914\";s:2:\"1x\";s:84:\"https://ps.w.org/yith-woocommerce-waiting-list/assets/banner-772x250.jpg?rev=1460914\";s:7:\"default\";s:85:\"https://ps.w.org/yith-woocommerce-waiting-list/assets/banner-1544x500.jpg?rev=1460914\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.2\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:60:\"yith-woocommerce-color-and-label-variations-premium/init.php\";O:8:\"stdClass\":5:{s:4:\"slug\";s:60:\"yith-woocommerce-color-and-label-variations-premium/init.php\";s:11:\"new_version\";s:5:\"1.6.0\";s:9:\"changelog\";s:5350:\"\n\n<h4>Version 1.6.0 - Released on Feb 06, 2018 </h4>\n<ul>\n	<li>New: Support to WooCommerce 3.3.0.</li>\n	<li>New: Support to WordPress 4.9.3.</li>\n	<li>New: Compatibility with YITH WooCommerce Request a Quote Premium.</li>\n	<li>Update: Plugin core.</li>\n	<li>Update: Language files.</li>\n	<li>Dev: New filter \'yith_wccl_empty_option_loop_label\'.</li>\n</ul>\n<h4>Version 1.5.0 - Released on Oct 10, 2017 </h4>\n<ul>\n    <li>New: Support to WooCommerce 3.2.0 RC2.</li>\n    <li>Update: Plugin core.</li>\n    <li>Tweak: Use of transients to increase plugin speed and performance.</li>\n    <li>Dev: Added filter yith_wccl_skip_form_variable_loop to skip adding the variation form in the loop for specific products or under specific conditions.</li>\n</ul>\n<h4>Version 1.4.0 - Released on Sep 11, 2017 </h4>\n<ul>\n	<li>New: Support to WooCommerce 3.1.2.</li>\n	<li>New: Support to WordPress 4.8.1.</li>\n	<li>New: Compatibility with Flatsome Quick View.</li>\n	<li>New: Compatibility with WooCommerce Ajax Filter.</li>\n	<li>New: Dutch translate ( thanks to Boaz van der Zeep ).</li>\n	<li>New: Option to enable AJAX handle for variations form in archive shop pages.</li>\n	<li>Update: Plugin core.</li>\n	<li>Update: Languages file.</li>\n	<li>Fix: \"Add New Attribute\" popup not showing in post-new.php pages.</li>\n	<li>Fix: Compatibility issue with WP version older then 4.5.</li>\n	<li>Fix: Closing key tag missing for wpml-config.xml</li>\n</ul>\n<h4>Version 1.3.0 - Released on Mar 13, 2017 </h4>\n<ul>\n    <li>New: Support to WooCommerce 2.7.0 RC1.</li>\n    <li>New: Support Ajax variations on single product page.</li>\n    <li>Update: Plugin core.</li>\n    <li>Fix: YITH Infinite Scrolling compatibility issue.</li>\n    <li>Dev: New filter yith_wccl_create_custom_attributes_term_attr.</li>\n</ul>\n<h4>Version 1.2.1 - Released on Nov 17, 2016 </h4>\n<ul>\n    <li>New: Support to WP-Rocket LazyLoad.</li>\n    <li>Fix: Notice undefined index on class YITH_WCCL_Frontend.</li>\n</ul>\n<h4>Version 1.2.0 - Released on Oct 06, 2016 </h4>\n<ul>\n    <li>New: Change product image on hover (only for one attirbute).</li>\n    <li>New: Option to show custom attributes style also on \"Additional Information\" Tab.</li>\n    <li>New: Compatibility with WooCommerce Products Filter.</li>\n    <li>New: Compatibility with YITH Composite Products For WooCommerce.</li>\n    <li>Update: Language files.</li>\n    <li>Update: Core plugin.</li>\n    <li>Fix: Reset attribute type on plugin deactivation.</li>\n</ul>\n<h4>Version 1.1.0 - Released on Jul 25, 2016 </h4>\n<ul>\n	<li>New: Spanish translation.</li>\n	<li>New: Compatibility with WooCommerce Quick View by WooThemes.</li>\n    <li>Update: Language files.</li>\n    <li>Update: Core plugin.</li>\n	<li>Fix: Description and default variations on archive pages.</li>\n</ul>\n<h4>Version 1.0.9 - Released on Jun 07, 2016 </h4>\n<ul>\n    <li>New: Italian translation.</li>\n    <li>Update: Language files.</li>\n    <li>Update: Core plugin.</li>\n    <li>Fix: Default variation on single product pages for products with only one attribute</li>\n</ul>\n<h4>Version 1.0.8 - Released on May 23, 2016 </h4>\n<ul>\n    <li>New: Compatibility with YITH WooCommerce Added to Cart Popup.</li>\n    <li>New: Set dual color such as blue-white (half box blue and half box white).</li>\n    <li>New: Show a preview of the attribute image in the tooltip (available only for image attributes).</li>\n    <li>New: Support to WordPress 4.5.2.</li>\n    <li>New: Support to WooCommerce 2.6 Beta2.</li>\n    <li>Update: Updated textdomain from yith-wccl to yith-woocommerce-color-label-variations.</li>\n    <li>Update: Language files.</li>\n    <li>Update: Core plugin.</li>\n    <li>Fix: Clicking on selected attribute before selecting another one is no longer necessary.</li>\n    <li>Fix: Variations now work with Owl Carousel 2 when infinite loop option is set.</li>\n</ul>\n<h4>Version 1.0.7 - Released on Dec 14, 2015 </h4>\n<ul>\n    <li>New: Compatibility with WooThumbs Awesome Product Imagery plugin</li>\n    <li>New: Compatibility with YITH WooCommerce Gift Card</li>\n</ul>\n<h4>Version 1.0.5 - Released on Sep 18, 2015 </h4>\n<ul>\n    <li>Fix: Add to cart variation out-of-stock in shop page</li>\n</ul>\n<h4>Version 1.0.4 - Released on Sep 17, 2015 </h4>\n<ul>\n    <li>New: Blur effect for product attributes. Activate it on plugin settings page.</li>\n    <li>New: Compatibility with YITH Infinite Scrolling</li>\n    <li>New: Out of stock label in shop if selected variation is out of stock</li>\n    <li>New: ITA Translation</li>\n    <li>Update: Core plugin</li>\n    <li>Fix: Default variation on shop page</li>\n    <li>Fix: Replace fragments after add to cart action</li>\n</ul>\n<h4>Version 1.0.3 - Released on Aug 12, 2015 </h4>\n<ul>\n    <li>New: Compatibility with WooCommerce 2.4</li>\n    <li>New: WP 4.2.4 compatibility</li>\n    <li>New: Option for choose the form position in archive shop page</li>\n    <li>Update: Core plugin</li>\n    <li>Fix: Multiple view cart on shop page</li>\n</ul>\n<h4>Version 1.0.2 - Released on Jun 25, 2015 </h4>\n<ul>\n    <li>New: Ajax Navigation compatibility</li>\n    <li>Fix: Minor bugs</li>\n</ul>\n<h4>Version 1.0.1 - Released on Jun 23, 2015 </h4>\n<ul>\n    <li>Update: plugin core</li>\n    <li>Fix: minor bugs</li>\n    <li>Fix: js error</li>\n</ul>\n<h4>Version 1.0.0 - Released on Jun 09, 2015</h4>\n<ul>\n    <li>Initial Release</li>\n</ul>\n\n    \";s:7:\"package\";N;s:6:\"plugin\";s:60:\"yith-woocommerce-color-and-label-variations-premium/init.php\";}s:43:\"yith-woocommerce-watermark-premium/init.php\";O:8:\"stdClass\":5:{s:4:\"slug\";s:43:\"yith-woocommerce-watermark-premium/init.php\";s:11:\"new_version\";s:5:\"1.1.2\";s:9:\"changelog\";s:3662:\"\n\n<h4>Version 1.1.2 - Released on Jan 31, 2018 </h4>\n <ul>\n    <li>New: Support to WooCommerce 3.3.0</li>\n    <li>New: Support to WordPress 4.9.2</li>\n    <li>Update: Plugin Framework 3.0</li>\n    <li>Fix: Reset button</li>\n </ul>\n<h4>Version 1.1.1 - Released on Oct 04, 2017 </h4>\n <ul>\n    <li> New: Support to WooCommerce 3.2.0-RC1</li>\n	<li> New: Watermark automatically applied when a new product image is uploaded</li>\n	<li> Fix: Watermark doesn\'t scale properly</li>\n	<li> Update: Plugin Framework</li>\n </ul>\n<h4>Version 1.1.0 - Released on Sept 26, 2017 </h4>\n <ul>\n    <li> New: Option to preview watermarks</li>\n	<li> New: Option to apply watermarks to single product via AJAX procedure</li>\n	<li> New: Show or hide log messages when applying watermark procedure</li>\n	<li> New: Dutch language file</li>\n	<li> New: Support WooCommerce 3.1.2</li>\n	<li> Tweak: Improved SQL query performance</li>\n	<li> Update: Plugin Framework</li>\n    <li> Update: Language files</li>\n\n </ul>\n<h4>Version 1.0.14 - Released on Mar 07, 2016 </h4>\n <ul>\n    <li>New: Support to WooCommerce 2.7.0-RC1</li>\n    <li>Update: Plugin Framework</li>\n </ul>\n<h4>Version 1.0.13 - Released on Dec 29, 2016 </h4>\n <ul>\n    <li>Added: Support to WordPress 4.7</li>\n    <li>Added: Support to WooCommerce 2.6.11</li>\n    <li>Added: Italian Language file</li>\n    <li>Updated: Plugin Framework</li>\n    <li>Updated: Language file</li>\n </ul>\n<h4>Version 1.0.12 - Released on July 07, 2016 </h4>\n <ul>\n     <li>Fixed: Js error in Plugin panel</li>\n	 <li>Updated: Plugin Framework</li>\n </ul>\n<h4>Version 1.0.11 - Released on July 05, 2016 </h4>\n <ul>\n     <li>Tweak: Watermark automatically applied when a new product image is uploaded</li>\n     <li>Updated: Plugin Framework</li>\n </ul>\n<h4>Version 1.0.10 - Released on Jun 14, 2016 </h4>\n <ul>\n     <li>Added: Compatibility with WooCommerce 2.6.0 RC2</li>\n     <li>Added: Spanish language file</li>\n     <li>Tweak: Improved SQL query performance</li>\n     <li>Updated: Plugin framework (edited)</li>\n </ul>\n <h4>Version 1.0.9 - Released on Mar 16, 2016 </h4>\n <ul>\n     <li>Fixed: case sensitive path</li>\n     <li>Added: option for a complete backup</li>\n     <li>Updated: plugin framework</li>\n </ul>\n <h4>Version 1.0.8 - Released on Mar 16, 2016 </h4>\n <ul>\n     <li>Fixed: Folder file permission</li>\n     <li>Updated: Plugin Framework</li>\n </ul>\n <h4>Version 1.0.7 - Released on Mar 11, 2016 </h4>\n <ul>\n     <li>Added: Option to repeat watermark when it created from an existing image</li>\n     <li>Added: Option to set a rotation angle if the watermark is created as text</li>\n     <li>Tweak: All product backed up images are stored in a private directory</li>\n     <li>Update: Plugin Framework</li>\n     <li>Update: Language File</li>\n </ul>\n <h4>Version 1.0.6 - Released on Jan 29, 2016 </h4>\n <ul>\n     <li>Fixed: control if original file not exist</li>\n     <li>Updated: Plugin Framework</li>\n </ul>\n <h4>Version 1.0.5 - Released on Jan 07, 2016 </h4>\n <ul>\n     <li>Updated: Plugin Framework</li>\n     <li>Fixed: control if file not exist in js procedure</li>\n     <li>Fixed: when watermark is applied in original immages, thumbnail images are generated incorrectly.</li>\n </ul>\n <h4>Version 1.0.4 - Released on Nov 24, 2015 </h4>\n <ul>\n     <li>Fixed: Creation of backup images for new uploaded images</li>\n </ul>\n<h4>Version 1.0.3 - Released on Oct 30, 2015 </h4>\n<ul>\n    <li>Updated: Plugin framework loader</li>\n</ul>\n<h4>Version 1.0.2 - Released: Oct, 23 - 2015</h4>\n<ul>\n    <li>Update: Plugin core framework</li>\n</ul>\n<h4>Version 1.0.1 - Released on Oct 20, 2015</h4>\n<ul>\n    <li>Initial Release</li>\n</ul>\n\n    \";s:7:\"package\";N;s:6:\"plugin\";s:43:\"yith-woocommerce-watermark-premium/init.php\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.3.4\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.3.4.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:7:\"default\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";s:7:\"default\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}}s:55:\"woocommerce-stock-manager/woocommerce-stock-manager.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:39:\"w.org/plugins/woocommerce-stock-manager\";s:4:\"slug\";s:25:\"woocommerce-stock-manager\";s:6:\"plugin\";s:55:\"woocommerce-stock-manager/woocommerce-stock-manager.php\";s:11:\"new_version\";s:5:\"1.2.4\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/woocommerce-stock-manager/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/woocommerce-stock-manager.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:78:\"https://ps.w.org/woocommerce-stock-manager/assets/icon-128x128.png?rev=1140096\";s:2:\"2x\";s:78:\"https://ps.w.org/woocommerce-stock-manager/assets/icon-256x256.png?rev=1140096\";s:7:\"default\";s:78:\"https://ps.w.org/woocommerce-stock-manager/assets/icon-256x256.png?rev=1140096\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:80:\"https://ps.w.org/woocommerce-stock-manager/assets/banner-772x250.png?rev=1140096\";s:7:\"default\";s:80:\"https://ps.w.org/woocommerce-stock-manager/assets/banner-772x250.png?rev=1140096\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"yith-pre-order-for-woocommerce/init.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:44:\"w.org/plugins/yith-pre-order-for-woocommerce\";s:4:\"slug\";s:30:\"yith-pre-order-for-woocommerce\";s:6:\"plugin\";s:39:\"yith-pre-order-for-woocommerce/init.php\";s:11:\"new_version\";s:5:\"1.1.4\";s:3:\"url\";s:61:\"https://wordpress.org/plugins/yith-pre-order-for-woocommerce/\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/plugin/yith-pre-order-for-woocommerce.1.1.4.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:83:\"https://ps.w.org/yith-pre-order-for-woocommerce/assets/icon-128x128.jpg?rev=1542028\";s:0:\"\";s:81:\"https://ps.w.org/yith-pre-order-for-woocommerce/assets/icon-64x64.jpg?rev=1542028\";s:7:\"default\";s:83:\"https://ps.w.org/yith-pre-order-for-woocommerce/assets/icon-128x128.jpg?rev=1542028\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:86:\"https://ps.w.org/yith-pre-order-for-woocommerce/assets/banner-1544x500.jpg?rev=1542028\";s:2:\"1x\";s:85:\"https://ps.w.org/yith-pre-order-for-woocommerce/assets/banner-772x250.jpg?rev=1542028\";s:7:\"default\";s:86:\"https://ps.w.org/yith-pre-order-for-woocommerce/assets/banner-1544x500.jpg?rev=1542028\";}s:11:\"banners_rtl\";a:0:{}}s:40:\"yith-woocommerce-order-tracking/init.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:45:\"w.org/plugins/yith-woocommerce-order-tracking\";s:4:\"slug\";s:31:\"yith-woocommerce-order-tracking\";s:6:\"plugin\";s:40:\"yith-woocommerce-order-tracking/init.php\";s:11:\"new_version\";s:5:\"1.2.1\";s:3:\"url\";s:62:\"https://wordpress.org/plugins/yith-woocommerce-order-tracking/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/yith-woocommerce-order-tracking.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:84:\"https://ps.w.org/yith-woocommerce-order-tracking/assets/icon-128x128.jpg?rev=1461215\";s:0:\"\";s:82:\"https://ps.w.org/yith-woocommerce-order-tracking/assets/icon-64x64.jpg?rev=1461215\";s:7:\"default\";s:84:\"https://ps.w.org/yith-woocommerce-order-tracking/assets/icon-128x128.jpg?rev=1461215\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:87:\"https://ps.w.org/yith-woocommerce-order-tracking/assets/banner-1544x500.jpg?rev=1461215\";s:2:\"1x\";s:86:\"https://ps.w.org/yith-woocommerce-order-tracking/assets/banner-772x250.jpg?rev=1461215\";s:7:\"default\";s:87:\"https://ps.w.org/yith-woocommerce-order-tracking/assets/banner-1544x500.jpg?rev=1461215\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');
INSERT INTO `wp_options` VALUES (9026, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1521720839;s:7:\"checked\";a:1:{s:10:\"storefront\";s:5:\"2.2.8\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` VALUES (9031, 'wc_sa_db_version', '2.0.6', 'yes');
INSERT INTO `wp_options` VALUES (9032, 'wc_sa_version', '2.0.6', 'yes');
INSERT INTO `wp_options` VALUES (9035, '_transient_timeout_wc_cbp_c285109b211ff4ee3bd228a3c4626024', '1524314331', 'no');
INSERT INTO `wp_options` VALUES (9036, '_transient_wc_cbp_c285109b211ff4ee3bd228a3c4626024', 'a:4:{i:0;i:19;i:1;i:50;i:2;i:19;i:3;i:50;}', 'no');
INSERT INTO `wp_options` VALUES (9039, 'woocommerce_pre_orders_pay_later_settings', 'a:3:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:9:\"Pay Later\";s:11:\"description\";s:112:\"You will receive an email when the pre-order is available along with instructions on how to complete your order.\";}', 'yes');
INSERT INTO `wp_options` VALUES (9048, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes');
INSERT INTO `wp_options` VALUES (9090, '_transient_timeout_wc_cbp_4319278689ca26edcc0f64afde2d298e', '1524316624', 'no');
INSERT INTO `wp_options` VALUES (9091, '_transient_wc_cbp_4319278689ca26edcc0f64afde2d298e', 'a:0:{}', 'no');
INSERT INTO `wp_options` VALUES (9187, '_transient_timeout_wc_shipping_method_count_1_1521727241', '1524319268', 'no');
INSERT INTO `wp_options` VALUES (9188, '_transient_wc_shipping_method_count_1_1521727241', '3', 'no');
INSERT INTO `wp_options` VALUES (9190, '_transient_timeout_wc_shipping_method_count_0_1521727241', '1524319434', 'no');
INSERT INTO `wp_options` VALUES (9191, '_transient_wc_shipping_method_count_0_1521727241', '2', 'no');
INSERT INTO `wp_options` VALUES (9256, '_transient_timeout__woocommerce_helper_subscriptions', '1521730174', 'no');
INSERT INTO `wp_options` VALUES (9257, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no');
INSERT INTO `wp_options` VALUES (9258, '_site_transient_timeout_theme_roots', '1521731074', 'no');
INSERT INTO `wp_options` VALUES (9259, '_site_transient_theme_roots', 'a:1:{s:10:\"storefront\";s:7:\"/themes\";}', 'no');
INSERT INTO `wp_options` VALUES (9260, 'wsm_display_option', 'a:11:{s:9:\"thumbnail\";s:7:\"display\";s:5:\"price\";s:7:\"display\";s:11:\"sales_price\";s:2:\"no\";s:6:\"weight\";s:7:\"display\";s:12:\"manage_stock\";s:7:\"display\";s:12:\"stock_status\";s:7:\"display\";s:10:\"backorders\";s:7:\"display\";s:5:\"stock\";s:7:\"display\";s:10:\"tax_status\";s:2:\"no\";s:9:\"tax_class\";s:2:\"no\";s:14:\"shipping_class\";s:2:\"no\";}', 'yes');
INSERT INTO `wp_options` VALUES (9307, '_transient_timeout_wc_product_children_19', '1524321531', 'no');
INSERT INTO `wp_options` VALUES (9308, '_transient_wc_product_children_19', 'a:2:{s:3:\"all\";a:14:{i:0;i:50;i:1;i:51;i:2;i:48;i:3;i:49;i:4;i:52;i:5;i:53;i:6;i:54;i:7;i:55;i:8;i:56;i:9;i:57;i:10;i:58;i:11;i:59;i:12;i:60;i:13;i:61;}s:7:\"visible\";a:14:{i:0;i:50;i:1;i:51;i:2;i:48;i:3;i:49;i:4;i:52;i:5;i:53;i:6;i:54;i:7;i:55;i:8;i:56;i:9;i:57;i:10;i:58;i:11;i:59;i:12;i:60;i:13;i:61;}}', 'no');
INSERT INTO `wp_options` VALUES (9309, '_transient_timeout_wc_var_prices_19', '1524321532', 'no');
INSERT INTO `wp_options` VALUES (9310, '_transient_wc_var_prices_19', '{\"version\":\"1521729531\",\"727864db401c0db59f58f5996a69d133\":{\"price\":{\"50\":\"450000.00\",\"51\":\"450000.00\",\"48\":\"450000.00\",\"49\":\"450000.00\",\"52\":\"450000.00\",\"53\":\"450000.00\",\"54\":\"450000.00\",\"55\":\"450000.00\",\"56\":\"450000.00\",\"57\":\"450000.00\",\"58\":\"450000.00\",\"59\":\"450000.00\",\"60\":\"450000.00\",\"61\":\"450000.00\"},\"regular_price\":{\"50\":\"580000.00\",\"51\":\"580000.00\",\"48\":\"580000.00\",\"49\":\"580000.00\",\"52\":\"580000.00\",\"53\":\"580000.00\",\"54\":\"580000.00\",\"55\":\"580000.00\",\"56\":\"580000.00\",\"57\":\"580000.00\",\"58\":\"580000.00\",\"59\":\"580000.00\",\"60\":\"580000.00\",\"61\":\"580000.00\"},\"sale_price\":{\"50\":\"450000.00\",\"51\":\"450000.00\",\"48\":\"450000.00\",\"49\":\"450000.00\",\"52\":\"450000.00\",\"53\":\"450000.00\",\"54\":\"450000.00\",\"55\":\"450000.00\",\"56\":\"450000.00\",\"57\":\"450000.00\",\"58\":\"450000.00\",\"59\":\"450000.00\",\"60\":\"450000.00\",\"61\":\"450000.00\"}}}', 'no');
COMMIT;

-- ----------------------------
-- Table structure for wp_postmeta
-- ----------------------------
DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4428 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- ----------------------------
-- Records of wp_postmeta
-- ----------------------------
BEGIN;
INSERT INTO `wp_postmeta` VALUES (1, 2, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES (2, 8, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (3, 8, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (4, 8, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (5, 9, '_regular_price', '10');
INSERT INTO `wp_postmeta` VALUES (6, 9, '_price', '10');
INSERT INTO `wp_postmeta` VALUES (7, 9, '_visibility', 'hidden');
INSERT INTO `wp_postmeta` VALUES (11, 8, '_pos_visibility', 'pos_online');
INSERT INTO `wp_postmeta` VALUES (13, 12, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (14, 12, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (15, 12, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (16, 12, '_pos_visibility', 'pos_online');
INSERT INTO `wp_postmeta` VALUES (17, 13, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (18, 13, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (19, 13, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (20, 13, '_pos_visibility', 'pos_online');
INSERT INTO `wp_postmeta` VALUES (21, 14, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (22, 14, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (23, 14, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (24, 14, '_pos_visibility', 'pos_online');
INSERT INTO `wp_postmeta` VALUES (25, 15, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (26, 15, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (27, 15, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (28, 15, '_pos_visibility', 'pos_online');
INSERT INTO `wp_postmeta` VALUES (29, 16, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (30, 16, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (31, 16, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (32, 16, '_pos_visibility', 'pos_online');
INSERT INTO `wp_postmeta` VALUES (33, 17, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (34, 17, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (35, 17, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (36, 17, '_pos_visibility', 'pos_online');
INSERT INTO `wp_postmeta` VALUES (37, 18, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (38, 18, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (39, 18, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (40, 18, '_pos_visibility', 'pos_online');
INSERT INTO `wp_postmeta` VALUES (41, 18, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (42, 18, '_edit_lock', '1521608075:1');
INSERT INTO `wp_postmeta` VALUES (43, 19, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (44, 19, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (45, 19, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (46, 19, '_pos_visibility', 'pos_online');
INSERT INTO `wp_postmeta` VALUES (47, 20, '_wp_attached_file', '2018/03/28167306_1679479698785619_5243797432174941945_n_large.jpg');
INSERT INTO `wp_postmeta` VALUES (48, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:480;s:4:\"file\";s:65:\"2018/03/28167306_1679479698785619_5243797432174941945_n_large.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:65:\"28167306_1679479698785619_5243797432174941945_n_large-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:65:\"28167306_1679479698785619_5243797432174941945_n_large-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"jcaa_attribute_small\";a:4:{s:4:\"file\";s:63:\"28167306_1679479698785619_5243797432174941945_n_large-20x20.jpg\";s:5:\"width\";i:20;s:6:\"height\";i:20;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"jcaa_attribute_medium\";a:4:{s:4:\"file\";s:63:\"28167306_1679479698785619_5243797432174941945_n_large-30x30.jpg\";s:5:\"width\";i:30;s:6:\"height\";i:30;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"jcaa_attribute_large\";a:4:{s:4:\"file\";s:63:\"28167306_1679479698785619_5243797432174941945_n_large-40x40.jpg\";s:5:\"width\";i:40;s:6:\"height\";i:40;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:65:\"28167306_1679479698785619_5243797432174941945_n_large-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:65:\"28167306_1679479698785619_5243797432174941945_n_large-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:65:\"28167306_1679479698785619_5243797432174941945_n_large-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:65:\"28167306_1679479698785619_5243797432174941945_n_large-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:65:\"28167306_1679479698785619_5243797432174941945_n_large-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:65:\"28167306_1679479698785619_5243797432174941945_n_large-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (49, 19, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (50, 19, '_edit_lock', '1521729675:1');
INSERT INTO `wp_postmeta` VALUES (51, 19, '_sku', 'APLK373');
INSERT INTO `wp_postmeta` VALUES (52, 19, '_regular_price', '');
INSERT INTO `wp_postmeta` VALUES (53, 19, '_sale_price', '');
INSERT INTO `wp_postmeta` VALUES (54, 19, '_sale_price_dates_from', '');
INSERT INTO `wp_postmeta` VALUES (55, 19, '_sale_price_dates_to', '');
INSERT INTO `wp_postmeta` VALUES (56, 19, 'total_sales', '3');
INSERT INTO `wp_postmeta` VALUES (57, 19, '_tax_status', 'taxable');
INSERT INTO `wp_postmeta` VALUES (58, 19, '_tax_class', '');
INSERT INTO `wp_postmeta` VALUES (59, 19, '_manage_stock', 'no');
INSERT INTO `wp_postmeta` VALUES (60, 19, '_backorders', 'no');
INSERT INTO `wp_postmeta` VALUES (61, 19, '_sold_individually', 'no');
INSERT INTO `wp_postmeta` VALUES (62, 19, '_weight', '');
INSERT INTO `wp_postmeta` VALUES (63, 19, '_length', '');
INSERT INTO `wp_postmeta` VALUES (64, 19, '_width', '');
INSERT INTO `wp_postmeta` VALUES (65, 19, '_height', '');
INSERT INTO `wp_postmeta` VALUES (66, 19, '_upsell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (67, 19, '_crosssell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (68, 19, '_purchase_note', '');
INSERT INTO `wp_postmeta` VALUES (69, 19, '_default_attributes', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (70, 19, '_virtual', 'no');
INSERT INTO `wp_postmeta` VALUES (71, 19, '_downloadable', 'no');
INSERT INTO `wp_postmeta` VALUES (72, 19, '_product_image_gallery', '37');
INSERT INTO `wp_postmeta` VALUES (73, 19, '_download_limit', '-1');
INSERT INTO `wp_postmeta` VALUES (74, 19, '_download_expiry', '-1');
INSERT INTO `wp_postmeta` VALUES (75, 19, '_stock', NULL);
INSERT INTO `wp_postmeta` VALUES (76, 19, '_stock_status', 'instock');
INSERT INTO `wp_postmeta` VALUES (77, 19, '_product_attributes', 'a:2:{s:13:\"pa_kich-thuoc\";a:6:{s:4:\"name\";s:13:\"pa_kich-thuoc\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_mau-sac\";a:6:{s:4:\"name\";s:10:\"pa_mau-sac\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}');
INSERT INTO `wp_postmeta` VALUES (78, 19, '_product_version', '3.3.4');
INSERT INTO `wp_postmeta` VALUES (148, 23, '_variation_description', '');
INSERT INTO `wp_postmeta` VALUES (149, 23, '_sku', '');
INSERT INTO `wp_postmeta` VALUES (150, 23, '_regular_price', '560000');
INSERT INTO `wp_postmeta` VALUES (151, 23, '_sale_price', '420000');
INSERT INTO `wp_postmeta` VALUES (152, 23, '_sale_price_dates_from', '');
INSERT INTO `wp_postmeta` VALUES (153, 23, '_sale_price_dates_to', '');
INSERT INTO `wp_postmeta` VALUES (154, 23, 'total_sales', '0');
INSERT INTO `wp_postmeta` VALUES (155, 23, '_tax_status', 'taxable');
INSERT INTO `wp_postmeta` VALUES (156, 23, '_tax_class', 'parent');
INSERT INTO `wp_postmeta` VALUES (157, 23, '_manage_stock', 'no');
INSERT INTO `wp_postmeta` VALUES (158, 23, '_backorders', 'no');
INSERT INTO `wp_postmeta` VALUES (159, 23, '_sold_individually', 'no');
INSERT INTO `wp_postmeta` VALUES (160, 23, '_weight', '');
INSERT INTO `wp_postmeta` VALUES (161, 23, '_length', '');
INSERT INTO `wp_postmeta` VALUES (162, 23, '_width', '');
INSERT INTO `wp_postmeta` VALUES (163, 23, '_height', '');
INSERT INTO `wp_postmeta` VALUES (164, 23, '_upsell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (165, 23, '_crosssell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (166, 23, '_purchase_note', '');
INSERT INTO `wp_postmeta` VALUES (167, 23, '_default_attributes', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (168, 23, '_virtual', 'no');
INSERT INTO `wp_postmeta` VALUES (169, 23, '_downloadable', 'no');
INSERT INTO `wp_postmeta` VALUES (170, 23, '_product_image_gallery', '');
INSERT INTO `wp_postmeta` VALUES (171, 23, '_download_limit', '-1');
INSERT INTO `wp_postmeta` VALUES (172, 23, '_download_expiry', '-1');
INSERT INTO `wp_postmeta` VALUES (173, 23, '_stock', NULL);
INSERT INTO `wp_postmeta` VALUES (174, 23, '_stock_status', 'outofstock');
INSERT INTO `wp_postmeta` VALUES (175, 23, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (176, 23, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (177, 23, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (178, 23, '_downloadable_files', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (179, 23, 'attribute_pa_mau-sac', 'den');
INSERT INTO `wp_postmeta` VALUES (180, 23, 'attribute_pa_kich-thuoc', '2xl');
INSERT INTO `wp_postmeta` VALUES (181, 23, '_price', '420000');
INSERT INTO `wp_postmeta` VALUES (182, 23, '_product_version', '3.3.4');
INSERT INTO `wp_postmeta` VALUES (183, 24, '_variation_description', '');
INSERT INTO `wp_postmeta` VALUES (184, 24, '_sku', '');
INSERT INTO `wp_postmeta` VALUES (185, 24, '_regular_price', '560000');
INSERT INTO `wp_postmeta` VALUES (186, 24, '_sale_price', '420000');
INSERT INTO `wp_postmeta` VALUES (187, 24, '_sale_price_dates_from', '');
INSERT INTO `wp_postmeta` VALUES (188, 24, '_sale_price_dates_to', '');
INSERT INTO `wp_postmeta` VALUES (189, 24, 'total_sales', '0');
INSERT INTO `wp_postmeta` VALUES (190, 24, '_tax_status', 'taxable');
INSERT INTO `wp_postmeta` VALUES (191, 24, '_tax_class', 'parent');
INSERT INTO `wp_postmeta` VALUES (192, 24, '_manage_stock', 'no');
INSERT INTO `wp_postmeta` VALUES (193, 24, '_backorders', 'no');
INSERT INTO `wp_postmeta` VALUES (194, 24, '_sold_individually', 'no');
INSERT INTO `wp_postmeta` VALUES (195, 24, '_weight', '');
INSERT INTO `wp_postmeta` VALUES (196, 24, '_length', '');
INSERT INTO `wp_postmeta` VALUES (197, 24, '_width', '');
INSERT INTO `wp_postmeta` VALUES (198, 24, '_height', '');
INSERT INTO `wp_postmeta` VALUES (199, 24, '_upsell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (200, 24, '_crosssell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (201, 24, '_purchase_note', '');
INSERT INTO `wp_postmeta` VALUES (202, 24, '_default_attributes', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (203, 24, '_virtual', 'no');
INSERT INTO `wp_postmeta` VALUES (204, 24, '_downloadable', 'no');
INSERT INTO `wp_postmeta` VALUES (205, 24, '_product_image_gallery', '');
INSERT INTO `wp_postmeta` VALUES (206, 24, '_download_limit', '-1');
INSERT INTO `wp_postmeta` VALUES (207, 24, '_download_expiry', '-1');
INSERT INTO `wp_postmeta` VALUES (208, 24, '_stock', NULL);
INSERT INTO `wp_postmeta` VALUES (209, 24, '_stock_status', 'outofstock');
INSERT INTO `wp_postmeta` VALUES (210, 24, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (211, 24, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (212, 24, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (213, 24, '_downloadable_files', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (214, 24, 'attribute_pa_mau-sac', 'trang');
INSERT INTO `wp_postmeta` VALUES (215, 24, 'attribute_pa_kich-thuoc', '2xl');
INSERT INTO `wp_postmeta` VALUES (216, 24, '_price', '420000');
INSERT INTO `wp_postmeta` VALUES (217, 24, '_product_version', '3.3.4');
INSERT INTO `wp_postmeta` VALUES (218, 25, '_variation_description', '');
INSERT INTO `wp_postmeta` VALUES (219, 25, '_sku', '');
INSERT INTO `wp_postmeta` VALUES (220, 25, '_regular_price', '560000');
INSERT INTO `wp_postmeta` VALUES (221, 25, '_sale_price', '420000');
INSERT INTO `wp_postmeta` VALUES (222, 25, '_sale_price_dates_from', '');
INSERT INTO `wp_postmeta` VALUES (223, 25, '_sale_price_dates_to', '');
INSERT INTO `wp_postmeta` VALUES (224, 25, 'total_sales', '0');
INSERT INTO `wp_postmeta` VALUES (225, 25, '_tax_status', 'taxable');
INSERT INTO `wp_postmeta` VALUES (226, 25, '_tax_class', 'parent');
INSERT INTO `wp_postmeta` VALUES (227, 25, '_manage_stock', 'no');
INSERT INTO `wp_postmeta` VALUES (228, 25, '_backorders', 'no');
INSERT INTO `wp_postmeta` VALUES (229, 25, '_sold_individually', 'no');
INSERT INTO `wp_postmeta` VALUES (230, 25, '_weight', '');
INSERT INTO `wp_postmeta` VALUES (231, 25, '_length', '');
INSERT INTO `wp_postmeta` VALUES (232, 25, '_width', '');
INSERT INTO `wp_postmeta` VALUES (233, 25, '_height', '');
INSERT INTO `wp_postmeta` VALUES (234, 25, '_upsell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (235, 25, '_crosssell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (236, 25, '_purchase_note', '');
INSERT INTO `wp_postmeta` VALUES (237, 25, '_default_attributes', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (238, 25, '_virtual', 'no');
INSERT INTO `wp_postmeta` VALUES (239, 25, '_downloadable', 'no');
INSERT INTO `wp_postmeta` VALUES (240, 25, '_product_image_gallery', '');
INSERT INTO `wp_postmeta` VALUES (241, 25, '_download_limit', '-1');
INSERT INTO `wp_postmeta` VALUES (242, 25, '_download_expiry', '-1');
INSERT INTO `wp_postmeta` VALUES (243, 25, '_stock', NULL);
INSERT INTO `wp_postmeta` VALUES (244, 25, '_stock_status', 'onbackorder');
INSERT INTO `wp_postmeta` VALUES (245, 25, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (246, 25, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (247, 25, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (248, 25, '_downloadable_files', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (249, 25, 'attribute_pa_mau-sac', 'den');
INSERT INTO `wp_postmeta` VALUES (250, 25, 'attribute_pa_kich-thuoc', '3xl');
INSERT INTO `wp_postmeta` VALUES (251, 25, '_price', '420000');
INSERT INTO `wp_postmeta` VALUES (252, 25, '_product_version', '3.3.4');
INSERT INTO `wp_postmeta` VALUES (253, 26, '_variation_description', '');
INSERT INTO `wp_postmeta` VALUES (254, 26, '_sku', '');
INSERT INTO `wp_postmeta` VALUES (255, 26, '_regular_price', '560000');
INSERT INTO `wp_postmeta` VALUES (256, 26, '_sale_price', '420000');
INSERT INTO `wp_postmeta` VALUES (257, 26, '_sale_price_dates_from', '');
INSERT INTO `wp_postmeta` VALUES (258, 26, '_sale_price_dates_to', '');
INSERT INTO `wp_postmeta` VALUES (259, 26, 'total_sales', '0');
INSERT INTO `wp_postmeta` VALUES (260, 26, '_tax_status', 'taxable');
INSERT INTO `wp_postmeta` VALUES (261, 26, '_tax_class', 'parent');
INSERT INTO `wp_postmeta` VALUES (262, 26, '_manage_stock', 'no');
INSERT INTO `wp_postmeta` VALUES (263, 26, '_backorders', 'no');
INSERT INTO `wp_postmeta` VALUES (264, 26, '_sold_individually', 'no');
INSERT INTO `wp_postmeta` VALUES (265, 26, '_weight', '');
INSERT INTO `wp_postmeta` VALUES (266, 26, '_length', '');
INSERT INTO `wp_postmeta` VALUES (267, 26, '_width', '');
INSERT INTO `wp_postmeta` VALUES (268, 26, '_height', '');
INSERT INTO `wp_postmeta` VALUES (269, 26, '_upsell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (270, 26, '_crosssell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (271, 26, '_purchase_note', '');
INSERT INTO `wp_postmeta` VALUES (272, 26, '_default_attributes', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (273, 26, '_virtual', 'no');
INSERT INTO `wp_postmeta` VALUES (274, 26, '_downloadable', 'no');
INSERT INTO `wp_postmeta` VALUES (275, 26, '_product_image_gallery', '');
INSERT INTO `wp_postmeta` VALUES (276, 26, '_download_limit', '-1');
INSERT INTO `wp_postmeta` VALUES (277, 26, '_download_expiry', '-1');
INSERT INTO `wp_postmeta` VALUES (278, 26, '_stock', NULL);
INSERT INTO `wp_postmeta` VALUES (279, 26, '_stock_status', 'onbackorder');
INSERT INTO `wp_postmeta` VALUES (280, 26, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (281, 26, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (282, 26, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (283, 26, '_downloadable_files', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (284, 26, 'attribute_pa_mau-sac', 'trang');
INSERT INTO `wp_postmeta` VALUES (285, 26, 'attribute_pa_kich-thuoc', '3xl');
INSERT INTO `wp_postmeta` VALUES (286, 26, '_price', '420000');
INSERT INTO `wp_postmeta` VALUES (287, 26, '_product_version', '3.3.4');
INSERT INTO `wp_postmeta` VALUES (288, 27, '_variation_description', '');
INSERT INTO `wp_postmeta` VALUES (289, 27, '_sku', '');
INSERT INTO `wp_postmeta` VALUES (290, 27, '_regular_price', '560000');
INSERT INTO `wp_postmeta` VALUES (291, 27, '_sale_price', '420000');
INSERT INTO `wp_postmeta` VALUES (292, 27, '_sale_price_dates_from', '');
INSERT INTO `wp_postmeta` VALUES (293, 27, '_sale_price_dates_to', '');
INSERT INTO `wp_postmeta` VALUES (294, 27, 'total_sales', '0');
INSERT INTO `wp_postmeta` VALUES (295, 27, '_tax_status', 'taxable');
INSERT INTO `wp_postmeta` VALUES (296, 27, '_tax_class', 'parent');
INSERT INTO `wp_postmeta` VALUES (297, 27, '_manage_stock', 'no');
INSERT INTO `wp_postmeta` VALUES (298, 27, '_backorders', 'no');
INSERT INTO `wp_postmeta` VALUES (299, 27, '_sold_individually', 'no');
INSERT INTO `wp_postmeta` VALUES (300, 27, '_weight', '');
INSERT INTO `wp_postmeta` VALUES (301, 27, '_length', '');
INSERT INTO `wp_postmeta` VALUES (302, 27, '_width', '');
INSERT INTO `wp_postmeta` VALUES (303, 27, '_height', '');
INSERT INTO `wp_postmeta` VALUES (304, 27, '_upsell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (305, 27, '_crosssell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (306, 27, '_purchase_note', '');
INSERT INTO `wp_postmeta` VALUES (307, 27, '_default_attributes', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (308, 27, '_virtual', 'no');
INSERT INTO `wp_postmeta` VALUES (309, 27, '_downloadable', 'no');
INSERT INTO `wp_postmeta` VALUES (310, 27, '_product_image_gallery', '');
INSERT INTO `wp_postmeta` VALUES (311, 27, '_download_limit', '-1');
INSERT INTO `wp_postmeta` VALUES (312, 27, '_download_expiry', '-1');
INSERT INTO `wp_postmeta` VALUES (313, 27, '_stock', NULL);
INSERT INTO `wp_postmeta` VALUES (314, 27, '_stock_status', 'outofstock');
INSERT INTO `wp_postmeta` VALUES (315, 27, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (316, 27, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (317, 27, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (318, 27, '_downloadable_files', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (319, 27, 'attribute_pa_mau-sac', 'den');
INSERT INTO `wp_postmeta` VALUES (320, 27, 'attribute_pa_kich-thuoc', 'l');
INSERT INTO `wp_postmeta` VALUES (321, 27, '_price', '420000');
INSERT INTO `wp_postmeta` VALUES (322, 27, '_product_version', '3.3.4');
INSERT INTO `wp_postmeta` VALUES (323, 28, '_variation_description', '');
INSERT INTO `wp_postmeta` VALUES (324, 28, '_sku', '');
INSERT INTO `wp_postmeta` VALUES (325, 28, '_regular_price', '560000');
INSERT INTO `wp_postmeta` VALUES (326, 28, '_sale_price', '420000');
INSERT INTO `wp_postmeta` VALUES (327, 28, '_sale_price_dates_from', '');
INSERT INTO `wp_postmeta` VALUES (328, 28, '_sale_price_dates_to', '');
INSERT INTO `wp_postmeta` VALUES (329, 28, 'total_sales', '0');
INSERT INTO `wp_postmeta` VALUES (330, 28, '_tax_status', 'taxable');
INSERT INTO `wp_postmeta` VALUES (331, 28, '_tax_class', 'parent');
INSERT INTO `wp_postmeta` VALUES (332, 28, '_manage_stock', 'no');
INSERT INTO `wp_postmeta` VALUES (333, 28, '_backorders', 'no');
INSERT INTO `wp_postmeta` VALUES (334, 28, '_sold_individually', 'no');
INSERT INTO `wp_postmeta` VALUES (335, 28, '_weight', '');
INSERT INTO `wp_postmeta` VALUES (336, 28, '_length', '');
INSERT INTO `wp_postmeta` VALUES (337, 28, '_width', '');
INSERT INTO `wp_postmeta` VALUES (338, 28, '_height', '');
INSERT INTO `wp_postmeta` VALUES (339, 28, '_upsell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (340, 28, '_crosssell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (341, 28, '_purchase_note', '');
INSERT INTO `wp_postmeta` VALUES (342, 28, '_default_attributes', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (343, 28, '_virtual', 'no');
INSERT INTO `wp_postmeta` VALUES (344, 28, '_downloadable', 'no');
INSERT INTO `wp_postmeta` VALUES (345, 28, '_product_image_gallery', '');
INSERT INTO `wp_postmeta` VALUES (346, 28, '_download_limit', '-1');
INSERT INTO `wp_postmeta` VALUES (347, 28, '_download_expiry', '-1');
INSERT INTO `wp_postmeta` VALUES (348, 28, '_stock', NULL);
INSERT INTO `wp_postmeta` VALUES (349, 28, '_stock_status', 'outofstock');
INSERT INTO `wp_postmeta` VALUES (350, 28, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (351, 28, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (352, 28, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (353, 28, '_downloadable_files', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (354, 28, 'attribute_pa_mau-sac', 'trang');
INSERT INTO `wp_postmeta` VALUES (355, 28, 'attribute_pa_kich-thuoc', 'l');
INSERT INTO `wp_postmeta` VALUES (356, 28, '_price', '420000');
INSERT INTO `wp_postmeta` VALUES (357, 28, '_product_version', '3.3.4');
INSERT INTO `wp_postmeta` VALUES (358, 29, '_variation_description', '');
INSERT INTO `wp_postmeta` VALUES (359, 29, '_sku', '');
INSERT INTO `wp_postmeta` VALUES (360, 29, '_regular_price', '560000');
INSERT INTO `wp_postmeta` VALUES (361, 29, '_sale_price', '420000');
INSERT INTO `wp_postmeta` VALUES (362, 29, '_sale_price_dates_from', '');
INSERT INTO `wp_postmeta` VALUES (363, 29, '_sale_price_dates_to', '');
INSERT INTO `wp_postmeta` VALUES (364, 29, 'total_sales', '0');
INSERT INTO `wp_postmeta` VALUES (365, 29, '_tax_status', 'taxable');
INSERT INTO `wp_postmeta` VALUES (366, 29, '_tax_class', 'parent');
INSERT INTO `wp_postmeta` VALUES (367, 29, '_manage_stock', 'no');
INSERT INTO `wp_postmeta` VALUES (368, 29, '_backorders', 'no');
INSERT INTO `wp_postmeta` VALUES (369, 29, '_sold_individually', 'no');
INSERT INTO `wp_postmeta` VALUES (370, 29, '_weight', '');
INSERT INTO `wp_postmeta` VALUES (371, 29, '_length', '');
INSERT INTO `wp_postmeta` VALUES (372, 29, '_width', '');
INSERT INTO `wp_postmeta` VALUES (373, 29, '_height', '');
INSERT INTO `wp_postmeta` VALUES (374, 29, '_upsell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (375, 29, '_crosssell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (376, 29, '_purchase_note', '');
INSERT INTO `wp_postmeta` VALUES (377, 29, '_default_attributes', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (378, 29, '_virtual', 'no');
INSERT INTO `wp_postmeta` VALUES (379, 29, '_downloadable', 'no');
INSERT INTO `wp_postmeta` VALUES (380, 29, '_product_image_gallery', '');
INSERT INTO `wp_postmeta` VALUES (381, 29, '_download_limit', '-1');
INSERT INTO `wp_postmeta` VALUES (382, 29, '_download_expiry', '-1');
INSERT INTO `wp_postmeta` VALUES (383, 29, '_stock', NULL);
INSERT INTO `wp_postmeta` VALUES (384, 29, '_stock_status', 'outofstock');
INSERT INTO `wp_postmeta` VALUES (385, 29, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (386, 29, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (387, 29, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (388, 29, '_downloadable_files', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (389, 29, 'attribute_pa_mau-sac', 'den');
INSERT INTO `wp_postmeta` VALUES (390, 29, 'attribute_pa_kich-thuoc', 'm');
INSERT INTO `wp_postmeta` VALUES (391, 29, '_price', '420000');
INSERT INTO `wp_postmeta` VALUES (392, 29, '_product_version', '3.3.4');
INSERT INTO `wp_postmeta` VALUES (393, 30, '_variation_description', '');
INSERT INTO `wp_postmeta` VALUES (394, 30, '_sku', '');
INSERT INTO `wp_postmeta` VALUES (395, 30, '_regular_price', '560000');
INSERT INTO `wp_postmeta` VALUES (396, 30, '_sale_price', '420000');
INSERT INTO `wp_postmeta` VALUES (397, 30, '_sale_price_dates_from', '');
INSERT INTO `wp_postmeta` VALUES (398, 30, '_sale_price_dates_to', '');
INSERT INTO `wp_postmeta` VALUES (399, 30, 'total_sales', '0');
INSERT INTO `wp_postmeta` VALUES (400, 30, '_tax_status', 'taxable');
INSERT INTO `wp_postmeta` VALUES (401, 30, '_tax_class', 'parent');
INSERT INTO `wp_postmeta` VALUES (402, 30, '_manage_stock', 'no');
INSERT INTO `wp_postmeta` VALUES (403, 30, '_backorders', 'no');
INSERT INTO `wp_postmeta` VALUES (404, 30, '_sold_individually', 'no');
INSERT INTO `wp_postmeta` VALUES (405, 30, '_weight', '');
INSERT INTO `wp_postmeta` VALUES (406, 30, '_length', '');
INSERT INTO `wp_postmeta` VALUES (407, 30, '_width', '');
INSERT INTO `wp_postmeta` VALUES (408, 30, '_height', '');
INSERT INTO `wp_postmeta` VALUES (409, 30, '_upsell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (410, 30, '_crosssell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (411, 30, '_purchase_note', '');
INSERT INTO `wp_postmeta` VALUES (412, 30, '_default_attributes', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (413, 30, '_virtual', 'no');
INSERT INTO `wp_postmeta` VALUES (414, 30, '_downloadable', 'no');
INSERT INTO `wp_postmeta` VALUES (415, 30, '_product_image_gallery', '');
INSERT INTO `wp_postmeta` VALUES (416, 30, '_download_limit', '-1');
INSERT INTO `wp_postmeta` VALUES (417, 30, '_download_expiry', '-1');
INSERT INTO `wp_postmeta` VALUES (418, 30, '_stock', NULL);
INSERT INTO `wp_postmeta` VALUES (419, 30, '_stock_status', 'outofstock');
INSERT INTO `wp_postmeta` VALUES (420, 30, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (421, 30, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (422, 30, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (423, 30, '_downloadable_files', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (424, 30, 'attribute_pa_mau-sac', 'trang');
INSERT INTO `wp_postmeta` VALUES (425, 30, 'attribute_pa_kich-thuoc', 'm');
INSERT INTO `wp_postmeta` VALUES (426, 30, '_price', '420000');
INSERT INTO `wp_postmeta` VALUES (427, 30, '_product_version', '3.3.4');
INSERT INTO `wp_postmeta` VALUES (428, 31, '_variation_description', '');
INSERT INTO `wp_postmeta` VALUES (429, 31, '_sku', '');
INSERT INTO `wp_postmeta` VALUES (430, 31, '_regular_price', '560000');
INSERT INTO `wp_postmeta` VALUES (431, 31, '_sale_price', '420000');
INSERT INTO `wp_postmeta` VALUES (432, 31, '_sale_price_dates_from', '');
INSERT INTO `wp_postmeta` VALUES (433, 31, '_sale_price_dates_to', '');
INSERT INTO `wp_postmeta` VALUES (434, 31, 'total_sales', '0');
INSERT INTO `wp_postmeta` VALUES (435, 31, '_tax_status', 'taxable');
INSERT INTO `wp_postmeta` VALUES (436, 31, '_tax_class', 'parent');
INSERT INTO `wp_postmeta` VALUES (437, 31, '_manage_stock', 'no');
INSERT INTO `wp_postmeta` VALUES (438, 31, '_backorders', 'no');
INSERT INTO `wp_postmeta` VALUES (439, 31, '_sold_individually', 'no');
INSERT INTO `wp_postmeta` VALUES (440, 31, '_weight', '');
INSERT INTO `wp_postmeta` VALUES (441, 31, '_length', '');
INSERT INTO `wp_postmeta` VALUES (442, 31, '_width', '');
INSERT INTO `wp_postmeta` VALUES (443, 31, '_height', '');
INSERT INTO `wp_postmeta` VALUES (444, 31, '_upsell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (445, 31, '_crosssell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (446, 31, '_purchase_note', '');
INSERT INTO `wp_postmeta` VALUES (447, 31, '_default_attributes', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (448, 31, '_virtual', 'no');
INSERT INTO `wp_postmeta` VALUES (449, 31, '_downloadable', 'no');
INSERT INTO `wp_postmeta` VALUES (450, 31, '_product_image_gallery', '');
INSERT INTO `wp_postmeta` VALUES (451, 31, '_download_limit', '-1');
INSERT INTO `wp_postmeta` VALUES (452, 31, '_download_expiry', '-1');
INSERT INTO `wp_postmeta` VALUES (453, 31, '_stock', NULL);
INSERT INTO `wp_postmeta` VALUES (454, 31, '_stock_status', 'outofstock');
INSERT INTO `wp_postmeta` VALUES (455, 31, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (456, 31, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (457, 31, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (458, 31, '_downloadable_files', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (459, 31, 'attribute_pa_mau-sac', 'den');
INSERT INTO `wp_postmeta` VALUES (460, 31, 'attribute_pa_kich-thuoc', 's');
INSERT INTO `wp_postmeta` VALUES (461, 31, '_price', '420000');
INSERT INTO `wp_postmeta` VALUES (462, 31, '_product_version', '3.3.4');
INSERT INTO `wp_postmeta` VALUES (463, 32, '_variation_description', '');
INSERT INTO `wp_postmeta` VALUES (464, 32, '_sku', '');
INSERT INTO `wp_postmeta` VALUES (465, 32, '_regular_price', '560000');
INSERT INTO `wp_postmeta` VALUES (466, 32, '_sale_price', '420000');
INSERT INTO `wp_postmeta` VALUES (467, 32, '_sale_price_dates_from', '');
INSERT INTO `wp_postmeta` VALUES (468, 32, '_sale_price_dates_to', '');
INSERT INTO `wp_postmeta` VALUES (469, 32, 'total_sales', '0');
INSERT INTO `wp_postmeta` VALUES (470, 32, '_tax_status', 'taxable');
INSERT INTO `wp_postmeta` VALUES (471, 32, '_tax_class', 'parent');
INSERT INTO `wp_postmeta` VALUES (472, 32, '_manage_stock', 'no');
INSERT INTO `wp_postmeta` VALUES (473, 32, '_backorders', 'no');
INSERT INTO `wp_postmeta` VALUES (474, 32, '_sold_individually', 'no');
INSERT INTO `wp_postmeta` VALUES (475, 32, '_weight', '');
INSERT INTO `wp_postmeta` VALUES (476, 32, '_length', '');
INSERT INTO `wp_postmeta` VALUES (477, 32, '_width', '');
INSERT INTO `wp_postmeta` VALUES (478, 32, '_height', '');
INSERT INTO `wp_postmeta` VALUES (479, 32, '_upsell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (480, 32, '_crosssell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (481, 32, '_purchase_note', '');
INSERT INTO `wp_postmeta` VALUES (482, 32, '_default_attributes', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (483, 32, '_virtual', 'no');
INSERT INTO `wp_postmeta` VALUES (484, 32, '_downloadable', 'no');
INSERT INTO `wp_postmeta` VALUES (485, 32, '_product_image_gallery', '');
INSERT INTO `wp_postmeta` VALUES (486, 32, '_download_limit', '-1');
INSERT INTO `wp_postmeta` VALUES (487, 32, '_download_expiry', '-1');
INSERT INTO `wp_postmeta` VALUES (488, 32, '_stock', NULL);
INSERT INTO `wp_postmeta` VALUES (489, 32, '_stock_status', 'outofstock');
INSERT INTO `wp_postmeta` VALUES (490, 32, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (491, 32, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (492, 32, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (493, 32, '_downloadable_files', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (494, 32, 'attribute_pa_mau-sac', 'trang');
INSERT INTO `wp_postmeta` VALUES (495, 32, 'attribute_pa_kich-thuoc', 's');
INSERT INTO `wp_postmeta` VALUES (496, 32, '_price', '420000');
INSERT INTO `wp_postmeta` VALUES (497, 32, '_product_version', '3.3.4');
INSERT INTO `wp_postmeta` VALUES (498, 33, '_variation_description', '');
INSERT INTO `wp_postmeta` VALUES (499, 33, '_sku', '');
INSERT INTO `wp_postmeta` VALUES (500, 33, '_regular_price', '560000');
INSERT INTO `wp_postmeta` VALUES (501, 33, '_sale_price', '420000');
INSERT INTO `wp_postmeta` VALUES (502, 33, '_sale_price_dates_from', '');
INSERT INTO `wp_postmeta` VALUES (503, 33, '_sale_price_dates_to', '');
INSERT INTO `wp_postmeta` VALUES (504, 33, 'total_sales', '0');
INSERT INTO `wp_postmeta` VALUES (505, 33, '_tax_status', 'taxable');
INSERT INTO `wp_postmeta` VALUES (506, 33, '_tax_class', 'parent');
INSERT INTO `wp_postmeta` VALUES (507, 33, '_manage_stock', 'no');
INSERT INTO `wp_postmeta` VALUES (508, 33, '_backorders', 'no');
INSERT INTO `wp_postmeta` VALUES (509, 33, '_sold_individually', 'no');
INSERT INTO `wp_postmeta` VALUES (510, 33, '_weight', '');
INSERT INTO `wp_postmeta` VALUES (511, 33, '_length', '');
INSERT INTO `wp_postmeta` VALUES (512, 33, '_width', '');
INSERT INTO `wp_postmeta` VALUES (513, 33, '_height', '');
INSERT INTO `wp_postmeta` VALUES (514, 33, '_upsell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (515, 33, '_crosssell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (516, 33, '_purchase_note', '');
INSERT INTO `wp_postmeta` VALUES (517, 33, '_default_attributes', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (518, 33, '_virtual', 'no');
INSERT INTO `wp_postmeta` VALUES (519, 33, '_downloadable', 'no');
INSERT INTO `wp_postmeta` VALUES (520, 33, '_product_image_gallery', '');
INSERT INTO `wp_postmeta` VALUES (521, 33, '_download_limit', '-1');
INSERT INTO `wp_postmeta` VALUES (522, 33, '_download_expiry', '-1');
INSERT INTO `wp_postmeta` VALUES (523, 33, '_stock', NULL);
INSERT INTO `wp_postmeta` VALUES (524, 33, '_stock_status', 'outofstock');
INSERT INTO `wp_postmeta` VALUES (525, 33, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (526, 33, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (527, 33, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (528, 33, '_downloadable_files', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (529, 33, 'attribute_pa_mau-sac', 'den');
INSERT INTO `wp_postmeta` VALUES (530, 33, 'attribute_pa_kich-thuoc', 'xl');
INSERT INTO `wp_postmeta` VALUES (531, 33, '_price', '420000');
INSERT INTO `wp_postmeta` VALUES (532, 33, '_product_version', '3.3.4');
INSERT INTO `wp_postmeta` VALUES (533, 34, '_variation_description', '');
INSERT INTO `wp_postmeta` VALUES (534, 34, '_sku', '');
INSERT INTO `wp_postmeta` VALUES (535, 34, '_regular_price', '560000');
INSERT INTO `wp_postmeta` VALUES (536, 34, '_sale_price', '420000');
INSERT INTO `wp_postmeta` VALUES (537, 34, '_sale_price_dates_from', '');
INSERT INTO `wp_postmeta` VALUES (538, 34, '_sale_price_dates_to', '');
INSERT INTO `wp_postmeta` VALUES (539, 34, 'total_sales', '0');
INSERT INTO `wp_postmeta` VALUES (540, 34, '_tax_status', 'taxable');
INSERT INTO `wp_postmeta` VALUES (541, 34, '_tax_class', 'parent');
INSERT INTO `wp_postmeta` VALUES (542, 34, '_manage_stock', 'no');
INSERT INTO `wp_postmeta` VALUES (543, 34, '_backorders', 'no');
INSERT INTO `wp_postmeta` VALUES (544, 34, '_sold_individually', 'no');
INSERT INTO `wp_postmeta` VALUES (545, 34, '_weight', '');
INSERT INTO `wp_postmeta` VALUES (546, 34, '_length', '');
INSERT INTO `wp_postmeta` VALUES (547, 34, '_width', '');
INSERT INTO `wp_postmeta` VALUES (548, 34, '_height', '');
INSERT INTO `wp_postmeta` VALUES (549, 34, '_upsell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (550, 34, '_crosssell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (551, 34, '_purchase_note', '');
INSERT INTO `wp_postmeta` VALUES (552, 34, '_default_attributes', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (553, 34, '_virtual', 'no');
INSERT INTO `wp_postmeta` VALUES (554, 34, '_downloadable', 'no');
INSERT INTO `wp_postmeta` VALUES (555, 34, '_product_image_gallery', '');
INSERT INTO `wp_postmeta` VALUES (556, 34, '_download_limit', '-1');
INSERT INTO `wp_postmeta` VALUES (557, 34, '_download_expiry', '-1');
INSERT INTO `wp_postmeta` VALUES (558, 34, '_stock', NULL);
INSERT INTO `wp_postmeta` VALUES (559, 34, '_stock_status', 'outofstock');
INSERT INTO `wp_postmeta` VALUES (560, 34, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (561, 34, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (562, 34, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (563, 34, '_downloadable_files', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (564, 34, 'attribute_pa_mau-sac', 'trang');
INSERT INTO `wp_postmeta` VALUES (565, 34, 'attribute_pa_kich-thuoc', 'xl');
INSERT INTO `wp_postmeta` VALUES (566, 34, '_price', '420000');
INSERT INTO `wp_postmeta` VALUES (567, 34, '_product_version', '3.3.4');
INSERT INTO `wp_postmeta` VALUES (568, 35, '_variation_description', '');
INSERT INTO `wp_postmeta` VALUES (569, 35, '_sku', '');
INSERT INTO `wp_postmeta` VALUES (570, 35, '_regular_price', '560000');
INSERT INTO `wp_postmeta` VALUES (571, 35, '_sale_price', '420000');
INSERT INTO `wp_postmeta` VALUES (572, 35, '_sale_price_dates_from', '');
INSERT INTO `wp_postmeta` VALUES (573, 35, '_sale_price_dates_to', '');
INSERT INTO `wp_postmeta` VALUES (574, 35, 'total_sales', '0');
INSERT INTO `wp_postmeta` VALUES (575, 35, '_tax_status', 'taxable');
INSERT INTO `wp_postmeta` VALUES (576, 35, '_tax_class', 'parent');
INSERT INTO `wp_postmeta` VALUES (577, 35, '_manage_stock', 'no');
INSERT INTO `wp_postmeta` VALUES (578, 35, '_backorders', 'no');
INSERT INTO `wp_postmeta` VALUES (579, 35, '_sold_individually', 'no');
INSERT INTO `wp_postmeta` VALUES (580, 35, '_weight', '');
INSERT INTO `wp_postmeta` VALUES (581, 35, '_length', '');
INSERT INTO `wp_postmeta` VALUES (582, 35, '_width', '');
INSERT INTO `wp_postmeta` VALUES (583, 35, '_height', '');
INSERT INTO `wp_postmeta` VALUES (584, 35, '_upsell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (585, 35, '_crosssell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (586, 35, '_purchase_note', '');
INSERT INTO `wp_postmeta` VALUES (587, 35, '_default_attributes', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (588, 35, '_virtual', 'no');
INSERT INTO `wp_postmeta` VALUES (589, 35, '_downloadable', 'no');
INSERT INTO `wp_postmeta` VALUES (590, 35, '_product_image_gallery', '');
INSERT INTO `wp_postmeta` VALUES (591, 35, '_download_limit', '-1');
INSERT INTO `wp_postmeta` VALUES (592, 35, '_download_expiry', '-1');
INSERT INTO `wp_postmeta` VALUES (593, 35, '_stock', NULL);
INSERT INTO `wp_postmeta` VALUES (594, 35, '_stock_status', 'outofstock');
INSERT INTO `wp_postmeta` VALUES (595, 35, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (596, 35, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (597, 35, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (598, 35, '_downloadable_files', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (599, 35, 'attribute_pa_mau-sac', 'den');
INSERT INTO `wp_postmeta` VALUES (600, 35, 'attribute_pa_kich-thuoc', 'xs');
INSERT INTO `wp_postmeta` VALUES (601, 35, '_price', '420000');
INSERT INTO `wp_postmeta` VALUES (602, 35, '_product_version', '3.3.4');
INSERT INTO `wp_postmeta` VALUES (603, 36, '_variation_description', '');
INSERT INTO `wp_postmeta` VALUES (604, 36, '_sku', '');
INSERT INTO `wp_postmeta` VALUES (605, 36, '_regular_price', '560000');
INSERT INTO `wp_postmeta` VALUES (606, 36, '_sale_price', '420000');
INSERT INTO `wp_postmeta` VALUES (607, 36, '_sale_price_dates_from', '');
INSERT INTO `wp_postmeta` VALUES (608, 36, '_sale_price_dates_to', '');
INSERT INTO `wp_postmeta` VALUES (609, 36, 'total_sales', '0');
INSERT INTO `wp_postmeta` VALUES (610, 36, '_tax_status', 'taxable');
INSERT INTO `wp_postmeta` VALUES (611, 36, '_tax_class', 'parent');
INSERT INTO `wp_postmeta` VALUES (612, 36, '_manage_stock', 'no');
INSERT INTO `wp_postmeta` VALUES (613, 36, '_backorders', 'no');
INSERT INTO `wp_postmeta` VALUES (614, 36, '_sold_individually', 'no');
INSERT INTO `wp_postmeta` VALUES (615, 36, '_weight', '');
INSERT INTO `wp_postmeta` VALUES (616, 36, '_length', '');
INSERT INTO `wp_postmeta` VALUES (617, 36, '_width', '');
INSERT INTO `wp_postmeta` VALUES (618, 36, '_height', '');
INSERT INTO `wp_postmeta` VALUES (619, 36, '_upsell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (620, 36, '_crosssell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (621, 36, '_purchase_note', '');
INSERT INTO `wp_postmeta` VALUES (622, 36, '_default_attributes', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (623, 36, '_virtual', 'no');
INSERT INTO `wp_postmeta` VALUES (624, 36, '_downloadable', 'no');
INSERT INTO `wp_postmeta` VALUES (625, 36, '_product_image_gallery', '');
INSERT INTO `wp_postmeta` VALUES (626, 36, '_download_limit', '-1');
INSERT INTO `wp_postmeta` VALUES (627, 36, '_download_expiry', '-1');
INSERT INTO `wp_postmeta` VALUES (628, 36, '_stock', NULL);
INSERT INTO `wp_postmeta` VALUES (629, 36, '_stock_status', 'outofstock');
INSERT INTO `wp_postmeta` VALUES (630, 36, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (631, 36, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (632, 36, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (633, 36, '_downloadable_files', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (634, 36, 'attribute_pa_mau-sac', 'trang');
INSERT INTO `wp_postmeta` VALUES (635, 36, 'attribute_pa_kich-thuoc', 'xs');
INSERT INTO `wp_postmeta` VALUES (636, 36, '_price', '420000');
INSERT INTO `wp_postmeta` VALUES (637, 36, '_product_version', '3.3.4');
INSERT INTO `wp_postmeta` VALUES (646, 37, '_wp_attached_file', '2018/03/28166675_1679479695452286_4679760645294428842_n_large.jpg');
INSERT INTO `wp_postmeta` VALUES (647, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:480;s:4:\"file\";s:65:\"2018/03/28166675_1679479695452286_4679760645294428842_n_large.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:65:\"28166675_1679479695452286_4679760645294428842_n_large-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:65:\"28166675_1679479695452286_4679760645294428842_n_large-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"jcaa_attribute_small\";a:4:{s:4:\"file\";s:63:\"28166675_1679479695452286_4679760645294428842_n_large-20x20.jpg\";s:5:\"width\";i:20;s:6:\"height\";i:20;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"jcaa_attribute_medium\";a:4:{s:4:\"file\";s:63:\"28166675_1679479695452286_4679760645294428842_n_large-30x30.jpg\";s:5:\"width\";i:30;s:6:\"height\";i:30;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"jcaa_attribute_large\";a:4:{s:4:\"file\";s:63:\"28166675_1679479695452286_4679760645294428842_n_large-40x40.jpg\";s:5:\"width\";i:40;s:6:\"height\";i:40;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:65:\"28166675_1679479695452286_4679760645294428842_n_large-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:65:\"28166675_1679479695452286_4679760645294428842_n_large-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:65:\"28166675_1679479695452286_4679760645294428842_n_large-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:65:\"28166675_1679479695452286_4679760645294428842_n_large-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:65:\"28166675_1679479695452286_4679760645294428842_n_large-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:65:\"28166675_1679479695452286_4679760645294428842_n_large-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (648, 23, '_thumbnail_id', '20');
INSERT INTO `wp_postmeta` VALUES (649, 24, '_thumbnail_id', '37');
INSERT INTO `wp_postmeta` VALUES (650, 25, '_thumbnail_id', '20');
INSERT INTO `wp_postmeta` VALUES (651, 26, '_thumbnail_id', '37');
INSERT INTO `wp_postmeta` VALUES (652, 27, '_thumbnail_id', '20');
INSERT INTO `wp_postmeta` VALUES (653, 28, '_thumbnail_id', '37');
INSERT INTO `wp_postmeta` VALUES (654, 29, '_thumbnail_id', '20');
INSERT INTO `wp_postmeta` VALUES (655, 30, '_thumbnail_id', '37');
INSERT INTO `wp_postmeta` VALUES (656, 31, '_thumbnail_id', '20');
INSERT INTO `wp_postmeta` VALUES (657, 32, '_thumbnail_id', '37');
INSERT INTO `wp_postmeta` VALUES (658, 33, '_thumbnail_id', '20');
INSERT INTO `wp_postmeta` VALUES (659, 34, '_thumbnail_id', '37');
INSERT INTO `wp_postmeta` VALUES (660, 35, '_thumbnail_id', '20');
INSERT INTO `wp_postmeta` VALUES (661, 36, '_thumbnail_id', '37');
INSERT INTO `wp_postmeta` VALUES (662, 19, '_thumbnail_id', '20');
INSERT INTO `wp_postmeta` VALUES (663, 38, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (664, 38, '_edit_lock', '1521612965:1');
INSERT INTO `wp_postmeta` VALUES (665, 38, '_wp_old_slug', 'quan-ao');
INSERT INTO `wp_postmeta` VALUES (666, 18, '_wp_trash_meta_status', 'draft');
INSERT INTO `wp_postmeta` VALUES (667, 18, '_wp_trash_meta_time', '1521612190');
INSERT INTO `wp_postmeta` VALUES (668, 18, '_wp_desired_post_slug', '');
INSERT INTO `wp_postmeta` VALUES (2719, 25, '_ywpo_preorder', 'no');
INSERT INTO `wp_postmeta` VALUES (2720, 25, '_ywpo_preorder_label', '');
INSERT INTO `wp_postmeta` VALUES (2721, 25, '_ywpo_preorder_price', '');
INSERT INTO `wp_postmeta` VALUES (2722, 25, '_ywpo_price_adjustment_amount', '');
INSERT INTO `wp_postmeta` VALUES (2723, 25, '_ywpo_price_adjustment', 'manual');
INSERT INTO `wp_postmeta` VALUES (2724, 25, '_ywpo_adjustment_type', 'fixed');
INSERT INTO `wp_postmeta` VALUES (2725, 26, '_ywpo_preorder', 'no');
INSERT INTO `wp_postmeta` VALUES (2726, 26, '_ywpo_preorder_label', '');
INSERT INTO `wp_postmeta` VALUES (2727, 26, '_ywpo_preorder_price', '');
INSERT INTO `wp_postmeta` VALUES (2728, 26, '_ywpo_price_adjustment_amount', '');
INSERT INTO `wp_postmeta` VALUES (2729, 26, '_ywpo_price_adjustment', 'manual');
INSERT INTO `wp_postmeta` VALUES (2730, 26, '_ywpo_adjustment_type', 'fixed');
INSERT INTO `wp_postmeta` VALUES (2731, 23, '_ywpo_preorder', 'no');
INSERT INTO `wp_postmeta` VALUES (2732, 23, '_ywpo_preorder_label', '');
INSERT INTO `wp_postmeta` VALUES (2733, 23, '_ywpo_preorder_price', '');
INSERT INTO `wp_postmeta` VALUES (2734, 23, '_ywpo_price_adjustment_amount', '');
INSERT INTO `wp_postmeta` VALUES (2735, 23, '_ywpo_price_adjustment', 'manual');
INSERT INTO `wp_postmeta` VALUES (2736, 23, '_ywpo_adjustment_type', 'fixed');
INSERT INTO `wp_postmeta` VALUES (2737, 24, '_ywpo_preorder', 'no');
INSERT INTO `wp_postmeta` VALUES (2738, 24, '_ywpo_preorder_label', '');
INSERT INTO `wp_postmeta` VALUES (2739, 24, '_ywpo_preorder_price', '');
INSERT INTO `wp_postmeta` VALUES (2740, 24, '_ywpo_price_adjustment_amount', '');
INSERT INTO `wp_postmeta` VALUES (2741, 24, '_ywpo_price_adjustment', 'manual');
INSERT INTO `wp_postmeta` VALUES (2742, 24, '_ywpo_adjustment_type', 'fixed');
INSERT INTO `wp_postmeta` VALUES (2743, 33, '_ywpo_preorder', 'no');
INSERT INTO `wp_postmeta` VALUES (2744, 33, '_ywpo_preorder_label', '');
INSERT INTO `wp_postmeta` VALUES (2745, 33, '_ywpo_preorder_price', '');
INSERT INTO `wp_postmeta` VALUES (2746, 33, '_ywpo_price_adjustment_amount', '');
INSERT INTO `wp_postmeta` VALUES (2747, 33, '_ywpo_price_adjustment', 'manual');
INSERT INTO `wp_postmeta` VALUES (2748, 33, '_ywpo_adjustment_type', 'fixed');
INSERT INTO `wp_postmeta` VALUES (2749, 34, '_ywpo_preorder', 'no');
INSERT INTO `wp_postmeta` VALUES (2750, 34, '_ywpo_preorder_label', '');
INSERT INTO `wp_postmeta` VALUES (2751, 34, '_ywpo_preorder_price', '');
INSERT INTO `wp_postmeta` VALUES (2752, 34, '_ywpo_price_adjustment_amount', '');
INSERT INTO `wp_postmeta` VALUES (2753, 34, '_ywpo_price_adjustment', 'manual');
INSERT INTO `wp_postmeta` VALUES (2754, 34, '_ywpo_adjustment_type', 'fixed');
INSERT INTO `wp_postmeta` VALUES (2755, 27, '_ywpo_preorder', 'no');
INSERT INTO `wp_postmeta` VALUES (2756, 27, '_ywpo_preorder_label', '');
INSERT INTO `wp_postmeta` VALUES (2757, 27, '_ywpo_preorder_price', '');
INSERT INTO `wp_postmeta` VALUES (2758, 27, '_ywpo_price_adjustment_amount', '');
INSERT INTO `wp_postmeta` VALUES (2759, 27, '_ywpo_price_adjustment', 'manual');
INSERT INTO `wp_postmeta` VALUES (2760, 27, '_ywpo_adjustment_type', 'fixed');
INSERT INTO `wp_postmeta` VALUES (2761, 28, '_ywpo_preorder', 'no');
INSERT INTO `wp_postmeta` VALUES (2762, 28, '_ywpo_preorder_label', '');
INSERT INTO `wp_postmeta` VALUES (2763, 28, '_ywpo_preorder_price', '');
INSERT INTO `wp_postmeta` VALUES (2764, 28, '_ywpo_price_adjustment_amount', '');
INSERT INTO `wp_postmeta` VALUES (2765, 28, '_ywpo_price_adjustment', 'manual');
INSERT INTO `wp_postmeta` VALUES (2766, 28, '_ywpo_adjustment_type', 'fixed');
INSERT INTO `wp_postmeta` VALUES (2767, 29, '_ywpo_preorder', 'no');
INSERT INTO `wp_postmeta` VALUES (2768, 29, '_ywpo_preorder_label', '');
INSERT INTO `wp_postmeta` VALUES (2769, 29, '_ywpo_preorder_price', '');
INSERT INTO `wp_postmeta` VALUES (2770, 29, '_ywpo_price_adjustment_amount', '');
INSERT INTO `wp_postmeta` VALUES (2771, 29, '_ywpo_price_adjustment', 'manual');
INSERT INTO `wp_postmeta` VALUES (2772, 29, '_ywpo_adjustment_type', 'fixed');
INSERT INTO `wp_postmeta` VALUES (2773, 30, '_ywpo_preorder', 'no');
INSERT INTO `wp_postmeta` VALUES (2774, 30, '_ywpo_preorder_label', '');
INSERT INTO `wp_postmeta` VALUES (2775, 30, '_ywpo_preorder_price', '');
INSERT INTO `wp_postmeta` VALUES (2776, 30, '_ywpo_price_adjustment_amount', '');
INSERT INTO `wp_postmeta` VALUES (2777, 30, '_ywpo_price_adjustment', 'manual');
INSERT INTO `wp_postmeta` VALUES (2778, 30, '_ywpo_adjustment_type', 'fixed');
INSERT INTO `wp_postmeta` VALUES (2779, 31, '_ywpo_preorder', 'no');
INSERT INTO `wp_postmeta` VALUES (2780, 31, '_ywpo_preorder_label', '');
INSERT INTO `wp_postmeta` VALUES (2781, 31, '_ywpo_preorder_price', '');
INSERT INTO `wp_postmeta` VALUES (2782, 31, '_ywpo_price_adjustment_amount', '');
INSERT INTO `wp_postmeta` VALUES (2783, 31, '_ywpo_price_adjustment', 'manual');
INSERT INTO `wp_postmeta` VALUES (2784, 31, '_ywpo_adjustment_type', 'fixed');
INSERT INTO `wp_postmeta` VALUES (2785, 32, '_ywpo_preorder', 'no');
INSERT INTO `wp_postmeta` VALUES (2786, 32, '_ywpo_preorder_label', '');
INSERT INTO `wp_postmeta` VALUES (2787, 32, '_ywpo_preorder_price', '');
INSERT INTO `wp_postmeta` VALUES (2788, 32, '_ywpo_price_adjustment_amount', '');
INSERT INTO `wp_postmeta` VALUES (2789, 32, '_ywpo_price_adjustment', 'manual');
INSERT INTO `wp_postmeta` VALUES (2790, 32, '_ywpo_adjustment_type', 'fixed');
INSERT INTO `wp_postmeta` VALUES (2791, 35, '_ywpo_preorder', 'no');
INSERT INTO `wp_postmeta` VALUES (2792, 35, '_ywpo_preorder_label', '');
INSERT INTO `wp_postmeta` VALUES (2793, 35, '_ywpo_preorder_price', '');
INSERT INTO `wp_postmeta` VALUES (2794, 35, '_ywpo_price_adjustment_amount', '');
INSERT INTO `wp_postmeta` VALUES (2795, 35, '_ywpo_price_adjustment', 'manual');
INSERT INTO `wp_postmeta` VALUES (2796, 35, '_ywpo_adjustment_type', 'fixed');
INSERT INTO `wp_postmeta` VALUES (2797, 36, '_ywpo_preorder', 'no');
INSERT INTO `wp_postmeta` VALUES (2798, 36, '_ywpo_preorder_label', '');
INSERT INTO `wp_postmeta` VALUES (2799, 36, '_ywpo_preorder_price', '');
INSERT INTO `wp_postmeta` VALUES (2800, 36, '_ywpo_price_adjustment_amount', '');
INSERT INTO `wp_postmeta` VALUES (2801, 36, '_ywpo_price_adjustment', 'manual');
INSERT INTO `wp_postmeta` VALUES (2802, 36, '_ywpo_adjustment_type', 'fixed');
INSERT INTO `wp_postmeta` VALUES (2803, 35, '_wp_trash_meta_status', 'private');
INSERT INTO `wp_postmeta` VALUES (2804, 35, '_wp_trash_meta_time', '1521703195');
INSERT INTO `wp_postmeta` VALUES (2805, 35, '_wp_desired_post_slug', 'ao-lining-aplk373-13');
INSERT INTO `wp_postmeta` VALUES (2806, 36, '_wp_trash_meta_status', 'private');
INSERT INTO `wp_postmeta` VALUES (2807, 36, '_wp_trash_meta_time', '1521703195');
INSERT INTO `wp_postmeta` VALUES (2808, 36, '_wp_desired_post_slug', 'ao-lining-aplk373-14');
INSERT INTO `wp_postmeta` VALUES (2809, 25, '_wp_trash_meta_status', 'private');
INSERT INTO `wp_postmeta` VALUES (2810, 25, '_wp_trash_meta_time', '1521703195');
INSERT INTO `wp_postmeta` VALUES (2811, 25, '_wp_desired_post_slug', 'ao-lining-aplk373-3');
INSERT INTO `wp_postmeta` VALUES (2812, 26, '_wp_trash_meta_status', 'private');
INSERT INTO `wp_postmeta` VALUES (2813, 26, '_wp_trash_meta_time', '1521703195');
INSERT INTO `wp_postmeta` VALUES (2814, 26, '_wp_desired_post_slug', 'ao-lining-aplk373-4');
INSERT INTO `wp_postmeta` VALUES (2815, 27, '_wp_trash_meta_status', 'private');
INSERT INTO `wp_postmeta` VALUES (2816, 27, '_wp_trash_meta_time', '1521703195');
INSERT INTO `wp_postmeta` VALUES (2817, 27, '_wp_desired_post_slug', 'ao-lining-aplk373-5');
INSERT INTO `wp_postmeta` VALUES (2818, 28, '_wp_trash_meta_status', 'private');
INSERT INTO `wp_postmeta` VALUES (2819, 28, '_wp_trash_meta_time', '1521703195');
INSERT INTO `wp_postmeta` VALUES (2820, 28, '_wp_desired_post_slug', 'ao-lining-aplk373-6');
INSERT INTO `wp_postmeta` VALUES (2821, 29, '_wp_trash_meta_status', 'private');
INSERT INTO `wp_postmeta` VALUES (2822, 29, '_wp_trash_meta_time', '1521703195');
INSERT INTO `wp_postmeta` VALUES (2823, 29, '_wp_desired_post_slug', 'ao-lining-aplk373-7');
INSERT INTO `wp_postmeta` VALUES (2824, 30, '_wp_trash_meta_status', 'private');
INSERT INTO `wp_postmeta` VALUES (2825, 30, '_wp_trash_meta_time', '1521703195');
INSERT INTO `wp_postmeta` VALUES (2826, 30, '_wp_desired_post_slug', 'ao-lining-aplk373-8');
INSERT INTO `wp_postmeta` VALUES (2827, 31, '_wp_trash_meta_status', 'private');
INSERT INTO `wp_postmeta` VALUES (2828, 31, '_wp_trash_meta_time', '1521703195');
INSERT INTO `wp_postmeta` VALUES (2829, 31, '_wp_desired_post_slug', 'ao-lining-aplk373-9');
INSERT INTO `wp_postmeta` VALUES (2830, 32, '_wp_trash_meta_status', 'private');
INSERT INTO `wp_postmeta` VALUES (2831, 32, '_wp_trash_meta_time', '1521703195');
INSERT INTO `wp_postmeta` VALUES (2832, 32, '_wp_desired_post_slug', 'ao-lining-aplk373-10');
INSERT INTO `wp_postmeta` VALUES (2833, 33, '_wp_trash_meta_status', 'private');
INSERT INTO `wp_postmeta` VALUES (2834, 33, '_wp_trash_meta_time', '1521703195');
INSERT INTO `wp_postmeta` VALUES (2835, 33, '_wp_desired_post_slug', 'ao-lining-aplk373-11');
INSERT INTO `wp_postmeta` VALUES (2836, 34, '_wp_trash_meta_status', 'private');
INSERT INTO `wp_postmeta` VALUES (2837, 34, '_wp_trash_meta_time', '1521703195');
INSERT INTO `wp_postmeta` VALUES (2838, 34, '_wp_desired_post_slug', 'ao-lining-aplk373-12');
INSERT INTO `wp_postmeta` VALUES (2839, 23, '_wp_trash_meta_status', 'private');
INSERT INTO `wp_postmeta` VALUES (2840, 23, '_wp_trash_meta_time', '1521703195');
INSERT INTO `wp_postmeta` VALUES (2841, 23, '_wp_desired_post_slug', 'ao-lining-aplk373');
INSERT INTO `wp_postmeta` VALUES (2842, 24, '_wp_trash_meta_status', 'private');
INSERT INTO `wp_postmeta` VALUES (2843, 24, '_wp_trash_meta_time', '1521703195');
INSERT INTO `wp_postmeta` VALUES (2844, 24, '_wp_desired_post_slug', 'ao-lining-aplk373-2');
INSERT INTO `wp_postmeta` VALUES (2846, 48, '_variation_description', '');
INSERT INTO `wp_postmeta` VALUES (2847, 48, '_sku', '');
INSERT INTO `wp_postmeta` VALUES (2848, 48, '_regular_price', '580000');
INSERT INTO `wp_postmeta` VALUES (2849, 48, '_sale_price', '450000');
INSERT INTO `wp_postmeta` VALUES (2850, 48, '_sale_price_dates_from', '');
INSERT INTO `wp_postmeta` VALUES (2851, 48, '_sale_price_dates_to', '');
INSERT INTO `wp_postmeta` VALUES (2852, 48, 'total_sales', '0');
INSERT INTO `wp_postmeta` VALUES (2853, 48, '_tax_status', 'taxable');
INSERT INTO `wp_postmeta` VALUES (2854, 48, '_tax_class', 'parent');
INSERT INTO `wp_postmeta` VALUES (2855, 48, '_manage_stock', 'no');
INSERT INTO `wp_postmeta` VALUES (2856, 48, '_backorders', 'no');
INSERT INTO `wp_postmeta` VALUES (2857, 48, '_sold_individually', 'no');
INSERT INTO `wp_postmeta` VALUES (2858, 48, '_weight', '');
INSERT INTO `wp_postmeta` VALUES (2859, 48, '_length', '');
INSERT INTO `wp_postmeta` VALUES (2860, 48, '_width', '');
INSERT INTO `wp_postmeta` VALUES (2861, 48, '_height', '');
INSERT INTO `wp_postmeta` VALUES (2862, 48, '_upsell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (2863, 48, '_crosssell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (2864, 48, '_purchase_note', '');
INSERT INTO `wp_postmeta` VALUES (2865, 48, '_default_attributes', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (2866, 48, '_virtual', 'no');
INSERT INTO `wp_postmeta` VALUES (2867, 48, '_downloadable', 'no');
INSERT INTO `wp_postmeta` VALUES (2868, 48, '_product_image_gallery', '');
INSERT INTO `wp_postmeta` VALUES (2869, 48, '_download_limit', '-1');
INSERT INTO `wp_postmeta` VALUES (2870, 48, '_download_expiry', '-1');
INSERT INTO `wp_postmeta` VALUES (2871, 48, '_stock', NULL);
INSERT INTO `wp_postmeta` VALUES (2872, 48, '_stock_status', 'instock');
INSERT INTO `wp_postmeta` VALUES (2873, 48, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (2874, 48, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (2875, 48, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (2876, 48, '_downloadable_files', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (2877, 48, 'attribute_pa_mau-sac', 'den');
INSERT INTO `wp_postmeta` VALUES (2878, 48, 'attribute_pa_kich-thuoc', '2xl');
INSERT INTO `wp_postmeta` VALUES (2879, 48, '_price', '450000');
INSERT INTO `wp_postmeta` VALUES (2880, 48, '_product_version', '3.3.4');
INSERT INTO `wp_postmeta` VALUES (2881, 49, '_variation_description', '');
INSERT INTO `wp_postmeta` VALUES (2882, 49, '_sku', '');
INSERT INTO `wp_postmeta` VALUES (2883, 49, '_regular_price', '580000');
INSERT INTO `wp_postmeta` VALUES (2884, 49, '_sale_price', '450000');
INSERT INTO `wp_postmeta` VALUES (2885, 49, '_sale_price_dates_from', '');
INSERT INTO `wp_postmeta` VALUES (2886, 49, '_sale_price_dates_to', '');
INSERT INTO `wp_postmeta` VALUES (2887, 49, 'total_sales', '0');
INSERT INTO `wp_postmeta` VALUES (2888, 49, '_tax_status', 'taxable');
INSERT INTO `wp_postmeta` VALUES (2889, 49, '_tax_class', 'parent');
INSERT INTO `wp_postmeta` VALUES (2890, 49, '_manage_stock', 'no');
INSERT INTO `wp_postmeta` VALUES (2891, 49, '_backorders', 'no');
INSERT INTO `wp_postmeta` VALUES (2892, 49, '_sold_individually', 'no');
INSERT INTO `wp_postmeta` VALUES (2893, 49, '_weight', '');
INSERT INTO `wp_postmeta` VALUES (2894, 49, '_length', '');
INSERT INTO `wp_postmeta` VALUES (2895, 49, '_width', '');
INSERT INTO `wp_postmeta` VALUES (2896, 49, '_height', '');
INSERT INTO `wp_postmeta` VALUES (2897, 49, '_upsell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (2898, 49, '_crosssell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (2899, 49, '_purchase_note', '');
INSERT INTO `wp_postmeta` VALUES (2900, 49, '_default_attributes', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (2901, 49, '_virtual', 'no');
INSERT INTO `wp_postmeta` VALUES (2902, 49, '_downloadable', 'no');
INSERT INTO `wp_postmeta` VALUES (2903, 49, '_product_image_gallery', '');
INSERT INTO `wp_postmeta` VALUES (2904, 49, '_download_limit', '-1');
INSERT INTO `wp_postmeta` VALUES (2905, 49, '_download_expiry', '-1');
INSERT INTO `wp_postmeta` VALUES (2906, 49, '_stock', NULL);
INSERT INTO `wp_postmeta` VALUES (2907, 49, '_stock_status', 'instock');
INSERT INTO `wp_postmeta` VALUES (2908, 49, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (2909, 49, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (2910, 49, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (2911, 49, '_downloadable_files', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (2912, 49, 'attribute_pa_mau-sac', 'trang');
INSERT INTO `wp_postmeta` VALUES (2913, 49, 'attribute_pa_kich-thuoc', '2xl');
INSERT INTO `wp_postmeta` VALUES (2914, 49, '_price', '450000');
INSERT INTO `wp_postmeta` VALUES (2915, 49, '_product_version', '3.3.4');
INSERT INTO `wp_postmeta` VALUES (2916, 50, '_variation_description', '');
INSERT INTO `wp_postmeta` VALUES (2917, 50, '_sku', '');
INSERT INTO `wp_postmeta` VALUES (2918, 50, '_regular_price', '580000');
INSERT INTO `wp_postmeta` VALUES (2919, 50, '_sale_price', '450000');
INSERT INTO `wp_postmeta` VALUES (2920, 50, '_sale_price_dates_from', '');
INSERT INTO `wp_postmeta` VALUES (2921, 50, '_sale_price_dates_to', '');
INSERT INTO `wp_postmeta` VALUES (2922, 50, 'total_sales', '0');
INSERT INTO `wp_postmeta` VALUES (2923, 50, '_tax_status', 'taxable');
INSERT INTO `wp_postmeta` VALUES (2924, 50, '_tax_class', 'parent');
INSERT INTO `wp_postmeta` VALUES (2925, 50, '_manage_stock', 'no');
INSERT INTO `wp_postmeta` VALUES (2926, 50, '_backorders', 'no');
INSERT INTO `wp_postmeta` VALUES (2927, 50, '_sold_individually', 'no');
INSERT INTO `wp_postmeta` VALUES (2928, 50, '_weight', '');
INSERT INTO `wp_postmeta` VALUES (2929, 50, '_length', '');
INSERT INTO `wp_postmeta` VALUES (2930, 50, '_width', '');
INSERT INTO `wp_postmeta` VALUES (2931, 50, '_height', '');
INSERT INTO `wp_postmeta` VALUES (2932, 50, '_upsell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (2933, 50, '_crosssell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (2934, 50, '_purchase_note', '');
INSERT INTO `wp_postmeta` VALUES (2935, 50, '_default_attributes', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (2936, 50, '_virtual', 'no');
INSERT INTO `wp_postmeta` VALUES (2937, 50, '_downloadable', 'no');
INSERT INTO `wp_postmeta` VALUES (2938, 50, '_product_image_gallery', '');
INSERT INTO `wp_postmeta` VALUES (2939, 50, '_download_limit', '-1');
INSERT INTO `wp_postmeta` VALUES (2940, 50, '_download_expiry', '-1');
INSERT INTO `wp_postmeta` VALUES (2941, 50, '_stock', NULL);
INSERT INTO `wp_postmeta` VALUES (2942, 50, '_stock_status', 'instock');
INSERT INTO `wp_postmeta` VALUES (2943, 50, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (2944, 50, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (2945, 50, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (2946, 50, '_downloadable_files', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (2947, 50, 'attribute_pa_mau-sac', 'den');
INSERT INTO `wp_postmeta` VALUES (2948, 50, 'attribute_pa_kich-thuoc', '3xl');
INSERT INTO `wp_postmeta` VALUES (2949, 50, '_price', '450000');
INSERT INTO `wp_postmeta` VALUES (2950, 50, '_product_version', '3.3.4');
INSERT INTO `wp_postmeta` VALUES (2951, 51, '_variation_description', '');
INSERT INTO `wp_postmeta` VALUES (2952, 51, '_sku', '');
INSERT INTO `wp_postmeta` VALUES (2953, 51, '_regular_price', '580000');
INSERT INTO `wp_postmeta` VALUES (2954, 51, '_sale_price', '450000');
INSERT INTO `wp_postmeta` VALUES (2955, 51, '_sale_price_dates_from', '');
INSERT INTO `wp_postmeta` VALUES (2956, 51, '_sale_price_dates_to', '');
INSERT INTO `wp_postmeta` VALUES (2957, 51, 'total_sales', '0');
INSERT INTO `wp_postmeta` VALUES (2958, 51, '_tax_status', 'taxable');
INSERT INTO `wp_postmeta` VALUES (2959, 51, '_tax_class', 'parent');
INSERT INTO `wp_postmeta` VALUES (2960, 51, '_manage_stock', 'no');
INSERT INTO `wp_postmeta` VALUES (2961, 51, '_backorders', 'no');
INSERT INTO `wp_postmeta` VALUES (2962, 51, '_sold_individually', 'no');
INSERT INTO `wp_postmeta` VALUES (2963, 51, '_weight', '');
INSERT INTO `wp_postmeta` VALUES (2964, 51, '_length', '');
INSERT INTO `wp_postmeta` VALUES (2965, 51, '_width', '');
INSERT INTO `wp_postmeta` VALUES (2966, 51, '_height', '');
INSERT INTO `wp_postmeta` VALUES (2967, 51, '_upsell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (2968, 51, '_crosssell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (2969, 51, '_purchase_note', '');
INSERT INTO `wp_postmeta` VALUES (2970, 51, '_default_attributes', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (2971, 51, '_virtual', 'no');
INSERT INTO `wp_postmeta` VALUES (2972, 51, '_downloadable', 'no');
INSERT INTO `wp_postmeta` VALUES (2973, 51, '_product_image_gallery', '');
INSERT INTO `wp_postmeta` VALUES (2974, 51, '_download_limit', '-1');
INSERT INTO `wp_postmeta` VALUES (2975, 51, '_download_expiry', '-1');
INSERT INTO `wp_postmeta` VALUES (2976, 51, '_stock', NULL);
INSERT INTO `wp_postmeta` VALUES (2977, 51, '_stock_status', 'instock');
INSERT INTO `wp_postmeta` VALUES (2978, 51, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (2979, 51, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (2980, 51, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (2981, 51, '_downloadable_files', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (2982, 51, 'attribute_pa_mau-sac', 'trang');
INSERT INTO `wp_postmeta` VALUES (2983, 51, 'attribute_pa_kich-thuoc', '3xl');
INSERT INTO `wp_postmeta` VALUES (2984, 51, '_price', '450000');
INSERT INTO `wp_postmeta` VALUES (2985, 51, '_product_version', '3.3.4');
INSERT INTO `wp_postmeta` VALUES (2986, 52, '_variation_description', '');
INSERT INTO `wp_postmeta` VALUES (2987, 52, '_sku', '');
INSERT INTO `wp_postmeta` VALUES (2988, 52, '_regular_price', '580000');
INSERT INTO `wp_postmeta` VALUES (2989, 52, '_sale_price', '450000');
INSERT INTO `wp_postmeta` VALUES (2990, 52, '_sale_price_dates_from', '');
INSERT INTO `wp_postmeta` VALUES (2991, 52, '_sale_price_dates_to', '');
INSERT INTO `wp_postmeta` VALUES (2992, 52, 'total_sales', '0');
INSERT INTO `wp_postmeta` VALUES (2993, 52, '_tax_status', 'taxable');
INSERT INTO `wp_postmeta` VALUES (2994, 52, '_tax_class', 'parent');
INSERT INTO `wp_postmeta` VALUES (2995, 52, '_manage_stock', 'no');
INSERT INTO `wp_postmeta` VALUES (2996, 52, '_backorders', 'no');
INSERT INTO `wp_postmeta` VALUES (2997, 52, '_sold_individually', 'no');
INSERT INTO `wp_postmeta` VALUES (2998, 52, '_weight', '');
INSERT INTO `wp_postmeta` VALUES (2999, 52, '_length', '');
INSERT INTO `wp_postmeta` VALUES (3000, 52, '_width', '');
INSERT INTO `wp_postmeta` VALUES (3001, 52, '_height', '');
INSERT INTO `wp_postmeta` VALUES (3002, 52, '_upsell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3003, 52, '_crosssell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3004, 52, '_purchase_note', '');
INSERT INTO `wp_postmeta` VALUES (3005, 52, '_default_attributes', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3006, 52, '_virtual', 'no');
INSERT INTO `wp_postmeta` VALUES (3007, 52, '_downloadable', 'no');
INSERT INTO `wp_postmeta` VALUES (3008, 52, '_product_image_gallery', '');
INSERT INTO `wp_postmeta` VALUES (3009, 52, '_download_limit', '-1');
INSERT INTO `wp_postmeta` VALUES (3010, 52, '_download_expiry', '-1');
INSERT INTO `wp_postmeta` VALUES (3011, 52, '_stock', NULL);
INSERT INTO `wp_postmeta` VALUES (3012, 52, '_stock_status', 'instock');
INSERT INTO `wp_postmeta` VALUES (3013, 52, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (3014, 52, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3015, 52, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (3016, 52, '_downloadable_files', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3017, 52, 'attribute_pa_mau-sac', 'den');
INSERT INTO `wp_postmeta` VALUES (3018, 52, 'attribute_pa_kich-thuoc', 'xl');
INSERT INTO `wp_postmeta` VALUES (3019, 52, '_price', '450000');
INSERT INTO `wp_postmeta` VALUES (3020, 52, '_product_version', '3.3.4');
INSERT INTO `wp_postmeta` VALUES (3021, 53, '_variation_description', '');
INSERT INTO `wp_postmeta` VALUES (3022, 53, '_sku', '');
INSERT INTO `wp_postmeta` VALUES (3023, 53, '_regular_price', '580000');
INSERT INTO `wp_postmeta` VALUES (3024, 53, '_sale_price', '450000');
INSERT INTO `wp_postmeta` VALUES (3025, 53, '_sale_price_dates_from', '');
INSERT INTO `wp_postmeta` VALUES (3026, 53, '_sale_price_dates_to', '');
INSERT INTO `wp_postmeta` VALUES (3027, 53, 'total_sales', '0');
INSERT INTO `wp_postmeta` VALUES (3028, 53, '_tax_status', 'taxable');
INSERT INTO `wp_postmeta` VALUES (3029, 53, '_tax_class', 'parent');
INSERT INTO `wp_postmeta` VALUES (3030, 53, '_manage_stock', 'no');
INSERT INTO `wp_postmeta` VALUES (3031, 53, '_backorders', 'no');
INSERT INTO `wp_postmeta` VALUES (3032, 53, '_sold_individually', 'no');
INSERT INTO `wp_postmeta` VALUES (3033, 53, '_weight', '');
INSERT INTO `wp_postmeta` VALUES (3034, 53, '_length', '');
INSERT INTO `wp_postmeta` VALUES (3035, 53, '_width', '');
INSERT INTO `wp_postmeta` VALUES (3036, 53, '_height', '');
INSERT INTO `wp_postmeta` VALUES (3037, 53, '_upsell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3038, 53, '_crosssell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3039, 53, '_purchase_note', '');
INSERT INTO `wp_postmeta` VALUES (3040, 53, '_default_attributes', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3041, 53, '_virtual', 'no');
INSERT INTO `wp_postmeta` VALUES (3042, 53, '_downloadable', 'no');
INSERT INTO `wp_postmeta` VALUES (3043, 53, '_product_image_gallery', '');
INSERT INTO `wp_postmeta` VALUES (3044, 53, '_download_limit', '-1');
INSERT INTO `wp_postmeta` VALUES (3045, 53, '_download_expiry', '-1');
INSERT INTO `wp_postmeta` VALUES (3046, 53, '_stock', NULL);
INSERT INTO `wp_postmeta` VALUES (3047, 53, '_stock_status', 'instock');
INSERT INTO `wp_postmeta` VALUES (3048, 53, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (3049, 53, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3050, 53, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (3051, 53, '_downloadable_files', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3052, 53, 'attribute_pa_mau-sac', 'trang');
INSERT INTO `wp_postmeta` VALUES (3053, 53, 'attribute_pa_kich-thuoc', 'xl');
INSERT INTO `wp_postmeta` VALUES (3054, 53, '_price', '450000');
INSERT INTO `wp_postmeta` VALUES (3055, 53, '_product_version', '3.3.4');
INSERT INTO `wp_postmeta` VALUES (3056, 54, '_variation_description', '');
INSERT INTO `wp_postmeta` VALUES (3057, 54, '_sku', '');
INSERT INTO `wp_postmeta` VALUES (3058, 54, '_regular_price', '580000');
INSERT INTO `wp_postmeta` VALUES (3059, 54, '_sale_price', '450000');
INSERT INTO `wp_postmeta` VALUES (3060, 54, '_sale_price_dates_from', '');
INSERT INTO `wp_postmeta` VALUES (3061, 54, '_sale_price_dates_to', '');
INSERT INTO `wp_postmeta` VALUES (3062, 54, 'total_sales', '0');
INSERT INTO `wp_postmeta` VALUES (3063, 54, '_tax_status', 'taxable');
INSERT INTO `wp_postmeta` VALUES (3064, 54, '_tax_class', 'parent');
INSERT INTO `wp_postmeta` VALUES (3065, 54, '_manage_stock', 'no');
INSERT INTO `wp_postmeta` VALUES (3066, 54, '_backorders', 'no');
INSERT INTO `wp_postmeta` VALUES (3067, 54, '_sold_individually', 'no');
INSERT INTO `wp_postmeta` VALUES (3068, 54, '_weight', '');
INSERT INTO `wp_postmeta` VALUES (3069, 54, '_length', '');
INSERT INTO `wp_postmeta` VALUES (3070, 54, '_width', '');
INSERT INTO `wp_postmeta` VALUES (3071, 54, '_height', '');
INSERT INTO `wp_postmeta` VALUES (3072, 54, '_upsell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3073, 54, '_crosssell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3074, 54, '_purchase_note', '');
INSERT INTO `wp_postmeta` VALUES (3075, 54, '_default_attributes', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3076, 54, '_virtual', 'no');
INSERT INTO `wp_postmeta` VALUES (3077, 54, '_downloadable', 'no');
INSERT INTO `wp_postmeta` VALUES (3078, 54, '_product_image_gallery', '');
INSERT INTO `wp_postmeta` VALUES (3079, 54, '_download_limit', '-1');
INSERT INTO `wp_postmeta` VALUES (3080, 54, '_download_expiry', '-1');
INSERT INTO `wp_postmeta` VALUES (3081, 54, '_stock', NULL);
INSERT INTO `wp_postmeta` VALUES (3082, 54, '_stock_status', 'instock');
INSERT INTO `wp_postmeta` VALUES (3083, 54, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (3084, 54, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3085, 54, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (3086, 54, '_downloadable_files', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3087, 54, 'attribute_pa_mau-sac', 'den');
INSERT INTO `wp_postmeta` VALUES (3088, 54, 'attribute_pa_kich-thuoc', 'l');
INSERT INTO `wp_postmeta` VALUES (3089, 54, '_price', '450000');
INSERT INTO `wp_postmeta` VALUES (3090, 54, '_product_version', '3.3.4');
INSERT INTO `wp_postmeta` VALUES (3091, 55, '_variation_description', '');
INSERT INTO `wp_postmeta` VALUES (3092, 55, '_sku', '');
INSERT INTO `wp_postmeta` VALUES (3093, 55, '_regular_price', '580000');
INSERT INTO `wp_postmeta` VALUES (3094, 55, '_sale_price', '450000');
INSERT INTO `wp_postmeta` VALUES (3095, 55, '_sale_price_dates_from', '');
INSERT INTO `wp_postmeta` VALUES (3096, 55, '_sale_price_dates_to', '');
INSERT INTO `wp_postmeta` VALUES (3097, 55, 'total_sales', '0');
INSERT INTO `wp_postmeta` VALUES (3098, 55, '_tax_status', 'taxable');
INSERT INTO `wp_postmeta` VALUES (3099, 55, '_tax_class', 'parent');
INSERT INTO `wp_postmeta` VALUES (3100, 55, '_manage_stock', 'no');
INSERT INTO `wp_postmeta` VALUES (3101, 55, '_backorders', 'no');
INSERT INTO `wp_postmeta` VALUES (3102, 55, '_sold_individually', 'no');
INSERT INTO `wp_postmeta` VALUES (3103, 55, '_weight', '');
INSERT INTO `wp_postmeta` VALUES (3104, 55, '_length', '');
INSERT INTO `wp_postmeta` VALUES (3105, 55, '_width', '');
INSERT INTO `wp_postmeta` VALUES (3106, 55, '_height', '');
INSERT INTO `wp_postmeta` VALUES (3107, 55, '_upsell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3108, 55, '_crosssell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3109, 55, '_purchase_note', '');
INSERT INTO `wp_postmeta` VALUES (3110, 55, '_default_attributes', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3111, 55, '_virtual', 'no');
INSERT INTO `wp_postmeta` VALUES (3112, 55, '_downloadable', 'no');
INSERT INTO `wp_postmeta` VALUES (3113, 55, '_product_image_gallery', '');
INSERT INTO `wp_postmeta` VALUES (3114, 55, '_download_limit', '-1');
INSERT INTO `wp_postmeta` VALUES (3115, 55, '_download_expiry', '-1');
INSERT INTO `wp_postmeta` VALUES (3116, 55, '_stock', NULL);
INSERT INTO `wp_postmeta` VALUES (3117, 55, '_stock_status', 'instock');
INSERT INTO `wp_postmeta` VALUES (3118, 55, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (3119, 55, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3120, 55, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (3121, 55, '_downloadable_files', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3122, 55, 'attribute_pa_mau-sac', 'trang');
INSERT INTO `wp_postmeta` VALUES (3123, 55, 'attribute_pa_kich-thuoc', 'l');
INSERT INTO `wp_postmeta` VALUES (3124, 55, '_price', '450000');
INSERT INTO `wp_postmeta` VALUES (3125, 55, '_product_version', '3.3.4');
INSERT INTO `wp_postmeta` VALUES (3126, 56, '_variation_description', '');
INSERT INTO `wp_postmeta` VALUES (3127, 56, '_sku', '');
INSERT INTO `wp_postmeta` VALUES (3128, 56, '_regular_price', '580000');
INSERT INTO `wp_postmeta` VALUES (3129, 56, '_sale_price', '450000');
INSERT INTO `wp_postmeta` VALUES (3130, 56, '_sale_price_dates_from', '');
INSERT INTO `wp_postmeta` VALUES (3131, 56, '_sale_price_dates_to', '');
INSERT INTO `wp_postmeta` VALUES (3132, 56, 'total_sales', '0');
INSERT INTO `wp_postmeta` VALUES (3133, 56, '_tax_status', 'taxable');
INSERT INTO `wp_postmeta` VALUES (3134, 56, '_tax_class', 'parent');
INSERT INTO `wp_postmeta` VALUES (3135, 56, '_manage_stock', 'no');
INSERT INTO `wp_postmeta` VALUES (3136, 56, '_backorders', 'no');
INSERT INTO `wp_postmeta` VALUES (3137, 56, '_sold_individually', 'no');
INSERT INTO `wp_postmeta` VALUES (3138, 56, '_weight', '');
INSERT INTO `wp_postmeta` VALUES (3139, 56, '_length', '');
INSERT INTO `wp_postmeta` VALUES (3140, 56, '_width', '');
INSERT INTO `wp_postmeta` VALUES (3141, 56, '_height', '');
INSERT INTO `wp_postmeta` VALUES (3142, 56, '_upsell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3143, 56, '_crosssell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3144, 56, '_purchase_note', '');
INSERT INTO `wp_postmeta` VALUES (3145, 56, '_default_attributes', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3146, 56, '_virtual', 'no');
INSERT INTO `wp_postmeta` VALUES (3147, 56, '_downloadable', 'no');
INSERT INTO `wp_postmeta` VALUES (3148, 56, '_product_image_gallery', '');
INSERT INTO `wp_postmeta` VALUES (3149, 56, '_download_limit', '-1');
INSERT INTO `wp_postmeta` VALUES (3150, 56, '_download_expiry', '-1');
INSERT INTO `wp_postmeta` VALUES (3151, 56, '_stock', NULL);
INSERT INTO `wp_postmeta` VALUES (3152, 56, '_stock_status', 'instock');
INSERT INTO `wp_postmeta` VALUES (3153, 56, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (3154, 56, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3155, 56, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (3156, 56, '_downloadable_files', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3157, 56, 'attribute_pa_mau-sac', 'den');
INSERT INTO `wp_postmeta` VALUES (3158, 56, 'attribute_pa_kich-thuoc', 'm');
INSERT INTO `wp_postmeta` VALUES (3159, 56, '_price', '450000');
INSERT INTO `wp_postmeta` VALUES (3160, 56, '_product_version', '3.3.4');
INSERT INTO `wp_postmeta` VALUES (3161, 57, '_variation_description', '');
INSERT INTO `wp_postmeta` VALUES (3162, 57, '_sku', '');
INSERT INTO `wp_postmeta` VALUES (3163, 57, '_regular_price', '580000');
INSERT INTO `wp_postmeta` VALUES (3164, 57, '_sale_price', '450000');
INSERT INTO `wp_postmeta` VALUES (3165, 57, '_sale_price_dates_from', '');
INSERT INTO `wp_postmeta` VALUES (3166, 57, '_sale_price_dates_to', '');
INSERT INTO `wp_postmeta` VALUES (3167, 57, 'total_sales', '0');
INSERT INTO `wp_postmeta` VALUES (3168, 57, '_tax_status', 'taxable');
INSERT INTO `wp_postmeta` VALUES (3169, 57, '_tax_class', 'parent');
INSERT INTO `wp_postmeta` VALUES (3170, 57, '_manage_stock', 'no');
INSERT INTO `wp_postmeta` VALUES (3171, 57, '_backorders', 'no');
INSERT INTO `wp_postmeta` VALUES (3172, 57, '_sold_individually', 'no');
INSERT INTO `wp_postmeta` VALUES (3173, 57, '_weight', '');
INSERT INTO `wp_postmeta` VALUES (3174, 57, '_length', '');
INSERT INTO `wp_postmeta` VALUES (3175, 57, '_width', '');
INSERT INTO `wp_postmeta` VALUES (3176, 57, '_height', '');
INSERT INTO `wp_postmeta` VALUES (3177, 57, '_upsell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3178, 57, '_crosssell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3179, 57, '_purchase_note', '');
INSERT INTO `wp_postmeta` VALUES (3180, 57, '_default_attributes', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3181, 57, '_virtual', 'no');
INSERT INTO `wp_postmeta` VALUES (3182, 57, '_downloadable', 'no');
INSERT INTO `wp_postmeta` VALUES (3183, 57, '_product_image_gallery', '');
INSERT INTO `wp_postmeta` VALUES (3184, 57, '_download_limit', '-1');
INSERT INTO `wp_postmeta` VALUES (3185, 57, '_download_expiry', '-1');
INSERT INTO `wp_postmeta` VALUES (3186, 57, '_stock', NULL);
INSERT INTO `wp_postmeta` VALUES (3187, 57, '_stock_status', 'instock');
INSERT INTO `wp_postmeta` VALUES (3188, 57, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (3189, 57, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3190, 57, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (3191, 57, '_downloadable_files', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3192, 57, 'attribute_pa_mau-sac', 'trang');
INSERT INTO `wp_postmeta` VALUES (3193, 57, 'attribute_pa_kich-thuoc', 'm');
INSERT INTO `wp_postmeta` VALUES (3194, 57, '_price', '450000');
INSERT INTO `wp_postmeta` VALUES (3195, 57, '_product_version', '3.3.4');
INSERT INTO `wp_postmeta` VALUES (3196, 58, '_variation_description', '');
INSERT INTO `wp_postmeta` VALUES (3197, 58, '_sku', '');
INSERT INTO `wp_postmeta` VALUES (3198, 58, '_regular_price', '580000');
INSERT INTO `wp_postmeta` VALUES (3199, 58, '_sale_price', '450000');
INSERT INTO `wp_postmeta` VALUES (3200, 58, '_sale_price_dates_from', '');
INSERT INTO `wp_postmeta` VALUES (3201, 58, '_sale_price_dates_to', '');
INSERT INTO `wp_postmeta` VALUES (3202, 58, 'total_sales', '0');
INSERT INTO `wp_postmeta` VALUES (3203, 58, '_tax_status', 'taxable');
INSERT INTO `wp_postmeta` VALUES (3204, 58, '_tax_class', 'parent');
INSERT INTO `wp_postmeta` VALUES (3205, 58, '_manage_stock', 'no');
INSERT INTO `wp_postmeta` VALUES (3206, 58, '_backorders', 'no');
INSERT INTO `wp_postmeta` VALUES (3207, 58, '_sold_individually', 'no');
INSERT INTO `wp_postmeta` VALUES (3208, 58, '_weight', '');
INSERT INTO `wp_postmeta` VALUES (3209, 58, '_length', '');
INSERT INTO `wp_postmeta` VALUES (3210, 58, '_width', '');
INSERT INTO `wp_postmeta` VALUES (3211, 58, '_height', '');
INSERT INTO `wp_postmeta` VALUES (3212, 58, '_upsell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3213, 58, '_crosssell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3214, 58, '_purchase_note', '');
INSERT INTO `wp_postmeta` VALUES (3215, 58, '_default_attributes', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3216, 58, '_virtual', 'no');
INSERT INTO `wp_postmeta` VALUES (3217, 58, '_downloadable', 'no');
INSERT INTO `wp_postmeta` VALUES (3218, 58, '_product_image_gallery', '');
INSERT INTO `wp_postmeta` VALUES (3219, 58, '_download_limit', '-1');
INSERT INTO `wp_postmeta` VALUES (3220, 58, '_download_expiry', '-1');
INSERT INTO `wp_postmeta` VALUES (3221, 58, '_stock', NULL);
INSERT INTO `wp_postmeta` VALUES (3222, 58, '_stock_status', 'instock');
INSERT INTO `wp_postmeta` VALUES (3223, 58, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (3224, 58, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3225, 58, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (3226, 58, '_downloadable_files', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3227, 58, 'attribute_pa_mau-sac', 'den');
INSERT INTO `wp_postmeta` VALUES (3228, 58, 'attribute_pa_kich-thuoc', 's');
INSERT INTO `wp_postmeta` VALUES (3229, 58, '_price', '450000');
INSERT INTO `wp_postmeta` VALUES (3230, 58, '_product_version', '3.3.4');
INSERT INTO `wp_postmeta` VALUES (3231, 59, '_variation_description', '');
INSERT INTO `wp_postmeta` VALUES (3232, 59, '_sku', '');
INSERT INTO `wp_postmeta` VALUES (3233, 59, '_regular_price', '580000');
INSERT INTO `wp_postmeta` VALUES (3234, 59, '_sale_price', '450000');
INSERT INTO `wp_postmeta` VALUES (3235, 59, '_sale_price_dates_from', '');
INSERT INTO `wp_postmeta` VALUES (3236, 59, '_sale_price_dates_to', '');
INSERT INTO `wp_postmeta` VALUES (3237, 59, 'total_sales', '0');
INSERT INTO `wp_postmeta` VALUES (3238, 59, '_tax_status', 'taxable');
INSERT INTO `wp_postmeta` VALUES (3239, 59, '_tax_class', 'parent');
INSERT INTO `wp_postmeta` VALUES (3240, 59, '_manage_stock', 'no');
INSERT INTO `wp_postmeta` VALUES (3241, 59, '_backorders', 'no');
INSERT INTO `wp_postmeta` VALUES (3242, 59, '_sold_individually', 'no');
INSERT INTO `wp_postmeta` VALUES (3243, 59, '_weight', '');
INSERT INTO `wp_postmeta` VALUES (3244, 59, '_length', '');
INSERT INTO `wp_postmeta` VALUES (3245, 59, '_width', '');
INSERT INTO `wp_postmeta` VALUES (3246, 59, '_height', '');
INSERT INTO `wp_postmeta` VALUES (3247, 59, '_upsell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3248, 59, '_crosssell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3249, 59, '_purchase_note', '');
INSERT INTO `wp_postmeta` VALUES (3250, 59, '_default_attributes', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3251, 59, '_virtual', 'no');
INSERT INTO `wp_postmeta` VALUES (3252, 59, '_downloadable', 'no');
INSERT INTO `wp_postmeta` VALUES (3253, 59, '_product_image_gallery', '');
INSERT INTO `wp_postmeta` VALUES (3254, 59, '_download_limit', '-1');
INSERT INTO `wp_postmeta` VALUES (3255, 59, '_download_expiry', '-1');
INSERT INTO `wp_postmeta` VALUES (3256, 59, '_stock', NULL);
INSERT INTO `wp_postmeta` VALUES (3257, 59, '_stock_status', 'instock');
INSERT INTO `wp_postmeta` VALUES (3258, 59, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (3259, 59, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3260, 59, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (3261, 59, '_downloadable_files', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3262, 59, 'attribute_pa_mau-sac', 'trang');
INSERT INTO `wp_postmeta` VALUES (3263, 59, 'attribute_pa_kich-thuoc', 's');
INSERT INTO `wp_postmeta` VALUES (3264, 59, '_price', '450000');
INSERT INTO `wp_postmeta` VALUES (3265, 59, '_product_version', '3.3.4');
INSERT INTO `wp_postmeta` VALUES (3266, 60, '_variation_description', '');
INSERT INTO `wp_postmeta` VALUES (3267, 60, '_sku', '');
INSERT INTO `wp_postmeta` VALUES (3268, 60, '_regular_price', '580000');
INSERT INTO `wp_postmeta` VALUES (3269, 60, '_sale_price', '450000');
INSERT INTO `wp_postmeta` VALUES (3270, 60, '_sale_price_dates_from', '');
INSERT INTO `wp_postmeta` VALUES (3271, 60, '_sale_price_dates_to', '');
INSERT INTO `wp_postmeta` VALUES (3272, 60, 'total_sales', '0');
INSERT INTO `wp_postmeta` VALUES (3273, 60, '_tax_status', 'taxable');
INSERT INTO `wp_postmeta` VALUES (3274, 60, '_tax_class', 'parent');
INSERT INTO `wp_postmeta` VALUES (3275, 60, '_manage_stock', 'no');
INSERT INTO `wp_postmeta` VALUES (3276, 60, '_backorders', 'no');
INSERT INTO `wp_postmeta` VALUES (3277, 60, '_sold_individually', 'no');
INSERT INTO `wp_postmeta` VALUES (3278, 60, '_weight', '');
INSERT INTO `wp_postmeta` VALUES (3279, 60, '_length', '');
INSERT INTO `wp_postmeta` VALUES (3280, 60, '_width', '');
INSERT INTO `wp_postmeta` VALUES (3281, 60, '_height', '');
INSERT INTO `wp_postmeta` VALUES (3282, 60, '_upsell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3283, 60, '_crosssell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3284, 60, '_purchase_note', '');
INSERT INTO `wp_postmeta` VALUES (3285, 60, '_default_attributes', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3286, 60, '_virtual', 'no');
INSERT INTO `wp_postmeta` VALUES (3287, 60, '_downloadable', 'no');
INSERT INTO `wp_postmeta` VALUES (3288, 60, '_product_image_gallery', '');
INSERT INTO `wp_postmeta` VALUES (3289, 60, '_download_limit', '-1');
INSERT INTO `wp_postmeta` VALUES (3290, 60, '_download_expiry', '-1');
INSERT INTO `wp_postmeta` VALUES (3291, 60, '_stock', NULL);
INSERT INTO `wp_postmeta` VALUES (3292, 60, '_stock_status', 'instock');
INSERT INTO `wp_postmeta` VALUES (3293, 60, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (3294, 60, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3295, 60, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (3296, 60, '_downloadable_files', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3297, 60, 'attribute_pa_mau-sac', 'den');
INSERT INTO `wp_postmeta` VALUES (3298, 60, 'attribute_pa_kich-thuoc', 'xs');
INSERT INTO `wp_postmeta` VALUES (3299, 60, '_price', '450000');
INSERT INTO `wp_postmeta` VALUES (3300, 60, '_product_version', '3.3.4');
INSERT INTO `wp_postmeta` VALUES (3301, 61, '_variation_description', '');
INSERT INTO `wp_postmeta` VALUES (3302, 61, '_sku', '');
INSERT INTO `wp_postmeta` VALUES (3303, 61, '_regular_price', '580000');
INSERT INTO `wp_postmeta` VALUES (3304, 61, '_sale_price', '450000');
INSERT INTO `wp_postmeta` VALUES (3305, 61, '_sale_price_dates_from', '');
INSERT INTO `wp_postmeta` VALUES (3306, 61, '_sale_price_dates_to', '');
INSERT INTO `wp_postmeta` VALUES (3307, 61, 'total_sales', '0');
INSERT INTO `wp_postmeta` VALUES (3308, 61, '_tax_status', 'taxable');
INSERT INTO `wp_postmeta` VALUES (3309, 61, '_tax_class', 'parent');
INSERT INTO `wp_postmeta` VALUES (3310, 61, '_manage_stock', 'no');
INSERT INTO `wp_postmeta` VALUES (3311, 61, '_backorders', 'no');
INSERT INTO `wp_postmeta` VALUES (3312, 61, '_sold_individually', 'no');
INSERT INTO `wp_postmeta` VALUES (3313, 61, '_weight', '');
INSERT INTO `wp_postmeta` VALUES (3314, 61, '_length', '');
INSERT INTO `wp_postmeta` VALUES (3315, 61, '_width', '');
INSERT INTO `wp_postmeta` VALUES (3316, 61, '_height', '');
INSERT INTO `wp_postmeta` VALUES (3317, 61, '_upsell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3318, 61, '_crosssell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3319, 61, '_purchase_note', '');
INSERT INTO `wp_postmeta` VALUES (3320, 61, '_default_attributes', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3321, 61, '_virtual', 'no');
INSERT INTO `wp_postmeta` VALUES (3322, 61, '_downloadable', 'no');
INSERT INTO `wp_postmeta` VALUES (3323, 61, '_product_image_gallery', '');
INSERT INTO `wp_postmeta` VALUES (3324, 61, '_download_limit', '-1');
INSERT INTO `wp_postmeta` VALUES (3325, 61, '_download_expiry', '-1');
INSERT INTO `wp_postmeta` VALUES (3326, 61, '_stock', NULL);
INSERT INTO `wp_postmeta` VALUES (3327, 61, '_stock_status', 'instock');
INSERT INTO `wp_postmeta` VALUES (3328, 61, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (3329, 61, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3330, 61, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (3331, 61, '_downloadable_files', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3332, 61, 'attribute_pa_mau-sac', 'trang');
INSERT INTO `wp_postmeta` VALUES (3333, 61, 'attribute_pa_kich-thuoc', 'xs');
INSERT INTO `wp_postmeta` VALUES (3334, 61, '_price', '450000');
INSERT INTO `wp_postmeta` VALUES (3335, 61, '_product_version', '3.3.4');
INSERT INTO `wp_postmeta` VALUES (3432, 19, '_enable_watermark', 'no');
INSERT INTO `wp_postmeta` VALUES (3720, 128, '_variation_description', '');
INSERT INTO `wp_postmeta` VALUES (3721, 128, '_sku', '');
INSERT INTO `wp_postmeta` VALUES (3722, 128, '_regular_price', '');
INSERT INTO `wp_postmeta` VALUES (3723, 128, '_sale_price', '');
INSERT INTO `wp_postmeta` VALUES (3724, 128, '_sale_price_dates_from', '');
INSERT INTO `wp_postmeta` VALUES (3725, 128, '_sale_price_dates_to', '');
INSERT INTO `wp_postmeta` VALUES (3726, 128, 'total_sales', '0');
INSERT INTO `wp_postmeta` VALUES (3727, 128, '_tax_status', 'taxable');
INSERT INTO `wp_postmeta` VALUES (3728, 128, '_tax_class', 'parent');
INSERT INTO `wp_postmeta` VALUES (3729, 128, '_manage_stock', 'no');
INSERT INTO `wp_postmeta` VALUES (3730, 128, '_backorders', 'no');
INSERT INTO `wp_postmeta` VALUES (3731, 128, '_sold_individually', 'no');
INSERT INTO `wp_postmeta` VALUES (3732, 128, '_weight', '');
INSERT INTO `wp_postmeta` VALUES (3733, 128, '_length', '');
INSERT INTO `wp_postmeta` VALUES (3734, 128, '_width', '');
INSERT INTO `wp_postmeta` VALUES (3735, 128, '_height', '');
INSERT INTO `wp_postmeta` VALUES (3736, 128, '_upsell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3737, 128, '_crosssell_ids', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3738, 128, '_purchase_note', '');
INSERT INTO `wp_postmeta` VALUES (3739, 128, '_default_attributes', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3740, 128, '_virtual', 'no');
INSERT INTO `wp_postmeta` VALUES (3741, 128, '_downloadable', 'no');
INSERT INTO `wp_postmeta` VALUES (3742, 128, '_product_image_gallery', '');
INSERT INTO `wp_postmeta` VALUES (3743, 128, '_download_limit', '-1');
INSERT INTO `wp_postmeta` VALUES (3744, 128, '_download_expiry', '-1');
INSERT INTO `wp_postmeta` VALUES (3745, 128, '_stock', NULL);
INSERT INTO `wp_postmeta` VALUES (3746, 128, '_stock_status', 'instock');
INSERT INTO `wp_postmeta` VALUES (3747, 128, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (3748, 128, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (3749, 128, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (3750, 128, '_price', '');
INSERT INTO `wp_postmeta` VALUES (3835, 128, '_product_version', '3.3.4');
INSERT INTO `wp_postmeta` VALUES (4088, 50, '_ywpo_preorder', 'no');
INSERT INTO `wp_postmeta` VALUES (4089, 50, '_ywpo_preorder_label', '');
INSERT INTO `wp_postmeta` VALUES (4090, 50, '_ywpo_preorder_price', '');
INSERT INTO `wp_postmeta` VALUES (4091, 50, '_ywpo_price_adjustment_amount', '');
INSERT INTO `wp_postmeta` VALUES (4092, 50, '_ywpo_price_adjustment', 'manual');
INSERT INTO `wp_postmeta` VALUES (4093, 50, '_ywpo_adjustment_type', 'fixed');
INSERT INTO `wp_postmeta` VALUES (4094, 51, '_ywpo_preorder', 'no');
INSERT INTO `wp_postmeta` VALUES (4095, 51, '_ywpo_preorder_label', '');
INSERT INTO `wp_postmeta` VALUES (4096, 51, '_ywpo_preorder_price', '');
INSERT INTO `wp_postmeta` VALUES (4097, 51, '_ywpo_price_adjustment_amount', '');
INSERT INTO `wp_postmeta` VALUES (4098, 51, '_ywpo_price_adjustment', 'manual');
INSERT INTO `wp_postmeta` VALUES (4099, 51, '_ywpo_adjustment_type', 'fixed');
INSERT INTO `wp_postmeta` VALUES (4100, 48, '_ywpo_preorder', 'no');
INSERT INTO `wp_postmeta` VALUES (4101, 48, '_ywpo_preorder_label', '');
INSERT INTO `wp_postmeta` VALUES (4102, 48, '_ywpo_preorder_price', '');
INSERT INTO `wp_postmeta` VALUES (4103, 48, '_ywpo_price_adjustment_amount', '');
INSERT INTO `wp_postmeta` VALUES (4104, 48, '_ywpo_price_adjustment', 'manual');
INSERT INTO `wp_postmeta` VALUES (4105, 48, '_ywpo_adjustment_type', 'fixed');
INSERT INTO `wp_postmeta` VALUES (4106, 49, '_ywpo_preorder', 'no');
INSERT INTO `wp_postmeta` VALUES (4107, 49, '_ywpo_preorder_label', '');
INSERT INTO `wp_postmeta` VALUES (4108, 49, '_ywpo_preorder_price', '');
INSERT INTO `wp_postmeta` VALUES (4109, 49, '_ywpo_price_adjustment_amount', '');
INSERT INTO `wp_postmeta` VALUES (4110, 49, '_ywpo_price_adjustment', 'manual');
INSERT INTO `wp_postmeta` VALUES (4111, 49, '_ywpo_adjustment_type', 'fixed');
INSERT INTO `wp_postmeta` VALUES (4112, 52, '_ywpo_preorder', 'no');
INSERT INTO `wp_postmeta` VALUES (4113, 52, '_ywpo_preorder_label', '');
INSERT INTO `wp_postmeta` VALUES (4114, 52, '_ywpo_preorder_price', '');
INSERT INTO `wp_postmeta` VALUES (4115, 52, '_ywpo_price_adjustment_amount', '');
INSERT INTO `wp_postmeta` VALUES (4116, 52, '_ywpo_price_adjustment', 'manual');
INSERT INTO `wp_postmeta` VALUES (4117, 52, '_ywpo_adjustment_type', 'fixed');
INSERT INTO `wp_postmeta` VALUES (4118, 53, '_ywpo_preorder', 'no');
INSERT INTO `wp_postmeta` VALUES (4119, 53, '_ywpo_preorder_label', '');
INSERT INTO `wp_postmeta` VALUES (4120, 53, '_ywpo_preorder_price', '');
INSERT INTO `wp_postmeta` VALUES (4121, 53, '_ywpo_price_adjustment_amount', '');
INSERT INTO `wp_postmeta` VALUES (4122, 53, '_ywpo_price_adjustment', 'manual');
INSERT INTO `wp_postmeta` VALUES (4123, 53, '_ywpo_adjustment_type', 'fixed');
INSERT INTO `wp_postmeta` VALUES (4124, 54, '_ywpo_preorder', 'no');
INSERT INTO `wp_postmeta` VALUES (4125, 54, '_ywpo_preorder_label', '');
INSERT INTO `wp_postmeta` VALUES (4126, 54, '_ywpo_preorder_price', '');
INSERT INTO `wp_postmeta` VALUES (4127, 54, '_ywpo_price_adjustment_amount', '');
INSERT INTO `wp_postmeta` VALUES (4128, 54, '_ywpo_price_adjustment', 'manual');
INSERT INTO `wp_postmeta` VALUES (4129, 54, '_ywpo_adjustment_type', 'fixed');
INSERT INTO `wp_postmeta` VALUES (4130, 55, '_ywpo_preorder', 'no');
INSERT INTO `wp_postmeta` VALUES (4131, 55, '_ywpo_preorder_label', '');
INSERT INTO `wp_postmeta` VALUES (4132, 55, '_ywpo_preorder_price', '');
INSERT INTO `wp_postmeta` VALUES (4133, 55, '_ywpo_price_adjustment_amount', '');
INSERT INTO `wp_postmeta` VALUES (4134, 55, '_ywpo_price_adjustment', 'manual');
INSERT INTO `wp_postmeta` VALUES (4135, 55, '_ywpo_adjustment_type', 'fixed');
INSERT INTO `wp_postmeta` VALUES (4136, 56, '_ywpo_preorder', 'no');
INSERT INTO `wp_postmeta` VALUES (4137, 56, '_ywpo_preorder_label', '');
INSERT INTO `wp_postmeta` VALUES (4138, 56, '_ywpo_preorder_price', '');
INSERT INTO `wp_postmeta` VALUES (4139, 56, '_ywpo_price_adjustment_amount', '');
INSERT INTO `wp_postmeta` VALUES (4140, 56, '_ywpo_price_adjustment', 'manual');
INSERT INTO `wp_postmeta` VALUES (4141, 56, '_ywpo_adjustment_type', 'fixed');
INSERT INTO `wp_postmeta` VALUES (4142, 57, '_ywpo_preorder', 'no');
INSERT INTO `wp_postmeta` VALUES (4143, 57, '_ywpo_preorder_label', '');
INSERT INTO `wp_postmeta` VALUES (4144, 57, '_ywpo_preorder_price', '');
INSERT INTO `wp_postmeta` VALUES (4145, 57, '_ywpo_price_adjustment_amount', '');
INSERT INTO `wp_postmeta` VALUES (4146, 57, '_ywpo_price_adjustment', 'manual');
INSERT INTO `wp_postmeta` VALUES (4147, 57, '_ywpo_adjustment_type', 'fixed');
INSERT INTO `wp_postmeta` VALUES (4148, 58, '_ywpo_preorder', 'no');
INSERT INTO `wp_postmeta` VALUES (4149, 58, '_ywpo_preorder_label', '');
INSERT INTO `wp_postmeta` VALUES (4150, 58, '_ywpo_preorder_price', '');
INSERT INTO `wp_postmeta` VALUES (4151, 58, '_ywpo_price_adjustment_amount', '');
INSERT INTO `wp_postmeta` VALUES (4152, 58, '_ywpo_price_adjustment', 'manual');
INSERT INTO `wp_postmeta` VALUES (4153, 58, '_ywpo_adjustment_type', 'fixed');
INSERT INTO `wp_postmeta` VALUES (4154, 59, '_ywpo_preorder', 'no');
INSERT INTO `wp_postmeta` VALUES (4155, 59, '_ywpo_preorder_label', '');
INSERT INTO `wp_postmeta` VALUES (4156, 59, '_ywpo_preorder_price', '');
INSERT INTO `wp_postmeta` VALUES (4157, 59, '_ywpo_price_adjustment_amount', '');
INSERT INTO `wp_postmeta` VALUES (4158, 59, '_ywpo_price_adjustment', 'manual');
INSERT INTO `wp_postmeta` VALUES (4159, 59, '_ywpo_adjustment_type', 'fixed');
INSERT INTO `wp_postmeta` VALUES (4160, 60, '_ywpo_preorder', 'no');
INSERT INTO `wp_postmeta` VALUES (4161, 60, '_ywpo_preorder_label', '');
INSERT INTO `wp_postmeta` VALUES (4162, 60, '_ywpo_preorder_price', '');
INSERT INTO `wp_postmeta` VALUES (4163, 60, '_ywpo_price_adjustment_amount', '');
INSERT INTO `wp_postmeta` VALUES (4164, 60, '_ywpo_price_adjustment', 'manual');
INSERT INTO `wp_postmeta` VALUES (4165, 60, '_ywpo_adjustment_type', 'fixed');
INSERT INTO `wp_postmeta` VALUES (4166, 61, '_ywpo_preorder', 'no');
INSERT INTO `wp_postmeta` VALUES (4167, 61, '_ywpo_preorder_label', '');
INSERT INTO `wp_postmeta` VALUES (4168, 61, '_ywpo_preorder_price', '');
INSERT INTO `wp_postmeta` VALUES (4169, 61, '_ywpo_price_adjustment_amount', '');
INSERT INTO `wp_postmeta` VALUES (4170, 61, '_ywpo_price_adjustment', 'manual');
INSERT INTO `wp_postmeta` VALUES (4171, 61, '_ywpo_adjustment_type', 'fixed');
INSERT INTO `wp_postmeta` VALUES (4172, 19, '_ywpo_preorder', 'no');
INSERT INTO `wp_postmeta` VALUES (4173, 19, '_ywpo_preorder_label', '');
INSERT INTO `wp_postmeta` VALUES (4174, 19, '_ywpo_preorder_price', '');
INSERT INTO `wp_postmeta` VALUES (4175, 19, '_ywpo_price_adjustment_amount', '');
INSERT INTO `wp_postmeta` VALUES (4176, 19, '_ywpo_price_adjustment', 'manual');
INSERT INTO `wp_postmeta` VALUES (4177, 19, '_ywpo_adjustment_type', 'fixed');
INSERT INTO `wp_postmeta` VALUES (4178, 19, '_wc_pre_orders_enabled', 'no');
INSERT INTO `wp_postmeta` VALUES (4179, 19, '_wc_pre_orders_fee', '');
INSERT INTO `wp_postmeta` VALUES (4180, 19, '_wc_pre_orders_when_to_charge', 'upon_release');
INSERT INTO `wp_postmeta` VALUES (4181, 129, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (4182, 129, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (4183, 129, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (4184, 129, '_regular_price', '10');
INSERT INTO `wp_postmeta` VALUES (4185, 129, '_price', '10');
INSERT INTO `wp_postmeta` VALUES (4186, 129, '_visibility', 'hidden');
INSERT INTO `wp_postmeta` VALUES (4187, 130, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (4188, 130, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (4189, 130, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (4190, 130, '_regular_price', '10');
INSERT INTO `wp_postmeta` VALUES (4191, 130, '_price', '10');
INSERT INTO `wp_postmeta` VALUES (4192, 130, '_visibility', 'hidden');
INSERT INTO `wp_postmeta` VALUES (4193, 130, '_pos_visibility', 'pos_online');
INSERT INTO `wp_postmeta` VALUES (4295, 134, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` VALUES (4296, 134, '_wc_rating_count', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (4297, 134, '_wc_average_rating', '0');
INSERT INTO `wp_postmeta` VALUES (4298, 134, '_pos_visibility', 'pos_online');
INSERT INTO `wp_postmeta` VALUES (4350, 136, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (4351, 136, '_edit_lock', '1521721922:1');
INSERT INTO `wp_postmeta` VALUES (4352, 136, '_display_in_reports', 'no');
INSERT INTO `wp_postmeta` VALUES (4353, 136, '_dashboard_widget', 'no');
INSERT INTO `wp_postmeta` VALUES (4354, 136, '_status_icon', 'e014');
INSERT INTO `wp_postmeta` VALUES (4355, 136, '_status_colour', '#aa2727');
INSERT INTO `wp_postmeta` VALUES (4356, 136, '_icon_style', 'icon-color');
INSERT INTO `wp_postmeta` VALUES (4357, 136, '_email_notification', 'no');
INSERT INTO `wp_postmeta` VALUES (4358, 136, '_email_type', 'html');
INSERT INTO `wp_postmeta` VALUES (4359, 136, '_email_recipients', 'customer');
INSERT INTO `wp_postmeta` VALUES (4360, 136, '_email_custom_address', '');
INSERT INTO `wp_postmeta` VALUES (4361, 136, '_email_from_name', 'hanghieu.sale - Diễm My Store');
INSERT INTO `wp_postmeta` VALUES (4362, 136, '_email_from_address', 'xuan.0211@gmail.com');
INSERT INTO `wp_postmeta` VALUES (4363, 136, '_email_subject', '');
INSERT INTO `wp_postmeta` VALUES (4364, 136, '_email_heading', '');
INSERT INTO `wp_postmeta` VALUES (4365, 136, '_email_order_info', 'no');
INSERT INTO `wp_postmeta` VALUES (4366, 136, '_email_message', 'no');
INSERT INTO `wp_postmeta` VALUES (4367, 136, '_email_message_text', '');
INSERT INTO `wp_postmeta` VALUES (4368, 136, '_customer_pay_button', 'no');
INSERT INTO `wp_postmeta` VALUES (4369, 136, '_customer_cancel_orders', 'no');
INSERT INTO `wp_postmeta` VALUES (4370, 136, '_customer_confirm_prompt', 'no');
INSERT INTO `wp_postmeta` VALUES (4371, 136, '_customer_account', 'no');
INSERT INTO `wp_postmeta` VALUES (4372, 136, '_customer_account_visibility', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (4373, 136, '_customer_account_button_label', '');
INSERT INTO `wp_postmeta` VALUES (4374, 136, '_product_reviews', 'no');
INSERT INTO `wp_postmeta` VALUES (4375, 136, '_downloads_permitted', 'no');
INSERT INTO `wp_postmeta` VALUES (4376, 136, '_item_editing', 'no');
INSERT INTO `wp_postmeta` VALUES (4377, 136, '_stock_status', 'no_affection');
INSERT INTO `wp_postmeta` VALUES (4378, 136, '_action_icon', 'e014');
INSERT INTO `wp_postmeta` VALUES (4379, 136, '_action_visibility', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (4380, 136, '_show_action_buttons', 'a:0:{}');
INSERT INTO `wp_postmeta` VALUES (4381, 136, '_hide_bulk_actions', 'no');
INSERT INTO `wp_postmeta` VALUES (4382, 136, '_order_note_prompt', 'no');
INSERT INTO `wp_postmeta` VALUES (4383, 136, '_automatic_trigger', 'no');
INSERT INTO `wp_postmeta` VALUES (4384, 136, '_triggered_status', '');
INSERT INTO `wp_postmeta` VALUES (4385, 136, '_time_period', '');
INSERT INTO `wp_postmeta` VALUES (4386, 136, '_time_period_type', 'minutes');
INSERT INTO `wp_postmeta` VALUES (4387, 136, '__label', 'dat-hang-truoc');
INSERT INTO `wp_postmeta` VALUES (4388, 136, '_wp_old_slug', 'cho-dat-hang');
INSERT INTO `wp_postmeta` VALUES (4405, 137, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (4406, 137, '_edit_lock', '1521728580:1');
INSERT INTO `wp_postmeta` VALUES (4407, 137, '_was_shipping_method', 'a:7:{s:14:\"shipping_title\";s:26:\"Miễn phí vận chuyển\";s:20:\"shipping_description\";s:67:\"Với thời gian vận chuyển theo quy định của cửa hàng\";s:13:\"shipping_cost\";s:1:\"0\";s:12:\"handling_fee\";s:0:\"\";s:13:\"cost_per_item\";s:0:\"\";s:15:\"cost_per_weight\";s:0:\"\";s:3:\"tax\";s:11:\"not_taxable\";}');
INSERT INTO `wp_postmeta` VALUES (4408, 137, '_was_shipping_method_conditions', 'a:1:{i:0;a:1:{i:1825679137;a:3:{s:9:\"condition\";s:8:\"quantity\";s:8:\"operator\";s:2:\">=\";s:5:\"value\";s:1:\"2\";}}}');
INSERT INTO `wp_postmeta` VALUES (4412, 50, '_thumbnail_id', '20');
INSERT INTO `wp_postmeta` VALUES (4413, 48, '_thumbnail_id', '20');
INSERT INTO `wp_postmeta` VALUES (4414, 52, '_thumbnail_id', '20');
INSERT INTO `wp_postmeta` VALUES (4415, 54, '_thumbnail_id', '20');
INSERT INTO `wp_postmeta` VALUES (4416, 56, '_thumbnail_id', '20');
INSERT INTO `wp_postmeta` VALUES (4417, 58, '_thumbnail_id', '20');
INSERT INTO `wp_postmeta` VALUES (4418, 60, '_thumbnail_id', '20');
INSERT INTO `wp_postmeta` VALUES (4420, 51, '_thumbnail_id', '37');
INSERT INTO `wp_postmeta` VALUES (4421, 49, '_thumbnail_id', '37');
INSERT INTO `wp_postmeta` VALUES (4422, 53, '_thumbnail_id', '37');
INSERT INTO `wp_postmeta` VALUES (4423, 55, '_thumbnail_id', '37');
INSERT INTO `wp_postmeta` VALUES (4424, 57, '_thumbnail_id', '37');
INSERT INTO `wp_postmeta` VALUES (4425, 59, '_thumbnail_id', '37');
INSERT INTO `wp_postmeta` VALUES (4426, 61, '_thumbnail_id', '37');
INSERT INTO `wp_postmeta` VALUES (4427, 19, '_price', '450000');
COMMIT;

-- ----------------------------
-- Table structure for wp_posts
-- ----------------------------
DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- ----------------------------
-- Records of wp_posts
-- ----------------------------
BEGIN;
INSERT INTO `wp_posts` VALUES (1, 1, '2018-03-21 04:08:30', '2018-03-21 04:08:30', 'Chúc mừng đến với WordPress. Đây là bài viết đầu tiên của bạn. Hãy chỉnh sửa hay xóa bài viết này, và bắt đầu viết blog!', 'Chào tất cả mọi người!', '', 'publish', 'open', 'open', '', 'chao-moi-nguoi', '', '', '2018-03-21 04:08:30', '2018-03-21 04:08:30', '', 0, 'http://hanghieu.test/?p=1', 0, 'post', '', 1);
INSERT INTO `wp_posts` VALUES (2, 1, '2018-03-21 04:08:30', '2018-03-21 04:08:30', 'Đây là một trang mẫu. Nó khác với một bài blog bởi vì nó sẽ là một trang tĩnh và sẽ được thêm vào thanh menu của trang web của bạn (trong hầu hết theme). Mọi người thường bắt đầu bằng một trang Giới thiệu để giới thiệu bản thân đến người dùng tiềm năng. Bạn có thể viết như sau:\n\n<blockquote>Xin chào! Tôi là người giao thư bằng xe đạp vào ban ngày, một diễn viên đầy tham vọng vào ban đêm, và đây là trang web của tôi. Tôi sống ở Los Angeles, có một chú cho tuyệt vời tên là Jack, và tôi thích uống cocktail.</blockquote>\n\n...hay như thế này:\n\n<blockquote>Công ty XYZ Doohickey được thành lập vào năm 1971, và đã cung cấp đồ dùng chất lượng cho công chúng kể từ đó. Nằm ở thành phố Gotham, XYZ tạo việc làm cho hơn 2.000 người và làm tất cả những điều tuyệt vời cho cộng đồng Gotham.</blockquote>\n\nLà người dùng WordPress mới, bạn nên truy cập <a href=\"http://hanghieu.test/wp-admin/\">trang quản trị</a> để xóa trang này và tạo các trang mới cho nội dung của bạn. Chúc vui vẻ!', 'Trang Mẫu', '', 'publish', 'closed', 'open', '', 'Trang mẫu', '', '', '2018-03-21 04:08:30', '2018-03-21 04:08:30', '', 0, 'http://hanghieu.test/?page_id=2', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES (3, 1, '2018-03-21 04:08:38', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-03-21 04:08:38', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?p=3', 0, 'post', '', 0);
INSERT INTO `wp_posts` VALUES (4, 1, '2018-03-21 04:18:23', '2018-03-21 04:18:23', '', 'Cửa hàng', '', 'publish', 'closed', 'closed', '', 'cua-hang', '', '', '2018-03-21 04:18:23', '2018-03-21 04:18:23', '', 0, 'http://hanghieu.test/cua-hang/', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES (5, 1, '2018-03-21 04:18:23', '2018-03-21 04:18:23', '[woocommerce_cart]', 'Giỏ hàng', '', 'publish', 'closed', 'closed', '', 'gio-hang', '', '', '2018-03-21 04:18:23', '2018-03-21 04:18:23', '', 0, 'http://hanghieu.test/gio-hang/', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES (6, 1, '2018-03-21 04:18:23', '2018-03-21 04:18:23', '[woocommerce_checkout]', 'Thanh toán', '', 'publish', 'closed', 'closed', '', 'thanh-toan', '', '', '2018-03-21 04:18:23', '2018-03-21 04:18:23', '', 0, 'http://hanghieu.test/thanh-toan/', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES (7, 1, '2018-03-21 04:18:23', '2018-03-21 04:18:23', '[woocommerce_my_account]', 'Tài khoản', '', 'publish', 'closed', 'closed', '', 'tai-khoan', '', '', '2018-03-21 04:18:23', '2018-03-21 04:18:23', '', 0, 'http://hanghieu.test/tai-khoan/', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES (8, 1, '2018-03-21 04:20:39', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-21 04:20:39', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=product&p=8', 0, 'product', '', 0);
INSERT INTO `wp_posts` VALUES (11, 1, '2018-03-21 04:24:58', '2018-03-21 04:24:58', '', 'POS Register #1', '', 'publish', 'closed', 'closed', '', 'pos-register-1', '', '', '2018-03-21 04:24:58', '2018-03-21 04:24:58', '', 0, 'http://hanghieu.test/pos_temp_register_or/pos-register-1/', 0, 'pos_temp_register_or', '', 0);
INSERT INTO `wp_posts` VALUES (12, 1, '2018-03-21 04:37:22', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-21 04:37:22', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=product&p=12', 0, 'product', '', 0);
INSERT INTO `wp_posts` VALUES (13, 1, '2018-03-21 04:37:51', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-21 04:37:51', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=product&p=13', 0, 'product', '', 0);
INSERT INTO `wp_posts` VALUES (14, 1, '2018-03-21 04:38:03', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-21 04:38:03', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=product&p=14', 0, 'product', '', 0);
INSERT INTO `wp_posts` VALUES (15, 1, '2018-03-21 04:51:48', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-21 04:51:48', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=product&p=15', 0, 'product', '', 0);
INSERT INTO `wp_posts` VALUES (16, 1, '2018-03-21 04:52:28', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-21 04:52:28', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=product&p=16', 0, 'product', '', 0);
INSERT INTO `wp_posts` VALUES (17, 1, '2018-03-21 04:53:15', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-21 04:53:15', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=product&p=17', 0, 'product', '', 0);
INSERT INTO `wp_posts` VALUES (18, 1, '2018-03-21 06:03:10', '2018-03-21 06:03:10', '', 'APLK373', '', 'trash', 'open', 'closed', '', '__trashed', '', '', '2018-03-21 06:03:10', '2018-03-21 06:03:10', '', 0, 'http://hanghieu.test/?post_type=product&#038;p=18', 0, 'product', '', 0);
INSERT INTO `wp_posts` VALUES (19, 1, '2018-03-21 05:54:46', '2018-03-21 05:54:46', '', 'Áo Lining - APLK373', '', 'publish', 'open', 'closed', '', 'ao-lining-aplk373', '', '', '2018-03-22 14:38:51', '2018-03-22 14:38:51', '', 0, 'http://hanghieu.test/?post_type=product&#038;p=19', 0, 'product', '', 0);
INSERT INTO `wp_posts` VALUES (20, 1, '2018-03-21 04:59:57', '2018-03-21 04:59:57', '', '28167306_1679479698785619_5243797432174941945_n_large', '', 'inherit', 'open', 'closed', '', '28167306_1679479698785619_5243797432174941945_n_large', '', '', '2018-03-21 04:59:57', '2018-03-21 04:59:57', '', 19, 'http://hanghieu.test/wp-content/uploads/2018/03/28167306_1679479698785619_5243797432174941945_n_large.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` VALUES (23, 1, '2018-03-21 05:03:53', '2018-03-21 05:03:53', '', 'Áo Lining - APLK373', '', 'trash', 'closed', 'closed', '', 'ao-lining-aplk373__trashed', '', '', '2018-03-22 07:19:55', '2018-03-22 07:19:55', '', 19, 'http://hanghieu.test/?post_type=product&#038;p=19', 3, 'product_variation', '', 0);
INSERT INTO `wp_posts` VALUES (24, 1, '2018-03-21 05:03:53', '2018-03-21 05:03:53', '', 'Áo Lining - APLK373', '', 'trash', 'closed', 'closed', '', 'ao-lining-aplk373-2__trashed', '', '', '2018-03-22 07:19:55', '2018-03-22 07:19:55', '', 19, 'http://hanghieu.test/?post_type=product&#038;p=19', 4, 'product_variation', '', 0);
INSERT INTO `wp_posts` VALUES (25, 1, '2018-03-21 05:03:54', '2018-03-21 05:03:54', '', 'Áo Lining - APLK373', '', 'trash', 'closed', 'closed', '', 'ao-lining-aplk373-3__trashed', '', '', '2018-03-22 07:19:55', '2018-03-22 07:19:55', '', 19, 'http://hanghieu.test/?post_type=product&#038;p=19', 1, 'product_variation', '', 0);
INSERT INTO `wp_posts` VALUES (26, 1, '2018-03-21 05:03:54', '2018-03-21 05:03:54', '', 'Áo Lining - APLK373', '', 'trash', 'closed', 'closed', '', 'ao-lining-aplk373-4__trashed', '', '', '2018-03-22 07:19:55', '2018-03-22 07:19:55', '', 19, 'http://hanghieu.test/?post_type=product&#038;p=19', 2, 'product_variation', '', 0);
INSERT INTO `wp_posts` VALUES (27, 1, '2018-03-21 05:03:54', '2018-03-21 05:03:54', '', 'Áo Lining - APLK373', '', 'trash', 'closed', 'closed', '', 'ao-lining-aplk373-5__trashed', '', '', '2018-03-22 07:19:55', '2018-03-22 07:19:55', '', 19, 'http://hanghieu.test/?post_type=product&#038;p=19', 7, 'product_variation', '', 0);
INSERT INTO `wp_posts` VALUES (28, 1, '2018-03-21 05:03:54', '2018-03-21 05:03:54', '', 'Áo Lining - APLK373', '', 'trash', 'closed', 'closed', '', 'ao-lining-aplk373-6__trashed', '', '', '2018-03-22 07:19:55', '2018-03-22 07:19:55', '', 19, 'http://hanghieu.test/?post_type=product&#038;p=19', 8, 'product_variation', '', 0);
INSERT INTO `wp_posts` VALUES (29, 1, '2018-03-21 05:03:54', '2018-03-21 05:03:54', '', 'Áo Lining - APLK373', '', 'trash', 'closed', 'closed', '', 'ao-lining-aplk373-7__trashed', '', '', '2018-03-22 07:19:55', '2018-03-22 07:19:55', '', 19, 'http://hanghieu.test/?post_type=product&#038;p=19', 9, 'product_variation', '', 0);
INSERT INTO `wp_posts` VALUES (30, 1, '2018-03-21 05:03:54', '2018-03-21 05:03:54', '', 'Áo Lining - APLK373', '', 'trash', 'closed', 'closed', '', 'ao-lining-aplk373-8__trashed', '', '', '2018-03-22 07:19:55', '2018-03-22 07:19:55', '', 19, 'http://hanghieu.test/?post_type=product&#038;p=19', 10, 'product_variation', '', 0);
INSERT INTO `wp_posts` VALUES (31, 1, '2018-03-21 05:03:54', '2018-03-21 05:03:54', '', 'Áo Lining - APLK373', '', 'trash', 'closed', 'closed', '', 'ao-lining-aplk373-9__trashed', '', '', '2018-03-22 07:19:55', '2018-03-22 07:19:55', '', 19, 'http://hanghieu.test/?post_type=product&#038;p=19', 11, 'product_variation', '', 0);
INSERT INTO `wp_posts` VALUES (32, 1, '2018-03-21 05:03:54', '2018-03-21 05:03:54', '', 'Áo Lining - APLK373', '', 'trash', 'closed', 'closed', '', 'ao-lining-aplk373-10__trashed', '', '', '2018-03-22 07:19:55', '2018-03-22 07:19:55', '', 19, 'http://hanghieu.test/?post_type=product&#038;p=19', 12, 'product_variation', '', 0);
INSERT INTO `wp_posts` VALUES (33, 1, '2018-03-21 05:03:54', '2018-03-21 05:03:54', '', 'Áo Lining - APLK373', '', 'trash', 'closed', 'closed', '', 'ao-lining-aplk373-11__trashed', '', '', '2018-03-22 07:19:55', '2018-03-22 07:19:55', '', 19, 'http://hanghieu.test/?post_type=product&#038;p=19', 5, 'product_variation', '', 0);
INSERT INTO `wp_posts` VALUES (34, 1, '2018-03-21 05:03:54', '2018-03-21 05:03:54', '', 'Áo Lining - APLK373', '', 'trash', 'closed', 'closed', '', 'ao-lining-aplk373-12__trashed', '', '', '2018-03-22 07:19:55', '2018-03-22 07:19:55', '', 19, 'http://hanghieu.test/?post_type=product&#038;p=19', 6, 'product_variation', '', 0);
INSERT INTO `wp_posts` VALUES (35, 1, '2018-03-21 05:03:55', '2018-03-21 05:03:55', '', 'Áo Lining - APLK373', '', 'trash', 'closed', 'closed', '', 'ao-lining-aplk373-13__trashed', '', '', '2018-03-22 07:19:55', '2018-03-22 07:19:55', '', 19, 'http://hanghieu.test/?post_type=product&#038;p=19', 13, 'product_variation', '', 0);
INSERT INTO `wp_posts` VALUES (36, 1, '2018-03-21 05:03:55', '2018-03-21 05:03:55', '', 'Áo Lining - APLK373', '', 'trash', 'closed', 'closed', '', 'ao-lining-aplk373-14__trashed', '', '', '2018-03-22 07:19:55', '2018-03-22 07:19:55', '', 19, 'http://hanghieu.test/?post_type=product&#038;p=19', 14, 'product_variation', '', 0);
INSERT INTO `wp_posts` VALUES (37, 1, '2018-03-21 05:53:42', '2018-03-21 05:53:42', '', '28166675_1679479695452286_4679760645294428842_n_large', '', 'inherit', 'open', 'closed', '', '28166675_1679479695452286_4679760645294428842_n_large', '', '', '2018-03-21 05:53:42', '2018-03-21 05:53:42', '', 24, 'http://hanghieu.test/wp-content/uploads/2018/03/28166675_1679479695452286_4679760645294428842_n_large.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` VALUES (38, 1, '2018-03-21 05:58:52', '2018-03-21 05:58:52', 'a:2:{i:0;a:5:{s:6:\"values\";a:7:{i:0;s:3:\"2xl\";i:1;s:3:\"3xl\";i:2;s:2:\"xl\";i:3;s:1:\"l\";i:4;s:1:\"m\";i:5;s:1:\"s\";i:6;s:2:\"xs\";}s:4:\"name\";s:13:\"pa_kich-thuoc\";s:7:\"visible\";s:4:\"true\";s:9:\"variation\";s:4:\"true\";s:10:\"show_empty\";s:3:\"yes\";}i:1;a:5:{s:6:\"values\";a:7:{i:0;s:3:\"cam\";i:1;s:3:\"den\";i:2;s:2:\"do\";i:3;s:4:\"hong\";i:4;s:5:\"trang\";i:5;s:3:\"xam\";i:6;s:4:\"xanh\";}s:4:\"name\";s:10:\"pa_mau-sac\";s:7:\"visible\";s:4:\"true\";s:9:\"variation\";s:5:\"false\";s:10:\"show_empty\";s:3:\"yes\";}}', 'Quần Áo', '', 'publish', 'closed', 'closed', '', 'jcaa_quan-ao', '', '', '2018-03-21 06:00:04', '2018-03-21 06:00:04', '', 0, 'http://hanghieu.test/?post_type=attribute_group&#038;p=38', 0, 'attribute_group', '', 0);
INSERT INTO `wp_posts` VALUES (39, 1, '2018-03-21 05:59:30', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-21 05:59:30', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=attribute_group&p=39', 0, 'attribute_group', '', 0);
INSERT INTO `wp_posts` VALUES (40, 1, '2018-03-21 05:59:31', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-21 05:59:31', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=attribute_group&p=40', 0, 'attribute_group', '', 0);
INSERT INTO `wp_posts` VALUES (41, 1, '2018-03-21 06:32:22', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 21, 2018 @ 06:32 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-21 06:32:22', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=41', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (42, 1, '2018-03-21 06:43:20', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 21, 2018 @ 06:43 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-21 06:43:20', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=42', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (43, 1, '2018-03-21 06:44:01', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 21, 2018 @ 06:44 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-21 06:44:01', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=43', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (44, 1, '2018-03-21 06:44:47', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 21, 2018 @ 06:44 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-21 06:44:47', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=44', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (45, 1, '2018-03-21 06:44:49', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 21, 2018 @ 06:44 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-21 06:44:49', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=45', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (46, 1, '2018-03-21 06:45:11', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 21, 2018 @ 06:45 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-21 06:45:11', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=46', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (47, 1, '2018-03-21 06:45:36', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 21, 2018 @ 06:45 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-21 06:45:36', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=47', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (48, 1, '2018-03-22 07:21:10', '2018-03-22 07:21:10', '', 'Áo Lining - APLK373', '', 'publish', 'closed', 'closed', '', 'ao-lining-aplk373', '', '', '2018-03-22 13:17:20', '2018-03-22 13:17:20', '', 19, 'http://hanghieu.test/san-pham/ao-lining-aplk373/', 3, 'product_variation', '', 0);
INSERT INTO `wp_posts` VALUES (49, 1, '2018-03-22 07:21:11', '2018-03-22 07:21:11', '', 'Áo Lining - APLK373', '', 'publish', 'closed', 'closed', '', 'ao-lining-aplk373-2', '', '', '2018-03-22 13:17:20', '2018-03-22 13:17:20', '', 19, 'http://hanghieu.test/san-pham/ao-lining-aplk373/', 4, 'product_variation', '', 0);
INSERT INTO `wp_posts` VALUES (50, 1, '2018-03-22 07:21:11', '2018-03-22 07:21:11', '', 'Áo Lining - APLK373', '', 'publish', 'closed', 'closed', '', 'ao-lining-aplk373-3', '', '', '2018-03-22 13:17:20', '2018-03-22 13:17:20', '', 19, 'http://hanghieu.test/san-pham/ao-lining-aplk373/', 1, 'product_variation', '', 0);
INSERT INTO `wp_posts` VALUES (51, 1, '2018-03-22 07:21:11', '2018-03-22 07:21:11', '', 'Áo Lining - APLK373', '', 'publish', 'closed', 'closed', '', 'ao-lining-aplk373-4', '', '', '2018-03-22 13:17:20', '2018-03-22 13:17:20', '', 19, 'http://hanghieu.test/san-pham/ao-lining-aplk373/', 2, 'product_variation', '', 0);
INSERT INTO `wp_posts` VALUES (52, 1, '2018-03-22 07:21:11', '2018-03-22 07:21:11', '', 'Áo Lining - APLK373', '', 'publish', 'closed', 'closed', '', 'ao-lining-aplk373-5', '', '', '2018-03-22 13:17:20', '2018-03-22 13:17:20', '', 19, 'http://hanghieu.test/san-pham/ao-lining-aplk373/', 5, 'product_variation', '', 0);
INSERT INTO `wp_posts` VALUES (53, 1, '2018-03-22 07:21:11', '2018-03-22 07:21:11', '', 'Áo Lining - APLK373', '', 'publish', 'closed', 'closed', '', 'ao-lining-aplk373-6', '', '', '2018-03-22 13:17:20', '2018-03-22 13:17:20', '', 19, 'http://hanghieu.test/san-pham/ao-lining-aplk373/', 6, 'product_variation', '', 0);
INSERT INTO `wp_posts` VALUES (54, 1, '2018-03-22 07:21:11', '2018-03-22 07:21:11', '', 'Áo Lining - APLK373', '', 'publish', 'closed', 'closed', '', 'ao-lining-aplk373-7', '', '', '2018-03-22 13:17:20', '2018-03-22 13:17:20', '', 19, 'http://hanghieu.test/san-pham/ao-lining-aplk373/', 7, 'product_variation', '', 0);
INSERT INTO `wp_posts` VALUES (55, 1, '2018-03-22 07:21:11', '2018-03-22 07:21:11', '', 'Áo Lining - APLK373', '', 'publish', 'closed', 'closed', '', 'ao-lining-aplk373-8', '', '', '2018-03-22 13:17:20', '2018-03-22 13:17:20', '', 19, 'http://hanghieu.test/san-pham/ao-lining-aplk373/', 8, 'product_variation', '', 0);
INSERT INTO `wp_posts` VALUES (56, 1, '2018-03-22 07:21:11', '2018-03-22 07:21:11', '', 'Áo Lining - APLK373', '', 'publish', 'closed', 'closed', '', 'ao-lining-aplk373-9', '', '', '2018-03-22 13:17:20', '2018-03-22 13:17:20', '', 19, 'http://hanghieu.test/san-pham/ao-lining-aplk373/', 9, 'product_variation', '', 0);
INSERT INTO `wp_posts` VALUES (57, 1, '2018-03-22 07:21:11', '2018-03-22 07:21:11', '', 'Áo Lining - APLK373', '', 'publish', 'closed', 'closed', '', 'ao-lining-aplk373-10', '', '', '2018-03-22 13:17:20', '2018-03-22 13:17:20', '', 19, 'http://hanghieu.test/san-pham/ao-lining-aplk373/', 10, 'product_variation', '', 0);
INSERT INTO `wp_posts` VALUES (58, 1, '2018-03-22 07:21:11', '2018-03-22 07:21:11', '', 'Áo Lining - APLK373', '', 'publish', 'closed', 'closed', '', 'ao-lining-aplk373-11', '', '', '2018-03-22 13:17:20', '2018-03-22 13:17:20', '', 19, 'http://hanghieu.test/san-pham/ao-lining-aplk373/', 11, 'product_variation', '', 0);
INSERT INTO `wp_posts` VALUES (59, 1, '2018-03-22 07:21:11', '2018-03-22 07:21:11', '', 'Áo Lining - APLK373', '', 'publish', 'closed', 'closed', '', 'ao-lining-aplk373-12', '', '', '2018-03-22 13:17:20', '2018-03-22 13:17:20', '', 19, 'http://hanghieu.test/san-pham/ao-lining-aplk373/', 12, 'product_variation', '', 0);
INSERT INTO `wp_posts` VALUES (60, 1, '2018-03-22 07:21:12', '2018-03-22 07:21:12', '', 'Áo Lining - APLK373', '', 'publish', 'closed', 'closed', '', 'ao-lining-aplk373-13', '', '', '2018-03-22 13:17:20', '2018-03-22 13:17:20', '', 19, 'http://hanghieu.test/san-pham/ao-lining-aplk373/', 13, 'product_variation', '', 0);
INSERT INTO `wp_posts` VALUES (61, 1, '2018-03-22 07:21:12', '2018-03-22 07:21:12', '', 'Áo Lining - APLK373', '', 'publish', 'closed', 'closed', '', 'ao-lining-aplk373-14', '', '', '2018-03-22 13:17:20', '2018-03-22 13:17:20', '', 19, 'http://hanghieu.test/san-pham/ao-lining-aplk373/', 14, 'product_variation', '', 0);
INSERT INTO `wp_posts` VALUES (62, 1, '2018-03-22 08:14:51', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:14 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:14:51', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=62', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (63, 1, '2018-03-22 08:16:50', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:16 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:16:50', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=63', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (64, 1, '2018-03-22 08:17:04', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:17 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:17:04', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=64', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (65, 1, '2018-03-22 08:19:33', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:19 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:19:33', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=65', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (66, 1, '2018-03-22 08:21:46', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:21 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:21:46', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=66', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (67, 1, '2018-03-22 08:22:42', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:22 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:22:42', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=67', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (68, 1, '2018-03-22 08:22:58', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:22 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:22:58', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=68', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (69, 1, '2018-03-22 08:24:19', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:24 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:24:19', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=69', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (70, 1, '2018-03-22 08:25:38', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:25 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:25:38', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=70', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (71, 1, '2018-03-22 08:26:15', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:26 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:26:15', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=71', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (72, 1, '2018-03-22 08:27:19', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:27 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:27:19', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=72', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (73, 1, '2018-03-22 08:27:21', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:27 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:27:21', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=73', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (74, 1, '2018-03-22 08:27:23', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:27 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:27:23', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=74', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (75, 1, '2018-03-22 08:27:23', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:27 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:27:23', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=75', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (76, 1, '2018-03-22 08:27:23', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:27 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:27:23', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=76', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (77, 1, '2018-03-22 08:27:24', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:27 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:27:24', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=77', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (78, 1, '2018-03-22 08:27:33', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:27 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:27:33', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=78', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (79, 1, '2018-03-22 08:27:36', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:27 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:27:36', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=79', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (80, 1, '2018-03-22 08:28:20', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:28 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:28:20', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=80', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (81, 1, '2018-03-22 08:51:58', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:51 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:51:58', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=81', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (82, 1, '2018-03-22 08:52:32', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:52 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:52:32', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=82', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (83, 1, '2018-03-22 08:52:59', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:52 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:52:59', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=83', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (84, 1, '2018-03-22 08:53:03', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:53 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:53:03', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=84', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (85, 1, '2018-03-22 08:53:36', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:53 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:53:36', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=85', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (86, 1, '2018-03-22 08:53:39', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:53 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:53:39', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=86', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (87, 1, '2018-03-22 08:53:43', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:53 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:53:43', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=87', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (88, 1, '2018-03-22 08:53:44', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:53 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:53:44', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=88', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (89, 1, '2018-03-22 08:53:45', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:53 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:53:45', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=89', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (90, 1, '2018-03-22 08:53:46', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:53 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:53:46', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=90', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (91, 1, '2018-03-22 08:53:46', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:53 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:53:46', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=91', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (92, 1, '2018-03-22 08:53:46', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:53 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:53:46', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=92', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (93, 1, '2018-03-22 08:55:30', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:55 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:55:30', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=93', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (94, 1, '2018-03-22 08:55:39', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:55 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:55:39', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=94', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (95, 1, '2018-03-22 08:57:15', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:57 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:57:15', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=95', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (96, 1, '2018-03-22 08:57:31', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:57 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:57:31', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=96', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (97, 1, '2018-03-22 08:59:21', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:59 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:59:21', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=97', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (98, 1, '2018-03-22 09:00:33', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:00 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:00:33', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=98', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (99, 1, '2018-03-22 09:01:23', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:01 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:01:23', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=99', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (100, 1, '2018-03-22 09:02:18', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:02 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:02:18', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=100', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (101, 1, '2018-03-22 09:11:32', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:11 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:11:32', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=101', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (102, 1, '2018-03-22 09:12:05', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:12 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:12:05', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=102', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (103, 1, '2018-03-22 09:14:01', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:14 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:14:01', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=103', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (104, 1, '2018-03-22 09:14:10', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:14 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:14:10', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=104', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (105, 1, '2018-03-22 09:14:47', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:14 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:14:47', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=105', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (106, 1, '2018-03-22 09:15:05', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:15 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:15:05', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=106', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (107, 1, '2018-03-22 09:15:20', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:15 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:15:20', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=107', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (108, 1, '2018-03-22 09:16:22', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:16 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:16:22', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=108', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (109, 1, '2018-03-22 09:17:00', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:17 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:17:00', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=109', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (110, 1, '2018-03-22 09:17:29', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:17 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:17:29', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=110', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (111, 1, '2018-03-22 09:17:48', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:17 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:17:48', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=111', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (112, 1, '2018-03-22 09:18:01', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:18 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:18:01', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=112', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (113, 1, '2018-03-22 09:18:13', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:18 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:18:13', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=113', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (114, 1, '2018-03-22 09:18:38', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:18 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:18:38', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=114', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (115, 1, '2018-03-22 09:18:48', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:18 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:18:48', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=115', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (116, 1, '2018-03-22 09:19:26', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:19 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:19:26', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=116', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (117, 1, '2018-03-22 09:20:50', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:20 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:20:50', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=117', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (118, 1, '2018-03-22 09:21:29', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:21 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:21:29', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=118', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (119, 1, '2018-03-22 09:23:46', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:23 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:23:46', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=119', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (120, 1, '2018-03-22 09:25:42', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:25 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:25:42', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=120', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (121, 1, '2018-03-22 09:26:08', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:26 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:26:08', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=121', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (122, 1, '2018-03-22 09:26:20', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:26 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:26:20', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=122', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (123, 1, '2018-03-22 09:26:54', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:26 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:26:54', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=123', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (124, 1, '2018-03-22 09:27:08', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:27 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:27:08', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=124', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (125, 1, '2018-03-22 09:27:20', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:27 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:27:20', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=125', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (126, 1, '2018-03-22 09:27:58', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:27 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:27:58', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=126', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (127, 1, '2018-03-22 09:29:35', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:29 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:29:35', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=127', 0, 'shop_order', '', 0);
INSERT INTO `wp_posts` VALUES (130, 1, '2018-03-22 10:08:10', '2018-03-22 10:08:10', '', 'POS custom product', '', 'publish', 'open', 'closed', '', 'pos-custom-product', '', '', '2018-03-22 10:08:10', '2018-03-22 10:08:10', '', 0, 'http://hanghieu.test/san-pham/pos-custom-product/', 0, 'product', '', 0);
INSERT INTO `wp_posts` VALUES (132, 1, '2018-03-22 10:31:50', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 10:31:50', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=wc_custom_statuses&p=132', 0, 'wc_custom_statuses', '', 0);
INSERT INTO `wp_posts` VALUES (134, 1, '2018-03-22 11:26:14', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 11:26:14', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=product&p=134', 0, 'product', '', 0);
INSERT INTO `wp_posts` VALUES (136, 1, '2018-03-22 12:33:47', '2018-03-22 12:33:47', '', 'Đặt hàng trước', '', 'publish', 'closed', 'closed', '', 'dat-hang-truoc', '', '', '2018-03-22 12:34:21', '2018-03-22 12:34:21', '', 0, 'http://hanghieu.test/?post_type=wc_custom_statuses&#038;p=136', 0, 'wc_custom_statuses', '', 0);
INSERT INTO `wp_posts` VALUES (137, 1, '2018-03-22 13:44:04', '2018-03-22 13:44:04', '', 'Miễn phí vận chuyển', '', 'publish', 'closed', 'closed', '', 'mien-phi-van-chuyen', '', '', '2018-03-22 14:24:44', '2018-03-22 14:24:44', '', 0, 'http://hanghieu.test/?post_type=was&#038;p=137', 0, 'was', '', 0);
COMMIT;

-- ----------------------------
-- Table structure for wp_term_relationships
-- ----------------------------
DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- ----------------------------
-- Records of wp_term_relationships
-- ----------------------------
BEGIN;
INSERT INTO `wp_term_relationships` VALUES (1, 1, 0);
INSERT INTO `wp_term_relationships` VALUES (9, 2, 0);
INSERT INTO `wp_term_relationships` VALUES (19, 4, 0);
INSERT INTO `wp_term_relationships` VALUES (19, 19, 0);
INSERT INTO `wp_term_relationships` VALUES (19, 20, 0);
INSERT INTO `wp_term_relationships` VALUES (19, 21, 0);
INSERT INTO `wp_term_relationships` VALUES (19, 22, 0);
INSERT INTO `wp_term_relationships` VALUES (19, 23, 0);
INSERT INTO `wp_term_relationships` VALUES (19, 24, 0);
INSERT INTO `wp_term_relationships` VALUES (19, 25, 0);
INSERT INTO `wp_term_relationships` VALUES (19, 26, 0);
INSERT INTO `wp_term_relationships` VALUES (19, 31, 0);
INSERT INTO `wp_term_relationships` VALUES (19, 32, 0);
INSERT INTO `wp_term_relationships` VALUES (19, 33, 0);
INSERT INTO `wp_term_relationships` VALUES (19, 36, 0);
INSERT INTO `wp_term_relationships` VALUES (23, 9, 0);
INSERT INTO `wp_term_relationships` VALUES (24, 9, 0);
INSERT INTO `wp_term_relationships` VALUES (27, 9, 0);
INSERT INTO `wp_term_relationships` VALUES (28, 9, 0);
INSERT INTO `wp_term_relationships` VALUES (29, 9, 0);
INSERT INTO `wp_term_relationships` VALUES (30, 9, 0);
INSERT INTO `wp_term_relationships` VALUES (31, 9, 0);
INSERT INTO `wp_term_relationships` VALUES (32, 9, 0);
INSERT INTO `wp_term_relationships` VALUES (33, 9, 0);
INSERT INTO `wp_term_relationships` VALUES (34, 9, 0);
INSERT INTO `wp_term_relationships` VALUES (35, 9, 0);
INSERT INTO `wp_term_relationships` VALUES (36, 9, 0);
INSERT INTO `wp_term_relationships` VALUES (129, 2, 0);
INSERT INTO `wp_term_relationships` VALUES (130, 2, 0);
COMMIT;

-- ----------------------------
-- Table structure for wp_term_taxonomy
-- ----------------------------
DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- ----------------------------
-- Records of wp_term_taxonomy
-- ----------------------------
BEGIN;
INSERT INTO `wp_term_taxonomy` VALUES (1, 1, 'category', '', 0, 1);
INSERT INTO `wp_term_taxonomy` VALUES (2, 2, 'product_type', '', 0, 1);
INSERT INTO `wp_term_taxonomy` VALUES (3, 3, 'product_type', '', 0, 0);
INSERT INTO `wp_term_taxonomy` VALUES (4, 4, 'product_type', '', 0, 1);
INSERT INTO `wp_term_taxonomy` VALUES (5, 5, 'product_type', '', 0, 0);
INSERT INTO `wp_term_taxonomy` VALUES (6, 6, 'product_visibility', '', 0, 0);
INSERT INTO `wp_term_taxonomy` VALUES (7, 7, 'product_visibility', '', 0, 0);
INSERT INTO `wp_term_taxonomy` VALUES (8, 8, 'product_visibility', '', 0, 0);
INSERT INTO `wp_term_taxonomy` VALUES (9, 9, 'product_visibility', '', 0, 0);
INSERT INTO `wp_term_taxonomy` VALUES (10, 10, 'product_visibility', '', 0, 0);
INSERT INTO `wp_term_taxonomy` VALUES (11, 11, 'product_visibility', '', 0, 0);
INSERT INTO `wp_term_taxonomy` VALUES (12, 12, 'product_visibility', '', 0, 0);
INSERT INTO `wp_term_taxonomy` VALUES (13, 13, 'product_visibility', '', 0, 0);
INSERT INTO `wp_term_taxonomy` VALUES (14, 14, 'product_visibility', '', 0, 0);
INSERT INTO `wp_term_taxonomy` VALUES (15, 15, 'product_cat', '', 0, 0);
INSERT INTO `wp_term_taxonomy` VALUES (16, 16, 'product_cat', '', 0, 0);
INSERT INTO `wp_term_taxonomy` VALUES (17, 17, 'product_cat', '', 0, 0);
INSERT INTO `wp_term_taxonomy` VALUES (18, 18, 'product_cat', '', 0, 0);
INSERT INTO `wp_term_taxonomy` VALUES (19, 19, 'product_cat', '', 16, 1);
INSERT INTO `wp_term_taxonomy` VALUES (20, 20, 'pa_kich-thuoc', '', 0, 1);
INSERT INTO `wp_term_taxonomy` VALUES (21, 21, 'pa_kich-thuoc', '', 0, 1);
INSERT INTO `wp_term_taxonomy` VALUES (22, 22, 'pa_kich-thuoc', '', 0, 1);
INSERT INTO `wp_term_taxonomy` VALUES (23, 23, 'pa_kich-thuoc', '', 0, 1);
INSERT INTO `wp_term_taxonomy` VALUES (24, 24, 'pa_kich-thuoc', '', 0, 1);
INSERT INTO `wp_term_taxonomy` VALUES (25, 25, 'pa_mau-sac', '', 0, 1);
INSERT INTO `wp_term_taxonomy` VALUES (26, 26, 'pa_mau-sac', '', 0, 1);
INSERT INTO `wp_term_taxonomy` VALUES (27, 27, 'pa_mau-sac', '', 0, 0);
INSERT INTO `wp_term_taxonomy` VALUES (28, 28, 'pa_mau-sac', '', 0, 0);
INSERT INTO `wp_term_taxonomy` VALUES (29, 29, 'pa_mau-sac', '', 0, 0);
INSERT INTO `wp_term_taxonomy` VALUES (30, 30, 'pa_mau-sac', '', 0, 0);
INSERT INTO `wp_term_taxonomy` VALUES (31, 31, 'pa_kich-thuoc', '', 0, 1);
INSERT INTO `wp_term_taxonomy` VALUES (32, 32, 'pa_kich-thuoc', '', 0, 1);
INSERT INTO `wp_term_taxonomy` VALUES (33, 33, 'product_tag', '', 0, 1);
INSERT INTO `wp_term_taxonomy` VALUES (34, 34, 'pa_mau-sac', '', 0, 0);
INSERT INTO `wp_term_taxonomy` VALUES (36, 36, 'yith_product_brand', '', 0, 1);
COMMIT;

-- ----------------------------
-- Table structure for wp_termmeta
-- ----------------------------
DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- ----------------------------
-- Records of wp_termmeta
-- ----------------------------
BEGIN;
INSERT INTO `wp_termmeta` VALUES (1, 16, 'order', '0');
INSERT INTO `wp_termmeta` VALUES (2, 17, 'order', '0');
INSERT INTO `wp_termmeta` VALUES (3, 18, 'order', '0');
INSERT INTO `wp_termmeta` VALUES (4, 19, 'order', '0');
INSERT INTO `wp_termmeta` VALUES (5, 20, 'order_pa_kich-thuoc', '7');
INSERT INTO `wp_termmeta` VALUES (6, 21, 'order_pa_kich-thuoc', '6');
INSERT INTO `wp_termmeta` VALUES (7, 22, 'order_pa_kich-thuoc', '5');
INSERT INTO `wp_termmeta` VALUES (8, 23, 'order_pa_kich-thuoc', '4');
INSERT INTO `wp_termmeta` VALUES (9, 24, 'order_pa_kich-thuoc', '3');
INSERT INTO `wp_termmeta` VALUES (10, 25, 'order_pa_mau-sac', '0');
INSERT INTO `wp_termmeta` VALUES (11, 26, 'order_pa_mau-sac', '0');
INSERT INTO `wp_termmeta` VALUES (12, 27, 'order_pa_mau-sac', '0');
INSERT INTO `wp_termmeta` VALUES (13, 28, 'order_pa_mau-sac', '0');
INSERT INTO `wp_termmeta` VALUES (14, 29, 'order_pa_mau-sac', '0');
INSERT INTO `wp_termmeta` VALUES (15, 30, 'order_pa_mau-sac', '0');
INSERT INTO `wp_termmeta` VALUES (16, 31, 'order_pa_kich-thuoc', '1');
INSERT INTO `wp_termmeta` VALUES (17, 32, 'order_pa_kich-thuoc', '2');
INSERT INTO `wp_termmeta` VALUES (18, 19, 'product_count_product_cat', '1');
INSERT INTO `wp_termmeta` VALUES (19, 16, 'product_count_product_cat', '1');
INSERT INTO `wp_termmeta` VALUES (20, 33, 'product_count_product_tag', '1');
INSERT INTO `wp_termmeta` VALUES (21, 34, 'order_pa_mau-sac', '0');
COMMIT;

-- ----------------------------
-- Table structure for wp_terms
-- ----------------------------
DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- ----------------------------
-- Records of wp_terms
-- ----------------------------
BEGIN;
INSERT INTO `wp_terms` VALUES (1, 'Chưa được phân loại', 'khong-phan-loai', 0);
INSERT INTO `wp_terms` VALUES (2, 'simple', 'simple', 0);
INSERT INTO `wp_terms` VALUES (3, 'grouped', 'grouped', 0);
INSERT INTO `wp_terms` VALUES (4, 'variable', 'variable', 0);
INSERT INTO `wp_terms` VALUES (5, 'external', 'external', 0);
INSERT INTO `wp_terms` VALUES (6, 'exclude-from-search', 'exclude-from-search', 0);
INSERT INTO `wp_terms` VALUES (7, 'exclude-from-catalog', 'exclude-from-catalog', 0);
INSERT INTO `wp_terms` VALUES (8, 'featured', 'featured', 0);
INSERT INTO `wp_terms` VALUES (9, 'outofstock', 'outofstock', 0);
INSERT INTO `wp_terms` VALUES (10, 'rated-1', 'rated-1', 0);
INSERT INTO `wp_terms` VALUES (11, 'rated-2', 'rated-2', 0);
INSERT INTO `wp_terms` VALUES (12, 'rated-3', 'rated-3', 0);
INSERT INTO `wp_terms` VALUES (13, 'rated-4', 'rated-4', 0);
INSERT INTO `wp_terms` VALUES (14, 'rated-5', 'rated-5', 0);
INSERT INTO `wp_terms` VALUES (15, 'chua-phan-loai', 'chua-phan-loai', 0);
INSERT INTO `wp_terms` VALUES (16, 'Nam', 'nam', 0);
INSERT INTO `wp_terms` VALUES (17, 'Nữ', 'nu', 0);
INSERT INTO `wp_terms` VALUES (18, 'Trẻ em', 'tre-em', 0);
INSERT INTO `wp_terms` VALUES (19, 'Áo', 'ao', 0);
INSERT INTO `wp_terms` VALUES (20, 'XS', 'xs', 0);
INSERT INTO `wp_terms` VALUES (21, 'S', 's', 0);
INSERT INTO `wp_terms` VALUES (22, 'M', 'm', 0);
INSERT INTO `wp_terms` VALUES (23, 'L', 'l', 0);
INSERT INTO `wp_terms` VALUES (24, 'XL', 'xl', 0);
INSERT INTO `wp_terms` VALUES (25, 'Đen', 'den', 0);
INSERT INTO `wp_terms` VALUES (26, 'Trắng', 'trang', 0);
INSERT INTO `wp_terms` VALUES (27, 'Xanh', 'xanh', 0);
INSERT INTO `wp_terms` VALUES (28, 'Đỏ', 'do', 0);
INSERT INTO `wp_terms` VALUES (29, 'Hồng', 'hong', 0);
INSERT INTO `wp_terms` VALUES (30, 'Xám', 'xam', 0);
INSERT INTO `wp_terms` VALUES (31, '2XL', '2xl', 0);
INSERT INTO `wp_terms` VALUES (32, '3XL', '3xl', 0);
INSERT INTO `wp_terms` VALUES (33, 'Lining', 'lining', 0);
INSERT INTO `wp_terms` VALUES (34, 'Cam', 'cam', 0);
INSERT INTO `wp_terms` VALUES (36, 'Lining', 'lining', 0);
COMMIT;

-- ----------------------------
-- Table structure for wp_usermeta
-- ----------------------------
DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- ----------------------------
-- Records of wp_usermeta
-- ----------------------------
BEGIN;
INSERT INTO `wp_usermeta` VALUES (1, 1, 'nickname', 'XuaNguyen');
INSERT INTO `wp_usermeta` VALUES (2, 1, 'first_name', 'Xuan');
INSERT INTO `wp_usermeta` VALUES (3, 1, 'last_name', 'My');
INSERT INTO `wp_usermeta` VALUES (4, 1, 'description', '');
INSERT INTO `wp_usermeta` VALUES (5, 1, 'rich_editing', 'true');
INSERT INTO `wp_usermeta` VALUES (6, 1, 'syntax_highlighting', 'true');
INSERT INTO `wp_usermeta` VALUES (7, 1, 'comment_shortcuts', 'false');
INSERT INTO `wp_usermeta` VALUES (8, 1, 'admin_color', 'fresh');
INSERT INTO `wp_usermeta` VALUES (9, 1, 'use_ssl', '0');
INSERT INTO `wp_usermeta` VALUES (10, 1, 'show_admin_bar_front', 'true');
INSERT INTO `wp_usermeta` VALUES (11, 1, 'locale', '');
INSERT INTO `wp_usermeta` VALUES (12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13, 1, 'wp_user_level', '10');
INSERT INTO `wp_usermeta` VALUES (14, 1, 'dismissed_wp_pointers', '');
INSERT INTO `wp_usermeta` VALUES (15, 1, 'show_welcome_panel', '1');
INSERT INTO `wp_usermeta` VALUES (16, 1, 'session_tokens', 'a:2:{s:64:\"fd4c7198265bd78e5ea0af0eb32ca0c44512b03b5a1a81b6664217fc1a2186bf\";a:4:{s:10:\"expiration\";i:1521778117;s:2:\"ip\";s:12:\"192.168.10.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36\";s:5:\"login\";i:1521605317;}s:64:\"f40e5e50f7bbda5d8b840dcea7de90efa7283b7ebdaf4ea1f493a67cab556807\";a:4:{s:10:\"expiration\";i:1521874168;s:2:\"ip\";s:12:\"192.168.10.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36\";s:5:\"login\";i:1521701368;}}');
INSERT INTO `wp_usermeta` VALUES (17, 1, 'wp_dashboard_quick_press_last_post_id', '3');
INSERT INTO `wp_usermeta` VALUES (18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"192.168.10.0\";}');
INSERT INTO `wp_usermeta` VALUES (20, 1, 'closedpostboxes_product', 'a:0:{}');
INSERT INTO `wp_usermeta` VALUES (21, 1, 'metaboxhidden_product', 'a:4:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";i:2;s:11:\"postexcerpt\";i:3;s:11:\"commentsdiv\";}');
INSERT INTO `wp_usermeta` VALUES (22, 1, 'wp_user-settings', 'editor_expand=on&libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (23, 1, 'wp_user-settings-time', '1521608565');
INSERT INTO `wp_usermeta` VALUES (24, 1, 'closedpostboxes_shop_order', 'a:1:{i:0;s:29:\"woocommerce-shipment-tracking\";}');
INSERT INTO `wp_usermeta` VALUES (25, 1, 'metaboxhidden_shop_order', 'a:2:{i:0;s:10:\"postcustom\";i:1;s:27:\"woocommerce-order-downloads\";}');
INSERT INTO `wp_usermeta` VALUES (26, 1, 'outlet', '1');
INSERT INTO `wp_usermeta` VALUES (27, 1, 'discount', 'enable');
INSERT INTO `wp_usermeta` VALUES (28, 1, 'billing_first_name', 'Xuan');
INSERT INTO `wp_usermeta` VALUES (29, 1, 'billing_last_name', 'My');
INSERT INTO `wp_usermeta` VALUES (30, 1, 'billing_company', '');
INSERT INTO `wp_usermeta` VALUES (31, 1, 'billing_address_1', 'Số 17, tổ dân cư 16, Phú Đô, Nam Từ Liêm');
INSERT INTO `wp_usermeta` VALUES (32, 1, 'billing_address_2', '');
INSERT INTO `wp_usermeta` VALUES (33, 1, 'billing_city', 'Hà Nội');
INSERT INTO `wp_usermeta` VALUES (34, 1, 'billing_postcode', '10000');
INSERT INTO `wp_usermeta` VALUES (35, 1, 'billing_country', 'VN');
INSERT INTO `wp_usermeta` VALUES (36, 1, 'billing_state', '');
INSERT INTO `wp_usermeta` VALUES (37, 1, 'billing_phone', '0989649075');
INSERT INTO `wp_usermeta` VALUES (38, 1, 'billing_email', 'xuan.0211@gmail.com');
INSERT INTO `wp_usermeta` VALUES (39, 1, 'shipping_first_name', 'Xuan');
INSERT INTO `wp_usermeta` VALUES (40, 1, 'shipping_last_name', 'My');
INSERT INTO `wp_usermeta` VALUES (41, 1, 'shipping_company', '');
INSERT INTO `wp_usermeta` VALUES (42, 1, 'shipping_address_1', 'Số 17, tổ dân cư 16, Phú Đô, Nam Từ Liêm');
INSERT INTO `wp_usermeta` VALUES (43, 1, 'shipping_address_2', '');
INSERT INTO `wp_usermeta` VALUES (44, 1, 'shipping_city', 'Hà Nội');
INSERT INTO `wp_usermeta` VALUES (45, 1, 'shipping_postcode', '10000');
INSERT INTO `wp_usermeta` VALUES (46, 1, 'shipping_country', 'VN');
INSERT INTO `wp_usermeta` VALUES (47, 1, 'shipping_state', '');
INSERT INTO `wp_usermeta` VALUES (48, 1, 'last_update', '1521720735');
INSERT INTO `wp_usermeta` VALUES (51, 1, 'last_login', '2018-03-22 06:49:28');
INSERT INTO `wp_usermeta` VALUES (52, 1, 'meta-box-order_product', 'a:3:{s:4:\"side\";s:128:\"submitdiv,product_catdiv,tagsdiv-product_tag,product_grid_category,yith_product_branddiv,postimagediv,woocommerce-product-images\";s:6:\"normal\";s:67:\"woocommerce-product-data,postcustom,slugdiv,postexcerpt,commentsdiv\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (53, 1, 'screen_layout_product', '2');
INSERT INTO `wp_usermeta` VALUES (60, 1, 'shipping_method', 'a:1:{i:0;s:15:\"free_shipping:3\";}');
INSERT INTO `wp_usermeta` VALUES (63, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"b209c1dce49d5754a02d14c9974f1d0f\";a:10:{s:3:\"key\";s:32:\"b209c1dce49d5754a02d14c9974f1d0f\";s:10:\"product_id\";i:19;s:12:\"variation_id\";i:48;s:9:\"variation\";a:2:{s:23:\"attribute_pa_kich-thuoc\";s:3:\"2xl\";s:20:\"attribute_pa_mau-sac\";s:3:\"den\";}s:8:\"quantity\";i:4;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:1800000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:1800000;s:8:\"line_tax\";i:0;}}}');
COMMIT;

-- ----------------------------
-- Table structure for wp_users
-- ----------------------------
DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- ----------------------------
-- Records of wp_users
-- ----------------------------
BEGIN;
INSERT INTO `wp_users` VALUES (1, 'admin', '$P$BJHEgpTBCTde6/RSno0QHtGWivoBDX.', 'admin', 'xuan.0211@gmail.com', '', '2018-03-21 04:08:30', '2018-03-22 14:31:12', '', 0, 'admin');
COMMIT;

-- ----------------------------
-- Table structure for wp_wc_download_log
-- ----------------------------
DROP TABLE IF EXISTS `wp_wc_download_log`;
CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  PRIMARY KEY (`download_log_id`),
  KEY `permission_id` (`permission_id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- ----------------------------
-- Table structure for wp_wc_poin_of_sale_grids
-- ----------------------------
DROP TABLE IF EXISTS `wp_wc_poin_of_sale_grids`;
CREATE TABLE `wp_wc_poin_of_sale_grids` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sort_order` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'name',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- ----------------------------
-- Table structure for wp_wc_poin_of_sale_outlets
-- ----------------------------
DROP TABLE IF EXISTS `wp_wc_poin_of_sale_outlets`;
CREATE TABLE `wp_wc_poin_of_sale_outlets` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `contact` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `social` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- ----------------------------
-- Records of wp_wc_poin_of_sale_outlets
-- ----------------------------
BEGIN;
INSERT INTO `wp_wc_poin_of_sale_outlets` VALUES (1, 'DMS Phú Đô', '{\"country\":\"VN\",\"address_1\":\"S\\u1ed1 17, T\\u1ed5 d\\u00e2n c\\u01b0 16, Ph\\u00fa \\u0110\\u00f4, Nam T\\u1eeb Li\\u00eam\",\"address_2\":\"\",\"city\":\"H\\u00e0 N\\u1ed9i\",\"state\":\"\",\"postcode\":\"10000\"}', '{\"email\":\"nguyenthidiemmyhanu@gmail.com\",\"phone\":\"01696465109\",\"fax\":\"\",\"website\":\"http:\\/\\/hanghieu.sale\",\"twitter\":\"@hanghieu.sale\",\"facebook\":\"@liningviet\"}');
COMMIT;

-- ----------------------------
-- Table structure for wp_wc_poin_of_sale_receipts
-- ----------------------------
DROP TABLE IF EXISTS `wp_wc_poin_of_sale_receipts`;
CREATE TABLE `wp_wc_poin_of_sale_receipts` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `print_outlet_address` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `print_outlet_contact_details` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `telephone_label` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fax_label` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email_label` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `website_label` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `receipt_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_number_label` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_date_label` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_date_format` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `print_order_time` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `print_server` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `served_by_label` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `served_by_type` enum('username','nickname','display_name') COLLATE utf8mb4_unicode_520_ci DEFAULT 'username',
  `tax_label` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `total_label` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `payment_label` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `print_number_items` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `items_label` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `print_barcode` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `show_image_product` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `show_sku` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `print_tax_number` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_number_label` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `print_order_notes` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_notes_label` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `print_customer_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `customer_name_label` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `print_customer_email` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `customer_email_label` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `print_customer_ship_address` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `customer_ship_address_label` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `header_text` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `footer_text` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `logo` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `text_size` enum('nomal','small','large') COLLATE utf8mb4_unicode_520_ci DEFAULT 'nomal',
  `title_position` enum('left','center','right') COLLATE utf8mb4_unicode_520_ci DEFAULT 'left',
  `logo_size` enum('nomal','small','large') COLLATE utf8mb4_unicode_520_ci DEFAULT 'nomal',
  `logo_position` enum('left','center','right') COLLATE utf8mb4_unicode_520_ci DEFAULT 'left',
  `contact_position` enum('left','center','right') COLLATE utf8mb4_unicode_520_ci DEFAULT 'left',
  `tax_number_position` enum('left','center','right') COLLATE utf8mb4_unicode_520_ci DEFAULT 'left',
  `custom_css` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `show_outlet` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `show_register` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `show_site_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `gift_receipt_title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Gift receipt',
  `print_copies_count` int(11) NOT NULL DEFAULT '1',
  `receipt_width` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `tax_summary` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- ----------------------------
-- Records of wp_wc_poin_of_sale_receipts
-- ----------------------------
BEGIN;
INSERT INTO `wp_wc_poin_of_sale_receipts` VALUES (1, 'Default Receipt', 'yes', 'yes', 'Tel', 'Fax', 'Email', 'Website', 'Receipt', 'Order Number', 'Order Date', 'Y-m-d', 'yes', 'yes', 'Served by', 'username', 'Tax', 'Total', 'Sales', 'yes', 'Number of Items', 'yes', 'no', '', 'no', 'Tax Number', 'yes', 'Note', 'yes', 'Customer Name', 'yes', 'Customer Email', 'yes', 'Shipping Address', '', '', '', '', 'center', '', '', '', '', '', 'yes', 'yes', 'yes', 'Gift Receipt', 1, '0', '0');
COMMIT;

-- ----------------------------
-- Table structure for wp_wc_poin_of_sale_registers
-- ----------------------------
DROP TABLE IF EXISTS `wp_wc_poin_of_sale_registers`;
CREATE TABLE `wp_wc_poin_of_sale_registers` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `outlet` int(20) NOT NULL DEFAULT '0',
  `default_customer` int(20) NOT NULL DEFAULT '0',
  `order_id` int(20) NOT NULL DEFAULT '0',
  `settings` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `_edit_last` int(20) NOT NULL DEFAULT '0',
  `opened` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `closed` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- ----------------------------
-- Records of wp_wc_poin_of_sale_registers
-- ----------------------------
BEGIN;
INSERT INTO `wp_wc_poin_of_sale_registers` VALUES (1, 'Diễm My Store', 'diem-my-store', '{\"grid_template\":\"categories\",\"receipt_template\":\"1\",\"prefix\":\"DMS\",\"suffix\":\"\",\"tax_number\":\"\",\"default_customer\":\"0\",\"default_shipping_method\":\"\",\"float_cash_management\":\"1\",\"disable_sale_prices\":\"0\",\"need_sync\":0}', 1, 0, 11, '{\"change_user\":\"1\",\"email_receipt\":\"0\",\"print_receipt\":\"0\",\"gift_receipt\":\"1\",\"note_request\":\"0\"}', 1, '2018-03-21 06:48:32', '0000-00-00 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for wp_wc_poin_of_sale_tiles
-- ----------------------------
DROP TABLE IF EXISTS `wp_wc_poin_of_sale_tiles`;
CREATE TABLE `wp_wc_poin_of_sale_tiles` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `grid_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `style` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'image',
  `colour` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '000000',
  `background` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'ffffff',
  `default_selection` bigint(20) NOT NULL,
  `order_position` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- ----------------------------
-- Table structure for wp_wc_point_of_sale_sale_reports
-- ----------------------------
DROP TABLE IF EXISTS `wp_wc_point_of_sale_sale_reports`;
CREATE TABLE `wp_wc_point_of_sale_sale_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `register_id` int(11) NOT NULL,
  `register_name` varchar(255) NOT NULL,
  `outlet_id` int(11) NOT NULL,
  `opened` datetime NOT NULL,
  `closed` datetime NOT NULL,
  `cashier_id` int(11) NOT NULL,
  `total_sales` float DEFAULT '0',
  `report_data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for wp_wc_webhooks
-- ----------------------------
DROP TABLE IF EXISTS `wp_wc_webhooks`;
CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`webhook_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- ----------------------------
-- Table structure for wp_woocommerce_api_keys
-- ----------------------------
DROP TABLE IF EXISTS `wp_woocommerce_api_keys`;
CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- ----------------------------
-- Table structure for wp_woocommerce_attribute_taxonomies
-- ----------------------------
DROP TABLE IF EXISTS `wp_woocommerce_attribute_taxonomies`;
CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- ----------------------------
-- Records of wp_woocommerce_attribute_taxonomies
-- ----------------------------
BEGIN;
INSERT INTO `wp_woocommerce_attribute_taxonomies` VALUES (1, 'kich-thuoc', 'Kích thước', 'select', 'menu_order', 0);
INSERT INTO `wp_woocommerce_attribute_taxonomies` VALUES (3, 'mau-sac', 'Màu sắc', 'select', 'menu_order', 0);
COMMIT;

-- ----------------------------
-- Table structure for wp_woocommerce_downloadable_product_permissions
-- ----------------------------
DROP TABLE IF EXISTS `wp_woocommerce_downloadable_product_permissions`;
CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- ----------------------------
-- Table structure for wp_woocommerce_log
-- ----------------------------
DROP TABLE IF EXISTS `wp_woocommerce_log`;
CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- ----------------------------
-- Table structure for wp_woocommerce_order_itemmeta
-- ----------------------------
DROP TABLE IF EXISTS `wp_woocommerce_order_itemmeta`;
CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- ----------------------------
-- Table structure for wp_woocommerce_order_items
-- ----------------------------
DROP TABLE IF EXISTS `wp_woocommerce_order_items`;
CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- ----------------------------
-- Table structure for wp_woocommerce_payment_tokenmeta
-- ----------------------------
DROP TABLE IF EXISTS `wp_woocommerce_payment_tokenmeta`;
CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- ----------------------------
-- Table structure for wp_woocommerce_payment_tokens
-- ----------------------------
DROP TABLE IF EXISTS `wp_woocommerce_payment_tokens`;
CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- ----------------------------
-- Table structure for wp_woocommerce_sessions
-- ----------------------------
DROP TABLE IF EXISTS `wp_woocommerce_sessions`;
CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_key`),
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- ----------------------------
-- Records of wp_woocommerce_sessions
-- ----------------------------
BEGIN;
INSERT INTO `wp_woocommerce_sessions` VALUES (199, '1', 'a:14:{s:4:\"cart\";s:444:\"a:1:{s:32:\"b209c1dce49d5754a02d14c9974f1d0f\";a:10:{s:3:\"key\";s:32:\"b209c1dce49d5754a02d14c9974f1d0f\";s:10:\"product_id\";i:19;s:12:\"variation_id\";i:48;s:9:\"variation\";a:2:{s:23:\"attribute_pa_kich-thuoc\";s:3:\"2xl\";s:20:\"attribute_pa_mau-sac\";s:3:\"den\";}s:8:\"quantity\";i:4;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:1800000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:1800000;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:427:\"a:15:{s:8:\"subtotal\";s:10:\"1800000.00\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:8:\"30000.00\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:10:\"1800000.00\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:4:\"0.00\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:10:\"1830000.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:997:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2018-03-22T12:12:15+00:00\";s:8:\"postcode\";s:5:\"10000\";s:4:\"city\";s:9:\"Hà Nội\";s:9:\"address_1\";s:52:\"Số 17, tổ dân cư 16, Phú Đô, Nam Từ Liêm\";s:7:\"address\";s:52:\"Số 17, tổ dân cư 16, Phú Đô, Nam Từ Liêm\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"VN\";s:17:\"shipping_postcode\";s:5:\"10000\";s:13:\"shipping_city\";s:9:\"Hà Nội\";s:18:\"shipping_address_1\";s:52:\"Số 17, tổ dân cư 16, Phú Đô, Nam Từ Liêm\";s:16:\"shipping_address\";s:52:\"Số 17, tổ dân cư 16, Phú Đô, Nam Từ Liêm\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"VN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:1:\"1\";s:10:\"first_name\";s:4:\"Xuan\";s:9:\"last_name\";s:2:\"My\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:10:\"0989649075\";s:5:\"email\";s:19:\"xuan.0211@gmail.com\";s:19:\"shipping_first_name\";s:4:\"Xuan\";s:18:\"shipping_last_name\";s:2:\"My\";s:16:\"shipping_company\";s:0:\"\";}\";s:22:\"shipping_for_package_0\";s:777:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_d72ebfcad92dceff674bb980aad286ac\";s:5:\"rates\";a:2:{s:11:\"flat_rate:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:11:\"flat_rate:1\";s:9:\"method_id\";s:9:\"flat_rate\";s:11:\"instance_id\";i:1;s:5:\"label\";s:12:\"Đồng giá\";s:4:\"cost\";s:8:\"30000.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:11:\"Mặt hàng\";s:30:\"Áo Lining - APLK373 &times; 4\";}}i:137;O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:3:\"137\";s:9:\"method_id\";s:17:\"advanced_shipping\";s:11:\"instance_id\";i:0;s:5:\"label\";s:96:\"Miễn phí vận chuyển (Với thời gian vận chuyển theo quy định của cửa hàng)\";s:4:\"cost\";s:4:\"0.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:11:\"Mặt hàng\";s:30:\"Áo Lining - APLK373 &times; 4\";}}}}\";s:25:\"previous_shipping_methods\";s:49:\"a:1:{i:0;a:2:{i:0;s:11:\"flat_rate:1\";i:1;i:137;}}\";s:23:\"chosen_shipping_methods\";s:29:\"a:1:{i:0;s:11:\"flat_rate:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:2;}\";s:10:\"wc_notices\";N;s:21:\"chosen_payment_method\";s:4:\"bacs\";s:22:\"order_awaiting_payment\";N;}', 1521886353);
COMMIT;

-- ----------------------------
-- Table structure for wp_woocommerce_shipping_zone_locations
-- ----------------------------
DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_locations`;
CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- ----------------------------
-- Records of wp_woocommerce_shipping_zone_locations
-- ----------------------------
BEGIN;
INSERT INTO `wp_woocommerce_shipping_zone_locations` VALUES (1, 1, 'VN', 'country');
COMMIT;

-- ----------------------------
-- Table structure for wp_woocommerce_shipping_zone_methods
-- ----------------------------
DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_methods`;
CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- ----------------------------
-- Records of wp_woocommerce_shipping_zone_methods
-- ----------------------------
BEGIN;
INSERT INTO `wp_woocommerce_shipping_zone_methods` VALUES (1, 1, 'flat_rate', 1, 1);
INSERT INTO `wp_woocommerce_shipping_zone_methods` VALUES (0, 2, 'flat_rate', 1, 0);
COMMIT;

-- ----------------------------
-- Table structure for wp_woocommerce_shipping_zones
-- ----------------------------
DROP TABLE IF EXISTS `wp_woocommerce_shipping_zones`;
CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- ----------------------------
-- Records of wp_woocommerce_shipping_zones
-- ----------------------------
BEGIN;
INSERT INTO `wp_woocommerce_shipping_zones` VALUES (1, 'Việt Nam', 0);
COMMIT;

-- ----------------------------
-- Table structure for wp_woocommerce_tax_rate_locations
-- ----------------------------
DROP TABLE IF EXISTS `wp_woocommerce_tax_rate_locations`;
CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- ----------------------------
-- Table structure for wp_woocommerce_tax_rates
-- ----------------------------
DROP TABLE IF EXISTS `wp_woocommerce_tax_rates`;
CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- ----------------------------
-- Table structure for wp_yith_wapo_groups
-- ----------------------------
DROP TABLE IF EXISTS `wp_yith_wapo_groups`;
CREATE TABLE `wp_yith_wapo_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `products_id` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `products_exclude_id` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `categories_id` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attributes_id` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `priority` int(2) DEFAULT NULL,
  `visibility` int(1) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- ----------------------------
-- Table structure for wp_yith_wapo_types
-- ----------------------------
DROP TABLE IF EXISTS `wp_yith_wapo_types`;
CREATE TABLE `wp_yith_wapo_types` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` bigint(20) DEFAULT NULL,
  `type` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `label` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `depend` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `depend_variations` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_520_ci,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `required_all_options` tinyint(1) NOT NULL DEFAULT '1',
  `sold_individually` tinyint(1) DEFAULT '0',
  `change_featured_image` tinyint(1) DEFAULT '0',
  `calculate_quantity_sum` tinyint(1) DEFAULT '0',
  `max_item_selected` int(11) DEFAULT '0',
  `max_input_values_amount` int(11) DEFAULT '0',
  `min_input_values_amount` int(11) DEFAULT '0',
  `step` int(2) DEFAULT NULL,
  `priority` int(2) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- ----------------------------
-- Table structure for wp_yith_wccl_meta
-- ----------------------------
DROP TABLE IF EXISTS `wp_yith_wccl_meta`;
CREATE TABLE `wp_yith_wccl_meta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `wc_attribute_tax_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

SET FOREIGN_KEY_CHECKS = 1;

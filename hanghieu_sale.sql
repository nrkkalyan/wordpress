-- phpMyAdmin SQL Dump
-- version 4.8.0-dev
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 22, 2018 at 08:45 PM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.2.2-3+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hanghieu.sale`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Một người bình luận WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-03-21 04:08:30', '2018-03-21 04:08:30', 'Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://hanghieu.test', 'yes'),
(2, 'home', 'http://hanghieu.test', 'yes'),
(3, 'blogname', 'hanghieu.sale - Diễm My Store', 'yes'),
(4, 'blogdescription', 'Một trang web mới sử dụng WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'xuan.0211@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:220:{s:33:\"^point-of-sale/([^/]+)/([^/]+)/?$\";s:78:\"index.php?page=wc_pos_registers&action=view&outlet=$matches[1]&reg=$matches[2]\";s:24:\"^bill-screen/([0-9]+)/?$\";s:49:\"index.php?page=wc_pos_bill_screen&reg=$matches[1]\";s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:11:\"cua-hang/?$\";s:27:\"index.php?post_type=product\";s:41:\"cua-hang/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:36:\"cua-hang/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:28:\"cua-hang/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\"pos_temp_register_or/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:58:\"pos_temp_register_or/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:78:\"pos_temp_register_or/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:73:\"pos_temp_register_or/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:73:\"pos_temp_register_or/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:54:\"pos_temp_register_or/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"pos_temp_register_or/([^/]+)/embed/?$\";s:53:\"index.php?pos_temp_register_or=$matches[1]&embed=true\";s:41:\"pos_temp_register_or/([^/]+)/trackback/?$\";s:47:\"index.php?pos_temp_register_or=$matches[1]&tb=1\";s:49:\"pos_temp_register_or/([^/]+)/page/?([0-9]{1,})/?$\";s:60:\"index.php?pos_temp_register_or=$matches[1]&paged=$matches[2]\";s:56:\"pos_temp_register_or/([^/]+)/comment-page-([0-9]{1,})/?$\";s:60:\"index.php?pos_temp_register_or=$matches[1]&cpage=$matches[2]\";s:46:\"pos_temp_register_or/([^/]+)/wc-api(/(.*))?/?$\";s:61:\"index.php?pos_temp_register_or=$matches[1]&wc-api=$matches[3]\";s:52:\"pos_temp_register_or/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:63:\"pos_temp_register_or/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:45:\"pos_temp_register_or/([^/]+)(?:/([0-9]+))?/?$\";s:59:\"index.php?pos_temp_register_or=$matches[1]&page=$matches[2]\";s:37:\"pos_temp_register_or/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"pos_temp_register_or/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"pos_temp_register_or/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"pos_temp_register_or/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"pos_temp_register_or/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"pos_temp_register_or/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:46:\"pos_custom_product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:56:\"pos_custom_product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:76:\"pos_custom_product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"pos_custom_product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"pos_custom_product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:52:\"pos_custom_product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"pos_custom_product/([^/]+)/embed/?$\";s:51:\"index.php?pos_custom_product=$matches[1]&embed=true\";s:39:\"pos_custom_product/([^/]+)/trackback/?$\";s:45:\"index.php?pos_custom_product=$matches[1]&tb=1\";s:47:\"pos_custom_product/([^/]+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?pos_custom_product=$matches[1]&paged=$matches[2]\";s:54:\"pos_custom_product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:58:\"index.php?pos_custom_product=$matches[1]&cpage=$matches[2]\";s:44:\"pos_custom_product/([^/]+)/wc-api(/(.*))?/?$\";s:59:\"index.php?pos_custom_product=$matches[1]&wc-api=$matches[3]\";s:50:\"pos_custom_product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"pos_custom_product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:43:\"pos_custom_product/([^/]+)(?:/([0-9]+))?/?$\";s:57:\"index.php?pos_custom_product=$matches[1]&page=$matches[2]\";s:35:\"pos_custom_product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"pos_custom_product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"pos_custom_product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"pos_custom_product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"pos_custom_product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"pos_custom_product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:47:\"danh-muc/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:42:\"danh-muc/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:23:\"danh-muc/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:35:\"danh-muc/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:17:\"danh-muc/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:48:\"tu-khoa/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:43:\"tu-khoa/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:24:\"tu-khoa/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:36:\"tu-khoa/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:18:\"tu-khoa/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:36:\"san-pham/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"san-pham/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"san-pham/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"san-pham/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"san-pham/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"san-pham/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"san-pham/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:29:\"san-pham/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:49:\"san-pham/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:44:\"san-pham/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:37:\"san-pham/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:44:\"san-pham/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:34:\"san-pham/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:40:\"san-pham/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:51:\"san-pham/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:33:\"san-pham/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:25:\"san-pham/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"san-pham/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"san-pham/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"san-pham/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"san-pham/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"san-pham/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"was/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"was/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"was/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"was/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"was/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"was/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:20:\"was/([^/]+)/embed/?$\";s:36:\"index.php?was=$matches[1]&embed=true\";s:24:\"was/([^/]+)/trackback/?$\";s:30:\"index.php?was=$matches[1]&tb=1\";s:32:\"was/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?was=$matches[1]&paged=$matches[2]\";s:39:\"was/([^/]+)/comment-page-([0-9]{1,})/?$\";s:43:\"index.php?was=$matches[1]&cpage=$matches[2]\";s:29:\"was/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?was=$matches[1]&wc-api=$matches[3]\";s:35:\"was/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:46:\"was/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:28:\"was/([^/]+)(?:/([0-9]+))?/?$\";s:42:\"index.php?was=$matches[1]&page=$matches[2]\";s:20:\"was/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\"was/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\"was/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"was/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"was/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\"was/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\"(.?.+?)/waiting-list(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&waiting-list=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:8:{i:0;s:63:\"woocommerce-advanced-shipping/woocommerce-advanced-shipping.php\";i:1;s:71:\"woocommerce-bulk-stock-management/woocommerce-bulk-stock-management.php\";i:2;s:58:\"woocommerce-create-customer-on-order/create-user-order.php\";i:3;s:55:\"woocommerce-point-of-sale/woocommerce-point-of-sale.php\";i:4;s:63:\"woocommerce-shipment-tracking/woocommerce-shipment-tracking.php\";i:6;s:27:\"woocommerce/woocommerce.php\";i:7;s:38:\"yith-woocommerce-waiting-list/init.php\";i:8;s:43:\"yith-woocommerce-watermark-premium/init.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'storefront', 'yes'),
(41, 'stylesheet', 'storefront', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:9:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:128:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:13:\"view_register\";b:1;s:23:\"manage_wc_point_of_sale\";b:1;s:15:\"edit_size_chart\";b:1;s:17:\"delete_size_chart\";b:1;s:16:\"edit_size_charts\";b:1;s:23:\"edit_others_size_charts\";b:1;s:19:\"publish_size_charts\";b:1;s:24:\"read_private_size_charts\";b:1;s:18:\"delete_size_charts\";b:1;s:26:\"delete_private_size_charts\";b:1;s:28:\"delete_published_size_charts\";b:1;s:25:\"delete_others_size_charts\";b:1;s:24:\"edit_private_size_charts\";b:1;s:26:\"edit_published_size_charts\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:12:\"Khách hàng\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:22:\"Quản lý cửa hàng\";s:12:\"capabilities\";a:104:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:15:\"edit_size_chart\";b:1;s:17:\"delete_size_chart\";b:1;s:16:\"edit_size_charts\";b:1;s:23:\"edit_others_size_charts\";b:1;s:19:\"publish_size_charts\";b:1;s:24:\"read_private_size_charts\";b:1;s:18:\"delete_size_charts\";b:1;s:26:\"delete_private_size_charts\";b:1;s:28:\"delete_published_size_charts\";b:1;s:25:\"delete_others_size_charts\";b:1;s:24:\"edit_private_size_charts\";b:1;s:26:\"edit_published_size_charts\";b:1;}}s:7:\"cashier\";a:2:{s:4:\"name\";s:7:\"Cashier\";s:12:\"capabilities\";a:8:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:0;s:12:\"delete_posts\";b:0;s:10:\"list_users\";b:1;s:13:\"view_register\";b:1;s:24:\"read_private_shop_orders\";b:1;s:21:\"read_private_products\";b:1;s:25:\"read_private_shop_coupons\";b:1;}}s:11:\"pos_manager\";a:2:{s:4:\"name\";s:11:\"POS Manager\";s:12:\"capabilities\";a:107:{s:4:\"read\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:12:\"delete_posts\";b:1;s:15:\"unfiltered_html\";b:1;s:12:\"upload_files\";b:1;s:10:\"list_users\";b:1;s:13:\"view_register\";b:1;s:24:\"read_private_shop_orders\";b:1;s:21:\"read_private_products\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:23:\"manage_wc_point_of_sale\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:18:\"manage_woocommerce\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:15:\"edit_size_chart\";b:1;s:17:\"delete_size_chart\";b:1;s:16:\"edit_size_charts\";b:1;s:23:\"edit_others_size_charts\";b:1;s:19:\"publish_size_charts\";b:1;s:24:\"read_private_size_charts\";b:1;s:18:\"delete_size_charts\";b:1;s:26:\"delete_private_size_charts\";b:1;s:28:\"delete_published_size_charts\";b:1;s:25:\"delete_others_size_charts\";b:1;s:24:\"edit_private_size_charts\";b:1;s:26:\"edit_published_size_charts\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'vi', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:8:{i:1521753197;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1521763200;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1521778111;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1521778128;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1521778667;a:2:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1521778839;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1522713600;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1521605995;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(122, '_site_transient_timeout_browser_2be981a485dfe5ea3024005a2eea1a96', '1522210118', 'no'),
(123, '_site_transient_browser_2be981a485dfe5ea3024005a2eea1a96', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"65.0.3325.162\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(124, 'can_compress_scripts', '1', 'no'),
(144, 'recently_activated', 'a:14:{s:55:\"woocommerce-stock-manager/woocommerce-stock-manager.php\";i:1521739001;s:60:\"yith-woocommerce-color-and-label-variations-premium/init.php\";i:1521738747;s:49:\"woocommerce-pre-orders/woocommerce-pre-orders.php\";i:1521724911;s:53:\"woocommerce-order-status/woocommerce-order-status.php\";i:1521722157;s:69:\"woocommerce-conditional-shipping/woocommerce-conditional-shipping.php\";i:1521720084;s:40:\"yith-woocommerce-order-tracking/init.php\";i:1521717708;s:45:\"yith-woocommerce-custom-order-status/init.php\";i:1521714158;s:39:\"yith-pre-order-for-woocommerce/init.php\";i:1521713463;s:46:\"yith-woocommerce-bulk-product-editing/init.php\";i:1521712947;s:39:\"yith-woocommerce-brands-add-on/init.php\";i:1521712925;s:49:\"yith-product-size-charts-for-woocommerce/init.php\";i:1521705657;s:50:\"yith-woocommerce-advanced-product-options/init.php\";i:1521704275;s:59:\"woocommerce-attribute-group/woocommerce-attribute-group.php\";i:1521704046;s:9:\"hello.php\";i:1521701775;}', 'yes'),
(153, 'woocommerce_store_address', 'Số 17, Tổ dân cư 16, Phú Đô, Nam Từ Liêm', 'yes'),
(154, 'woocommerce_store_address_2', '', 'yes'),
(155, 'woocommerce_store_city', 'Hà Nội', 'yes'),
(156, 'woocommerce_default_country', 'VN', 'yes'),
(157, 'woocommerce_store_postcode', '10000', 'yes'),
(158, 'woocommerce_allowed_countries', 'all', 'yes'),
(159, 'woocommerce_all_except_countries', '', 'yes'),
(160, 'woocommerce_specific_allowed_countries', '', 'yes'),
(161, 'woocommerce_ship_to_countries', '', 'yes'),
(162, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(163, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(164, 'woocommerce_calc_taxes', 'no', 'yes'),
(165, 'woocommerce_currency', 'VND', 'yes'),
(166, 'woocommerce_currency_pos', 'left', 'yes'),
(167, 'woocommerce_price_thousand_sep', ',', 'yes'),
(168, 'woocommerce_price_decimal_sep', '.', 'yes'),
(169, 'woocommerce_price_num_decimals', '2', 'yes'),
(170, 'woocommerce_shop_page_id', '4', 'yes'),
(171, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(172, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(173, 'woocommerce_weight_unit', 'g', 'yes'),
(174, 'woocommerce_dimension_unit', 'cm', 'yes'),
(175, 'woocommerce_enable_reviews', 'yes', 'yes'),
(176, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(177, 'woocommerce_review_rating_verification_required', 'yes', 'no'),
(178, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(179, 'woocommerce_review_rating_required', 'yes', 'no'),
(180, 'woocommerce_manage_stock', 'yes', 'yes'),
(181, 'woocommerce_hold_stock_minutes', '60', 'no'),
(182, 'woocommerce_notify_low_stock', 'yes', 'no'),
(183, 'woocommerce_notify_no_stock', 'yes', 'no'),
(184, 'woocommerce_stock_email_recipient', 'nguyenthidiemmyhanu@gmail.com', 'no'),
(185, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(186, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(187, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(188, 'woocommerce_stock_format', 'no_amount', 'yes'),
(189, 'woocommerce_file_download_method', 'force', 'no'),
(190, 'woocommerce_downloads_require_login', 'yes', 'no'),
(191, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(192, 'woocommerce_prices_include_tax', 'no', 'yes'),
(193, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(194, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(195, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(196, 'woocommerce_tax_classes', 'Giảm tỉ lệ\nTỉ lệ rỗng', 'yes'),
(197, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(198, 'woocommerce_tax_display_cart', 'excl', 'no'),
(199, 'woocommerce_price_display_suffix', '', 'yes'),
(200, 'woocommerce_tax_total_display', 'itemized', 'no'),
(201, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(202, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(203, 'woocommerce_ship_to_destination', 'billing', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(204, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(205, 'woocommerce_enable_coupons', 'yes', 'yes'),
(206, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(207, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(208, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(209, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(210, 'woocommerce_cart_page_id', '5', 'yes'),
(211, 'woocommerce_checkout_page_id', '6', 'yes'),
(212, 'woocommerce_terms_page_id', '', 'no'),
(213, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(214, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(215, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(216, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(217, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(218, 'woocommerce_myaccount_page_id', '7', 'yes'),
(219, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(220, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(221, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(222, 'woocommerce_registration_generate_username', 'yes', 'no'),
(223, 'woocommerce_registration_generate_password', 'no', 'no'),
(224, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(225, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(226, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(227, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(228, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(229, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(230, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(231, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(232, 'woocommerce_email_from_name', 'hanghieu.sale &#8211; Diễm My Store', 'no'),
(233, 'woocommerce_email_from_address', 'xuan.0211@gmail.com', 'no'),
(234, 'woocommerce_email_header_image', '', 'no'),
(235, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(236, 'woocommerce_email_base_color', '#96588a', 'no'),
(237, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(238, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(239, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(240, 'woocommerce_api_enabled', 'yes', 'yes'),
(241, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:8:\"san-pham\";s:13:\"category_base\";s:8:\"danh-muc\";s:8:\"tag_base\";s:7:\"tu-khoa\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(242, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(243, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(246, 'default_product_cat', '15', 'yes'),
(249, 'woocommerce_version', '3.3.4', 'yes'),
(250, 'woocommerce_db_version', '3.3.4', 'yes'),
(251, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(252, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(253, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(254, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(255, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(256, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(257, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(258, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(259, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(260, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(261, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(262, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(263, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(264, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(268, 'woocommerce_product_type', 'physical', 'yes'),
(269, 'woocommerce_sell_in_person', '1', 'yes'),
(270, 'woocommerce_allow_tracking', 'no', 'yes'),
(271, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";b:0;}', 'yes'),
(272, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(273, 'woocommerce_bacs_settings', 'a:5:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:28:\"Chuyển khoản ngân hàng\";s:11:\"description\";s:226:\"Thực hiện thanh toán vào ngay tài khoản ngân hàng của chúng tôi. Vui lòng sử dụng Mã đơn hàng của bạn trong phần Nội dung thanh toán. Đơn hàng sẽ đươc giao sau khi tiền đã chuyển.\";s:12:\"instructions\";s:0:\"\";s:15:\"account_details\";s:0:\"\";}', 'yes'),
(274, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(275, '_transient_shipping-transient-version', '1521727241', 'yes'),
(276, 'woocommerce_flat_rate_1_settings', 'a:3:{s:5:\"title\";s:12:\"Đồng giá\";s:10:\"tax_status\";s:4:\"none\";s:4:\"cost\";s:5:\"30000\";}', 'yes'),
(277, 'woocommerce_flat_rate_2_settings', 'a:3:{s:5:\"title\";s:12:\"Đồng giá\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:6:\"250000\";}', 'yes'),
(286, 'current_theme', 'Storefront', 'yes'),
(287, 'theme_mods_storefront', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:17:\"storefront_styles\";s:5060:\"\n			.main-navigation ul li a,\n			.site-title a,\n			ul.menu li a,\n			.site-branding h1 a,\n			.site-footer .storefront-handheld-footer-bar a:not(.button),\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				color: #333333;\n			}\n\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				border-color: #333333;\n			}\n\n			.main-navigation ul li a:hover,\n			.main-navigation ul li:hover > a,\n			.site-title a:hover,\n			a.cart-contents:hover,\n			.site-header-cart .widget_shopping_cart a:hover,\n			.site-header-cart:hover > li > a,\n			.site-header ul.menu li.current-menu-item > a {\n				color: #747474;\n			}\n\n			table th {\n				background-color: #f8f8f8;\n			}\n\n			table tbody td {\n				background-color: #fdfdfd;\n			}\n\n			table tbody tr:nth-child(2n) td,\n			fieldset,\n			fieldset legend {\n				background-color: #fbfbfb;\n			}\n\n			.site-header,\n			.secondary-navigation ul ul,\n			.main-navigation ul.menu > li.menu-item-has-children:after,\n			.secondary-navigation ul.menu ul,\n			.storefront-handheld-footer-bar,\n			.storefront-handheld-footer-bar ul li > a,\n			.storefront-handheld-footer-bar ul li.search .site-search,\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				background-color: #ffffff;\n			}\n\n			p.site-description,\n			.site-header,\n			.storefront-handheld-footer-bar {\n				color: #404040;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count,\n			button.menu-toggle:after,\n			button.menu-toggle:before,\n			button.menu-toggle span:before {\n				background-color: #333333;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				color: #ffffff;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				border-color: #ffffff;\n			}\n\n			h1, h2, h3, h4, h5, h6 {\n				color: #333333;\n			}\n\n			.widget h1 {\n				border-bottom-color: #333333;\n			}\n\n			body,\n			.secondary-navigation a,\n			.onsale,\n			.pagination .page-numbers li .page-numbers:not(.current), .woocommerce-pagination .page-numbers li .page-numbers:not(.current) {\n				color: #6d6d6d;\n			}\n\n			.widget-area .widget a,\n			.hentry .entry-header .posted-on a,\n			.hentry .entry-header .byline a {\n				color: #727272;\n			}\n\n			a  {\n				color: #96588a;\n			}\n\n			a:focus,\n			.button:focus,\n			.button.alt:focus,\n			.button.added_to_cart:focus,\n			.button.wc-forward:focus,\n			button:focus,\n			input[type=\"button\"]:focus,\n			input[type=\"reset\"]:focus,\n			input[type=\"submit\"]:focus {\n				outline-color: #96588a;\n			}\n\n			button, input[type=\"button\"], input[type=\"reset\"], input[type=\"submit\"], .button, .added_to_cart, .widget a.button, .site-header-cart .widget_shopping_cart a.button {\n				background-color: #eeeeee;\n				border-color: #eeeeee;\n				color: #333333;\n			}\n\n			button:hover, input[type=\"button\"]:hover, input[type=\"reset\"]:hover, input[type=\"submit\"]:hover, .button:hover, .added_to_cart:hover, .widget a.button:hover, .site-header-cart .widget_shopping_cart a.button:hover {\n				background-color: #d5d5d5;\n				border-color: #d5d5d5;\n				color: #333333;\n			}\n\n			button.alt, input[type=\"button\"].alt, input[type=\"reset\"].alt, input[type=\"submit\"].alt, .button.alt, .added_to_cart.alt, .widget-area .widget a.button.alt, .added_to_cart, .widget a.button.checkout {\n				background-color: #333333;\n				border-color: #333333;\n				color: #ffffff;\n			}\n\n			button.alt:hover, input[type=\"button\"].alt:hover, input[type=\"reset\"].alt:hover, input[type=\"submit\"].alt:hover, .button.alt:hover, .added_to_cart.alt:hover, .widget-area .widget a.button.alt:hover, .added_to_cart:hover, .widget a.button.checkout:hover {\n				background-color: #1a1a1a;\n				border-color: #1a1a1a;\n				color: #ffffff;\n			}\n\n			.pagination .page-numbers li .page-numbers.current, .woocommerce-pagination .page-numbers li .page-numbers.current {\n				background-color: #e6e6e6;\n				color: #636363;\n			}\n\n			#comments .comment-list .comment-content .comment-text {\n				background-color: #f8f8f8;\n			}\n\n			.site-footer {\n				background-color: #f0f0f0;\n				color: #6d6d6d;\n			}\n\n			.site-footer a:not(.button) {\n				color: #333333;\n			}\n\n			.site-footer h1, .site-footer h2, .site-footer h3, .site-footer h4, .site-footer h5, .site-footer h6 {\n				color: #333333;\n			}\n\n			#order_review {\n				background-color: #ffffff;\n			}\n\n			#payment .payment_methods > li .payment_box,\n			#payment .place-order {\n				background-color: #fafafa;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice) {\n				background-color: #f5f5f5;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice):hover {\n				background-color: #f0f0f0;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.secondary-navigation ul.menu a:hover {\n					color: #595959;\n				}\n\n				.secondary-navigation ul.menu a {\n					color: #404040;\n				}\n\n				.site-header-cart .widget_shopping_cart,\n				.main-navigation ul.menu ul.sub-menu,\n				.main-navigation ul.nav-menu ul.children {\n					background-color: #f0f0f0;\n				}\n\n				.site-header-cart .widget_shopping_cart .buttons,\n				.site-header-cart .widget_shopping_cart .total {\n					background-color: #f5f5f5;\n				}\n\n				.site-header {\n					border-bottom-color: #f0f0f0;\n				}\n			}\";s:29:\"storefront_woocommerce_styles\";s:2283:\"\n			a.cart-contents,\n			.site-header-cart .widget_shopping_cart a {\n				color: #333333;\n			}\n\n			table.cart td.product-remove,\n			table.cart td.actions {\n				border-top-color: #ffffff;\n			}\n\n			.woocommerce-tabs ul.tabs li.active a,\n			ul.products li.product .price,\n			.onsale,\n			.widget_search form:before,\n			.widget_product_search form:before {\n				color: #6d6d6d;\n			}\n\n			.woocommerce-breadcrumb a,\n			a.woocommerce-review-link,\n			.product_meta a {\n				color: #727272;\n			}\n\n			.onsale {\n				border-color: #6d6d6d;\n			}\n\n			.star-rating span:before,\n			.quantity .plus, .quantity .minus,\n			p.stars a:hover:after,\n			p.stars a:after,\n			.star-rating span:before,\n			#payment .payment_methods li input[type=radio]:first-child:checked+label:before {\n				color: #96588a;\n			}\n\n			.widget_price_filter .ui-slider .ui-slider-range,\n			.widget_price_filter .ui-slider .ui-slider-handle {\n				background-color: #96588a;\n			}\n\n			.order_details {\n				background-color: #f8f8f8;\n			}\n\n			.order_details > li {\n				border-bottom: 1px dotted #e3e3e3;\n			}\n\n			.order_details:before,\n			.order_details:after {\n				background: -webkit-linear-gradient(transparent 0,transparent 0),-webkit-linear-gradient(135deg,#f8f8f8 33.33%,transparent 33.33%),-webkit-linear-gradient(45deg,#f8f8f8 33.33%,transparent 33.33%)\n			}\n\n			p.stars a:before,\n			p.stars a:hover~a:before,\n			p.stars.selected a.active~a:before {\n				color: #6d6d6d;\n			}\n\n			p.stars.selected a.active:before,\n			p.stars:hover a:before,\n			p.stars.selected a:not(.active):before,\n			p.stars.selected a.active:before {\n				color: #96588a;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger {\n				background-color: #eeeeee;\n				color: #333333;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger:hover {\n				background-color: #d5d5d5;\n				border-color: #d5d5d5;\n				color: #333333;\n			}\n\n			.button.loading {\n				color: #eeeeee;\n			}\n\n			.button.loading:hover {\n				background-color: #eeeeee;\n			}\n\n			.button.loading:after {\n				color: #333333;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.site-header-cart .widget_shopping_cart,\n				.site-header .product_list_widget li .quantity {\n					color: #404040;\n				}\n			}\";s:39:\"storefront_woocommerce_extension_styles\";s:0:\"\";s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(288, 'theme_switched', '', 'yes'),
(289, 'woocommerce_maybe_regenerate_images_hash', '27acde77266b4d2a3491118955cb3f66', 'yes'),
(290, '_transient_timeout_external_ip_address_192.168.10.10', '1522210791', 'no'),
(291, '_transient_external_ip_address_192.168.10.10', '113.190.254.153', 'no'),
(294, 'woocommerce_catalog_rows', '4', 'yes'),
(295, 'woocommerce_catalog_columns', '3', 'yes'),
(296, 'storefront_nux_fresh_site', '0', 'yes'),
(301, '_transient_product_query-transient-version', '1521751099', 'yes'),
(302, '_transient_timeout_external_ip_address_192.168.10.1', '1522210846', 'no'),
(303, '_transient_external_ip_address_192.168.10.1', '113.190.254.153', 'no'),
(304, 'storefront_nux_dismissed', '1', 'yes'),
(305, 'wc_pos_custom_product_id', '130', 'yes'),
(306, 'wc_pos_guest_checkout', 'yes', 'yes'),
(307, 'wc_pos_admin_notices', 'a:0:{}', 'yes'),
(310, 'wc_pos_db_version', '4.2.5.8', 'yes'),
(311, '_pos_default_receipt', '1', 'yes'),
(312, 'wc_pos_default_country', 'VN', 'yes'),
(313, 'woocommerce_pos_register_discount_presets', 'a:4:{i:0;s:1:\"5\";i:1;s:2:\"10\";i:2;s:2:\"15\";i:3;s:2:\"20\";}', 'yes'),
(314, 'woocommerce_pos_register_instant_quantity', 'yes', 'yes'),
(315, 'woocommerce_pos_register_instant_quantity_keypad', 'yes', 'yes'),
(316, 'wc_pos_tile_layout', 'image_title_price', 'yes'),
(317, 'wc_pos_tile_variables', 'overlay', 'yes'),
(318, 'woocommerce_pos_end_of_sale_order_status', 'processing', 'yes'),
(319, 'wc_pos_save_order_status', 'wc-pending', 'yes'),
(320, 'wc_pos_load_order_status', 'a:1:{i:0;s:10:\"wc-pending\";}', 'yes'),
(321, 'wc_pos_load_web_order', 'no', 'yes'),
(322, 'woocommerce_pos_register_ready_to_scan', 'yes', 'yes'),
(323, 'woocommerce_pos_register_cc_scanning', 'no', 'yes'),
(324, 'woocommerce_pos_calculate_tax_based_on', 'default', 'yes'),
(325, 'woocommerce_pos_tax_calculation', 'disabled', 'yes'),
(326, 'woocommerce_pos_tax_default_customer_address', 'no_address', 'yes'),
(327, 'wc_pos_email_notifications', 'yes', 'yes'),
(328, 'wc_pos_automatic_emails', 'yes', 'yes'),
(329, 'pos_enabled_gateways', 'a:2:{i:0;s:4:\"bacs\";i:1;s:3:\"cod\";}', 'yes'),
(330, 'pos_exist_gateways', 'a:5:{i:0;s:4:\"bacs\";i:1;s:6:\"cheque\";i:2;s:3:\"cod\";i:3;s:6:\"paypal\";i:4;s:12:\"pos_chip_pin\";}', 'yes'),
(341, 'widget_woocommerce_brand_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(342, 'widget_pw_widget_carousel', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(343, 'widget_pw_widget_thumbnails', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(344, 'widget_pw_widget_a_z_views', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(345, 'widget_pw_brands_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(346, 'widget_pw_brands_carousel_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(347, 'widget_wc_brands_brand_thumbnails', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(363, '_jcaa_attr_settings_1', 'a:7:{s:19:\"jcaa_attribute_size\";s:5:\"small\";s:20:\"jcaa_attribute_style\";s:7:\"default\";s:19:\"jcaa_attribute_type\";s:7:\"default\";s:20:\"jcaa_attribute_label\";s:0:\"\";s:22:\"jcaa_attribute_grouped\";s:2:\"no\";s:20:\"jcaa_attribute_group\";s:0:\"\";s:22:\"jcaa_attribute_catalog\";s:2:\"no\";}', 'yes'),
(368, '_jcaa_attr_settings_2', 'a:7:{s:19:\"jcaa_attribute_size\";s:5:\"small\";s:20:\"jcaa_attribute_style\";s:7:\"default\";s:19:\"jcaa_attribute_type\";s:7:\"default\";s:20:\"jcaa_attribute_label\";s:0:\"\";s:22:\"jcaa_attribute_grouped\";s:2:\"no\";s:20:\"jcaa_attribute_group\";s:0:\"\";s:22:\"jcaa_attribute_catalog\";s:2:\"no\";}', 'yes'),
(371, '_jcaa_attr_settings_3', 'a:7:{s:19:\"jcaa_attribute_size\";s:5:\"small\";s:20:\"jcaa_attribute_style\";s:7:\"default\";s:19:\"jcaa_attribute_type\";s:7:\"default\";s:20:\"jcaa_attribute_label\";s:0:\"\";s:22:\"jcaa_attribute_grouped\";s:2:\"no\";s:20:\"jcaa_attribute_group\";s:0:\"\";s:22:\"jcaa_attribute_catalog\";s:2:\"no\";}', 'yes'),
(375, '_transient_product-transient-version', '1521749865', 'yes'),
(388, 'pos_removed_posts_ids', 'a:24:{i:0;i:21;i:1;i:22;i:2;i:18;i:3;i:35;i:4;i:36;i:5;i:25;i:6;i:26;i:7;i:27;i:8;i:28;i:9;i:29;i:10;i:30;i:11;i:31;i:12;i:32;i:13;i:33;i:14;i:34;i:15;i:23;i:16;i:24;i:17;i:128;i:18;i:10;i:19;i:135;i:20;i:133;i:21;i:131;i:22;i:145;i:23;i:11;}', 'yes'),
(790, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(812, '_transient_wc_attribute_taxonomies', 'a:2:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:10:\"kich-thuoc\";s:15:\"attribute_label\";s:14:\"Kích thước\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:1;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"3\";s:14:\"attribute_name\";s:7:\"mau-sac\";s:15:\"attribute_label\";s:10:\"Màu sắc\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}}', 'yes'),
(1049, '_transient_timeout_wc_addons_sections', '1522217915', 'no'),
(1050, '_transient_wc_addons_sections', 'a:8:{i:0;O:8:\"stdClass\":2:{s:4:\"slug\";s:9:\"_featured\";s:5:\"label\";s:8:\"Featured\";}i:1;O:8:\"stdClass\":2:{s:4:\"slug\";s:4:\"_all\";s:5:\"label\";s:3:\"All\";}i:2;O:8:\"stdClass\":2:{s:4:\"slug\";s:7:\"bundles\";s:5:\"label\";s:7:\"Bundles\";}i:3;O:8:\"stdClass\":2:{s:4:\"slug\";s:18:\"product-extensions\";s:5:\"label\";s:12:\"Enhancements\";}i:4;O:8:\"stdClass\":2:{s:4:\"slug\";s:20:\"marketing-extensions\";s:5:\"label\";s:9:\"Marketing\";}i:5;O:8:\"stdClass\":2:{s:4:\"slug\";s:16:\"payment-gateways\";s:5:\"label\";s:8:\"Payments\";}i:6;O:8:\"stdClass\":2:{s:4:\"slug\";s:16:\"shipping-methods\";s:5:\"label\";s:8:\"Shipping\";}i:7;O:8:\"stdClass\":2:{s:4:\"slug\";s:10:\"operations\";s:5:\"label\";s:16:\"Store Management\";}}', 'no'),
(1051, '_transient_timeout_wc_addons_featured', '1522217915', 'no'),
(1052, '_transient_wc_addons_featured', 'O:8:\"stdClass\":1:{s:8:\"sections\";a:11:{i:0;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"banner_block\";s:5:\"title\";s:50:\"Take your store beyond the typical - sell anything\";s:11:\"description\";s:81:\"From services to content, there\'s no limit to what you can sell with WooCommerce.\";s:5:\"items\";a:9:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:139:\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:13:\"Subscriptions\";s:5:\"image\";s:71:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/subscriptions-icon@2x.png\";s:11:\"description\";s:98:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\";s:6:\"button\";s:10:\"From: $199\";s:6:\"plugin\";s:55:\"woocommerce-subscriptions/woocommerce-subscriptions.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:134:\"https://woocommerce.com/products/woocommerce-bookings/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:8:\"Bookings\";s:5:\"image\";s:66:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/bookings-icon@2x.png\";s:11:\"description\";s:76:\"Allow customers to book appointments for services without leaving your site.\";s:6:\"button\";s:10:\"From: $249\";s:6:\"plugin\";s:45:\"woocommerce-bookings/woocommerce-bookings.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:137:\"https://woocommerce.com/products/woocommerce-memberships/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:11:\"Memberships\";s:5:\"image\";s:69:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/memberships-icon@2x.png\";s:11:\"description\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:6:\"button\";s:10:\"From: $149\";s:6:\"plugin\";s:51:\"woocommerce-memberships/woocommerce-memberships.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:129:\"https://woocommerce.com/products/product-bundles/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:15:\"Product Bundles\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:50:\"Offer customizable bundles and assembled products.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:59:\"woocommerce-product-bundles/woocommerce-product-bundles.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:132:\"https://woocommerce.com/products/composite-products/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:18:\"Composite Products\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:59:\"Create and offer product kits with configurable components.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:65:\"woocommerce-composite-products/woocommerce-composite-products.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:129:\"https://woocommerce.com/products/product-vendors/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:15:\"Product Vendors\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:47:\"Turn your store into a multi-vendor marketplace\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:59:\"woocommerce-product-vendors/woocommerce-product-vendors.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:132:\"https://woocommerce.com/products/groups-woocommerce/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:22:\"Groups for WooCommerce\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:94:\"Sell memberships using the free &#039;Groups&#039; plugin, Groups integration and WooCommerce.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:41:\"groups-woocommerce/groups-woocommerce.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:136:\"https://woocommerce.com/products/woocommerce-pre-orders/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:22:\"WooCommerce Pre-Orders\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:60:\"Allow customers to order products before they are available.\";s:6:\"button\";s:10:\"From: $129\";s:6:\"plugin\";s:49:\"woocommerce-pre-orders/woocommerce-pre-orders.php\";}i:8;O:8:\"stdClass\":6:{s:4:\"href\";s:130:\"https://woocommerce.com/products/chained-products/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:16:\"Chained Products\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:69:\"Create and sell pre-configured product bundles and discounted combos.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:61:\"woocommerce-chained-products/woocommerce-chained-products.php\";}}}i:1;O:8:\"stdClass\":1:{s:6:\"module\";s:16:\"wcs_banner_block\";}i:2;O:8:\"stdClass\":2:{s:6:\"module\";s:12:\"column_start\";s:9:\"container\";s:22:\"column_container_start\";}i:3;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"column_block\";s:5:\"title\";s:46:\"Improve the main features of your online store\";s:11:\"description\";s:71:\"Sell more by helping customers find the products and options they want.\";s:5:\"items\";a:9:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:129:\"https://woocommerce.com/products/product-add-ons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:15:\"Product Add-ons\";s:5:\"image\";s:73:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/product-add-ons-icon@2x.png\";s:11:\"description\";s:82:\"Give your customers the option to customize their purchase or add personalization.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:57:\"woocommerce-product-addons/woocommerce-product-addons.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:140:\"https://woocommerce.com/products/woocommerce-product-search/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:14:\"Product Search\";s:5:\"image\";s:72:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/product-search-icon@2x.png\";s:11:\"description\";s:67:\"Make sure customers find what they want when they search your site.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:57:\"woocommerce-product-search/woocommerce-product-search.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:142:\"https://woocommerce.com/products/woocommerce-checkout-add-ons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:16:\"Checkout Add-ons\";s:5:\"image\";s:74:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/checkout-add-ons-icon@2x.png\";s:11:\"description\";s:89:\"Highlight relevant products, offers like free shipping and other upsells during checkout.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:61:\"woocommerce-checkout-add-ons/woocommerce-checkout-add-ons.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:147:\"https://woocommerce.com/products/woocommerce-checkout-field-editor/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:21:\"Checkout Field Editor\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:128:\"The checkout field editor provides you with an interface to add, edit and remove fields shown on your WooCommerce checkout page.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:71:\"woocommerce-checkout-field-editor/woocommerce-checkout-field-editor.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:138:\"https://woocommerce.com/products/woocommerce-social-login/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:24:\"WooCommerce Social Login\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:62:\"Enable Social Login for Seamless Checkout and Account Creation\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:53:\"woocommerce-social-login/woocommerce-social-login.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:135:\"https://woocommerce.com/products/woocommerce-wishlists/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:21:\"WooCommerce Wishlists\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:113:\"WooCommerce Wishlists allows guests and customers to create and add products to an unlimited number of Wishlists.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:47:\"woocommerce-wishlists/woocommerce-wishlists.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:126:\"https://woocommerce.com/products/cart-notices/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:12:\"Cart Notices\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:73:\"Display dynamic, actionable messages to your customers as they check out.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:53:\"woocommerce-cart-notices/woocommerce-cart-notices.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:126:\"https://woocommerce.com/products/cart-add-ons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:12:\"Cart Add-ons\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:109:\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\";s:6:\"button\";s:9:\"From: $29\";s:6:\"plugin\";s:53:\"woocommerce-cart-add-ons/woocommerce-cart-add-ons.php\";}i:8;O:8:\"stdClass\":6:{s:4:\"href\";s:134:\"https://woocommerce.com/products/woocommerce-waitlist/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:20:\"WooCommerce Waitlist\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:117:\"With WooCommerce Waitlist customers can register for email notifications when out-of-stock products become available.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:45:\"woocommerce-waitlist/woocommerce-waitlist.php\";}}}i:4;O:8:\"stdClass\":5:{s:6:\"module\";s:17:\"small_light_block\";s:5:\"title\";s:34:\"Get the official WooCommerce theme\";s:11:\"description\";s:128:\"Storefront is the lean, flexible, and free theme, built by the people who make WooCommerce - everything you need to get started.\";s:5:\"image\";s:70:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/storefront-screen@2x.png\";s:7:\"buttons\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"href\";s:44:\"/wp-admin/theme-install.php?theme=storefront\";s:4:\"text\";s:7:\"Install\";}i:1;O:8:\"stdClass\":2:{s:4:\"href\";s:115:\"https://woocommerce.com/storefront/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:4:\"text\";s:9:\"Read More\";}}}i:5;O:8:\"stdClass\":1:{s:6:\"module\";s:10:\"column_end\";}i:6;O:8:\"stdClass\":1:{s:6:\"module\";s:12:\"column_start\";}i:7;O:8:\"stdClass\":4:{s:6:\"module\";s:16:\"small_dark_block\";s:5:\"title\";s:20:\"Square + WooCommerce\";s:11:\"description\";s:176:\"Keep your WooCommerce and brick-and-mortar stores in sync. Use Square to take payments both online and offline, keep inventory updated between the two and sync product changes.\";s:5:\"items\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"href\";s:120:\"https://woocommerce.com/products/square/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:6:\"button\";s:5:\"Free!\";}}}i:8;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"column_block\";s:5:\"title\";s:19:\"Get deeper insights\";s:11:\"description\";s:58:\"Learn how your store is performing with enhanced reporting\";s:5:\"items\";a:8:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:142:\"https://woocommerce.com/products/woocommerce-google-analytics/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:16:\"Google Analytics\";s:5:\"image\";s:60:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/ga-icon@2x.png\";s:11:\"description\";s:93:\"Understand your customers and increase revenue with the world’s leading analytics platform.\";s:6:\"button\";s:4:\"Free\";s:6:\"plugin\";s:85:\"woocommerce-google-analytics-integration/woocommerce-google-analytics-integration.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:138:\"https://woocommerce.com/products/woocommerce-cart-reports/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:12:\"Cart reports\";s:5:\"image\";s:70:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/cart-reports-icon@2x.png\";s:11:\"description\";s:66:\"Get real-time reports on what customers are leaving in their cart.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:53:\"woocommerce-cart-reports/woocommerce-cart-reports.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:139:\"https://woocommerce.com/products/woocommerce-cost-of-goods/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:13:\"Cost of Goods\";s:5:\"image\";s:71:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/cost-of-goods-icon@2x.png\";s:11:\"description\";s:64:\"Easily track profit by including  cost of goods in your reports.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:55:\"woocommerce-cost-of-goods/woocommerce-cost-of-goods.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:146:\"https://woocommerce.com/products/woocommerce-google-analytics-pro/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:32:\"WooCommerce Google Analytics Pro\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:85:\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\";s:6:\"button\";s:9:\"From: $29\";s:6:\"plugin\";s:69:\"woocommerce-google-analytics-pro/woocommerce-google-analytics-pro.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:142:\"https://woocommerce.com/products/woocommerce-customer-history/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:28:\"WooCommerce Customer History\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:125:\"Observe how your customers use your store, keep a full purchase history log, and calculate the total customer lifetime value.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:61:\"woocommerce-customer-history/woocommerce-customer-history.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:126:\"https://woocommerce.com/products/kiss-metrics/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:11:\"Kissmetrics\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:79:\"Easily add Kissmetrics event tracking to your WooCommerce store with one click.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:52:\"woocommerce-kiss-metrics/woocommerce-kissmetrics.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:122:\"https://woocommerce.com/products/mixpanel/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:8:\"Mixpanel\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:65:\"Add event tracking powered by Mixpanel to your WooCommerce store.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:45:\"woocommerce-mixpanel/woocommerce-mixpanel.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:144:\"https://woocommerce.com/products/woocommerce-sales-report-email/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:30:\"WooCommerce Sales Report Email\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:107:\"Receive emails daily, weekly or monthly with meaningful information about how your products are performing.\";s:6:\"button\";s:9:\"From: $29\";s:6:\"plugin\";s:65:\"woocommerce-sales-report-email/woocommerce-sales-report-email.php\";}}}i:9;O:8:\"stdClass\":2:{s:6:\"module\";s:10:\"column_end\";s:9:\"container\";s:20:\"column_container_end\";}i:10;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"banner_block\";s:5:\"title\";s:40:\"Promote your products and increase sales\";s:11:\"description\";s:77:\"From coupons to emails, these extensions can power up your marketing efforts.\";s:5:\"items\";a:9:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:127:\"https://woocommerce.com/products/smart-coupons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:13:\"Smart Coupons\";s:5:\"image\";s:71:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/smart-coupons-icon@2x.png\";s:11:\"description\";s:106:\"Enhance your coupon options - create gift certificates, store credit, coupons based on purchases and more.\";s:6:\"button\";s:9:\"From: $99\";s:6:\"plugin\";s:55:\"woocommerce-smart-coupons/woocommerce-smart-coupons.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:130:\"https://woocommerce.com/products/follow-up-emails/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:16:\"Follow Up Emails\";s:5:\"image\";s:74:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/follow-up-emails-icon@2x.png\";s:11:\"description\";s:140:\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\";s:6:\"button\";s:9:\"From: $99\";s:6:\"plugin\";s:61:\"woocommerce-follow-up-emails/woocommerce-follow-up-emails.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:133:\"https://woocommerce.com/products/google-product-feed/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:19:\"Google Product Feed\";s:5:\"image\";s:77:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/google-product-feed-icon@2x.png\";s:11:\"description\";s:61:\"Let customers find you when shopping for products via Google.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:45:\"woocommerce-product-feeds/woocommerce-gpf.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:129:\"https://woocommerce.com/products/dynamic-pricing/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:15:\"Dynamic Pricing\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:48:\"Bulk discounts, role-based pricing and much more\";s:6:\"button\";s:10:\"From: $129\";s:6:\"plugin\";s:59:\"woocommerce-dynamic-pricing/woocommerce-dynamic-pricing.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:144:\"https://woocommerce.com/products/woocommerce-points-and-rewards/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:30:\"WooCommerce Points and Rewards\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:102:\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\";s:6:\"button\";s:10:\"From: $129\";s:6:\"plugin\";s:65:\"woocommerce-points-and-rewards/woocommerce-points-and-rewards.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:126:\"https://woocommerce.com/products/store-credit/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:24:\"WooCommerce Store Credit\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:152:\"Generate store credit coupons that enable customers to make multiple purchases until the total value specified is exhausted or the coupons life expires.\";s:6:\"button\";s:9:\"From: $29\";s:6:\"plugin\";s:53:\"woocommerce-store-credit/woocommerce-store-credit.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:122:\"https://woocommerce.com/products/facebook/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:24:\"Facebook for WooCommerce\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:89:\"Get the Facebook for WooCommerce plugin for two powerful ways to help grow your business.\";s:6:\"button\";s:4:\"Free\";s:6:\"plugin\";s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:137:\"https://woocommerce.com/products/newsletter-subscription/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:23:\"Newsletter Subscription\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:127:\"Allow customers to subscribe to your MailChimp or CampaignMonitor mailing list(s) via a widget or by opting in during checkout.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:63:\"woocommerce-subscribe-to-newsletter/subscribe-to-newsletter.php\";}i:8;O:8:\"stdClass\":6:{s:4:\"href\";s:142:\"https://woocommerce.com/products/woocommerce-email-customizer/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured\";s:5:\"title\";s:28:\"WooCommerce Email Customizer\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:125:\"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:61:\"woocommerce-email-customizer/woocommerce-email-customizer.php\";}}}}}', 'no'),
(1053, 'storefront_nux_guided_tour', '1', 'yes'),
(1062, 'cxccoo_user_can_create_customers', 'pos_manager', 'yes'),
(1065, 'woocommerce_pos_order_filters', 'a:1:{i:0;s:8:\"register\";}', 'yes'),
(1066, 'wc_pos_disable_sound_notifications', 'no', 'yes'),
(1067, 'wc_pos_disable_connection_status', 'yes', 'yes'),
(1068, 'wc_pos_keyboard_shortcuts', 'yes', 'yes'),
(1069, 'wc_pos_rounding', 'yes', 'yes'),
(1070, 'wc_pos_rounding_value', '0.01', 'yes'),
(1071, 'wc_pos_display_reports', 'yes', 'yes'),
(1072, 'wc_pos_day_end_report', 'yes', 'yes'),
(1073, 'wc_pos_day_end_emails', 'xuan.0211@gmail.com', 'yes'),
(1074, 'wc_pos_cash_management_order_status', 'a:1:{i:0;s:13:\"wc-processing\";}', 'yes'),
(1075, 'wc_pos_autoupdate_stock', 'yes', 'yes'),
(1076, 'wc_pos_autoupdate_interval', '240', 'yes'),
(1077, 'wc_pos_show_stock', 'yes', 'yes'),
(1078, 'wc_pos_show_out_of_stock_products', 'yes', 'yes'),
(1079, 'wc_pos_bill_screen', 'no', 'yes'),
(1080, 'wc_pos_visibility', 'no', 'yes'),
(1081, 'wc_pos_custom_fee', 'yes', 'yes'),
(1082, 'woocommerce_pos_force_ssl_checkout', 'no', 'yes'),
(1083, 'woocommerce_pos_end_of_sale_username_add_customer', '1', 'yes'),
(1084, 'wc_pos_load_customer_after_selecting', 'yes', 'yes'),
(1085, 'wc_pos_last_force_db_update', 'a:2:{s:4:\"date\";s:16:\"2018-03-21 06:52\";s:3:\"log\";a:3:{s:5:\"3.2.1\";a:5:{s:8:\"show_sku\";s:2:\"OK\";s:11:\"show_outlet\";s:2:\"OK\";s:13:\"show_register\";s:2:\"OK\";s:14:\"show_site_name\";s:2:\"OK\";s:18:\"gift_receipt_title\";s:2:\"OK\";}s:7:\"3.2.2.0\";a:1:{s:12:\"sale_reports\";b:0;}s:5:\"4.0.0\";a:1:{s:18:\"pos_custom_product\";i:0;}}}', 'yes'),
(1090, '_transient_orders-transient-version', '1521751255', 'yes'),
(1091, '_transient_timeout_wc_cbp_3c0ea1254e550eb1c9e10e462edd8b85', '1524209171', 'no'),
(1092, '_transient_wc_cbp_3c0ea1254e550eb1c9e10e462edd8b85', 'a:0:{}', 'no'),
(1413, '_transient_timeout__woocommerce_helper_updates', '1521788661', 'no'),
(1414, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"1c0d60e8879484cbf2ba1cd02d138413\";s:7:\"updated\";i:1521745461;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(1415, '_transient_timeout_plugin_slugs', '1521831864', 'no'),
(1416, '_transient_plugin_slugs', 'a:29:{i:0;s:19:\"akismet/akismet.php\";i:1;s:27:\"woocommerce/woocommerce.php\";i:2;s:63:\"woocommerce-advanced-shipping/woocommerce-advanced-shipping.php\";i:3;s:59:\"woocommerce-attribute-group/woocommerce-attribute-group.php\";i:4;s:71:\"woocommerce-bulk-stock-management/woocommerce-bulk-stock-management.php\";i:5;s:58:\"woocommerce-create-customer-on-order/create-user-order.php\";i:6;s:53:\"woocommerce-order-status/woocommerce-order-status.php\";i:7;s:55:\"woocommerce-point-of-sale/woocommerce-point-of-sale.php\";i:8;s:49:\"woocommerce-pre-orders/woocommerce-pre-orders.php\";i:9;s:63:\"woocommerce-shipment-tracking/woocommerce-shipment-tracking.php\";i:10;s:55:\"woocommerce-stock-manager/woocommerce-stock-manager.php\";i:11;s:51:\"yith-desktop-notifications-for-woocommerce/init.php\";i:12;s:39:\"yith-pre-order-for-woocommerce/init.php\";i:13;s:49:\"yith-product-size-charts-for-woocommerce/init.php\";i:14;s:34:\"yith-woocommerce-barcodes/init.php\";i:15;s:46:\"yith-woocommerce-best-sellers-premium/init.php\";i:16;s:39:\"yith-woocommerce-brands-add-on/init.php\";i:17;s:46:\"yith-woocommerce-bulk-product-editing/init.php\";i:18;s:60:\"yith-woocommerce-color-and-label-variations-premium/init.php\";i:19;s:33:\"yith-woocommerce-compare/init.php\";i:20;s:45:\"yith-woocommerce-custom-order-status/init.php\";i:21;s:40:\"yith-woocommerce-order-tracking/init.php\";i:22;s:50:\"yith-woocommerce-advanced-product-options/init.php\";i:23;s:57:\"yith-woocommerce-product-sales-countdown-premium/init.php\";i:24;s:49:\"yith-woocommerce-sequential-order-number/init.php\";i:25;s:43:\"yith-woocommerce-sms-notifications/init.php\";i:26;s:48:\"yith-woocommerce-terms-conditions-popup/init.php\";i:27;s:38:\"yith-woocommerce-waiting-list/init.php\";i:28;s:43:\"yith-woocommerce-watermark-premium/init.php\";}', 'no'),
(1417, 'yit_recently_activated', 'a:0:{}', 'yes'),
(1418, 'yith_wcpo_enable_pre_order', 'yes', 'yes'),
(1419, 'yith_wcpo_wc-completed', 'yes', 'yes'),
(1420, 'yith_wcpo_wc-cancelled', 'no', 'yes'),
(1421, 'yith_wcpo_wc-refunded', 'no', 'yes'),
(1422, 'yith_wcpo_wc-failed', 'no', 'yes'),
(1423, 'yith_wcpo_default_add_to_cart_label', 'Pre-Order Now', 'yes'),
(1424, 'yit_plugin_fw_panel_wc_default_options_set', 'a:1:{s:15:\"yith_wcpo_panel\";b:1;}', 'yes'),
(1463, '_transient_timeout_yit_panel_sidebar_remote_widgets', '1521975561', 'no'),
(1464, '_transient_yit_panel_sidebar_remote_widgets', 'a:0:{}', 'no'),
(1465, '_transient_timeout_yit_panel_sidebar_remote_widgets_update', '1521788848', 'no'),
(1466, '_transient_yit_panel_sidebar_remote_widgets_update', '1', 'no'),
(1467, 'yith_wcpo_enable_pre_order_purchasable', 'yes', 'yes'),
(1468, 'yith_wcpo_enable_pre_order_auto_outofstock_notification', 'no', 'yes'),
(1469, 'yith_wcpo_enable_pre_order_auto_backorders', 'no', 'yes'),
(1470, 'yith_wcpo_enable_automatic_date_formatting', 'yes', 'yes'),
(1471, 'yith_wcpo_mixing', 'false', 'yes'),
(1472, 'yith_wcpo_default_availability_date_label', 'Available on: {availability_date} at {availability_time}', 'yes'),
(1473, 'yith_wcpo_no_date_label', 'Coming soon...', 'yes'),
(1474, 'yith_wcpo_availability_date_color_loop', '#b20015', 'yes'),
(1475, 'yith_wcpo_availability_date_color_single_product', '#a46497', 'yes'),
(1476, 'yith_wcpo_availability_date_color_cart', '#a46497', 'yes'),
(1477, 'yith_wcpo_enable_pre_order_notification', 'yes', 'yes'),
(1478, 'yith_wcpo_notification_number_days', '1', 'yes'),
(1479, 'yith_wcpo_enable_pre_order_notification_for_sale', 'yes', 'yes'),
(6501, 'yith-wcwtl-enable', 'yes', 'yes'),
(6502, 'yith-wcwtl-button-success-msg', 'You have been added to the waiting list of this product.', 'yes'),
(6503, 'yith-wcwtl-button-leave-msg', 'You have been removed from the waiting list of this product.', 'yes'),
(6504, 'yith-wcwtl-button-error-msg', 'An error has occurred or you\'re already register in this waiting list. Please try again.', 'yes'),
(6505, 'yith-wcwtl-auto-mailout', 'yes', 'yes'),
(6506, 'yith-wcwtl-keep-after-email', 'no', 'yes'),
(6507, 'yith-wcwtl-use-mandrill', 'no', 'yes'),
(6508, 'yith-wcwtl-mandrill-api-key', '', 'yes'),
(6509, 'yith-wcwtl-form-message', 'Notify me when item is back in stock.', 'yes'),
(6510, 'yith-wcwtl-general-font-size', '15', 'yes'),
(6511, 'yith-wcwtl-general-font-color', '#333333', 'yes'),
(6512, 'yith-wcwtl-button-add-label', 'Add to waiting list', 'yes'),
(6513, 'yith-wcwtl-button-add-background', '#a46497', 'yes'),
(6514, 'yith-wcwtl-button-add-background-hover', '#935386', 'yes'),
(6515, 'yith-wcwtl-button-add-text-color', '#ffffff', 'yes'),
(6516, 'yith-wcwtl-button-add-text-color-hover', '#ffffff', 'yes'),
(6517, 'yith-wcwtl-button-leave-label', 'Leave waiting list', 'yes'),
(6518, 'yith-wcwtl-button-leave-background', '#a46497', 'yes'),
(6519, 'yith-wcwtl-button-leave-background-hover', '#935386', 'yes'),
(6520, 'yith-wcwtl-button-leave-text-color', '#ffffff', 'yes'),
(6521, 'yith-wcwtl-button-leave-text-color-hover', '#ffffff', 'yes'),
(6522, 'ywot_set_completed_status', 'no', 'yes'),
(6523, 'ywot_order_tracking_text', 'Your order has been picked up by [carrier_name] on [pickup_date]. Your track code is [track_code].', 'yes'),
(6524, 'ywot_order_tracking_text_position', '1', 'yes'),
(6525, 'ywot_mail_tracking_text', 'Your order has been picked up by [carrier_name] on [pickup_date]. Your track code is [track_code].', 'yes'),
(6526, 'ywot_mail_tracking_text_position', '1', 'yes'),
(6527, 'ywot_show_in_packing_slip_pdf_invoice', 'not', 'yes'),
(6528, 'yith_wccl_db_version', '1.0.0', 'yes'),
(6529, 'yith_wapo_db_version', '1.0.8', 'yes'),
(6530, 'yith_wapo_settings_formposition', 'before', 'yes'),
(6531, 'yith_wapo_settings_addtocartlabel', 'Select Options', 'yes'),
(6532, 'yith_wapo_settings_show_product_price_cart', 'no', 'yes'),
(6533, 'yith_wapo_settings_show_add_ons_price_table', 'no', 'yes'),
(6534, 'yith_wapo_settings_showlabeltype', 'yes', 'yes'),
(6535, 'yith_wapo_settings_showimagetype', 'yes', 'yes'),
(6536, 'yith_wapo_settings_showdescrtype', 'yes', 'yes'),
(6537, 'yith_wapo_settings_showimageopt', 'yes', 'yes'),
(6538, 'yith_wapo_settings_showdescropt', 'yes', 'yes'),
(6539, 'yith_wapo_settings_tooltip_icon', 'http://hanghieu.test/wp-content/plugins/yith-woocommerce-advanced-product-options/assets/img/description-icon.png', 'yes'),
(6540, 'yith_wapo_settings_date_format', 'mm/dd/yy', 'yes'),
(6541, 'yith-wapo-enable-tooltip', 'yes', 'yes'),
(6542, 'yith-wapo-tooltip-position', 'top', 'yes'),
(6543, 'yith-wapo-tooltip-animation', 'fade', 'yes'),
(6544, 'yith-wapo-tooltip-background', '#222222', 'yes'),
(6545, 'yith-wapo-tooltip-text-color', '#ffffff', 'yes'),
(6546, 'yith_wapo_settings_uploadfolder', 'yith_advanced_product_options', 'yes'),
(6547, 'yith_wapo_settings_filetypes', '.gif, .jpg, .png, .rar, .txt, .zip', 'yes'),
(6548, 'yith_wapo_settings_upload_size', '10', 'yes'),
(6549, 'yith-wccl-attributes-style', 'hide', 'yes'),
(6550, 'yith-wccl-enable-tooltip', 'yes', 'yes'),
(6551, 'yith-wccl-tooltip-position', 'top', 'yes'),
(6552, 'yith-wccl-tooltip-animation', 'fade', 'yes'),
(6553, 'yith-wccl-tooltip-background', '#222222', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(6554, 'yith-wccl-tooltip-text-color', '#ffffff', 'yes'),
(6555, 'yith-wccl-enable-description', 'yes', 'yes'),
(6556, 'yith-wccl-enable-in-loop', 'yes', 'yes'),
(6557, 'yith-wccl-position-in-loop', 'after', 'yes'),
(6558, 'yith-wccl-add-to-cart-label', 'Add to cart', 'yes'),
(6559, 'yith-wccl-change-image-hover', 'no', 'yes'),
(6560, 'yith-wccl-show-custom-on-tab', 'no', 'yes'),
(6574, 'widget_yith_wcpsc_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(6575, 'yith-wcpsc-popup-style', 'default', 'yes'),
(6576, 'yith-wcpsc-popup-base-color', '#ffffff', 'yes'),
(6577, 'yith-wcpsc-popup-position', 'center', 'yes'),
(6578, 'yith-wcpsc-popup-effect', 'fade', 'yes'),
(6579, 'yith-wcpsc-popup-overlay-color', '#000000', 'yes'),
(6580, 'yith-wcpsc-popup-overlay-opacity', '0.8', 'yes'),
(6581, 'yith-wcpsc-popup-button-position', 'after_add_to_cart', 'yes'),
(6582, 'yith-wcpsc-popup-button-color', '#b369a5', 'yes'),
(6583, 'yith-wcpsc-popup-button-text-color', '#ffffff', 'yes'),
(6584, 'yith-wcpsc-popup-button-border-radius', '3', 'yes'),
(6585, 'yith-wcpsc-popup-button-padding', 'a:4:{i:0;i:6;i:1;i:15;i:2;i:6;i:3;i:15;}', 'yes'),
(6586, 'yith-wcpsc-popup-button-shadow-color', '#dddddd', 'yes'),
(6587, 'yith-wcpsc-table-style', 'default', 'yes'),
(6588, 'yith-wcpsc-table-base-color', '#f9f9f9', 'yes'),
(6589, 'widget_yith_wcbr_brands_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(6590, 'widget_yith_wcbr_brands_thumbnail', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(6591, 'widget_yith_wcbr_brands_thumbnail_carousel', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(6592, 'widget_yith_wcbr_brands_select', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(6593, 'widget_yith_wcbr_brands_list', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(6594, 'yith_wcbr_brands_taxonomy', 'yith_product_brand', 'yes'),
(6595, 'yith_wcbr_brands_label', 'Brand:', 'yes'),
(6596, 'yith_wcbr_single_product_brands_position', 'woocommerce_template_single_meta', 'yes'),
(6597, 'yith_wcbr_single_product_brands_content', 'both', 'yes'),
(6598, 'yith_wcbr_single_product_brands_size', 'a:3:{s:5:\"width\";i:0;s:6:\"height\";i:30;s:4:\"crop\";b:1;}', 'yes'),
(6599, 'yith_wcbr_loop_product_brands_position', 'woocommerce_template_loop_price', 'yes'),
(6600, 'yith_wcbr_loop_product_brands_size', 'a:3:{s:5:\"width\";i:0;s:6:\"height\";i:60;s:4:\"crop\";b:1;}', 'yes'),
(6601, 'yith_wcbr_loop_product_brands_content', 'name', 'yes'),
(6602, 'yith_wcbr_use_logo_default', 'no', 'yes'),
(6603, 'ywcwat_quality_jpg', '100', 'yes'),
(6604, 'ywcwat_watermark_select', 'a:0:{}', 'yes'),
(6609, '_site_transient_timeout_popular_importers_784bf1e53cac86aa0a13768c3453f180', '1521879234', 'no'),
(6610, '_site_transient_popular_importers_784bf1e53cac86aa0a13768c3453f180', 'a:2:{s:9:\"importers\";a:8:{s:7:\"blogger\";a:4:{s:4:\"name\";s:7:\"Blogger\";s:11:\"description\";s:54:\"Import posts, comments, and users from a Blogger blog.\";s:11:\"plugin-slug\";s:16:\"blogger-importer\";s:11:\"importer-id\";s:7:\"blogger\";}s:9:\"wpcat2tag\";a:4:{s:4:\"name\";s:29:\"Categories and Tags Converter\";s:11:\"description\";s:71:\"Convert existing categories to tags or tags to categories, selectively.\";s:11:\"plugin-slug\";s:18:\"wpcat2tag-importer\";s:11:\"importer-id\";s:10:\"wp-cat2tag\";}s:11:\"livejournal\";a:4:{s:4:\"name\";s:11:\"LiveJournal\";s:11:\"description\";s:46:\"Import posts from LiveJournal using their API.\";s:11:\"plugin-slug\";s:20:\"livejournal-importer\";s:11:\"importer-id\";s:11:\"livejournal\";}s:11:\"movabletype\";a:4:{s:4:\"name\";s:24:\"Movable Type and TypePad\";s:11:\"description\";s:62:\"Import posts and comments from a Movable Type or TypePad blog.\";s:11:\"plugin-slug\";s:20:\"movabletype-importer\";s:11:\"importer-id\";s:2:\"mt\";}s:4:\"opml\";a:4:{s:4:\"name\";s:8:\"Blogroll\";s:11:\"description\";s:28:\"Import links in OPML format.\";s:11:\"plugin-slug\";s:13:\"opml-importer\";s:11:\"importer-id\";s:4:\"opml\";}s:3:\"rss\";a:4:{s:4:\"name\";s:3:\"RSS\";s:11:\"description\";s:30:\"Import posts from an RSS feed.\";s:11:\"plugin-slug\";s:12:\"rss-importer\";s:11:\"importer-id\";s:3:\"rss\";}s:6:\"tumblr\";a:4:{s:4:\"name\";s:6:\"Tumblr\";s:11:\"description\";s:53:\"Import posts &amp; media from Tumblr using their API.\";s:11:\"plugin-slug\";s:15:\"tumblr-importer\";s:11:\"importer-id\";s:6:\"tumblr\";}s:9:\"wordpress\";a:4:{s:4:\"name\";s:9:\"WordPress\";s:11:\"description\";s:96:\"Import posts, pages, comments, custom fields, categories, and tags from a WordPress export file.\";s:11:\"plugin-slug\";s:18:\"wordpress-importer\";s:11:\"importer-id\";s:9:\"wordpress\";}}s:10:\"translated\";b:0;}', 'no'),
(6666, 'yith_product_brand_children', 'a:0:{}', 'yes'),
(8374, 'wc_pre_orders_add_to_cart_button_text', 'Pre-Order Now', 'yes'),
(8375, 'wc_pre_orders_place_order_button_text', 'Place Pre-Order Now', 'yes'),
(8376, 'wc_pre_orders_single_product_message', 'This item will be released on {availability_date}.', 'yes'),
(8377, 'wc_pre_orders_shop_loop_product_message', 'Available on {availability_date}.', 'yes'),
(8378, 'wc_pre_orders_availability_date_cart_title_text', 'Available On', 'yes'),
(8379, 'wc_pre_orders_upon_release_order_total_format', '{order_total} charged on {availability_date}', 'yes'),
(8380, 'wc_pre_orders_upfront_order_total_format', '{order_total} charged upfront', 'yes'),
(8381, 'wc_pre_orders_version', '1.4.6', 'yes'),
(8936, 'wc_sa_meta_box_errors', 'a:0:{}', 'yes'),
(8938, '_site_transient_timeout_available_translations', '1521725530', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(8939, '_site_transient_available_translations', 'a:113:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-06 13:56:09\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 18:16:41\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-01-25 21:29:53\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.4/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-13 19:13:01\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.8.5\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:7:\"Bengali\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.5/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-22 03:44:52\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-04 20:20:28\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 20:33:12\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-21 07:01:05\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-11 09:40:36\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-19 17:34:31\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-12 10:10:36\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-18 12:08:55\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.9.4/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-18 12:08:30\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-22 15:43:53\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/4.9.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-12 12:57:07\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 08:59:25\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-17 05:20:05\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-15 20:17:27\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 09:54:30\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-01-24 19:13:22\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-18 17:06:15\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 16:21:50\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 23:17:08\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 15:03:42\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"4.8.5\";s:7:\"updated\";s:19:\"2017-07-31 15:12:02\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.5/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-01 17:54:52\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-28 20:09:49\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-23 18:34:33\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-27 05:22:44\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-19 14:11:29\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-12-09 21:12:23\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-11 06:05:10\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-12 17:00:17\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 17:11:16\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-21 22:04:16\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.5\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.5/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-10 18:19:59\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-14 06:16:04\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-12 09:39:31\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-13 12:30:42\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 15:33:49\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-01-29 19:54:36\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-28 12:42:14\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-04-13 13:55:54\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 08:18:46\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-16 18:46:39\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-14 11:47:57\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-08 06:01:48\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-11 21:30:32\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.4/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-07 02:07:59\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-15 02:27:09\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:48:25\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 19:40:23\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-03-17 20:40:40\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.7/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:54:41\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"4.8.5\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.5/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-28 10:55:13\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-02 11:50:29\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-19 05:29:03\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 07:20:23\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.9.4/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-02 13:50:55\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-16 10:26:09\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-22 09:27:50\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 08:32:20\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 09:37:35\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 09:30:48\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/4.9.4/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-20 15:15:55\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 12:09:47\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-19 13:10:09\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-22 08:50:10\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 09:59:50\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-05 20:37:27\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 12:42:33\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-02 17:08:41\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-14 15:26:30\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-05 09:23:39\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:9:\"Uyƣurqə\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-11-02 17:05:02\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.3/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-13 08:24:25\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 10:37:43\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-19 14:34:44\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-06 17:26:08\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-17 22:20:52\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-13 02:41:15\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no'),
(8940, 'new_admin_email', 'xuan.0211@gmail.com', 'yes'),
(8946, '_transient_timeout_wc_cbp_9fc6788036b2a18ebe30e3ca436c4096', '1524306783', 'no'),
(8947, '_transient_wc_cbp_9fc6788036b2a18ebe30e3ca436c4096', 'a:0:{}', 'no'),
(8958, 'woocommerce_shipment_tracking_version', '1.6.8', 'yes'),
(8959, '_transient_timeout_b707de9d962a6fa7c3eaeb33763bdb29_version_data', '1521804201', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(8960, '_transient_b707de9d962a6fa7c3eaeb33763bdb29_version_data', 'a:4:{s:4:\"date\";s:4:\"2018\";s:7:\"version\";s:6:\"1.6.10\";s:6:\"update\";s:77:\"Fix - Ensures a vertical space below the tracking information in HTML emails.\";s:9:\"changelog\";a:6:{s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:11:{s:12:\"content-type\";s:10:\"text/plain\";s:14:\"content-length\";s:4:\"5530\";s:4:\"date\";s:29:\"Sat, 03 Feb 2018 11:05:22 GMT\";s:13:\"last-modified\";s:29:\"Fri, 02 Feb 2018 07:14:41 GMT\";s:4:\"etag\";s:34:\"\"5d6ff396ce0278d0c7127fd818a67bab\"\";s:13:\"accept-ranges\";s:5:\"bytes\";s:6:\"server\";s:8:\"AmazonS3\";s:3:\"age\";s:4:\"9032\";s:7:\"x-cache\";s:19:\"Hit from cloudfront\";s:3:\"via\";s:64:\"1.1 fd213e166adb46a27b539f026394e26d.cloudfront.net (CloudFront)\";s:11:\"x-amz-cf-id\";s:56:\"DJN_OBu8OajJVL96PyMcChIeP_kV102XJ1RK76JgJ0yGwbu8UraOsw==\";}}s:4:\"body\";s:5530:\"*** Shipment Tracking Changelog ***\n\n2018-01-25 - version 1.6.10\n* Fix - Ensures a vertical space below the tracking information in HTML emails.\n* Fix - Ensure the \"Date\" label is shown correctly when viewing tracking information on a mobile device.\n* Tweak - Hide the \"Track\" button if no tracking URL is present.\n\n2017-12-14 - version 1.6.9\n* Add - WC minimum requirements to header.\n\n2017-06-07 - version 1.6.8\n* Tweak - Added services for Romania.\n* Tweak - Added support for WC API v2.\n* Fix - Don\'t include tracking info in order refunded email.\n\n2017-05-29 - version 1.6.7\n* Fix - Updated tracking link for DTDC India.\n\n2017-05-15 - version 1.6.6\n* Tweak - Added support for custom mapping in order CSV export.\n\n2017-05-09 - version 1.6.5\n* Fix - Added updater to convert legacy meta introduced before 1.4.0.\n\n2017-04-03 - version 1.6.4\n* Fix - Some tracking information was using billing postcode instead of shipping.\n* Fix - WooCommerce 3.0 compatibility.\n* Update - Removed some legacy code related to storage of tracking data that is no longer needed.\n\n2016-12-21 - version 1.6.3\n* Update - Swedish Postal name and tracking link.\n\n2016-11-25 - version 1.6.2\n* Enhancement - Support for adding or updating tracking information via Customer / Coupon / Order CSV Import\n* Fix - Incorrect DHL US URL format\n* Enhancement - Added translations for fr_FR\n\n2016-10-05 - version 1.6.1\n* Enhancement - Support for Customer / Order XML Export\n* Enhancement - Added DHL US provider.\n* Fix - Issue of template load order. Now it\'s overriden via yourtheme/woocommerce-shipment-tracking/{template_name}. For example storefront-child/woocommerce-shipment-tracking/myaccount/view-order.php.\n* Enhancement - Add Shipment Tracking column in admin orders list.\n\n2016-08-30 - version 1.6.0\n* Tweak - Adds support for one-row-per-item custom formats with Customer / Order CSV Export\n* Tweak - Adds PIP support to display shipment tracking information\n* Fix - Update plugin\'s main to match with plugin\'s slug\n* Fix - Update text domain slug to match with plugin\'s slug\n\n2016-08-10 - version 1.5.0\n* Fix - Improves compatibility with Customer / Order CSV Export 4.0+\n* Tweak - Added An Post (track.anpost.ie) to providers list\n* Tweak - Expose shipment tracking to REST API\n\n2016-07-19 - version 1.4.5\n* Fix - Properly enqueue JS asset no matter what base directory name is.\n  There was hardcoded URL path with \'woocommerce-shipment-tracking\' when\n  enqueueing admin.min.js. Using plugin_dir_url( __FILE__ ) should make it\n  agnostic.\n\n2016-07-07 - version 1.4.4\n* Fix - Add deprecated subscription filter check.\n\n2016-02-17 - version 1.4.3\n* Fix - Added text domain and language files\n\n2016-01-06 - version 1.4.2\n* Fixes issue with selecting DPD in Ireland and the UK.\n\n2015-08-10 - version 1.4.1\n* Fixing minor issue where View Order template can clash with a template of the same name is a custom theme.\n* Fixes minor issues with Subscriptions where renewals create a PHP notice\n\n2015-07-15 - version 1.4.0\n* Made it possible to add multiple tracking numbers to an order.\n* Fixes minor issue where custom tracking link shows in admin when no url has been provided.\n\n2015-06-23 - version 1.3.6\n* Make all date translatable\n* Add Austria DPD\n\n2015-04-20 - version 1.3.5\n* Fix Česká pošta.\n\n2015-04-13 - version 1.3.4\n* Fix Interlink URL error\n* Update Czech.\n\n2015-03-03 - version 1.3.3\n* Prevent data being copied to subscription renewals.\n* Fix royal mail tracking link.\n\n2015-01-17 - version 1.3.2\n* Add Germany DPD\n\n2015-01-11 - version 1.3.1\n* remove CityLink\n* Add Interlink\n\n2014-10-22 - version 1.3.0\n* Added wc_shipment_tracking_get_providers filter.\n* Add DHL to Italy\n\n2014-10-06 - version 1.2.9\n* Added NZ providers\n\n2014-09-23 - version 1.2.8\n* Added Ireland DPD\n\n2014-09-02 - version 1.2.7\n* Update Swedish carriers\n* More swedish providers\n\n2014-08-26 - version 1.2.6\n* Update and add Swedish carriers\n\n2014-06-05 - version 1.2.5\n* Update Royal Mail tracking URL\n* Add CSV Export support to Shipment Tracking\n\n2014-06-03 - version 1.2.4\n* Added FedEx Sameday\n\n2014-04-16 - version 1.2.3\n* Added DHL Intraship (DE)\n\n2014-03-19 - version 1.2.2\n* BRT (Bartolini)\n\n2014-01-28 - version 1.2.1\n* UK Mail\n\n2014-01-06 - version 1.2.0\n* Add UPS Germany\n* Finland tracking\n* 2.1 compatibility\n\n2013-09-23 - version 1.1.12\n* Run sanitize_title() on woocommerce_shipment_tracking_default_provider filter to match sanitized $provider\n\n2013-09-20 - version 1.1.11\n* Unique providers\n\n2013-09-20 - version 1.1.10\n* Czech Republic methods (thanks Petr Silon)\n\n2013-09-16 - version 1.1.9\n* Split UK and NL DPD methods\n\n2013-08-16 - version 1.1.8\n* Add Hermes\n\n2013-07-15 - version 1.1.7\n* Update royal mail url\n\n2013-06-04 - version 1.1.6\n* Fixed tracking link in plain text emails.\n\n2013-04-19 - version 1.1.5\n* woocommerce_shipment_tracking_default_provider filter for setting a default\n\n2013-03-11 - version 1.1.4\n* Added austrian services\n\n2013-03-11 - version 1.1.3\n* Added Deutsche Post DHL\n\n2013-03-08 - version 1.1.2\n* SAPO URL change\n\n2013-01-15 - version 1.1.1\n* Change localisation strings\n\n2013-01-11 - version 1.1.0\n* WC 2.0 Compatibility\n* Custom providers can have custom links and provider names.\n\n2012-12-04 - version 1.0.5\n* New updater\n\n2012-08-15 - version 1.0.4\n* PostNL support\n\n2012-06-25 - version 1.0.3\n* Changed text for \'custom\' links\n* Changed save priority\n\n2012-06-25 - version 1.0.2\n* Added Correios\n* Added Posten AB\n\n2012-06-06 - version 1.0.1\n* Added DTDC shipping\n\n2012-05-17 - version 1.0\n* First Release\n\";s:8:\"response\";a:2:{s:4:\"code\";i:200;s:7:\"message\";s:2:\"OK\";}s:7:\"cookies\";a:0:{}s:8:\"filename\";N;s:13:\"http_response\";O:25:\"WP_HTTP_Requests_Response\":5:{s:11:\"\0*\0response\";O:17:\"Requests_Response\":10:{s:4:\"body\";s:5530:\"*** Shipment Tracking Changelog ***\n\n2018-01-25 - version 1.6.10\n* Fix - Ensures a vertical space below the tracking information in HTML emails.\n* Fix - Ensure the \"Date\" label is shown correctly when viewing tracking information on a mobile device.\n* Tweak - Hide the \"Track\" button if no tracking URL is present.\n\n2017-12-14 - version 1.6.9\n* Add - WC minimum requirements to header.\n\n2017-06-07 - version 1.6.8\n* Tweak - Added services for Romania.\n* Tweak - Added support for WC API v2.\n* Fix - Don\'t include tracking info in order refunded email.\n\n2017-05-29 - version 1.6.7\n* Fix - Updated tracking link for DTDC India.\n\n2017-05-15 - version 1.6.6\n* Tweak - Added support for custom mapping in order CSV export.\n\n2017-05-09 - version 1.6.5\n* Fix - Added updater to convert legacy meta introduced before 1.4.0.\n\n2017-04-03 - version 1.6.4\n* Fix - Some tracking information was using billing postcode instead of shipping.\n* Fix - WooCommerce 3.0 compatibility.\n* Update - Removed some legacy code related to storage of tracking data that is no longer needed.\n\n2016-12-21 - version 1.6.3\n* Update - Swedish Postal name and tracking link.\n\n2016-11-25 - version 1.6.2\n* Enhancement - Support for adding or updating tracking information via Customer / Coupon / Order CSV Import\n* Fix - Incorrect DHL US URL format\n* Enhancement - Added translations for fr_FR\n\n2016-10-05 - version 1.6.1\n* Enhancement - Support for Customer / Order XML Export\n* Enhancement - Added DHL US provider.\n* Fix - Issue of template load order. Now it\'s overriden via yourtheme/woocommerce-shipment-tracking/{template_name}. For example storefront-child/woocommerce-shipment-tracking/myaccount/view-order.php.\n* Enhancement - Add Shipment Tracking column in admin orders list.\n\n2016-08-30 - version 1.6.0\n* Tweak - Adds support for one-row-per-item custom formats with Customer / Order CSV Export\n* Tweak - Adds PIP support to display shipment tracking information\n* Fix - Update plugin\'s main to match with plugin\'s slug\n* Fix - Update text domain slug to match with plugin\'s slug\n\n2016-08-10 - version 1.5.0\n* Fix - Improves compatibility with Customer / Order CSV Export 4.0+\n* Tweak - Added An Post (track.anpost.ie) to providers list\n* Tweak - Expose shipment tracking to REST API\n\n2016-07-19 - version 1.4.5\n* Fix - Properly enqueue JS asset no matter what base directory name is.\n  There was hardcoded URL path with \'woocommerce-shipment-tracking\' when\n  enqueueing admin.min.js. Using plugin_dir_url( __FILE__ ) should make it\n  agnostic.\n\n2016-07-07 - version 1.4.4\n* Fix - Add deprecated subscription filter check.\n\n2016-02-17 - version 1.4.3\n* Fix - Added text domain and language files\n\n2016-01-06 - version 1.4.2\n* Fixes issue with selecting DPD in Ireland and the UK.\n\n2015-08-10 - version 1.4.1\n* Fixing minor issue where View Order template can clash with a template of the same name is a custom theme.\n* Fixes minor issues with Subscriptions where renewals create a PHP notice\n\n2015-07-15 - version 1.4.0\n* Made it possible to add multiple tracking numbers to an order.\n* Fixes minor issue where custom tracking link shows in admin when no url has been provided.\n\n2015-06-23 - version 1.3.6\n* Make all date translatable\n* Add Austria DPD\n\n2015-04-20 - version 1.3.5\n* Fix Česká pošta.\n\n2015-04-13 - version 1.3.4\n* Fix Interlink URL error\n* Update Czech.\n\n2015-03-03 - version 1.3.3\n* Prevent data being copied to subscription renewals.\n* Fix royal mail tracking link.\n\n2015-01-17 - version 1.3.2\n* Add Germany DPD\n\n2015-01-11 - version 1.3.1\n* remove CityLink\n* Add Interlink\n\n2014-10-22 - version 1.3.0\n* Added wc_shipment_tracking_get_providers filter.\n* Add DHL to Italy\n\n2014-10-06 - version 1.2.9\n* Added NZ providers\n\n2014-09-23 - version 1.2.8\n* Added Ireland DPD\n\n2014-09-02 - version 1.2.7\n* Update Swedish carriers\n* More swedish providers\n\n2014-08-26 - version 1.2.6\n* Update and add Swedish carriers\n\n2014-06-05 - version 1.2.5\n* Update Royal Mail tracking URL\n* Add CSV Export support to Shipment Tracking\n\n2014-06-03 - version 1.2.4\n* Added FedEx Sameday\n\n2014-04-16 - version 1.2.3\n* Added DHL Intraship (DE)\n\n2014-03-19 - version 1.2.2\n* BRT (Bartolini)\n\n2014-01-28 - version 1.2.1\n* UK Mail\n\n2014-01-06 - version 1.2.0\n* Add UPS Germany\n* Finland tracking\n* 2.1 compatibility\n\n2013-09-23 - version 1.1.12\n* Run sanitize_title() on woocommerce_shipment_tracking_default_provider filter to match sanitized $provider\n\n2013-09-20 - version 1.1.11\n* Unique providers\n\n2013-09-20 - version 1.1.10\n* Czech Republic methods (thanks Petr Silon)\n\n2013-09-16 - version 1.1.9\n* Split UK and NL DPD methods\n\n2013-08-16 - version 1.1.8\n* Add Hermes\n\n2013-07-15 - version 1.1.7\n* Update royal mail url\n\n2013-06-04 - version 1.1.6\n* Fixed tracking link in plain text emails.\n\n2013-04-19 - version 1.1.5\n* woocommerce_shipment_tracking_default_provider filter for setting a default\n\n2013-03-11 - version 1.1.4\n* Added austrian services\n\n2013-03-11 - version 1.1.3\n* Added Deutsche Post DHL\n\n2013-03-08 - version 1.1.2\n* SAPO URL change\n\n2013-01-15 - version 1.1.1\n* Change localisation strings\n\n2013-01-11 - version 1.1.0\n* WC 2.0 Compatibility\n* Custom providers can have custom links and provider names.\n\n2012-12-04 - version 1.0.5\n* New updater\n\n2012-08-15 - version 1.0.4\n* PostNL support\n\n2012-06-25 - version 1.0.3\n* Changed text for \'custom\' links\n* Changed save priority\n\n2012-06-25 - version 1.0.2\n* Added Correios\n* Added Posten AB\n\n2012-06-06 - version 1.0.1\n* Added DTDC shipping\n\n2012-05-17 - version 1.0\n* First Release\n\";s:3:\"raw\";s:5964:\"HTTP/1.1 200 OK\r\nContent-Type: text/plain\r\nContent-Length: 5530\r\nConnection: close\r\nDate: Sat, 03 Feb 2018 11:05:22 GMT\r\nLast-Modified: Fri, 02 Feb 2018 07:14:41 GMT\r\nETag: \"5d6ff396ce0278d0c7127fd818a67bab\"\r\nAccept-Ranges: bytes\r\nServer: AmazonS3\r\nAge: 9032\r\nX-Cache: Hit from cloudfront\r\nVia: 1.1 fd213e166adb46a27b539f026394e26d.cloudfront.net (CloudFront)\r\nX-Amz-Cf-Id: DJN_OBu8OajJVL96PyMcChIeP_kV102XJ1RK76JgJ0yGwbu8UraOsw==\r\n\r\n*** Shipment Tracking Changelog ***\n\n2018-01-25 - version 1.6.10\n* Fix - Ensures a vertical space below the tracking information in HTML emails.\n* Fix - Ensure the \"Date\" label is shown correctly when viewing tracking information on a mobile device.\n* Tweak - Hide the \"Track\" button if no tracking URL is present.\n\n2017-12-14 - version 1.6.9\n* Add - WC minimum requirements to header.\n\n2017-06-07 - version 1.6.8\n* Tweak - Added services for Romania.\n* Tweak - Added support for WC API v2.\n* Fix - Don\'t include tracking info in order refunded email.\n\n2017-05-29 - version 1.6.7\n* Fix - Updated tracking link for DTDC India.\n\n2017-05-15 - version 1.6.6\n* Tweak - Added support for custom mapping in order CSV export.\n\n2017-05-09 - version 1.6.5\n* Fix - Added updater to convert legacy meta introduced before 1.4.0.\n\n2017-04-03 - version 1.6.4\n* Fix - Some tracking information was using billing postcode instead of shipping.\n* Fix - WooCommerce 3.0 compatibility.\n* Update - Removed some legacy code related to storage of tracking data that is no longer needed.\n\n2016-12-21 - version 1.6.3\n* Update - Swedish Postal name and tracking link.\n\n2016-11-25 - version 1.6.2\n* Enhancement - Support for adding or updating tracking information via Customer / Coupon / Order CSV Import\n* Fix - Incorrect DHL US URL format\n* Enhancement - Added translations for fr_FR\n\n2016-10-05 - version 1.6.1\n* Enhancement - Support for Customer / Order XML Export\n* Enhancement - Added DHL US provider.\n* Fix - Issue of template load order. Now it\'s overriden via yourtheme/woocommerce-shipment-tracking/{template_name}. For example storefront-child/woocommerce-shipment-tracking/myaccount/view-order.php.\n* Enhancement - Add Shipment Tracking column in admin orders list.\n\n2016-08-30 - version 1.6.0\n* Tweak - Adds support for one-row-per-item custom formats with Customer / Order CSV Export\n* Tweak - Adds PIP support to display shipment tracking information\n* Fix - Update plugin\'s main to match with plugin\'s slug\n* Fix - Update text domain slug to match with plugin\'s slug\n\n2016-08-10 - version 1.5.0\n* Fix - Improves compatibility with Customer / Order CSV Export 4.0+\n* Tweak - Added An Post (track.anpost.ie) to providers list\n* Tweak - Expose shipment tracking to REST API\n\n2016-07-19 - version 1.4.5\n* Fix - Properly enqueue JS asset no matter what base directory name is.\n  There was hardcoded URL path with \'woocommerce-shipment-tracking\' when\n  enqueueing admin.min.js. Using plugin_dir_url( __FILE__ ) should make it\n  agnostic.\n\n2016-07-07 - version 1.4.4\n* Fix - Add deprecated subscription filter check.\n\n2016-02-17 - version 1.4.3\n* Fix - Added text domain and language files\n\n2016-01-06 - version 1.4.2\n* Fixes issue with selecting DPD in Ireland and the UK.\n\n2015-08-10 - version 1.4.1\n* Fixing minor issue where View Order template can clash with a template of the same name is a custom theme.\n* Fixes minor issues with Subscriptions where renewals create a PHP notice\n\n2015-07-15 - version 1.4.0\n* Made it possible to add multiple tracking numbers to an order.\n* Fixes minor issue where custom tracking link shows in admin when no url has been provided.\n\n2015-06-23 - version 1.3.6\n* Make all date translatable\n* Add Austria DPD\n\n2015-04-20 - version 1.3.5\n* Fix Česká pošta.\n\n2015-04-13 - version 1.3.4\n* Fix Interlink URL error\n* Update Czech.\n\n2015-03-03 - version 1.3.3\n* Prevent data being copied to subscription renewals.\n* Fix royal mail tracking link.\n\n2015-01-17 - version 1.3.2\n* Add Germany DPD\n\n2015-01-11 - version 1.3.1\n* remove CityLink\n* Add Interlink\n\n2014-10-22 - version 1.3.0\n* Added wc_shipment_tracking_get_providers filter.\n* Add DHL to Italy\n\n2014-10-06 - version 1.2.9\n* Added NZ providers\n\n2014-09-23 - version 1.2.8\n* Added Ireland DPD\n\n2014-09-02 - version 1.2.7\n* Update Swedish carriers\n* More swedish providers\n\n2014-08-26 - version 1.2.6\n* Update and add Swedish carriers\n\n2014-06-05 - version 1.2.5\n* Update Royal Mail tracking URL\n* Add CSV Export support to Shipment Tracking\n\n2014-06-03 - version 1.2.4\n* Added FedEx Sameday\n\n2014-04-16 - version 1.2.3\n* Added DHL Intraship (DE)\n\n2014-03-19 - version 1.2.2\n* BRT (Bartolini)\n\n2014-01-28 - version 1.2.1\n* UK Mail\n\n2014-01-06 - version 1.2.0\n* Add UPS Germany\n* Finland tracking\n* 2.1 compatibility\n\n2013-09-23 - version 1.1.12\n* Run sanitize_title() on woocommerce_shipment_tracking_default_provider filter to match sanitized $provider\n\n2013-09-20 - version 1.1.11\n* Unique providers\n\n2013-09-20 - version 1.1.10\n* Czech Republic methods (thanks Petr Silon)\n\n2013-09-16 - version 1.1.9\n* Split UK and NL DPD methods\n\n2013-08-16 - version 1.1.8\n* Add Hermes\n\n2013-07-15 - version 1.1.7\n* Update royal mail url\n\n2013-06-04 - version 1.1.6\n* Fixed tracking link in plain text emails.\n\n2013-04-19 - version 1.1.5\n* woocommerce_shipment_tracking_default_provider filter for setting a default\n\n2013-03-11 - version 1.1.4\n* Added austrian services\n\n2013-03-11 - version 1.1.3\n* Added Deutsche Post DHL\n\n2013-03-08 - version 1.1.2\n* SAPO URL change\n\n2013-01-15 - version 1.1.1\n* Change localisation strings\n\n2013-01-11 - version 1.1.0\n* WC 2.0 Compatibility\n* Custom providers can have custom links and provider names.\n\n2012-12-04 - version 1.0.5\n* New updater\n\n2012-08-15 - version 1.0.4\n* PostNL support\n\n2012-06-25 - version 1.0.3\n* Changed text for \'custom\' links\n* Changed save priority\n\n2012-06-25 - version 1.0.2\n* Added Correios\n* Added Posten AB\n\n2012-06-06 - version 1.0.1\n* Added DTDC shipping\n\n2012-05-17 - version 1.0\n* First Release\n\";s:7:\"headers\";O:25:\"Requests_Response_Headers\":1:{s:7:\"\0*\0data\";a:11:{s:12:\"content-type\";a:1:{i:0;s:10:\"text/plain\";}s:14:\"content-length\";a:1:{i:0;s:4:\"5530\";}s:4:\"date\";a:1:{i:0;s:29:\"Sat, 03 Feb 2018 11:05:22 GMT\";}s:13:\"last-modified\";a:1:{i:0;s:29:\"Fri, 02 Feb 2018 07:14:41 GMT\";}s:4:\"etag\";a:1:{i:0;s:34:\"\"5d6ff396ce0278d0c7127fd818a67bab\"\";}s:13:\"accept-ranges\";a:1:{i:0;s:5:\"bytes\";}s:6:\"server\";a:1:{i:0;s:8:\"AmazonS3\";}s:3:\"age\";a:1:{i:0;s:4:\"9032\";}s:7:\"x-cache\";a:1:{i:0;s:19:\"Hit from cloudfront\";}s:3:\"via\";a:1:{i:0;s:64:\"1.1 fd213e166adb46a27b539f026394e26d.cloudfront.net (CloudFront)\";}s:11:\"x-amz-cf-id\";a:1:{i:0;s:56:\"DJN_OBu8OajJVL96PyMcChIeP_kV102XJ1RK76JgJ0yGwbu8UraOsw==\";}}}s:11:\"status_code\";i:200;s:16:\"protocol_version\";d:1.1;s:7:\"success\";b:1;s:9:\"redirects\";i:0;s:3:\"url\";s:90:\"http://dzv365zjfbd8v.cloudfront.net/changelogs/woocommerce-shipment-tracking/changelog.txt\";s:7:\"history\";a:0:{}s:7:\"cookies\";O:19:\"Requests_Cookie_Jar\":1:{s:10:\"\0*\0cookies\";a:0:{}}}s:11:\"\0*\0filename\";N;s:4:\"data\";N;s:7:\"headers\";N;s:6:\"status\";N;}}}', 'no'),
(8961, 'wc_custom_status_edit_existing_status', 'a:7:{s:10:\"wc-pending\";a:4:{s:4:\"name\";s:17:\"Chờ thanh toán\";s:5:\"label\";s:7:\"pending\";s:5:\"color\";s:7:\"#ffba00\";s:12:\"item_editing\";s:3:\"yes\";}s:13:\"wc-processing\";a:3:{s:4:\"name\";s:14:\"Đang xử lý\";s:5:\"label\";s:10:\"processing\";s:5:\"color\";s:7:\"#73a724\";}s:10:\"wc-on-hold\";a:4:{s:4:\"name\";s:11:\"Tạm giữ\";s:5:\"label\";s:7:\"on-hold\";s:5:\"color\";s:7:\"#999999\";s:12:\"item_editing\";s:3:\"yes\";}s:12:\"wc-completed\";a:3:{s:4:\"name\";s:17:\"Đã hoàn thành\";s:5:\"label\";s:9:\"completed\";s:5:\"color\";s:7:\"#2ea2cc\";}s:12:\"wc-cancelled\";a:3:{s:4:\"name\";s:10:\"Đã hủy\";s:5:\"label\";s:9:\"cancelled\";s:5:\"color\";s:7:\"#a00a00\";}s:11:\"wc-refunded\";a:3:{s:4:\"name\";s:23:\"Đã hoàn lại tiền\";s:5:\"label\";s:8:\"refunded\";s:5:\"color\";s:7:\"#999999\";}s:9:\"wc-failed\";a:3:{s:4:\"name\";s:12:\"Thất bại\";s:5:\"label\";s:6:\"failed\";s:5:\"color\";s:7:\"#d0c21f\";}}', 'yes'),
(8962, 'woocommerce_status_actions_default_style', '0', 'yes'),
(8963, 'wc_custom_status_payment_complete_status', 'wc-completed', 'yes'),
(8969, '_transient_timeout_wc_cbp_4634fdc34201ab789adea2b7d815a0da', '1524310039', 'no'),
(8970, '_transient_wc_cbp_4634fdc34201ab789adea2b7d815a0da', 'a:4:{i:0;i:19;i:1;i:50;i:2;i:19;i:3;i:50;}', 'no'),
(8985, '_transient_timeout_wc_shipping_method_count_1_1521718255', '1524310297', 'no'),
(8986, '_transient_wc_shipping_method_count_1_1521718255', '3', 'no'),
(9015, 'woocommerce_bacs_accounts', 'a:5:{i:0;a:6:{s:12:\"account_name\";s:24:\"Nguyễn Thị Diễm My\";s:14:\"account_number\";s:13:\"0451000430921\";s:9:\"bank_name\";s:47:\"Vietcombank - Chi nhánh Mỹ Đình, Hà Nội\";s:9:\"sort_code\";s:0:\"\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";}i:1;a:6:{s:12:\"account_name\";s:24:\"Nguyễn Thị Diễm My\";s:14:\"account_number\";s:13:\"1410205508131\";s:9:\"bank_name\";s:44:\"Agribank - Chi nhánh Mỹ Đình, Hà Nội\";s:9:\"sort_code\";s:0:\"\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";}i:2;a:6:{s:12:\"account_name\";s:24:\"Nguyễn Thị Diễm My\";s:14:\"account_number\";s:12:\"101005427303\";s:9:\"bank_name\";s:46:\"VietinBank - Chi nhánh Mỹ Đình, Hà Nội\";s:9:\"sort_code\";s:0:\"\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";}i:3;a:6:{s:12:\"account_name\";s:24:\"Nguyễn Thị Diễm My\";s:14:\"account_number\";s:14:\"12310000670994\";s:9:\"bank_name\";s:56:\"BIDV - Chi nhánh Quang Trung, Hai Bà Trưng, Hà Nội\";s:9:\"sort_code\";s:0:\"\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";}i:4;a:6:{s:12:\"account_name\";s:24:\"Nguyễn Thị Diễm My\";s:14:\"account_number\";s:14:\"03201010506475\";s:9:\"bank_name\";s:49:\"Maritime Bank - Chi nhánh Thanh Xuân, Hà Nội\";s:9:\"sort_code\";s:0:\"\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";}}', 'yes'),
(9022, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-4.9.4.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-4.9.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.4\";s:7:\"version\";s:5:\"4.9.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1521738706;s:15:\"version_checked\";s:5:\"4.9.4\";s:12:\"translations\";a:0:{}}', 'no'),
(9026, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1521738710;s:7:\"checked\";a:1:{s:10:\"storefront\";s:5:\"2.2.8\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(9031, 'wc_sa_db_version', '2.0.6', 'yes'),
(9032, 'wc_sa_version', '2.0.6', 'yes'),
(9035, '_transient_timeout_wc_cbp_c285109b211ff4ee3bd228a3c4626024', '1524314331', 'no'),
(9036, '_transient_wc_cbp_c285109b211ff4ee3bd228a3c4626024', 'a:4:{i:0;i:19;i:1;i:50;i:2;i:19;i:3;i:50;}', 'no'),
(9039, 'woocommerce_pre_orders_pay_later_settings', 'a:3:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:9:\"Pay Later\";s:11:\"description\";s:112:\"You will receive an email when the pre-order is available along with instructions on how to complete your order.\";}', 'yes'),
(9048, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(9090, '_transient_timeout_wc_cbp_4319278689ca26edcc0f64afde2d298e', '1524316624', 'no'),
(9091, '_transient_wc_cbp_4319278689ca26edcc0f64afde2d298e', 'a:0:{}', 'no'),
(9187, '_transient_timeout_wc_shipping_method_count_1_1521727241', '1524319268', 'no'),
(9188, '_transient_wc_shipping_method_count_1_1521727241', '3', 'no'),
(9190, '_transient_timeout_wc_shipping_method_count_0_1521727241', '1524319434', 'no'),
(9191, '_transient_wc_shipping_method_count_0_1521727241', '2', 'no'),
(9260, 'wsm_display_option', 'a:11:{s:9:\"thumbnail\";s:7:\"display\";s:5:\"price\";s:7:\"display\";s:11:\"sales_price\";s:2:\"no\";s:6:\"weight\";s:7:\"display\";s:12:\"manage_stock\";s:7:\"display\";s:12:\"stock_status\";s:7:\"display\";s:10:\"backorders\";s:7:\"display\";s:5:\"stock\";s:7:\"display\";s:10:\"tax_status\";s:2:\"no\";s:9:\"tax_class\";s:2:\"no\";s:14:\"shipping_class\";s:2:\"no\";}', 'yes'),
(9317, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1521745460;s:8:\"response\";a:8:{s:51:\"yith-desktop-notifications-for-woocommerce/init.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:56:\"w.org/plugins/yith-desktop-notifications-for-woocommerce\";s:4:\"slug\";s:42:\"yith-desktop-notifications-for-woocommerce\";s:6:\"plugin\";s:51:\"yith-desktop-notifications-for-woocommerce/init.php\";s:11:\"new_version\";s:5:\"1.2.0\";s:3:\"url\";s:73:\"https://wordpress.org/plugins/yith-desktop-notifications-for-woocommerce/\";s:7:\"package\";s:91:\"https://downloads.wordpress.org/plugin/yith-desktop-notifications-for-woocommerce.1.2.0.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:95:\"https://ps.w.org/yith-desktop-notifications-for-woocommerce/assets/icon-128x128.jpg?rev=1557398\";s:0:\"\";s:93:\"https://ps.w.org/yith-desktop-notifications-for-woocommerce/assets/icon-64x64.jpg?rev=1557390\";s:7:\"default\";s:95:\"https://ps.w.org/yith-desktop-notifications-for-woocommerce/assets/icon-128x128.jpg?rev=1557398\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:98:\"https://ps.w.org/yith-desktop-notifications-for-woocommerce/assets/banner-1544x500.jpg?rev=1557390\";s:2:\"1x\";s:97:\"https://ps.w.org/yith-desktop-notifications-for-woocommerce/assets/banner-772x250.jpg?rev=1557390\";s:7:\"default\";s:98:\"https://ps.w.org/yith-desktop-notifications-for-woocommerce/assets/banner-1544x500.jpg?rev=1557390\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:49:\"yith-product-size-charts-for-woocommerce/init.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:54:\"w.org/plugins/yith-product-size-charts-for-woocommerce\";s:4:\"slug\";s:40:\"yith-product-size-charts-for-woocommerce\";s:6:\"plugin\";s:49:\"yith-product-size-charts-for-woocommerce/init.php\";s:11:\"new_version\";s:5:\"1.1.2\";s:3:\"url\";s:71:\"https://wordpress.org/plugins/yith-product-size-charts-for-woocommerce/\";s:7:\"package\";s:89:\"https://downloads.wordpress.org/plugin/yith-product-size-charts-for-woocommerce.1.1.2.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:93:\"https://ps.w.org/yith-product-size-charts-for-woocommerce/assets/icon-128x128.jpg?rev=1229104\";s:0:\"\";s:91:\"https://ps.w.org/yith-product-size-charts-for-woocommerce/assets/icon-64x64.jpg?rev=1229104\";s:7:\"default\";s:93:\"https://ps.w.org/yith-product-size-charts-for-woocommerce/assets/icon-128x128.jpg?rev=1229104\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:96:\"https://ps.w.org/yith-product-size-charts-for-woocommerce/assets/banner-1544x500.jpg?rev=1229104\";s:2:\"1x\";s:95:\"https://ps.w.org/yith-product-size-charts-for-woocommerce/assets/banner-772x250.jpg?rev=1229104\";s:7:\"default\";s:96:\"https://ps.w.org/yith-product-size-charts-for-woocommerce/assets/banner-1544x500.jpg?rev=1229104\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:39:\"yith-woocommerce-brands-add-on/init.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:44:\"w.org/plugins/yith-woocommerce-brands-add-on\";s:4:\"slug\";s:30:\"yith-woocommerce-brands-add-on\";s:6:\"plugin\";s:39:\"yith-woocommerce-brands-add-on/init.php\";s:11:\"new_version\";s:5:\"1.2.1\";s:3:\"url\";s:61:\"https://wordpress.org/plugins/yith-woocommerce-brands-add-on/\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/plugin/yith-woocommerce-brands-add-on.1.2.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:83:\"https://ps.w.org/yith-woocommerce-brands-add-on/assets/icon-128x128.jpg?rev=1164835\";s:0:\"\";s:81:\"https://ps.w.org/yith-woocommerce-brands-add-on/assets/icon-64x64.jpg?rev=1164835\";s:7:\"default\";s:83:\"https://ps.w.org/yith-woocommerce-brands-add-on/assets/icon-128x128.jpg?rev=1164835\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:86:\"https://ps.w.org/yith-woocommerce-brands-add-on/assets/banner-1544x500.jpg?rev=1164835\";s:2:\"1x\";s:85:\"https://ps.w.org/yith-woocommerce-brands-add-on/assets/banner-772x250.jpg?rev=1164835\";s:7:\"default\";s:86:\"https://ps.w.org/yith-woocommerce-brands-add-on/assets/banner-1544x500.jpg?rev=1164835\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:46:\"yith-woocommerce-bulk-product-editing/init.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:51:\"w.org/plugins/yith-woocommerce-bulk-product-editing\";s:4:\"slug\";s:37:\"yith-woocommerce-bulk-product-editing\";s:6:\"plugin\";s:46:\"yith-woocommerce-bulk-product-editing/init.php\";s:11:\"new_version\";s:5:\"1.2.4\";s:3:\"url\";s:68:\"https://wordpress.org/plugins/yith-woocommerce-bulk-product-editing/\";s:7:\"package\";s:86:\"https://downloads.wordpress.org/plugin/yith-woocommerce-bulk-product-editing.1.2.4.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:90:\"https://ps.w.org/yith-woocommerce-bulk-product-editing/assets/icon-128x128.jpg?rev=1212460\";s:0:\"\";s:88:\"https://ps.w.org/yith-woocommerce-bulk-product-editing/assets/icon-64x64.jpg?rev=1212460\";s:7:\"default\";s:90:\"https://ps.w.org/yith-woocommerce-bulk-product-editing/assets/icon-128x128.jpg?rev=1212460\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:93:\"https://ps.w.org/yith-woocommerce-bulk-product-editing/assets/banner-1544x500.jpg?rev=1212460\";s:2:\"1x\";s:92:\"https://ps.w.org/yith-woocommerce-bulk-product-editing/assets/banner-772x250.jpg?rev=1212460\";s:7:\"default\";s:93:\"https://ps.w.org/yith-woocommerce-bulk-product-editing/assets/banner-1544x500.jpg?rev=1212460\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:33:\"yith-woocommerce-compare/init.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:38:\"w.org/plugins/yith-woocommerce-compare\";s:4:\"slug\";s:24:\"yith-woocommerce-compare\";s:6:\"plugin\";s:33:\"yith-woocommerce-compare/init.php\";s:11:\"new_version\";s:5:\"2.3.0\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/yith-woocommerce-compare/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/yith-woocommerce-compare.2.3.0.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:77:\"https://ps.w.org/yith-woocommerce-compare/assets/icon-128x128.jpg?rev=1460909\";s:0:\"\";s:75:\"https://ps.w.org/yith-woocommerce-compare/assets/icon-64x64.jpg?rev=1460909\";s:7:\"default\";s:77:\"https://ps.w.org/yith-woocommerce-compare/assets/icon-128x128.jpg?rev=1460909\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:80:\"https://ps.w.org/yith-woocommerce-compare/assets/banner-1544x500.jpg?rev=1460909\";s:2:\"1x\";s:79:\"https://ps.w.org/yith-woocommerce-compare/assets/banner-772x250.jpg?rev=1460909\";s:7:\"default\";s:80:\"https://ps.w.org/yith-woocommerce-compare/assets/banner-1544x500.jpg?rev=1460909\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.2\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:45:\"yith-woocommerce-custom-order-status/init.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:50:\"w.org/plugins/yith-woocommerce-custom-order-status\";s:4:\"slug\";s:36:\"yith-woocommerce-custom-order-status\";s:6:\"plugin\";s:45:\"yith-woocommerce-custom-order-status/init.php\";s:11:\"new_version\";s:5:\"1.1.5\";s:3:\"url\";s:67:\"https://wordpress.org/plugins/yith-woocommerce-custom-order-status/\";s:7:\"package\";s:85:\"https://downloads.wordpress.org/plugin/yith-woocommerce-custom-order-status.1.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:89:\"https://ps.w.org/yith-woocommerce-custom-order-status/assets/icon-128x128.jpg?rev=1196330\";s:7:\"default\";s:89:\"https://ps.w.org/yith-woocommerce-custom-order-status/assets/icon-128x128.jpg?rev=1196330\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:92:\"https://ps.w.org/yith-woocommerce-custom-order-status/assets/banner-1544x500.jpg?rev=1196330\";s:2:\"1x\";s:91:\"https://ps.w.org/yith-woocommerce-custom-order-status/assets/banner-772x250.jpg?rev=1196330\";s:7:\"default\";s:92:\"https://ps.w.org/yith-woocommerce-custom-order-status/assets/banner-1544x500.jpg?rev=1196330\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.2\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:38:\"yith-woocommerce-waiting-list/init.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:43:\"w.org/plugins/yith-woocommerce-waiting-list\";s:4:\"slug\";s:29:\"yith-woocommerce-waiting-list\";s:6:\"plugin\";s:38:\"yith-woocommerce-waiting-list/init.php\";s:11:\"new_version\";s:5:\"1.2.0\";s:3:\"url\";s:60:\"https://wordpress.org/plugins/yith-woocommerce-waiting-list/\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/plugin/yith-woocommerce-waiting-list.1.2.0.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:82:\"https://ps.w.org/yith-woocommerce-waiting-list/assets/icon-128x128.jpg?rev=1460914\";s:0:\"\";s:80:\"https://ps.w.org/yith-woocommerce-waiting-list/assets/icon-64x64.jpg?rev=1460914\";s:7:\"default\";s:82:\"https://ps.w.org/yith-woocommerce-waiting-list/assets/icon-128x128.jpg?rev=1460914\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:85:\"https://ps.w.org/yith-woocommerce-waiting-list/assets/banner-1544x500.jpg?rev=1460914\";s:2:\"1x\";s:84:\"https://ps.w.org/yith-woocommerce-waiting-list/assets/banner-772x250.jpg?rev=1460914\";s:7:\"default\";s:85:\"https://ps.w.org/yith-woocommerce-waiting-list/assets/banner-1544x500.jpg?rev=1460914\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.2\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:43:\"yith-woocommerce-watermark-premium/init.php\";O:8:\"stdClass\":5:{s:4:\"slug\";s:43:\"yith-woocommerce-watermark-premium/init.php\";s:11:\"new_version\";s:5:\"1.1.2\";s:9:\"changelog\";s:3662:\"\n\n<h4>Version 1.1.2 - Released on Jan 31, 2018 </h4>\n <ul>\n    <li>New: Support to WooCommerce 3.3.0</li>\n    <li>New: Support to WordPress 4.9.2</li>\n    <li>Update: Plugin Framework 3.0</li>\n    <li>Fix: Reset button</li>\n </ul>\n<h4>Version 1.1.1 - Released on Oct 04, 2017 </h4>\n <ul>\n    <li> New: Support to WooCommerce 3.2.0-RC1</li>\n	<li> New: Watermark automatically applied when a new product image is uploaded</li>\n	<li> Fix: Watermark doesn\'t scale properly</li>\n	<li> Update: Plugin Framework</li>\n </ul>\n<h4>Version 1.1.0 - Released on Sept 26, 2017 </h4>\n <ul>\n    <li> New: Option to preview watermarks</li>\n	<li> New: Option to apply watermarks to single product via AJAX procedure</li>\n	<li> New: Show or hide log messages when applying watermark procedure</li>\n	<li> New: Dutch language file</li>\n	<li> New: Support WooCommerce 3.1.2</li>\n	<li> Tweak: Improved SQL query performance</li>\n	<li> Update: Plugin Framework</li>\n    <li> Update: Language files</li>\n\n </ul>\n<h4>Version 1.0.14 - Released on Mar 07, 2016 </h4>\n <ul>\n    <li>New: Support to WooCommerce 2.7.0-RC1</li>\n    <li>Update: Plugin Framework</li>\n </ul>\n<h4>Version 1.0.13 - Released on Dec 29, 2016 </h4>\n <ul>\n    <li>Added: Support to WordPress 4.7</li>\n    <li>Added: Support to WooCommerce 2.6.11</li>\n    <li>Added: Italian Language file</li>\n    <li>Updated: Plugin Framework</li>\n    <li>Updated: Language file</li>\n </ul>\n<h4>Version 1.0.12 - Released on July 07, 2016 </h4>\n <ul>\n     <li>Fixed: Js error in Plugin panel</li>\n	 <li>Updated: Plugin Framework</li>\n </ul>\n<h4>Version 1.0.11 - Released on July 05, 2016 </h4>\n <ul>\n     <li>Tweak: Watermark automatically applied when a new product image is uploaded</li>\n     <li>Updated: Plugin Framework</li>\n </ul>\n<h4>Version 1.0.10 - Released on Jun 14, 2016 </h4>\n <ul>\n     <li>Added: Compatibility with WooCommerce 2.6.0 RC2</li>\n     <li>Added: Spanish language file</li>\n     <li>Tweak: Improved SQL query performance</li>\n     <li>Updated: Plugin framework (edited)</li>\n </ul>\n <h4>Version 1.0.9 - Released on Mar 16, 2016 </h4>\n <ul>\n     <li>Fixed: case sensitive path</li>\n     <li>Added: option for a complete backup</li>\n     <li>Updated: plugin framework</li>\n </ul>\n <h4>Version 1.0.8 - Released on Mar 16, 2016 </h4>\n <ul>\n     <li>Fixed: Folder file permission</li>\n     <li>Updated: Plugin Framework</li>\n </ul>\n <h4>Version 1.0.7 - Released on Mar 11, 2016 </h4>\n <ul>\n     <li>Added: Option to repeat watermark when it created from an existing image</li>\n     <li>Added: Option to set a rotation angle if the watermark is created as text</li>\n     <li>Tweak: All product backed up images are stored in a private directory</li>\n     <li>Update: Plugin Framework</li>\n     <li>Update: Language File</li>\n </ul>\n <h4>Version 1.0.6 - Released on Jan 29, 2016 </h4>\n <ul>\n     <li>Fixed: control if original file not exist</li>\n     <li>Updated: Plugin Framework</li>\n </ul>\n <h4>Version 1.0.5 - Released on Jan 07, 2016 </h4>\n <ul>\n     <li>Updated: Plugin Framework</li>\n     <li>Fixed: control if file not exist in js procedure</li>\n     <li>Fixed: when watermark is applied in original immages, thumbnail images are generated incorrectly.</li>\n </ul>\n <h4>Version 1.0.4 - Released on Nov 24, 2015 </h4>\n <ul>\n     <li>Fixed: Creation of backup images for new uploaded images</li>\n </ul>\n<h4>Version 1.0.3 - Released on Oct 30, 2015 </h4>\n<ul>\n    <li>Updated: Plugin framework loader</li>\n</ul>\n<h4>Version 1.0.2 - Released: Oct, 23 - 2015</h4>\n<ul>\n    <li>Update: Plugin core framework</li>\n</ul>\n<h4>Version 1.0.1 - Released on Oct 20, 2015</h4>\n<ul>\n    <li>Initial Release</li>\n</ul>\n\n    \";s:7:\"package\";N;s:6:\"plugin\";s:43:\"yith-woocommerce-watermark-premium/init.php\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.3.4\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.3.4.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:7:\"default\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";s:7:\"default\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}}s:55:\"woocommerce-stock-manager/woocommerce-stock-manager.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:39:\"w.org/plugins/woocommerce-stock-manager\";s:4:\"slug\";s:25:\"woocommerce-stock-manager\";s:6:\"plugin\";s:55:\"woocommerce-stock-manager/woocommerce-stock-manager.php\";s:11:\"new_version\";s:5:\"1.2.4\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/woocommerce-stock-manager/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/woocommerce-stock-manager.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:78:\"https://ps.w.org/woocommerce-stock-manager/assets/icon-128x128.png?rev=1140096\";s:2:\"2x\";s:78:\"https://ps.w.org/woocommerce-stock-manager/assets/icon-256x256.png?rev=1140096\";s:7:\"default\";s:78:\"https://ps.w.org/woocommerce-stock-manager/assets/icon-256x256.png?rev=1140096\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:80:\"https://ps.w.org/woocommerce-stock-manager/assets/banner-772x250.png?rev=1140096\";s:7:\"default\";s:80:\"https://ps.w.org/woocommerce-stock-manager/assets/banner-772x250.png?rev=1140096\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"yith-pre-order-for-woocommerce/init.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:44:\"w.org/plugins/yith-pre-order-for-woocommerce\";s:4:\"slug\";s:30:\"yith-pre-order-for-woocommerce\";s:6:\"plugin\";s:39:\"yith-pre-order-for-woocommerce/init.php\";s:11:\"new_version\";s:5:\"1.1.4\";s:3:\"url\";s:61:\"https://wordpress.org/plugins/yith-pre-order-for-woocommerce/\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/plugin/yith-pre-order-for-woocommerce.1.1.4.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:83:\"https://ps.w.org/yith-pre-order-for-woocommerce/assets/icon-128x128.jpg?rev=1542028\";s:0:\"\";s:81:\"https://ps.w.org/yith-pre-order-for-woocommerce/assets/icon-64x64.jpg?rev=1542028\";s:7:\"default\";s:83:\"https://ps.w.org/yith-pre-order-for-woocommerce/assets/icon-128x128.jpg?rev=1542028\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:86:\"https://ps.w.org/yith-pre-order-for-woocommerce/assets/banner-1544x500.jpg?rev=1542028\";s:2:\"1x\";s:85:\"https://ps.w.org/yith-pre-order-for-woocommerce/assets/banner-772x250.jpg?rev=1542028\";s:7:\"default\";s:86:\"https://ps.w.org/yith-pre-order-for-woocommerce/assets/banner-1544x500.jpg?rev=1542028\";}s:11:\"banners_rtl\";a:0:{}}s:40:\"yith-woocommerce-order-tracking/init.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:45:\"w.org/plugins/yith-woocommerce-order-tracking\";s:4:\"slug\";s:31:\"yith-woocommerce-order-tracking\";s:6:\"plugin\";s:40:\"yith-woocommerce-order-tracking/init.php\";s:11:\"new_version\";s:5:\"1.2.1\";s:3:\"url\";s:62:\"https://wordpress.org/plugins/yith-woocommerce-order-tracking/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/yith-woocommerce-order-tracking.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:84:\"https://ps.w.org/yith-woocommerce-order-tracking/assets/icon-128x128.jpg?rev=1461215\";s:0:\"\";s:82:\"https://ps.w.org/yith-woocommerce-order-tracking/assets/icon-64x64.jpg?rev=1461215\";s:7:\"default\";s:84:\"https://ps.w.org/yith-woocommerce-order-tracking/assets/icon-128x128.jpg?rev=1461215\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:87:\"https://ps.w.org/yith-woocommerce-order-tracking/assets/banner-1544x500.jpg?rev=1461215\";s:2:\"1x\";s:86:\"https://ps.w.org/yith-woocommerce-order-tracking/assets/banner-772x250.jpg?rev=1461215\";s:7:\"default\";s:87:\"https://ps.w.org/yith-woocommerce-order-tracking/assets/banner-1544x500.jpg?rev=1461215\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(9318, '_site_transient_timeout_browser_431aebda11d8f5105624c76c8ecb67aa', '1522343513', 'no'),
(9319, '_site_transient_browser_431aebda11d8f5105624c76c8ecb67aa', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"65.0.3325.162\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(9328, '_site_transient_timeout_community-events-9acb16b16893022f9810cd50487092e1', '1521781916', 'no'),
(9329, '_site_transient_community-events-9acb16b16893022f9810cd50487092e1', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:12:\"192.168.10.0\";}s:6:\"events\";a:0:{}}', 'no'),
(9330, '_transient_timeout_feed_5336548cfc49bd1a34a51b2a9fc5fda3', '1521781917', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(9331, '_transient_feed_5336548cfc49bd1a34a51b2a9fc5fda3', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:23:\"Blog – tiếng Việt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://vi.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"\n	Fri, 16 Feb 2018 09:43:53 +0000	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"vi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.0-alpha-42866\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"Chúc mừng năm mới 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://vi.wordpress.org/2018/02/16/chuc-mung-nam-moi-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://vi.wordpress.org/2018/02/16/chuc-mung-nam-moi-2018/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 16 Feb 2018 09:43:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Tin tức\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://vi.wordpress.org/?p=459\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:337:\"Với những ai nói tiếng Việt và là người Việt Nam, Tết Nguyên đán luôn là dịp để tụ họp gia đình, hàn huyên những câu chuyện cũ và tạo ra những kỉ niệm mới. WordPress Việt Nam xin gửi lời chúc mừng năm mới tới những ai đã, đang và tiếp tục sử dụng [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"khoipro\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1012:\"<p><img class=\"aligncenter size-full wp-image-460\" src=\"https://vi.wordpress.org/files/2018/02/tuc-le-nam-moi.jpg\" alt=\"\" width=\"550\" height=\"415\" srcset=\"https://vi.wordpress.org/files/2018/02/tuc-le-nam-moi.jpg 550w, https://vi.wordpress.org/files/2018/02/tuc-le-nam-moi-300x226.jpg 300w\" sizes=\"(max-width: 550px) 100vw, 550px\" /></p>\n<p>Với những ai nói tiếng Việt và là người Việt Nam, Tết Nguyên đán luôn là dịp để tụ họp gia đình, hàn huyên những câu chuyện cũ và tạo ra những kỉ niệm mới.</p>\n<p>WordPress Việt Nam xin gửi lời chúc mừng năm mới tới những ai đã, đang và tiếp tục sử dụng WordPress để mang lại lợi ích cho cộng đồng và xã hội. Chúc mỗi người gặt hái được nhiều thành công trong sự nghiệp, gia đình an khang thịnh vượng và đạt được những điều mình muốn nhé!</p>\n<p>Trân trọng,</p>\n<p><em>Đội ngũ WordPress Việt Nam</em></p>\n<p>&nbsp;</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://vi.wordpress.org/2018/02/16/chuc-mung-nam-moi-2018/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"December 2017 – Saigon WordPress Meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://vi.wordpress.org/2017/12/04/december-2017-saigon-wordpress-meetup/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://vi.wordpress.org/2017/12/04/december-2017-saigon-wordpress-meetup/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 04 Dec 2017 09:11:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"Meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://vi.wordpress.org/?p=439\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:348:\"Mời các bạn tham gia buổi meetup tháng 12/2016 diễn ra tại Sài Gòn dành cho cộng đồng những người yêu WordPress tại Việt Nam. Nội dung chính Đầu tiên chúng ta sẽ cùng nhau nhìn lại một năm thành công nữa của WordPress và sự chuyển mình tích cực của cộng đồng #WP Việt [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"khoipro\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2060:\"<p>Mời các bạn tham gia buổi meetup tháng 12/2016 diễn ra tại Sài Gòn dành cho cộng đồng những người yêu WordPress tại Việt Nam.<span id=\"more-439\"></span></p>\n<h2>Nội dung chính</h2>\n<ul>\n<li>Đầu tiên chúng ta sẽ cùng nhau nhìn lại một năm thành công nữa của WordPress và sự chuyển mình tích cực của cộng đồng #WP Việt Nam trên cả ba miền và chuẩn bị cho năm tiếp theo.</li>\n<li>Tiếp theo chúng ta có Jamie đến từ WC Vendors cùng chúng ta tìm hiểu về những thay đổi đáng chú ý của WooCommerce 3.0, hãy chờ xem những thay đổi này ảnh hưởng tích cực như thế nào đến lợi ích của chúng ta.</li>\n<li>Chủ đề rất đáng chờ đợi đến từ anh Trần Quốc Huy &#8211; Project Manager tại EngineThemes chia sẻ kinh nghiệm để xây dựng theme premium đúng cách.</li>\n</ul>\n<p><strong>Thời gian:</strong> Sài Gòn, 9h – 12h sáng Chủ Nhật ngày 16/12/2017<br />\n<strong>Địa điểm:</strong> Officience Vietnam &#8211; 16A Lê Hồng Phong, Phường 12, Quận 10.<br />\n<em>Xin cảm ơn Officience Vietnam đã luôn đồng hành và hỗ trợ địa điểm cho meetup.</em></p>\n<p>Bạn có thể theo dõi sự kiện qua:</p>\n<ul>\n<li>Meetup: <a href=\"https://www.meetup.com/Saigon-WordPress/events/245631257/\" target=\"_blank\" rel=\"noopener\">https://www.meetup.com/Saigon-WordPress/events/245631257/</a></li>\n<li>Facebook: <a href=\"https://www.facebook.com/events/132171540791890/\" target=\"_blank\" rel=\"noopener\">https://www.facebook.com/events/132171540791890/</a></li>\n</ul>\n<h2>Hướng dẫn địa điểm</h2>\n<p>Vì Officience Vietnam đổi sang địa điểm mới ở Lê Hồng Phong và việc tìm văn phòng hơi khó nên mình xin hướng dẫn để các bạn tìm cho tiện: Các bạn quẹo vô Lê Hồng Phong -&gt; đi qua cổng nhà hàng tiệc cưới Kỳ Hòa -&gt; gởi xe -&gt; đi thẳng vào trong sẽ thấy văn phòng Officience.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://vi.wordpress.org/2017/12/04/december-2017-saigon-wordpress-meetup/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"Hoàn thành bản dịch tiếng Việt của plugin Contact Form 7\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://vi.wordpress.org/2017/11/11/hoan-thanh-ban-dich-tieng-viet-cua-plugin-contact-form-7/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"https://vi.wordpress.org/2017/11/11/hoan-thanh-ban-dich-tieng-viet-cua-plugin-contact-form-7/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 11 Nov 2017 08:24:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Tin tức\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://vi.wordpress.org/?p=414\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:340:\"Với sự đóng góp tích cực của các thành viên trong cộng đồng WordPress Việt Nam, bản dịch tiếng Việt dành cho Contact Form 7, một trong các plugin cung cấp form liên hệ với hơn 5 triệu website sử dụng đã ra mắt vào chiều hôm nay. Tổng quan chung Bản dịch tiếng Việt [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"khoipro\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4732:\"<p><img class=\"aligncenter wp-image-419\" src=\"https://vi.wordpress.org/files/2017/11/contact-form-7-screen.png\" alt=\"\" width=\"550\" height=\"258\" srcset=\"https://vi.wordpress.org/files/2017/11/contact-form-7-screen.png 995w, https://vi.wordpress.org/files/2017/11/contact-form-7-screen-300x141.png 300w, https://vi.wordpress.org/files/2017/11/contact-form-7-screen-768x360.png 768w\" sizes=\"(max-width: 550px) 100vw, 550px\" />Với sự đóng góp tích cực của các thành viên trong cộng đồng WordPress Việt Nam, bản dịch tiếng Việt dành cho <a href=\"https://vi.wordpress.org/plugins/contact-form-7/\" target=\"_blank\" rel=\"noopener\">Contact Form 7</a>, một trong các plugin cung cấp form liên hệ với hơn 5 triệu website sử dụng đã ra mắt vào chiều hôm nay.<span id=\"more-414\"></span></p>\n<h2>Tổng quan chung</h2>\n<p>Bản dịch tiếng Việt dành cho Contact Form 7 cung cấp các khái niệm dễ hiểu, dễ sử dụng bởi bất kì người dùng nào tại Việt Nam. WordPress Việt Nam team xin gửi tới các bạn những hình ảnh đầu tiên của giao diện Việt hoá thân thiện này:</p>\n<figure id=\"attachment_415\" aria-describedby=\"caption-attachment-415\" style=\"width: 178px\" class=\"wp-caption aligncenter\"><img class=\"size-full wp-image-415\" src=\"https://vi.wordpress.org/files/2017/11/contact-form-7-menu-chinh.png\" alt=\"\" width=\"178\" height=\"133\" /><figcaption id=\"caption-attachment-415\" class=\"wp-caption-text\">Menu chính được hiển thị cực kì dễ hiểu</figcaption></figure>\n<p>&nbsp;</p>\n<figure id=\"attachment_416\" aria-describedby=\"caption-attachment-416\" style=\"width: 550px\" class=\"wp-caption aligncenter\"><img class=\"wp-image-416\" src=\"https://vi.wordpress.org/files/2017/11/contact-form-7-main-editor.png\" alt=\"\" width=\"550\" height=\"443\" srcset=\"https://vi.wordpress.org/files/2017/11/contact-form-7-main-editor.png 1007w, https://vi.wordpress.org/files/2017/11/contact-form-7-main-editor-300x242.png 300w, https://vi.wordpress.org/files/2017/11/contact-form-7-main-editor-768x619.png 768w\" sizes=\"(max-width: 550px) 100vw, 550px\" /><figcaption id=\"caption-attachment-416\" class=\"wp-caption-text\">Giao diện và các nút được chú thích cụ thể</figcaption></figure>\n<p>&nbsp;</p>\n<figure id=\"attachment_417\" aria-describedby=\"caption-attachment-417\" style=\"width: 550px\" class=\"wp-caption aligncenter\"><img class=\"wp-image-417\" src=\"https://vi.wordpress.org/files/2017/11/contact-form-7-notice-message.png\" alt=\"\" width=\"550\" height=\"302\" srcset=\"https://vi.wordpress.org/files/2017/11/contact-form-7-notice-message.png 1013w, https://vi.wordpress.org/files/2017/11/contact-form-7-notice-message-300x165.png 300w, https://vi.wordpress.org/files/2017/11/contact-form-7-notice-message-768x422.png 768w\" sizes=\"(max-width: 550px) 100vw, 550px\" /><figcaption id=\"caption-attachment-417\" class=\"wp-caption-text\">Toàn bộ các thông báo hiển thị ngoài website đều đã có sẵn tiếng Việt.</figcaption></figure>\n<p>&nbsp;</p>\n<figure id=\"attachment_418\" aria-describedby=\"caption-attachment-418\" style=\"width: 550px\" class=\"wp-caption aligncenter\"><img class=\"wp-image-418\" src=\"https://vi.wordpress.org/files/2017/11/contact-form-7-screen-helper.png\" alt=\"\" width=\"550\" height=\"201\" srcset=\"https://vi.wordpress.org/files/2017/11/contact-form-7-screen-helper.png 1473w, https://vi.wordpress.org/files/2017/11/contact-form-7-screen-helper-300x109.png 300w, https://vi.wordpress.org/files/2017/11/contact-form-7-screen-helper-768x280.png 768w, https://vi.wordpress.org/files/2017/11/contact-form-7-screen-helper-1024x373.png 1024w\" sizes=\"(max-width: 550px) 100vw, 550px\" /><figcaption id=\"caption-attachment-418\" class=\"wp-caption-text\">Phần Trợ giúp người dùng nay đã dễ hiểu hơn rất nhiều.</figcaption></figure>\n<h2>Phát hành</h2>\n<ul>\n<li>Các website đang sử dụng WordPress tiếng Việt với tính năng tự động nâng cấp gói ngôn ngữ, sẽ được cập nhật trong ngày hôm nay, 11/11/2017.</li>\n<li>Các website khác muốn sử dụng, có thể tải gói ngôn ngữ <a href=\"https://translate.wordpress.org/projects/wp-plugins/contact-form-7/dev/vi/default\" target=\"_blank\" rel=\"noopener\">tại đây</a>.</li>\n</ul>\n<p>Một lần nữa, xin cảm ơn sự đóng góp của các thành viên tích cực <a href=\'https://profiles.wordpress.org/thup90/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>thup90</a> và <a href=\'https://profiles.wordpress.org/khoipro/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>khoipro</a> vì sự ra mắt của phiên bản tiếng Việt hoàn chỉnh dành cho plugin Contact Form 7.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"https://vi.wordpress.org/2017/11/11/hoan-thanh-ban-dich-tieng-viet-cua-plugin-contact-form-7/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"Nâng cấp bảo mật phiên bản WordPress 4.8.3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://vi.wordpress.org/2017/11/01/nang-cap-bao-mat-phien-ban-wordpress-4-8-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"https://vi.wordpress.org/2017/11/01/nang-cap-bao-mat-phien-ban-wordpress-4-8-3/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 01 Nov 2017 02:47:10 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Bản nâng cấp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://vi.wordpress.org/?p=406\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:330:\"Bản vá bảo mật WordPress 4.8.3 đã được phát hành. Chúng tôi xin lưu ý các bạn cần nâng cấp càng nhanh càng tốt để đảm bảo an toàn cho website của mình. Mô tả về lỗi bảo mật WordPress 4.8.2 và các phiên bản cũ hơn Các phiên bản WordPress 4.8.2 và cũ hơn [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"khoipro\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1518:\"<p>Bản vá bảo mật WordPress 4.8.3 đã được phát hành. Chúng tôi xin lưu ý các bạn cần nâng cấp càng nhanh càng tốt để đảm bảo an toàn cho website của mình.<span id=\"more-406\"></span></p>\n<h2>Mô tả về lỗi bảo mật WordPress 4.8.2 và các phiên bản cũ hơn</h2>\n<p>Các phiên bản WordPress 4.8.2 và cũ hơn bị ảnh hưởng bởi lỗi tại <code>$wpdb-&gt;prepare()</code> có thể tạo ra một query (thực thi) không an toàn tiềm ẩn chứa lỗi SQL Injection (SQLi).</p>\n<p>Tuy nhiên, lỗi này không đến từ WordPress core. Bản vá sẽ ngăn chặn việc thực thi các query này trên plugin và giao diện.</p>\n<p>Người phát hiện ra lỗi: <a href=\"https://twitter.com/ircmaxell\">Anthony Ferrara</a>.</p>\n<p>Trong bản nâng cấp WordPress này cũng bao gồm cả nâng cấp function <code>esc_sql</code>, tuy vậy hầu hết sẽ không có ảnh hưởng gì đáng kể tới người dùng và các lập trình viên WordPress.</p>\n<p>Xin cảm ơn các bạn đã tham gia thông báo lỗi trong <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\" target=\"_blank\" rel=\"noopener\">responsible disclosure</a>.</p>\n<h2>Tải WordPress mới nhất 4.8.3</h2>\n<p><a href=\"https://vi.wordpress.org/download/\">Tải về WordPress 4.8.3</a> hoặc truy cập trang quản trị và click vào mục &#8220;Nâng cấp&#8221; để nâng cấp tự động.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://vi.wordpress.org/2017/11/01/nang-cap-bao-mat-phien-ban-wordpress-4-8-3/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"Giới thiệu WordPress 4.9 Beta 1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://vi.wordpress.org/2017/10/06/wordpress-4-9-beta-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://vi.wordpress.org/2017/10/06/wordpress-4-9-beta-1/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 06 Oct 2017 01:13:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Tin tức\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://vi.wordpress.org/?p=376\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:349:\"Vào ngày 05/10/2017, WordPress ra mắt phiên bản 4.9 Beta 1 nhằm mục đích kiểm thử một số tính năng trước khi phát hành chính thức vào giữa tháng 11. Hãy cùng WordPress Việt Nam tìm hiểu xem những điểm gì khác trong phiên bản này nhé. Nâng cấp Tuỳ chỉnh (Customizer) Có lẽ sau [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"khoipro\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4971:\"<p>Vào ngày 05/10/2017, WordPress ra mắt phiên bản 4.9 Beta 1 nhằm mục đích kiểm thử một số tính năng trước khi phát hành chính thức vào giữa tháng 11. Hãy cùng WordPress Việt Nam tìm hiểu xem những điểm gì khác trong phiên bản này nhé.<span id=\"more-376\"></span></p>\n<h2>Nâng cấp Tuỳ chỉnh (Customizer)</h2>\n<p>Có lẽ sau phiên bản phát hành nâng cấp Customize từ đầu năm 2017, rất nhiều lập trình viên vẫn còn khá ngỡ ngàng và chưa tận dụng hết thế mạnh của Customizer. Cũng bởi điều đó, những cập nhật và thêm nhiều tính năng đã được đưa vào.</p>\n<h3>Chức năng Bản nháp và Dự kiến</h3>\n<p><img class=\"aligncenter wp-image-377\" src=\"https://vi.wordpress.org/files/2017/10/Customizer-Publish-panel-full-column-1024x609.jpg\" alt=\"\" width=\"500\" height=\"297\" srcset=\"https://vi.wordpress.org/files/2017/10/Customizer-Publish-panel-full-column-1024x609.jpg 1024w, https://vi.wordpress.org/files/2017/10/Customizer-Publish-panel-full-column-300x178.jpg 300w, https://vi.wordpress.org/files/2017/10/Customizer-Publish-panel-full-column-768x457.jpg 768w, https://vi.wordpress.org/files/2017/10/Customizer-Publish-panel-full-column.jpg 1343w\" sizes=\"(max-width: 500px) 100vw, 500px\" /></p>\n<p>Chức năng này nhằm mục đích chỉnh sửa Customizer, song không công bố ngay lập tức mà dự kiến thời gian (ví dụ ngày mai), hoặc lưu bản nháp cho tới khi chỉnh sửa hoàn tất.</p>\n<p>Ngoài ra, Customize nay còn có thể lưu lại các bản nháp (revisions) tương tự các bài viết thông thường. Khá hữu ích nếu bạn chỉnh sửa Customize dẫn tới website bị hỏng và cần khôi phục lại trạng thái ban đầu.</p>\n<h3>Khởi tạo menu</h3>\n<p>Chức năng này đã nhận được feedback từ nhiều người dùng và thay đổi để ngay trong Customize khi bạn thêm menu sẽ rất nhanh và gọn.</p>\n<h3>Thêm giao diện thông báo, chú ý</h3>\n<p>Các phần thông báo trong quá trình Customize đang mở đã được sắp xếp gọn gàng và có logic hơn.</p>\n<p><img class=\"aligncenter wp-image-380\" src=\"https://vi.wordpress.org/files/2017/10/colors-section-notifications.png\" alt=\"\" width=\"250\" height=\"373\" srcset=\"https://vi.wordpress.org/files/2017/10/colors-section-notifications.png 604w, https://vi.wordpress.org/files/2017/10/colors-section-notifications-201x300.png 201w\" sizes=\"(max-width: 250px) 100vw, 250px\" /></p>\n<p>Khi bạn thực hiện lưu Customize, một giao diện phủ đầy màn hình Customize sẽ hiện ra để người dùng tiện theo dõi.</p>\n<h2>Widgets phong phú và mạnh mẽ hơn!</h2>\n<h3>Text widgets</h3>\n<p>Text Widgets vốn dĩ rất đơn độc khi bạn phải nhập tay dữ liệu mà không có phần soạn thảo. Tuy vây, phiên bản 4.9 Beta 1 cung cấp thêm tuỳ chọn Thêm video, ảnh và cả TinyMCE để sẵn sàng nhập dữ liệu theo kiểu WYSIWYG (tương tự như sửa post/page bình thường).</p>\n<p><img class=\"aligncenter wp-image-378\" src=\"https://vi.wordpress.org/files/2017/10/text-widget-with-media-621x1024.png\" alt=\"\" width=\"250\" height=\"412\" srcset=\"https://vi.wordpress.org/files/2017/10/text-widget-with-media-621x1024.png 621w, https://vi.wordpress.org/files/2017/10/text-widget-with-media-182x300.png 182w, https://vi.wordpress.org/files/2017/10/text-widget-with-media-768x1266.png 768w, https://vi.wordpress.org/files/2017/10/text-widget-with-media.png 892w\" sizes=\"(max-width: 250px) 100vw, 250px\" /></p>\n<p>Shortcode cũng sẽ hoạt động trong Text Widgets.</p>\n<h3>Widget mới: Gallery</h3>\n<p>Trông đơn giản, nhưng sẽ giúp rất nhiều người mới làm quen tận dụng Gallery tốt hơn.</p>\n<p><img class=\"aligncenter wp-image-379\" src=\"https://vi.wordpress.org/files/2017/10/gallery-widget-populated.png\" alt=\"\" width=\"250\" height=\"288\" srcset=\"https://vi.wordpress.org/files/2017/10/gallery-widget-populated.png 810w, https://vi.wordpress.org/files/2017/10/gallery-widget-populated-260x300.png 260w, https://vi.wordpress.org/files/2017/10/gallery-widget-populated-768x886.png 768w\" sizes=\"(max-width: 250px) 100vw, 250px\" /></p>\n<h3>Xác nhận xoá widget</h3>\n<p>Ngay khi bạn xoá widget, sẽ hiện ra 1 thông báo yêu cầu xác nhận giúp tránh nhầm lẫn.</p>\n<h2>Các nâng cấp đáng chú ý khác</h2>\n<p><strong>Tối ưu hoá Menu</strong><br />\nKhi bạn chuyển đổi giao diện, Menu chính sẽ được cập nhật và đồng bộ sang giao diện mới.</p>\n<p><strong>Media Caption</strong> sẽ được set <code>max-width</code> mặc định.</p>\n<p>Rất nhiều tính năng và nâng cấp khác các bạn có thể xem thêm <a href=\"https://wordpress.org/news/2017/10/wordpress-4-9-beta-1/\" target=\"_blank\" rel=\"noopener\">tại đây</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://vi.wordpress.org/2017/10/06/wordpress-4-9-beta-1/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Điểm tin tháng 09/2017\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://vi.wordpress.org/2017/10/05/diem-tin-thang-09-2017/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://vi.wordpress.org/2017/10/05/diem-tin-thang-09-2017/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 05 Oct 2017 00:42:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Tin tức\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://vi.wordpress.org/?p=371\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:365:\"Hãy cùng WordPress Việt Nam điểm qua các tin tức có liên quan đến WordPress trong tháng 9 vừa qua. Câu chuyện sử dụng JavaScript Framework với WordPress Đầu tháng này, Matt Mullenweg đã thông báo rằng WordPress sẽ từ bỏ React như là thư viện JavaScript WordPress Core. Đây là phản ứng được đưa [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"khoipro\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:5975:\"<p>Hãy cùng WordPress Việt Nam điểm qua các tin tức có liên quan đến WordPress trong tháng 9 vừa qua.<span id=\"more-371\"></span></p>\n<h2>Câu chuyện sử dụng JavaScript Framework với WordPress</h2>\n<p>Đầu tháng này, Matt Mullenweg đã thông báo rằng WordPress sẽ từ bỏ React như là thư viện JavaScript WordPress Core. Đây là phản ứng được đưa ra sau quyết định của Facebook về việc giữ bản quyền React khiến việc sử dụng React không còn dễ dàng nữa.</p>\n<p>Một vài ngày sau đó, Facebook đã thay đổi quyết định và cho phép React có thể sử dụng cùng với WordPress. Tuy nhiên, nhóm WordPress Core đang đưa ra các phương án khác nhằm xử lý vấn đề này, bao gồm cả việc thay thế các framework nếu cần mà không ảnh hưởng tới WordPress.</p>\n<p>Đây là một sự cải tiến sẽ khiến cho WordPress trở nên linh hoạt hơn và cũng sẽ bảo vệ nền tảng tạo dựng website lớn nhất thế giới khỏi những thay đổi trong tương lai.</p>\n<p>Bạn có thể tham gia vào cuộc thảo luận bằng JavaScript bằng cách tham gia kênh <a href=\"https://make.wordpress.org/chat/\" rel=\"noopener\" target=\"_blank\">#core-js</a> trong nhóm Làm WordPress Slack và theo blog phát triển WordPress Core.</p>\n<h2>Sáng kiến cộng đồng để tăng tính tương tác trong WordCamp</h2>\n<p>Một thành viên trong cộng đồng WordPress, Ines van Essen, đã bắt đầu một sáng kiến phi lợi nhuận mới nhằm hỗ trợ tài chính cho các thành viên trong cộng đồng tham dự WordCamp. <a href=\"https://donatewc.org/\" rel=\"noopener\" target=\"_blank\">DonateWC</a> đã bắt đầu với chiến dịch tài trợ dành cho người tham gia WordCamp để hỗ trợ chi phí trong quá trình tham gia.</p>\n<p>Mặc dù việc gây quỹ đã bắt đầu, Ines dự định thành lập một tổ chức phi lợi nhuận và sử dụng sự đóng góp từ các nhà tài trợ để giúp mọi người trên khắp thế giới tham dự và phát biểu trong WordCamp.</p>\n<h2>Phát hành phiên bản bảo mật WordPress 4.8.2</h2>\n<p>Vào ngày 19/09/2017 vừa qua, phiên bản WordPress 4.8.2 đã ra mắt. Đây là phiên bản bảo mât với 9 lỗi được sửa trong WordPress để đảm bảo nền tảng hoạt động ổn định và an toàn hơn cho mọi người.</p>\n<h2>Thư viện SWFUpload ngừng sử dụng từ phiên bản WordPress 4.9</h2>\n<p>Theo <a href=\"https://make.wordpress.org/core/2017/09/07/removing-swfupload/\" rel=\"noopener\" target=\"_blank\">thông báo</a> từ nhóm quản lý thư viện Plugin, thư viện SWFUpload (dùng để tải file lên) sẽ ngừng sử dụng trong phiên bản 4.9. Ngoại trừ việc bạn đang sử dụng nó trong các plugin bảo mật, các plugin cần thiết để nâng cấp và thay thế bằng Plupload.</p>\n<h2>Thêm người hỗ trợ plugin</h2>\n<p>Nhóm quản lý thư viện plugin cũng thông báo về việc cho phép tác giả của plugin thêm các tài khoản phục vụ việc hỗ trợ người dùng trên diễn đàn của WordPress. Tuy nhiên, những supporter này chỉ có badge &#8220;Plugin Support&#8221; kèm theo quyền để xoá, đóng và truy cập vào ticket trong diễn đàn WordPress, mà không có quyền truy xuất vào trực tiếp plugin.</p>\n<h2>Phiên bản Editor thử nghiệm mới 1.0.2</h2>\n<p>Sau một vài tuần chậm tiến độ và tranh cãi xoay quanh chuyện bản quyền React, phiên bản Editor mới Gutenberg v1.2 tiếp tục <a href=\"https://make.wordpress.org/core/2017/09/27/whats-new-in-gutenberg-1-2-1/\" rel=\"noopener\" target=\"_blank\">ra mắt</a> với giao diện tốt hơn.</p>\n<h2>WordPress Việt Nam: Giao diện trang chủ mới</h2>\n<p>Thay vì giao diện cũ và không có nhiều thông tin, WordPress Việt Nam trong tuần qua đã cập nhật giao diện, hình ảnh và bổ sung nhiều thông tin hữu ích hơn. Chúng tôi vẫn luôn mong muốn cải tiến để mọi thứ dễ dàng tiếp cận bởi nhiều người dùng hơn. Đừng quên comment với thông tin, hỗ trợ bạn muốn xuất hiện trên vi.wordpress.org nhé!</p>\n<h2>WordPress Việt Nam: Ra mắt fanpage trên Facebook</h2>\n<p>Nhóm hỗ trợ WordPress Việt Nam cũng ra mắt fanpage Facebook tại địa chỉ <a href=\"https://www.facebook.com/wpvnteam\" rel=\"noopener\" target=\"_blank\">facebook.com/wpvnteam</a> hoặc truy cập <a href=\"http://wpvn.team\" rel=\"noopener\" target=\"_blank\">wpvn.team</a>. Tại đây sẽ cập nhật các thông tin mới nhất về sự kiện, hoạt động tại WordPress.</p>\n<h2>Kết quả từ ngày Dịch thuật WordPress</h2>\n<p>Với sự hỗ trợ của cộng đồng, WordPress Việt Nam đã phối hợp tổ chức vào ngày 30/09/2017 vừa qua tại Hà Nội và Sài Gòn. Trong ngày này, nhiều bạn đã cùng tham gia dịch trực tuyến WooCommerce (tăng từ 78% lên 86% số từ đã dịch), phát hành bản dịch Rosetta (giúp hoàn chỉnh 100% tiếng Việt cho trang chủ vi.wordpress.org). Hi vọng rằng phiên bản dịch của WooCommerce hoàn chỉnh sẽ được phát hành trong thời gian sớm nhất.</p>\n<p>Nếu bạn muốn tham gia dịch WooCommerce plugin, hãy <strong><a href=\"https://translate.wordpress.org/projects/wp-plugins/woocommerce/dev/vi/default\" rel=\"noopener\" target=\"_blank\">bắt đầu</a></strong> tại đây nhé!</p>\n<p>Lược dịch từ <a href=\"https://wordpress.org/news/2017/10/the-month-in-wordpress-september-2017/\" rel=\"noopener\" target=\"_blank\">bản tin WordPress tháng 9</a> bởi <a href=\'https://profiles.wordpress.org/khoipro/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>khoipro</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://vi.wordpress.org/2017/10/05/diem-tin-thang-09-2017/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"Ngày Dịch thuật WordPress Toàn cầu lần thứ ba\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://vi.wordpress.org/2017/09/28/ngay-dich-thuat-wordpress-toan-cau-lan-thu-ba/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://vi.wordpress.org/2017/09/28/ngay-dich-thuat-wordpress-toan-cau-lan-thu-ba/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 28 Sep 2017 04:35:36 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Sự kiện\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://vi.wordpress.org/?p=245\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:347:\"Vào ngày 30 tháng 9 năm 2017, WordPress Polyglots Team &#8211; team phụ trách dịch WordPress sang các ngôn ngữ khác &#8211; sẽ tổ chức Ngày Dịch thuật WordPress Toàn cầu lần thứ ba, diễn ra trong suốt 24 giờ đồng hồ dành riêng cho việc dịch thuật và đóng góp vào sức mạnh của [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"khoipro\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:5994:\"<p>Vào ngày 30 tháng 9 năm 2017, WordPress Polyglots Team &#8211; team phụ trách dịch WordPress sang các ngôn ngữ khác &#8211; sẽ tổ chức Ngày Dịch thuật WordPress Toàn cầu lần thứ ba, diễn ra trong suốt 24 giờ đồng hồ dành riêng cho việc dịch thuật và đóng góp vào sức mạnh của WordPress, vốn chiếm 28% website trên toàn cầu. <strong>Tại Việt Nam, sự kiện đã diễn ra tại các địa điểm ở Hà Nội, Nha Trang và Sài Gòn.</strong><span id=\"more-245\"></span></p>\n<p><img class=\"aligncenter size-large wp-image-233\" src=\"https://vi.wordpress.org/files/2017/09/wp-translation-day-1024x411.png\" alt=\"\" width=\"692\" height=\"278\" srcset=\"https://vi.wordpress.org/files/2017/09/wp-translation-day-1024x411.png 1024w, https://vi.wordpress.org/files/2017/09/wp-translation-day-300x120.png 300w, https://vi.wordpress.org/files/2017/09/wp-translation-day-768x308.png 768w\" sizes=\"(max-width: 692px) 100vw, 692px\" /></p>\n<h2>Tại sao cần dịch WordPress?</h2>\n<p>Quá trình dịch sang ngôn ngữ khác cho phép WordPress và tất cả các sản phẩm liên quan đến WordPress (như giao diện và plugin) có sẵn bằng các ngôn ngữ của mỗi nước, do đó cải thiện khả năng tiếp cận và sử dụng của họ và tạo điều kiện cho nhiều người tận dụng nền tảng miễn phí và dịch vụ sẵn có.</p>\n<h2>Sự kiện dành cho cộng đồng dịch thuật WordPress</h2>\n<p>Trong một sự trùng hợp ngẫu nhiên, ngày 30 tháng 9 cũng đã được tuyên bố là &#8220;Ngày dịch quốc tế&#8221; của Liên hợp quốc, để tôn vinh các dịch giả tuyệt vời trên khắp thế giới.</p>\n<p>Sự kiện này sẽ giới thiệu một loạt các bài giới thiệu và chia sẻ bằng nhiều ngôn ngữ (các buổi đào tạo, hướng dẫn, lịch sử ra đời, &#8230;) sẽ được chiếu trực tuyến, bắt đầu từ múi giờ 0 tại Úc và kết thúc ở múi giờ GMT cuối cùng tại Mỹ.</p>\n<p>Trong cùng một khoảng thời gian 24 giờ, những cộng tác viên dịch thuật trên toàn thế giới sẽ tụ họp và gặp gỡ tại các địa điểm sự kiện, tham gia trao đổi về việc dịch thuật (dĩ nhiên là vui vẻ và cởi mở), trong khi những người không thể đến tham dự có thể quan sát từ xa.</p>\n<p>Một bữa tiệc lớn, vui vẻ, thú vị và khai ngộ và sự kết hợp đáng yêu của sự phát triển, cho, học tập và giảng dạy, để trao quyền, và tu luyện, và tỏa sáng.</p>\n<p>Đây quả là cơ hội tốt và hữu ích để tham dự một bữa tiệc lớn trong sự vui vẻ, mở rộng sự phát triển của WordPress.</p>\n<h2>Những sự kiện đã diễn ra trước đây</h2>\n<p>Dưới đây là một số thống kê thú vị về hai sự kiện đầu tiên đã diễn ra:</p>\n<p><strong>Ngày Dịch thuật WordPress Toàn cầu lần thứ nhất</strong></p>\n<ul>\n<li>448 người dịch tham dự trên toàn thế giới</li>\n<li>50 sự kiện được tổ chức</li>\n<li>54 địa điểm</li>\n<li>40350 chuỗi dịch mới trong 597 dự án</li>\n</ul>\n<p><strong>Ngày Dịch thuật WordPress Toàn cầu lần thứ hai</strong></p>\n<ul>\n<li>780 người dịch tham dự trên toàn thế giới</li>\n<li>67 sự kiện được tổ chức</li>\n<li>133 địa điểm</li>\n<li>60426 chuỗi dịch trong 590 dự án</li>\n</ul>\n<h2>Tại Việt Nam, bạn cũng có thể tham gia!!!</h2>\n<p>Đừng quên tham gia các sự kiện sẽ diễn ra trong ngày <strong>Thứ Bảy, 30/09/2017</strong> tại các địa điểm sau nhé:</p>\n<p><strong>Hà Nội</strong><br />\nTrung tâm Đào tạo SEO VietMoz &#8211; Tầng 2, Số 18 ngõ 11 Thái Hà<br />\nTừ 9 đến 11h</p>\n<p><img class=\"aligncenter wp-image-361\" src=\"https://vi.wordpress.org/files/2017/09/wp-global-translation-day-hanoi.jpg\" alt=\"\" width=\"690\" height=\"518\" srcset=\"https://vi.wordpress.org/files/2017/09/wp-global-translation-day-hanoi.jpg 960w, https://vi.wordpress.org/files/2017/09/wp-global-translation-day-hanoi-300x225.jpg 300w, https://vi.wordpress.org/files/2017/09/wp-global-translation-day-hanoi-768x576.jpg 768w, https://vi.wordpress.org/files/2017/09/wp-global-translation-day-hanoi-440x330.jpg 440w\" sizes=\"(max-width: 690px) 100vw, 690px\" /></p>\n<p><strong>Sài Gòn</strong> &#8211; xem trên <a href=\"https://www.facebook.com/events/917193078437572/\" target=\"_blank\" rel=\"noopener\">Facebook event</a> hoặc <a href=\"https://www.meetup.com/Saigon-WordPress/events/243292079/\" target=\"_blank\" rel=\"noopener\">Meetup</a><br />\nOfficience Vietnam &#8211; 16A Lê Hồng Phong, Phường 12, Quận 10<br />\nTừ 9h đến 12h</p>\n<p><img class=\"aligncenter size-large wp-image-362\" src=\"https://vi.wordpress.org/files/2017/09/wp-global-translation-day-saigon-1024x768.jpg\" alt=\"\" width=\"692\" height=\"519\" srcset=\"https://vi.wordpress.org/files/2017/09/wp-global-translation-day-saigon-1024x768.jpg 1024w, https://vi.wordpress.org/files/2017/09/wp-global-translation-day-saigon-300x225.jpg 300w, https://vi.wordpress.org/files/2017/09/wp-global-translation-day-saigon-768x576.jpg 768w, https://vi.wordpress.org/files/2017/09/wp-global-translation-day-saigon-440x330.jpg 440w\" sizes=\"(max-width: 692px) 100vw, 692px\" /></p>\n<p><strong>Nha Trang</strong> &#8211; xem trên <a href=\"https://www.meetup.com/Nha-Trang-WordPress/events/243163880/\" target=\"_blank\" rel=\"noopener\">Meetup</a><br />\nTrường Đại Học Thông Tin Liên Lạc &#8211; 101 Mai Xuân Thưởng, Nha Trang<br />\nTừ 9h sáng đến 11h</p>\n<p>Lược dịch: <a href=\'https://profiles.wordpress.org/khoipro/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>khoipro</a> từ <a href=\"https://wordpress.org/news/2017/09/global-wordpress-translation-day-3/\">wp.org</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"https://vi.wordpress.org/2017/09/28/ngay-dich-thuat-wordpress-toan-cau-lan-thu-ba/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"Tháng qua trong WordPress: Tháng 8 – 2017\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://vi.wordpress.org/2017/09/13/thang-qua-trong-wordpress-thang-8/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://vi.wordpress.org/2017/09/13/thang-qua-trong-wordpress-thang-8/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 13 Sep 2017 05:09:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Tin tức\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://vi.wordpress.org/?p=222\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:347:\"Trong khi chưa có sự kiện lớn trong cộng đồng WordPress vào tháng vừa qua,việc phát triển một tương lai bền vững cho WordPress đã được quan tâm hơn . Đọc tiếp để tìm hiểu thêm về điều này cũng như các tin tức đáng chú ý khác trong tháng 8 vừa qua. WordPress Foundation [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Dat Hoang\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:7152:\"<p>Trong khi chưa có sự kiện lớn trong cộng đồng WordPress vào tháng vừa qua,việc phát triển một tương lai bền vững cho WordPress đã được quan tâm hơn . Đọc tiếp để tìm hiểu thêm về điều này cũng như các tin tức đáng chú ý khác trong tháng 8 vừa qua.<span id=\"more-222\"></span></p>\n<h2>WordPress Foundation bắt đầu chương trình Đào tạo Mã nguồn mở Toàn Cầu</h2>\n<p>WordPress Foundation là một tổ chức phi lợi nhuận có nhiệm vụ tổ chức các sự kiện mang tính giáo dục và hỗ trợ cho các hackathon, hỗ trợ cho thế giới web mở, và nâng cao sự đa dạng trong cộng đồng mã nguồn mở toàn cầu.</p>\n<p>Để đạt được các mục tiêu này, tổ chức này cung cấp sự hỗ trợ cho các cộng đồng muốn tổ chức các buổi thực hành đào tạo về mã nguồn mở. Rất nhiều cộng đồng đã nộp đơn để tham gia sáng kiến này, và WordPress Foundation sẽ chọn ra hai cộng đồng trong các tuần sắp tới.</p>\n<h2>Những bước tiếp theo trong việc tập trung phát triển PHP của WordPress Core</h2>\n<p>Sau khi đẩy mạnh sự tập trung vào sự phát triển PHP của WordPress core trong tháng trước, nhiều sáng kiến mới đã được đưa ra và thực thi. Sáng kiến đầu tiên trong những sáng kiến này là mở một trang mới trên WordPress.org để giải thích cho người dùng các lợi ích của việc nâng cấp PHP. Hiện tại trang vẫn đang trong quá trình phát triển, <a href=\"https://github.com/WordPress/servehappy\" target=\"_blank\" rel=\"noopener\">bạn có thể theo dõi và đóng góp trên GitHub</a>.</p>\n<p>Cùng với việc này, các nhà phát triển plugin đã có thể đặt ra <a href=\"https://make.wordpress.org/plugins/2017/08/29/minimum-php-version-requirement/\">yêu cầu về phiên bản tối thiểu của PHP cho các plugin</a> của họ. Phiên bản này sẽ được hiển thị trên trang <a href=\"https://vi.wordpress.org/plugins/\">Thư mục Plugin</a>, nhưng vẫn chưa phải điều kiện bắt buộc cho việc người dùng cài đặt plugin.</p>\n<p>Đổi mới tiếp theo là làm cho yêu cầu về phiên bản PHP tối thiểu trở thành bắt buộc, như vậy plugin chỉ chạy khi máy chủ đáp ứng được yêu cầu. Bạn có thể hỗ trợ công việc này bằng cách đóng góp ý kiến của bạn hoặc tham gia đóng góp <a href=\"https://core.trac.wordpress.org/ticket/40934\">ở ticket này</a>.</p>\n<p>Như mọi khi, các cuộc thảo luận xung quanh sự thực hiện của PHP trong WordPress core đang được diễn ra trong kênh #core-php trong <a href=\"https://make.wordpress.org/chat/\">nhóm Slack</a>.<br />\n<img class=\"aligncenter wp-image-234 size-full\" src=\"https://vi.wordpress.org/files/2017/09/wp-gutenberg-preview.png\" alt=\"\" width=\"640\" height=\"260\" srcset=\"https://vi.wordpress.org/files/2017/09/wp-gutenberg-preview.png 640w, https://vi.wordpress.org/files/2017/09/wp-gutenberg-preview-300x122.png 300w\" sizes=\"(max-width: 640px) 100vw, 640px\" /></p>\n<h2>Tiếp tục phát triển trình soạn thảo mới</h2>\n<p>Trong vài tháng nay, đội core vẫn đang làm việc trên Gutenberg, trình soạn thảo mới cho WordPress core. Trong khi Gutenberg vẫn đang được phát triển và vẫn còn phải tốn nhiều thời gian trước khi sẵn sàng, nhiều cải tiến đã được thêm vào. Thực tế, <a href=\"https://make.wordpress.org/core/2017/08/29/whats-new-in-gutenberg-august-29/\">v1.0.0 của Gutenberg</a> đã được phát hành trong tuần này.</p>\n<p>Trình soạn thảo mới đã có thể được tải về <a href=\"https://make.wordpress.org/test/handbook/call-for-testing/gutenberg-testing/\">dùng thử như một plugin</a> và <a href=\"https://make.wordpress.org/core/2017/08/11/revised-suggested-roadmap-for-gutenberg-and-customization/\">kế hoạch đã được đề ra</a> là sẽ nhập chung trình soạn thảo này vào core vào đầu năm 2018. Bạn có thể tham gia vào việc phát triển Gutenberg bằng cách tham gia kênh #core-editor trong <a href=\"https://make.wordpress.org/chat/\">nhóm Slack</a> và theo dõi <a href=\"https://make.wordpress.org/core/\">blog phát triển của nhóm WordPress Core</a>.</p>\n<h2>Đọc thêm:</h2>\n<ul>\n<li>Trong chủ đề Gutenberg, <a href=\"https://ma.tt/2017/08/we-called-it-gutenberg-for-a-reason/\" target=\"_blank\" rel=\"noopener\">Matt Mullenweg</a> đã có một bài viết nhìn nhận các vấn đề mà cộng đồng đã phản ánh về công cụ soạn thảo mới.</li>\n<li>Một trào lưu mới đã được bắt đầu trong cộng đồng WordPress Ấn Độ tên là <a href=\"http://hookrefineandtinker.com/2017/08/jaiwp-an-alternative-project-to-wordcamp-india/\" target=\"_blank\" rel=\"noopener\">JaiWP</a> &#8212; những nhà tổ chức đang tìm kiếm sự tập hợp và động viên các cộng đồng địa phương trong nước.</li>\n<li><a href=\"https://richtabor.com/merlin-wp/\">Merlin WP</a> là một plugin mới cung cấp cho các nhà phát triển giao diện một giải pháp dễ dàng để chào đón người dùng mới của họ.</li>\n<li>Ryan McCue đăng <a href=\"https://make.wordpress.org/core/2017/08/23/rest-api-roadmap/\">một kế hoạch tham vọng</a> cho tương lai của WordPress Rest API, tuy vậy vẫn cần nhiều đóng góp trong cộng đồng để đạt tới mục tiêu này.</li>\n<li>Muốn biết thêm về những gì bạn có thể trông chờ từ phiên bản chính tiếp theo của WordPress? <a href=\"https://make.wordpress.org/core/2017/08/11/wordpress-4-9-goals/\">Đây là kế hoạch</a> mà đội core đang đề ra cho phiên bản 4.9.</li>\n<li>Để làm giảm khó khăn mà Trac đem đến cho các nhà đóng góp WordPress Core, Ryan McCue đã tạo một nền tảng thay thế mang tên <a href=\"https://github.com/rmccue/not-trac\" target=\"_blank\" rel=\"noopener\">Not Trac</a>.</li>\n<li><a href=\"https://make.wordpress.org/cli/2017/08/08/version-1-3-0-released/\">WP-CLI phiên bản v1.3.0</a> đã được phát hành đầu tháng này, thêm rất nhiều tính năng mới vào công cụ tiện lợi này.</li>\n</ul>\n<hr />\n<p><a href=\'https://profiles.wordpress.org/thup90/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>thup90</a> dịch.<br />\n<a href=\'https://profiles.wordpress.org/htdat/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>htdat</a>, <a href=\'https://profiles.wordpress.org/khoipro/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>khoipro</a>, <a href=\'https://profiles.wordpress.org/nguyenvanduocit/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>nguyenvanduocit</a> chỉnh sửa.<br />\nBài viết gốc được đăng ở <a href=\"https://wordpress.org/news/2017/09/the-month-in-wordpress-august-2017/\">The Month in WordPress: August 2017</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://vi.wordpress.org/2017/09/13/thang-qua-trong-wordpress-thang-8/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"Tháng qua trong WordPress: tháng 7 – 2017\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://vi.wordpress.org/2017/08/18/thang-qua-trong-wordpress-thang-7-2017/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"https://vi.wordpress.org/2017/08/18/thang-qua-trong-wordpress-thang-7-2017/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 18 Aug 2017 15:22:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Tin tức\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://vi.wordpress.org/?p=213\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:338:\"Sau một tháng 6 đặc biệt bận rộn, mọi thứ đã ổn hơn trong thế giới WordPress — sự ra mắt của WordPress 4.8 diễn ra rất thuận lợi, cho phép đội Core hình thành nên một số cơ sở hạ tầng cộng đồng xung quanh việc phát triển. Đọc tiếp để biết thêm các [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Dat Hoang\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:7345:\"<p>Sau một <a href=\"https://vi.wordpress.org/2017/08/14/thang-qua-trong-wordpress-thang-6-2017/\">tháng 6</a> đặc biệt bận rộn, mọi thứ đã ổn hơn trong thế giới WordPress — sự ra mắt của WordPress 4.8 diễn ra rất thuận lợi, cho phép đội Core hình thành nên một số cơ sở hạ tầng cộng đồng xung quanh việc phát triển. Đọc tiếp để biết thêm các tin thú vị trong thế giới WordPress trong tháng 7.<span id=\"more-213\"></span></p>\n<h2>Họp mặt mỗi tuần cho những người đóng góp core mới</h2>\n<p>Hướng dẫn những người đóng góp mới vẫn luôn là vấn đề nhức nhối cho hầu hết các team Trong khi các team đều nhiệt tình chào đón các contributor, đôi khi rất khó cho những người mới có thể tìm được cách tham gia.</p>\n<p>Tháng này, đội Core đã thực hiện một vài sáng kiến mới tuyệt vời: <a href=\"https://make.wordpress.org/core/2017/06/30/announcing-a-weekly-new-contributors-meeting/\">họp mặt mỗi tuần dành cho những người đóng góp mới</a> như là một cách để khuyến khích sự tham gia và tạo ra những đóng góp mới mẻ. Những cuộc họp không chỉ chú trọng vào các lỗi (bug) phù hợp cho những người đóng góp lần đầu, nó còn tạo không gian cho những người đóng góp giàu kinh nghiệm giúp đỡ những cá nhân còn mới trong việc phát triển WordPress core.</p>\n<p>Cuộc họp được tổ chức Thứ Tư hàng tuần vào 19:00 UTC trong kênh #core trong <a href=\"https://make.wordpress.org/chat/\">nhóm Slack Making WordPress</a>.</p>\n<h2>Tăng cường tập trung vào các PHP practices trong WordPress core</h2>\n<p>Nhằm giúp mọi người cùng nhau phát triển WordPress core, một kênh mới trong <a href=\"https://make.wordpress.org/chat/\">nhóm Slack Making WordPress</a> tên là #core-php được thiết kế để tập trung vào việc phát triển PHP trong dự án.</p>\n<p>Cùng với sự tập trung nâng cao vào PHP, một <a href=\"https://make.wordpress.org/core/2017/07/06/announcement-for-weekly-php-meetings/\">cuộc họp hàng tuần mới đang được tổ chức</a> vào mỗi Thứ Hai vào 18:00 UTC trong #core-php để nâng cao kỹ năng PHP trong WordPress core.</p>\n<h2>Tăng mạnh số lượng các meetup</h2>\n<p>Widget sự kiện trong bảng điều khiển trong WordPress 4.8 hiển thị các sự kiện WordPress xung quanh sắp diễn ra cho người dùng đã đăng nhập. Những sự kiện được đăng trong widget này được lấy từ <a href=\"https://www.meetup.com/pro/wordpress/\">chương trình chương mục gặp mặt</a>, cũng như từ <a href=\"https://central.wordcamp.org/schedule/\">Lịch WordCamp</a>.</p>\n<p>Widget này cung cấp khả năng hiển thị lớn hơn cho các sự kiện WordPress chính thức, và khuyến khích sự tham gia của cộng đồng trong những sự kiện này. Có thể khẳng định rằng widget đã đạt được mục đích một cách đáng khâm phục — kể từ khi WordPress 4.8 được phát hành khoảng hơn một tháng trước, 31 meetup mới đã được hình thành với 15.647 thành viên mới xuyên suốt cả chương trình. Chúng ta có thể so sánh với 19 meetup mới và chỉ 7.071 thành viên mới trong cùng một thời điểm năm ngoái.</p>\n<p>Bạn có thể tìm thấy một meetup xung quanh để tham gia <a href=\"https://www.meetup.com/pro/wordpress/\">trên meetup.com</a>, và nếu bạn muốn tham gia tổ chức sự kiện cho cộng đồng của bạn, bạn có thể xem thêm về chương trình này <a href=\"https://make.wordpress.org/community/meetups/\">trên trang Đội Cộng đồng</a> hoặc bằng cách tham gia kênh #community-events trên <a href=\"https://make.wordpress.org/chat/\">nhóm Slack Making WordPress</a>.</p>\n<h2>WordPress 4.8.1 sẽ được ra mắt sớm</h2>\n<p>Bản bảo trì đầu tiên của WordPress 4.8 sẽ được phát hành vào tuần tới, sau khi 4.8 đã được phát hành hơn một tháng. Bản ra mắt này sửa một vài lỗi quan trọng trong WordPress core và hầu hết các người dùng sẽ thấy trang web của họ tự động cập nhật lên bản này.</p>\n<p>Nếu bạn muốn giúp đỡ bằng cách dùng thử phiên bản này trước khi nó phát hành, bạn có thể theo dõi <a href=\"https://make.wordpress.org/core/handbook/testing/beta/\">hướng dẫn thử nghiệm bản beta</a> cho WordPress core. Để đóng góp trong việc xây dựng WordPress core, hãy tham gia kênh #core trong <a href=\"https://make.wordpress.org/chat/\">nhóm Slack Making WordPress</a>, và theo dõi <a href=\"https://make.wordpress.org/core/\">blog của đội Core</a>.</p>\n<h2>Đọc thêm:</h2>\n<ul>\n<li>Các ứng dụng WordPress trên di động đã được cập nhật với <a href=\"https://en.blog.wordpress.com/2017/07/24/a-brand-new-editor-for-the-wordpress-mobile-apps/\">công cụ chỉnh sửa text mới</a>.</li>\n<li>Để khuyến khích các người dùng WordPress nâng cấp phiên bản PHP của họ, hai tính năng đã được đề xuất &#8211; một <a href=\"https://core.trac.wordpress.org/ticket/41191\">để cung cấp thông báo đến người dùng</a> và một để <a href=\"https://core.trac.wordpress.org/ticket/40934\">cho phép xuất hiện các yêu cầu phiên bản PHP được xác định bởi plugin và theme</a>.</li>\n<li>John Maeda viết <a href=\"https://make.wordpress.org/design/2017/07/14/whywordpress2/\">một bài viết tuyệt vời</a> về sự tự do mà WordPress mang lại.</li>\n<li>Gutenberg, công cụ chỉnh sửa mới cho WordPress, vẫn <a href=\"https://make.wordpress.org/core/2017/07/28/whats-new-in-gutenberg-28th-july/\">trong quá trình tiếp tục phát triển</a> — mọi người đều được mời <a href=\"https://make.wordpress.org/test/handbook/call-for-testing/gutenberg-testing/\">dùng thử</a>.</li>\n<li>Đội Meta WordPress đang bắt đầu <a href=\"https://make.wordpress.org/meta/2017/07/26/experiment-wordcamp-org-bug-scrubs/\">một sáng kiến mới</a> đưa cộng đồng đến với nhau để cùng tập trung sửa lỗi xuyên suốt mạng lưới WordCamp.org.</li>\n<li>WordCamp US đang <a href=\"https://make.wordpress.org/meta/2017/07/26/experiment-wordcamp-org-bug-scrubs/\">kêu gọi người tham gia tình nguyện</a>.</li>\n</ul>\n<p>Nếu bạn có câu chuyện mà chúng tôi nên đưa vào trong bài viết <em>&#8220;Tháng qua trong WordPress”</em> tiếp theo, hãy <a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\">gửi lên đây</a>.</p>\n<hr />\n<ul>\n<li><a href=\'https://profiles.wordpress.org/thup90/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>thup90</a> dịch và <a href=\'https://profiles.wordpress.org/htdat/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>htdat</a> chỉnh sửa.</li>\n<li>Bài viết gốc được đăng ở <a href=\"https://wordpress.org/news/2017/07/the-month-in-wordpress-june-2017/\">The Month in WordPress: June 2017</a>.</li>\n</ul>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://vi.wordpress.org/2017/08/18/thang-qua-trong-wordpress-thang-7-2017/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"Tháng qua trong WordPress: Tháng 6 – 2017\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://vi.wordpress.org/2017/08/14/thang-qua-trong-wordpress-thang-6-2017/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"https://vi.wordpress.org/2017/08/14/thang-qua-trong-wordpress-thang-6-2017/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 14 Aug 2017 05:57:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Tin tức\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://vi.wordpress.org/?p=208\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:328:\"Chúng tôi đã bắt đầu một tính năng thông dụng trên blog này hôm nay. Chúng tôi muốn cập nhật mọi người về các vấn đề xung quanh dự án mã nguồn mở WordPress và nêu ra các điểm chủ yếu các bạn có thể tham gia đóng góp, nên chúng tôi sẽ đăng một [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Dat Hoang\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:11438:\"<p>Chúng tôi đã bắt đầu một tính năng thông dụng trên blog này hôm nay. Chúng tôi muốn cập nhật mọi người về các vấn đề xung quanh dự án mã nguồn mở WordPress và nêu ra các điểm chủ yếu các bạn có thể tham gia đóng góp, nên chúng tôi sẽ đăng một tóm tắt tất cả những tin chính về WordPress vào mỗi cuối tháng.<span id=\"more-208\"></span></p>\n<p>Bên cạnh các tin chung khác, tháng 6 có ba sự kiện lớn là sự ra mắt bản WordPress 4.8, WordCamp Europe 2017, và Hội nghị Thượng đỉnh Cộng đồng WordPress. Đọc tiếp để biết thêm về những điều này và những câu chuyện hấp dẫn khác nữa xung quanh thế giới WordPress.</p>\n<h2>WordPress 4.8</h2>\n<p>Vào ngày 8 tháng 6, một tuần trước khi Hội nghị Thượng đỉnh Cộng đồng và WordCamp Châu Âu, <a href=\"https://wordpress.org/news/2017/06/evans/\">WordPress 4.8 được ra mắt</a>. Bạn có thể đọc <a href=\"https://make.wordpress.org/core/2017/05/26/wordpress-4-8-field-guide/\">Hướng dẫn Thay đổi </a>để biết chi tiết về tất cả các tính năng của phiên bản này (widget Tin tức và Sự kiện trong bảng điều khiển là một trong những trọng điểm lớn nhất).</p>\n<p>Hầu hết ai cũng đều tự động cập nhật phiên bản, hoặc công ty hosting tự cập nhật cho họ. Phần còn lại, cập nhật đều suôn sẻ mà chưa có báo cáo lỗi lớn gì.</p>\n<p>Phiên bản WordPress này có sự đóng góp từ 346 cá nhân; bạn có thể tìm thấy tên họ trong <a href=\"https://wordpress.org/news/2017/06/evans/\">bài viết công bố</a>. Để đóng góp xây dựng WordPress core, hãy tham gia vào kênh #core trong <a href=\"https://make.wordpress.org/chat/\">nhóm Slack Tạo nên WordPress</a>, và theo dõi <a href=\"https://make.wordpress.org/core/\">blog đội Core</a>.</p>\n<h2>WordCamp Châu Âu 2017</h2>\n<p><a href=\"https://2017.europe.wordcamp.org\">WordCamp Châu Âu 2017</a> được tổ chức ở Paris vào ngày 15 -17 tháng 6. Sự kiện bắt đầu với một Ngày Người Đóng góp, nối tiếp bởi hai ngày thuyết trình và sinh hoạt cộng đồng. Các bài thuyết trình được truyền trực tiếp, nhưng bạn vẫn có thể xem tất cả các bản ghi lại trên<a href=\"http://wordpress.tv/event/wordcamp-europe-2017/\"> WordPress.tv</a>. Các nhà tổ chức còn công bố <a href=\"https://2017.europe.wordcamp.org/2017/06/30/wordcamp-europe-2017-in-paris-its-a-wrap/\">bế mạc sự kiện</a>.</p>\n<p>WordCamp Châu Âu tồn tại để tụ hợp cộng đồng WordPress từ khắp các lục địa, cũng như để truyền cảm hứng cho các cộng đồng địa phương khắp nơi tổ chức sự kiện riêng của họ — vì điều đó, sự kiện là một thắng lợi lớn, và là nguyên nhân các nhóm họp mặt đã xuất hiện trong các tuần qua sau WordCamp Châu Âu.</p>\n<p>Công việc mà những người tham gia Ngày Người Đóng góp đã đạt được là khác biệt và đáng giá, bao gồm tất cả các phương diện của dự án WordPress — xem qua các <a href=\"https://make.wordpress.org\">blog về khâu tổ chức</a> để đọc các cập nhật từ mỗi đội.</p>\n<p>Cuối cùng, chúng tôi cũng biết được qua sự kiện là <a href=\"https://2017.europe.wordcamp.org/2017/06/17/belgrade-serbia-to-host-wordcamp-europe-2018/\">WordCamp Châu Âu 2018 sẽ được tổ chức ở Belgrade, Serbia</a>, để nối tiếp truyền thống mở rộng địa điểm và cộng đồng xuyên suốt lục địa.</p>\n<h2>Hội nghị Thượng đỉnh Cộng đồng WordPress</h2>\n<p>Hội nghị Thượng đỉnh Cộng đồng WordPress lần thứ tư diễn ra trong vòng hai ngày nối tiếp WordCamp Châu Âu 2017. Sự kiện này là một vô hội nghị chỉ dành cho khách mời mà mọi người từ cộng đồng WordPress tụ họp để thảo luận về các vấn đề khó khăn trong cộng đồng, và lên kế hoạch cho năm tới trong mỗi đội đóng góp.</p>\n<p>Hội nghị Thượng đỉnh được thiết kế làm nơi an toàn cho tất cả các người tham dự, các ghi chú từ mỗi cuộc thảo luận trong quá trình được làm ẩn danh trước khi công bố lên<a href=\"https://make.wordpress.org/summit/\"> blog Hội nghị Thượng đỉnh </a>(chờ nhé &#8211; chúng sẽ xuất hiện trong vòng vài tuần nữa).</p>\n<p>Bạn có thể thấy một danh sách cuối cùng các chủ đề được đề nghị tới sự kiện <a href=\"https://make.wordpress.org/summit/2017/06/10/community-summit-2017-final-list-of-topic/\">ở đây</a> (mặc dù có một vài đã được thêm vào trong vòng hai ngày Hội nghị diễn ra).</p>\n<h2>Tiếp tục thúc đẩy nhanh chóng tiếp thị WordPress</h2>\n<p>Là một phần của sự thúc đẩy toàn cầu hoá trong tiếp thị cho WordPress (như trong <a href=\"https://wordpress.tv/2016/12/07/matt-mullenweg-state-of-the-word-2016/\">State of Word vào năm 2016</a> của Matt Mullenweg), đội Tiếp thị đã đưa ra hai trọng điểm để lấy thêm thông tin về người dùng WordPress và thông tin đó có thể hình thành tầm nhìn và nỗ lực truyền đạt thông tin của chúng ta.</p>\n<p><a href=\"https://make.wordpress.org/marketing/2017/06/15/wordpress-case-studies-and-usage-survey/\">Đội đang tìm các case study về WordPress</a> và đang hỏi các người dùng, công ty, và người làm tự do làm một bài khảo sát sử dụng WordPress. Điều này sẽ có lợi lâu dài cho việc hình thành nên một cơ sở tiếp thị cho WordPress như một nền tảng và một cộng đồng — và nhiều người trong cộng đồng đang mong chờ điều này phát triển sâu hơn.</p>\n<p>Để đóng góp vào đội Tiếp thị WordPress, bạn có thể ghé thăm <a href=\"https://make.wordpress.org/marketing/\">blog của đội</a>.</p>\n<h2>Ra mắt bản dùng thử công cụ chỉnh sửa Gutenberg mới</h2>\n<p>Đã được một thời gian rồi, đội Core đã làm việc hăng say để cho ra một công cụ chỉnh sửa mới tinh cho WordPress — dự án này gọi là “Gutenberg”. Mục tiêu chính của dự án là để thay thế công cụ chỉnh sửa TinyMCE đã có, nhưng bây giờ nó đang trong thời gian thử nghiệm và cho phép thử nghiệm công khai — <a href=\"https://wordpress.org/plugins/gutenberg/\">bạn có thể tải nó về như một plugin ở đây</a> và cài đặt nó lên bất kỳ trang WordPress nào.</p>\n<p>Tính năng này vẫn trong giai đoạn thử nghiệm, nên chúng tôi không khuyến khích bạn sử dụng nó trên một trang web chính thức. Nếu bạn dùng thử, bạn sẽ thấy nó là một trải nghiệm hoàn toàn khác với những gì bạn đã quen trong WordPress. Nó là một công cụ được sắp xếp hợp lý hơn, và có hướng “clean” cho một trải nghiệm công cụ chỉnh sửa hơn những gì chúng ta có từ trước, và là một cái gì đó nhiều người vui mừng. Matt Mullenweg đã thảo luận về mục đích chi tiết của Gutenberg thông qua <a href=\"https://wordpress.tv/2017/07/01/interview-and-qanda-with-matt-mullenweg/\">buổi hỏi đáp của anh ấy ở WordCamp Châu Âu</a>.</p>\n<p>Đã có một vài nhận xét từ  <a href=\"https://kinsta.com/blog/gutenberg-wordpress-editor/\">Brian Jackson từ Kinsta</a>, <a href=\"https://daily.jorb.in/2017/06/random-thoughts-on-gutenberg/\">Aaron Jorbin</a>, và <a href=\"https://www.mattcromwell.com/gutenberg-first-impressions/\">Matt Cromwell</a> (và những người khác). Hãy chú ý rằng dự án đang tiến hoá liên tục trong giai đoạn này; khi cuối cùng nó có thể được liệt vào WordPress core (có thể là bản v5.0), nó có thể nhìn rất khác so với phiên bản bây giờ — đó chính là lý do vì sao giai đoạn beta và kiểm thử người dùng là rất quan trọng.</p>\n<p>Để đóng góp vào việc hình thành tương lai cho Gutenberg, <a href=\"https://make.wordpress.org/test/handbook/call-for-testing/gutenberg-testing/\">hãy dùng thử nó</a>, và tham gia vào kênh #core-editor của <a href=\"https://make.wordpress.org/chat/\">nhóm Slack Tạo nên WordPress</a>. Bạn cũng có thể ghé thăm <a href=\"https://github.com/WordPress/gutenberg\">kho Github của dự án này</a> để báo cáo lỗi và đóng góp vào nền tảng mã.</p>\n<h2>Đọc thêm:</h2>\n<ul>\n<li>Bridget Willard <a href=\"https://make.wordpress.org/community/2017/06/21/proposed-wordcamp-editorial-calendar/\">gửi lên lịch biên tập</a> giúp các nhà tổ chức WordCamp đăng nội dung cho sự kiện của họ.</li>\n<li>Một kiểu WordCamp theo chủ đề mới, <a href=\"https://2017-denver.journalist.wordcamp.org\">WordCamp cho các Nhà xuất bản ở Denver</a>, đã mở bán vé.</li>\n<li>Ứng dụng WordPress trên iOS đã được cập nhật với <a href=\"https://en.blog.wordpress.com/2017/06/21/an-all-new-media-library-for-the-wordpress-ios-app/\">một thư viện media mới</a> tháng này.</li>\n<li>Có vẻ như Underscores, theme khởi đầu nổi tiếng của WordPress, <a href=\"https://themeshaper.com/2017/06/26/the-future-of-underscores-and-a-new-committer/\">có một tương lai tươi sáng</a>, với tầm nhìn đổi mới và người bảo trợ mới.</li>\n<li>Người luôn truyền cảm hứng Tom McFarlin <a href=\"https://tommcfarlin.com/simple-autoloader-for-wordpress\">đã công bố một công cụ tự tải đơn giản thật sự hữu dụng cho WordPress</a>.</li>\n<li>Sau cuộc trao đổi ngắn trên Twitter về sự khác biệt giữa WordPress.org, WordPress.com, và Jetpack, <a href=\"https://helen.wordpress.com/2017/06/21/restaurant-vs-meal-kit-vs-grocery-shopping-or-wordpress-com-vs-jetpack-vs-wordpress-org/\">Helen Hou-Sandí đã nghĩ ra một phép loại suy tuyệt vời</a> và một bài viết thú vị về nó.</li>\n<li>Nếu bạn quan tâm đến đóng góp đặc biệt về mảng Javascript hay PHP của nền tảng mã của WordPress core, thì các kênh #core-js và #core-php mới trên <a href=\"https://make.wordpress.org/chat/\">nhóm Slack Tạo nên WordPress</a> là dành cho bạn.</li>\n</ul>\n<p>Nếu bạn có câu chuyện mà chúng tôi nên đưa vào trong bài viết &#8220;Tháng qua trong WordPress” tiếp theo, hãy <a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\">gửi lên đây</a>.</p>\n<hr />\n<ul>\n<li><a href=\'https://profiles.wordpress.org/thup90/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>thup90</a> dịch và <a href=\'https://profiles.wordpress.org/htdat/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>htdat</a> chỉnh sửa.</li>\n<li>Bài viết gốc được đăng ở <a href=\"https://wordpress.org/news/2017/07/the-month-in-wordpress-june-2017/\">The Month in WordPress: June 2017</a>.</li>\n</ul>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://vi.wordpress.org/2017/08/14/thang-qua-trong-wordpress-thang-6-2017/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:35:\"https://vi.wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Thu, 22 Mar 2018 17:11:57 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Fri, 02 Mar 2018 06:15:33 GMT\";s:4:\"link\";s:61:\"<https://vi.wordpress.org/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";}}s:5:\"build\";s:14:\"20180322162925\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(9332, '_transient_timeout_feed_mod_5336548cfc49bd1a34a51b2a9fc5fda3', '1521781917', 'no'),
(9333, '_transient_feed_mod_5336548cfc49bd1a34a51b2a9fc5fda3', '1521738717', 'no'),
(9334, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1521781919', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(9335, '_transient_feed_d117b5738fbd35bd8c0391cda1f2b5d9', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:61:\"\n	\n	\n	\n	\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"WordPress Planet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"WordPress Planet - http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:50:{i:0;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"WPTavern: WPWeekly Episode 309 – All AMPed Up\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=78601&preview=true&preview_id=78601\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wptavern.com/wpweekly-episode-309-all-amped-up\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2180:\"<p>In this episode, I&#8217;m joined by <a href=\"https://medinathoughts.com/\">Alberto Medina</a>, Developer Advocate working with the Web Content Ecosystems Team at Google, and <a href=\"https://weston.ruter.net/\">Weston Ruter</a>, CTO of XWP. We have a candid conversation about <a href=\"https://www.ampproject.org/\">Google&#8217;s AMP Project</a>. We start by learning why the project was created, what its main goal is, and the technology behind it.</p>\n<p>We also dive into some of the controversy surrounding the project by discussing whether or not AMP is a threat to the Open Web. Medina and Ruter provide insight into AMP&#8217;s transformation from focusing on the mobile web to providing a great user experience across the entire web. Last but not least, we learn about the relationship between Automattic, XWP, and the AMP team and how it&#8217;s helping to shape the future of the project.</p>\n<h2>Notable Links Mentioned:</h2>\n<p><a href=\"https://wordpress.org/plugins/amp/\">AMP for WordPress Plugin</a><br />\n<a href=\"https://github.com/Automattic/amp-wp\">AMP for WordPress GitHub Repository</a><br />\n<a href=\"https://github.com/ampproject\">AMP GitHub Repository</a><br />\n<a href=\"https://www.youtube.com/watch?v=GGS-tKTXw4Y\">Video presentation from AMP Conf 2018 showcasing the work that&#8217;s gone into the AMP for WordPress plugin</a><br />\n<a href=\"https://www.ampproject.org/latest/blog/standardizing-lessons-learned-from-amp/\">Official blog post outlining the future of the AMP Project</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, March 28th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #309:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 22 Mar 2018 14:34:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"Matt: Don’t Like Change\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=47998\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"https://ma.tt/2018/03/dont-like-change/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:408:\"<blockquote class=\"wp-block-quote\">\n    <p>If you don&#x27;t like change, you&#x27;re going to like irrelevance even less.</p><cite>General Eric Shinseki</cite></blockquote>\n\n<p>I actually heard this on the <a href=\"https://www.fs.blog/2015/06/michael-lombardi/\">Farnham Street podcast with Patriots coach Michael Lombardi</a>, but it seems like General Shinseki said it first so attributing it there.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 22 Mar 2018 00:01:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"HeroPress: Keeping Community Alive\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2487\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:113:\"https://heropress.com/keeping-community-alive/#utm_source=rss&utm_medium=rss&utm_campaign=keeping-community-alive\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3424:\"<img width=\"960\" height=\"480\" src=\"https://heropress.com/wp-content/uploads/2016/09/090716-David-Laietta-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: Be a pillar of support for your community.\" /><p>In the last year or so I&#8217;ve been a lot more involved with the business side of WordPress than the community side. The business side isn&#8217;t nearly as loving and supportive as the community side, and some of that is out of necessity. Business is business, and people need to eat.</p>\n<p>The problem comes when people get so focused on the business side of things that they forget they&#8217;re dealing with people. Recently <a href=\"https://twitter.com/carlhancock/status/971182969514799105\">Carl Hancock mentioned on twitter</a> that there are things that happen in business in the WordPress community that would horrify people. I don&#8217;t know who those people are that do those things, and I don&#8217;t even know what the things are, but I have hope that the community can be bigger and better than that.</p>\n<p>There will always be selfish jerks who abuse the system for personal gain, but I have hope that the WordPress community can generally rise above that, and perhaps even change the hearts of poor players.</p>\n<p>This week&#8217;s HeroPress replay is from David Laietta, about how our community changes lives.</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/a-community-of-acceptance/\">A Community of Acceptance</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Keeping Community Alive\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Keeping%20Community%20Alive&via=heropress&url=https%3A%2F%2Fheropress.com%2Fkeeping-community-alive%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Keeping Community Alive\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fkeeping-community-alive%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fkeeping-community-alive%2F&title=Keeping+Community+Alive\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Keeping Community Alive\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/keeping-community-alive/&media=https://heropress.com/wp-content/uploads/2016/09/090716-David-Laietta-150x150.jpg&description=Keeping Community Alive\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Keeping Community Alive\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/keeping-community-alive/\" title=\"Keeping Community Alive\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/keeping-community-alive/\">Keeping Community Alive</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 21 Mar 2018 15:39:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"WPTavern: A Plea For Plugin Developers to Stop Supporting Legacy PHP Versions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=78533\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://wptavern.com/a-plea-for-plugin-developers-to-stop-supporting-legacy-php-versions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2188:\"<p>Iain Poulson has <a href=\"https://deliciousbrains.com/legacy-php-version-support/\">published a thoughtful request</a> on the Delicious Brains blog asking WordPress plugin developers to stop supporting legacy PHP versions. He covers some of the benefits of developing with newer versions of PHP, what Delicious Brains is doing with its plugins, and using the <a href=\"https://make.wordpress.org/plugins/2017/08/29/minimum-php-version-requirement/\">Requires Minimum PHP Version header</a> in readme.txt.<br /></p>\n\n<blockquote class=\"wp-block-quote\">\n    <p>While we wait for the Trac discussion to roll on and the WordPress development wheels to turn we can take action ourselves in our plugins to stop them working on installs that don’t meet our requirements. </p>\n    <p>We do this in our own plugins where it is strictly necessary (<a href=\"https://deliciousbrains.com/wp-offload-s3/\">WP Offload S3</a> relies on the Amazon Web Services S3 SDK, which requires PHP 5.3.3+ and will we will <a href=\"https://deliciousbrains.com/wp-offload-s3/doc/php-version-requirements/\">move to PHP 5.5</a> in the future), and the more plugins that do this out of choice will help move the needle further.</p><cite>Iain Poulson <br type=\"_moz\" /></cite></blockquote>\n\n<p>Poulson mentions the <a href=\"https://github.com/WordPress/servehappy\">ServeHappy project</a> in his post and it&#x27;s worth a mention here as well. The ServeHappy project was <a href=\"https://make.wordpress.org/core/2018/01/09/servehappy-roadmap/\">launched earlier this year</a> by a group of volunteers.</p>\n\n<p>Its main goal is to reduce the number of WordPress installs running on unsupported PHP versions through education, awareness, and tools to help users update their site&#x27;s PHP versions.</p>\n\n<p>This project is in need of contributors. If you&#x27;re interested, join the #core-php channel on <a href=\"https://make.wordpress.org/chat/\">WordPress Slack</a>. The team has meetings every Monday at 11:00 AM EDT. You can also follow the <a href=\"https://make.wordpress.org/core/tag/core-php/\">#core-php tag</a> on the Make WordPress.org Core site where links to chat logs and meeting summaries are published. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 21 Mar 2018 00:31:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"WPTavern: How to Disable Push Notification Requests in Firefox\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=78475\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"https://wptavern.com/how-to-disable-push-notification-requests-in-firefox\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1246:\"<p>Have you noticed how many sites ask if you want to enable push notifications? I&#x27;ve answered no to every request but thanks <a href=\"https://twitter.com/tkraftner/status/976116234365358081\">to a tip</a> suggested by Thomas Kräftner, you can disable requests from appearing altogether in Firefox.</p>\n\n<p>Last week, Mozilla <a href=\"https://www.mozilla.org/en-US/firefox/59.0/releasenotes/\">released Firefox 59.0</a> and added a <a href=\"https://support.mozilla.org/en-US/kb/push-notifications-firefox\">new privacy feature</a> that allows users to block sites from sending push notification requests. To enable it, open the Options panel in Firefox 59.0 and click the Privacy&amp;Security tab.<br /></p>\n\n<p>Scroll down to the Permissions section. Click on the Settings button for Notifications and check the box that says <em>Block new requests asking to allow notifications.﻿</em></p>\n\n<img />\n    Settings panel for Notifications\n\n\n<p>Click the Save Changes button and enjoy one less thing interrupting your browsing experience.  To accomplish the same thing in Chrome, follow <a href=\"https://fieldguide.gizmodo.com/how-to-block-super-annoying-website-notification-reques-1797499616\">this tutorial published by Field Guide</a>. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 20 Mar 2018 23:32:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"WPTavern: Without Context, Some Lyrics Inside the Hello Dolly Plugin Are Degrading to Women\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=78372\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"https://wptavern.com/without-context-some-lyrics-inside-the-hello-dolly-plugin-are-degrading-to-women\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2914:\"<p>There have been <a href=\"https://core.trac.wordpress.org/ticket/11538\">many discussions</a> over the years on whether or not <a href=\"https://wordpress.org/plugins/hello-dolly/\">Hello Dolly</a> should be unbundled with WordPress. Seven years ago, it was <a href=\"https://core.trac.wordpress.org/ticket/15769\">argued</a> that the lyrics are copyrighted and could potentially violate the GPL license.</p>\n\n<p>The latest issue with Hello Dolly is that some lyrics that appear in users dashboards with the plugin activated can be degrading to women without context.</p>\n\n<p><blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">Find her an empty lap, fellas.<br /><br />Wondering about my <a href=\"https://twitter.com/WordPress?ref_src=twsrc%5Etfw\">@WordPress</a> dashboard. Apparently they\'re lyrics. <img src=\"https://s.w.org/images/core/emoji/2.4/72x72/1f643.png\" alt=\"🙃\" class=\"wp-smiley\" /> <img src=\"https://s.w.org/images/core/emoji/2.4/72x72/1f644.png\" alt=\"🙄\" class=\"wp-smiley\" /> <a href=\"https://t.co/oxNU9czr5X\">pic.twitter.com/oxNU9czr5X</a></p>&mdash; Michelle Felt (@michellefelt) <a href=\"https://twitter.com/michellefelt/status/974060334502719488?ref_src=twsrc%5Etfw\">March 14, 2018</a></blockquote></p>\n\n<p>Two examples are:</p>\n\n<ul>\n    <li>Find her an empty lap, fellas</li>\n    <li>Find her a vacant knee, fellas</li>\n</ul>\n\n<p>Joe McGill has <a href=\"https://core.trac.wordpress.org/ticket/43555\">created a trac ticket</a> proposing that those two lines be removed. \"The Hello Dolly plugin has been bundled in WordPress for many years, being a simple example of how to build a plugin for WordPress while also adding a bit of whimsy to admin,\" he said.</p>\n\n<p>\"However, there are several passages of text from this song which are inappropriate to display without any context to people using WordPress—particularly as the WordPress project seeks to promote inclusivity for all.\"</p>\n\n<p>The discussion within the ticket suggests creating a black list or replacing the lyrics with less offensive versions. In many of the Google search results for Hello Dolly lyrics by Jerry Herman, shows that the lyrics inside the plugin and those in the song are different.</p>\n\n<p>The lyrics say, \"Find me a vacant knee, fellas.\" In a <a href=\"https://www.youtube.com/watch?v=RETJfq1U_gg\">video on YouTube</a> of Hello Dolly featuring Sarah Gardner singing the lyrics, she clearly says \"Find her an empty lap, fellas.\" In a YouTube video of <a href=\"https://www.youtube.com/watch?v=kmfeKUNDDYs\">Louis Armstrong singing Hello Dolly live</a>, he says \"Find her an empty lap, fellas.\"<br /></p>\n\n<p>Putting aside the debate of which version of the lyrics are used, displaying the text above without context can and is seen as degrading women. At a time when WordPress and its community are doing what it can to be more inclusive, changing or removing the lyrics seems like an easy win. </p>\n\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 16 Mar 2018 20:45:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"WPTavern: Watch WordCamp Miami 2018 Via Free Livestream\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=78359\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wptavern.com/watch-wordcamp-miami-2018-via-free-livestream\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:618:\"<p>Tickets for the event may be sold out, but you can watch the event from anywhere thanks to a <a href=\"https://2018.miami.wordcamp.org/live/\">free livestream</a>. The stream starts today and covers both the E-Commerce and developers workshops. The stream begins tomorrow at 8:30AM EDT with separate links to <a href=\"https://bizstreams.fiu.edu/Mediasite/Play/05a25d9473ca4c919b5f29aa426bb0c01d?catalog=f4f4edd3-2dee-4302-91c6-d77c1da5f437\">morning</a> and <a href=\"https://bizstreams.fiu.edu/Mediasite/Play/30c9fdc284ce46648866ed715fd3b90d1d?catalog=f4f4edd3-2dee-4302-91c6-d77c1da5f437\">afternoon</a> sessions. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 16 Mar 2018 16:18:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"WPTavern: Let’s Encrypt Wildcard Certificates Are Now Available\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=78287\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"https://wptavern.com/lets-encrypt-wildcard-certificates-are-now-available\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1765:\"<p>In July of last year, <a href=\"https://letsencrypt.org/\">Let&#x27;s Encrypt</a> announced that it would begin <a href=\"https://letsencrypt.org/2017/07/06/wildcard-certificates-coming-jan-2018.html\">issuing Wildcard certificates</a> for free in January of 2018. Although a little late, the organization <a href=\"https://community.letsencrypt.org/t/acme-v2-and-wildcard-certificate-support-is-live/55579\">has announced</a> that Wildcard certificate support is now live.</p>\n\n<p>In addition to these certificates, the organization has updated its <a href=\"https://datatracker.ietf.org/wg/acme/about/\">ACME protocol</a> to version 2.0. ACMEv2 is required for clients that want to use Wildcard certificates.</p>\n\n<p>Wildcard certificates enable site administrators to secure all sub domains with a single certificate. This can be especially convenient for WordPress Multi-site networks.</p>\n\n<p>Let&#x27;s Encrypt is working on transitioning all clients and subscribers to ACMEv2, though it hasn&#x27;t set a time table on when it will expire the ACMEv1 API. </p>\n\n<p>In July of 2017, Let&#x27;s Encrypt was securing 47 million domains. Today, the organization is <a href=\"https://letsencrypt.org/stats/\">securing nearly 70 million domains with 54 million certificates</a>. In the United States, nearly 80% of sites loaded in Firefox are through HTTPS.</p>\n\n<p>Let&#x27;s Encrypt is an open certificate authority that&#x27;s part of the non-profit <a href=\"https://letsencrypt.org/isrg/\">Internet Security Research Group</a>. It&#x27;s mission is to make 100% of the web HTTPS. Operations are financed through sponsors and donations. If this is a mission you believe in, please consider <a href=\"https://letsencrypt.org/donate/\">donating</a> to the project.<br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 15 Mar 2018 17:23:41 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"WPTavern: WPWeekly Episode 308 – Wildcard SSL Certificates For All\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=78291&preview=true&preview_id=78291\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://wptavern.com/wpweekly-episode-308-wildcard-ssl-certificates-for-all\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2349:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I discuss the news of the week including the results from the 2018 Stack Overflow survey, Tech Crunch&#8217;s rebuild, and Let&#8217;s Encrypt adding support for wildcard certificates. We also talk about Google working towards AMP or parts of it becoming official web standards. I ranted about how the mobile experience on the web sucks, and we end the show with some event news.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wptavern.com/stack-overflow-survey-respondents-still-rank-wordpress-among-the-most-dreadful-platforms\">Stack Overflow Survey Respondents Still Rank WordPress Among the Most Dreadful Platforms</a><br />\n<a href=\"https://www.theverge.com/2018/3/8/17095078/google-amp-accelerated-mobile-page-announcement-standard-web-packaging-urls\">Inside Google’s plan to make the whole web as fast as AMP</a><br />\n<a href=\"https://community.letsencrypt.org/t/acme-v2-and-wildcard-certificate-support-is-live/55579\">ACME v2 and Wildcard Certificate Support is Live</a><br />\n<a href=\"https://techcrunch.com/2018/03/13/welcome-to-the-new-techcrunch/\">TechCrunch rebuilt using the REST API</a><br />\n<a href=\"https://wptavern.com/wpcampus-scheduled-for-july-12-14-in-st-louis-mo\">WPCampus Scheduled for July 12-14 in St. Louis, MO</a></p>\n<h2>Picks of the Week:</h2>\n<p><a href=\"https://themeshaper.com/2018/03/07/designing-gutenberg-block-driven-themes-with-sketch/\">Designing Themes with Gutenberg Blocks and Sketch</a></p>\n<p><a href=\"https://www.pioneerdj.com/en-us/product/controller/ddj-1000/black/overview/\">DDJ-1000 The 4-channel professional performance DJ controller for rekordbox dj</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, March 21st 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #308:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 15 Mar 2018 01:09:33 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"HeroPress: A look back: Tamsin Taylor, Freedom Through Blogging\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2484\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:167:\"https://heropress.com/a-look-back-tamsin-taylor-freedom-through-blogging/#utm_source=rss&utm_medium=rss&utm_campaign=a-look-back-tamsin-taylor-freedom-through-blogging\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3461:\"<img width=\"960\" height=\"480\" src=\"https://heropress.com/wp-content/uploads/2016/10/100516-2-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: We cannot know the end of any journey until we find ourselves there.\" /><p>In August of 2016 I saw <a href=\"https://wordpress.tv/2016/08/09/tamsin-taylor-a-heros-journey/\">a WordCamp talk on WordPress.tv</a> called &#8220;A Hero&#8217;s Journey&#8221;, and I thought that seemed like something I should know a lot more about.  A short time later I was speaking with Tamsin Taylor on Slack.</p>\n<p><img class=\"aligncenter wp-image-2485 size-full\" src=\"https://heropress.com/wp-content/uploads/2018/03/Screen-Shot-2018-03-14-at-8.46.22-AM.png\" alt=\"A greeting conversation\" width=\"356\" height=\"201\" /></p>\n<p>I love telling stories, but I love hearing them more. Tamsin told me a story grief and loss, and how WordPress provided an outlet for those feelings. I hope her story resonates with you as well.</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/bumpy-journey-becoming/\">The Bumpy Journey of Becoming</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: A look back: Tamsin Taylor, Freedom Through Blogging\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=A%20look%20back%3A%20Tamsin%20Taylor%2C%20Freedom%20Through%20Blogging&via=heropress&url=https%3A%2F%2Fheropress.com%2Fa-look-back-tamsin-taylor-freedom-through-blogging%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: A look back: Tamsin Taylor, Freedom Through Blogging\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fa-look-back-tamsin-taylor-freedom-through-blogging%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fa-look-back-tamsin-taylor-freedom-through-blogging%2F&title=A+look+back%3A+Tamsin+Taylor%2C+Freedom+Through+Blogging\" rel=\"nofollow\" target=\"_blank\" title=\"Share: A look back: Tamsin Taylor, Freedom Through Blogging\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/a-look-back-tamsin-taylor-freedom-through-blogging/&media=https://heropress.com/wp-content/uploads/2016/10/100516-2-150x150.jpg&description=A look back: Tamsin Taylor, Freedom Through Blogging\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: A look back: Tamsin Taylor, Freedom Through Blogging\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/a-look-back-tamsin-taylor-freedom-through-blogging/\" title=\"A look back: Tamsin Taylor, Freedom Through Blogging\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/a-look-back-tamsin-taylor-freedom-through-blogging/\">A look back: Tamsin Taylor, Freedom Through Blogging</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 14 Mar 2018 12:46:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:10;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"WPTavern: Stack Overflow Survey Respondents Still Rank WordPress Among the Most Dreadful Platforms\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=78278\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:109:\"https://wptavern.com/stack-overflow-survey-respondents-still-rank-wordpress-among-the-most-dreadful-platforms\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2902:\"<p><a href=\"https://stackoverflow.com/\">Stack Overflow</a>, a Q&amp;A community for developers, has published the results of <a href=\"https://insights.stackoverflow.com/survey/2018/\">its 2018 developer survey</a>. The survey was held between January 8th through the 28th and includes responses from 101,592 software developers from 183 countries across the world. This is nearly twice the amount of responses compared to <a href=\"https://insights.stackoverflow.com/survey/2017#methodology\">last year&#8217;s survey</a>.</p>\n<p><a href=\"https://insights.stackoverflow.com/survey/2017#technology-most-loved-dreaded-and-wanted-platforms\">Last year</a>, WordPress was the third most dreaded software platform behind Salesforce and SharePoint. This year, WordPress has improved in the rankings and is the sixth most dreaded platform. Respondents found Windows Phone, Mainframe, Salesforce, Drupal, and SharePoint to be more dreadful.</p>\n<img />WordPress is the sixth most dreaded software platform\n<p>Despite making headway, WordPress has <a href=\"https://wptavern.com/stack-overflow-developer-survey-ranks-wordpress-as-the-3rd-most-dreaded-technology\">consistently ranked near the top</a> in Stack Overflow&#8217;s survey for most dreadful platform. Asking developers why is probably akin to opening <a href=\"https://en.wikipedia.org/wiki/Pandora%27s_box\">Pandora&#8217;s box</a>.</p>\n<p>JavaScript was once again the <a href=\"https://insights.stackoverflow.com/survey/2018/#most-popular-technologies\">most popular technology</a> with HTML, CSS, and SQL following closely behind. Among the various JavaScript frameworks and libraries that exist, <a href=\"https://insights.stackoverflow.com/survey/2018/#technology-frameworks-libraries-and-tools\">Node.js is the most commonly used</a> followed by Angular and React.</p>\n<p>The survey introduced a few new topics this year, including questions about <a href=\"https://insights.stackoverflow.com/survey/2018/#technology-and-society\">artificial intelligence</a> and ethics. When <a href=\"https://insights.stackoverflow.com/survey/2018/#work-what-would-developers-do-if-asked-to-write-code-for-an-unethical-purpose\">posed with a hypothetical situation</a> in which a developer was asked if they would write code for unethical purposes, more than half of the respondents said no. Also of note is that <a href=\"https://insights.stackoverflow.com/survey/2018/#developer-profile-contributing-to-open-source\">less than half</a> of the respondents say they contribute to open source.</p>\n<p>There are a lot of interesting data points in the survey. I encourage you to <a href=\"https://insights.stackoverflow.com/survey/2018/#overview\">check out the results</a> and let me know in the comments what sticks out to you.</p>\n<p><strong>Updated 3/14/2018</strong> Corrected to say that WordPress has improved in the rankings and is therefor, less dreadful than before.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 14 Mar 2018 10:08:12 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:11;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"WPTavern: WPCampus Scheduled for July 12-14 in St. Louis, MO\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=78273\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wptavern.com/wpcampus-scheduled-for-july-12-14-in-st-louis-mo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1138:\"<p><a href=\"https://2018.wpcampus.org/about/\">WPCampus</a>, an in-person conference dedicated to WordPress in higher education <a href=\"https://2018.wpcampus.org/\">has announced</a> its third annual event will be held July 12-14 at <a href=\"https://wustl.edu/\">Washington University</a> in St. Louis, MO. The <a href=\"https://2018.wpcampus.org/call-for-speakers/application/\">call for speakers</a> is open until April 7th. The event is two months after <a href=\"https://2018.stlouis.wordcamp.org/\">WordCamp St. Louis </a>which will also be held at Washington University.</p>\n<p>WPCampus held its first event in 2016 in Sarasota, FL, and its second in 2017 in Buffalo, NY. The schedule is not yet finalized but to get an idea on what to expect, check out the <a href=\"http://wpcampus.org/videos/\">video presentations</a> from previous events. Organizers expect about 200 attendees and are accepting <a href=\"https://2018.wpcampus.org/sponsors/\">sponsorship inquiries</a>.</p>\n<p>Tickets are not yet available but those interested in attending can sign up to the WPCampus mailing list where ticket information will be distributed first.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 13 Mar 2018 00:12:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:12;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"Post Status: Network effects and WordPress — Draft podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=44341\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"https://poststatus.com/network-effects-wordpress-draft-podcast/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2200:\"<p>Welcome to the Post Status <a href=\"https://poststatus.com/category/draft\">Draft podcast</a>, which you can find <a href=\"https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008\">on iTunes</a>, <a href=\"https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast\">Google Play</a>, <a href=\"http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast\">Stitcher</a>, and <a href=\"http://simplecast.fm/podcasts/1061/rss\">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Brian Krogsgard and co-host Brian Richards.</p>\n<p>In this episode, Brian and Brian discuss the power of network effects and how they relate to WordPress’ increasing market share and maturity. WordPress has recently hit two major milestones, turning 15 years old and reaching 30% market share of the top 10 million websites, and we spend this episode reflecting on the innovations that brought us here and where innovations are likely to occur over the next 10 years.</p>\n<p>We’ve come quite a long way in these 15 years. From the famous 5-minute install to being entirely pre-installed. From a supportive band of volunteers and vast ecosystem of free software to the commercially supported and highly-polished products that exist today. There is a lot about WordPress to be thankful for, and a lot of great things that will exist in the future because of it. And you can hear a bit about all of that on this episode of the Post Status Draft podcast.</p>\n<p></p>\n<h3>Links</h3>\n<ul>\n<li><a href=\"https://medium.com/evergreen-business-weekly/the-power-of-network-effects-why-they-make-such-valuable-companies-and-how-to-harness-them-5d3fbc3659f8\">The Power of Network Effects</a></li>\n<li>Mel Choice&#8217;s LoopConf presentation on <a href=\"https://loopconf.com/talk/customizing-the-future/\">Customizing the Future</a></li>\n</ul>\n<h3>Sponsor: Yoast</h3>\n<p>Yoast SEO Premium gives you 24/7 support from a great support team and extra features such as a redirect manager, recommended internal links, tutorial videos and integration with Google Webmaster Tools! Check out <a href=\"https://yoast.com/\">Yoast SEO Premium</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 10 Mar 2018 20:18:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Katie Richards\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:13;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"WPTavern: Yoast Launches Fund to Increase Speaker Diversity at Tech Conferences\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=78248\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://wptavern.com/yoast-launches-fund-to-increase-speaker-diversity-at-tech-conferences\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1421:\"<p>In an effort to increase speaker diversity at conferences worldwide, the team at Yoast SEO has <a href=\"https://yoast.com/yoast-diversity-fund/\">launched</a> a diversity fund. The fund will pledge a minimum of €25,000 each year. Its purpose is to remove the financial burdens that can cause minorities or underrepresented groups to speak at conferences.</p>\n<p>&#8220;There are WordCamps throughout the world, these are conferences about, by and for the WordPress community,&#8221; Joost de Valk said.</p>\n<p>&#8220;While we already sponsor a lot of them, they tend to not have the budget to pay for speakers’ travel and accommodation cost. The same applies to other conferences about open source, certainly those that are not commercially run. We want to take away that particular reason for not having a diverse conference.&#8221;</p>\n<p>Eligible candidates will be reimbursed €1,000 for travel and accommodations per event. In order to qualify for the fund, speakers must meet the following requirements:</p>\n<ul>\n<li>Is a part of – or identifies as part of – a typically underrepresented group.</li>\n<li>The conference is not commercial.</li>\n<li>The conference targets either the WordPress, Magento, or TYPO3 community.</li>\n<li>Has been accepted as a speaker to the conference.</li>\n</ul>\n<p>To submit an application, email diversity-fund at yoast.com where applications are reviewed within a week.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 09 Mar 2018 03:20:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:14;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"WPTavern: WPWeekly Episode 307 – Thirty Percent of the Web\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=78242&preview=true&preview_id=78242\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wptavern.com/wpweekly-episode-307-thirty-percent-of-the-web\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2423:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I start with a continued discussion of AMP from last week. We cover the big releases of the week including Jetpack, Genesis, Yoast SEO, and Gutenberg. We discuss a new project that aims to determine Gutenberg compatible plugins, debate the terminology used to describe WordPress&#8217; market share, and a new plugin that makes WordPress updates more secure.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://make.wordpress.org/core/2018/03/02/whats-new-in-gutenberg-2nd-march/\">Gutenberg 2.3, Now With Nested Blocks</a><br />\n<a href=\"https://studiopress.blog/genesis-2-6/\">Genesis 2.6</a><br />\n<a href=\"https://yoast.com/yoast-seo-7-0/\">Yoast SEO 7.0</a><br />\n<a href=\"https://jetpack.com/category/releases/\">Jetpack 5.9</a><br />\n<a href=\"https://wptavern.com/4500-plugins-need-your-help-in-determining-gutenberg-compatibility\">4,500 Plugins Need Your Help in Determining Gutenberg Compatibility</a><br />\n<a href=\"https://wptavern.com/new-plugin-makes-wordpress-core-updates-more-secure-by-requiring-cryptographic-signature-verification\">New Plugin Makes WordPress Core Updates More Secure by Requiring Cryptographic Signature Verification</a><br />\n<a href=\"https://wptavern.com/wordpress-now-used-on-30-of-the-top-10-million-sites\">WordPress Now Used on 30% of the Top 10 Million Sites</a></p>\n<h2>Picks of the Week:</h2>\n<p>Mel Choyce&#8217;s presentation on <a href=\"https://wptavern.com/conceptual-ideas-on-how-the-customizer-could-integrate-with-gutenberg\">Customizing the Future</a> at LoopConf.</p>\n<p>Felix Arntz&#8217;s presentation on a Global Admin, a <a href=\"https://www.youtube.com/watch?v=V085zCBdRfc\">deep dive into multi-network organization</a> at LoopConf.</p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, February 14th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #307:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 08 Mar 2018 03:39:57 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:15;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"Matt: Back to Blogging\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=47991\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"https://ma.tt/2018/03/back-to-blogging/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:134:\"<p>I really enjoyed <a href=\"http://tomcritchlow.com/2018/02/23/small-b-blogging/\">Tom Critchlow&#x27;s post Small b blogging</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 07 Mar 2018 22:59:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:16;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"WPTavern: Conceptual Ideas on How the Customizer Could Integrate With Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=78232\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://wptavern.com/conceptual-ideas-on-how-the-customizer-could-integrate-with-gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1598:\"<p>While the initial focus of Gutenberg is the editor, the second focus is the Customization experience in WordPress. <a href=\"https://choycedesign.com/\">Mel Choyce</a>, Product Designer at Automattic, recently spoke at <a href=\"https://loopconf.com/\">LoopConf</a>, on the <a href=\"https://loopconf.com/talk/customizing-the-future/\">past, present, and future</a> of the customizer.</p>\n<p>Choyce begins the presentation by describing when and how the customizer was added to WordPress. Fun fact, the customizer or what was known as the Theme Customizer at the time, was added to <a href=\"https://wordpress.org/news/2012/06/green/\">WordPress 3.4 &#8220;Green&#8221;</a> in June 2012.</p>\n<p>The session continues with Choyce showcasing new features and enhancements that have been made to the customizer since 2012. Near the 23 minute mark, Choyce shows conceptual images of what the customization experience could be like when implemented with Gutenberg.</p>\n<p>In the experimental images, you can see options to choose page templates or layouts, live previewing changes to blocks, global site styles, and a standard set of user interface patterns. The ideas presented are concepts and likely to change.</p>\n<p>Because the session was recorded with a picture-in-picture, I&#8217;m not able to provide high quality screen captures of the conceptual images. To see those items in detail, I recommend viewing the video in full-screen 1080p. You can full all of the LoopConf sessions for free via <a href=\"https://www.youtube.com/channel/UCAwOVsWiMdlz6snWRF2HdSQ\">their YouTube channel</a>.</p>\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 07 Mar 2018 10:17:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:17;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"HeroPress: Building A New Life\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://heropress.com/?post_type=heropress-essays&p=2480\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:112:\"https://heropress.com/essays/building-a-new-life/#utm_source=rss&utm_medium=rss&utm_campaign=building-a-new-life\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:12980:\"<img width=\"960\" height=\"480\" src=\"https://heropress.com/wp-content/uploads/2018/03/030718-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: Plan your business around what matters to you/\" /><p>This is the story of how I co-founded Barn2 Media with my husband Andy, and scaled it from a startup to one of the UK’s best known WordPress agencies &#8211; all while working part-time.</p>\n<p>I&#8217;ll tell you about the challenges I faced in building a WordPress business that is compatible with a good work-life balance. I&#8217;ll share what I did each time the growing business started to threaten my lifestyle, and how you can do the same.</p>\n<h2>The Beginning</h2>\n<p>I had a traditional full-time job throughout my 20’s. I enjoyed building my career and earning a regular salary, but didn’t like the lack of flexibility that came with it.</p>\n<p>I didn’t like having to arrive at work by a fixed time, or being unable to choose when I worked. As a hard-working person, it felt counter-productive to be forced to work set hours when I may not be at my best.</p>\n<p>My daily commute was anything from 25-50 minutes (which I realise is less than many people). It felt like a waste of time as I could work just as well from home, not to mention the environmental impact of driving so far just to sit in an office. Day-to-day tasks such as ordering items for home delivery became a big deal, as I wasn’t home during the day.</p>\n<p>As a result, I spent most of my 20’s simultaneously building my career in a traditional job, while dreaming about running my own business and working for myself. Andy felt the same about his own job as a senior software developer.</p>\n<blockquote><p>I think that most people want a better lifestyle, but not many actually do anything about it. I thought I was one of those people.</p></blockquote>\n<p>Andy and I would talk endlessly about different business ideas (most of them terrible!) and even experimented with building a few websites that were never launched. However, we didn’t have the drive to make it happen and launch a business in the real world.</p>\n<h2>Starting a Business</h2>\n<p>In late 2009, Andy had finally had enough of his job and we agreed that it was time for him to quit. We decided to start a web design business together. He would work solely on the new business, while I would support it alongside my main job (which I didn&#8217;t hate, even though I didn&#8217;t like the lifestyle).</p>\n<p>We started by building WordPress websites for small local businesses. Andy built the websites and I was responsible for copywriting and marketing. We approached local tradespeople who didn&#8217;t already have a website &#8211; back in 2010, there were still a lot of these! Our first clients were local plumbers, electricians, a washing machine repair shop, etc.</p>\n<p>These early projects were quite low budget. The average hourly rate was quite low because we were still learning and hadn&#8217;t perfected our processes yet. We wasted a lot of time on projects where we had under-quoted but were committed to honoring the agreed price.</p>\n<blockquote><p>We made a lot of mistakes, and learned from them all!</p></blockquote>\n<p>By Year 2, the business was making the equivalent of a fairly low salary for one person. However, we had to work a lot for a relatively small income. This encouraged us to work more hours, and it wasn&#8217;t bringing the lifestyle benefits I was looking for.</p>\n<h2>Lifestyle Tip #1: Learn to Specialize</h2>\n<p>In late 2010, it occurred to me that we were building all our websites in WordPress but not advertising ourself as a WordPress company. I wondered whether people were actually searching for WordPress experts and whether this could be a good way to advertise. That may seem obvious in 2018 now WordPress is the world&#8217;s biggest web platform &#8211; but it was a genuine question back in 2010.</p>\n<p>On a whim, I invested $100 in Google AdWords targeting keywords such as &#8216;WordPress web design&#8217; and &#8216;WordPress developer&#8217;. Amazingly, we were overwhelmed with enquiries and quickly brought in over $4,000 of business &#8211; not a bad return on investment! The work came from medium sized companies who had never used our services before, with higher budgets.</p>\n<blockquote><p>Positioning ourselves as WordPress specialists completely changed the profile of our client base, as well as the budgets we were working with.</p></blockquote>\n<p>This vastly increased our average hourly income, so we were making more money without having to work more hours. Finally, it felt like a proper business with a better work-life balance.</p>\n<h2>Lifestyle Tip #2: Build a (virtual) team</h2>\n<p>The business grew quickly under its new identity as a specialist WordPress agency. By mid-2011, we had more work than we could manage ourselves. I also had a baby and increased my hours on the business while on maternity leave &#8211; eventually not returning to my old job. We still needed to increase the company&#8217;s income, while working towards the lifestyle we wanted.</p>\n<p>We grew the business to the next level by building a virtual team.</p>\n<blockquote><p>I felt quite strongly that I didn&#8217;t want to become a traditional employer with a team of staff, all working together in an office. That would bring me back to the lifestyle I started with!</p></blockquote>\n<p>Instead, I decided to recruit a team of freelancers.</p>\n<p>It took time to find the right freelancers, but the good news is that you can try someone out on a single project with no further commitment. If it doesn&#8217;t work out, then you don&#8217;t have to work with them again. Through trial and error, I built a team of freelancers with different WordPress-related skills. This increased capacity and allowed us to take on more projects without having to work more hours.</p>\n<p>I was still managing all the projects, but could take a step back and wasn&#8217;t directly building the websites. Finally, it felt like a proper WordPress agency.</p>\n<h2>Lifestyle Tip #3: Selling WordPress products</h2>\n<p>By building a distributed team, the business became more and more successful. We were taking on more and more projects, and I was managing all of them. By the time we were running 20 projects at once, I had reached the limits of my capacity and was having to work a lot of hours.</p>\n<p>From 2014-15, I experimented with working with freelance project managers, but had to give up because quality was dropping and our clients were less happy. I realised that with the current business model, I could only continue growing the business by working more and more hours. This wasn&#8217;t what I had been working towards!</p>\n<p>It was time for Andy and I to pursue our other dream: selling WordPress products. We&#8217;d been talking about this since the early days of the business, but the client projects had kept us so busy that we&#8217;d never done anything about it.</p>\n<p>In early 2016, Andy stepped out of the client business and started writing WordPress and WooCommerce plugins to sell. I continued managing client projects for the next 6 months, until the plugins were making enough money to stop taking on new projects and I could spend all my time marketing and supporting the plugins.</p>\n<blockquote><p>Selling WordPress plugins has been very successful because we already knew the market inside out from our years of developing WordPress sites.</p></blockquote>\n<p>We knew where the gaps were and what plugin customers want. We knew where other plugin companies get it wrong, and could learn from their mistakes without making the same mistakes ourselves!</p>\n<p>By launching several plugins, we could listen to what our customers were asking for and build even more. In October 2016, we launched our <a href=\"https://barn2.co.uk/wordpress-plugins/woocommerce-product-table/\">WooCommerce Product Table plugin</a> because so many people asked for a way to list products in a table with add to cart buttons. This immediately became our bestselling plugin and has sold more than all our other plugins combined. Since then, the plugin business has gone from strength to strength.</p>\n<blockquote><p>I have found that selling WordPress products brings a much better work-life balance than providing WordPress services.</p></blockquote>\n<p>We receive (many) plugin support requests every day, but each one takes relatively little time and is less pressured than fixing problems for web design clients. The whole business feels much more relaxed, and I don&#8217;t feel guilty about taking time off.</p>\n<p>Between the two of us, we spend a couple of hours a day on plugin support. We continue improving the plugins, marketing, adding features and building the business on top of that. However, all of this is optional and can easily be done while working part-time.</p>\n<h2>Snow Day! Putting It Into Practice</h2>\n<p>Before we finish, I&#8217;ll tell you about my week. Today is Friday. At 10.30am on Wednesday, I received a text that my daughter&#8217;s school had closed for the rest of the week because of the unusual snow here in the UK.</p>\n<p>The parents with traditional jobs panicked and had to quickly arrange childcare or time-off work. Some of them were stuck in cars on snowed-in roads as they tried to return to the village. No one could get to work the next day. A lot of people lost a lot of money.</p>\n<p>Andy and I simply stopped work, put on our snow gear, walked the 10 minutes to the school, and then went sledging. Since then, we&#8217;ve been sharing the childcare in between responding to plugin support requests (and writing this article!). We&#8217;ve had 37 plugin sales on our website since the school closed, even though we&#8217;ve been working less hours than usual. Now, that&#8217;s what I&#8217;ve been working towards!</p>\n<h2>Conclusion</h2>\n<p>I&#8217;ve worked hard and have been extremely committed to building Barn2 Media. However, this has always been on the condition that it wouldn&#8217;t sacrifice my lifestyle goals.</p>\n<blockquote><p>For me, the ideal business is measured against a combination of financial success and lifestyle benefits. If the founders are working 70 hours a week to keep the money coming in, then it&#8217;s not a successful business!</p></blockquote>\n<p>You can do the same. Design a WordPress business that will give you the lifestyle you want, as well as making money. If you love working with people, build a team and provide WordPress services (WordPress design and development are good for this). If you want to travel, choose work that you can do remotely from different time zones (WordPress products are good for this). Plan your business around what matters to you.</p>\n<p>WordPress is such a huge ecosystem that it comes with many opportunities to build a successful business. With a bit of extra thought and planning, you can build a WordPress business that is successful AND lets you life the lifestyle you&#8217;ve always wanted. That is the true measure of success.</p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Building A New Life\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Building%20A%20New%20Life&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fbuilding-a-new-life%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Building A New Life\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fbuilding-a-new-life%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fbuilding-a-new-life%2F&title=Building+A+New+Life\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Building A New Life\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/building-a-new-life/&media=https://heropress.com/wp-content/uploads/2018/03/030718-150x150.jpg&description=Building A New Life\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Building A New Life\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/essays/building-a-new-life/\" title=\"Building A New Life\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/essays/building-a-new-life/\">Building A New Life</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 07 Mar 2018 08:00:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Katie Keith\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:18;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"WPTavern: WordPress Now Used on 30% of the Top 10 Million Sites\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=78214\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"https://wptavern.com/wordpress-now-used-on-30-of-the-top-10-million-sites\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2379:\"<p><a href=\"https://w3techs.com/\">W3Techs</a>, a survey company that monitors usage of various web technologies, <a href=\"https://w3techs.com/technologies/details/cm-wordpress/all/all\">is reporting</a> that WordPress has reached 30% usage or 60.2% market share of all the websites whose content management systems it knows about. This represents a 0.6% increase since February 1st and 13.1% over the last seven years.</p>\n<p>Just five days ago, Matt Mullenweg, co-creator of WordPress, brought attention to the approaching milestone.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"und\" dir=\"ltr\">29.9%&#8230;</p>\n<p>&mdash; Matt Mullenweg (@photomatt) <a href=\"https://twitter.com/photomatt/status/969378724305973249?ref_src=twsrc%5Etfw\">March 2, 2018</a></p></blockquote>\n<p></p>\n<p>When it comes to WordPress&#8217; market share numbers, W3Techs is the most cited source. While some say that <a href=\"https://thenextweb.com/dd/2018/03/05/30-of-the-web-now-runs-on-wordpress/\">WordPress now powers 30% of the web</a>, <a href=\"https://w3techs.com/technologies\">technically</a>, it is used by 30% of the top 10 million sites based on traffic according to <a href=\"https://www.alexa.com/\">Alexa</a>. All sub-domains on WordPress.com and WordPress.org count as one site.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">All the subdomains of <a href=\"https://t.co/37ETZ4JMFf\">https://t.co/37ETZ4JMFf</a> and <a href=\"https://t.co/YtO6Msd90U\">https://t.co/YtO6Msd90U</a> do indeed only count as one site. Sites that are hosted by Automattic under their own domain do count if they have significant traffic on that domain. These are 0.4%, 29.5% are hosted somewhere else.</p>\n<p>&mdash; W3Techs (@W3Techs) <a href=\"https://twitter.com/W3Techs/status/969523570530451456?ref_src=twsrc%5Etfw\">March 2, 2018</a></p></blockquote>\n<p></p>\n<p>The internet is larger than the top 10 million sites. According to <a href=\"http://www.internetlivestats.com/total-number-of-websites/\">Internet live stats</a>, there are close to 2 billion sites on the internet although a majority of them are inactive.</p>\n<p>W3Techs&#8217; numbers show that WordPress&#8217; use is growing on sites that receive a lot of traffic and shows no signs of slowing down as it makes <a href=\"https://wptavern.com/how-important-is-jetpack-on-wordpress-road-to-50-market-share\">its way towards 50%</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 06 Mar 2018 10:22:36 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:19;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:111:\"WPTavern: New Plugin Makes WordPress Core Updates More Secure by Requiring Cryptographic Signature Verification\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=78171\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:122:\"https://wptavern.com/new-plugin-makes-wordpress-core-updates-more-secure-by-requiring-cryptographic-signature-verification\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4278:\"<p>In 2016, WordFence <a href=\"https://www.wordfence.com/blog/2016/11/hacking-27-web-via-wordpress-auto-update/\">published their findings</a> of a vulnerability that could have compromised the servers that are used to send out WordPress updates. It turned out to be a complex, obscure vulnerability that ignited a conversation surrounding the security of api.wordpress.org and what could happen if the servers were compromised.</p>\n<p>One idea that was brought forth is to digitally sign WordPress core, theme, and plugin updates. For at least five years, <a href=\"https://core.trac.wordpress.org/ticket/25052\">a trac ticket</a> has laid semi-dormant with this idea in mind.</p>\n<p>Fifteen months ago, Scott Arciszewski, Chief Development Officer for Paragon Initiative Enterprises, who is most widely known for his <a href=\"https://paragonie.com/blog/2017/02/cryptographically-secure-php-development\">cryptography engineering work</a>, <a href=\"https://web.archive.org/web/20170214062414/https://medium.com/@CiPHPerCoder/stopmullware-on-the-security-of-27-of-the-websites-on-the-internet-298a7e5b6871\">published an article</a> that has since been taken down, expressing his strong desire for Matt Mullenweg to make secure cryptographic signatures a priority. Mullenweg responded to his post with <a href=\"https://medium.com/@photomatt/wordpress-and-update-signing-51501213e1\">one of his own</a> stating that although WordPress update signing is important, it&#8217;s not a high priority.</p>\n<p>&#8220;We will at some point; as said above it’s a good idea — can’t hurt, might help,&#8221; Mullenweg responded when asked if WordPress was ever going to do update signing. &#8220;There are, however, some more important security issues in front of it, that impact millions of sites in the real world, so we are prioritizing those issues above a nice-to-have, defense in-depth effort.&#8221;</p>\n<h2>Eric Mann Launches Secure WordPress Updates Plugin</h2>\n<p>While WordPress does not digitally sign updates, Eric Mann, founder of <a href=\"https://displace.tech/\">Displace Technologies, LLC</a>, has <a href=\"https://ttmm.io/tech/introducing-secure-updates-for-wordpress/\">created and released</a> a new plugin that adds code signing to WordPress core updates. It&#8217;s called DGXPCO or <a href=\"https://wordpress.org/plugins/dgxpco/\">Digital Guarantees for eXplicitly Permitted Core Operations</a>. You&#8217;ll find it on the plugin directory by searching for DGXPCO.</p>\n<p>When installed and activated, the plugin integrates with the core updater and requires that any core update must have a valid signature before it can be installed. The signature provides a secondary source of truth that confirms the integrity of the files. The signatures are created using a Ed25519 public/private keypair and <a href=\"https://github.com/jedisct1/libsodium\">Libsodium</a> to sign the files’ contents.</p>\n<p>Mann keeps the private key offline and has published the public key online. The public key will not change and if a core update is signed by a different key, it is a red flag and the update should be avoided. In addition, commits made to the <a href=\"https://github.com/DisplaceTech/release-hashes\">release hashes repository</a> on GitHub are signed with <a href=\"https://keybase.io/eamann\">Mann&#8217;s PGP key</a> to verify that he is the one who added new code.</p>\n<p>Mann admits that the solution is not fool-proof and is working towards improving it. In future versions, the plugin will only notify the user of a WordPress core update if a digital signature is available. Plugins and themes are on the roadmap as well with the ability to opt-in.</p>\n<p>Although he is the only person allowed to digitally sign packages, the model is not sustainable.</p>\n<p>&#8220;As I prove out the update system, I’ll also begin adding sets of public keys that are scoped to specific sets of packages,&#8221; Mann said. &#8220;This will, for example, allow me to whitelist a small number of trusted developers to also sign core packages. It might also empower plugin developers to sign their own releases (but not anyone else’s).&#8221;</p>\n<p>Mann is seeking feedback and is hoping the project provides evidence that something like it can be added to WordPress core.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 03 Mar 2018 00:56:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:20;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"Post Status: Marketing and positioning WordPress products — Draft podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=44157\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://poststatus.com/marketing-positioning-wordpress-products-draft-podcast/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2776:\"<p>Welcome to the Post Status <a href=\"https://poststatus.com/category/draft\">Draft podcast</a>, which you can find <a href=\"https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008\">on iTunes</a>, <a href=\"https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast\">Google Play</a>, <a href=\"http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast\">Stitcher</a>, and <a href=\"http://simplecast.fm/podcasts/1061/rss\">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Brian Krogsgard and co-host Brian Richards.</p>\n<p>This week BK and BR discuss a number of different aspects surrounding marketing and selling WordPress products and services. The conversation flows from selling benefits vs features, to social proof, to marketing and conversion funnels, to understanding and reacting to the problem space, to customer support, and many things in between. Whether you’re already selling products or services, about to sell something, or routinely buy things, there’s likely something for you in this episode.</p>\n<p></p>\n<h3>Links</h3>\n<ul>\n<li>Krogs’ <a href=\"https://wordpress.tv/2015/12/13/brian-krogsgard-how-to-build-a-compelling-wordpress-product-or-service\">WCUS funnel talk</a>: and <a href=\"https://cdn.poststatus.com/wp-content/uploads/2015/12/krogsgard-wc-us-2015-presentation.pdf\">slides</a></li>\n<li><a href=\"https://wpsessions.com/sessions/understand-price-anchoring/\">Price Anchoring session</a> on WPS</li>\n<li><a href=\"https://poststatus.com/marketing-wordpress-products/\">Tips for marketing WordPress products</a></li>\n<li><a href=\"https://poststatus.com/resources/marketing-success-wordpress-case-study-siteground/\">SiteGround’s Publish presentation</a></li>\n<li><a href=\"https://www.ted.com/talks/barry_schwartz_on_the_paradox_of_choice\">TED talk on decision fatigue and the paradox of choice</a> (also good “<a href=\"https://www.ted.com/talks/dan_gilbert_researches_happiness\">Why we make bad decisions</a>”)</li>\n<li><a href=\"https://stripe.com/atlas/guides/saas-pricing\">Stripe Atlas guide to SaaS pricing</a></li>\n</ul>\n<h3>Sponsor: SiteGround</h3>\n<p><a href=\"https://www.siteground.com/wordpress-hosting.htm/?utm_source=post_status&utm_medium=banner&utm_campaign=ps_ads\">SiteGround</a> is engineered for speed, built for security, and crafted for WordPress. They offer feature-rich managed WordPress hosting with premium support, and are officially recommended by WordPress.org. Check out <a href=\"https://siteground.com/poststatus/?utm_source=post_status&utm_medium=banner&utm_campaign=ps_ads\">SiteGround&#8217;s website</a> for a special deal for Post Status listeners, and thanks to SiteGround for being a Post Status partner.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 02 Mar 2018 20:24:41 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Katie Richards\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:21;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"WPTavern: 4,500 Plugins Need Your Help in Determining Gutenberg Compatibility\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=78194\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"https://wptavern.com/4500-plugins-need-your-help-in-determining-gutenberg-compatibility\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2608:\"<p>One of the keys to a successful roll out of Gutenberg is plugin compatibility. Without it, users will experience unnecessary frustration and hamper enthusiasm of the new editor. In an effort to figure out what plugins are already compatible with Gutenberg, Daniel Bachhuber <a href=\"https://make.wordpress.org/core/2018/03/01/introducing-the-gutenberg-plugin-compatibility-database/\">has created</a> a <a href=\"https://plugincompat.danielbachhuber.com/\">Gutenberg Plugin Compatibility Database</a>.</p>\n<img />Gutenberg Plugin Compatibility Database\n<p>The database contains 5,000 plugins that represent more than 90% of the total active install count. Plugins are compatible with Gutenberg if they meet the following two requirements.</p>\n<ul>\n<li>A WordPress user can perform the same functional task with Gutenberg active. For instance, if the plugin includes an &#8216;Add Media&#8217; button, it&#8217;s considered Gutenberg-compatible when it has a block registered for the Gutenberg inserter.</li>\n<li>There are no (obvious) errors when the WordPress plugin is active alongside Gutenberg.</li>\n</ul>\n<p>In order to participate in the testing process, you&#8217;ll need to <a href=\"https://plugincompat.danielbachhuber.com/#account-details/\">register an account</a> on the site. Once approved, testers will be able to create a fresh sandboxed WordPress install on the site and test randomly selected plugins. After a manual review is complete, plugins will be marked as <code>is_compatible=yes</code> or <code>is_compatible=no</code>.</p>\n<p>Some plugins are already classified with <code>is_compatible=likely_yes</code> or <code>is_compatible=likely_</code>. As reports are completed, two pie charts that display compatibility results at the bottom of the site update automatically.</p>\n<p>Bachhuber estimates that if each plugin takes about a minute to test, they&#8217;ll need roughly 75 person-hours to get through the remaining 4,500 plugins in the database. This project is a great opportunity for individuals and businesses to contribute back to WordPress via the <a href=\"https://ma.tt/2014/09/five-for-the-future/\">Five for The Future initiative</a>.</p>\n<p>Ideal testers are those who can review dozens of plugins, but even reviewing a few will help the project. If you&#8217;re interested in contributing, check out the project&#8217;s <a href=\"https://github.com/danielbachhuber/gutenberg-plugin-compatibility#gutenberg-plugin-compatibility\">GitHub page</a> to learn what&#8217;s involved in the testing process. Alternatively, visitors can watch the following YouTube video.</p>\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 02 Mar 2018 00:57:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:22;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"Dev Blog: The Month in WordPress: February 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5613\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wordpress.org/news/2018/03/the-month-in-wordpress-february-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5935:\"<p>Judging by the flurry of activity across the WordPress project throughout February, it looks like everyone is really getting into the swing of things for 2018. There have been a lot of interesting new developments, so read on to see what the community has been up to for the past month.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>WordPress 4.9.3 &amp; 4.9.4</h2>\n\n<p>Early in the month, <a href=\"https://wordpress.org/news/2018/02/wordpress-4-9-3-maintenance-release/\">version 4.9.3 of WordPress was released</a>, including a number of important bug fixes. Unfortunately it introduced a bug that prevented many sites from automatically updating to future releases. To remedy this issue, <a href=\"https://wordpress.org/news/2018/02/wordpress-4-9-4-maintenance-release/\">version 4.9.4 was released</a> the following day requiring many people to manually update their sites.</p>\n\n<p>While this kind of issue is always regrettable, the good thing is that it was fixed quickly, and that not all sites had updated to 4.9.3 yet, which meant they bypassed the bug in that version.</p>\n\n<p>You can find out more technical information about this issue <a href=\"https://make.wordpress.org/core/2018/02/06/wordpress-4-9-4-release-the-technical-details/\">on the Core development blog</a>.</p>\n\n<h2>The WordCamp Incubator is Back</h2>\n\n<p>In 2016, the Global Community Team ran an experimental program to help spread WordPress to underserved areas by providing more significant organizing support for their first WordCamp event. This program was dubbed the WordCamp Incubator, and it was so successful in the three cities where it ran that <a href=\"https://wordpress.org/news/2018/02/wordcamp-incubator-2-0/\">the program is back for 2018</a>.</p>\n\n<p>Right now, the Community Team is looking for cities to be a part of this year’s incubator by <a href=\"https://wordcampcentral.polldaddy.com/s/wordcamp-incubator-program-2018-city-application\">taking applications</a>. Additionally, each incubator community will need an experienced WordCamp organizer to assist them as a co-lead organizer for their event — if that sounds interesting to you, then you can <a href=\"https://wordcampcentral.polldaddy.com/s/wordcamp-incubator-program-2018-co-lead-application\">fill in the application form for co-leads</a>.</p>\n\n<p>You can find out further information about the WordCamp Incubator <a href=\"https://make.wordpress.org/community/2018/02/19/wordcamp-incubator-program-2018-announcement/\">on the Community Team blog</a>.</p>\n\n<h2>WordPress Meetup Roundtables scheduled for March</h2>\n\n<p>In order to assist local WordPress meetup organizers with running their meetup groups, some members of the Community Team have organized <a href=\"https://make.wordpress.org/community/2018/02/23/wordpress-meetup-roundtables-scheduled-for-march/\">weekly meetup roundtable discussions through the month of March</a>.</p>\n\n<p>These will be run as video chats at 16:00 UTC every Wednesday this month and will be a great place for meetup organizers to come together and help each other out with practical ideas and advice.</p>\n\n<p>If you are not already in the WordPress meetup program and would like to join, you can find out more information in <a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/welcome/\">the WordPress Meetup Organizer Handbook</a>.</p>\n\n<h2>GDPR Compliance in WordPress Core</h2>\n\n<p>The General Data Protection Regulation (GDPR) is an upcoming regulation that will affect all online services across Europe. In order to prepare for this, a working group has been formed to make sure that WordPress is compliant with the GDPR regulations.</p>\n\n<p>Aside from the fact that this will be a requirement for the project going forward, it will also have an important and significant impact on the privacy and security of WordPress as a whole. The working group has posted <a href=\"https://make.wordpress.org/core/2018/02/19/proposed-roadmap-tools-for-gdpr-compliance/\">their proposed roadmap</a> for this project and it looks very promising.</p>\n\n<p>To get involved in building WordPress Core, jump into the #gdpr-compliance channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>, and follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Further Reading:</h2>\n\n<ul>\n    <li>WPShout published <a href=\"https://wpshout.com/complete-guide-wordpress-security/\">a thorough guide to WordPress security</a>.</li>\n    <li>The Community Team has published interesting statistics from the WordCamp program in <a href=\"https://make.wordpress.org/community/2018/02/27/wordcamps-in-2016/\">2016</a> and <a href=\"https://make.wordpress.org/community/2018/02/28/wordcamps-in-2017/\">2017</a>.</li>\n    <li><a href=\"https://make.wordpress.org/community/2018/02/15/potential-addition-of-a-new-onboarding-team/\">An intriguing proposal has been made</a> for a new ‘Onboarding’ team to be started in the WordPress project.</li>\n    <li>The new editing experience for WordPress, named Gutenberg, continues to be actively developed with <a href=\"https://make.wordpress.org/core/2018/02/16/whats-new-in-gutenberg-16th-february/\">a feature-packed release</a> this past month.</li>\n    <li>The Advanced WordPress Facebook group <a href=\"https://www.youtube.com/watch?v=4vS_jR5-nIo\">held an interview with WordPress co-founder, Matt Mullenweg</a> about the Gutenberg project.</li>\n    <li><a href=\"https://make.wordpress.org/meta/2018/02/27/two-factor-authentication-on-wp-org/\">Two factor authentication is on its way to the WordPress.org network</a> — this will be a great improvement to the overall security of the project.</li>\n</ul>\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\">submit it here</a>.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 01 Mar 2018 08:41:04 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:23;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"WPTavern: WPWeekly Episode 306 – AMP, GDPR, and Brewing Beer At The Boss’ House\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=78185&preview=true&preview_id=78185\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://wptavern.com/wpweekly-episode-306-amp-gdpr-and-brewing-beer-at-the-boss-house\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1707:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> joins me live from Hutchinson, KS, to talk about the news of the week. We started off the show discussing the GDPR and the number of things that need to be considered surrounding the right to be forgotten.</p>\n<p>We also have a lengthy conversation about AMP, the open web, and Automattic&#8217;s relationship with Google. Last but not least, we discussed Automattic&#8217;s recent hiring of Kinsey Wilson to be president of the company.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wptavern.com/matt-cromwell-hosts-matt-mullenweg-in-qa-gutenberg-interview\">Matt Cromwell Hosts Matt Mullenweg in Q&amp;A Gutenberg Interview</a><br />\n<a href=\"https://wptavern.com/new-team-forms-to-facilitate-gdpr-compliance-in-wordpress-core\">New Team Forms to Facilitate GDPR Compliance in WordPress Core</a><br />\n<a href=\"https://www.poynter.org/news/one-time-npr-and-nyt-digital-chief-new-adventure-wordpress\">For one-time NPR and NYT digital chief, a new adventure: WordPress</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, March 7th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #306:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 01 Mar 2018 02:19:45 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:24;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:38:\"HeroPress: Changes Coming To HeroPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2471\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:115:\"https://heropress.com/changes-coming-heropress/#utm_source=rss&utm_medium=rss&utm_campaign=changes-coming-heropress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4198:\"<p>Over the last few months, I’ve been having some deep talks with my <a href=\"https://twitter.com/mysweetcate\">HeroPress partner</a> about what the future of HeroPress looks like. We came up with some changes that feel deeply satisfying. Changes we think should help HeroPress, help readers, and help us as content producers. So here we go.</p>\n<h3>Financial Changes</h3>\n<p>At various times in the past people have told me that the time I spend on HeroPress is worth compensation. When I first started it as a blog, I had no intention of getting money from it. However, being compensated for my time helped ease the burden on my family.</p>\n<blockquote><p>With that in mind, last fall I test-drove a donation page based on interest from some in the community.</p></blockquote>\n<p>It was a good idea, and I’m thankful for the support I received, but for now it’s not the right path.</p>\n<p>So, I’ve pulled the donation page from the site and am no longer accepting site sponsors. You’ll notice I do have a Sponsorship page, but it lists organizations that have made material contributions like hosting, plugins, etc.</p>\n<h3>Content Changes</h3>\n<p>We’ve been publishing every Wednesday for several years now. Over time, readership has climbed quite a bit. That’s great, but it means that many current readers have never seen the earlier content, which remains quite evergreen.</p>\n<blockquote><p>To address this, we’re going to do new HeroPress essays once a month. The other weeks of the month will be replays of earlier essays.</p></blockquote>\n<p>This allows for some breathing room in gathering new contributors and brings back some really great content that shouldn’t be forgotten.</p>\n<p>It also opens up my time to explore the community more. To see if there are new ways that people, particularly on the fringe, can be helped. Sharing stories is useful, but are there other opportunities and needs we’re missing?</p>\n<h3>The Future</h3>\n<p>So HeroPress will continue. I still love doing it. At various times we’ve discussed making it bigger, doing grand things. But not now. For now we’re going to let it grow organically and continue letting it serve its purpose: to give voice to WordPress stories, to make them known, to inspire.</p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Changes Coming To HeroPress\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Changes%20Coming%20To%20HeroPress&via=heropress&url=https%3A%2F%2Fheropress.com%2Fchanges-coming-heropress%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Changes Coming To HeroPress\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fchanges-coming-heropress%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fchanges-coming-heropress%2F&title=Changes+Coming+To+HeroPress\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Changes Coming To HeroPress\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/changes-coming-heropress/&media=https://heropress.com/wp-content/plugins/rtsocial/images/default-pinterest.png&description=Changes Coming To HeroPress\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Changes Coming To HeroPress\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/changes-coming-heropress/\" title=\"Changes Coming To HeroPress\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/changes-coming-heropress/\">Changes Coming To HeroPress</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 28 Feb 2018 12:00:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:25;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"WPTavern: New Team Forms to Facilitate GDPR Compliance in WordPress Core\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=78149\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"https://wptavern.com/new-team-forms-to-facilitate-gdpr-compliance-in-wordpress-core\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6200:\"<p>As May 25th, the enforcement date for the <a href=\"https://www.eugdpr.org/\">General Data Protection Regulation</a> (GDPR) draws near, individuals and businesses are scrambling to make sure they&#8217;re compliant. I&#8217;ve read a number of blog posts throughout the WordPress community explaining the GDPR and what needs to be done for compliance and it&#8217;s a tough thing to grasp.</p>\n<p>The EU GDPR was designed to harmonize data privacy laws across Europe, protect and empower European citizens data privacy, and reshape the way organizations across the region approach data privacy. In reading the regulation and various blog posts, the terminology makes it appear that the changes are geared towards large, international businesses that process personal data.</p>\n<p>However, <a href=\"https://www.smashingmagazine.com/2018/02/gdpr-for-web-developers/\">according to Heather Burns</a>, a digital law specialist in Glasgow, Scotland, the GDPR affects sites large and small.</p>\n<blockquote><p>GDPR applies to all businesses, organizations, sectors, situations, and scenarios, regardless of a business’s size, head count, or financial turnover. A small app studio is every bit as beholden to these rules as a large corporation.</p></blockquote>\n<p>Determining if your site needs to be compliant and how to accomplish it can be overwhelming. If you do business in Europe or collect data from European users, you must protect that data in accordance with the GDPR as if you were in Europe. For example, if you operate a blog with a contact form that saves entries to the database from people who live in Europe, you must make your site GDPR compliant.</p>\n<p>There are a lot of aspects to the GDPR and while an excerpt can not fully explain it at a glance, there are a few themes that stick out to me.</p>\n<ul>\n<li>Be upfront and concise about what data is stored, sent, and used on the site or form.</li>\n<li>Give the user a chance to consent without automatically opting them in.</li>\n<li>Collect the least amount of data possible for legitimate business purposes.</li>\n<li>Provide a way for users to download or access their data and remove it.</li>\n</ul>\n<p>Many of these are common sense practices that are not implemented on many sites, WP Tavern included. How often do you visit a <a href=\"https://wptavern.com/contact-me\">site&#8217;s contact form</a> and see an explanation as to why those fields are required, where the data is stored, where it goes, and what is done with it? This is something I&#8217;ll be working on in the next few weeks.</p>\n<h2>Making WordPress Core GDPR Compliant</h2>\n<p>Earlier <a href=\"https://make.wordpress.org/core/2018/02/13/gdpr-compliance-agenda-february-14/\">this month</a>, a number of volunteers gathered to discuss GDPR compliance in WordPress core. The meeting took place in a newly created channel #gdpr-compliance that&#8217;s accessible to anyone with a <a href=\"https://make.wordpress.org/chat/\">SlackHQ account</a>.</p>\n<p>The team created a <a href=\"https://make.wordpress.org/core/2018/02/19/proposed-roadmap-tools-for-gdpr-compliance/\">proposed roadmap</a> to add privacy tools to core. The plan includes the following ideas:</p>\n<ul>\n<li>Add notices for registered users and commenters on what data is collected in core by default and explain why.</li>\n<li>Create guidelines for plugins on how to become GDPR compliant.</li>\n<li>Create and add tools to facilitate compliance and privacy in general.</li>\n<li>Add documentation and help for site owners to learn how to use these tools.</li>\n</ul>\n<p><a href=\"https://wordpress.slack.com/archives/C9695RJBW/p1519227959000760\">Earlier today</a>, <a href=\"https://make.wordpress.org/core/2018/02/27/gdpr-compliance-chat-recap-february-21st/\">the team met</a> and created a <a href=\"https://github.com/gdpr-compliance/info\">GitHub folder</a> that houses the roadmap, knowledge base, trac ticket list, and other items associated with the project. There was also some discussion on whether the interface provided by the <a href=\"https://www.gdprwp.com/\">GDPR for WordPress project</a> is a good foundation for core and plugins to report personal data. The GDPR Compliance Slack channel is also a good place to ask questions and discuss data privacy in general.</p>\n<p>Popular form plugins such as <a href=\"https://docs.gravityforms.com/wordpress-gravity-forms-and-gdpr-compliance/\">GravityForms</a> and <a href=\"https://ninjaforms.com/gdpr-compliance-wordpress-forms/\">NinjaForms</a> have documentation available that explains GDPR compliance and how it applies to their products. For those who use the Contact Form module in Jetpack which <a href=\"https://github.com/Automattic/jetpack/issues/8430\">saves entries to the database by default</a>, you&#8217;ll need to wait for further updates. <a href=\"https://woocommerce.com/2017/12/gdpr-compliance-woocommerce/\">WooCommerce</a> and <a href=\"https://en.support.wordpress.com/automattic-gdpr/\">Automattic</a> have announced that they expect their products will be GDPR compliant by the time it goes into effect later this year.</p>\n<h2>GDPR Resources</h2>\n<p>If you&#8217;re like me, reading about the GDPR and its policies can make your head spin. It&#8217;s important to keep in mind that at the heart of the GDPR are common sense behaviors for handling personal data. If you&#8217;d like to learn more about the GDPR, check out the following resources.</p>\n<ul>\n<li><a href=\"https://www.smashingmagazine.com/2018/02/gdpr-for-web-developers/\">How GDPR Will Change The Way You Develop</a></li>\n<li><a href=\"https://wordpress.tv/2016/11/01/heather-burns-get-to-grips-with-gdpr/\">Heather Burns: Get To Grips With GDPR</a></li>\n<li><a href=\"https://webdevlaw.uk/data-protection-gdpr/\">Data protection (GDPR)</a></li>\n<li><a href=\"https://wptavern.com/wpweekly-episode-298-gdpr-user-privacy-and-more-with-heather-burns\">WPWeekly Episode 298 – GDPR, User Privacy, and More With Heather Burns</a></li>\n<li><a href=\"https://www.eugdpr.org/gdpr-faqs.html\">GDPR FAQs</a></li>\n<li><a href=\"https://premium.wpmudev.org/blog/gdpr-compliance/\">Is Your Website GDPR Compliant? How to Get Ready for the General Data Protection Regulations</a></li>\n</ul>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 27 Feb 2018 23:20:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:26;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"WPTavern: Matt Cromwell Hosts Matt Mullenweg in Q&amp;A Gutenberg Interview\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=78166\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wptavern.com/matt-cromwell-hosts-matt-mullenweg-in-qa-gutenberg-interview\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2903:\"<p>Matt Cromwell, Head of Support and Community Outreach for <a href=\"https://givewp.com/\">GiveWP</a> and an administrator for the <a href=\"https://www.facebook.com/groups/advancedwp/\">Advanced WordPress Facebook group</a>, hosted a question and answer session about Gutenberg with Matt Mullenweg earlier today. The interview concludes the <a href=\"http://www.advancedwp.org/awp-gutenberg-interview-series/\">Advanced WordPress Gutenberg interview series</a> that includes, <a href=\"https://wordpress.tv/2018/02/06/awp-gutenberg-interview-series-with-joost-de-valk/\">Joost de Valk</a>, <a href=\"https://wordpress.tv/2018/02/18/awp-gutenberg-interview-series-with-ahmad-awais/\">Ahmad Awais</a>, and <a href=\"https://youtu.be/ic_du_lsbLE\">Tammie Lister</a>.</p>\n<p>Mullenweg began the session by explaining why there is a concerted effort to improve the editor. &#8220;It&#8217;s really almost any user test that you watch,&#8221; he said. &#8220;Both watching people brand new to WordPress and those with years of experience on how they used the editor. It became obvious that we could make something more accessible to new users, but also, a lot more powerful for developers.&#8221;</p>\n<p>With regards to a release date, Mullenweg confirmed that Gutenberg will ship when it&#8217;s ready. Later in the interview, Mullenweg was asked if he could provide a more concrete answer.</p>\n<p>&#8220;For those who want a concrete date, we will have one or two orders of magnitude more users of Gutenberg in April,&#8221; he responded. &#8220;That doesn&#8217;t mean necessarily a 5.0 release, but it does mean that if you&#8217;re planning on aiming for something where a lot of users will be interacting with Gutenberg, aim for April.&#8221;</p>\n<p>While the project&#8217;s name is Gutenberg, some developers have <a href=\"https://github.com/WordPress/gutenberg/issues/4681\">expressed concerns</a> on how the name will be deprecated if at all once it&#8217;s merged into core. There are a number of educational resources, products, and tool kits referencing Gutenberg that could be a source of confusion once it&#8217;s merged into core and referred to as the editor.</p>\n<p>Mullenweg was asked if the Gutenberg name will be deprecated. &#8220;We&#8217;ll see,&#8221; he replied. &#8220;I don&#8217;t think it&#8217;s the most important thing to figure out right now. We&#8217;re tackling some much bigger issues. If the plugin is useful, we&#8217;ll keep it around for beta testing, if not, we&#8217;ll have it turn itself off.&#8221;</p>\n<p>Mullenweg concluded the interview thanking the <a href=\"https://www.facebook.com/groups/advancedwp/\">Advanced WordPress Facebook</a> group for the passion and discussions shared by members. The group has more than 30K members, is free to join, well maintained, and often filled with interesting topics. You can watch the interview in its entirety below.</p>\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 26 Feb 2018 23:32:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:27;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"Post Status: Observations on a maturing ecosystem — Draft podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=43914\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://poststatus.com/observations-maturing-ecosystem-draft-podcast/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1743:\"<p>Welcome to the Post Status <a href=\"https://poststatus.com/category/draft\">Draft podcast</a>, which you can find <a href=\"https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008\">on iTunes</a>, <a href=\"https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast\">Google Play</a>, <a href=\"http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast\">Stitcher</a>, and <a href=\"http://simplecast.fm/podcasts/1061/rss\">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Brian Krogsgard and co-host Brian Richards.</p>\n<p>In this episode, the Brians chat about the steady change that has played out in the WordPress ecosystem throughout the past decade and speculate about what is still to come. One aspect they explore rather deeply is the future trajectory of a website’s purpose and the role WordPress has to play in this transition. Plus, don’t miss their conversation about the new WordPress.com president and Google’s move to hire WordPress talent.</p>\n<p></p>\n<h3>Links</h3>\n<ul>\n<li><a href=\"https://memos.blog/2018/02/15/kinsey-wilson-named-president-of-wordpress-com/\">New WordPress.com President announcement</a></li>\n<li><a href=\"https://medinathoughts.com/2018/01/29/wordpress-google/\">Google&#8217;s WordPress job opportunity</a></li>\n<li><a href=\"https://micro.blog/\">micro.blog</a></li>\n</ul>\n<h3>Sponsor: SearchWP</h3>\n<p>SearchWP makes WordPress search better. Instantly improve your site search without writing a line of code! SearchWP enables custom algorithms, searching custom fields, product data, and much more. Improve your site’s search today with our partner, <a href=\"https://searchwp.com\">SearchWP</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 25 Feb 2018 12:59:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Katie Richards\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:28;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"WPTavern: WordCamp Orange County Plugin-A-Palooza First Place Prize is $3,000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=78153\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://wptavern.com/wordcamp-orange-county-plugin-a-palooza-first-place-prize-is-3000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2009:\"<p><a href=\"https://2018.oc.wordcamp.org/\">WordCamp Orange County</a>, CA, 2018 will take place June 9-10. In addition to the regular WordCamp format of speakers sharing their knowledge, there is also a mini-event called Plugin-A-Palooza. This year marks the fourth contest where plugin authors will compete for one of three prizes.</p>\n<ul>\n<li>First Place – <strong>$3,000</strong> cash and 1 Sucuri Business (VIP) license</li>\n<li>Second Place – <strong>$1,500</strong> cash and 1 Sucuri Business (VIP) license</li>\n<li>Third Place – <strong>$500</strong> cash</li>\n</ul>\n<p>Teams will be judged live based on the following criteria:</p>\n<ul>\n<li>Originality</li>\n<li>User Experience/User Interface</li>\n<li>Code Quality</li>\n<li>Presentation of the plugin on WordPress.org.</li>\n</ul>\n<p>Teams can have up to three participants, are required to build their own plugin, and upload it to the WordPress plugin directory by May 18th. Teams will present their plugins to the judges and audience on June 10th.</p>\n<p>Previous winners and plugins include:</p>\n<ul>\n<li>2015 Devin Walker- <a href=\"https://wordpress.org/plugins/wp-rollback/\">WP Rollback</a></li>\n<li>2016 Robert Gillmer &#8211; <a href=\"https://wordpress.org/plugins/wp-documentor/\">WP Documentor</a></li>\n<li>2017 Natalie MacLees &#8211; <a href=\"https://wordpress.org/plugins/simple-event-listing/\">Simple Event Listing</a></li>\n</ul>\n<p>Bridget Willard, WordCamp Orange County organizer, says the event encourages innovation and personal development which are important parts of WordCamps. &#8220;The first plugin that won was WPRollback by WordImpress,&#8221; she said. &#8220;It&#8217;s widely used in the community now. We&#8217;d love to see other camps doing this.&#8221;</p>\n<p>If you&#8217;re interested in participating in Plugin-A-Palooza at WordCamp Orange County this year, you&#8217;ll need to fill out this <a href=\"https://goo.gl/forms/CpDCsXQRqNI0cil23\">entry form</a>. The deadline for submissions is March 5th.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 23 Feb 2018 22:46:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:29;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"Dev Blog: WordCamp Incubator 2.0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5577\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wordpress.org/news/2018/02/wordcamp-incubator-2-0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2449:\"<p><a href=\"https://central.wordcamp.org/\">WordCamps</a> are informal, community-organized events that are put together by a team of local WordPress users who have a passion for growing their communities. They are born out of active WordPress meetup groups that meet regularly and are able to host an annual WordCamp event. This has worked very well in many communities, with over 120 WordCamps being hosted around the world in 2017.<br /></p>\n\n<p>Sometimes though, passionate and enthusiastic community members can’t pull together enough people in their community to make a WordCamp happen. To address this, we introduced <a href=\"https://wordpress.org/news/2016/02/experiment-wordcamp-incubator/\">the WordCamp Incubator program</a> in 2016.<br /></p>\n\n<p>The goal of the incubator program is <strong>to help spread WordPress to underserved areas by providing more significant organizing support for their first WordCamp event.</strong> In 2016, members of <a href=\"https://make.wordpress.org/community/\">the global community team</a> worked with volunteers in three cities — Denpasar, Harare and Medellín — giving direct, hands-on assistance in making local WordCamps possible. All three of these WordCamp incubators <a href=\"https://make.wordpress.org/community/2017/06/30/wordcamp-incubator-report/\">were a great success</a>, so we&#x27;re bringing the incubator program back for 2018.<br /></p>\n\n<p>Where should the next WordCamp incubators be? If you have always wanted a WordCamp in your city but haven’t been able to get a community started, this is a great opportunity. We will be taking applications for the next few weeks, then will get in touch with everyone who applied to discuss the possibilities. We will announce the chosen cities by the end of March.<br /></p>\n\n<p><strong>To apply, </strong><a href=\"https://wordcampcentral.polldaddy.com/s/wordcamp-incubator-program-2018-city-application\"><strong>fill in the application</strong></a><strong> by March 15, 2018.</strong> You don’t need to have any specific information handy, it’s just a form to let us know you’re interested. You can apply to nominate your city even if you don’t want to be the main organizer, but for this to work well we will need local liaisons and volunteers, so please only nominate cities where you live or work so that we have at least one local connection to begin.<br /></p>\n\n<p>We&#x27;re looking forward to hearing from you!<br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 21 Feb 2018 22:53:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:30;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"HeroPress: How To Build A Company With WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://heropress.com/?post_type=heropress-essays&p=2465\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:120:\"https://heropress.com/essays/build-company-wordpress/#utm_source=rss&utm_medium=rss&utm_campaign=build-company-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:16946:\"<img width=\"960\" height=\"480\" src=\"https://heropress.com/wp-content/uploads/2018/02/022118-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: If you keep showing up, you\'d be surprised what happens.\" />.embed-container { position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%; } .embed-container iframe, .embed-container object, .embed-container embed { position: absolute; top: 0; left: 0; width: 100%; height: 100%; }\n<div class=\"embed-container\"></div>\n<p>&nbsp;</p>\n<h4>Full text of the above video</h4>\n<p>Hey, y&#8217;all! Thanks for inviting me to come share my story on HeroPress. I&#8217;m so excited to be able to talk a little bit to the HeroPress community.</p>\n<p>So, and I&#8217;m doing a video blog or vlog because this is what I do; I&#8217;m a YouTube person. I create YouTube videos every single Wednesday for what I call WordPress Wednesday to help you improve your online marketing inside of the WordPress world. So I&#8217;m used to doing videos, and I asked if I could do my HeroPress story in this format; and they said go for it, so I&#8217;m excited to talk to you at least in a face-to-face scenario.</p>\n<p>I&#8217;m going to  share a little bit of my story and tell you how WordPress basically became my avenue for becoming a millionaire in just five short years.</p>\n<h3>The Beginning</h3>\n<p>So in 1998, I created my very first ever HTML website. My dad was actually doing websites at the time, and I needed a website for my band because that&#8217;s what I wanted to be is a rockstar; so I learned how to build a website, kind of, under his training and a little bit of self-taught stuff and had a lot of fun doing it that way in 1998.</p>\n<p>And then in 2005, I started hearing about WordPress; but in 2008, as I was freelancing around, a client asked me to build him a website. And they said, &#8220;hey, Kori, can you, can you build me a website, but we absolutely have to have it on WordPress?&#8221; I was like, sure, no problem; straight to Google, &#8220;how do you build a WordPress website&#8221;, you know. And over the weekend I pretty much taught myself how to build out a WordPress website, and I loved it.</p>\n<p>My mind was absolutely blown when I saw the drag and drop options inside of menus to create dropdowns, and a form builder; I was just blown away. So those of you who have struggled in the HTML CSS world, you know the magic or the majesty, if you will even, of WordPress and those environments and how easy it makes it. So when I saw that, I really just thought, oh my goodness, this is a full-circle moment for me.</p>\n<blockquote><p>I really want to use WordPress now from here on forward.</p></blockquote>\n<p>So I reached back out to my dad and said, &#8220;hey, dad, you know, this is a tool that our customers, all of our clients, have been asking us for&#8221;. They&#8217;ve been wanting access to their websites, and we&#8217;ve not been able to give it to them because, in the past, they had to download Dreamweaver, you know, Photoshop and an FTP program; and that was just too much nerd code for them. So we wanted to be able to give them something like this, and WordPress definitely was that solution.</p>\n<p>So he and I worked back and forth for a few years learning, really truly learning, WordPress; and then in 2012, we decided to launch together, my mom, my dad and I, decided to launch WebTegrity in San Antonio, Texas. And it was a very small concept initially; you know, we just me, literally, the three of us, and me and my folks. And then we hired on a subcontractor who is a great graphic designer here in town to try to help us with the creative side of things, and we started to grow our team.</p>\n<h3>Going Big Time</h3>\n<p>So how did we, in five years, build it up in such a way that we were able to sell it for a deal of a million dollars&#8217; worth of shares, which ultimately is a $20 million value deal? How did we do that? I&#8217;m going to give you a little bit of insight on how we were able to accomplish that in such a short time.</p>\n<p>So the very first thing I want you to realize is we did this in a saturated industry in San Antonio, Texas. When I did a search for web developer or web design firms back in 2012, I had over 700 results of different either freelancers or agencies or ad agencies or some solution out there that was either in the general area, or in the nearby area, that provided that service. So how did we, in six years, end up becoming number six in the entire city? We ranked in the top 10; how did we do that?</p>\n<blockquote><p>One of the very first things we did, was we niched ourselves; and, thankfully, WordPress was that solution.</p></blockquote>\n<p>In 2012, there was not an agency directly in San Antonio that was trying to be the go-to place for WordPress; and we purposely started stepping up and saying we are WordPress only, WordPress only, WordPress only. So if you were looking for a different type of CMS solution, we were not the right fit for you. And very, very quickly, we also started teaching it in the city; so we would teach other agencies. We provided on-site training; we provided weekend workshops. All for a price tag, of course; but that was one of our revenue streams. And, again, it set us as the authority in the city for WordPress; so really important that you understand how to niche yourselves and not try to be all things to all people.</p>\n<blockquote><p>The second thing we tried to do was really build a culture.</p></blockquote>\n<p>And you can see, I don&#8217;t work around boring walls. Everything that I do has to have creative juices flowing around me, right. We just want to create a great culture, a great environment. So we had to hire the right people. So that&#8217;s my next tip to you is be very, very careful on who you allow into your culture of your business, who you hire on, and certainly who you bring on as a leader in your culture in your community. So one of the things that we did right away was realize that we can&#8217;t teach passion, so you gotta find people that have a passion to nerd out on stuff like this.</p>\n<p>And you have to find people who have great integrity to just do their best at all times, and you have to find people who love to be creative and love to solve problems for clients, right, who aren&#8217;t just salespeople, right? So if you can find those things, you can teach nerd code all day long; so be sure to just find people with the right hearts to join your community and then train them up the right way, be sure that you just grow and grow and grow your culture in a healthy way, right.</p>\n<blockquote><p>And another thing that we did, so this is another tip, was understand how to really build a revenue stream that was going to be sustainable.</p></blockquote>\n<p>All right, so wrap your heads around this one because this one&#8217;s key. Very early on in our model as we were selling WordPress websites, part of my pitch was, oh, it&#8217;s just five grand and no more after that. It&#8217;s a one-time fee and you&#8217;re done. That&#8217;s a horrible business strategy. We learned very early on, inside of WordPress world, that you have rain or shine, right; so there&#8217;s a lot of clients coming or there are no clients.</p>\n<p>You&#8217;re either slammed working from home even in the evening trying to catch up, or you&#8217;re out on the golf course wondering if you&#8217;re going to get a paycheck next week. It&#8217;s really rain or shine. So how do you create a sustainable model in your business, in your small agency, in your startup; how do you do that, so that when those slow seasons come, you can still pay your team members, you can still keep your lights on?</p>\n<p>Well, we were sitting at a WordCamp; and Jason Cohen from WP Engine was keynoting; and one of the things he said right away is, if you don&#8217;t understand how to create a reoccurring revenue stream in your small agency, you will turn your sign to closed in the next year or two. And he was so right; and it was such a light bulb moment for me that I went back straightaway from that weekend WordCamp up in Austin and I started writing out, okay, how can we create a reoccurring revenue stream? What would that look like inside of our industry?</p>\n<p>And, of course, it was support packages. We didn&#8217;t call them maintenance plans. We certainly didn&#8217;t use retainer, which can have a sense of a negative connotation, right, because of lawyers; sorry! But, still, we didn&#8217;t want to use those words because we&#8217;re already almost creating a, uh, I don&#8217;t think I want to sign up for that type of attitude.</p>\n<p>What we did is we called it support, and very easily, clients were signing up saying, oh, goodness, yes, I need that ongoing support. So use that phrasing, create a model structure where it&#8217;s required, at least for the first 12 months out of the gate as they launch that you are charging them something even as small as $99 a month. And don&#8217;t shortchange yourself on that; put together a great package that you give them that type of value.</p>\n<p>If you were to check out WebTegrity.com, you would see our support plans and what they consist of and the pricing. We&#8217;re very transparent with that. That&#8217;s the way our revenue stream almost doubled our sales in one year and allowed us to keep our lights on when June and July roll around and nobody cares about their websites because they&#8217;re on the beach.</p>\n<blockquote><p>All right, reputation was another huge part of it.</p></blockquote>\n<p>That&#8217;s one of the reasons why we named ourselves WebTegrity, but reputation, understanding that that every client that signs up, whether they&#8217;re a $5,000 website or a $50,000 website gets the same type of boutique-style, white glove, handholding relationship, right? Every single project that you launch, you want to produce the absolute, absolute best. You&#8217;re not shortchanging them; you&#8217;re not, you&#8217;re not wiring something that you hand off to the client and hope to God it doesn&#8217;t break. You really are trying to find the absolute best solution.</p>\n<p>One of the things that also kept us in high standing with our reputation, of course, was offering that training because what we don&#8217;t want to do is keep the veil covered where nobody can see what we&#8217;re doing, right. We really want to be transparent and train our clients the nerd lingo, train the clients what SEO is and what expectations should be. Having that type of open communication really just started to build together a relationship with our clients that they trusted us; and we met their expectation, right. So be sure to hold strongly to your core values for your reputation. Be sure that you&#8217;re asking people to give you great reviews because that&#8217;ll make a difference.</p>\n<blockquote><p>And the last thing I want to talk about is give back.</p></blockquote>\n<p>So at one of the WordCamp US&#8217;s that I went to, Matt himself said, listen, if you&#8217;re making a living with WordPress, you really need to try to figure out how to give back 5% of your time, just 5% of your time a week. How can you do that to give back to the community? Can you start a meet-up group, teach a meetup group; can you facilitate a meetup group where maybe you&#8217;re just the organizer and you never have to speak because you&#8217;re not a fan of speaking?</p>\n<p>Can you organize a WordCamp, volunteer at a WordCamp? Can you write a tutorial and tell people how to do things? Can you teach a workshop; can you make a video?</p>\n<p>And, again, I had a light bulb moment. Of course, I can make videos. So my giveback to the WordPress community is my YouTube channel; every single Wednesday, I&#8217;m creating a video and putting it out there for free to the WordPress world of how to improve your online marketing. That&#8217;s made a huge impact not only, thankfully, inside the WordPress community, but also in my own business model.</p>\n<p>I actually go into WordCamps around the US and people are like, hey, aren&#8217;t you that WordPress girl; don&#8217;t you do videos? It&#8217;s a really cool feeling to be able to give back to the community because I&#8217;ve made my living using WordPress.</p>\n<h3>Understanding</h3>\n<p>So ultimately how did I turn five years into a multi-million dollar buyout? Because we have just recently sold; how did we do that? Ultimately, it was understanding that you have to be able to grow something of value. So as soon as you start your business, you should also be thinking about your exit strategy, right, even in how you name your company.</p>\n<p>If I were to name this Ashton Agency, do you think that I could&#8217;ve just walked away and handed the keys to somebody else named Johnson; it wouldn&#8217;t have worked. Think even about your name; will it stand alone? Can that become a brand that you can hand off and sell as a holistic entity?</p>\n<p>You also want to think about that revenue stream, right, and watch those sales margins. Be sure that your margins are healthy. Don&#8217;t hire until it hurts, until it absolutely hurts. Be sure that you&#8217;re structuring your offerings in such a way that you&#8217;re actually recouping your value. What does that mean? Just understand business better; watch Shark Tank, read more tutorials like this, watch more videos.</p>\n<p>Get a hold of the WordPress community, the core leaders, the speakers that travel around to all the WordCamps. Start following them on Twitter and trying to understand what it is that they&#8217;re training and teaching. There&#8217;s a lot of resources out there for you to gain some ideas from, but ultimately it was me stepping out in the San Antonio community because it was a larger firm here in San Antonio who purchased us.</p>\n<p>So we just kept hammering on the fact that we were the go-to place here in San Antonio for WordPress. We kept training; we kept doing free opportunities, going out and speaking at different events; and people kept seeing us. We kept showing up, so you&#8217;d be surprised what happens. If you keep giving back and you keep showing up to places, you keep establishing yourself as the authority, you keep learning and training and growing your own skill set and growing your team, before you know it, it can happen for you.</p>\n<p>I hope this has been helpful. If you have questions about some of this though, if you&#8217;re trying to grow up your startup, or if you&#8217;re trying to learn how to improve your revenue margins, I&#8217;m always open to a quick twitter conversation or send me an email. I&#8217;d love to connect with you.</p>\n<p>Thanks again for the opportunity to share this on HeroPress.</p>\n<p>Bye, y&#8217;all; catch me over on YouTube. Bye!</p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: How To Build A Company With WordPress\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=How%20To%20Build%20A%20Company%20With%20WordPress&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fbuild-company-wordpress%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: How To Build A Company With WordPress\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fbuild-company-wordpress%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fbuild-company-wordpress%2F&title=How+To+Build+A+Company+With+WordPress\" rel=\"nofollow\" target=\"_blank\" title=\"Share: How To Build A Company With WordPress\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/build-company-wordpress/&media=https://heropress.com/wp-content/uploads/2018/02/022118-150x150.jpg&description=How To Build A Company With WordPress\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: How To Build A Company With WordPress\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/essays/build-company-wordpress/\" title=\"How To Build A Company With WordPress\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/essays/build-company-wordpress/\">How To Build A Company With WordPress</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 21 Feb 2018 14:00:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Kori Ashton\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:31;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Matt: Commuting Time Saved\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=47970\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"https://ma.tt/2018/02/commuting-time-saved/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:344:\"<p>On <a href=\"https://automattic.com/\">Automattic&#x27;s</a> internal <a href=\"https://buddypress.org/\">BuddyPress</a>-powered company directory, we allow people to fill out a field saying how far their previous daily commute was. 509 people have filled that out so far, and they are saving 12,324 kilometers of travel every work day. Wow!</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 19 Feb 2018 18:14:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:32;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"Akismet: Version 4.0.3 of the Akismet WordPress Plugin Is Now Available\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"http://blog.akismet.com/?p=1985\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"https://blog.akismet.com/2018/02/19/version-4-0-3-of-the-akismet-wordpress-plugin-is-now-available/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:867:\"<p>Version 4.0.3 of <a href=\"http://wordpress.org/plugins/akismet/\">the Akismet plugin for WordPress</a> is now available.</p>\n<p>4.0.3 contains a few helpful changes:</p>\n<ul>\n<li>Adds a new scheduled task to clear out old Akismet entries in the <code>wp_commentmeta</code> table that no longer have corresponding comments in <code>wp_comments</code>.  This should help reduce Akismet&#8217;s database usage for some users.</li>\n<li>Adds a new <code>akismet_batch_delete_count</code> action so developers can optionally take action when Akismet comment data is cleaned up.</li>\n</ul>\n<p>To upgrade, visit the Updates page of your WordPress dashboard and follow the instructions. If you need to download the plugin zip file directly, links to all versions are available in <a href=\"http://wordpress.org/plugins/akismet/\">the WordPress plugins directory</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 19 Feb 2018 15:58:10 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Josh Smith\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:33;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"Mark Jaquith: Handling old WordPress and PHP versions in your plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"http://markjaquith.wordpress.com/?p=5544\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:100:\"https://markjaquith.wordpress.com/2018/02/19/handling-old-wordpress-and-php-versions-in-your-plugin/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3563:\"<p>New versions of WordPress are released about three times a year, and WordPress itself supports PHP versions all the way back to 5.2.4.</p>\n<p>What does this mean for you as a plugin developer?</p>\n<p>Honestly, many plugin developers spend too much time supporting old versions of WordPress and <strong>really</strong> old versions of PHP.</p>\n<p>It doesn&#8217;t have to be this way. You don&#8217;t need to support every version of WordPress, and you don&#8217;t have to support every version of PHP. Feel free to do this for seemingly selfish reasons. Supporting old versions is hard. You have to &#8220;unlearn&#8221; new WordPress and PHP features and use their older equivalents, or even have code branches that do version/feature checks. It increases your development and testing time. It increases your support burden.</p>\n<p>Economics might force your hand here&#8230; a bit. You can&#8217;t very well, even in 2018, require that everyone be running PHP 7.1 and the latest version of WordPress. But consider the following:</p>\n<p>97% of WordPress installs are running PHP 5.3 or higher. This gives you namespaces, late static binding, closures, Nowdoc, <strong>__DIR</strong><strong>__</strong>, and more.</p>\n<p>88% of WordPress installs are running PHP 5.4 or higher. This gives you short array syntax, traits, function-array dereferencing, guaranteed <strong>&lt;?=</strong> echo syntax availability, <strong>$this</strong> access in closures, and more.</p>\n<p>You get even more things with PHP 5.5 and 5.6 (64% of installs are running 5.6 or higher), but a lot of the syntactic goodness came in 5.3 and 5.4, with very few people running versions less than 5.4. So stop typing <strong>array()</strong>, stop writing named function handlers for simple <strong>array_map()</strong> uses, and start using namespaces to organize and simplify your code.</p>\n<p>Okay, so&#8230; how?</p>\n<p>I recommend that your main plugin file just be a simple bootstrapper, where you define your autoloader, do a few checks, and then call a method that initializes your plugin code. I also recommend that this main plugin file be PHP 5.2 compatible. This should be easy to do (just be careful not to use <strong>__DIR__</strong>).</p>\n<p>In this file, you should check the minimum PHP and WordPress versions that you are going to support. And if the minimums are not reached, have the plugin:</p>\n<ol>\n<li>Not initialize (you don&#8217;t want syntax errors).</li>\n<li>Display an admin notice saying which minimum version was not met.</li>\n<li>Deactivate itself (optional).</li>\n</ol>\n<p>Do not <strong>die()</strong> or <strong>wp_die()</strong>. That&#8217;s &#8220;rude&#8221;, and a bad user experience. Your goal here is for them to update WordPress or ask their host to move them off an ancient version of PHP, so be kind.</p>\n<p>Here is what I use:</p>\n<p><a href=\"https://gist.github.com/markjaquith/a08623974b37c2cf0207ee2b120b54da\">View code on GitHub</a></p>\n<p></p>\n<p><a href=\"https://twitter.com/markjaquith/status/965605448408813569\">Reach out on Twitter</a> and let me know what methods you use to manage PHP and WordPress versions in your plugin!</p>\n<hr />\n<p><b>Do you need <a href=\"https://coveredwebservices.com/\">WordPress services?</a></b></p>\n<p>Mark runs <a href=\"https://coveredwebservices.com/\">Covered Web Services</a> which specializes in custom WordPress solutions with focuses on security, speed optimization, plugin development and customization, and complex migrations.</p>\n<p>Please reach out to start a conversation!</p>\n[contact-form]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 19 Feb 2018 15:14:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Mark Jaquith\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:34;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"Post Status: How WebDevStudios is serving different market segments — Draft podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=43724\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://poststatus.com/webdevstudios-serving-different-market-segments-draft-podcast/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2637:\"<p>Welcome to the Post Status <a href=\"https://poststatus.com/category/draft\">Draft podcast</a>, which you can find <a href=\"https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008\">on iTunes</a>, <a href=\"https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast\">Google Play</a>, <a href=\"http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast\">Stitcher</a>, and <a href=\"http://simplecast.fm/podcasts/1061/rss\">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Brian Krogsgard and co-host Brian Richards.</p>\n<p>In this episode, Lisa Sabin-Wilson shares about the entangled history of WebDevStudios and eWebscapes and how she and team are targeting every level of the market. WebDevStudios focuses heavily on the upper and enterprise market segments, providing a high degree of attention and support to those clients.</p>\n<p>Sometime in 2017 Lisa did the math on all the lower-end projects that they were referring away and realized that WDS had a prime opportunity to re-introduce her former web studio, eWebscapes, as a way to serve these smaller-scope projects. This rebirth, so to speak, has positioned them to better target local communities, provide staff with more variety of work, and bring simplified processes alongside those they use for larger projects.</p>\n<p></p>\n<h3></h3>\n<h3>Key take-aways</h3>\n<ul>\n<li>Lisa observed a market opportunity and did the math first</li>\n<li>Relaunching started with a solid content strategy</li>\n<li>Simplified processes for managing a project</li>\n<li>Utilized talent already on staff</li>\n<li>Lots of opportunity to target local communities</li>\n<li>Evaluating the success of this strategy after 6 months</li>\n</ul>\n<h3>Links</h3>\n<ul>\n<li><a href=\"https://webdevstudios.com/\">WebDevStudios</a></li>\n<li><a href=\"https://ewebscapes.com/\">eWebscapes</a></li>\n<li><a href=\"https://jenniferbourn.com/profitable-project-plan/\">Profitable Project Plan</a></li>\n<li><a href=\"https://twitter.com/@lisasabinwilson\">Lisa Sabin-Wilson on Twitter</a></li>\n</ul>\n<p><a href=\"https://webdevstudios.com/about/\"><em>Photo Credit</em></a></p>\n<h3>Sponsor: Prospress</h3>\n<p><a href=\"https://prospress.com/\">Prospress</a> makes the WooCommerce Subscriptions plugin, that enables you to turn your online business into a recurring revenue business. Whether you want to ship a box or setup digital subscriptions like I have on Post Status, Prospress has you covered. Check out <a href=\"https://prospress.com/\">Prospress.com</a> for more, and thanks to Prospress for being a Post Status partner.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 16 Feb 2018 22:38:42 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Katie Richards\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:35;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"Matt: No Office Workstyle\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=47949\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"https://ma.tt/2018/02/no-office-workstyle/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3938:\"<p>Reed Albergotti has a great article titled <a href=\"https://www.theinformation.com/articles/latest-amenity-for-startups-no-office\">Latest Amenity for Startups: No Office</a>. You can put in your email to read I believe but it&#x27;s behind a paywall otherwise. <a href=\"https://www.theinformation.com/\">The Information</a> is a pretty excellent site that alongside (former Automattician) <a href=\"https://stratechery.com/\">Ben Thompson&#x27;s Stratechery</a> I recommend subscribing to. Here are some quotes from the parts of the article that quote me or talk about <a href=\"https://automattic.com/\">Automattic</a>:</p>\n\n<blockquote class=\"wp-block-quote\">\n    <p>So it’s no coincidence that one of the first companies to operate with a distributed workforce has roots in the open source movement. Automattic, the company behind open source software tools like WordPress, was founded in 2005 and has always allowed its employees to work from anywhere. The company’s 680 employees are based in 63 countries and speak 79 languages. Last year, it closed its San Francisco office, a converted warehouse — because so few employees were using it. It still has a few coworking spaces scattered around the globe.</p>\n    <p>Matt Mullenweg, Automattic’s founder and CEO, said that when the company first started, its employees communicated via IRC, an early form of instant messaging. Now it uses a whole host of software that’s tailor-made for remote work, and as the technology evolves, Automattic adopts what they need.</p>\n    <p>Mr. Mullenweg said Automattic only started having regular meetings, for instance, after it started using Zoom, a video conferencing tool that works even on slow internet connections.</p>\n    <p>He’s become a proponent of office-less companies and shares what he’s learned with other founders who are attempting it. Mr. Mullenweg said he believes the distributed approach has led to employees who are even more loyal to the company and that his employees especially appreciate that they don’t need to spend a chunk of their day on a commute.</p>\n    <p>“Our retention is off the charts,” he said.</p>\n</blockquote>\n\n<p>And:</p>\n\n<blockquote class=\"wp-block-quote\">\n    <p>“Where it goes wrong is if they don’t have a strong network outside of work—they can become isolated and fall into bad habits,” Mr. Mullenweg said. He said he encourages employees to join groups, play sports and have friends outside of work. That kind of thing wouldn’t be a risk at big tech companies, where employees are encouraged to socialize and spend a lot of time with colleagues.</p>\n    <p>But for those who ask him about the negatives, Mr. Mullenweg offers anecdotal proof of a workaround.</p>\n    <p>For example, he said he has 14 employees in Seattle who wanted to beat the isolation by meeting up for work once a week. So they found a local bar that didn’t open until 5 p.m., pooled together the $250 per month co-working stipends that Automattic provides and convinced the bar’s owner to let them rent out the place every Friday.</p>\n</blockquote>\n\n<p>They didn&#x27;t need to pool all their co-working allowance to get the bar, I recall it was pretty cheap! Finally:</p>\n\n<blockquote class=\"wp-block-quote\">\n    <p>For Automattic, flying 700 employees to places like Whistler, British Columbia or Orlando, Florida, has turned into a seven-figure expense.</p>\n    <p>“I used to joke that we save it on office space and blow it on travel. But the reality is that in-person is really important. That’s a worthwhile investment,” Mr. Mullenweg said.It might take a while, but some people are convinced that a distributed workforce is the way of the future.</p>\n    <p>“Facebook is never going to work like this. Google is never going to work like this. But whatever replaces them will look more like a distributed company than a centralized one,” Mr. Mullenweg said.</p>\n</blockquote>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 16 Feb 2018 18:44:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:36;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"Matt: Kinsey Joins Automattic\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=47931\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"https://ma.tt/2018/02/kinsey-joins-automattic/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:229:\"<p>Kinsey Wilson is joining Automattic to run WordPress.com. <a href=\"https://www.poynter.org/news/one-time-npr-and-nyt-digital-chief-new-adventure-wordpress\">Poynter covers the news and has a great interview with Kinsey.</a></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 15 Feb 2018 18:56:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:37;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"WPTavern: WPWeekly Episode 305 – 10up, JavaScript for WordPress Conference, and Jetpack 5.8\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=78136&preview=true&preview_id=78136\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"https://wptavern.com/wpweekly-episode-305-10up-javascript-for-wordpress-conference-and-jetpack-5-8\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1599:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I discuss the news of the week. We also chat about the Winter Olympics, crypto mining in order to access content on the web, and the joys of taking care of a puppy. Last but not least, we talk about Elasticsearch in Jetpack 5.8 and whether or not improving WordPress&#8217; native search functionality through a service is the way to go.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wptavern.com/jetpack-5-8-adds-lazy-loading-for-images-module\">Jetpack 5.8 Adds Lazy Loading for Images Module</a><br />\n<a href=\"https://wptavern.com/free-virtual-wordpress-for-javascript-conference-june-29th\">Free Virtual WordPress for JavaScript Conference June 29th</a><br />\n<a href=\"https://wptavern.com/10up-turns-seven\">10up Turns Seven</a><br />\n<a href=\"https://make.wordpress.org/plugins/2018/02/13/not-updated-in-warning/\">“Not Updated In …” Warning</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, February 21st 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #305:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 15 Feb 2018 02:14:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:38;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"WPTavern: 10up Turns Seven\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=78132\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"https://wptavern.com/10up-turns-seven\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2986:\"<p><a href=\"https://10up.com/\">10up</a>, a web development agency founded by Jake Goldman in 2011, has turned seven years old. In a <a href=\"https://10up.com/blog/2018/10up-seven-year-anniversary/\">blog post celebrating the occasion</a>, Goldman reviews the previous year and highlights some notable events for the company.</p>\n<p>&#8220;We welcomed more than 30 new clients to our portfolio in another record sales year,&#8221; Goldman said. &#8220;We launched new websites along with web and mobile apps for major brands across verticals as diverse as finance, healthcare, academia, high-tech, big media, consumer packaged goods, food and beverage, and fitness… to name a few.&#8221;</p>\n<p>He also highlighted the company&#8217;s commitment to open source and giving back to WordPress. Throughout the past year, the company has released a number of WordPress plugins and developer tools including, <a href=\"https://10up.com/blog/2017/distributor-plugin/\">Distributor</a>, <a href=\"https://10up.com/blog/2017/wp-snapshots-share-wordpress-setup/\">WP Snapshots</a>, <a href=\"https://10up.com/blog/2017/wp-docker/\">WP Local Docker</a>, <a href=\"https://10up.com/blog/2018/improving-wordpress-transients/\">Async Transients</a>, and more.</p>\n<p>Goldman describes three trends he&#8217;s noticed in the past few years.</p>\n<ol>\n<li>Integrations with innovation happening in other projects and platforms has become increasingly important as the web matures. You see it in React.js and Vue.js emerging as popular front end standards, in the rise of Elasticsearch and NoSQL platforms, with two factor authentication and Google single sign on, with the rise of modern Asset Management Systems.</li>\n<li>For publishers, it’s increasingly becoming about distribution to multiple platforms, more so than<em> just</em> building a website. Google AMP, Facebook Articles, Apple News, Alexa, YouTube channels to name a few.</li>\n<li>If you need any more evidence of WordPress dominance, look no further than how highly in demand top-tier engineering talent is. It’s probably &#8211; literally &#8211; around a factor of 1.5x &#8211; 2x what great engineers were earning 3-4 years ago.</li>\n</ol>\n<p>With seven years of experience under his belt, Goldman offers the following advice for those who are in their first or second year of running an agency or in a leadership position.</p>\n<ol>\n<li> Don’t be quite so hard on yourself &#8211; when you run a business &#8211; when you’re a lease &#8211; there will always be highs and lows &#8211; don’t dwell on the lows.</li>\n<li>Put more emphasis on building systems, routines, and check-ins that offer a better pulse on the collective and individual fulfillment, engagement, and health of the team, rather than relying on transparent upwards communication.</li>\n</ol>\n<p>Congrats to 10up on seven years in business. To learn more about the company and employment opportunities, visit their <a href=\"https://10up.com/\">official site</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 14 Feb 2018 19:16:42 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:39;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"HeroPress: My WordPress Anniversaries\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://heropress.com/?post_type=heropress-essays&p=2452\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:126:\"https://heropress.com/essays/my-wordpress-anniversaries/#utm_source=rss&utm_medium=rss&utm_campaign=my-wordpress-anniversaries\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:13243:\"<img width=\"960\" height=\"480\" src=\"https://heropress.com/wp-content/uploads/2018/02/021418-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: I feel that I am responsible to be on stage for all the women who haven’t found the courage yet to share their stories.\" /><p>I never remember dates. I know the birthday of more or less five people. I insist on saying that my son was born on May 11. Incorrect, I was born on May 11, he on May 17. But for some reason, my WordPress dates are permanently etched into my brain. I think it’s because meeting the global WordPress community and helping restart the Italian community are very meaningful moments in my adult life. Please join me in a walk down memory lane <img src=\"https://s.w.org/images/core/emoji/2.4/72x72/1f642.png\" alt=\"🙂\" class=\"wp-smiley\" /></p>\n<h3>May 15, 2015</h3>\n<p>I started building websites with WordPress in 2010: my first website was my own blog, whose only purpose was to publish photos of my son so all the grandparents could enjoy seeing him grow. I enjoyed tinkering around with it, and to my surprise someone wrote asking me to build something similar for them. And they wanted to pay me for it!</p>\n<p>For a few years I worked as an administrative manager during the day and as a web designer at night until I decided to make the jump and become a freelancer.</p>\n<p>I never thought about contributing to WordPress because I wasn’t a back end developer and I didn’t think the project needed people that were not code wizards. Heck, I didn’t even know how WordPress was made or how open source worked exactly!</p>\n<blockquote><p>And then I went to a Freelancers conference in Italy and on May 15 I gave my first talk ever.</p></blockquote>\n<p>Up until that moment I taught small classes, but I never talked in front of more than ten people. I was terrified: in the audience there were more than a hundred people. Some of my friends, but also a lot of seasoned professionals that I respected and admired, and here I was talking about how they should and shouldn’t build a website. I was so nervous, when I grabbed the mic I did such a wide gesture with my arms that the bracelet I was wearing flew through the air to the other side of the room.</p>\n<p>After my talk a guy came to compliment my talk, and I realised that he was one of those people that I respected and admired from afar: <a href=\"https://twitter.com/lucasartoni\">Luca Sartoni</a>, an Automattician whose blog I have been following for a while.</p>\n<p>For the three days of the event we kept chatting about websites, WordPress, entrepreneurship, open source until he convinced me to start a WordPress meetup in my hometown of Torino, Italy. He put me in contact with other people that he knew wanted to do something similar and in less than a month from that conversation we started a meetup. The group now has more than one thousand members, and in March we will celebrate thirty events.</p>\n<h3>November 7, 2015</h3>\n<p>Luca didn’t stop his proselytism in Torino <img src=\"https://s.w.org/images/core/emoji/2.4/72x72/1f642.png\" alt=\"🙂\" class=\"wp-smiley\" /> That same year, WordCamp Europe was held in Seville and at the Polyglots table a revolution was started. A small group of Italians, used to travelling abroad to attend WordCamps, met there and decided that it was time to organise the Italian community.</p>\n<p>The first step was to revive the blog on the Italian WordPress website: it was dormant for seven years and the first thing we did was publish the dates of meetups that were slowly but surely appearing in the whole country. At the beginning of 2015 there were two meetups in Italy, by August there were eight and their number kept growing.</p>\n<p>Now, if you have met Italians, you know we talk a lot. The two Francescos from Apulia, <a href=\"https://twitter.com/franzvitulli\">Franz Vitulli</a> and <a href=\"https://twitter.com/fra83\">Francesco Di Candia</a>, took the second initiative that was crucial to bringing us together: they opened a Slack workspace for the Italians, modeled after the UK workspace. For the whole summer we chatted every single day: about WordPress, about how to grow and manage the community that was forming in front of our eyes, how to communicate, how to contribute.</p>\n<p>And then chatting wasn’t enough, we wanted to meet in person. We wanted to put a face and a voice to the avatars. With the help of <a href=\"https://twitter.com/rosso\">Sara Rosso</a> and <a href=\"https://twitter.com/miss_jwo\">Jenny Wong</a> we carried out a bizarre plan, almost unheard of: a <a href=\"https://wordpress.tv/2017/12/10/francesca-marano-standalone-contributor-days-help-make-wordpress-with-your-community/\">stand alone WordPress Contributor Day</a>. We would meet in Milano for a day to get to know each other and to learn how to Contribute to WordPress.</p>\n<blockquote><p>I like to think that November 7 2015 is the day we became a community: we were not an abstract idea anymore, we were people, meeting in person to make WordPress in Italy.</p></blockquote>\n<p>&nbsp;</p>\n<h3>April 10, 2016</h3>\n<p>The next few months went by in a blur of activities: the meetup organisers in Torino applied to host the first WordCamp in Italy in three years and I lead the organising team, I applied to attend the Community Summit in Philadelphia and I got accepted, I attended the first WordCamp US, my first WordCamp, and volunteered at it. I met a lot of people that helped me become more active and more focused: as a new contributor it’s easy to get overwhelmed by the abundance of amazing projects and tasks you can be part of, but it’s important to keep your focus to be more effective.</p>\n<blockquote><p>After meeting people from all over the world and sharing our experiences I realised the story of the Italian community could be inspiring for other communities and it was worth telling it to a wider audience, so I got completely out of my comfort zone and submitted a talk to WordCamp London.</p></blockquote>\n<p>On April 10th 2016 I gave <a href=\"https://wordpress.tv/2016/05/30/francesca-marano-rebirth-italian-community/\">my first talk at a WordCamp</a> and my first talk in English. I think I didn’t sleep for days before and after the event. It was nerve wracking, but I did it without throwing any bracelet in the air this time.</p>\n<a href=\"https://heropress.com/wp-content/uploads/2018/02/WCEU2016.jpg\"><img class=\"wp-image-2457 size-large\" src=\"https://heropress.com/wp-content/uploads/2018/02/WCEU2016-1024x684.jpg\" alt=\"\" width=\"960\" height=\"641\" /></a>I gave the same talk at WordCamp Europe in 2016 and realised the story was relatable to many communities. Photographer unknown, sorry <img src=\"https://s.w.org/images/core/emoji/2.4/72x72/1f641.png\" alt=\"🙁\" class=\"wp-smiley\" />\n<h3>September 17, 2017</h3>\n<p>Over the following year I kept contributing to WordPress, mostly in the Community team. I participated in the Polyglots activities for a while but then I had to pick and focus my attention. The more I interacted with people from all over the world as a hobby, the more I wanted that to become my job. Although my business as a web designer in Italy was doing good, I felt I wanted to be able to reach more people and find a way to be more involved with the community.<br />\nSo I started looking for a job. I was hesitant at first: all the insecurities I had about myself came back to haunt me. The voice in my head was telling me: you are too old, you don’t have enough technical expertise, you have been contributing for a very short time, English is not your native language, you are a single mom from Italy for crying out loud, who would want to employ you?</p>\n<blockquote><p>Well, it turns out that if you actually look for a job instead of just telling yourself that you really would like a job, chances are you might get one.</p></blockquote>\n<p>Last September I started a new chapter in my career as the <a href=\"https://www.siteground.com/blog/francesca-marano/\">WordPress Community Manager</a> at SiteGround and I couldn’t be happier.</p>\n<p>The past 33 months have completely changed my life, personally and professionally: along the way I learned a number of lessons that I know will stay with me forever.</p>\n<h3>Step Up</h3>\n<p>If you want to achieve something, start today. Just start. Start a meetup, leave a comment to encourage someone else, volunteer to take notes of a meeting, participate in the discussion, bring your own ideas to the table. Be a fire starter, for yourself and for the people around you.</p>\n<h3>Step Back</h3>\n<p>None of the above is about you: the community is bigger than you, you are here to build a path for the future. Once you started something, don’t become too attached, let it go and let other people step up and shine. Mentor them, if they ask and if you can.</p>\n<h3>If you want to go faster go alone, if you want to go further go together</h3>\n<p>I am not a huge fan of motivational quotes, but this one is very dear to my heart and it’s one I have to remind myself quite often. I am a perfectionist and a quick learner: this is ok when you start your own business (and it’s ok only at the beginning, but this is a topic for another article!), but when you are part of a team, you are part of something bigger. It might move slower, but its impact is immensely more powerful than anything you’ll be able to achieve on your own.</p>\n<h3>Representation matters</h3>\n<p>I dislike speaking in public. When I say this people tend to laugh it off because I am good on stage. It doesn’t mean that I like it. I am much more at ease when I am behind the scenes, making things happen.</p>\n<p><img class=\"aligncenter wp-image-2454 size-full\" src=\"https://heropress.com/wp-content/uploads/2018/02/slack-imgs.jpg\" alt=\"Four women seated on a low wall at a WordPress meetup.\" width=\"600\" height=\"400\" /></p>\n<blockquote><p>But representation matters: I feel that I am responsible to be on stage for all the women who haven’t found the courage yet to share their stories.</p></blockquote>\n<p>I am responsible for the young ones, so they can see that it’s possible to create a life when you can be both a good, albeit a bit absent mom, and a kick ass professional. I am responsible for the older ones, so they can see that we are represented, that this industry accepts us and recognizes our contributions. I am responsible to show my eleven year old son that women can do whatever they set out to do.</p>\n<h3>Make it better, give it back</h3>\n<p>I wish I came up with this, because it’s an incredibly powerful sentence. <a href=\"https://heropress.com/essays/make-better-give-back/\">John did</a> and I am grateful every day that I get to share my life with him and his wisdom.</p>\n<p>Contributing to open source can be very frustrating: things go slow, sometimes things don’t go at all (there are numerous tickets in the WordPress bug tracker that are five or more years old), sometimes you might disagree with that will be decided, sometimes you might work alongside people that you dislike.</p>\n<p>When this happens, remind yourself that you are working on a brilliant piece of software that is helping the lives and the businesses of millions of people.</p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: My WordPress Anniversaries\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=My%20WordPress%20Anniversaries&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fmy-wordpress-anniversaries%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: My WordPress Anniversaries\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fmy-wordpress-anniversaries%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fmy-wordpress-anniversaries%2F&title=My+WordPress+Anniversaries\" rel=\"nofollow\" target=\"_blank\" title=\"Share: My WordPress Anniversaries\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/my-wordpress-anniversaries/&media=https://heropress.com/wp-content/uploads/2018/02/021418-150x150.jpg&description=My WordPress Anniversaries\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: My WordPress Anniversaries\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/essays/my-wordpress-anniversaries/\" title=\"My WordPress Anniversaries\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/essays/my-wordpress-anniversaries/\">My WordPress Anniversaries</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 14 Feb 2018 07:00:49 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Francesca Marano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:40;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"WPTavern: Free Virtual WordPress for JavaScript Conference June 29th\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=78116\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://wptavern.com/free-virtual-wordpress-for-javascript-conference-june-29th\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1714:\"<p>Zac Gordon, who <a href=\"https://wptavern.com/zac-gordon-launches-gutenberg-development-course-includes-more-than-30-videos\">launched his Gutenberg development course</a> earlier this year, is organizing a virtual conference called <a href=\"https://javascriptforwp.com/conference/\">JavaScript for WordPress.</a> The conference will take place June 29th and is free to watch.</p>\n<p>&#8220;Making the event free and online was really important for me so we could have as few barriers to entry for folks wanting to learn,&#8221; Gordon said. &#8220;I have a feeling a lot of folks who can&#8217;t tune live will still appreciate having all the talks available on YouTube for free.&#8221;</p>\n<p>So far, 15 speakers have been confirmed with more to be announced soon. The speakers include WordPress core developers, theme and plugin developers, agency owners, and educators. Some of the talks will be from designers allowing user experience and usability to be part of the conversation.</p>\n<p>Gordon says he&#8217;s been wanting to an in-person event for a while but considering the challenges involved, a virtual conference was the next best thing.</p>\n<p>&#8220;I used to run in-person workshops in the Washington DC area, which I miss, and have wanted to do an event for a while,&#8221; he said. &#8220;But doing in-person events is so difficult, so the online format seemed like the best option to go with. I got some good advice from Human Made and WP Campus, who both have experience doing online events, so hopefully everything will go smooth.&#8221;</p>\n<p>To reserve a seat and receive updates, visit the <a href=\"https://javascriptforwp.com/conference/\">JavaScript for WordPress conference site</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 13 Feb 2018 01:30:06 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:41;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"Mark Jaquith: Updating plugins using Git and WP-CLI\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"http://markjaquith.wordpress.com/?p=5552\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"https://markjaquith.wordpress.com/2018/02/12/updating-plugins-using-git-and-wp-cli/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4007:\"<p>Now that you know <a href=\"https://markjaquith.wordpress.com/2018/01/30/simple-wordpress-deploys-using-git/\">how I deploy WordPress sites</a> and <a href=\"https://markjaquith.wordpress.com/2018/02/05/tips-for-configuring-wordpress-environments/\">how I configure WordPress environments</a>, what about the maintenance of keeping a WordPress site&#8217;s plugins up-to-date?</p>\n<p>Since I&#8217;m using Git, I cannot use WordPress built-in plugin updater on the live site (and I wouldn&#8217;t want to — if a plugin update goes wrong, my live site could be in trouble!)</p>\n<p>The simple way to update all your plugins from a staging or local development site is to use WP-CLI:</p>\n<pre class=\"brush: bash; title: ; notranslate\">wp plugin update-all\ngit commit -am \'update all plugins\' wp-content/plugins</pre>\n<p>That works. I used to do that.</p>\n<p>I don&#8217;t do that anymore.</p>\n<p>Why? <strong>Granularity</strong>.</p>\n<p>One of the benefits of using version control like Git is that when things go wrong, you can pinpoint when they went wrong, and identify what code caused the issue.</p>\n<p>Git has a great tool called <strong>bisect</strong> that takes a known good state in the past and a current broken state, and then jumps around between revisions, efficiently, asking you to report whether that revision is <strong>good</strong> or <strong>bad</strong>. Then it tells you what revision broke your site.</p>\n<p>If you lump all your plugin updates into one commit, you won&#8217;t get that granularity. You&#8217;ll likely get the <strong>git bisect</strong> result of &#8220;great&#8230; one of EIGHTEEN PLUGINS I updated was the issue&#8221;. That doesn&#8217;t help.</p>\n<p>Here&#8217;s how you do it with granularity:</p>\n<pre class=\"brush: bash; title: ; notranslate\">for plugin in $(wp plugin list --update=available --field=name);\ndo\n    wp plugin update $plugin &amp;&amp;\n    git add -A wp-content/plugins/$plugin &amp;&amp;\n    git commit -m \'update $plugin plugin\'\ndone;</pre>\n<p>This code loops through plugins with updates available, updates each one, and commits it with a message that references the plugin being updated. Great! Now <strong>git bisect</strong> will be able to tell you <strong>which</strong> plugin update broke your site.</p>\n<p>And what if you can only run WP-CLI commands from within a VM, and Git commands from your local machine? For instance, if you&#8217;re using my favorite tool, <a href=\"https://local.getflywheel.com/\">Local by Flywheel</a>, you have to SSH into the site&#8217;s container to issue WP-CLI commands, but from within that container, you might not have Git configured like it is on your host machine.</p>\n<p>So what you can do is break the process into two steps.</p>\n<p>On the VM, run this:</p>\n<pre class=\"brush: bash; title: ; notranslate\">wp plugin list --update=available --field=name &gt; plugins.txt\nwp plugin update-all</pre>\n<p>That grabs a list of plugins with updates and writes them to a file <strong>plugins.txt</strong>, and then updates all the plugins.</p>\n<p>And then on your local machine, run this:</p>\n<pre class=\"brush: bash; title: ; notranslate\">while read plugin;\ndo\n    git add -A wp-content/plugins/$plugin &amp;&amp;\n    git commit -m \'update $plugin plugin\'\ndone; &lt; plugins.txt</pre>\n<p>That slurps in that list of updated plugins and does a distinct <strong>git add</strong> and <strong>git commit</strong> for each.</p>\n<p>When that&#8217;s done, remove <b>plugins.txt</b>.</p>\n<p>All your plugins are quickly updated with WP-CLI, but you get nice granular Git commits and messages.</p>\n<hr />\n<p><b>Do you need <a href=\"https://coveredwebservices.com/\">WordPress services?</a></b></p>\n<p>Mark runs <a href=\"https://coveredwebservices.com/\">Covered Web Services</a> which specializes in custom WordPress solutions with focuses on security, speed optimization, plugin development and customization, and complex migrations.</p>\n<p>Please reach out to start a conversation!</p>\n[contact-form]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 12 Feb 2018 14:42:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Mark Jaquith\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:42;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"Post Status: WordPress market opportunities: Upmarket edition — Draft podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=42360\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://poststatus.com/wordpress-market-opportunities-upmarket-edition-draft-podcast/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2284:\"<p>Welcome to the Post Status <a href=\"https://poststatus.com/category/draft\">Draft podcast</a>, which you can find <a href=\"https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008\">on iTunes</a>, <a href=\"https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast\">Google Play</a>, <a href=\"http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast\">Stitcher</a>, and <a href=\"http://simplecast.fm/podcasts/1061/rss\">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Brian Krogsgard and co-host Brian Richards.</p>\n<p>In this episode, Brian and Brian continue their discussion on WordPress market opportunities with a focus on the upper-market and enterprise clients. They take a look at discovery projects, pitching WordPress against competing platforms, and considerations to make before pitching on these high-budget projects. There are plenty of positives and negatives when working on long-term projects that may have a dramatic impact on your company in many ways.</p>\n<p>In addition to these market opportunities, the boys also discuss recent news including iThemes acquisition by Liquid Web, a welcome change to the WordPress.org plugin directory, and an unfortunate and far-reaching bug that shipped with the 4.9.3 release last week.</p>\n<p></p>\n<h3>Links</h3>\n<ul>\n<li><a href=\"https://poststatus.com/liquid-web-acquired-ithemes/\">Liquid Web acquires iThemes</a></li>\n<li><a href=\"https://generatewp.com/new-policy-changes-wordpress-plugin-directory/\">Plugin directory notice changes</a></li>\n<li><a href=\"https://make.wordpress.org/core/2018/02/06/wordpress-4-9-4-release-the-technical-details/\">4.9.4 technical details</a></li>\n<li><a href=\"https://wpsessions.com/sessions/infusing-websites-brand-voice/\">Infusing Websites with Brand Voice</a><a href=\"https://wpsessions.com/teams\">WPS Team Training</a></li>\n</ul>\n<h3>Sponsor: WooCommerce</h3>\n<p><a href=\"https://woocommerce.com/\">WooCommerce</a> makes the most customizable eCommerce software on the planet, and it’s the most popular too. You can build just about anything with WooCommerce. <a href=\"https://woocommerce.com/\">Try it today</a>, and thanks to the team at WooCommerce being a Post Status partner</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 09 Feb 2018 20:43:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Katie Richards\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:43;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"WPTavern: Jetpack 5.8 Adds Lazy Loading for Images Module\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=78112\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wptavern.com/jetpack-5-8-adds-lazy-loading-for-images-module\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2079:\"<p>Jetpack 5.8 <a href=\"https://jetpack.com/2018/02/06/jetpack-5-8-release/\">is available</a> for download and includes a handful of new features for Professional, Premium, and Personal plan users. In <a href=\"https://wptavern.com/jetpack-5-4-introduces-beta-version-of-new-search-module-powered-by-elasticsearch-for-professional-plan-users\">October of last year</a>, Jetpack 5.4 began beta testing a new <a href=\"https://jetpack.com/support/search/\">search module</a> based on <a href=\"https://www.elastic.co/\">Elasticsearch</a>. Jetpack 5.8 concludes the beta and the new search service is available to Professional plan customers.</p>\n<p>The new search module replaces the native search functionality in WordPress and Jetpack developers claim sites with a large amount of content, images, or products will see significant speed improvements and more relevant results. Developers can fine-tune the user experience by using custom queries and template tags. Users can sort results by categories, tags, month/year, post type, or any taxonomy.</p>\n<p>In addition to the Content Delivery Network, users have another method to optimize their sites with a new module named Lazy Load Images. When activated, Jetpack will display a page&#8217;s textual content first. When a user scrolls down the page, Jetpack will request and download images so they appear when that section of the page comes into view. Sites with a large amount of images will benefit most from having this module activated.</p>\n<p>Premium plan customers can now perform security scans on their sites at any time, upload an unlimited amount of videos, and access SEO tools that were once restricted to Business plan customers.</p>\n<p>Other notable improvements include:</p>\n<ul>\n<li>Support for timezone and site language settings</li>\n<li>Improved display of notices</li>\n<li>The GettyImages shortcode now uses the new format required by GettyImages</li>\n</ul>\n<p>To view all of the additions in this release, check out the <a href=\"https://wordpress.org/plugins/jetpack/#developers\">Jetpack 5.8 changelog</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 09 Feb 2018 07:54:14 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:44;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Matt: The Laity\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=47918\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ma.tt/2018/02/the-laity/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:310:\"<blockquote class=\"wp-block-quote\">\n    <p>In the last analysis, every profession is a conspiracy against the laity.</p><cite>The Sir Patrick Cullen character in George Bernard Shaw’s play <a href=\"https://en.m.wikipedia.org/wiki/The_Doctor%27s_Dilemma_(play)\">The Doctor’s Dilemma</a></cite></blockquote>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 08 Feb 2018 21:48:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:45;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"WPTavern: WPWeekly Episode 304 – DesktopServer, Life, and Health with Marc Benzakein\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=78105&preview=true&preview_id=78105\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"https://wptavern.com/wpweekly-episode-304-desktopserver-life-and-health-with-marc-benzakein\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1931:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I are joined by <a href=\"https://twitter.com/MarcBenzak\">Marc Benzakein</a>, Operations Manager for ServerPress, LLC. We discussed recent updates to DesktopServer and received a progress report on 4.0. Marc also shared some of the struggles the team encountered throughout 2017.</p>\n<p>We learned what&#8217;s new with <a href=\"https://wpsitesync.com/\">WP SiteSync</a> and what customers can look forward too later this year. We also talked about <a href=\"https://wordpress.tv/2017/12/08/marc-benzakein-fat-happy-and-fifty/\">Marc&#8217;s journey</a> of becoming a healthier person both physically and mentally. He recalls the issues he had to overcome and shares advice on how others can improve their health.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wptavern.com/woocommerce-3-3-1-released-addresses-template-conflicts\">WooCommerce 3.3.1 Released, Addresses Template Conflicts</a><br />\n<a href=\"https://wptavern.com/wordpress-4-9-4-fixes-critical-auto-update-bug-in-4-9-3\">WordPress 4.9.4 Fixes Critical Auto Update Bug in 4.9.3</a><br />\n<a href=\"https://thehackernews.com/2018/02/wordpress-dos-exploit.html\">Unpatched DoS Flaw Could Help Anyone Take Down WordPress Websites</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, February 14th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #304:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 08 Feb 2018 01:48:04 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:46;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"HeroPress: Becoming a Better Designer Through WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://heropress.com/?post_type=heropress-essays&p=2441\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:142:\"https://heropress.com/essays/becoming-better-designer-wordpress/#utm_source=rss&utm_medium=rss&utm_campaign=becoming-better-designer-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:19189:\"<img width=\"960\" height=\"480\" src=\"https://heropress.com/wp-content/uploads/2018/02/020718-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: The connections I\'ve made, the skills I\'ve honed, and the mentorship I\'ve received have all contributed to making me the designer I am today.\" /><h3>The early years</h3>\n<p>I’ve always been an art kid. One of my first school memories is of drawing a clown and my art teacher being so enamored with it, she hung it up on her door for the whole year.</p>\n<p>The first time in my educational life I didn’t take an art class was my first year of college. By the end of the year, my fingers were itching and I was ready to scream — I had to take art. It didn’t take long for me to declare a Studio Art minor, which eventually became an Arts and Technology minor my senior year.</p>\n<p>I’ve also always been an internet kid. We received our first internet-connected Windows desktop in 1997. I’ll never forget the sound of dial-up as I signed into AOL, day after day for years to come. When my older brother started working for an ISP, we were able to go beyond just using AOL to connect, and I started spending more time exploring websites (rather than just AOL’s apps and chat rooms). I wanted to be like my older brother and learn how to make sites. I taught myself basic HTML by using View Source on existing sites — even back then, I was benefiting from the open web!</p>\n<p>Angelfire was my earliest web canvas. A couple of my friends eventually got into making websites, but I was always a little disdainful of them for using Homestead’s GUI builder, while I was making my sites from scratch. I had a blast making image-rich personal and fan sites with tables and HTML styles. Landing a copy of Photoshop Elements in high school only intensified my enjoyment of web design. I kept that passion up through college, when I found my first design gig.</p>\n<p><a href=\"https://heropress.com/wp-content/uploads/2018/02/old_web_site.jpg\"><img class=\"size-large wp-image-2442 aligncenter\" src=\"https://heropress.com/wp-content/uploads/2018/02/old_web_site-1024x479.jpg\" alt=\"Old Website, best viewed on AOL\" width=\"960\" height=\"449\" /></a></p>\n<h3>Could this be a career?</h3>\n<p>My first year of college got off to a bit of a rough financial start. By the time my financial aid was finalized and I was finally able to pick a work study job, my options were pretty limited. A dance professor needed an assistant to help her with some photocopying and organization tasks, along with helping her build out a print and web portfolio.</p>\n<p>I was honestly a terrible assistant, but I did a pretty good job with the design work. I continued to refine my skills working in the computers labs in subsequent years, and in my Junior year of college (ten years ago!) I landed an internship at a local web design agency. That internship turned into a part-time job, which opened up doors to more local web design opportunities, and soon I was graduating college and pretty well situated into the start of my career.</p>\n<p><a href=\"https://heropress.com/wp-content/uploads/2018/02/early-site.jpg\"><img class=\"aligncenter size-large wp-image-2443\" src=\"https://heropress.com/wp-content/uploads/2018/02/early-site-1024x666.jpg\" alt=\"Skeumorphic website design that looks like a notepad with pen ink all over it.\" width=\"960\" height=\"624\" /></a></p>\n<p>It was at these agencies that I started learning how to build WordPress websites. I’d used WordPress a couple times in college and felt comfortable with it, but now I was focusing a lot more on building my skills as a designer and front-end developer. My girlfriend (who was working at the same web agency) and I managed to convince our boss to start letting us create totally custom websites, rather than customizing existing themes, and that opened up a whole new world of design opportunities.</p>\n<h3>My first WordCamp</h3>\n<p>It was around then that my girlfriend, who attended WordCamp NYC the previous year, noticed the conference organizers were <a href=\"https://2010.nyc.wordcamp.org/volunteer-designer-needed/\">looking for some volunteer designers</a> to help create some graphics. She passed along the information, and I got in touch.</p>\n<p>I collaborated with a few other designers to create the WordCamp branding, which was used across the website, t-shirt, signage, and stickers:</p>\n<p><a href=\"https://heropress.com/wp-content/uploads/2018/02/wcnyc.png\"><img class=\"aligncenter size-full wp-image-2444\" src=\"https://heropress.com/wp-content/uploads/2018/02/wcnyc.png\" alt=\"WCNYC Banner\" width=\"429\" height=\"286\" /></a></p>\n<p>It was amazing to see it everywhere at the WordCamp. It felt really special. Though I didn’t get “props” for this, I still consider it my first contribution to WordPress.</p>\n<p>WordCamp NYC was a ton of fun. I met interesting people, learned a lot about WordPress, and started to get a feel for the community. I left with a desire to get more involved. I browsed through WordPress.org, stumbling upon the “Make” section. I was stoked to see that there was a design group. I couldn’t write much code beyond CSS, but I could contribute my design skills. I joined a couple of the core channels on IRC, including the design channel (#wordpress-ui), and observed for while. I watched how the other designers in the project communicated, what they worked on, where they presented their work, etc. By observing before participating, I could learn the social queues and mores of the community. I didn’t want to embarass myself — I wanted to do things the established way based on community standards.</p>\n<p>What I found to be one of the most difficult parts of contributing was adapting to the technology used to build WordPress. I had to learn how to use command line and SVN. Getting set up in SVN and terminal was probably the biggest thing that stopped me from contributing code during my early years.</p>\n<p>But most of all, it came down to conquering fear. Fear that my design skills would be unwanted and unwelcome; fear that other contributors would look down on me or ignore me, or that they’d find me irritating; fear that I just wasn’t good enough to contribute. Some of this fear persists today, albeit greatly reduced.</p>\n<p>There’s a point at which I managed to conquer a little bit of that fear, stop observing, and really start to pitch in. Slowly, I started chiming in and volunteering for design tasks in IRC and the Make Design p2. I ended up doing a lot of small projects on the community side (rather than the core side) at first — some new landing pages and redesigns of sections on WordPress.org, graphics, and design for my own local meetups. I started feeling more and more confident with my contributions.</p>\n<h3>Core Props</h3>\n<p>By this point, I had done some wireframes and mockups for the core WordPress software — I’d even spoken at a WordCamp! — but I hadn’t actually gotten any code committed. Which meant, at this point in time, I didn’t have any “core props.” I was still really intimidated by Trac and SVN. I was a designer, and most design conversations happened in explicitly design space. But I really wanted to get some code committed into core, so I needed to find a CSS bug I felt qualified to fix.</p>\n<p>At WordCamp Philly in 2012, I finally got a chance. Sunday was devoted to contributing to WordPress. There were experienced core contributors present who could teach people how to make a patch, how to submit a ticket, and suggest tickets for people to work on.</p>\n<p>Aaron Jorbin, a core contributor and fellow speaker (and, now a friend), found a CSS issue I could work on: bringing the alternate “blue” color scheme into sync with the default “grey” scheme. He helped me get set up, helped me through saving my changes as a patch, and then helped me submit that patch to Trac. Andy Nacin, another core contributor (and future friend!) subsequently committed that patch, and I received my first core props.</p>\n<p><a href=\"https://heropress.com/wp-content/uploads/2018/02/first-props2.png\"><img class=\"aligncenter size-large wp-image-2445\" src=\"https://heropress.com/wp-content/uploads/2018/02/first-props2-1024x370.png\" alt=\"Screenshot of ticket giving Mel props\" width=\"960\" height=\"347\" /></a></p>\n<p>After creating my first patch, contributing became easier and easier. My confidence grew, and I spent more time participating in IRC, p2s, and Trac discussions. Then, in January of 2013, major design changes started coming to WordPress.</p>\n<h3>My WordPress apprenticeship</h3>\n<p>It started with icons.</p>\n<p>Ben Dunkle, WordPress’s official icon designer, proposed some shiny new icons for the WordPress dashboard. They were “flat” — one color, not a ton of details. The icons were awesome, but they didn’t really fit stylistically with the rest of the admin. The flat styles clashed with WordPress’ heavy use of gradients.</p>\n<p>So, I helped imagine what the admin could look like totally flat. We tried out a couple ideas, got them committed, and refined in code. The stark styles looked really fresh after years of gradients!</p>\n<p>Unfortunately, flattening the admin unearthed a whole lot of other issues. There wasn’t enough time to flesh out the new design before the next version of WordPress launched, so the flat styles got reverted and tabled for another time.</p>\n<p>Pretty soon after, I received an email via my site’s contact form:</p>\n<p><em><strong>Name</strong>: Matt</em><br />\n<em><strong> Comment</strong>: Add me on Skype when you get a chance.</em></p>\n<p>I think my heart stopped when I realized I had been emailed by the co-founder of WordPress, Matt Mullenweg. Matt invited me to come join a group that would take a broader look at redesigning the admin (codenamed “MP6”). It meant a lot for someone as important as Matt to recognize my skills. I spent a lot of my early years as a designer plagued with self-doubt, and suddenly I had someone pointing at me, going “I believe in you!”</p>\n<p>I leapt at the chance.</p>\n<p>Our group worked together on Skype. We quickly scoped the goal of MP6 to only update CSS and a little bit of JS. I helped Ben make some new vector icons, gave feedback and critiqued design proposals, and made some design proposals of my own. It was an intimate group where we all felt free to safely share and critique each other’s work. The mentorship I received from more experienced WordPress designers was invaluable to my growth. Working with these veterans of WordPress really helped me to grow into my fledgling wings.</p>\n<p><a href=\"https://make.wordpress.org/core/2013/10/23/mp6-3-8-proposal/\">WordPress 3.8 shipped with the updated admin interface</a>, and I knew it was time to take my design career to a new level.</p>\n<p><a href=\"https://heropress.com/wp-content/uploads/2018/02/4-8-credits-smaller.jpg\"><img class=\"aligncenter size-large wp-image-2446\" src=\"https://heropress.com/wp-content/uploads/2018/02/4-8-credits-smaller-1024x895.jpg\" alt=\"WordPress 4.8 Credits\" width=\"960\" height=\"839\" /></a></p>\n<h3>Leaving the nest</h3>\n<p>I’d had my eye on Automattic, the makers of WordPress.com, the Jetpack plugin, and many other products, for most of my time contributing to WordPress. A couple of the designers I worked with on MP6 were Automattic designers, and it was an absolute joy to collaborate with them. At this point I’d spent so much of my career as either a lone designer, or in a competitive environment, that having a supportive, collaborative group of people helping me improve my work was a revelation.</p>\n<p>I desperately wanted to work at Automattic.</p>\n<p>While MP6 was in the works, I participated in a three month long design apprenticeship at a local agency. I worked alongside experienced mentors and fellow apprentices to hone my interface and user experience design skills. It was challenging and thrilling and totally complemented the mentorship I was receiving from WordPress folks. Plus, working in a positive environment reinforced my desire to work somewhere similar.</p>\n<p>After the apprenticeship, I finally felt like I had the skills and confidence to apply. I spent a lot of time writing my cover letter, and redesigning my portfolio to use in-depth case studies on a small number of recent projects. I finally sent off my application and crossed my fingers.</p>\n<p>A couple weeks later, I received a reply back asking to schedule an interview. I was terrified, but luckily, Automattic conducts interviews via text, so I was able to hide my fear behind my keyboard and hopefully try to project confidence. (Aside: I also show all my emotions on my face, so online communication is the best.)</p>\n<p>It must have worked, because I was moved on to the next phase of the application, doing a self-contained trial project, which was a whole ton of fun. I was able to put my recently refined research, interviewing, and user testing skills to use. I loved being given a real challenge to tackle. My trial went well, so I was moved along to the final interview with Matt Mullenweg. We spent a couple hours chatting on Skype, and at the end of our conversation I was given an offer. Welcome to Automattic!</p>\n<p>After working so hard on my apprenticeship, and on MP6, joining Automattic felt incredibly validating. The work I put in, the mentorship I received, all of the collaboration, led to this moment. I felt like I had graduated from apprentice and was now embarking on my adventure as a design journeyman. And boy, has it been an adventure!</p>\n<h3><a href=\"https://heropress.com/wp-content/uploads/2018/02/automattic-2-smaller.jpg\"><img class=\"aligncenter size-large wp-image-2447\" src=\"https://heropress.com/wp-content/uploads/2018/02/automattic-2-smaller-1024x678.jpg\" alt=\"Automattic Group Photo\" width=\"960\" height=\"636\" /></a></h3>\n<h3>Design leadership</h3>\n<p>The past four and a half years at Automattic have been fantastic. I have the best coworkers anyone can ask for. I’ve worked with some incredibly talented and empathetic designers, whose guidance and feedback constantly encourage me to improve my skills.</p>\n<p>I’ve continued to contribute to WordPress, slowly gaining more responsibility in the project the longer I stuck around. That’s the secret to becoming an open source leader, I discovered — <strong>decisions are made by the people who show up</strong>.</p>\n<p>In 2016, I was asked to by the Release Design Lead for <a href=\"https://wordpress.org/news/2016/04/coleman/\">WordPress 4.5 “Coleman.”</a> I worked alongside the other release leads to make design-related decisions that impacted the release. This was the first release we experimented with having a Design Lead. I felt like design finally had a seat at the table.</p>\n<p>This continued to be the case last year, when Matt Mullenweg announced core focuses for the year: Editing, Customization, and the API. Both Editing and Customization had designers co-leading their focus. I was named the Customization co-lead. I’d been working on customization and site building on WordPress.com for over a year, so I had relevant experience.</p>\n<p>I worked with my developer co-lead, Weston Ruter, on low-hanging fruit, most of which we released in WordPress 4.8. The release was smaller, focused more on improvements than new features. We made a lot of updates to widgets, which had been long neglected.</p>\n<p>After that, we turned our sights to some more ambitious projects: drafting and scheduling changes in the Customizer, improvements to code editing in the WordPress admin, even more widget updates, and upgrades around the flow of changing themes and building menus for your site. We took a design-first approach to building out these new features, and I think it really shows in the work that we produced during the 4.9 release cycle, which Weston and I co-led.</p>\n<p><a href=\"https://wordpress.org/news/2017/11/tipton/\">WordPress 4.9 “Tipton”</a> launched in November. Since then, I’ve pivoted to work on <a href=\"https://wordpress.org/gutenberg/\">Gutenberg</a>, the new editing experience for WordPress which should be released in 5.0. Once the editing experience wraps up, we’re going to start looking at how we can extend Gutenberg to cover site building and customization. It’s a big, audacious goal that I hope to pursue with caution, humility, and a spirit of adventure.</p>\n<p>I owe WordPress a great deal. The connections I’ve made, the skills I’ve honed, and the mentorship I’ve received have all contributed to making me the designer I am today. I hope to give back for years to come!</p>\n<p><a href=\"https://heropress.com/wp-content/uploads/2018/02/community-summit-smaller.jpg\"><img class=\"aligncenter size-full wp-image-2448\" src=\"https://heropress.com/wp-content/uploads/2018/02/community-summit-smaller.jpg\" alt=\"Community Summit Group Photo\" width=\"960\" height=\"556\" /></a></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Becoming a Better Designer Through WordPress\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Becoming%20a%20Better%20Designer%20Through%20WordPress&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fbecoming-better-designer-wordpress%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Becoming a Better Designer Through WordPress\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fbecoming-better-designer-wordpress%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fbecoming-better-designer-wordpress%2F&title=Becoming+a+Better+Designer+Through+WordPress\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Becoming a Better Designer Through WordPress\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/becoming-better-designer-wordpress/&media=https://heropress.com/wp-content/uploads/2018/02/020718-150x150.jpg&description=Becoming a Better Designer Through WordPress\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Becoming a Better Designer Through WordPress\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/essays/becoming-better-designer-wordpress/\" title=\"Becoming a Better Designer Through WordPress\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/essays/becoming-better-designer-wordpress/\">Becoming a Better Designer Through WordPress</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 07 Feb 2018 12:00:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Mel Choyce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:47;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"WPTavern: WooCommerce 3.3.1 Released, Addresses Template Conflicts\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=78089\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://wptavern.com/woocommerce-3-3-1-released-addresses-template-conflicts\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1330:\"<p>WooCommerce 3.3.1 <a href=\"https://woocommerce.wordpress.com/2018/02/06/woocommerce-3-3-1-fix-release-notes/\">is available</a> and fixes template conflicts discovered in a handful of WordPress themes that forced the team to <a href=\"https://wptavern.com/woocommerce-3-3-removed-from-plugin-directory-due-to-theme-conflicts\">revert WooCommerce 3.3</a>. The team reviewed handful of the most common themes running WooCommerce and tested them for compatibility with 3.3.1.</p>\n<p><a href=\"https://github.com/woocommerce/woocommerce/wiki/Template-File-Guidelines-for-Devs-and-Theme-Authors#hook-vs-override---when-to-use-what\">WooCommerce developers recommend</a> that theme authors use hooks instead of template overrides to ensure maximum compatibility.</p>\n<p>According to Mike Jolley, WooCommerce lead developer, this release highlighted issues with the template system&#8217;s extensibility and a disconnect between theme authors on external marketplaces. &#8220;We hope to find solutions to these problems in the near future,&#8221; Jolley said.</p>\n<p>WooCommerce 3.3.1 has at least <a href=\"https://github.com/woocommerce/woocommerce/compare/3.3.0...3.3.1\">90 commits</a>. Users are encouraged to create a full-backup of their sites and then browse to Dashboard &gt; Updates to update WooCommerce from within WordPress.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 07 Feb 2018 09:46:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:48;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"WPTavern: WordPress 4.9.4 Fixes Critical Auto Update Bug in 4.9.3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=78087\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://wptavern.com/wordpress-4-9-4-fixes-critical-auto-update-bug-in-4-9-3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1984:\"<p>Hours after <a href=\"https://wptavern.com/wordpress-4-9-3-released-fixes-34-bugs\">WordPress 4.9.3 was released</a>, the WordPress development team followed it up <a href=\"https://make.wordpress.org/core/2018/02/06/wordpress-4-9-4-release-the-technical-details/\">with 4.9.4</a> to fix a critical bug with the auto update process. The bug generates a fatal PHP error when WordPress attempts to update itself.</p>\n<p>This error requires WordPress site owners and administrators to manually update to WordPress 4.9.4 by visiting your Dashboard and clicking the Update Now button on the Updates page. Alternatively, you can update by uploading the files via SFTP or by using WP-CLI.</p>\n<p>Dion Hulse, WordPress lead developer, says managed hosts that apply updates automatically for their customers will be able to update sites as they normally do. This may explain why some users have reported that sites running 4.9.3 have automatically updated to 4.9.4 without issue.</p>\n<p>The bug stems from an attempt to <a href=\"https://core.trac.wordpress.org/ticket/43103\">reduce the number of API calls</a> made when the auto update cron job is run. Unfortunately, the code committed had unintended consequences. &#8220;It triggers a fatal error as not all of the dependencies of <code>find_core_auto_update()</code> are met,&#8221; Hulse said.</p>\n<p>A postmortem will be published once the team determines how to prevent this mistake from happening in the future. &#8220;We don’t like bugs in WordPress any more than you do, and we’ll be taking steps to both increase automated coverage of our updates and improve tools to aid in the detection of similar bugs before they become an issue in the future,&#8221; Hulse said.</p>\n<p>While WordPress 4.9.3 and 4.9.4 do not include any security fixes, it&#8217;s important to note that in order to receive automatic security updates in the future, sites using the 4.9 branch must be running at least 4.9.4. Older branches are unaffected.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 07 Feb 2018 09:19:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:49;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"Dev Blog: WordPress 4.9.4 Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5559\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wordpress.org/news/2018/02/wordpress-4-9-4-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1814:\"<p>WordPress 4.9.4 is now available.</p>\n<p>This maintenance release fixes a severe bug in 4.9.3, which will cause sites that support automatic background updates to fail to update automatically, and will require action from you (or your host) for it to be updated to 4.9.4.</p>\n<p>Four years ago with <a href=\"https://wordpress.org/news/2013/10/basie/\">WordPress 3.7 &#8220;Basie&#8221;</a>, we added the ability for WordPress to self-update, keeping your website secure and bug-free, even when you weren&#8217;t available to do it yourself. For four years it&#8217;s helped keep millions of installs updated with very few issues over that time. Unfortunately <a href=\"https://wordpress.org/news/2018/02/wordpress-4-9-3-maintenance-release/\">yesterdays 4.9.3 release</a> contained a severe bug which was only discovered after release. The bug will cause WordPress to encounter an error when it attempts to update itself to WordPress 4.9.4, and will require an update to be performed through the WordPress dashboard or hosts update tools.</p>\n<p>WordPress managed hosting companies who install updates automatically for their customers can install the update as normal, and we&#8217;ll be working with other hosts to ensure that as many customers of theirs who can be automatically updated to WordPress 4.9.4 can be.</p>\n<p>For more technical details of the issue, we&#8217;ve <a href=\"https://make.wordpress.org/core/2018/02/06/wordpress-4-9-4-release-the-technical-details/\">posted on our Core Development blog</a>. For a full list of changes, consult the <a href=\"https://core.trac.wordpress.org/query?status=closed&milestone=4.9.4&group=component\">list of tickets</a>.</p>\n<p><a href=\"https://wordpress.org/download/\">Download WordPress 4.9.4</a> or visit Dashboard → Updates and click “Update Now.”</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 06 Feb 2018 16:17:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Dion Hulse\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Thu, 22 Mar 2018 17:11:58 GMT\";s:12:\"content-type\";s:8:\"text/xml\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:13:\"last-modified\";s:29:\"Thu, 22 Mar 2018 17:00:27 GMT\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";s:16:\"content-encoding\";s:4:\"gzip\";}}s:5:\"build\";s:14:\"20180322162925\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(9336, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1521781919', 'no'),
(9337, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1521738719', 'no'),
(9338, '_transient_timeout_dash_v2_a5a61dcab273495c31cd79aafebbdc74', '1521781919', 'no'),
(9339, '_transient_dash_v2_a5a61dcab273495c31cd79aafebbdc74', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://vi.wordpress.org/2018/02/16/chuc-mung-nam-moi-2018/\'>Chúc mừng năm mới 2018</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wptavern.com/wpweekly-episode-309-all-amped-up\'>WPTavern: WPWeekly Episode 309 – All AMPed Up</a></li><li><a class=\'rsswidget\' href=\'https://ma.tt/2018/03/dont-like-change/\'>Matt: Don’t Like Change</a></li><li><a class=\'rsswidget\' href=\'https://heropress.com/keeping-community-alive/#utm_source=rss&#038;utm_medium=rss&#038;utm_campaign=keeping-community-alive\'>HeroPress: Keeping Community Alive</a></li></ul></div>', 'no'),
(9350, 'product_cat_children', 'a:1:{i:16;a:2:{i:0;i:19;i:1;i:38;}}', 'yes'),
(9465, '_transient_timeout_wc_product_children_19', '1524337211', 'no'),
(9466, '_transient_wc_product_children_19', 'a:2:{s:3:\"all\";a:14:{i:0;i:50;i:1;i:51;i:2;i:48;i:3;i:49;i:4;i:52;i:5;i:53;i:6;i:54;i:7;i:55;i:8;i:56;i:9;i:57;i:10;i:58;i:11;i:59;i:12;i:60;i:13;i:61;}s:7:\"visible\";a:14:{i:0;i:50;i:1;i:51;i:2;i:48;i:3;i:49;i:4;i:52;i:5;i:53;i:6;i:54;i:7;i:55;i:8;i:56;i:9;i:57;i:10;i:58;i:11;i:59;i:12;i:60;i:13;i:61;}}', 'no'),
(9467, '_transient_timeout_wc_var_prices_19', '1524341884', 'no'),
(9468, '_transient_wc_var_prices_19', '{\"version\":\"1521749865\",\"73019a07a9084069ed3fde073bf32c4b\":{\"price\":{\"50\":\"450000.00\",\"51\":\"450000.00\",\"48\":\"450000.00\",\"49\":\"450000.00\",\"52\":\"450000.00\",\"53\":\"450000.00\",\"54\":\"450000.00\",\"55\":\"450000.00\",\"56\":\"450000.00\",\"57\":\"450000.00\",\"58\":\"450000.00\",\"59\":\"450000.00\",\"60\":\"450000.00\",\"61\":\"450000.00\"},\"regular_price\":{\"50\":\"580000.00\",\"51\":\"580000.00\",\"48\":\"580000.00\",\"49\":\"580000.00\",\"52\":\"580000.00\",\"53\":\"580000.00\",\"54\":\"580000.00\",\"55\":\"580000.00\",\"56\":\"580000.00\",\"57\":\"580000.00\",\"58\":\"580000.00\",\"59\":\"580000.00\",\"60\":\"580000.00\",\"61\":\"580000.00\"},\"sale_price\":{\"50\":\"450000.00\",\"51\":\"450000.00\",\"48\":\"450000.00\",\"49\":\"450000.00\",\"52\":\"450000.00\",\"53\":\"450000.00\",\"54\":\"450000.00\",\"55\":\"450000.00\",\"56\":\"450000.00\",\"57\":\"450000.00\",\"58\":\"450000.00\",\"59\":\"450000.00\",\"60\":\"450000.00\",\"61\":\"450000.00\"}},\"142c1b1785671b976c7395f8105f6263\":{\"price\":{\"50\":\"450000.00\",\"51\":\"450000.00\",\"48\":\"450000.00\",\"49\":\"450000.00\",\"52\":\"450000.00\",\"53\":\"450000.00\",\"54\":\"450000.00\",\"55\":\"450000.00\",\"56\":\"450000.00\",\"57\":\"450000.00\",\"58\":\"450000.00\",\"59\":\"450000.00\",\"60\":\"450000.00\",\"61\":\"450000.00\"},\"regular_price\":{\"50\":\"580000.00\",\"51\":\"580000.00\",\"48\":\"580000.00\",\"49\":\"580000.00\",\"52\":\"580000.00\",\"53\":\"580000.00\",\"54\":\"580000.00\",\"55\":\"580000.00\",\"56\":\"580000.00\",\"57\":\"580000.00\",\"58\":\"580000.00\",\"59\":\"580000.00\",\"60\":\"580000.00\",\"61\":\"580000.00\"},\"sale_price\":{\"50\":\"450000.00\",\"51\":\"450000.00\",\"48\":\"450000.00\",\"49\":\"450000.00\",\"52\":\"450000.00\",\"53\":\"450000.00\",\"54\":\"450000.00\",\"55\":\"450000.00\",\"56\":\"450000.00\",\"57\":\"450000.00\",\"58\":\"450000.00\",\"59\":\"450000.00\",\"60\":\"450000.00\",\"61\":\"450000.00\"}}}', 'no'),
(9471, '_site_transient_timeout_theme_roots', '1521747261', 'no'),
(9472, '_site_transient_theme_roots', 'a:1:{s:10:\"storefront\";s:7:\"/themes\";}', 'no'),
(9474, 'wc_pos_decimal_quantity', 'no', 'yes'),
(9475, 'wc_pos_decimal_quantity_value', '0.5', 'yes'),
(9476, 'wc_pos_display_image_size', 'thumbnail', 'yes'),
(9477, 'wc_pos_default_tile_orderby', 'menu_order', 'yes'),
(9478, '_transient_timeout_wc_related_130', '1521837888', 'no'),
(9479, '_transient_wc_related_130', 'a:1:{s:51:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=130\";a:0:{}}', 'no'),
(9482, '_transient_timeout_wc_related_19', '1521832887', 'no'),
(9483, '_transient_wc_related_19', 'a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=19\";a:0:{}}', 'no'),
(9493, 'woocommerce_pos_register_scan_field', '', 'yes'),
(9514, '_transient_timeout_wc_product_children_138', '1524341865', 'no'),
(9515, '_transient_wc_product_children_138', 'a:2:{s:3:\"all\";a:2:{i:0;i:140;i:1;i:141;}s:7:\"visible\";a:2:{i:0;i:140;i:1;i:141;}}', 'no'),
(9516, '_transient_timeout_wc_var_prices_138', '1524341884', 'no'),
(9517, '_transient_wc_var_prices_138', '{\"version\":\"1521749865\",\"73019a07a9084069ed3fde073bf32c4b\":{\"price\":{\"140\":\"390000.00\",\"141\":\"390000.00\"},\"regular_price\":{\"140\":\"490000.00\",\"141\":\"490000.00\"},\"sale_price\":{\"140\":\"390000.00\",\"141\":\"390000.00\"}},\"142c1b1785671b976c7395f8105f6263\":{\"price\":{\"140\":\"390000.00\",\"141\":\"390000.00\"},\"regular_price\":{\"140\":\"490000.00\",\"141\":\"490000.00\"},\"sale_price\":{\"140\":\"390000.00\",\"141\":\"390000.00\"}}}', 'no'),
(9520, '_transient_timeout_wc_featured_products', '1524341883', 'no'),
(9521, '_transient_wc_featured_products', 'a:0:{}', 'no'),
(9522, '_transient_timeout_wc_products_onsale', '1524341883', 'no'),
(9524, '_transient_wc_products_onsale', 'a:18:{i:0;i:48;i:1;i:49;i:2;i:50;i:3;i:51;i:4;i:52;i:5;i:53;i:6;i:54;i:7;i:55;i:8;i:56;i:9;i:57;i:10;i:58;i:11;i:59;i:12;i:60;i:13;i:61;i:14;i:138;i:15;i:140;i:16;i:141;i:17;i:19;}', 'no'),
(9536, '_transient_timeout_wc_related_138', '1521837594', 'no'),
(9537, '_transient_wc_related_138', 'a:1:{s:51:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=138\";a:0:{}}', 'no'),
(9554, '_transient_timeout_wc_term_counts', '1524343098', 'no'),
(9555, '_transient_wc_term_counts', 'a:2:{i:38;s:1:\"1\";i:40;s:1:\"1\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 8, '_wc_review_count', '0'),
(3, 8, '_wc_rating_count', 'a:0:{}'),
(4, 8, '_wc_average_rating', '0'),
(5, 9, '_regular_price', '10'),
(6, 9, '_price', '10'),
(7, 9, '_visibility', 'hidden'),
(11, 8, '_pos_visibility', 'pos_online'),
(13, 12, '_wc_review_count', '0'),
(14, 12, '_wc_rating_count', 'a:0:{}'),
(15, 12, '_wc_average_rating', '0'),
(16, 12, '_pos_visibility', 'pos_online'),
(17, 13, '_wc_review_count', '0'),
(18, 13, '_wc_rating_count', 'a:0:{}'),
(19, 13, '_wc_average_rating', '0'),
(20, 13, '_pos_visibility', 'pos_online'),
(21, 14, '_wc_review_count', '0'),
(22, 14, '_wc_rating_count', 'a:0:{}'),
(23, 14, '_wc_average_rating', '0'),
(24, 14, '_pos_visibility', 'pos_online'),
(25, 15, '_wc_review_count', '0'),
(26, 15, '_wc_rating_count', 'a:0:{}'),
(27, 15, '_wc_average_rating', '0'),
(28, 15, '_pos_visibility', 'pos_online'),
(29, 16, '_wc_review_count', '0'),
(30, 16, '_wc_rating_count', 'a:0:{}'),
(31, 16, '_wc_average_rating', '0'),
(32, 16, '_pos_visibility', 'pos_online'),
(33, 17, '_wc_review_count', '0'),
(34, 17, '_wc_rating_count', 'a:0:{}'),
(35, 17, '_wc_average_rating', '0'),
(36, 17, '_pos_visibility', 'pos_online'),
(37, 18, '_wc_review_count', '0'),
(38, 18, '_wc_rating_count', 'a:0:{}'),
(39, 18, '_wc_average_rating', '0'),
(40, 18, '_pos_visibility', 'pos_online'),
(41, 18, '_edit_last', '1'),
(42, 18, '_edit_lock', '1521608075:1'),
(43, 19, '_wc_review_count', '0'),
(44, 19, '_wc_rating_count', 'a:0:{}'),
(45, 19, '_wc_average_rating', '0'),
(46, 19, '_pos_visibility', 'pos_online'),
(47, 20, '_wp_attached_file', '2018/03/28167306_1679479698785619_5243797432174941945_n_large.jpg'),
(48, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:480;s:4:\"file\";s:65:\"2018/03/28167306_1679479698785619_5243797432174941945_n_large.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:65:\"28167306_1679479698785619_5243797432174941945_n_large-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:65:\"28167306_1679479698785619_5243797432174941945_n_large-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"jcaa_attribute_small\";a:4:{s:4:\"file\";s:63:\"28167306_1679479698785619_5243797432174941945_n_large-20x20.jpg\";s:5:\"width\";i:20;s:6:\"height\";i:20;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"jcaa_attribute_medium\";a:4:{s:4:\"file\";s:63:\"28167306_1679479698785619_5243797432174941945_n_large-30x30.jpg\";s:5:\"width\";i:30;s:6:\"height\";i:30;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"jcaa_attribute_large\";a:4:{s:4:\"file\";s:63:\"28167306_1679479698785619_5243797432174941945_n_large-40x40.jpg\";s:5:\"width\";i:40;s:6:\"height\";i:40;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:65:\"28167306_1679479698785619_5243797432174941945_n_large-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:65:\"28167306_1679479698785619_5243797432174941945_n_large-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:65:\"28167306_1679479698785619_5243797432174941945_n_large-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:65:\"28167306_1679479698785619_5243797432174941945_n_large-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:65:\"28167306_1679479698785619_5243797432174941945_n_large-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:65:\"28167306_1679479698785619_5243797432174941945_n_large-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 19, '_edit_last', '1'),
(50, 19, '_edit_lock', '1521745075:1'),
(51, 19, '_sku', 'APLK373'),
(52, 19, '_regular_price', ''),
(53, 19, '_sale_price', ''),
(54, 19, '_sale_price_dates_from', ''),
(55, 19, '_sale_price_dates_to', ''),
(56, 19, 'total_sales', '3'),
(57, 19, '_tax_status', 'taxable'),
(58, 19, '_tax_class', ''),
(59, 19, '_manage_stock', 'no'),
(60, 19, '_backorders', 'no'),
(61, 19, '_sold_individually', 'no'),
(62, 19, '_weight', ''),
(63, 19, '_length', ''),
(64, 19, '_width', ''),
(65, 19, '_height', ''),
(66, 19, '_upsell_ids', 'a:0:{}'),
(67, 19, '_crosssell_ids', 'a:0:{}'),
(68, 19, '_purchase_note', ''),
(69, 19, '_default_attributes', 'a:0:{}'),
(70, 19, '_virtual', 'no'),
(71, 19, '_downloadable', 'no'),
(72, 19, '_product_image_gallery', '37'),
(73, 19, '_download_limit', '-1'),
(74, 19, '_download_expiry', '-1'),
(75, 19, '_stock', NULL),
(76, 19, '_stock_status', 'instock'),
(77, 19, '_product_attributes', 'a:2:{s:13:\"pa_kich-thuoc\";a:6:{s:4:\"name\";s:13:\"pa_kich-thuoc\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_mau-sac\";a:6:{s:4:\"name\";s:10:\"pa_mau-sac\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(78, 19, '_product_version', '3.3.4'),
(148, 23, '_variation_description', ''),
(149, 23, '_sku', ''),
(150, 23, '_regular_price', '560000'),
(151, 23, '_sale_price', '420000'),
(152, 23, '_sale_price_dates_from', ''),
(153, 23, '_sale_price_dates_to', ''),
(154, 23, 'total_sales', '0'),
(155, 23, '_tax_status', 'taxable'),
(156, 23, '_tax_class', 'parent'),
(157, 23, '_manage_stock', 'no'),
(158, 23, '_backorders', 'no'),
(159, 23, '_sold_individually', 'no'),
(160, 23, '_weight', ''),
(161, 23, '_length', ''),
(162, 23, '_width', ''),
(163, 23, '_height', ''),
(164, 23, '_upsell_ids', 'a:0:{}'),
(165, 23, '_crosssell_ids', 'a:0:{}'),
(166, 23, '_purchase_note', ''),
(167, 23, '_default_attributes', 'a:0:{}'),
(168, 23, '_virtual', 'no'),
(169, 23, '_downloadable', 'no'),
(170, 23, '_product_image_gallery', ''),
(171, 23, '_download_limit', '-1'),
(172, 23, '_download_expiry', '-1'),
(173, 23, '_stock', NULL),
(174, 23, '_stock_status', 'outofstock'),
(175, 23, '_wc_average_rating', '0'),
(176, 23, '_wc_rating_count', 'a:0:{}'),
(177, 23, '_wc_review_count', '0'),
(178, 23, '_downloadable_files', 'a:0:{}'),
(179, 23, 'attribute_pa_mau-sac', 'den'),
(180, 23, 'attribute_pa_kich-thuoc', '2xl'),
(181, 23, '_price', '420000'),
(182, 23, '_product_version', '3.3.4'),
(183, 24, '_variation_description', ''),
(184, 24, '_sku', ''),
(185, 24, '_regular_price', '560000'),
(186, 24, '_sale_price', '420000'),
(187, 24, '_sale_price_dates_from', ''),
(188, 24, '_sale_price_dates_to', ''),
(189, 24, 'total_sales', '0'),
(190, 24, '_tax_status', 'taxable'),
(191, 24, '_tax_class', 'parent'),
(192, 24, '_manage_stock', 'no'),
(193, 24, '_backorders', 'no'),
(194, 24, '_sold_individually', 'no'),
(195, 24, '_weight', ''),
(196, 24, '_length', ''),
(197, 24, '_width', ''),
(198, 24, '_height', ''),
(199, 24, '_upsell_ids', 'a:0:{}'),
(200, 24, '_crosssell_ids', 'a:0:{}'),
(201, 24, '_purchase_note', ''),
(202, 24, '_default_attributes', 'a:0:{}'),
(203, 24, '_virtual', 'no'),
(204, 24, '_downloadable', 'no'),
(205, 24, '_product_image_gallery', ''),
(206, 24, '_download_limit', '-1'),
(207, 24, '_download_expiry', '-1'),
(208, 24, '_stock', NULL),
(209, 24, '_stock_status', 'outofstock'),
(210, 24, '_wc_average_rating', '0'),
(211, 24, '_wc_rating_count', 'a:0:{}'),
(212, 24, '_wc_review_count', '0'),
(213, 24, '_downloadable_files', 'a:0:{}'),
(214, 24, 'attribute_pa_mau-sac', 'trang'),
(215, 24, 'attribute_pa_kich-thuoc', '2xl'),
(216, 24, '_price', '420000'),
(217, 24, '_product_version', '3.3.4'),
(218, 25, '_variation_description', ''),
(219, 25, '_sku', ''),
(220, 25, '_regular_price', '560000'),
(221, 25, '_sale_price', '420000'),
(222, 25, '_sale_price_dates_from', ''),
(223, 25, '_sale_price_dates_to', ''),
(224, 25, 'total_sales', '0'),
(225, 25, '_tax_status', 'taxable'),
(226, 25, '_tax_class', 'parent'),
(227, 25, '_manage_stock', 'no'),
(228, 25, '_backorders', 'no'),
(229, 25, '_sold_individually', 'no'),
(230, 25, '_weight', ''),
(231, 25, '_length', ''),
(232, 25, '_width', ''),
(233, 25, '_height', ''),
(234, 25, '_upsell_ids', 'a:0:{}'),
(235, 25, '_crosssell_ids', 'a:0:{}'),
(236, 25, '_purchase_note', ''),
(237, 25, '_default_attributes', 'a:0:{}'),
(238, 25, '_virtual', 'no'),
(239, 25, '_downloadable', 'no'),
(240, 25, '_product_image_gallery', ''),
(241, 25, '_download_limit', '-1'),
(242, 25, '_download_expiry', '-1'),
(243, 25, '_stock', NULL),
(244, 25, '_stock_status', 'onbackorder'),
(245, 25, '_wc_average_rating', '0'),
(246, 25, '_wc_rating_count', 'a:0:{}'),
(247, 25, '_wc_review_count', '0'),
(248, 25, '_downloadable_files', 'a:0:{}'),
(249, 25, 'attribute_pa_mau-sac', 'den'),
(250, 25, 'attribute_pa_kich-thuoc', '3xl'),
(251, 25, '_price', '420000'),
(252, 25, '_product_version', '3.3.4'),
(253, 26, '_variation_description', ''),
(254, 26, '_sku', ''),
(255, 26, '_regular_price', '560000'),
(256, 26, '_sale_price', '420000'),
(257, 26, '_sale_price_dates_from', ''),
(258, 26, '_sale_price_dates_to', ''),
(259, 26, 'total_sales', '0'),
(260, 26, '_tax_status', 'taxable'),
(261, 26, '_tax_class', 'parent'),
(262, 26, '_manage_stock', 'no'),
(263, 26, '_backorders', 'no'),
(264, 26, '_sold_individually', 'no'),
(265, 26, '_weight', ''),
(266, 26, '_length', ''),
(267, 26, '_width', ''),
(268, 26, '_height', ''),
(269, 26, '_upsell_ids', 'a:0:{}'),
(270, 26, '_crosssell_ids', 'a:0:{}'),
(271, 26, '_purchase_note', ''),
(272, 26, '_default_attributes', 'a:0:{}'),
(273, 26, '_virtual', 'no'),
(274, 26, '_downloadable', 'no'),
(275, 26, '_product_image_gallery', ''),
(276, 26, '_download_limit', '-1'),
(277, 26, '_download_expiry', '-1'),
(278, 26, '_stock', NULL),
(279, 26, '_stock_status', 'onbackorder'),
(280, 26, '_wc_average_rating', '0'),
(281, 26, '_wc_rating_count', 'a:0:{}'),
(282, 26, '_wc_review_count', '0'),
(283, 26, '_downloadable_files', 'a:0:{}'),
(284, 26, 'attribute_pa_mau-sac', 'trang'),
(285, 26, 'attribute_pa_kich-thuoc', '3xl'),
(286, 26, '_price', '420000'),
(287, 26, '_product_version', '3.3.4'),
(288, 27, '_variation_description', ''),
(289, 27, '_sku', ''),
(290, 27, '_regular_price', '560000'),
(291, 27, '_sale_price', '420000'),
(292, 27, '_sale_price_dates_from', ''),
(293, 27, '_sale_price_dates_to', ''),
(294, 27, 'total_sales', '0'),
(295, 27, '_tax_status', 'taxable'),
(296, 27, '_tax_class', 'parent'),
(297, 27, '_manage_stock', 'no'),
(298, 27, '_backorders', 'no'),
(299, 27, '_sold_individually', 'no'),
(300, 27, '_weight', ''),
(301, 27, '_length', ''),
(302, 27, '_width', ''),
(303, 27, '_height', ''),
(304, 27, '_upsell_ids', 'a:0:{}'),
(305, 27, '_crosssell_ids', 'a:0:{}'),
(306, 27, '_purchase_note', ''),
(307, 27, '_default_attributes', 'a:0:{}'),
(308, 27, '_virtual', 'no'),
(309, 27, '_downloadable', 'no'),
(310, 27, '_product_image_gallery', ''),
(311, 27, '_download_limit', '-1'),
(312, 27, '_download_expiry', '-1'),
(313, 27, '_stock', NULL),
(314, 27, '_stock_status', 'outofstock'),
(315, 27, '_wc_average_rating', '0'),
(316, 27, '_wc_rating_count', 'a:0:{}'),
(317, 27, '_wc_review_count', '0'),
(318, 27, '_downloadable_files', 'a:0:{}'),
(319, 27, 'attribute_pa_mau-sac', 'den'),
(320, 27, 'attribute_pa_kich-thuoc', 'l'),
(321, 27, '_price', '420000'),
(322, 27, '_product_version', '3.3.4'),
(323, 28, '_variation_description', ''),
(324, 28, '_sku', ''),
(325, 28, '_regular_price', '560000'),
(326, 28, '_sale_price', '420000'),
(327, 28, '_sale_price_dates_from', ''),
(328, 28, '_sale_price_dates_to', ''),
(329, 28, 'total_sales', '0'),
(330, 28, '_tax_status', 'taxable'),
(331, 28, '_tax_class', 'parent'),
(332, 28, '_manage_stock', 'no'),
(333, 28, '_backorders', 'no'),
(334, 28, '_sold_individually', 'no'),
(335, 28, '_weight', ''),
(336, 28, '_length', ''),
(337, 28, '_width', ''),
(338, 28, '_height', ''),
(339, 28, '_upsell_ids', 'a:0:{}'),
(340, 28, '_crosssell_ids', 'a:0:{}'),
(341, 28, '_purchase_note', ''),
(342, 28, '_default_attributes', 'a:0:{}'),
(343, 28, '_virtual', 'no'),
(344, 28, '_downloadable', 'no'),
(345, 28, '_product_image_gallery', ''),
(346, 28, '_download_limit', '-1'),
(347, 28, '_download_expiry', '-1'),
(348, 28, '_stock', NULL),
(349, 28, '_stock_status', 'outofstock'),
(350, 28, '_wc_average_rating', '0'),
(351, 28, '_wc_rating_count', 'a:0:{}'),
(352, 28, '_wc_review_count', '0'),
(353, 28, '_downloadable_files', 'a:0:{}'),
(354, 28, 'attribute_pa_mau-sac', 'trang'),
(355, 28, 'attribute_pa_kich-thuoc', 'l'),
(356, 28, '_price', '420000'),
(357, 28, '_product_version', '3.3.4'),
(358, 29, '_variation_description', ''),
(359, 29, '_sku', ''),
(360, 29, '_regular_price', '560000'),
(361, 29, '_sale_price', '420000'),
(362, 29, '_sale_price_dates_from', ''),
(363, 29, '_sale_price_dates_to', ''),
(364, 29, 'total_sales', '0'),
(365, 29, '_tax_status', 'taxable'),
(366, 29, '_tax_class', 'parent'),
(367, 29, '_manage_stock', 'no'),
(368, 29, '_backorders', 'no'),
(369, 29, '_sold_individually', 'no'),
(370, 29, '_weight', ''),
(371, 29, '_length', ''),
(372, 29, '_width', ''),
(373, 29, '_height', ''),
(374, 29, '_upsell_ids', 'a:0:{}'),
(375, 29, '_crosssell_ids', 'a:0:{}'),
(376, 29, '_purchase_note', ''),
(377, 29, '_default_attributes', 'a:0:{}'),
(378, 29, '_virtual', 'no'),
(379, 29, '_downloadable', 'no'),
(380, 29, '_product_image_gallery', ''),
(381, 29, '_download_limit', '-1'),
(382, 29, '_download_expiry', '-1'),
(383, 29, '_stock', NULL),
(384, 29, '_stock_status', 'outofstock'),
(385, 29, '_wc_average_rating', '0'),
(386, 29, '_wc_rating_count', 'a:0:{}'),
(387, 29, '_wc_review_count', '0'),
(388, 29, '_downloadable_files', 'a:0:{}'),
(389, 29, 'attribute_pa_mau-sac', 'den'),
(390, 29, 'attribute_pa_kich-thuoc', 'm'),
(391, 29, '_price', '420000'),
(392, 29, '_product_version', '3.3.4'),
(393, 30, '_variation_description', ''),
(394, 30, '_sku', ''),
(395, 30, '_regular_price', '560000'),
(396, 30, '_sale_price', '420000'),
(397, 30, '_sale_price_dates_from', ''),
(398, 30, '_sale_price_dates_to', ''),
(399, 30, 'total_sales', '0'),
(400, 30, '_tax_status', 'taxable'),
(401, 30, '_tax_class', 'parent'),
(402, 30, '_manage_stock', 'no'),
(403, 30, '_backorders', 'no'),
(404, 30, '_sold_individually', 'no'),
(405, 30, '_weight', ''),
(406, 30, '_length', ''),
(407, 30, '_width', ''),
(408, 30, '_height', ''),
(409, 30, '_upsell_ids', 'a:0:{}'),
(410, 30, '_crosssell_ids', 'a:0:{}'),
(411, 30, '_purchase_note', ''),
(412, 30, '_default_attributes', 'a:0:{}'),
(413, 30, '_virtual', 'no'),
(414, 30, '_downloadable', 'no'),
(415, 30, '_product_image_gallery', ''),
(416, 30, '_download_limit', '-1'),
(417, 30, '_download_expiry', '-1'),
(418, 30, '_stock', NULL),
(419, 30, '_stock_status', 'outofstock'),
(420, 30, '_wc_average_rating', '0'),
(421, 30, '_wc_rating_count', 'a:0:{}'),
(422, 30, '_wc_review_count', '0'),
(423, 30, '_downloadable_files', 'a:0:{}'),
(424, 30, 'attribute_pa_mau-sac', 'trang'),
(425, 30, 'attribute_pa_kich-thuoc', 'm'),
(426, 30, '_price', '420000'),
(427, 30, '_product_version', '3.3.4'),
(428, 31, '_variation_description', ''),
(429, 31, '_sku', ''),
(430, 31, '_regular_price', '560000'),
(431, 31, '_sale_price', '420000'),
(432, 31, '_sale_price_dates_from', ''),
(433, 31, '_sale_price_dates_to', ''),
(434, 31, 'total_sales', '0'),
(435, 31, '_tax_status', 'taxable'),
(436, 31, '_tax_class', 'parent'),
(437, 31, '_manage_stock', 'no'),
(438, 31, '_backorders', 'no'),
(439, 31, '_sold_individually', 'no'),
(440, 31, '_weight', ''),
(441, 31, '_length', ''),
(442, 31, '_width', ''),
(443, 31, '_height', ''),
(444, 31, '_upsell_ids', 'a:0:{}'),
(445, 31, '_crosssell_ids', 'a:0:{}'),
(446, 31, '_purchase_note', ''),
(447, 31, '_default_attributes', 'a:0:{}'),
(448, 31, '_virtual', 'no'),
(449, 31, '_downloadable', 'no'),
(450, 31, '_product_image_gallery', ''),
(451, 31, '_download_limit', '-1'),
(452, 31, '_download_expiry', '-1'),
(453, 31, '_stock', NULL),
(454, 31, '_stock_status', 'outofstock'),
(455, 31, '_wc_average_rating', '0'),
(456, 31, '_wc_rating_count', 'a:0:{}'),
(457, 31, '_wc_review_count', '0'),
(458, 31, '_downloadable_files', 'a:0:{}'),
(459, 31, 'attribute_pa_mau-sac', 'den'),
(460, 31, 'attribute_pa_kich-thuoc', 's'),
(461, 31, '_price', '420000'),
(462, 31, '_product_version', '3.3.4'),
(463, 32, '_variation_description', ''),
(464, 32, '_sku', ''),
(465, 32, '_regular_price', '560000'),
(466, 32, '_sale_price', '420000'),
(467, 32, '_sale_price_dates_from', ''),
(468, 32, '_sale_price_dates_to', ''),
(469, 32, 'total_sales', '0'),
(470, 32, '_tax_status', 'taxable'),
(471, 32, '_tax_class', 'parent'),
(472, 32, '_manage_stock', 'no'),
(473, 32, '_backorders', 'no'),
(474, 32, '_sold_individually', 'no'),
(475, 32, '_weight', ''),
(476, 32, '_length', ''),
(477, 32, '_width', ''),
(478, 32, '_height', ''),
(479, 32, '_upsell_ids', 'a:0:{}'),
(480, 32, '_crosssell_ids', 'a:0:{}'),
(481, 32, '_purchase_note', ''),
(482, 32, '_default_attributes', 'a:0:{}'),
(483, 32, '_virtual', 'no'),
(484, 32, '_downloadable', 'no'),
(485, 32, '_product_image_gallery', ''),
(486, 32, '_download_limit', '-1'),
(487, 32, '_download_expiry', '-1'),
(488, 32, '_stock', NULL),
(489, 32, '_stock_status', 'outofstock'),
(490, 32, '_wc_average_rating', '0'),
(491, 32, '_wc_rating_count', 'a:0:{}'),
(492, 32, '_wc_review_count', '0'),
(493, 32, '_downloadable_files', 'a:0:{}'),
(494, 32, 'attribute_pa_mau-sac', 'trang'),
(495, 32, 'attribute_pa_kich-thuoc', 's'),
(496, 32, '_price', '420000'),
(497, 32, '_product_version', '3.3.4'),
(498, 33, '_variation_description', ''),
(499, 33, '_sku', ''),
(500, 33, '_regular_price', '560000'),
(501, 33, '_sale_price', '420000'),
(502, 33, '_sale_price_dates_from', ''),
(503, 33, '_sale_price_dates_to', ''),
(504, 33, 'total_sales', '0'),
(505, 33, '_tax_status', 'taxable'),
(506, 33, '_tax_class', 'parent'),
(507, 33, '_manage_stock', 'no'),
(508, 33, '_backorders', 'no'),
(509, 33, '_sold_individually', 'no'),
(510, 33, '_weight', ''),
(511, 33, '_length', ''),
(512, 33, '_width', ''),
(513, 33, '_height', ''),
(514, 33, '_upsell_ids', 'a:0:{}'),
(515, 33, '_crosssell_ids', 'a:0:{}'),
(516, 33, '_purchase_note', ''),
(517, 33, '_default_attributes', 'a:0:{}'),
(518, 33, '_virtual', 'no'),
(519, 33, '_downloadable', 'no'),
(520, 33, '_product_image_gallery', ''),
(521, 33, '_download_limit', '-1'),
(522, 33, '_download_expiry', '-1'),
(523, 33, '_stock', NULL),
(524, 33, '_stock_status', 'outofstock'),
(525, 33, '_wc_average_rating', '0'),
(526, 33, '_wc_rating_count', 'a:0:{}'),
(527, 33, '_wc_review_count', '0'),
(528, 33, '_downloadable_files', 'a:0:{}'),
(529, 33, 'attribute_pa_mau-sac', 'den'),
(530, 33, 'attribute_pa_kich-thuoc', 'xl'),
(531, 33, '_price', '420000'),
(532, 33, '_product_version', '3.3.4'),
(533, 34, '_variation_description', ''),
(534, 34, '_sku', ''),
(535, 34, '_regular_price', '560000'),
(536, 34, '_sale_price', '420000'),
(537, 34, '_sale_price_dates_from', ''),
(538, 34, '_sale_price_dates_to', ''),
(539, 34, 'total_sales', '0'),
(540, 34, '_tax_status', 'taxable'),
(541, 34, '_tax_class', 'parent'),
(542, 34, '_manage_stock', 'no'),
(543, 34, '_backorders', 'no'),
(544, 34, '_sold_individually', 'no'),
(545, 34, '_weight', ''),
(546, 34, '_length', ''),
(547, 34, '_width', ''),
(548, 34, '_height', ''),
(549, 34, '_upsell_ids', 'a:0:{}'),
(550, 34, '_crosssell_ids', 'a:0:{}'),
(551, 34, '_purchase_note', ''),
(552, 34, '_default_attributes', 'a:0:{}'),
(553, 34, '_virtual', 'no'),
(554, 34, '_downloadable', 'no'),
(555, 34, '_product_image_gallery', ''),
(556, 34, '_download_limit', '-1'),
(557, 34, '_download_expiry', '-1'),
(558, 34, '_stock', NULL),
(559, 34, '_stock_status', 'outofstock'),
(560, 34, '_wc_average_rating', '0'),
(561, 34, '_wc_rating_count', 'a:0:{}'),
(562, 34, '_wc_review_count', '0'),
(563, 34, '_downloadable_files', 'a:0:{}'),
(564, 34, 'attribute_pa_mau-sac', 'trang'),
(565, 34, 'attribute_pa_kich-thuoc', 'xl'),
(566, 34, '_price', '420000'),
(567, 34, '_product_version', '3.3.4'),
(568, 35, '_variation_description', ''),
(569, 35, '_sku', ''),
(570, 35, '_regular_price', '560000'),
(571, 35, '_sale_price', '420000'),
(572, 35, '_sale_price_dates_from', ''),
(573, 35, '_sale_price_dates_to', ''),
(574, 35, 'total_sales', '0'),
(575, 35, '_tax_status', 'taxable'),
(576, 35, '_tax_class', 'parent'),
(577, 35, '_manage_stock', 'no'),
(578, 35, '_backorders', 'no'),
(579, 35, '_sold_individually', 'no'),
(580, 35, '_weight', ''),
(581, 35, '_length', ''),
(582, 35, '_width', ''),
(583, 35, '_height', ''),
(584, 35, '_upsell_ids', 'a:0:{}'),
(585, 35, '_crosssell_ids', 'a:0:{}'),
(586, 35, '_purchase_note', ''),
(587, 35, '_default_attributes', 'a:0:{}'),
(588, 35, '_virtual', 'no'),
(589, 35, '_downloadable', 'no'),
(590, 35, '_product_image_gallery', ''),
(591, 35, '_download_limit', '-1'),
(592, 35, '_download_expiry', '-1'),
(593, 35, '_stock', NULL),
(594, 35, '_stock_status', 'outofstock'),
(595, 35, '_wc_average_rating', '0'),
(596, 35, '_wc_rating_count', 'a:0:{}'),
(597, 35, '_wc_review_count', '0'),
(598, 35, '_downloadable_files', 'a:0:{}'),
(599, 35, 'attribute_pa_mau-sac', 'den'),
(600, 35, 'attribute_pa_kich-thuoc', 'xs'),
(601, 35, '_price', '420000'),
(602, 35, '_product_version', '3.3.4'),
(603, 36, '_variation_description', ''),
(604, 36, '_sku', ''),
(605, 36, '_regular_price', '560000'),
(606, 36, '_sale_price', '420000'),
(607, 36, '_sale_price_dates_from', ''),
(608, 36, '_sale_price_dates_to', ''),
(609, 36, 'total_sales', '0'),
(610, 36, '_tax_status', 'taxable'),
(611, 36, '_tax_class', 'parent'),
(612, 36, '_manage_stock', 'no'),
(613, 36, '_backorders', 'no'),
(614, 36, '_sold_individually', 'no'),
(615, 36, '_weight', ''),
(616, 36, '_length', ''),
(617, 36, '_width', ''),
(618, 36, '_height', ''),
(619, 36, '_upsell_ids', 'a:0:{}'),
(620, 36, '_crosssell_ids', 'a:0:{}'),
(621, 36, '_purchase_note', ''),
(622, 36, '_default_attributes', 'a:0:{}'),
(623, 36, '_virtual', 'no'),
(624, 36, '_downloadable', 'no'),
(625, 36, '_product_image_gallery', ''),
(626, 36, '_download_limit', '-1'),
(627, 36, '_download_expiry', '-1'),
(628, 36, '_stock', NULL),
(629, 36, '_stock_status', 'outofstock'),
(630, 36, '_wc_average_rating', '0'),
(631, 36, '_wc_rating_count', 'a:0:{}'),
(632, 36, '_wc_review_count', '0'),
(633, 36, '_downloadable_files', 'a:0:{}'),
(634, 36, 'attribute_pa_mau-sac', 'trang'),
(635, 36, 'attribute_pa_kich-thuoc', 'xs'),
(636, 36, '_price', '420000'),
(637, 36, '_product_version', '3.3.4'),
(646, 37, '_wp_attached_file', '2018/03/28166675_1679479695452286_4679760645294428842_n_large.jpg'),
(647, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:480;s:4:\"file\";s:65:\"2018/03/28166675_1679479695452286_4679760645294428842_n_large.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:65:\"28166675_1679479695452286_4679760645294428842_n_large-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:65:\"28166675_1679479695452286_4679760645294428842_n_large-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"jcaa_attribute_small\";a:4:{s:4:\"file\";s:63:\"28166675_1679479695452286_4679760645294428842_n_large-20x20.jpg\";s:5:\"width\";i:20;s:6:\"height\";i:20;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"jcaa_attribute_medium\";a:4:{s:4:\"file\";s:63:\"28166675_1679479695452286_4679760645294428842_n_large-30x30.jpg\";s:5:\"width\";i:30;s:6:\"height\";i:30;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"jcaa_attribute_large\";a:4:{s:4:\"file\";s:63:\"28166675_1679479695452286_4679760645294428842_n_large-40x40.jpg\";s:5:\"width\";i:40;s:6:\"height\";i:40;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:65:\"28166675_1679479695452286_4679760645294428842_n_large-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:65:\"28166675_1679479695452286_4679760645294428842_n_large-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:65:\"28166675_1679479695452286_4679760645294428842_n_large-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:65:\"28166675_1679479695452286_4679760645294428842_n_large-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:65:\"28166675_1679479695452286_4679760645294428842_n_large-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:65:\"28166675_1679479695452286_4679760645294428842_n_large-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(648, 23, '_thumbnail_id', '20'),
(649, 24, '_thumbnail_id', '37'),
(650, 25, '_thumbnail_id', '20'),
(651, 26, '_thumbnail_id', '37'),
(652, 27, '_thumbnail_id', '20'),
(653, 28, '_thumbnail_id', '37'),
(654, 29, '_thumbnail_id', '20'),
(655, 30, '_thumbnail_id', '37'),
(656, 31, '_thumbnail_id', '20'),
(657, 32, '_thumbnail_id', '37'),
(658, 33, '_thumbnail_id', '20'),
(659, 34, '_thumbnail_id', '37'),
(660, 35, '_thumbnail_id', '20'),
(661, 36, '_thumbnail_id', '37'),
(662, 19, '_thumbnail_id', '20'),
(663, 38, '_edit_last', '1'),
(664, 38, '_edit_lock', '1521612965:1'),
(665, 38, '_wp_old_slug', 'quan-ao'),
(666, 18, '_wp_trash_meta_status', 'draft'),
(667, 18, '_wp_trash_meta_time', '1521612190'),
(668, 18, '_wp_desired_post_slug', ''),
(2719, 25, '_ywpo_preorder', 'no'),
(2720, 25, '_ywpo_preorder_label', ''),
(2721, 25, '_ywpo_preorder_price', ''),
(2722, 25, '_ywpo_price_adjustment_amount', ''),
(2723, 25, '_ywpo_price_adjustment', 'manual'),
(2724, 25, '_ywpo_adjustment_type', 'fixed'),
(2725, 26, '_ywpo_preorder', 'no'),
(2726, 26, '_ywpo_preorder_label', ''),
(2727, 26, '_ywpo_preorder_price', ''),
(2728, 26, '_ywpo_price_adjustment_amount', ''),
(2729, 26, '_ywpo_price_adjustment', 'manual'),
(2730, 26, '_ywpo_adjustment_type', 'fixed'),
(2731, 23, '_ywpo_preorder', 'no'),
(2732, 23, '_ywpo_preorder_label', ''),
(2733, 23, '_ywpo_preorder_price', ''),
(2734, 23, '_ywpo_price_adjustment_amount', ''),
(2735, 23, '_ywpo_price_adjustment', 'manual'),
(2736, 23, '_ywpo_adjustment_type', 'fixed'),
(2737, 24, '_ywpo_preorder', 'no'),
(2738, 24, '_ywpo_preorder_label', ''),
(2739, 24, '_ywpo_preorder_price', ''),
(2740, 24, '_ywpo_price_adjustment_amount', ''),
(2741, 24, '_ywpo_price_adjustment', 'manual'),
(2742, 24, '_ywpo_adjustment_type', 'fixed'),
(2743, 33, '_ywpo_preorder', 'no'),
(2744, 33, '_ywpo_preorder_label', ''),
(2745, 33, '_ywpo_preorder_price', ''),
(2746, 33, '_ywpo_price_adjustment_amount', ''),
(2747, 33, '_ywpo_price_adjustment', 'manual'),
(2748, 33, '_ywpo_adjustment_type', 'fixed'),
(2749, 34, '_ywpo_preorder', 'no'),
(2750, 34, '_ywpo_preorder_label', ''),
(2751, 34, '_ywpo_preorder_price', ''),
(2752, 34, '_ywpo_price_adjustment_amount', ''),
(2753, 34, '_ywpo_price_adjustment', 'manual'),
(2754, 34, '_ywpo_adjustment_type', 'fixed'),
(2755, 27, '_ywpo_preorder', 'no'),
(2756, 27, '_ywpo_preorder_label', ''),
(2757, 27, '_ywpo_preorder_price', ''),
(2758, 27, '_ywpo_price_adjustment_amount', ''),
(2759, 27, '_ywpo_price_adjustment', 'manual'),
(2760, 27, '_ywpo_adjustment_type', 'fixed'),
(2761, 28, '_ywpo_preorder', 'no'),
(2762, 28, '_ywpo_preorder_label', ''),
(2763, 28, '_ywpo_preorder_price', ''),
(2764, 28, '_ywpo_price_adjustment_amount', ''),
(2765, 28, '_ywpo_price_adjustment', 'manual'),
(2766, 28, '_ywpo_adjustment_type', 'fixed'),
(2767, 29, '_ywpo_preorder', 'no'),
(2768, 29, '_ywpo_preorder_label', ''),
(2769, 29, '_ywpo_preorder_price', ''),
(2770, 29, '_ywpo_price_adjustment_amount', ''),
(2771, 29, '_ywpo_price_adjustment', 'manual'),
(2772, 29, '_ywpo_adjustment_type', 'fixed'),
(2773, 30, '_ywpo_preorder', 'no'),
(2774, 30, '_ywpo_preorder_label', ''),
(2775, 30, '_ywpo_preorder_price', ''),
(2776, 30, '_ywpo_price_adjustment_amount', ''),
(2777, 30, '_ywpo_price_adjustment', 'manual'),
(2778, 30, '_ywpo_adjustment_type', 'fixed'),
(2779, 31, '_ywpo_preorder', 'no'),
(2780, 31, '_ywpo_preorder_label', ''),
(2781, 31, '_ywpo_preorder_price', ''),
(2782, 31, '_ywpo_price_adjustment_amount', ''),
(2783, 31, '_ywpo_price_adjustment', 'manual'),
(2784, 31, '_ywpo_adjustment_type', 'fixed'),
(2785, 32, '_ywpo_preorder', 'no'),
(2786, 32, '_ywpo_preorder_label', ''),
(2787, 32, '_ywpo_preorder_price', ''),
(2788, 32, '_ywpo_price_adjustment_amount', ''),
(2789, 32, '_ywpo_price_adjustment', 'manual'),
(2790, 32, '_ywpo_adjustment_type', 'fixed'),
(2791, 35, '_ywpo_preorder', 'no'),
(2792, 35, '_ywpo_preorder_label', ''),
(2793, 35, '_ywpo_preorder_price', ''),
(2794, 35, '_ywpo_price_adjustment_amount', ''),
(2795, 35, '_ywpo_price_adjustment', 'manual'),
(2796, 35, '_ywpo_adjustment_type', 'fixed'),
(2797, 36, '_ywpo_preorder', 'no'),
(2798, 36, '_ywpo_preorder_label', ''),
(2799, 36, '_ywpo_preorder_price', ''),
(2800, 36, '_ywpo_price_adjustment_amount', ''),
(2801, 36, '_ywpo_price_adjustment', 'manual'),
(2802, 36, '_ywpo_adjustment_type', 'fixed'),
(2803, 35, '_wp_trash_meta_status', 'private'),
(2804, 35, '_wp_trash_meta_time', '1521703195'),
(2805, 35, '_wp_desired_post_slug', 'ao-lining-aplk373-13'),
(2806, 36, '_wp_trash_meta_status', 'private'),
(2807, 36, '_wp_trash_meta_time', '1521703195'),
(2808, 36, '_wp_desired_post_slug', 'ao-lining-aplk373-14'),
(2809, 25, '_wp_trash_meta_status', 'private'),
(2810, 25, '_wp_trash_meta_time', '1521703195'),
(2811, 25, '_wp_desired_post_slug', 'ao-lining-aplk373-3'),
(2812, 26, '_wp_trash_meta_status', 'private'),
(2813, 26, '_wp_trash_meta_time', '1521703195'),
(2814, 26, '_wp_desired_post_slug', 'ao-lining-aplk373-4'),
(2815, 27, '_wp_trash_meta_status', 'private'),
(2816, 27, '_wp_trash_meta_time', '1521703195'),
(2817, 27, '_wp_desired_post_slug', 'ao-lining-aplk373-5'),
(2818, 28, '_wp_trash_meta_status', 'private'),
(2819, 28, '_wp_trash_meta_time', '1521703195'),
(2820, 28, '_wp_desired_post_slug', 'ao-lining-aplk373-6'),
(2821, 29, '_wp_trash_meta_status', 'private'),
(2822, 29, '_wp_trash_meta_time', '1521703195'),
(2823, 29, '_wp_desired_post_slug', 'ao-lining-aplk373-7'),
(2824, 30, '_wp_trash_meta_status', 'private'),
(2825, 30, '_wp_trash_meta_time', '1521703195'),
(2826, 30, '_wp_desired_post_slug', 'ao-lining-aplk373-8'),
(2827, 31, '_wp_trash_meta_status', 'private'),
(2828, 31, '_wp_trash_meta_time', '1521703195'),
(2829, 31, '_wp_desired_post_slug', 'ao-lining-aplk373-9'),
(2830, 32, '_wp_trash_meta_status', 'private'),
(2831, 32, '_wp_trash_meta_time', '1521703195'),
(2832, 32, '_wp_desired_post_slug', 'ao-lining-aplk373-10'),
(2833, 33, '_wp_trash_meta_status', 'private'),
(2834, 33, '_wp_trash_meta_time', '1521703195'),
(2835, 33, '_wp_desired_post_slug', 'ao-lining-aplk373-11'),
(2836, 34, '_wp_trash_meta_status', 'private'),
(2837, 34, '_wp_trash_meta_time', '1521703195'),
(2838, 34, '_wp_desired_post_slug', 'ao-lining-aplk373-12'),
(2839, 23, '_wp_trash_meta_status', 'private'),
(2840, 23, '_wp_trash_meta_time', '1521703195'),
(2841, 23, '_wp_desired_post_slug', 'ao-lining-aplk373'),
(2842, 24, '_wp_trash_meta_status', 'private'),
(2843, 24, '_wp_trash_meta_time', '1521703195'),
(2844, 24, '_wp_desired_post_slug', 'ao-lining-aplk373-2'),
(2846, 48, '_variation_description', ''),
(2847, 48, '_sku', ''),
(2848, 48, '_regular_price', '580000'),
(2849, 48, '_sale_price', '450000'),
(2850, 48, '_sale_price_dates_from', ''),
(2851, 48, '_sale_price_dates_to', ''),
(2852, 48, 'total_sales', '0'),
(2853, 48, '_tax_status', 'taxable'),
(2854, 48, '_tax_class', 'parent'),
(2855, 48, '_manage_stock', 'no'),
(2856, 48, '_backorders', 'notify'),
(2857, 48, '_sold_individually', 'no'),
(2858, 48, '_weight', ''),
(2859, 48, '_length', ''),
(2860, 48, '_width', ''),
(2861, 48, '_height', ''),
(2862, 48, '_upsell_ids', 'a:0:{}'),
(2863, 48, '_crosssell_ids', 'a:0:{}'),
(2864, 48, '_purchase_note', ''),
(2865, 48, '_default_attributes', 'a:0:{}'),
(2866, 48, '_virtual', 'no'),
(2867, 48, '_downloadable', 'no'),
(2868, 48, '_product_image_gallery', ''),
(2869, 48, '_download_limit', '-1'),
(2870, 48, '_download_expiry', '-1'),
(2871, 48, '_stock', ''),
(2872, 48, '_stock_status', 'instock'),
(2873, 48, '_wc_average_rating', '0'),
(2874, 48, '_wc_rating_count', 'a:0:{}'),
(2875, 48, '_wc_review_count', '0'),
(2876, 48, '_downloadable_files', 'a:0:{}'),
(2877, 48, 'attribute_pa_mau-sac', 'den'),
(2878, 48, 'attribute_pa_kich-thuoc', '2xl'),
(2879, 48, '_price', '450000'),
(2880, 48, '_product_version', '3.3.4'),
(2881, 49, '_variation_description', ''),
(2882, 49, '_sku', ''),
(2883, 49, '_regular_price', '580000'),
(2884, 49, '_sale_price', '450000'),
(2885, 49, '_sale_price_dates_from', ''),
(2886, 49, '_sale_price_dates_to', ''),
(2887, 49, 'total_sales', '0'),
(2888, 49, '_tax_status', 'taxable'),
(2889, 49, '_tax_class', 'parent'),
(2890, 49, '_manage_stock', 'no'),
(2891, 49, '_backorders', 'no'),
(2892, 49, '_sold_individually', 'no'),
(2893, 49, '_weight', ''),
(2894, 49, '_length', ''),
(2895, 49, '_width', ''),
(2896, 49, '_height', ''),
(2897, 49, '_upsell_ids', 'a:0:{}'),
(2898, 49, '_crosssell_ids', 'a:0:{}'),
(2899, 49, '_purchase_note', ''),
(2900, 49, '_default_attributes', 'a:0:{}'),
(2901, 49, '_virtual', 'no'),
(2902, 49, '_downloadable', 'no'),
(2903, 49, '_product_image_gallery', ''),
(2904, 49, '_download_limit', '-1'),
(2905, 49, '_download_expiry', '-1'),
(2906, 49, '_stock', NULL),
(2907, 49, '_stock_status', 'instock'),
(2908, 49, '_wc_average_rating', '0'),
(2909, 49, '_wc_rating_count', 'a:0:{}'),
(2910, 49, '_wc_review_count', '0'),
(2911, 49, '_downloadable_files', 'a:0:{}'),
(2912, 49, 'attribute_pa_mau-sac', 'trang'),
(2913, 49, 'attribute_pa_kich-thuoc', '2xl'),
(2914, 49, '_price', '450000'),
(2915, 49, '_product_version', '3.3.4'),
(2916, 50, '_variation_description', ''),
(2917, 50, '_sku', ''),
(2918, 50, '_regular_price', '580000'),
(2919, 50, '_sale_price', '450000'),
(2920, 50, '_sale_price_dates_from', ''),
(2921, 50, '_sale_price_dates_to', ''),
(2922, 50, 'total_sales', '0'),
(2923, 50, '_tax_status', 'taxable'),
(2924, 50, '_tax_class', 'parent'),
(2925, 50, '_manage_stock', 'no'),
(2926, 50, '_backorders', 'no'),
(2927, 50, '_sold_individually', 'no'),
(2928, 50, '_weight', ''),
(2929, 50, '_length', ''),
(2930, 50, '_width', ''),
(2931, 50, '_height', ''),
(2932, 50, '_upsell_ids', 'a:0:{}'),
(2933, 50, '_crosssell_ids', 'a:0:{}'),
(2934, 50, '_purchase_note', ''),
(2935, 50, '_default_attributes', 'a:0:{}'),
(2936, 50, '_virtual', 'no'),
(2937, 50, '_downloadable', 'no'),
(2938, 50, '_product_image_gallery', ''),
(2939, 50, '_download_limit', '-1'),
(2940, 50, '_download_expiry', '-1'),
(2941, 50, '_stock', NULL),
(2942, 50, '_stock_status', 'instock'),
(2943, 50, '_wc_average_rating', '0'),
(2944, 50, '_wc_rating_count', 'a:0:{}'),
(2945, 50, '_wc_review_count', '0'),
(2946, 50, '_downloadable_files', 'a:0:{}'),
(2947, 50, 'attribute_pa_mau-sac', 'den'),
(2948, 50, 'attribute_pa_kich-thuoc', '3xl'),
(2949, 50, '_price', '450000'),
(2950, 50, '_product_version', '3.3.4'),
(2951, 51, '_variation_description', ''),
(2952, 51, '_sku', ''),
(2953, 51, '_regular_price', '580000'),
(2954, 51, '_sale_price', '450000'),
(2955, 51, '_sale_price_dates_from', ''),
(2956, 51, '_sale_price_dates_to', ''),
(2957, 51, 'total_sales', '0'),
(2958, 51, '_tax_status', 'taxable'),
(2959, 51, '_tax_class', 'parent'),
(2960, 51, '_manage_stock', 'no'),
(2961, 51, '_backorders', 'no'),
(2962, 51, '_sold_individually', 'no'),
(2963, 51, '_weight', ''),
(2964, 51, '_length', ''),
(2965, 51, '_width', ''),
(2966, 51, '_height', ''),
(2967, 51, '_upsell_ids', 'a:0:{}'),
(2968, 51, '_crosssell_ids', 'a:0:{}'),
(2969, 51, '_purchase_note', ''),
(2970, 51, '_default_attributes', 'a:0:{}'),
(2971, 51, '_virtual', 'no'),
(2972, 51, '_downloadable', 'no'),
(2973, 51, '_product_image_gallery', ''),
(2974, 51, '_download_limit', '-1'),
(2975, 51, '_download_expiry', '-1'),
(2976, 51, '_stock', NULL),
(2977, 51, '_stock_status', 'instock'),
(2978, 51, '_wc_average_rating', '0'),
(2979, 51, '_wc_rating_count', 'a:0:{}'),
(2980, 51, '_wc_review_count', '0'),
(2981, 51, '_downloadable_files', 'a:0:{}'),
(2982, 51, 'attribute_pa_mau-sac', 'trang'),
(2983, 51, 'attribute_pa_kich-thuoc', '3xl'),
(2984, 51, '_price', '450000'),
(2985, 51, '_product_version', '3.3.4'),
(2986, 52, '_variation_description', ''),
(2987, 52, '_sku', ''),
(2988, 52, '_regular_price', '580000'),
(2989, 52, '_sale_price', '450000'),
(2990, 52, '_sale_price_dates_from', ''),
(2991, 52, '_sale_price_dates_to', ''),
(2992, 52, 'total_sales', '0'),
(2993, 52, '_tax_status', 'taxable'),
(2994, 52, '_tax_class', 'parent'),
(2995, 52, '_manage_stock', 'no'),
(2996, 52, '_backorders', 'no'),
(2997, 52, '_sold_individually', 'no'),
(2998, 52, '_weight', ''),
(2999, 52, '_length', ''),
(3000, 52, '_width', ''),
(3001, 52, '_height', ''),
(3002, 52, '_upsell_ids', 'a:0:{}'),
(3003, 52, '_crosssell_ids', 'a:0:{}'),
(3004, 52, '_purchase_note', ''),
(3005, 52, '_default_attributes', 'a:0:{}'),
(3006, 52, '_virtual', 'no'),
(3007, 52, '_downloadable', 'no'),
(3008, 52, '_product_image_gallery', ''),
(3009, 52, '_download_limit', '-1'),
(3010, 52, '_download_expiry', '-1'),
(3011, 52, '_stock', NULL),
(3012, 52, '_stock_status', 'instock'),
(3013, 52, '_wc_average_rating', '0'),
(3014, 52, '_wc_rating_count', 'a:0:{}'),
(3015, 52, '_wc_review_count', '0'),
(3016, 52, '_downloadable_files', 'a:0:{}'),
(3017, 52, 'attribute_pa_mau-sac', 'den'),
(3018, 52, 'attribute_pa_kich-thuoc', 'xl'),
(3019, 52, '_price', '450000'),
(3020, 52, '_product_version', '3.3.4'),
(3021, 53, '_variation_description', ''),
(3022, 53, '_sku', ''),
(3023, 53, '_regular_price', '580000'),
(3024, 53, '_sale_price', '450000'),
(3025, 53, '_sale_price_dates_from', ''),
(3026, 53, '_sale_price_dates_to', ''),
(3027, 53, 'total_sales', '0'),
(3028, 53, '_tax_status', 'taxable'),
(3029, 53, '_tax_class', 'parent'),
(3030, 53, '_manage_stock', 'no'),
(3031, 53, '_backorders', 'no'),
(3032, 53, '_sold_individually', 'no'),
(3033, 53, '_weight', ''),
(3034, 53, '_length', ''),
(3035, 53, '_width', ''),
(3036, 53, '_height', ''),
(3037, 53, '_upsell_ids', 'a:0:{}'),
(3038, 53, '_crosssell_ids', 'a:0:{}'),
(3039, 53, '_purchase_note', ''),
(3040, 53, '_default_attributes', 'a:0:{}'),
(3041, 53, '_virtual', 'no'),
(3042, 53, '_downloadable', 'no'),
(3043, 53, '_product_image_gallery', ''),
(3044, 53, '_download_limit', '-1'),
(3045, 53, '_download_expiry', '-1'),
(3046, 53, '_stock', NULL),
(3047, 53, '_stock_status', 'instock'),
(3048, 53, '_wc_average_rating', '0'),
(3049, 53, '_wc_rating_count', 'a:0:{}'),
(3050, 53, '_wc_review_count', '0'),
(3051, 53, '_downloadable_files', 'a:0:{}'),
(3052, 53, 'attribute_pa_mau-sac', 'trang'),
(3053, 53, 'attribute_pa_kich-thuoc', 'xl'),
(3054, 53, '_price', '450000'),
(3055, 53, '_product_version', '3.3.4'),
(3056, 54, '_variation_description', ''),
(3057, 54, '_sku', ''),
(3058, 54, '_regular_price', '580000'),
(3059, 54, '_sale_price', '450000'),
(3060, 54, '_sale_price_dates_from', ''),
(3061, 54, '_sale_price_dates_to', ''),
(3062, 54, 'total_sales', '0'),
(3063, 54, '_tax_status', 'taxable'),
(3064, 54, '_tax_class', 'parent'),
(3065, 54, '_manage_stock', 'no'),
(3066, 54, '_backorders', 'no'),
(3067, 54, '_sold_individually', 'no'),
(3068, 54, '_weight', ''),
(3069, 54, '_length', ''),
(3070, 54, '_width', ''),
(3071, 54, '_height', ''),
(3072, 54, '_upsell_ids', 'a:0:{}'),
(3073, 54, '_crosssell_ids', 'a:0:{}'),
(3074, 54, '_purchase_note', ''),
(3075, 54, '_default_attributes', 'a:0:{}'),
(3076, 54, '_virtual', 'no'),
(3077, 54, '_downloadable', 'no'),
(3078, 54, '_product_image_gallery', ''),
(3079, 54, '_download_limit', '-1'),
(3080, 54, '_download_expiry', '-1'),
(3081, 54, '_stock', NULL),
(3082, 54, '_stock_status', 'instock'),
(3083, 54, '_wc_average_rating', '0'),
(3084, 54, '_wc_rating_count', 'a:0:{}'),
(3085, 54, '_wc_review_count', '0'),
(3086, 54, '_downloadable_files', 'a:0:{}'),
(3087, 54, 'attribute_pa_mau-sac', 'den'),
(3088, 54, 'attribute_pa_kich-thuoc', 'l'),
(3089, 54, '_price', '450000'),
(3090, 54, '_product_version', '3.3.4'),
(3091, 55, '_variation_description', ''),
(3092, 55, '_sku', ''),
(3093, 55, '_regular_price', '580000'),
(3094, 55, '_sale_price', '450000'),
(3095, 55, '_sale_price_dates_from', ''),
(3096, 55, '_sale_price_dates_to', ''),
(3097, 55, 'total_sales', '0'),
(3098, 55, '_tax_status', 'taxable'),
(3099, 55, '_tax_class', 'parent'),
(3100, 55, '_manage_stock', 'no'),
(3101, 55, '_backorders', 'no'),
(3102, 55, '_sold_individually', 'no'),
(3103, 55, '_weight', ''),
(3104, 55, '_length', ''),
(3105, 55, '_width', ''),
(3106, 55, '_height', ''),
(3107, 55, '_upsell_ids', 'a:0:{}'),
(3108, 55, '_crosssell_ids', 'a:0:{}'),
(3109, 55, '_purchase_note', ''),
(3110, 55, '_default_attributes', 'a:0:{}'),
(3111, 55, '_virtual', 'no'),
(3112, 55, '_downloadable', 'no'),
(3113, 55, '_product_image_gallery', ''),
(3114, 55, '_download_limit', '-1'),
(3115, 55, '_download_expiry', '-1'),
(3116, 55, '_stock', NULL),
(3117, 55, '_stock_status', 'instock'),
(3118, 55, '_wc_average_rating', '0'),
(3119, 55, '_wc_rating_count', 'a:0:{}'),
(3120, 55, '_wc_review_count', '0'),
(3121, 55, '_downloadable_files', 'a:0:{}'),
(3122, 55, 'attribute_pa_mau-sac', 'trang'),
(3123, 55, 'attribute_pa_kich-thuoc', 'l'),
(3124, 55, '_price', '450000'),
(3125, 55, '_product_version', '3.3.4'),
(3126, 56, '_variation_description', ''),
(3127, 56, '_sku', ''),
(3128, 56, '_regular_price', '580000'),
(3129, 56, '_sale_price', '450000'),
(3130, 56, '_sale_price_dates_from', ''),
(3131, 56, '_sale_price_dates_to', ''),
(3132, 56, 'total_sales', '0'),
(3133, 56, '_tax_status', 'taxable'),
(3134, 56, '_tax_class', 'parent'),
(3135, 56, '_manage_stock', 'no'),
(3136, 56, '_backorders', 'no'),
(3137, 56, '_sold_individually', 'no'),
(3138, 56, '_weight', ''),
(3139, 56, '_length', ''),
(3140, 56, '_width', ''),
(3141, 56, '_height', ''),
(3142, 56, '_upsell_ids', 'a:0:{}'),
(3143, 56, '_crosssell_ids', 'a:0:{}'),
(3144, 56, '_purchase_note', ''),
(3145, 56, '_default_attributes', 'a:0:{}'),
(3146, 56, '_virtual', 'no'),
(3147, 56, '_downloadable', 'no'),
(3148, 56, '_product_image_gallery', ''),
(3149, 56, '_download_limit', '-1'),
(3150, 56, '_download_expiry', '-1'),
(3151, 56, '_stock', NULL),
(3152, 56, '_stock_status', 'instock'),
(3153, 56, '_wc_average_rating', '0'),
(3154, 56, '_wc_rating_count', 'a:0:{}'),
(3155, 56, '_wc_review_count', '0'),
(3156, 56, '_downloadable_files', 'a:0:{}'),
(3157, 56, 'attribute_pa_mau-sac', 'den'),
(3158, 56, 'attribute_pa_kich-thuoc', 'm'),
(3159, 56, '_price', '450000'),
(3160, 56, '_product_version', '3.3.4'),
(3161, 57, '_variation_description', ''),
(3162, 57, '_sku', ''),
(3163, 57, '_regular_price', '580000'),
(3164, 57, '_sale_price', '450000'),
(3165, 57, '_sale_price_dates_from', ''),
(3166, 57, '_sale_price_dates_to', ''),
(3167, 57, 'total_sales', '0'),
(3168, 57, '_tax_status', 'taxable'),
(3169, 57, '_tax_class', 'parent'),
(3170, 57, '_manage_stock', 'no'),
(3171, 57, '_backorders', 'no'),
(3172, 57, '_sold_individually', 'no'),
(3173, 57, '_weight', ''),
(3174, 57, '_length', ''),
(3175, 57, '_width', ''),
(3176, 57, '_height', ''),
(3177, 57, '_upsell_ids', 'a:0:{}'),
(3178, 57, '_crosssell_ids', 'a:0:{}'),
(3179, 57, '_purchase_note', ''),
(3180, 57, '_default_attributes', 'a:0:{}'),
(3181, 57, '_virtual', 'no'),
(3182, 57, '_downloadable', 'no'),
(3183, 57, '_product_image_gallery', ''),
(3184, 57, '_download_limit', '-1'),
(3185, 57, '_download_expiry', '-1'),
(3186, 57, '_stock', NULL),
(3187, 57, '_stock_status', 'instock'),
(3188, 57, '_wc_average_rating', '0'),
(3189, 57, '_wc_rating_count', 'a:0:{}'),
(3190, 57, '_wc_review_count', '0'),
(3191, 57, '_downloadable_files', 'a:0:{}'),
(3192, 57, 'attribute_pa_mau-sac', 'trang'),
(3193, 57, 'attribute_pa_kich-thuoc', 'm'),
(3194, 57, '_price', '450000'),
(3195, 57, '_product_version', '3.3.4'),
(3196, 58, '_variation_description', ''),
(3197, 58, '_sku', ''),
(3198, 58, '_regular_price', '580000'),
(3199, 58, '_sale_price', '450000'),
(3200, 58, '_sale_price_dates_from', ''),
(3201, 58, '_sale_price_dates_to', ''),
(3202, 58, 'total_sales', '0'),
(3203, 58, '_tax_status', 'taxable'),
(3204, 58, '_tax_class', 'parent'),
(3205, 58, '_manage_stock', 'no'),
(3206, 58, '_backorders', 'no'),
(3207, 58, '_sold_individually', 'no'),
(3208, 58, '_weight', ''),
(3209, 58, '_length', ''),
(3210, 58, '_width', ''),
(3211, 58, '_height', ''),
(3212, 58, '_upsell_ids', 'a:0:{}'),
(3213, 58, '_crosssell_ids', 'a:0:{}'),
(3214, 58, '_purchase_note', ''),
(3215, 58, '_default_attributes', 'a:0:{}'),
(3216, 58, '_virtual', 'no'),
(3217, 58, '_downloadable', 'no'),
(3218, 58, '_product_image_gallery', ''),
(3219, 58, '_download_limit', '-1'),
(3220, 58, '_download_expiry', '-1'),
(3221, 58, '_stock', NULL),
(3222, 58, '_stock_status', 'instock'),
(3223, 58, '_wc_average_rating', '0'),
(3224, 58, '_wc_rating_count', 'a:0:{}'),
(3225, 58, '_wc_review_count', '0'),
(3226, 58, '_downloadable_files', 'a:0:{}'),
(3227, 58, 'attribute_pa_mau-sac', 'den'),
(3228, 58, 'attribute_pa_kich-thuoc', 's'),
(3229, 58, '_price', '450000'),
(3230, 58, '_product_version', '3.3.4'),
(3231, 59, '_variation_description', ''),
(3232, 59, '_sku', ''),
(3233, 59, '_regular_price', '580000'),
(3234, 59, '_sale_price', '450000'),
(3235, 59, '_sale_price_dates_from', ''),
(3236, 59, '_sale_price_dates_to', ''),
(3237, 59, 'total_sales', '0'),
(3238, 59, '_tax_status', 'taxable'),
(3239, 59, '_tax_class', 'parent'),
(3240, 59, '_manage_stock', 'no'),
(3241, 59, '_backorders', 'no'),
(3242, 59, '_sold_individually', 'no'),
(3243, 59, '_weight', ''),
(3244, 59, '_length', ''),
(3245, 59, '_width', ''),
(3246, 59, '_height', ''),
(3247, 59, '_upsell_ids', 'a:0:{}'),
(3248, 59, '_crosssell_ids', 'a:0:{}'),
(3249, 59, '_purchase_note', ''),
(3250, 59, '_default_attributes', 'a:0:{}'),
(3251, 59, '_virtual', 'no'),
(3252, 59, '_downloadable', 'no'),
(3253, 59, '_product_image_gallery', ''),
(3254, 59, '_download_limit', '-1'),
(3255, 59, '_download_expiry', '-1'),
(3256, 59, '_stock', NULL),
(3257, 59, '_stock_status', 'instock'),
(3258, 59, '_wc_average_rating', '0'),
(3259, 59, '_wc_rating_count', 'a:0:{}'),
(3260, 59, '_wc_review_count', '0'),
(3261, 59, '_downloadable_files', 'a:0:{}'),
(3262, 59, 'attribute_pa_mau-sac', 'trang'),
(3263, 59, 'attribute_pa_kich-thuoc', 's'),
(3264, 59, '_price', '450000'),
(3265, 59, '_product_version', '3.3.4'),
(3266, 60, '_variation_description', ''),
(3267, 60, '_sku', ''),
(3268, 60, '_regular_price', '580000'),
(3269, 60, '_sale_price', '450000'),
(3270, 60, '_sale_price_dates_from', ''),
(3271, 60, '_sale_price_dates_to', ''),
(3272, 60, 'total_sales', '0'),
(3273, 60, '_tax_status', 'taxable'),
(3274, 60, '_tax_class', 'parent'),
(3275, 60, '_manage_stock', 'no'),
(3276, 60, '_backorders', 'no'),
(3277, 60, '_sold_individually', 'no'),
(3278, 60, '_weight', ''),
(3279, 60, '_length', ''),
(3280, 60, '_width', ''),
(3281, 60, '_height', ''),
(3282, 60, '_upsell_ids', 'a:0:{}'),
(3283, 60, '_crosssell_ids', 'a:0:{}'),
(3284, 60, '_purchase_note', ''),
(3285, 60, '_default_attributes', 'a:0:{}'),
(3286, 60, '_virtual', 'no'),
(3287, 60, '_downloadable', 'no'),
(3288, 60, '_product_image_gallery', ''),
(3289, 60, '_download_limit', '-1'),
(3290, 60, '_download_expiry', '-1'),
(3291, 60, '_stock', NULL),
(3292, 60, '_stock_status', 'instock'),
(3293, 60, '_wc_average_rating', '0'),
(3294, 60, '_wc_rating_count', 'a:0:{}'),
(3295, 60, '_wc_review_count', '0'),
(3296, 60, '_downloadable_files', 'a:0:{}'),
(3297, 60, 'attribute_pa_mau-sac', 'den'),
(3298, 60, 'attribute_pa_kich-thuoc', 'xs'),
(3299, 60, '_price', '450000'),
(3300, 60, '_product_version', '3.3.4'),
(3301, 61, '_variation_description', ''),
(3302, 61, '_sku', ''),
(3303, 61, '_regular_price', '580000'),
(3304, 61, '_sale_price', '450000'),
(3305, 61, '_sale_price_dates_from', ''),
(3306, 61, '_sale_price_dates_to', ''),
(3307, 61, 'total_sales', '0'),
(3308, 61, '_tax_status', 'taxable'),
(3309, 61, '_tax_class', 'parent'),
(3310, 61, '_manage_stock', 'no'),
(3311, 61, '_backorders', 'no'),
(3312, 61, '_sold_individually', 'no'),
(3313, 61, '_weight', ''),
(3314, 61, '_length', ''),
(3315, 61, '_width', ''),
(3316, 61, '_height', ''),
(3317, 61, '_upsell_ids', 'a:0:{}'),
(3318, 61, '_crosssell_ids', 'a:0:{}'),
(3319, 61, '_purchase_note', ''),
(3320, 61, '_default_attributes', 'a:0:{}'),
(3321, 61, '_virtual', 'no'),
(3322, 61, '_downloadable', 'no'),
(3323, 61, '_product_image_gallery', ''),
(3324, 61, '_download_limit', '-1'),
(3325, 61, '_download_expiry', '-1'),
(3326, 61, '_stock', NULL),
(3327, 61, '_stock_status', 'instock'),
(3328, 61, '_wc_average_rating', '0'),
(3329, 61, '_wc_rating_count', 'a:0:{}'),
(3330, 61, '_wc_review_count', '0'),
(3331, 61, '_downloadable_files', 'a:0:{}'),
(3332, 61, 'attribute_pa_mau-sac', 'trang'),
(3333, 61, 'attribute_pa_kich-thuoc', 'xs'),
(3334, 61, '_price', '450000'),
(3335, 61, '_product_version', '3.3.4'),
(3432, 19, '_enable_watermark', 'no'),
(3720, 128, '_variation_description', ''),
(3721, 128, '_sku', ''),
(3722, 128, '_regular_price', ''),
(3723, 128, '_sale_price', ''),
(3724, 128, '_sale_price_dates_from', ''),
(3725, 128, '_sale_price_dates_to', ''),
(3726, 128, 'total_sales', '0'),
(3727, 128, '_tax_status', 'taxable'),
(3728, 128, '_tax_class', 'parent'),
(3729, 128, '_manage_stock', 'no'),
(3730, 128, '_backorders', 'no'),
(3731, 128, '_sold_individually', 'no'),
(3732, 128, '_weight', ''),
(3733, 128, '_length', ''),
(3734, 128, '_width', ''),
(3735, 128, '_height', ''),
(3736, 128, '_upsell_ids', 'a:0:{}'),
(3737, 128, '_crosssell_ids', 'a:0:{}'),
(3738, 128, '_purchase_note', ''),
(3739, 128, '_default_attributes', 'a:0:{}'),
(3740, 128, '_virtual', 'no'),
(3741, 128, '_downloadable', 'no'),
(3742, 128, '_product_image_gallery', ''),
(3743, 128, '_download_limit', '-1'),
(3744, 128, '_download_expiry', '-1'),
(3745, 128, '_stock', NULL),
(3746, 128, '_stock_status', 'instock'),
(3747, 128, '_wc_average_rating', '0'),
(3748, 128, '_wc_rating_count', 'a:0:{}'),
(3749, 128, '_wc_review_count', '0'),
(3750, 128, '_price', ''),
(3835, 128, '_product_version', '3.3.4'),
(4088, 50, '_ywpo_preorder', 'no'),
(4089, 50, '_ywpo_preorder_label', ''),
(4090, 50, '_ywpo_preorder_price', ''),
(4091, 50, '_ywpo_price_adjustment_amount', ''),
(4092, 50, '_ywpo_price_adjustment', 'manual'),
(4093, 50, '_ywpo_adjustment_type', 'fixed'),
(4094, 51, '_ywpo_preorder', 'no'),
(4095, 51, '_ywpo_preorder_label', ''),
(4096, 51, '_ywpo_preorder_price', ''),
(4097, 51, '_ywpo_price_adjustment_amount', ''),
(4098, 51, '_ywpo_price_adjustment', 'manual'),
(4099, 51, '_ywpo_adjustment_type', 'fixed'),
(4100, 48, '_ywpo_preorder', 'no'),
(4101, 48, '_ywpo_preorder_label', ''),
(4102, 48, '_ywpo_preorder_price', '');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(4103, 48, '_ywpo_price_adjustment_amount', ''),
(4104, 48, '_ywpo_price_adjustment', 'manual'),
(4105, 48, '_ywpo_adjustment_type', 'fixed'),
(4106, 49, '_ywpo_preorder', 'no'),
(4107, 49, '_ywpo_preorder_label', ''),
(4108, 49, '_ywpo_preorder_price', ''),
(4109, 49, '_ywpo_price_adjustment_amount', ''),
(4110, 49, '_ywpo_price_adjustment', 'manual'),
(4111, 49, '_ywpo_adjustment_type', 'fixed'),
(4112, 52, '_ywpo_preorder', 'no'),
(4113, 52, '_ywpo_preorder_label', ''),
(4114, 52, '_ywpo_preorder_price', ''),
(4115, 52, '_ywpo_price_adjustment_amount', ''),
(4116, 52, '_ywpo_price_adjustment', 'manual'),
(4117, 52, '_ywpo_adjustment_type', 'fixed'),
(4118, 53, '_ywpo_preorder', 'no'),
(4119, 53, '_ywpo_preorder_label', ''),
(4120, 53, '_ywpo_preorder_price', ''),
(4121, 53, '_ywpo_price_adjustment_amount', ''),
(4122, 53, '_ywpo_price_adjustment', 'manual'),
(4123, 53, '_ywpo_adjustment_type', 'fixed'),
(4124, 54, '_ywpo_preorder', 'no'),
(4125, 54, '_ywpo_preorder_label', ''),
(4126, 54, '_ywpo_preorder_price', ''),
(4127, 54, '_ywpo_price_adjustment_amount', ''),
(4128, 54, '_ywpo_price_adjustment', 'manual'),
(4129, 54, '_ywpo_adjustment_type', 'fixed'),
(4130, 55, '_ywpo_preorder', 'no'),
(4131, 55, '_ywpo_preorder_label', ''),
(4132, 55, '_ywpo_preorder_price', ''),
(4133, 55, '_ywpo_price_adjustment_amount', ''),
(4134, 55, '_ywpo_price_adjustment', 'manual'),
(4135, 55, '_ywpo_adjustment_type', 'fixed'),
(4136, 56, '_ywpo_preorder', 'no'),
(4137, 56, '_ywpo_preorder_label', ''),
(4138, 56, '_ywpo_preorder_price', ''),
(4139, 56, '_ywpo_price_adjustment_amount', ''),
(4140, 56, '_ywpo_price_adjustment', 'manual'),
(4141, 56, '_ywpo_adjustment_type', 'fixed'),
(4142, 57, '_ywpo_preorder', 'no'),
(4143, 57, '_ywpo_preorder_label', ''),
(4144, 57, '_ywpo_preorder_price', ''),
(4145, 57, '_ywpo_price_adjustment_amount', ''),
(4146, 57, '_ywpo_price_adjustment', 'manual'),
(4147, 57, '_ywpo_adjustment_type', 'fixed'),
(4148, 58, '_ywpo_preorder', 'no'),
(4149, 58, '_ywpo_preorder_label', ''),
(4150, 58, '_ywpo_preorder_price', ''),
(4151, 58, '_ywpo_price_adjustment_amount', ''),
(4152, 58, '_ywpo_price_adjustment', 'manual'),
(4153, 58, '_ywpo_adjustment_type', 'fixed'),
(4154, 59, '_ywpo_preorder', 'no'),
(4155, 59, '_ywpo_preorder_label', ''),
(4156, 59, '_ywpo_preorder_price', ''),
(4157, 59, '_ywpo_price_adjustment_amount', ''),
(4158, 59, '_ywpo_price_adjustment', 'manual'),
(4159, 59, '_ywpo_adjustment_type', 'fixed'),
(4160, 60, '_ywpo_preorder', 'no'),
(4161, 60, '_ywpo_preorder_label', ''),
(4162, 60, '_ywpo_preorder_price', ''),
(4163, 60, '_ywpo_price_adjustment_amount', ''),
(4164, 60, '_ywpo_price_adjustment', 'manual'),
(4165, 60, '_ywpo_adjustment_type', 'fixed'),
(4166, 61, '_ywpo_preorder', 'no'),
(4167, 61, '_ywpo_preorder_label', ''),
(4168, 61, '_ywpo_preorder_price', ''),
(4169, 61, '_ywpo_price_adjustment_amount', ''),
(4170, 61, '_ywpo_price_adjustment', 'manual'),
(4171, 61, '_ywpo_adjustment_type', 'fixed'),
(4172, 19, '_ywpo_preorder', 'no'),
(4173, 19, '_ywpo_preorder_label', ''),
(4174, 19, '_ywpo_preorder_price', ''),
(4175, 19, '_ywpo_price_adjustment_amount', ''),
(4176, 19, '_ywpo_price_adjustment', 'manual'),
(4177, 19, '_ywpo_adjustment_type', 'fixed'),
(4178, 19, '_wc_pre_orders_enabled', 'no'),
(4179, 19, '_wc_pre_orders_fee', ''),
(4180, 19, '_wc_pre_orders_when_to_charge', 'upon_release'),
(4181, 129, '_wc_review_count', '0'),
(4182, 129, '_wc_rating_count', 'a:0:{}'),
(4183, 129, '_wc_average_rating', '0'),
(4184, 129, '_regular_price', '10'),
(4185, 129, '_price', '10'),
(4186, 129, '_visibility', 'hidden'),
(4187, 130, '_wc_review_count', '0'),
(4188, 130, '_wc_rating_count', 'a:0:{}'),
(4189, 130, '_wc_average_rating', '0'),
(4190, 130, '_regular_price', '10'),
(4191, 130, '_price', '10'),
(4192, 130, '_visibility', 'hidden'),
(4193, 130, '_pos_visibility', 'pos_online'),
(4295, 134, '_wc_review_count', '0'),
(4296, 134, '_wc_rating_count', 'a:0:{}'),
(4297, 134, '_wc_average_rating', '0'),
(4298, 134, '_pos_visibility', 'pos_online'),
(4350, 136, '_edit_last', '1'),
(4351, 136, '_edit_lock', '1521721922:1'),
(4352, 136, '_display_in_reports', 'no'),
(4353, 136, '_dashboard_widget', 'no'),
(4354, 136, '_status_icon', 'e014'),
(4355, 136, '_status_colour', '#aa2727'),
(4356, 136, '_icon_style', 'icon-color'),
(4357, 136, '_email_notification', 'no'),
(4358, 136, '_email_type', 'html'),
(4359, 136, '_email_recipients', 'customer'),
(4360, 136, '_email_custom_address', ''),
(4361, 136, '_email_from_name', 'hanghieu.sale - Diễm My Store'),
(4362, 136, '_email_from_address', 'xuan.0211@gmail.com'),
(4363, 136, '_email_subject', ''),
(4364, 136, '_email_heading', ''),
(4365, 136, '_email_order_info', 'no'),
(4366, 136, '_email_message', 'no'),
(4367, 136, '_email_message_text', ''),
(4368, 136, '_customer_pay_button', 'no'),
(4369, 136, '_customer_cancel_orders', 'no'),
(4370, 136, '_customer_confirm_prompt', 'no'),
(4371, 136, '_customer_account', 'no'),
(4372, 136, '_customer_account_visibility', 'a:0:{}'),
(4373, 136, '_customer_account_button_label', ''),
(4374, 136, '_product_reviews', 'no'),
(4375, 136, '_downloads_permitted', 'no'),
(4376, 136, '_item_editing', 'no'),
(4377, 136, '_stock_status', 'no_affection'),
(4378, 136, '_action_icon', 'e014'),
(4379, 136, '_action_visibility', 'a:0:{}'),
(4380, 136, '_show_action_buttons', 'a:0:{}'),
(4381, 136, '_hide_bulk_actions', 'no'),
(4382, 136, '_order_note_prompt', 'no'),
(4383, 136, '_automatic_trigger', 'no'),
(4384, 136, '_triggered_status', ''),
(4385, 136, '_time_period', ''),
(4386, 136, '_time_period_type', 'minutes'),
(4387, 136, '__label', 'dat-hang-truoc'),
(4388, 136, '_wp_old_slug', 'cho-dat-hang'),
(4405, 137, '_edit_last', '1'),
(4406, 137, '_edit_lock', '1521728580:1'),
(4407, 137, '_was_shipping_method', 'a:7:{s:14:\"shipping_title\";s:26:\"Miễn phí vận chuyển\";s:20:\"shipping_description\";s:67:\"Với thời gian vận chuyển theo quy định của cửa hàng\";s:13:\"shipping_cost\";s:1:\"0\";s:12:\"handling_fee\";s:0:\"\";s:13:\"cost_per_item\";s:0:\"\";s:15:\"cost_per_weight\";s:0:\"\";s:3:\"tax\";s:11:\"not_taxable\";}'),
(4408, 137, '_was_shipping_method_conditions', 'a:1:{i:0;a:1:{i:1825679137;a:3:{s:9:\"condition\";s:8:\"quantity\";s:8:\"operator\";s:2:\">=\";s:5:\"value\";s:1:\"2\";}}}'),
(4412, 50, '_thumbnail_id', '20'),
(4413, 48, '_thumbnail_id', '20'),
(4414, 52, '_thumbnail_id', '20'),
(4415, 54, '_thumbnail_id', '20'),
(4416, 56, '_thumbnail_id', '20'),
(4417, 58, '_thumbnail_id', '20'),
(4418, 60, '_thumbnail_id', '20'),
(4420, 51, '_thumbnail_id', '37'),
(4421, 49, '_thumbnail_id', '37'),
(4422, 53, '_thumbnail_id', '37'),
(4423, 55, '_thumbnail_id', '37'),
(4424, 57, '_thumbnail_id', '37'),
(4425, 59, '_thumbnail_id', '37'),
(4426, 61, '_thumbnail_id', '37'),
(4428, 138, '_wc_review_count', '0'),
(4429, 138, '_wc_rating_count', 'a:0:{}'),
(4430, 138, '_wc_average_rating', '0'),
(4431, 138, '_pos_visibility', 'pos_online'),
(4432, 138, '_edit_last', '1'),
(4433, 138, '_edit_lock', '1521749865:1'),
(4434, 139, '_wp_attached_file', '2018/03/vi_large.jpg'),
(4435, 139, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:480;s:4:\"file\";s:20:\"2018/03/vi_large.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"vi_large-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"vi_large-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"vi_large-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"vi_large-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"vi_large-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"vi_large-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"vi_large-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"vi_large-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(4436, 138, '_sku', '3A1310185'),
(4437, 138, '_regular_price', '490000'),
(4438, 138, '_sale_price', '390000'),
(4439, 138, '_sale_price_dates_from', ''),
(4440, 138, '_sale_price_dates_to', ''),
(4441, 138, 'total_sales', '0'),
(4442, 138, '_tax_status', 'taxable'),
(4443, 138, '_tax_class', ''),
(4444, 138, '_manage_stock', 'yes'),
(4445, 138, '_backorders', 'notify'),
(4446, 138, '_sold_individually', 'no'),
(4447, 138, '_weight', ''),
(4448, 138, '_length', ''),
(4449, 138, '_width', ''),
(4450, 138, '_height', ''),
(4451, 138, '_upsell_ids', 'a:0:{}'),
(4452, 138, '_crosssell_ids', 'a:0:{}'),
(4453, 138, '_purchase_note', ''),
(4454, 138, '_default_attributes', 'a:0:{}'),
(4455, 138, '_virtual', 'no'),
(4456, 138, '_downloadable', 'no'),
(4457, 138, '_product_image_gallery', ''),
(4458, 138, '_download_limit', '-1'),
(4459, 138, '_download_expiry', '-1'),
(4460, 138, '_stock', '0'),
(4461, 138, '_stock_status', 'onbackorder'),
(4462, 138, '_product_version', '3.3.4'),
(4464, 138, '_product_attributes', 'a:1:{s:10:\"pa_mau-sac\";a:6:{s:4:\"name\";s:10:\"pa_mau-sac\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(4465, 138, '_thumbnail_id', '139'),
(4466, 138, '_enable_watermark', 'no'),
(4467, 140, '_variation_description', ''),
(4468, 140, '_sku', ''),
(4469, 140, '_regular_price', '490000'),
(4470, 140, '_sale_price', '390000'),
(4471, 140, '_sale_price_dates_from', ''),
(4472, 140, '_sale_price_dates_to', ''),
(4473, 140, 'total_sales', '0'),
(4474, 140, '_tax_status', 'taxable'),
(4475, 140, '_tax_class', 'parent'),
(4476, 140, '_manage_stock', 'yes'),
(4477, 140, '_backorders', 'notify'),
(4478, 140, '_sold_individually', 'no'),
(4479, 140, '_weight', ''),
(4480, 140, '_length', ''),
(4481, 140, '_width', ''),
(4482, 140, '_height', ''),
(4483, 140, '_upsell_ids', 'a:0:{}'),
(4484, 140, '_crosssell_ids', 'a:0:{}'),
(4485, 140, '_purchase_note', ''),
(4486, 140, '_default_attributes', 'a:0:{}'),
(4487, 140, '_virtual', 'no'),
(4488, 140, '_downloadable', 'no'),
(4489, 140, '_product_image_gallery', ''),
(4490, 140, '_download_limit', '-1'),
(4491, 140, '_download_expiry', '-1'),
(4492, 140, '_stock', '10'),
(4493, 140, '_stock_status', 'instock'),
(4494, 140, '_wc_average_rating', '0'),
(4495, 140, '_wc_rating_count', 'a:0:{}'),
(4496, 140, '_wc_review_count', '0'),
(4497, 140, '_downloadable_files', 'a:0:{}'),
(4498, 140, 'attribute_pa_mau-sac', 'den'),
(4499, 140, '_price', '390000'),
(4500, 140, '_product_version', '3.3.4'),
(4501, 141, '_variation_description', ''),
(4502, 141, '_sku', ''),
(4503, 141, '_regular_price', '490000'),
(4504, 141, '_sale_price', '390000'),
(4505, 141, '_sale_price_dates_from', ''),
(4506, 141, '_sale_price_dates_to', ''),
(4507, 141, 'total_sales', '0'),
(4508, 141, '_tax_status', 'taxable'),
(4509, 141, '_tax_class', 'parent'),
(4510, 141, '_manage_stock', 'yes'),
(4511, 141, '_backorders', 'notify'),
(4512, 141, '_sold_individually', 'no'),
(4513, 141, '_weight', ''),
(4514, 141, '_length', ''),
(4515, 141, '_width', ''),
(4516, 141, '_height', ''),
(4517, 141, '_upsell_ids', 'a:0:{}'),
(4518, 141, '_crosssell_ids', 'a:0:{}'),
(4519, 141, '_purchase_note', ''),
(4520, 141, '_default_attributes', 'a:0:{}'),
(4521, 141, '_virtual', 'no'),
(4522, 141, '_downloadable', 'no'),
(4523, 141, '_product_image_gallery', ''),
(4524, 141, '_download_limit', '-1'),
(4525, 141, '_download_expiry', '-1'),
(4526, 141, '_stock', '10'),
(4527, 141, '_stock_status', 'instock'),
(4528, 141, '_wc_average_rating', '0'),
(4529, 141, '_wc_rating_count', 'a:0:{}'),
(4530, 141, '_wc_review_count', '0'),
(4531, 141, '_downloadable_files', 'a:0:{}'),
(4532, 141, 'attribute_pa_mau-sac', 'nau'),
(4533, 141, '_price', '390000'),
(4534, 141, '_product_version', '3.3.4'),
(4535, 142, '_wp_attached_file', '2018/03/vivi_large.jpg'),
(4536, 142, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:480;s:4:\"file\";s:22:\"2018/03/vivi_large.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"vivi_large-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"vivi_large-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"vivi_large-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"vivi_large-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"vivi_large-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"vivi_large-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"vivi_large-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"vivi_large-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(4537, 140, '_thumbnail_id', '142'),
(4538, 141, '_thumbnail_id', '139'),
(4545, 19, '_price', '450000'),
(4546, 138, '_price', '390000'),
(4547, 11, '_customer_user', '0'),
(4548, 11, '_order_shipping', '30000'),
(4549, 11, '_order_shipping_tax', '0'),
(4550, 11, '_order_tax', '0'),
(4551, 11, '_order_key', 'wc_order_5ab412c5de31b'),
(4552, 11, '_payment_method', ''),
(4553, 11, '_payment_method_title', ''),
(4554, 11, '_transaction_id', ''),
(4555, 11, '_customer_ip_address', '192.168.10.1'),
(4556, 11, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),
(4557, 11, '_created_via', 'POS'),
(4558, 11, '_date_completed', ''),
(4559, 11, '_completed_date', ''),
(4560, 11, '_date_paid', ''),
(4561, 11, '_paid_date', ''),
(4562, 11, '_cart_hash', ''),
(4583, 11, '_order_currency', 'VND'),
(4584, 11, '_cart_discount', '0'),
(4585, 11, '_cart_discount_tax', '0'),
(4586, 11, '_order_total', '420000.00'),
(4587, 11, '_order_version', '3.3.4'),
(4588, 11, '_prices_include_tax', 'no'),
(4589, 11, '_billing_address_index', '          '),
(4590, 11, '_shipping_address_index', 'Nguyễn Văn Quang  Nhân Mỹ  Hà Nội   VN'),
(4591, 11, 'wc_pos_order_saved', '1'),
(4592, 11, 'wc_pos_amount_change', ''),
(4593, 11, 'wc_pos_amount_pay', ''),
(4594, 11, 'wc_pos_id_register', '1'),
(4595, 11, 'wc_pos_order_tax_number', ''),
(4596, 11, 'wc_pos_order_type', 'POS'),
(4597, 11, 'wc_pos_prefix_suffix_order_number', 'DMS11'),
(4598, 11, '_recorded_coupon_usage_counts', 'yes'),
(4599, 11, 'wc_pos_served_by_name', 'admin'),
(4600, 145, '_customer_user', '0'),
(4601, 145, '_order_shipping', '30000'),
(4602, 145, '_order_shipping_tax', '0'),
(4603, 145, '_order_tax', '0'),
(4604, 145, '_order_key', 'wc_order_5ab4130cebdbc'),
(4605, 145, '_payment_method', ''),
(4606, 145, '_payment_method_title', ''),
(4607, 145, '_transaction_id', ''),
(4608, 145, '_customer_ip_address', '192.168.10.1'),
(4609, 145, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),
(4610, 145, '_created_via', 'POS'),
(4611, 145, '_date_completed', ''),
(4612, 145, '_completed_date', ''),
(4613, 145, '_date_paid', ''),
(4614, 145, '_paid_date', ''),
(4615, 145, '_cart_hash', ''),
(4636, 145, '_order_currency', 'VND'),
(4637, 145, '_cart_discount', '0'),
(4638, 145, '_cart_discount_tax', '0'),
(4639, 145, '_order_total', '420000.00'),
(4640, 145, '_order_version', '3.3.4'),
(4641, 145, '_prices_include_tax', 'no'),
(4642, 145, '_billing_address_index', '          '),
(4643, 145, '_shipping_address_index', '        '),
(4644, 145, 'wc_pos_order_saved', '1'),
(4645, 145, 'wc_pos_amount_change', ''),
(4646, 145, 'wc_pos_amount_pay', ''),
(4647, 145, 'wc_pos_id_register', '1'),
(4648, 145, 'wc_pos_order_tax_number', ''),
(4649, 145, 'wc_pos_order_type', 'POS'),
(4650, 145, 'wc_pos_prefix_suffix_order_number', 'DMS145'),
(4651, 145, '_recorded_coupon_usage_counts', 'yes'),
(4652, 145, 'wc_pos_served_by_name', 'admin'),
(4653, 145, '_billing_first_name', ''),
(4654, 145, '_billing_last_name', ''),
(4655, 145, '_billing_company', ''),
(4656, 145, '_billing_address_1', ''),
(4657, 145, '_billing_address_2', ''),
(4658, 145, '_billing_city', ''),
(4659, 145, '_billing_state', ''),
(4660, 145, '_billing_postcode', ''),
(4661, 145, '_billing_country', ''),
(4662, 145, '_billing_email', ''),
(4663, 145, '_billing_phone', ''),
(4664, 145, '_shipping_first_name', ''),
(4665, 145, '_shipping_last_name', ''),
(4666, 145, '_shipping_company', ''),
(4667, 145, '_shipping_address_1', ''),
(4668, 145, '_shipping_address_2', ''),
(4669, 145, '_shipping_city', ''),
(4670, 145, '_shipping_state', ''),
(4671, 145, '_shipping_postcode', ''),
(4672, 145, '_shipping_country', ''),
(4673, 145, '_edit_lock', '1521751087:1'),
(4674, 145, '_wp_trash_meta_status', 'wc-pending'),
(4675, 145, '_wp_trash_meta_time', '1521751231'),
(4676, 145, '_wp_desired_post_slug', 'pos-register-1-2'),
(4677, 11, '_edit_lock', '1521751111:1'),
(4678, 11, '_wp_trash_meta_status', 'wc-pending'),
(4679, 11, '_wp_trash_meta_time', '1521751255'),
(4680, 11, '_wp_desired_post_slug', 'pos-register-1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-03-21 04:08:30', '2018-03-21 04:08:30', 'Chúc mừng đến với WordPress. Đây là bài viết đầu tiên của bạn. Hãy chỉnh sửa hay xóa bài viết này, và bắt đầu viết blog!', 'Chào tất cả mọi người!', '', 'publish', 'open', 'open', '', 'chao-moi-nguoi', '', '', '2018-03-21 04:08:30', '2018-03-21 04:08:30', '', 0, 'http://hanghieu.test/?p=1', 0, 'post', '', 1),
(2, 1, '2018-03-21 04:08:30', '2018-03-21 04:08:30', 'Đây là một trang mẫu. Nó khác với một bài blog bởi vì nó sẽ là một trang tĩnh và sẽ được thêm vào thanh menu của trang web của bạn (trong hầu hết theme). Mọi người thường bắt đầu bằng một trang Giới thiệu để giới thiệu bản thân đến người dùng tiềm năng. Bạn có thể viết như sau:\n\n<blockquote>Xin chào! Tôi là người giao thư bằng xe đạp vào ban ngày, một diễn viên đầy tham vọng vào ban đêm, và đây là trang web của tôi. Tôi sống ở Los Angeles, có một chú cho tuyệt vời tên là Jack, và tôi thích uống cocktail.</blockquote>\n\n...hay như thế này:\n\n<blockquote>Công ty XYZ Doohickey được thành lập vào năm 1971, và đã cung cấp đồ dùng chất lượng cho công chúng kể từ đó. Nằm ở thành phố Gotham, XYZ tạo việc làm cho hơn 2.000 người và làm tất cả những điều tuyệt vời cho cộng đồng Gotham.</blockquote>\n\nLà người dùng WordPress mới, bạn nên truy cập <a href=\"http://hanghieu.test/wp-admin/\">trang quản trị</a> để xóa trang này và tạo các trang mới cho nội dung của bạn. Chúc vui vẻ!', 'Trang Mẫu', '', 'publish', 'closed', 'open', '', 'Trang mẫu', '', '', '2018-03-21 04:08:30', '2018-03-21 04:08:30', '', 0, 'http://hanghieu.test/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-03-21 04:08:38', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-03-21 04:08:38', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?p=3', 0, 'post', '', 0),
(4, 1, '2018-03-21 04:18:23', '2018-03-21 04:18:23', '', 'Cửa hàng', '', 'publish', 'closed', 'closed', '', 'cua-hang', '', '', '2018-03-21 04:18:23', '2018-03-21 04:18:23', '', 0, 'http://hanghieu.test/cua-hang/', 0, 'page', '', 0),
(5, 1, '2018-03-21 04:18:23', '2018-03-21 04:18:23', '[woocommerce_cart]', 'Giỏ hàng', '', 'publish', 'closed', 'closed', '', 'gio-hang', '', '', '2018-03-21 04:18:23', '2018-03-21 04:18:23', '', 0, 'http://hanghieu.test/gio-hang/', 0, 'page', '', 0),
(6, 1, '2018-03-21 04:18:23', '2018-03-21 04:18:23', '[woocommerce_checkout]', 'Thanh toán', '', 'publish', 'closed', 'closed', '', 'thanh-toan', '', '', '2018-03-21 04:18:23', '2018-03-21 04:18:23', '', 0, 'http://hanghieu.test/thanh-toan/', 0, 'page', '', 0),
(7, 1, '2018-03-21 04:18:23', '2018-03-21 04:18:23', '[woocommerce_my_account]', 'Tài khoản', '', 'publish', 'closed', 'closed', '', 'tai-khoan', '', '', '2018-03-21 04:18:23', '2018-03-21 04:18:23', '', 0, 'http://hanghieu.test/tai-khoan/', 0, 'page', '', 0),
(8, 1, '2018-03-21 04:20:39', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-21 04:20:39', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=product&p=8', 0, 'product', '', 0),
(11, 1, '2018-03-22 20:32:05', '2018-03-22 20:32:05', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:32 Chiều', '', 'trash', 'closed', 'closed', 'order_5ab412c5d8fa8', 'pos-register-1__trashed', '', '', '2018-03-22 20:40:55', '2018-03-22 20:40:55', '', 0, 'http://hanghieu.test/pos_temp_register_or/pos-register-1/', 0, 'shop_order', '', 0),
(12, 1, '2018-03-21 04:37:22', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-21 04:37:22', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=product&p=12', 0, 'product', '', 0),
(13, 1, '2018-03-21 04:37:51', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-21 04:37:51', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=product&p=13', 0, 'product', '', 0),
(14, 1, '2018-03-21 04:38:03', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-21 04:38:03', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=product&p=14', 0, 'product', '', 0),
(15, 1, '2018-03-21 04:51:48', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-21 04:51:48', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=product&p=15', 0, 'product', '', 0),
(16, 1, '2018-03-21 04:52:28', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-21 04:52:28', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=product&p=16', 0, 'product', '', 0),
(17, 1, '2018-03-21 04:53:15', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-21 04:53:15', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=product&p=17', 0, 'product', '', 0),
(18, 1, '2018-03-21 06:03:10', '2018-03-21 06:03:10', '', 'APLK373', '', 'trash', 'open', 'closed', '', '__trashed', '', '', '2018-03-21 06:03:10', '2018-03-21 06:03:10', '', 0, 'http://hanghieu.test/?post_type=product&#038;p=18', 0, 'product', '', 0),
(19, 1, '2018-03-21 05:54:46', '2018-03-21 05:54:46', '', 'Áo Lining - APLK373', '', 'publish', 'open', 'closed', '', 'ao-lining-aplk373', '', '', '2018-03-22 19:00:11', '2018-03-22 19:00:11', '', 0, 'http://hanghieu.test/?post_type=product&#038;p=19', 0, 'product', '', 0),
(20, 1, '2018-03-21 04:59:57', '2018-03-21 04:59:57', '', '28167306_1679479698785619_5243797432174941945_n_large', '', 'inherit', 'open', 'closed', '', '28167306_1679479698785619_5243797432174941945_n_large', '', '', '2018-03-21 04:59:57', '2018-03-21 04:59:57', '', 19, 'http://hanghieu.test/wp-content/uploads/2018/03/28167306_1679479698785619_5243797432174941945_n_large.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2018-03-21 05:03:53', '2018-03-21 05:03:53', '', 'Áo Lining - APLK373', '', 'trash', 'closed', 'closed', '', 'ao-lining-aplk373__trashed', '', '', '2018-03-22 07:19:55', '2018-03-22 07:19:55', '', 19, 'http://hanghieu.test/?post_type=product&#038;p=19', 3, 'product_variation', '', 0),
(24, 1, '2018-03-21 05:03:53', '2018-03-21 05:03:53', '', 'Áo Lining - APLK373', '', 'trash', 'closed', 'closed', '', 'ao-lining-aplk373-2__trashed', '', '', '2018-03-22 07:19:55', '2018-03-22 07:19:55', '', 19, 'http://hanghieu.test/?post_type=product&#038;p=19', 4, 'product_variation', '', 0),
(25, 1, '2018-03-21 05:03:54', '2018-03-21 05:03:54', '', 'Áo Lining - APLK373', '', 'trash', 'closed', 'closed', '', 'ao-lining-aplk373-3__trashed', '', '', '2018-03-22 07:19:55', '2018-03-22 07:19:55', '', 19, 'http://hanghieu.test/?post_type=product&#038;p=19', 1, 'product_variation', '', 0),
(26, 1, '2018-03-21 05:03:54', '2018-03-21 05:03:54', '', 'Áo Lining - APLK373', '', 'trash', 'closed', 'closed', '', 'ao-lining-aplk373-4__trashed', '', '', '2018-03-22 07:19:55', '2018-03-22 07:19:55', '', 19, 'http://hanghieu.test/?post_type=product&#038;p=19', 2, 'product_variation', '', 0),
(27, 1, '2018-03-21 05:03:54', '2018-03-21 05:03:54', '', 'Áo Lining - APLK373', '', 'trash', 'closed', 'closed', '', 'ao-lining-aplk373-5__trashed', '', '', '2018-03-22 07:19:55', '2018-03-22 07:19:55', '', 19, 'http://hanghieu.test/?post_type=product&#038;p=19', 7, 'product_variation', '', 0),
(28, 1, '2018-03-21 05:03:54', '2018-03-21 05:03:54', '', 'Áo Lining - APLK373', '', 'trash', 'closed', 'closed', '', 'ao-lining-aplk373-6__trashed', '', '', '2018-03-22 07:19:55', '2018-03-22 07:19:55', '', 19, 'http://hanghieu.test/?post_type=product&#038;p=19', 8, 'product_variation', '', 0),
(29, 1, '2018-03-21 05:03:54', '2018-03-21 05:03:54', '', 'Áo Lining - APLK373', '', 'trash', 'closed', 'closed', '', 'ao-lining-aplk373-7__trashed', '', '', '2018-03-22 07:19:55', '2018-03-22 07:19:55', '', 19, 'http://hanghieu.test/?post_type=product&#038;p=19', 9, 'product_variation', '', 0),
(30, 1, '2018-03-21 05:03:54', '2018-03-21 05:03:54', '', 'Áo Lining - APLK373', '', 'trash', 'closed', 'closed', '', 'ao-lining-aplk373-8__trashed', '', '', '2018-03-22 07:19:55', '2018-03-22 07:19:55', '', 19, 'http://hanghieu.test/?post_type=product&#038;p=19', 10, 'product_variation', '', 0),
(31, 1, '2018-03-21 05:03:54', '2018-03-21 05:03:54', '', 'Áo Lining - APLK373', '', 'trash', 'closed', 'closed', '', 'ao-lining-aplk373-9__trashed', '', '', '2018-03-22 07:19:55', '2018-03-22 07:19:55', '', 19, 'http://hanghieu.test/?post_type=product&#038;p=19', 11, 'product_variation', '', 0),
(32, 1, '2018-03-21 05:03:54', '2018-03-21 05:03:54', '', 'Áo Lining - APLK373', '', 'trash', 'closed', 'closed', '', 'ao-lining-aplk373-10__trashed', '', '', '2018-03-22 07:19:55', '2018-03-22 07:19:55', '', 19, 'http://hanghieu.test/?post_type=product&#038;p=19', 12, 'product_variation', '', 0),
(33, 1, '2018-03-21 05:03:54', '2018-03-21 05:03:54', '', 'Áo Lining - APLK373', '', 'trash', 'closed', 'closed', '', 'ao-lining-aplk373-11__trashed', '', '', '2018-03-22 07:19:55', '2018-03-22 07:19:55', '', 19, 'http://hanghieu.test/?post_type=product&#038;p=19', 5, 'product_variation', '', 0),
(34, 1, '2018-03-21 05:03:54', '2018-03-21 05:03:54', '', 'Áo Lining - APLK373', '', 'trash', 'closed', 'closed', '', 'ao-lining-aplk373-12__trashed', '', '', '2018-03-22 07:19:55', '2018-03-22 07:19:55', '', 19, 'http://hanghieu.test/?post_type=product&#038;p=19', 6, 'product_variation', '', 0),
(35, 1, '2018-03-21 05:03:55', '2018-03-21 05:03:55', '', 'Áo Lining - APLK373', '', 'trash', 'closed', 'closed', '', 'ao-lining-aplk373-13__trashed', '', '', '2018-03-22 07:19:55', '2018-03-22 07:19:55', '', 19, 'http://hanghieu.test/?post_type=product&#038;p=19', 13, 'product_variation', '', 0),
(36, 1, '2018-03-21 05:03:55', '2018-03-21 05:03:55', '', 'Áo Lining - APLK373', '', 'trash', 'closed', 'closed', '', 'ao-lining-aplk373-14__trashed', '', '', '2018-03-22 07:19:55', '2018-03-22 07:19:55', '', 19, 'http://hanghieu.test/?post_type=product&#038;p=19', 14, 'product_variation', '', 0),
(37, 1, '2018-03-21 05:53:42', '2018-03-21 05:53:42', '', '28166675_1679479695452286_4679760645294428842_n_large', '', 'inherit', 'open', 'closed', '', '28166675_1679479695452286_4679760645294428842_n_large', '', '', '2018-03-21 05:53:42', '2018-03-21 05:53:42', '', 24, 'http://hanghieu.test/wp-content/uploads/2018/03/28166675_1679479695452286_4679760645294428842_n_large.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2018-03-21 05:58:52', '2018-03-21 05:58:52', 'a:2:{i:0;a:5:{s:6:\"values\";a:7:{i:0;s:3:\"2xl\";i:1;s:3:\"3xl\";i:2;s:2:\"xl\";i:3;s:1:\"l\";i:4;s:1:\"m\";i:5;s:1:\"s\";i:6;s:2:\"xs\";}s:4:\"name\";s:13:\"pa_kich-thuoc\";s:7:\"visible\";s:4:\"true\";s:9:\"variation\";s:4:\"true\";s:10:\"show_empty\";s:3:\"yes\";}i:1;a:5:{s:6:\"values\";a:7:{i:0;s:3:\"cam\";i:1;s:3:\"den\";i:2;s:2:\"do\";i:3;s:4:\"hong\";i:4;s:5:\"trang\";i:5;s:3:\"xam\";i:6;s:4:\"xanh\";}s:4:\"name\";s:10:\"pa_mau-sac\";s:7:\"visible\";s:4:\"true\";s:9:\"variation\";s:5:\"false\";s:10:\"show_empty\";s:3:\"yes\";}}', 'Quần Áo', '', 'publish', 'closed', 'closed', '', 'jcaa_quan-ao', '', '', '2018-03-21 06:00:04', '2018-03-21 06:00:04', '', 0, 'http://hanghieu.test/?post_type=attribute_group&#038;p=38', 0, 'attribute_group', '', 0),
(39, 1, '2018-03-21 05:59:30', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-21 05:59:30', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=attribute_group&p=39', 0, 'attribute_group', '', 0),
(40, 1, '2018-03-21 05:59:31', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-21 05:59:31', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=attribute_group&p=40', 0, 'attribute_group', '', 0),
(41, 1, '2018-03-21 06:32:22', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 21, 2018 @ 06:32 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-21 06:32:22', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=41', 0, 'shop_order', '', 0),
(42, 1, '2018-03-21 06:43:20', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 21, 2018 @ 06:43 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-21 06:43:20', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=42', 0, 'shop_order', '', 0),
(43, 1, '2018-03-21 06:44:01', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 21, 2018 @ 06:44 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-21 06:44:01', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=43', 0, 'shop_order', '', 0),
(44, 1, '2018-03-21 06:44:47', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 21, 2018 @ 06:44 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-21 06:44:47', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=44', 0, 'shop_order', '', 0),
(45, 1, '2018-03-21 06:44:49', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 21, 2018 @ 06:44 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-21 06:44:49', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=45', 0, 'shop_order', '', 0),
(46, 1, '2018-03-21 06:45:11', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 21, 2018 @ 06:45 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-21 06:45:11', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=46', 0, 'shop_order', '', 0),
(47, 1, '2018-03-21 06:45:36', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 21, 2018 @ 06:45 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-21 06:45:36', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=47', 0, 'shop_order', '', 0),
(48, 1, '2018-03-22 07:21:10', '2018-03-22 07:21:10', '', 'Áo Lining - APLK373', '', 'publish', 'closed', 'closed', '', 'ao-lining-aplk373', '', '', '2018-03-22 18:40:49', '2018-03-22 18:40:49', '', 19, 'http://hanghieu.test/san-pham/ao-lining-aplk373/', 3, 'product_variation', '', 0),
(49, 1, '2018-03-22 07:21:11', '2018-03-22 07:21:11', '', 'Áo Lining - APLK373', '', 'publish', 'closed', 'closed', '', 'ao-lining-aplk373-2', '', '', '2018-03-22 13:17:20', '2018-03-22 13:17:20', '', 19, 'http://hanghieu.test/san-pham/ao-lining-aplk373/', 4, 'product_variation', '', 0),
(50, 1, '2018-03-22 07:21:11', '2018-03-22 07:21:11', '', 'Áo Lining - APLK373', '', 'publish', 'closed', 'closed', '', 'ao-lining-aplk373-3', '', '', '2018-03-22 13:17:20', '2018-03-22 13:17:20', '', 19, 'http://hanghieu.test/san-pham/ao-lining-aplk373/', 1, 'product_variation', '', 0),
(51, 1, '2018-03-22 07:21:11', '2018-03-22 07:21:11', '', 'Áo Lining - APLK373', '', 'publish', 'closed', 'closed', '', 'ao-lining-aplk373-4', '', '', '2018-03-22 13:17:20', '2018-03-22 13:17:20', '', 19, 'http://hanghieu.test/san-pham/ao-lining-aplk373/', 2, 'product_variation', '', 0),
(52, 1, '2018-03-22 07:21:11', '2018-03-22 07:21:11', '', 'Áo Lining - APLK373', '', 'publish', 'closed', 'closed', '', 'ao-lining-aplk373-5', '', '', '2018-03-22 13:17:20', '2018-03-22 13:17:20', '', 19, 'http://hanghieu.test/san-pham/ao-lining-aplk373/', 5, 'product_variation', '', 0),
(53, 1, '2018-03-22 07:21:11', '2018-03-22 07:21:11', '', 'Áo Lining - APLK373', '', 'publish', 'closed', 'closed', '', 'ao-lining-aplk373-6', '', '', '2018-03-22 13:17:20', '2018-03-22 13:17:20', '', 19, 'http://hanghieu.test/san-pham/ao-lining-aplk373/', 6, 'product_variation', '', 0),
(54, 1, '2018-03-22 07:21:11', '2018-03-22 07:21:11', '', 'Áo Lining - APLK373', '', 'publish', 'closed', 'closed', '', 'ao-lining-aplk373-7', '', '', '2018-03-22 13:17:20', '2018-03-22 13:17:20', '', 19, 'http://hanghieu.test/san-pham/ao-lining-aplk373/', 7, 'product_variation', '', 0),
(55, 1, '2018-03-22 07:21:11', '2018-03-22 07:21:11', '', 'Áo Lining - APLK373', '', 'publish', 'closed', 'closed', '', 'ao-lining-aplk373-8', '', '', '2018-03-22 13:17:20', '2018-03-22 13:17:20', '', 19, 'http://hanghieu.test/san-pham/ao-lining-aplk373/', 8, 'product_variation', '', 0),
(56, 1, '2018-03-22 07:21:11', '2018-03-22 07:21:11', '', 'Áo Lining - APLK373', '', 'publish', 'closed', 'closed', '', 'ao-lining-aplk373-9', '', '', '2018-03-22 13:17:20', '2018-03-22 13:17:20', '', 19, 'http://hanghieu.test/san-pham/ao-lining-aplk373/', 9, 'product_variation', '', 0),
(57, 1, '2018-03-22 07:21:11', '2018-03-22 07:21:11', '', 'Áo Lining - APLK373', '', 'publish', 'closed', 'closed', '', 'ao-lining-aplk373-10', '', '', '2018-03-22 13:17:20', '2018-03-22 13:17:20', '', 19, 'http://hanghieu.test/san-pham/ao-lining-aplk373/', 10, 'product_variation', '', 0),
(58, 1, '2018-03-22 07:21:11', '2018-03-22 07:21:11', '', 'Áo Lining - APLK373', '', 'publish', 'closed', 'closed', '', 'ao-lining-aplk373-11', '', '', '2018-03-22 13:17:20', '2018-03-22 13:17:20', '', 19, 'http://hanghieu.test/san-pham/ao-lining-aplk373/', 11, 'product_variation', '', 0),
(59, 1, '2018-03-22 07:21:11', '2018-03-22 07:21:11', '', 'Áo Lining - APLK373', '', 'publish', 'closed', 'closed', '', 'ao-lining-aplk373-12', '', '', '2018-03-22 13:17:20', '2018-03-22 13:17:20', '', 19, 'http://hanghieu.test/san-pham/ao-lining-aplk373/', 12, 'product_variation', '', 0),
(60, 1, '2018-03-22 07:21:12', '2018-03-22 07:21:12', '', 'Áo Lining - APLK373', '', 'publish', 'closed', 'closed', '', 'ao-lining-aplk373-13', '', '', '2018-03-22 13:17:20', '2018-03-22 13:17:20', '', 19, 'http://hanghieu.test/san-pham/ao-lining-aplk373/', 13, 'product_variation', '', 0),
(61, 1, '2018-03-22 07:21:12', '2018-03-22 07:21:12', '', 'Áo Lining - APLK373', '', 'publish', 'closed', 'closed', '', 'ao-lining-aplk373-14', '', '', '2018-03-22 13:17:20', '2018-03-22 13:17:20', '', 19, 'http://hanghieu.test/san-pham/ao-lining-aplk373/', 14, 'product_variation', '', 0),
(62, 1, '2018-03-22 08:14:51', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:14 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:14:51', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=62', 0, 'shop_order', '', 0),
(63, 1, '2018-03-22 08:16:50', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:16 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:16:50', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=63', 0, 'shop_order', '', 0),
(64, 1, '2018-03-22 08:17:04', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:17 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:17:04', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=64', 0, 'shop_order', '', 0),
(65, 1, '2018-03-22 08:19:33', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:19 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:19:33', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=65', 0, 'shop_order', '', 0),
(66, 1, '2018-03-22 08:21:46', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:21 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:21:46', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=66', 0, 'shop_order', '', 0),
(67, 1, '2018-03-22 08:22:42', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:22 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:22:42', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=67', 0, 'shop_order', '', 0),
(68, 1, '2018-03-22 08:22:58', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:22 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:22:58', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=68', 0, 'shop_order', '', 0),
(69, 1, '2018-03-22 08:24:19', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:24 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:24:19', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=69', 0, 'shop_order', '', 0),
(70, 1, '2018-03-22 08:25:38', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:25 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:25:38', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=70', 0, 'shop_order', '', 0),
(71, 1, '2018-03-22 08:26:15', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:26 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:26:15', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=71', 0, 'shop_order', '', 0),
(72, 1, '2018-03-22 08:27:19', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:27 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:27:19', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=72', 0, 'shop_order', '', 0),
(73, 1, '2018-03-22 08:27:21', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:27 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:27:21', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=73', 0, 'shop_order', '', 0),
(74, 1, '2018-03-22 08:27:23', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:27 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:27:23', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=74', 0, 'shop_order', '', 0),
(75, 1, '2018-03-22 08:27:23', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:27 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:27:23', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=75', 0, 'shop_order', '', 0),
(76, 1, '2018-03-22 08:27:23', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:27 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:27:23', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=76', 0, 'shop_order', '', 0),
(77, 1, '2018-03-22 08:27:24', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:27 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:27:24', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=77', 0, 'shop_order', '', 0),
(78, 1, '2018-03-22 08:27:33', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:27 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:27:33', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=78', 0, 'shop_order', '', 0),
(79, 1, '2018-03-22 08:27:36', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:27 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:27:36', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=79', 0, 'shop_order', '', 0),
(80, 1, '2018-03-22 08:28:20', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:28 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:28:20', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=80', 0, 'shop_order', '', 0),
(81, 1, '2018-03-22 08:51:58', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:51 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:51:58', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=81', 0, 'shop_order', '', 0),
(82, 1, '2018-03-22 08:52:32', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:52 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:52:32', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=82', 0, 'shop_order', '', 0),
(83, 1, '2018-03-22 08:52:59', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:52 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:52:59', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=83', 0, 'shop_order', '', 0),
(84, 1, '2018-03-22 08:53:03', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:53 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:53:03', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=84', 0, 'shop_order', '', 0),
(85, 1, '2018-03-22 08:53:36', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:53 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:53:36', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=85', 0, 'shop_order', '', 0),
(86, 1, '2018-03-22 08:53:39', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:53 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:53:39', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=86', 0, 'shop_order', '', 0),
(87, 1, '2018-03-22 08:53:43', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:53 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:53:43', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=87', 0, 'shop_order', '', 0),
(88, 1, '2018-03-22 08:53:44', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:53 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:53:44', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=88', 0, 'shop_order', '', 0),
(89, 1, '2018-03-22 08:53:45', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:53 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:53:45', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=89', 0, 'shop_order', '', 0),
(90, 1, '2018-03-22 08:53:46', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:53 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:53:46', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=90', 0, 'shop_order', '', 0),
(91, 1, '2018-03-22 08:53:46', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:53 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:53:46', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=91', 0, 'shop_order', '', 0),
(92, 1, '2018-03-22 08:53:46', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:53 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:53:46', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=92', 0, 'shop_order', '', 0),
(93, 1, '2018-03-22 08:55:30', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:55 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:55:30', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=93', 0, 'shop_order', '', 0),
(94, 1, '2018-03-22 08:55:39', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:55 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:55:39', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=94', 0, 'shop_order', '', 0),
(95, 1, '2018-03-22 08:57:15', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:57 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:57:15', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=95', 0, 'shop_order', '', 0),
(96, 1, '2018-03-22 08:57:31', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:57 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:57:31', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=96', 0, 'shop_order', '', 0),
(97, 1, '2018-03-22 08:59:21', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:59 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 08:59:21', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=97', 0, 'shop_order', '', 0),
(98, 1, '2018-03-22 09:00:33', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:00 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:00:33', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=98', 0, 'shop_order', '', 0),
(99, 1, '2018-03-22 09:01:23', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:01 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:01:23', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=99', 0, 'shop_order', '', 0),
(100, 1, '2018-03-22 09:02:18', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:02 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:02:18', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=100', 0, 'shop_order', '', 0),
(101, 1, '2018-03-22 09:11:32', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:11 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:11:32', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=101', 0, 'shop_order', '', 0),
(102, 1, '2018-03-22 09:12:05', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:12 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:12:05', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=102', 0, 'shop_order', '', 0),
(103, 1, '2018-03-22 09:14:01', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:14 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:14:01', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=103', 0, 'shop_order', '', 0),
(104, 1, '2018-03-22 09:14:10', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:14 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:14:10', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=104', 0, 'shop_order', '', 0),
(105, 1, '2018-03-22 09:14:47', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:14 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:14:47', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=105', 0, 'shop_order', '', 0),
(106, 1, '2018-03-22 09:15:05', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:15 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:15:05', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=106', 0, 'shop_order', '', 0),
(107, 1, '2018-03-22 09:15:20', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:15 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:15:20', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=107', 0, 'shop_order', '', 0),
(108, 1, '2018-03-22 09:16:22', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:16 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:16:22', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=108', 0, 'shop_order', '', 0),
(109, 1, '2018-03-22 09:17:00', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:17 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:17:00', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=109', 0, 'shop_order', '', 0),
(110, 1, '2018-03-22 09:17:29', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:17 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:17:29', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=110', 0, 'shop_order', '', 0),
(111, 1, '2018-03-22 09:17:48', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:17 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:17:48', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=111', 0, 'shop_order', '', 0),
(112, 1, '2018-03-22 09:18:01', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:18 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:18:01', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=112', 0, 'shop_order', '', 0),
(113, 1, '2018-03-22 09:18:13', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:18 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:18:13', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=113', 0, 'shop_order', '', 0),
(114, 1, '2018-03-22 09:18:38', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:18 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:18:38', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=114', 0, 'shop_order', '', 0),
(115, 1, '2018-03-22 09:18:48', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:18 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:18:48', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=115', 0, 'shop_order', '', 0),
(116, 1, '2018-03-22 09:19:26', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:19 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:19:26', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=116', 0, 'shop_order', '', 0),
(117, 1, '2018-03-22 09:20:50', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:20 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:20:50', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=117', 0, 'shop_order', '', 0),
(118, 1, '2018-03-22 09:21:29', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:21 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:21:29', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=118', 0, 'shop_order', '', 0),
(119, 1, '2018-03-22 09:23:46', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:23 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:23:46', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=119', 0, 'shop_order', '', 0),
(120, 1, '2018-03-22 09:25:42', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:25 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:25:42', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=120', 0, 'shop_order', '', 0),
(121, 1, '2018-03-22 09:26:08', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:26 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:26:08', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=121', 0, 'shop_order', '', 0),
(122, 1, '2018-03-22 09:26:20', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:26 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:26:20', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=122', 0, 'shop_order', '', 0),
(123, 1, '2018-03-22 09:26:54', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:26 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:26:54', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=123', 0, 'shop_order', '', 0),
(124, 1, '2018-03-22 09:27:08', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:27 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:27:08', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=124', 0, 'shop_order', '', 0),
(125, 1, '2018-03-22 09:27:20', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:27 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:27:20', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=125', 0, 'shop_order', '', 0),
(126, 1, '2018-03-22 09:27:58', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:27 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:27:58', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=126', 0, 'shop_order', '', 0),
(127, 1, '2018-03-22 09:29:35', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 09:29 Sáng', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 09:29:35', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=127', 0, 'shop_order', '', 0),
(130, 1, '2018-03-22 10:08:10', '2018-03-22 10:08:10', '', 'POS custom product', '', 'publish', 'open', 'closed', '', 'pos-custom-product', '', '', '2018-03-22 10:08:10', '2018-03-22 10:08:10', '', 0, 'http://hanghieu.test/san-pham/pos-custom-product/', 0, 'product', '', 0),
(132, 1, '2018-03-22 10:31:50', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 10:31:50', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=wc_custom_statuses&p=132', 0, 'wc_custom_statuses', '', 0),
(134, 1, '2018-03-22 11:26:14', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 11:26:14', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=product&p=134', 0, 'product', '', 0),
(136, 1, '2018-03-22 12:33:47', '2018-03-22 12:33:47', '', 'Đặt hàng trước', '', 'publish', 'closed', 'closed', '', 'dat-hang-truoc', '', '', '2018-03-22 12:34:21', '2018-03-22 12:34:21', '', 0, 'http://hanghieu.test/?post_type=wc_custom_statuses&#038;p=136', 0, 'wc_custom_statuses', '', 0),
(137, 1, '2018-03-22 13:44:04', '2018-03-22 13:44:04', '', 'Miễn phí vận chuyển', '', 'publish', 'closed', 'closed', '', 'mien-phi-van-chuyen', '', '', '2018-03-22 14:24:44', '2018-03-22 14:24:44', '', 0, 'http://hanghieu.test/?post_type=was&#038;p=137', 0, 'was', '', 0),
(138, 1, '2018-03-22 17:52:30', '2018-03-22 17:52:30', '', 'Ví nam - 3A1310185', '', 'publish', 'open', 'closed', '', 'vi-3a1310185', '', '', '2018-03-22 20:38:18', '2018-03-22 20:38:18', '', 0, 'http://hanghieu.test/?post_type=product&#038;p=138', 0, 'product', '', 0),
(139, 1, '2018-03-22 17:51:06', '2018-03-22 17:51:06', '', 'vi_large', '', 'inherit', 'open', 'closed', '', 'vi_large', '', '', '2018-03-22 17:51:06', '2018-03-22 17:51:06', '', 138, 'http://hanghieu.test/wp-content/uploads/2018/03/vi_large.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 1, '2018-03-22 18:01:19', '2018-03-22 18:01:19', '', 'Ví nam - 3A1310185 - Đen', '', 'publish', 'closed', 'closed', '', 'vi-nam-3a1310185-den', '', '', '2018-03-22 20:38:18', '2018-03-22 20:38:18', '', 138, 'http://hanghieu.test/san-pham/vi-3a1310185/', 1, 'product_variation', '', 0),
(141, 1, '2018-03-22 18:01:19', '2018-03-22 18:01:19', '', 'Ví nam - 3A1310185 - Nâu', '', 'publish', 'closed', 'closed', '', 'vi-nam-3a1310185-nau', '', '', '2018-03-22 18:01:19', '2018-03-22 18:01:19', '', 138, 'http://hanghieu.test/san-pham/vi-3a1310185/', 2, 'product_variation', '', 0),
(142, 1, '2018-03-22 18:01:54', '2018-03-22 18:01:54', '', 'vivi_large', '', 'inherit', 'open', 'closed', '', 'vivi_large', '', '', '2018-03-22 18:01:54', '2018-03-22 18:01:54', '', 140, 'http://hanghieu.test/wp-content/uploads/2018/03/vivi_large.jpg', 0, 'attachment', 'image/jpeg', 0),
(143, 1, '2018-03-22 19:48:44', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 07:48 Chiều', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 19:48:44', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=143', 0, 'shop_order', '', 0),
(144, 1, '2018-03-22 19:50:14', '0000-00-00 00:00:00', '', 'Order &ndash; Tháng Ba 22, 2018 @ 07:50 Chiều', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-22 19:50:14', '0000-00-00 00:00:00', '', 0, 'http://hanghieu.test/?post_type=shop_order&p=144', 0, 'shop_order', '', 0),
(145, 1, '2018-03-22 20:38:18', '2018-03-22 20:38:18', '', 'Order &ndash; Tháng Ba 22, 2018 @ 08:38 Chiều', '', 'trash', 'closed', 'closed', 'order_5ab4130ce6c2f', 'pos-register-1-2__trashed', '', '', '2018-03-22 20:40:31', '2018-03-22 20:40:31', '', 0, 'http://hanghieu.test/pos_temp_register_or/pos-register-1/', 0, 'shop_order', '', 0),
(146, 1, '2018-03-22 20:33:17', '2018-03-22 20:33:17', '', 'POS Register #1', '', 'publish', 'closed', 'closed', '', 'pos-register-1', '', '', '2018-03-22 20:33:17', '2018-03-22 20:33:17', '', 0, 'http://hanghieu.test/pos_temp_register_or/pos-register-1/', 0, 'pos_temp_register_or', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 16, 'order', '0'),
(2, 17, 'order', '0'),
(3, 18, 'order', '0'),
(4, 19, 'order', '0'),
(5, 20, 'order_pa_kich-thuoc', '7'),
(6, 21, 'order_pa_kich-thuoc', '6'),
(7, 22, 'order_pa_kich-thuoc', '5'),
(8, 23, 'order_pa_kich-thuoc', '4'),
(9, 24, 'order_pa_kich-thuoc', '3'),
(10, 25, 'order_pa_mau-sac', '0'),
(11, 26, 'order_pa_mau-sac', '0'),
(12, 27, 'order_pa_mau-sac', '0'),
(13, 28, 'order_pa_mau-sac', '0'),
(14, 29, 'order_pa_mau-sac', '0'),
(15, 30, 'order_pa_mau-sac', '0'),
(16, 31, 'order_pa_kich-thuoc', '1'),
(17, 32, 'order_pa_kich-thuoc', '2'),
(18, 19, 'product_count_product_cat', '1'),
(19, 16, 'product_count_product_cat', '2'),
(20, 33, 'product_count_product_tag', '1'),
(21, 34, 'order_pa_mau-sac', '0'),
(22, 38, 'order', '0'),
(23, 39, 'order_pa_mau-sac', '0'),
(24, 38, 'product_count_product_cat', '1'),
(25, 40, 'product_count_product_tag', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Chưa được phân loại', 'khong-phan-loai', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'chua-phan-loai', 'chua-phan-loai', 0),
(16, 'Nam', 'nam', 0),
(17, 'Nữ', 'nu', 0),
(18, 'Trẻ em', 'tre-em', 0),
(19, 'Áo', 'ao', 0),
(20, 'XS', 'xs', 0),
(21, 'S', 's', 0),
(22, 'M', 'm', 0),
(23, 'L', 'l', 0),
(24, 'XL', 'xl', 0),
(25, 'Đen', 'den', 0),
(26, 'Trắng', 'trang', 0),
(27, 'Xanh', 'xanh', 0),
(28, 'Đỏ', 'do', 0),
(29, 'Hồng', 'hong', 0),
(30, 'Xám', 'xam', 0),
(31, '2XL', '2xl', 0),
(32, '3XL', '3xl', 0),
(33, 'Lining', 'lining', 0),
(34, 'Cam', 'cam', 0),
(36, 'Lining', 'lining', 0),
(38, 'Phụ kiện', 'phu-kien', 0),
(39, 'Nâu', 'nau', 0),
(40, 'Septwolves', 'septwolves', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(9, 2, 0),
(19, 4, 0),
(19, 19, 0),
(19, 20, 0),
(19, 21, 0),
(19, 22, 0),
(19, 23, 0),
(19, 24, 0),
(19, 25, 0),
(19, 26, 0),
(19, 31, 0),
(19, 32, 0),
(19, 33, 0),
(19, 36, 0),
(23, 9, 0),
(24, 9, 0),
(27, 9, 0),
(28, 9, 0),
(29, 9, 0),
(30, 9, 0),
(31, 9, 0),
(32, 9, 0),
(33, 9, 0),
(34, 9, 0),
(35, 9, 0),
(36, 9, 0),
(129, 2, 0),
(130, 2, 0),
(138, 4, 0),
(138, 25, 0),
(138, 38, 0),
(138, 39, 0),
(138, 40, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 1),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 2),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'product_cat', '', 0, 0),
(17, 17, 'product_cat', '', 0, 0),
(18, 18, 'product_cat', '', 0, 0),
(19, 19, 'product_cat', '', 16, 1),
(20, 20, 'pa_kich-thuoc', '', 0, 1),
(21, 21, 'pa_kich-thuoc', '', 0, 1),
(22, 22, 'pa_kich-thuoc', '', 0, 1),
(23, 23, 'pa_kich-thuoc', '', 0, 1),
(24, 24, 'pa_kich-thuoc', '', 0, 1),
(25, 25, 'pa_mau-sac', '', 0, 2),
(26, 26, 'pa_mau-sac', '', 0, 1),
(27, 27, 'pa_mau-sac', '', 0, 0),
(28, 28, 'pa_mau-sac', '', 0, 0),
(29, 29, 'pa_mau-sac', '', 0, 0),
(30, 30, 'pa_mau-sac', '', 0, 0),
(31, 31, 'pa_kich-thuoc', '', 0, 1),
(32, 32, 'pa_kich-thuoc', '', 0, 1),
(33, 33, 'product_tag', '', 0, 1),
(34, 34, 'pa_mau-sac', '', 0, 0),
(36, 36, 'yith_product_brand', '', 0, 1),
(38, 38, 'product_cat', '', 16, 1),
(39, 39, 'pa_mau-sac', '', 0, 1),
(40, 40, 'product_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'XuaNguyen'),
(2, 1, 'first_name', 'Xuan'),
(3, 1, 'last_name', 'My'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"fd4c7198265bd78e5ea0af0eb32ca0c44512b03b5a1a81b6664217fc1a2186bf\";a:4:{s:10:\"expiration\";i:1521778117;s:2:\"ip\";s:12:\"192.168.10.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36\";s:5:\"login\";i:1521605317;}s:64:\"f40e5e50f7bbda5d8b840dcea7de90efa7283b7ebdaf4ea1f493a67cab556807\";a:4:{s:10:\"expiration\";i:1521874168;s:2:\"ip\";s:12:\"192.168.10.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36\";s:5:\"login\";i:1521701368;}s:64:\"a3acb4223381f54a11bc37b9e2d3239ce8ef9d1ca09c7a4eb8b4f09d5b964d07\";a:4:{s:10:\"expiration\";i:1521923989;s:2:\"ip\";s:12:\"192.168.10.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36\";s:5:\"login\";i:1521751189;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"192.168.10.0\";}'),
(20, 1, 'closedpostboxes_product', 'a:0:{}'),
(21, 1, 'metaboxhidden_product', 'a:4:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";i:2;s:11:\"postexcerpt\";i:3;s:11:\"commentsdiv\";}'),
(22, 1, 'wp_user-settings', 'editor_expand=on&libraryContent=browse'),
(23, 1, 'wp_user-settings-time', '1521608565'),
(24, 1, 'closedpostboxes_shop_order', 'a:1:{i:0;s:29:\"woocommerce-shipment-tracking\";}'),
(25, 1, 'metaboxhidden_shop_order', 'a:2:{i:0;s:10:\"postcustom\";i:1;s:27:\"woocommerce-order-downloads\";}'),
(26, 1, 'outlet', '1'),
(27, 1, 'discount', 'enable'),
(28, 1, 'billing_first_name', 'Xuan'),
(29, 1, 'billing_last_name', 'My'),
(30, 1, 'billing_company', ''),
(31, 1, 'billing_address_1', 'Số 17, tổ dân cư 16, Phú Đô, Nam Từ Liêm'),
(32, 1, 'billing_address_2', ''),
(33, 1, 'billing_city', 'Hà Nội'),
(34, 1, 'billing_postcode', '10000'),
(35, 1, 'billing_country', 'VN'),
(36, 1, 'billing_state', ''),
(37, 1, 'billing_phone', '0989649075'),
(38, 1, 'billing_email', 'xuan.0211@gmail.com'),
(39, 1, 'shipping_first_name', 'Xuan'),
(40, 1, 'shipping_last_name', 'My'),
(41, 1, 'shipping_company', ''),
(42, 1, 'shipping_address_1', 'Số 17, tổ dân cư 16, Phú Đô, Nam Từ Liêm'),
(43, 1, 'shipping_address_2', ''),
(44, 1, 'shipping_city', 'Hà Nội'),
(45, 1, 'shipping_postcode', '10000'),
(46, 1, 'shipping_country', 'VN'),
(47, 1, 'shipping_state', ''),
(48, 1, 'last_update', '1521720735'),
(51, 1, 'last_login', '2018-03-22 20:39:49'),
(52, 1, 'meta-box-order_product', 'a:3:{s:4:\"side\";s:128:\"submitdiv,product_catdiv,tagsdiv-product_tag,product_grid_category,yith_product_branddiv,postimagediv,woocommerce-product-images\";s:6:\"normal\";s:67:\"woocommerce-product-data,postcustom,slugdiv,postexcerpt,commentsdiv\";s:8:\"advanced\";s:0:\"\";}'),
(53, 1, 'screen_layout_product', '2'),
(60, 1, 'shipping_method', 'a:1:{i:0;s:15:\"free_shipping:3\";}'),
(63, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"b209c1dce49d5754a02d14c9974f1d0f\";a:10:{s:3:\"key\";s:32:\"b209c1dce49d5754a02d14c9974f1d0f\";s:10:\"product_id\";i:19;s:12:\"variation_id\";i:48;s:9:\"variation\";a:2:{s:23:\"attribute_pa_kich-thuoc\";s:3:\"2xl\";s:20:\"attribute_pa_mau-sac\";s:3:\"den\";}s:8:\"quantity\";i:4;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:1800000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:1800000;s:8:\"line_tax\";i:0;}}}'),
(67, 1, '_order_count', '0'),
(68, 1, '_money_spent', '0'),
(69, 1, 'wc_pos_count_orders', '3');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_modified_gmt`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BJHEgpTBCTde6/RSno0QHtGWivoBDX.', 'admin', 'xuan.0211@gmail.com', '', '2018-03-21 04:08:30', '2018-03-22 20:39:49', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_point_of_sale_sale_reports`
--

CREATE TABLE `wp_wc_point_of_sale_sale_reports` (
  `id` int(11) NOT NULL,
  `register_id` int(11) NOT NULL,
  `register_name` varchar(255) NOT NULL,
  `outlet_id` int(11) NOT NULL,
  `opened` datetime NOT NULL,
  `closed` datetime NOT NULL,
  `cashier_id` int(11) NOT NULL,
  `total_sales` float DEFAULT '0',
  `report_data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_wc_point_of_sale_sale_reports`
--

INSERT INTO `wp_wc_point_of_sale_sale_reports` (`id`, `register_id`, `register_name`, `outlet_id`, `opened`, `closed`, `cashier_id`, `total_sales`, `report_data`) VALUES
(1, 1, 'Di?m My Store', 1, '2018-03-21 06:48:32', '2018-03-22 20:32:06', 1, 390000, '{\"opening_cash_amount\":null,\"cash_management_actions\":null,\"actual_cash\":null}'),
(2, 1, 'Di?m My Store', 1, '2018-03-21 06:48:32', '2018-03-22 20:33:17', 1, 780000, '{\"opening_cash_amount\":null,\"cash_management_actions\":null,\"actual_cash\":null}'),
(3, 1, 'Di?m My Store', 1, '2018-03-22 20:37:58', '2018-03-22 20:38:19', 1, 390000, '{\"opening_cash_amount\":{\"status\":false,\"amount\":0,\"user\":0,\"note\":\"\",\"time\":\"\"},\"cash_management_actions\":[],\"actual_cash\":0}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_poin_of_sale_grids`
--

CREATE TABLE `wp_wc_poin_of_sale_grids` (
  `ID` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sort_order` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_poin_of_sale_outlets`
--

CREATE TABLE `wp_wc_poin_of_sale_outlets` (
  `ID` bigint(20) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `contact` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `social` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wc_poin_of_sale_outlets`
--

INSERT INTO `wp_wc_poin_of_sale_outlets` (`ID`, `name`, `contact`, `social`) VALUES
(1, 'DMS Phú Đô', '{\"country\":\"VN\",\"address_1\":\"S\\u1ed1 17, T\\u1ed5 d\\u00e2n c\\u01b0 16, Ph\\u00fa \\u0110\\u00f4, Nam T\\u1eeb Li\\u00eam\",\"address_2\":\"\",\"city\":\"H\\u00e0 N\\u1ed9i\",\"state\":\"\",\"postcode\":\"10000\"}', '{\"email\":\"nguyenthidiemmyhanu@gmail.com\",\"phone\":\"01696465109\",\"fax\":\"\",\"website\":\"http:\\/\\/hanghieu.sale\",\"twitter\":\"@hanghieu.sale\",\"facebook\":\"@liningviet\"}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_poin_of_sale_receipts`
--

CREATE TABLE `wp_wc_poin_of_sale_receipts` (
  `ID` bigint(20) NOT NULL,
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
  `tax_summary` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wc_poin_of_sale_receipts`
--

INSERT INTO `wp_wc_poin_of_sale_receipts` (`ID`, `name`, `print_outlet_address`, `print_outlet_contact_details`, `telephone_label`, `fax_label`, `email_label`, `website_label`, `receipt_title`, `order_number_label`, `order_date_label`, `order_date_format`, `print_order_time`, `print_server`, `served_by_label`, `served_by_type`, `tax_label`, `total_label`, `payment_label`, `print_number_items`, `items_label`, `print_barcode`, `show_image_product`, `show_sku`, `print_tax_number`, `tax_number_label`, `print_order_notes`, `order_notes_label`, `print_customer_name`, `customer_name_label`, `print_customer_email`, `customer_email_label`, `print_customer_ship_address`, `customer_ship_address_label`, `header_text`, `footer_text`, `logo`, `text_size`, `title_position`, `logo_size`, `logo_position`, `contact_position`, `tax_number_position`, `custom_css`, `show_outlet`, `show_register`, `show_site_name`, `gift_receipt_title`, `print_copies_count`, `receipt_width`, `tax_summary`) VALUES
(1, 'Default Receipt', 'yes', 'yes', 'Tel', 'Fax', 'Email', 'Website', 'Receipt', 'Order Number', 'Order Date', 'Y-m-d', 'yes', 'yes', 'Served by', 'username', 'Tax', 'Total', 'Sales', 'yes', 'Number of Items', 'yes', 'no', '', 'no', 'Tax Number', 'yes', 'Note', 'yes', 'Customer Name', 'yes', 'Customer Email', 'yes', 'Shipping Address', '', '', '', '', 'center', '', '', '', '', '', 'yes', 'yes', 'yes', 'Gift Receipt', 1, '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_poin_of_sale_registers`
--

CREATE TABLE `wp_wc_poin_of_sale_registers` (
  `ID` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `outlet` int(20) NOT NULL DEFAULT '0',
  `default_customer` int(20) NOT NULL DEFAULT '0',
  `order_id` int(20) NOT NULL DEFAULT '0',
  `settings` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `_edit_last` int(20) NOT NULL DEFAULT '0',
  `opened` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `closed` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wc_poin_of_sale_registers`
--

INSERT INTO `wp_wc_poin_of_sale_registers` (`ID`, `name`, `slug`, `detail`, `outlet`, `default_customer`, `order_id`, `settings`, `_edit_last`, `opened`, `closed`) VALUES
(1, 'Diễm My Store', 'diem-my-store', '{\"grid_template\":\"categories\",\"receipt_template\":\"1\",\"prefix\":\"DMS\",\"suffix\":\"\",\"tax_number\":\"\",\"default_customer\":\"0\",\"default_shipping_method\":\"\",\"float_cash_management\":\"1\",\"disable_sale_prices\":\"0\",\"need_sync\":0,\"opening_cash_amount\":{\"status\":true,\"amount\":\"\",\"note\":\"\",\"user\":1,\"time\":\"2018-03-22 20:42:01\"},\"cash_management_actions\":[],\"actual_cash\":0}', 1, 0, 146, '{\"change_user\":\"1\",\"email_receipt\":\"0\",\"print_receipt\":\"0\",\"gift_receipt\":\"1\",\"note_request\":\"0\"}', 1, '2018-03-22 20:41:42', '2018-03-22 20:38:19');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_poin_of_sale_tiles`
--

CREATE TABLE `wp_wc_poin_of_sale_tiles` (
  `ID` bigint(20) NOT NULL,
  `grid_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `style` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'image',
  `colour` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '000000',
  `background` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'ffffff',
  `default_selection` bigint(20) NOT NULL,
  `order_position` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_attribute_taxonomies`
--

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'kich-thuoc', 'Kích thước', 'select', 'menu_order', 0),
(3, 'mau-sac', 'Màu sắc', 'select', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(79, 11, '_product_id', '138'),
(80, 11, '_variation_id', '140'),
(81, 11, '_qty', '1'),
(82, 11, '_tax_class', ''),
(83, 11, '_line_subtotal', '390000'),
(84, 11, '_line_subtotal_tax', '0'),
(85, 11, '_line_total', '390000'),
(86, 11, '_line_tax', '0'),
(87, 11, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(88, 11, 'Màu sắc', 'Đen'),
(89, 11, '_price', '390000'),
(90, 12, 'method_id', ''),
(91, 12, 'cost', '30000'),
(92, 13, '_product_id', '138'),
(93, 13, '_variation_id', '140'),
(94, 13, '_qty', '1'),
(95, 13, '_tax_class', ''),
(96, 13, '_line_subtotal', '390000'),
(97, 13, '_line_subtotal_tax', '0'),
(98, 13, '_line_total', '390000'),
(99, 13, '_line_tax', '0'),
(100, 13, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(101, 13, 'Màu sắc', 'Đen'),
(102, 13, '_price', '390000'),
(103, 14, 'method_id', ''),
(104, 14, 'cost', '30000'),
(105, 9, '_product_id', '138'),
(106, 9, '_variation_id', '140'),
(107, 9, '_qty', '1'),
(108, 9, '_tax_class', ''),
(109, 9, '_line_subtotal', '390000'),
(110, 9, '_line_subtotal_tax', '0'),
(111, 9, '_line_total', '390000'),
(112, 9, '_line_tax', '0'),
(113, 9, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(114, 14, 'total_tax', '0'),
(115, 14, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(11, 'Ví nam - 3A1310185', 'line_item', 11),
(12, 'Shipper', 'shipping', 11),
(13, 'Ví nam - 3A1310185', 'line_item', 145),
(14, 'Shipper', 'shipping', 145);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(211, '1', 'a:11:{s:8:\"customer\";s:996:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2018-03-22T12:12:15+00:00\";s:8:\"postcode\";s:5:\"10000\";s:4:\"city\";s:9:\"Hà Nội\";s:9:\"address_1\";s:52:\"Số 17, tổ dân cư 16, Phú Đô, Nam Từ Liêm\";s:7:\"address\";s:52:\"Số 17, tổ dân cư 16, Phú Đô, Nam Từ Liêm\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"VN\";s:17:\"shipping_postcode\";s:5:\"10000\";s:13:\"shipping_city\";s:9:\"Hà Nội\";s:18:\"shipping_address_1\";s:52:\"Số 17, tổ dân cư 16, Phú Đô, Nam Từ Liêm\";s:16:\"shipping_address\";s:52:\"Số 17, tổ dân cư 16, Phú Đô, Nam Từ Liêm\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"VN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:4:\"Xuan\";s:9:\"last_name\";s:2:\"My\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:10:\"0989649075\";s:5:\"email\";s:19:\"xuan.0211@gmail.com\";s:19:\"shipping_first_name\";s:4:\"Xuan\";s:18:\"shipping_last_name\";s:2:\"My\";s:16:\"shipping_company\";s:0:\"\";}\";s:4:\"cart\";s:444:\"a:1:{s:32:\"b209c1dce49d5754a02d14c9974f1d0f\";a:10:{s:3:\"key\";s:32:\"b209c1dce49d5754a02d14c9974f1d0f\";s:10:\"product_id\";i:19;s:12:\"variation_id\";i:48;s:9:\"variation\";a:2:{s:23:\"attribute_pa_kich-thuoc\";s:3:\"2xl\";s:20:\"attribute_pa_mau-sac\";s:3:\"den\";}s:8:\"quantity\";i:4;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:1800000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:1800000;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:427:\"a:15:{s:8:\"subtotal\";s:10:\"1800000.00\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:8:\"30000.00\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:10:\"1800000.00\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:4:\"0.00\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:10:\"1830000.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:22:\"shipping_for_package_0\";s:777:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_d72ebfcad92dceff674bb980aad286ac\";s:5:\"rates\";a:2:{s:11:\"flat_rate:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:11:\"flat_rate:1\";s:9:\"method_id\";s:9:\"flat_rate\";s:11:\"instance_id\";i:1;s:5:\"label\";s:12:\"Đồng giá\";s:4:\"cost\";s:8:\"30000.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:11:\"Mặt hàng\";s:30:\"Áo Lining - APLK373 &times; 4\";}}i:137;O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:3:\"137\";s:9:\"method_id\";s:17:\"advanced_shipping\";s:11:\"instance_id\";i:0;s:5:\"label\";s:96:\"Miễn phí vận chuyển (Với thời gian vận chuyển theo quy định của cửa hàng)\";s:4:\"cost\";s:4:\"0.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:11:\"Mặt hàng\";s:30:\"Áo Lining - APLK373 &times; 4\";}}}}\";s:25:\"previous_shipping_methods\";s:49:\"a:1:{i:0;a:2:{i:0;s:11:\"flat_rate:1\";i:1;i:137;}}\";s:23:\"chosen_shipping_methods\";s:29:\"a:1:{i:0;s:11:\"flat_rate:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:2;}\";}', 1521923989);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Việt Nam', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'VN', 'country');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'flat_rate', 1, 1),
(0, 2, 'flat_rate', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yith_wapo_groups`
--

CREATE TABLE `wp_yith_wapo_groups` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `products_id` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `products_exclude_id` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `categories_id` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attributes_id` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `priority` int(2) DEFAULT NULL,
  `visibility` int(1) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yith_wapo_types`
--

CREATE TABLE `wp_yith_wapo_types` (
  `id` bigint(20) NOT NULL,
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
  `del` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yith_wccl_meta`
--

CREATE TABLE `wp_yith_wccl_meta` (
  `meta_id` bigint(20) NOT NULL,
  `wc_attribute_tax_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_point_of_sale_sale_reports`
--
ALTER TABLE `wp_wc_point_of_sale_sale_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wc_poin_of_sale_grids`
--
ALTER TABLE `wp_wc_poin_of_sale_grids`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wp_wc_poin_of_sale_outlets`
--
ALTER TABLE `wp_wc_poin_of_sale_outlets`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wp_wc_poin_of_sale_receipts`
--
ALTER TABLE `wp_wc_poin_of_sale_receipts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wp_wc_poin_of_sale_registers`
--
ALTER TABLE `wp_wc_poin_of_sale_registers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wp_wc_poin_of_sale_tiles`
--
ALTER TABLE `wp_wc_poin_of_sale_tiles`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_yith_wapo_groups`
--
ALTER TABLE `wp_yith_wapo_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_yith_wapo_types`
--
ALTER TABLE `wp_yith_wapo_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_yith_wccl_meta`
--
ALTER TABLE `wp_yith_wccl_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9556;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4681;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_point_of_sale_sale_reports`
--
ALTER TABLE `wp_wc_point_of_sale_sale_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_wc_poin_of_sale_grids`
--
ALTER TABLE `wp_wc_poin_of_sale_grids`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_poin_of_sale_outlets`
--
ALTER TABLE `wp_wc_poin_of_sale_outlets`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wc_poin_of_sale_receipts`
--
ALTER TABLE `wp_wc_poin_of_sale_receipts`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wc_poin_of_sale_registers`
--
ALTER TABLE `wp_wc_poin_of_sale_registers`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wc_poin_of_sale_tiles`
--
ALTER TABLE `wp_wc_poin_of_sale_tiles`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_yith_wapo_groups`
--
ALTER TABLE `wp_yith_wapo_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_yith_wapo_types`
--
ALTER TABLE `wp_yith_wapo_types`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_yith_wccl_meta`
--
ALTER TABLE `wp_yith_wccl_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

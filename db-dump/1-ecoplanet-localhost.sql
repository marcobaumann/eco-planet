-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 22, 2019 at 03:33 AM
-- Server version: 5.6.37
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecoplanet`
--
CREATE DATABASE IF NOT EXISTS `ecoplanet` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ecoplanet`;

-- --------------------------------------------------------

--
-- Table structure for table `eco_commentmeta`
--

DROP TABLE IF EXISTS `eco_commentmeta`;
CREATE TABLE IF NOT EXISTS `eco_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eco_comments`
--

DROP TABLE IF EXISTS `eco_comments`;
CREATE TABLE IF NOT EXISTS `eco_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
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
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `eco_comments`
--

INSERT INTO `eco_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-11-11 00:13:41', '2019-11-11 02:13:41', 'Olá, isso é um comentário.\nPara começar a moderar, editar e deletar comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `eco_links`
--

DROP TABLE IF EXISTS `eco_links`;
CREATE TABLE IF NOT EXISTS `eco_links` (
  `link_id` bigint(20) unsigned NOT NULL,
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
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eco_options`
--

DROP TABLE IF EXISTS `eco_options`;
CREATE TABLE IF NOT EXISTS `eco_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=292 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `eco_options`
--

INSERT INTO `eco_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://ecoplanet.w16', 'yes'),
(2, 'home', 'http://ecoplanet.w16', 'yes'),
(3, 'blogname', 'Ecoplanet', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'marcob89@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '2', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:105:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:35:"produto/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"produto/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"produto/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"produto/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"produto/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"produto/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"produto/([^/]+)/embed/?$";s:40:"index.php?produto=$matches[1]&embed=true";s:28:"produto/([^/]+)/trackback/?$";s:34:"index.php?produto=$matches[1]&tb=1";s:36:"produto/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?produto=$matches[1]&paged=$matches[2]";s:43:"produto/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?produto=$matches[1]&cpage=$matches[2]";s:32:"produto/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?produto=$matches[1]&page=$matches[2]";s:24:"produto/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"produto/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"produto/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"produto/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"produto/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"produto/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=7&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:33:"classic-editor/classic-editor.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'ecoplanet-2019', 'yes'),
(41, 'stylesheet', 'ecoplanet-2019', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(66, 'image_default_link_type', 'none', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:33:"classic-editor/classic-editor.php";a:2:{i:0;s:14:"Classic_Editor";i:1;s:9:"uninstall";}}', 'no'),
(82, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '7', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'eco_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'pt_BR', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'cron', 'a:5:{i:1574396022;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1574432022;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1574475250;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1574475394;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(113, 'theme_mods_twentynineteen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1573438470;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(130, 'can_compress_scripts', '1', 'no'),
(143, 'recently_activated', 'a:0:{}', 'yes'),
(145, 'acf_version', '5.7.5', 'yes'),
(146, 'current_theme', 'Ecoplanet WP 2019', 'yes'),
(147, 'theme_mods_ecoplanet-2019', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:6:"menu-1";i:2;}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(148, 'theme_switched', '', 'yes'),
(159, 'options_telefone_1', '(48) 3244-8778', 'no'),
(160, '_options_telefone_1', 'field_5dc8da6753d0b', 'no'),
(161, 'options_telefone_2', '(48) 3244-8309', 'no'),
(162, '_options_telefone_2', 'field_5dc8da7253d0c', 'no'),
(163, 'options_e-mail', 'admin@ecoplanet.agr.br', 'no'),
(164, '_options_e-mail', 'field_5dc8da7653d0d', 'no'),
(165, 'options_endereco', 'Servidão Maria Farias, 67 \r\nRio Tavares, Florianópolis – SC \r\nCEP 88048335', 'no'),
(166, '_options_endereco', 'field_5dc8da7b53d0e', 'no'),
(190, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(223, '_transient_timeout_acf_plugin_updates', '1574473047', 'no'),
(224, '_transient_acf_plugin_updates', 'a:4:{s:7:"plugins";a:1:{s:34:"advanced-custom-fields-pro/acf.php";a:8:{s:4:"slug";s:26:"advanced-custom-fields-pro";s:6:"plugin";s:34:"advanced-custom-fields-pro/acf.php";s:11:"new_version";s:5:"5.8.7";s:3:"url";s:36:"https://www.advancedcustomfields.com";s:6:"tested";s:5:"5.3.0";s:7:"package";s:0:"";s:5:"icons";a:1:{s:7:"default";s:63:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png";}s:7:"banners";a:2:{s:3:"low";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";s:4:"high";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";}}}s:10:"expiration";i:172800;s:6:"status";i:1;s:7:"checked";a:1:{s:34:"advanced-custom-fields-pro/acf.php";s:5:"5.7.5";}}', 'no'),
(234, 'category_children', 'a:0:{}', 'yes'),
(246, '_site_transient_timeout_browser_f9f7120ce5a4a9cf082c424b40cf59f5', '1574907230', 'no'),
(247, '_site_transient_browser_f9f7120ce5a4a9cf082c424b40cf59f5', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:12:"78.0.3904.97";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(285, '_site_transient_timeout_theme_roots', '1574395284', 'no'),
(286, '_site_transient_theme_roots', 'a:2:{s:14:"ecoplanet-2019";s:7:"/themes";s:14:"twentynineteen";s:7:"/themes";}', 'no'),
(289, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:6:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:63:"https://downloads.wordpress.org/release/pt_BR/wordpress-5.3.zip";s:6:"locale";s:5:"pt_BR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:63:"https://downloads.wordpress.org/release/pt_BR/wordpress-5.3.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"5.3";s:7:"version";s:3:"5.3";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.3";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-5.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-5.3.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-5.3-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-5.3-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"5.3";s:7:"version";s:3:"5.3";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.3";s:15:"partial_version";s:0:"";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:63:"https://downloads.wordpress.org/release/pt_BR/wordpress-5.3.zip";s:6:"locale";s:5:"pt_BR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:63:"https://downloads.wordpress.org/release/pt_BR/wordpress-5.3.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"5.3";s:7:"version";s:3:"5.3";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.3";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:3;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:65:"https://downloads.wordpress.org/release/pt_BR/wordpress-5.2.4.zip";s:6:"locale";s:5:"pt_BR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/pt_BR/wordpress-5.2.4.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.2.4";s:7:"version";s:5:"5.2.4";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.3";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:4;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:65:"https://downloads.wordpress.org/release/pt_BR/wordpress-5.1.3.zip";s:6:"locale";s:5:"pt_BR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/pt_BR/wordpress-5.1.3.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.1.3";s:7:"version";s:5:"5.1.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.3";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:5;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:65:"https://downloads.wordpress.org/release/pt_BR/wordpress-5.0.7.zip";s:6:"locale";s:5:"pt_BR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/pt_BR/wordpress-5.0.7.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.0.7";s:7:"version";s:5:"5.0.7";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.3";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1574393488;s:15:"version_checked";s:5:"5.0.3";s:12:"translations";a:0:{}}', 'no'),
(290, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1574393489;s:7:"checked";a:2:{s:14:"ecoplanet-2019";s:5:"1.0.0";s:14:"twentynineteen";s:3:"1.1";}s:8:"response";a:1:{s:14:"twentynineteen";a:6:{s:5:"theme";s:14:"twentynineteen";s:11:"new_version";s:3:"1.4";s:3:"url";s:44:"https://wordpress.org/themes/twentynineteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentynineteen.1.4.zip";s:8:"requires";s:5:"4.9.6";s:12:"requires_php";s:5:"5.2.4";}}s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:14:"twentynineteen";s:8:"language";s:5:"pt_BR";s:7:"version";s:3:"1.1";s:7:"updated";s:19:"2018-12-03 13:13:53";s:7:"package";s:78:"https://downloads.wordpress.org/translation/theme/twentynineteen/1.1/pt_BR.zip";s:10:"autoupdate";b:1;}}}', 'no'),
(291, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1574393491;s:7:"checked";a:4:{s:34:"advanced-custom-fields-pro/acf.php";s:5:"5.7.5";s:33:"classic-editor/classic-editor.php";s:3:"1.4";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"5.1.1";s:60:"cf7-conditional-fields/contact-form-7-conditional-fields.php";s:5:"1.4.1";}s:8:"response";a:4:{s:33:"classic-editor/classic-editor.php";O:8:"stdClass":12:{s:2:"id";s:28:"w.org/plugins/classic-editor";s:4:"slug";s:14:"classic-editor";s:6:"plugin";s:33:"classic-editor/classic-editor.php";s:11:"new_version";s:3:"1.5";s:3:"url";s:45:"https://wordpress.org/plugins/classic-editor/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip";s:5:"icons";a:2:{s:2:"2x";s:67:"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671";s:2:"1x";s:67:"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671";}s:7:"banners";a:2:{s:2:"2x";s:70:"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671";s:2:"1x";s:69:"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:3:"5.3";s:12:"requires_php";s:5:"5.2.4";s:13:"compatibility";O:8:"stdClass":0:{}}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":12:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"5.1.5";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.5.1.5.zip";s:5:"icons";a:2:{s:2:"2x";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";s:2:"1x";s:66:"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";s:2:"1x";s:68:"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:3:"5.3";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:60:"cf7-conditional-fields/contact-form-7-conditional-fields.php";O:8:"stdClass":12:{s:2:"id";s:36:"w.org/plugins/cf7-conditional-fields";s:4:"slug";s:22:"cf7-conditional-fields";s:6:"plugin";s:60:"cf7-conditional-fields/contact-form-7-conditional-fields.php";s:11:"new_version";s:5:"1.7.6";s:3:"url";s:53:"https://wordpress.org/plugins/cf7-conditional-fields/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/cf7-conditional-fields.1.7.6.zip";s:5:"icons";a:2:{s:2:"2x";s:75:"https://ps.w.org/cf7-conditional-fields/assets/icon-256x256.png?rev=2072595";s:2:"1x";s:75:"https://ps.w.org/cf7-conditional-fields/assets/icon-128x128.png?rev=2072595";}s:7:"banners";a:2:{s:2:"2x";s:78:"https://ps.w.org/cf7-conditional-fields/assets/banner-1544x500.png?rev=1925451";s:2:"1x";s:77:"https://ps.w.org/cf7-conditional-fields/assets/banner-772x250.png?rev=1925451";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:3:"5.3";s:12:"requires_php";s:3:"5.3";s:13:"compatibility";O:8:"stdClass":0:{}}s:34:"advanced-custom-fields-pro/acf.php";O:8:"stdClass":8:{s:4:"slug";s:26:"advanced-custom-fields-pro";s:6:"plugin";s:34:"advanced-custom-fields-pro/acf.php";s:11:"new_version";s:5:"5.8.7";s:3:"url";s:36:"https://www.advancedcustomfields.com";s:6:"tested";s:5:"5.3.0";s:7:"package";s:0:"";s:5:"icons";a:1:{s:7:"default";s:63:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png";}s:7:"banners";a:2:{s:3:"low";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";s:4:"high";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";}}}s:12:"translations";a:0:{}s:9:"no_update";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `eco_postmeta`
--

DROP TABLE IF EXISTS `eco_postmeta`;
CREATE TABLE IF NOT EXISTS `eco_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB AUTO_INCREMENT=464 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `eco_postmeta`
--

INSERT INTO `eco_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_trash_meta_status', 'publish'),
(4, 5, '_wp_trash_meta_time', '1573438495'),
(5, 7, '_edit_last', '1'),
(6, 7, '_edit_lock', '1573700816:1'),
(7, 7, '_wp_page_template', 'templates/home.php'),
(8, 9, '_edit_last', '1'),
(9, 9, '_edit_lock', '1574302176:1'),
(10, 7, 'supra_titulo', 'Ecoplanet'),
(11, 7, '_supra_titulo', 'field_5dc8c601861a0'),
(12, 7, 'titulo', 'Vida longa às suas flores: Conheça o conservante Flower'),
(13, 7, '_titulo', 'field_5dc8c624861a1'),
(14, 7, 'imagem', ''),
(15, 7, '_imagem', 'field_5dc8c634861a2'),
(16, 7, 'label_botao', 'Saiba mais'),
(17, 7, '_label_botao', 'field_5dc8c64a861a3'),
(18, 7, 'link_do_botao', ''),
(19, 7, '_link_do_botao', 'field_5dc8c663861a4'),
(30, 17, '_wp_attached_file', '2019/11/home.jpg'),
(31, 17, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:659;s:4:"file";s:16:"2019/11/home.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"home-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"home-300x154.jpg";s:5:"width";i:300;s:6:"height";i:154;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:16:"home-768x395.jpg";s:5:"width";i:768;s:6:"height";i:395;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"home-1024x527.jpg";s:5:"width";i:1024;s:6:"height";i:527;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(32, 7, 'imagem_hero', '17'),
(33, 7, '_imagem_hero', 'field_5dc8c634861a2'),
(34, 18, 'supra_titulo', 'Ecoplanet'),
(35, 18, '_supra_titulo', 'field_5dc8c601861a0'),
(36, 18, 'titulo', 'Vida longa às suas flores: Conheça o conservante Flower'),
(37, 18, '_titulo', 'field_5dc8c624861a1'),
(38, 18, 'imagem', ''),
(39, 18, '_imagem', 'field_5dc8c634861a2'),
(40, 18, 'label_botao', 'Saiba mais'),
(41, 18, '_label_botao', 'field_5dc8c64a861a3'),
(42, 18, 'link_do_botao', ''),
(43, 18, '_link_do_botao', 'field_5dc8c663861a4'),
(44, 18, 'imagem_hero', '17'),
(45, 18, '_imagem_hero', 'field_5dc8c634861a2'),
(46, 7, 'descricao', 'A <b>Ecoplanet</b> é uma empresa que une qualidade e praticidade, alta tecnologia e fácil aplicação, surpreendendo cada vez mais o mercado internacional e líder no mercado brasileiro de produtos para flores de corte, nós disponibilizamos produtos pós-colheita que todos podem usufruir, sejam profissionais ou amadores, agricultores ou consumidores finais.'),
(47, 7, '_descricao', 'field_5dc8c8cb83c09'),
(48, 21, 'supra_titulo', 'Ecoplanet'),
(49, 21, '_supra_titulo', 'field_5dc8c601861a0'),
(50, 21, 'titulo', 'Vida longa às suas flores: Conheça o conservante Flower'),
(51, 21, '_titulo', 'field_5dc8c624861a1'),
(52, 21, 'imagem', ''),
(53, 21, '_imagem', 'field_5dc8c634861a2'),
(54, 21, 'label_botao', 'Saiba mais'),
(55, 21, '_label_botao', 'field_5dc8c64a861a3'),
(56, 21, 'link_do_botao', ''),
(57, 21, '_link_do_botao', 'field_5dc8c663861a4'),
(58, 21, 'imagem_hero', '17'),
(59, 21, '_imagem_hero', 'field_5dc8c634861a2'),
(60, 21, 'descricao', 'A <b>Ecoplanet</b> é uma empresa que une qualidade e praticidade, alta tecnologia e fácil aplicação, surpreendendo cada vez mais o mercado internacional e líder no mercado brasileiro de produtos para flores de corte, nós disponibilizamos produtos pós-colheita que todos podem usufruir, sejam profissionais ou amadores, agricultores ou consumidores finais.'),
(61, 21, '_descricao', 'field_5dc8c8cb83c09'),
(62, 27, '_wp_attached_file', '2019/11/about.jpg'),
(63, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:660;s:6:"height";i:520;s:4:"file";s:17:"2019/11/about.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"about-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"about-300x236.jpg";s:5:"width";i:300;s:6:"height";i:236;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(64, 28, '_wp_attached_file', '2019/11/about-cover.jpg'),
(65, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:658;s:4:"file";s:23:"2019/11/about-cover.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"about-cover-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"about-cover-300x154.jpg";s:5:"width";i:300;s:6:"height";i:154;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"about-cover-768x395.jpg";s:5:"width";i:768;s:6:"height";i:395;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"about-cover-1024x526.jpg";s:5:"width";i:1024;s:6:"height";i:526;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(66, 29, '_wp_attached_file', '2019/11/flower.png'),
(67, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:221;s:6:"height";i:199;s:4:"file";s:18:"2019/11/flower.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"flower-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(68, 30, '_wp_attached_file', '2019/11/flower-2.jpg'),
(69, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:479;s:6:"height";i:639;s:4:"file";s:20:"2019/11/flower-2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"flower-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"flower-2-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(70, 31, '_wp_attached_file', '2019/11/post.jpg'),
(71, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1278;s:6:"height";i:658;s:4:"file";s:16:"2019/11/post.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"post-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"post-300x154.jpg";s:5:"width";i:300;s:6:"height";i:154;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:16:"post-768x395.jpg";s:5:"width";i:768;s:6:"height";i:395;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"post-1024x527.jpg";s:5:"width";i:1024;s:6:"height";i:527;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(72, 32, '_wp_attached_file', '2019/11/products.png'),
(73, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1214;s:6:"height";i:676;s:4:"file";s:20:"2019/11/products.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"products-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:20:"products-300x167.png";s:5:"width";i:300;s:6:"height";i:167;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:20:"products-768x428.png";s:5:"width";i:768;s:6:"height";i:428;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:21:"products-1024x570.png";s:5:"width";i:1024;s:6:"height";i:570;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(74, 33, '_wp_attached_file', '2019/11/products-cover.jpg'),
(75, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:659;s:4:"file";s:26:"2019/11/products-cover.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"products-cover-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"products-cover-300x154.jpg";s:5:"width";i:300;s:6:"height";i:154;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"products-cover-768x395.jpg";s:5:"width";i:768;s:6:"height";i:395;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"products-cover-1024x527.jpg";s:5:"width";i:1024;s:6:"height";i:527;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(76, 7, 'titulo_produtos', 'Conheça os nossos produtos'),
(77, 7, '_titulo_produtos', 'field_5dc8ca8fe78a1'),
(78, 7, 'imagem_produtos', '32'),
(79, 7, '_imagem_produtos', 'field_5dc8caa0e78a2'),
(80, 7, 'label_botao_produtos', 'Ver todos os Produtos'),
(81, 7, '_label_botao_produtos', 'field_5dc8caace78a3'),
(82, 7, 'link_botao_produtos', ''),
(83, 7, '_link_botao_produtos', 'field_5dc8cac24fdec'),
(84, 34, 'supra_titulo', 'Ecoplanet'),
(85, 34, '_supra_titulo', 'field_5dc8c601861a0'),
(86, 34, 'titulo', 'Vida longa às suas flores: Conheça o conservante Flower'),
(87, 34, '_titulo', 'field_5dc8c624861a1'),
(88, 34, 'imagem', ''),
(89, 34, '_imagem', 'field_5dc8c634861a2'),
(90, 34, 'label_botao', 'Saiba mais'),
(91, 34, '_label_botao', 'field_5dc8c64a861a3'),
(92, 34, 'link_do_botao', ''),
(93, 34, '_link_do_botao', 'field_5dc8c663861a4'),
(94, 34, 'imagem_hero', '17'),
(95, 34, '_imagem_hero', 'field_5dc8c634861a2'),
(96, 34, 'descricao', 'A <b>Ecoplanet</b> é uma empresa que une qualidade e praticidade, alta tecnologia e fácil aplicação, surpreendendo cada vez mais o mercado internacional e líder no mercado brasileiro de produtos para flores de corte, nós disponibilizamos produtos pós-colheita que todos podem usufruir, sejam profissionais ou amadores, agricultores ou consumidores finais.'),
(97, 34, '_descricao', 'field_5dc8c8cb83c09'),
(98, 34, 'titulo_produtos', 'Conheça os nossos produtos'),
(99, 34, '_titulo_produtos', 'field_5dc8ca8fe78a1'),
(100, 34, 'imagem_produtos', '32'),
(101, 34, '_imagem_produtos', 'field_5dc8caa0e78a2'),
(102, 34, 'label_botao_produtos', 'Ver todos os Produtos'),
(103, 34, '_label_botao_produtos', 'field_5dc8caace78a3'),
(104, 34, 'link_botao_produtos', ''),
(105, 34, '_link_botao_produtos', 'field_5dc8cac24fdec'),
(106, 7, 'depoimentos_0_depoimento', 'Há muitos anos, fui apresentada à Ecoplanet, que desenvolve produtos específicos para qualidade e durabilidade das nossas flores, desde a colheita ao consumidor final! Uma empresa brasileira, que conhece nossas flores, nossas preferências e principalmente o nosso clima (diferente dos  importados) e sem esses requisitos, além da alta tecnologia aplicada, seus produtos não teriam o resultado e necessário! Me sinto a vontade de dizer a todos os floristas, que experimentem o Flower, que é conservante de flores maravilhoso (é o meu queridinho). Experimentem os produtos da Ecoplanet e depois contem os resultados!'),
(107, 7, '_depoimentos_0_depoimento', 'field_5dc8ce865c12c'),
(108, 7, 'depoimentos_0_autor', 'LEO MENDES'),
(109, 7, '_depoimentos_0_autor', 'field_5dc8ce9f5c12d'),
(110, 7, 'depoimentos_0_cargo_autor', 'Florista e Professora de Arte Floral há 25 anos, membro da ABAF.'),
(111, 7, '_depoimentos_0_cargo_autor', 'field_5dc8cea55c12e'),
(112, 7, 'depoimentos', '1'),
(113, 7, '_depoimentos', 'field_5dc8ce745c12b'),
(114, 40, 'supra_titulo', 'Ecoplanet'),
(115, 40, '_supra_titulo', 'field_5dc8c601861a0'),
(116, 40, 'titulo', 'Vida longa às suas flores: Conheça o conservante Flower'),
(117, 40, '_titulo', 'field_5dc8c624861a1'),
(118, 40, 'imagem', ''),
(119, 40, '_imagem', 'field_5dc8c634861a2'),
(120, 40, 'label_botao', 'Saiba mais'),
(121, 40, '_label_botao', 'field_5dc8c64a861a3'),
(122, 40, 'link_do_botao', ''),
(123, 40, '_link_do_botao', 'field_5dc8c663861a4'),
(124, 40, 'imagem_hero', '17'),
(125, 40, '_imagem_hero', 'field_5dc8c634861a2'),
(126, 40, 'descricao', 'A <b>Ecoplanet</b> é uma empresa que une qualidade e praticidade, alta tecnologia e fácil aplicação, surpreendendo cada vez mais o mercado internacional e líder no mercado brasileiro de produtos para flores de corte, nós disponibilizamos produtos pós-colheita que todos podem usufruir, sejam profissionais ou amadores, agricultores ou consumidores finais.'),
(127, 40, '_descricao', 'field_5dc8c8cb83c09'),
(128, 40, 'titulo_produtos', 'Conheça os nossos produtos'),
(129, 40, '_titulo_produtos', 'field_5dc8ca8fe78a1'),
(130, 40, 'imagem_produtos', '32'),
(131, 40, '_imagem_produtos', 'field_5dc8caa0e78a2'),
(132, 40, 'label_botao_produtos', 'Ver todos os Produtos'),
(133, 40, '_label_botao_produtos', 'field_5dc8caace78a3'),
(134, 40, 'link_botao_produtos', ''),
(135, 40, '_link_botao_produtos', 'field_5dc8cac24fdec'),
(136, 40, 'depoimentos_0_depoimento', 'Há muitos anos, fui apresentada à Ecoplanet, que desenvolve produtos específicos para qualidade e durabilidade das nossas flores, desde a colheita ao consumidor final! Uma empresa brasileira, que conhece nossas flores, nossas preferências e principalmente o nosso clima (diferente dos  importados) e sem esses requisitos, além da alta tecnologia aplicada, seus produtos não teriam o resultado e necessário! Me sinto a vontade de dizer a todos os floristas, que experimentem o Flower, que é conservante de flores maravilhoso (é o meu queridinho). Experimentem os produtos da Ecoplanet e depois contem os resultados!'),
(137, 40, '_depoimentos_0_depoimento', 'field_5dc8ce865c12c'),
(138, 40, 'depoimentos_0_autor', 'LEO MENDES'),
(139, 40, '_depoimentos_0_autor', 'field_5dc8ce9f5c12d'),
(140, 40, 'depoimentos_0_cargo_autor', 'Florista e Professora de Arte Floral há 25 anos, membro da ABAF.'),
(141, 40, '_depoimentos_0_cargo_autor', 'field_5dc8cea55c12e'),
(142, 40, 'depoimentos', '1'),
(143, 40, '_depoimentos', 'field_5dc8ce745c12b'),
(144, 41, 'supra_titulo', 'Ecoplanet'),
(145, 41, '_supra_titulo', 'field_5dc8c601861a0'),
(146, 41, 'titulo', 'Vida longa às suas flores: Conheça o conservante Flower'),
(147, 41, '_titulo', 'field_5dc8c624861a1'),
(148, 41, 'imagem', ''),
(149, 41, '_imagem', 'field_5dc8c634861a2'),
(150, 41, 'label_botao', 'Saiba mais'),
(151, 41, '_label_botao', 'field_5dc8c64a861a3'),
(152, 41, 'link_do_botao', ''),
(153, 41, '_link_do_botao', 'field_5dc8c663861a4'),
(154, 41, 'imagem_hero', '17'),
(155, 41, '_imagem_hero', 'field_5dc8c634861a2'),
(156, 41, 'descricao', 'A <b>Ecoplanet</b> é uma empresa que une qualidade e praticidade, alta tecnologia e fácil aplicação, surpreendendo cada vez mais o mercado internacional e líder no mercado brasileiro de produtos para flores de corte, nós disponibilizamos produtos pós-colheita que todos podem usufruir, sejam profissionais ou amadores, agricultores ou consumidores finais.'),
(157, 41, '_descricao', 'field_5dc8c8cb83c09'),
(158, 41, 'titulo_produtos', 'Conheça os nossos produtos'),
(159, 41, '_titulo_produtos', 'field_5dc8ca8fe78a1'),
(160, 41, 'imagem_produtos', '32'),
(161, 41, '_imagem_produtos', 'field_5dc8caa0e78a2'),
(162, 41, 'label_botao_produtos', 'Ver todos os Produtos'),
(163, 41, '_label_botao_produtos', 'field_5dc8caace78a3'),
(164, 41, 'link_botao_produtos', ''),
(165, 41, '_link_botao_produtos', 'field_5dc8cac24fdec'),
(166, 41, 'depoimentos_0_depoimento', 'Há muitos anos, fui apresentada à Ecoplanet, que desenvolve produtos específicos para qualidade e durabilidade das nossas flores, desde a colheita ao consumidor final! Uma empresa brasileira, que conhece nossas flores, nossas preferências e principalmente o nosso clima (diferente dos  importados) e sem esses requisitos, além da alta tecnologia aplicada, seus produtos não teriam o resultado e necessário! Me sinto a vontade de dizer a todos os floristas, que experimentem o Flower, que é conservante de flores maravilhoso (é o meu queridinho). Experimentem os produtos da Ecoplanet e depois contem os resultados!'),
(167, 41, '_depoimentos_0_depoimento', 'field_5dc8ce865c12c'),
(168, 41, 'depoimentos_0_autor', 'LEO MENDES'),
(169, 41, '_depoimentos_0_autor', 'field_5dc8ce9f5c12d'),
(170, 41, 'depoimentos_0_cargo_autor', 'Florista e Professora de Arte Floral há 25 anos, membro da ABAF.'),
(171, 41, '_depoimentos_0_cargo_autor', 'field_5dc8cea55c12e'),
(172, 41, 'depoimentos', '1'),
(173, 41, '_depoimentos', 'field_5dc8ce745c12b'),
(174, 42, '_edit_last', '1'),
(175, 42, '_edit_lock', '1573443031:1'),
(176, 42, '_thumbnail_id', '31'),
(181, 1, '_wp_trash_meta_status', 'publish'),
(182, 1, '_wp_trash_meta_time', '1573443177'),
(183, 1, '_wp_desired_post_slug', 'ola-mundo'),
(184, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(185, 45, '_edit_last', '1'),
(186, 45, '_edit_lock', '1574302200:1'),
(187, 51, '_menu_item_type', 'post_type'),
(188, 51, '_menu_item_menu_item_parent', '0'),
(189, 51, '_menu_item_object_id', '7'),
(190, 51, '_menu_item_object', 'page'),
(191, 51, '_menu_item_target', ''),
(192, 51, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(193, 51, '_menu_item_xfn', ''),
(194, 51, '_menu_item_url', ''),
(195, 51, '_menu_item_orphaned', '1573527764'),
(196, 52, '_menu_item_type', 'post_type'),
(197, 52, '_menu_item_menu_item_parent', '0'),
(198, 52, '_menu_item_object_id', '2'),
(199, 52, '_menu_item_object', 'page'),
(200, 52, '_menu_item_target', ''),
(201, 52, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(202, 52, '_menu_item_xfn', ''),
(203, 52, '_menu_item_url', ''),
(204, 52, '_menu_item_orphaned', '1573527764'),
(205, 53, '_menu_item_type', 'post_type'),
(206, 53, '_menu_item_menu_item_parent', '0'),
(207, 53, '_menu_item_object_id', '7'),
(208, 53, '_menu_item_object', 'page'),
(209, 53, '_menu_item_target', ''),
(210, 53, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(211, 53, '_menu_item_xfn', ''),
(212, 53, '_menu_item_url', ''),
(213, 53, '_menu_item_orphaned', '1573527764'),
(214, 54, '_edit_last', '1'),
(215, 54, '_edit_lock', '1574308358:1'),
(216, 54, '_wp_page_template', 'default'),
(217, 56, '_menu_item_type', 'post_type'),
(218, 56, '_menu_item_menu_item_parent', '0'),
(219, 56, '_menu_item_object_id', '7'),
(220, 56, '_menu_item_object', 'page'),
(221, 56, '_menu_item_target', ''),
(222, 56, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(223, 56, '_menu_item_xfn', ''),
(224, 56, '_menu_item_url', ''),
(225, 56, '_menu_item_orphaned', '1573527802'),
(226, 57, '_menu_item_type', 'post_type'),
(227, 57, '_menu_item_menu_item_parent', '0'),
(228, 57, '_menu_item_object_id', '2'),
(229, 57, '_menu_item_object', 'page'),
(230, 57, '_menu_item_target', ''),
(231, 57, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(232, 57, '_menu_item_xfn', ''),
(233, 57, '_menu_item_url', ''),
(234, 57, '_menu_item_orphaned', '1573527802'),
(235, 58, '_menu_item_type', 'post_type'),
(236, 58, '_menu_item_menu_item_parent', '0'),
(237, 58, '_menu_item_object_id', '7'),
(238, 58, '_menu_item_object', 'page'),
(239, 58, '_menu_item_target', ''),
(240, 58, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(241, 58, '_menu_item_xfn', ''),
(242, 58, '_menu_item_url', ''),
(243, 58, '_menu_item_orphaned', '1573527802'),
(244, 59, '_menu_item_type', 'post_type'),
(245, 59, '_menu_item_menu_item_parent', '0'),
(246, 59, '_menu_item_object_id', '54'),
(247, 59, '_menu_item_object', 'page'),
(248, 59, '_menu_item_target', ''),
(249, 59, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(250, 59, '_menu_item_xfn', ''),
(251, 59, '_menu_item_url', ''),
(253, 60, '_menu_item_type', 'custom'),
(254, 60, '_menu_item_menu_item_parent', '0'),
(255, 60, '_menu_item_object_id', '60'),
(256, 60, '_menu_item_object', 'custom'),
(257, 60, '_menu_item_target', ''),
(258, 60, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(259, 60, '_menu_item_xfn', ''),
(260, 60, '_menu_item_url', '/produtos'),
(262, 61, '_menu_item_type', 'custom'),
(263, 61, '_menu_item_menu_item_parent', '0'),
(264, 61, '_menu_item_object_id', '61'),
(265, 61, '_menu_item_object', 'custom'),
(266, 61, '_menu_item_target', ''),
(267, 61, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(268, 61, '_menu_item_xfn', ''),
(269, 61, '_menu_item_url', '/blog'),
(271, 62, '_edit_last', '1'),
(272, 62, '_edit_lock', '1573701509:1'),
(273, 62, '_wp_page_template', 'templates/blog.php'),
(274, 64, '_edit_last', '1'),
(275, 64, '_edit_lock', '1573702863:1'),
(278, 66, '_edit_last', '1'),
(281, 66, '_edit_lock', '1573702990:1'),
(282, 68, '_edit_last', '1'),
(283, 68, '_edit_lock', '1574302149:1'),
(284, 70, '_edit_last', '1'),
(285, 70, '_edit_lock', '1573703081:1'),
(286, 72, '_edit_last', '1'),
(287, 72, '_edit_lock', '1573703080:1'),
(288, 74, '_edit_last', '1'),
(289, 74, '_edit_lock', '1573703080:1'),
(290, 76, '_edit_last', '1'),
(291, 76, '_edit_lock', '1573703080:1'),
(314, 68, '_thumbnail_id', '31'),
(317, 82, '_edit_lock', '1574302523:1'),
(318, 82, '_edit_last', '1'),
(319, 102, '_edit_last', '1'),
(320, 102, '_edit_lock', '1574302737:1'),
(321, 102, '_wp_page_template', 'templates/produtos.php'),
(322, 102, 'supra_titulo', 'PRODUTOS'),
(323, 102, '_supra_titulo', 'field_5dd5f272cac3e'),
(324, 102, 'titulo', 'Conheça nossa linha de produtos'),
(325, 102, '_titulo', 'field_5dd5f272ce69b'),
(326, 102, 'imagem_hero', '33'),
(327, 102, '_imagem_hero', 'field_5dd5f272d2465'),
(328, 102, 'label_botao', ''),
(329, 102, '_label_botao', 'field_5dd5f272d604d'),
(330, 102, 'link_do_botao', ''),
(331, 102, '_link_do_botao', 'field_5dd5f272d9b38'),
(332, 104, 'supra_titulo', 'PRODUTOS'),
(333, 104, '_supra_titulo', 'field_5dd5f272cac3e'),
(334, 104, 'titulo', 'Conheça nossa linha de produtos'),
(335, 104, '_titulo', 'field_5dd5f272ce69b'),
(336, 104, 'imagem_hero', '33'),
(337, 104, '_imagem_hero', 'field_5dd5f272d2465'),
(338, 104, 'label_botao', ''),
(339, 104, '_label_botao', 'field_5dd5f272d604d'),
(340, 104, 'link_do_botao', ''),
(341, 104, '_link_do_botao', 'field_5dd5f272d9b38'),
(342, 105, '_edit_last', '1'),
(343, 105, '_edit_lock', '1574307023:1'),
(344, 105, '_thumbnail_id', '29'),
(345, 106, '_edit_last', '1'),
(346, 106, '_edit_lock', '1574305514:1'),
(347, 106, '_thumbnail_id', '29'),
(348, 107, '_edit_last', '1'),
(349, 107, '_edit_lock', '1574306797:1'),
(350, 105, 'titulo_detalhamento', 'Descrição'),
(351, 105, '_titulo_detalhamento', 'field_5dd5ffcf10e45'),
(352, 105, 'detalhamento', 'Ao utilizar o Flower também são controlados os efeitos do fungo Botrytis. Sua formulação balanceada, a base de nutrientes, vitaminas, micro-nutrientes, bactericidas, algicidas, vasos dilatadores e reguladores de PH, faz com que as flores se mantenham vivas por muito mais tempo. Devido a essa formulação completa, as flores são hidratadas rapidamente, apresentando uma resposta a olhos vivos na qualidade e durabilidade.'),
(353, 105, '_detalhamento', 'field_5dd5ff9e7c8f2'),
(354, 105, 'veja_tambem', 'a:2:{i:0;s:3:"106";i:1;s:3:"105";}'),
(355, 105, '_veja_tambem', 'field_5dd6003f55184'),
(356, 105, 'imagem_detalhamento', '30'),
(357, 105, '_imagem_detalhamento', 'field_5dd6020e81202'),
(358, 114, '_edit_lock', '1574307952:1'),
(359, 114, '_edit_last', '1'),
(360, 54, 'supra_titulo', 'ECOPLANET'),
(361, 54, '_supra_titulo', 'field_5dd6048617e80'),
(362, 54, 'titulo', 'Líder no mercado brasileiro de produtos para flores de corte'),
(363, 54, '_titulo', 'field_5dd604861b934'),
(364, 54, 'imagem_hero', '28'),
(365, 54, '_imagem_hero', 'field_5dd604861f3a7'),
(366, 54, 'imagem_de_destaque', '27'),
(367, 54, '_imagem_de_destaque', 'field_5dd6059a05681'),
(368, 54, 'frase_destacada', 'Atualmente, a <b>Ecoplanet</b> é líder do mercado brasileiro em sua linha, que é encontrada em território nacional através de distribuidores e parceiros.'),
(369, 54, '_frase_destacada', 'field_5dd605a505682'),
(390, 125, 'supra_titulo', 'ECOPLANET'),
(391, 125, '_supra_titulo', 'field_5dd6048617e80'),
(392, 125, 'titulo', 'Líder no mercado brasileiro de produtos para flores de corte'),
(393, 125, '_titulo', 'field_5dd604861b934'),
(394, 125, 'imagem_hero', '28'),
(395, 125, '_imagem_hero', 'field_5dd604861f3a7'),
(396, 125, 'imagem_de_destaque', '27'),
(397, 125, '_imagem_de_destaque', 'field_5dd6059a05681'),
(398, 125, 'frase_destacada', 'Atualmente, a <b>Ecoplanet</b> é líder do mercado brasileiro em sua linha, que é encontrada em território nacional através de distribuidores e parceiros.'),
(399, 125, '_frase_destacada', 'field_5dd605a505682'),
(400, 126, 'supra_titulo', 'ECOPLANET'),
(401, 126, '_supra_titulo', 'field_5dd6048617e80'),
(402, 126, 'titulo', 'Líder no mercado brasileiro de produtos para flores de corte'),
(403, 126, '_titulo', 'field_5dd604861b934'),
(404, 126, 'imagem_hero', '28'),
(405, 126, '_imagem_hero', 'field_5dd604861f3a7'),
(406, 126, 'imagem_de_destaque', ''),
(407, 126, '_imagem_de_destaque', 'field_5dd6059a05681'),
(408, 126, 'frase_destacada', 'Atualmente, a <b>Ecoplanet</b> é líder do mercado brasileiro em sua linha, que é encontrada em território nacional através de distribuidores e parceiros.'),
(409, 126, '_frase_destacada', 'field_5dd605a505682'),
(410, 127, 'supra_titulo', 'ECOPLANET'),
(411, 127, '_supra_titulo', 'field_5dd6048617e80'),
(412, 127, 'titulo', 'Líder no mercado brasileiro de produtos para flores de corte'),
(413, 127, '_titulo', 'field_5dd604861b934'),
(414, 127, 'imagem_hero', '28'),
(415, 127, '_imagem_hero', 'field_5dd604861f3a7'),
(416, 127, 'imagem_de_destaque', '27'),
(417, 127, '_imagem_de_destaque', 'field_5dd6059a05681'),
(418, 127, 'frase_destacada', 'Atualmente, a <b>Ecoplanet</b> é líder do mercado brasileiro em sua linha, que é encontrada em território nacional através de distribuidores e parceiros.'),
(419, 127, '_frase_destacada', 'field_5dd605a505682'),
(420, 54, 'titulo_produtos', 'Conheça os nossos produtos'),
(421, 54, '_titulo_produtos', 'field_5dd607f4bd13a'),
(422, 54, 'label_botao_produtos', 'laabel'),
(423, 54, '_label_botao_produtos', 'field_5dd60865d37f4'),
(424, 54, 'link_botao_produtos', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:30:"http://ecoplanet.w16/produtos/";s:6:"target";s:0:"";}'),
(425, 54, '_link_botao_produtos', 'field_5dd6080cbd13b'),
(426, 54, 'imagem_produtos', '32'),
(427, 54, '_imagem_produtos', 'field_5dd6081fbd13c'),
(428, 133, 'supra_titulo', 'ECOPLANET'),
(429, 133, '_supra_titulo', 'field_5dd6048617e80'),
(430, 133, 'titulo', 'Líder no mercado brasileiro de produtos para flores de corte'),
(431, 133, '_titulo', 'field_5dd604861b934'),
(432, 133, 'imagem_hero', '28'),
(433, 133, '_imagem_hero', 'field_5dd604861f3a7'),
(434, 133, 'imagem_de_destaque', '27'),
(435, 133, '_imagem_de_destaque', 'field_5dd6059a05681'),
(436, 133, 'frase_destacada', 'Atualmente, a <b>Ecoplanet</b> é líder do mercado brasileiro em sua linha, que é encontrada em território nacional através de distribuidores e parceiros.'),
(437, 133, '_frase_destacada', 'field_5dd605a505682'),
(438, 133, 'titulo_produtos', 'Conheça os nossos produtos'),
(439, 133, '_titulo_produtos', 'field_5dd607f4bd13a'),
(440, 133, 'label_botao_produtos', ''),
(441, 133, '_label_botao_produtos', 'field_5dd60865d37f4'),
(442, 133, 'link_botao_produtos', ''),
(443, 133, '_link_botao_produtos', 'field_5dd6080cbd13b'),
(444, 133, 'imagem_produtos', ''),
(445, 133, '_imagem_produtos', 'field_5dd6081fbd13c'),
(446, 134, 'supra_titulo', 'ECOPLANET'),
(447, 134, '_supra_titulo', 'field_5dd6048617e80'),
(448, 134, 'titulo', 'Líder no mercado brasileiro de produtos para flores de corte'),
(449, 134, '_titulo', 'field_5dd604861b934'),
(450, 134, 'imagem_hero', '28'),
(451, 134, '_imagem_hero', 'field_5dd604861f3a7'),
(452, 134, 'imagem_de_destaque', '27'),
(453, 134, '_imagem_de_destaque', 'field_5dd6059a05681'),
(454, 134, 'frase_destacada', 'Atualmente, a <b>Ecoplanet</b> é líder do mercado brasileiro em sua linha, que é encontrada em território nacional através de distribuidores e parceiros.'),
(455, 134, '_frase_destacada', 'field_5dd605a505682'),
(456, 134, 'titulo_produtos', 'Conheça os nossos produtos'),
(457, 134, '_titulo_produtos', 'field_5dd607f4bd13a'),
(458, 134, 'label_botao_produtos', 'laabel'),
(459, 134, '_label_botao_produtos', 'field_5dd60865d37f4'),
(460, 134, 'link_botao_produtos', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:30:"http://ecoplanet.w16/produtos/";s:6:"target";s:0:"";}'),
(461, 134, '_link_botao_produtos', 'field_5dd6080cbd13b'),
(462, 134, 'imagem_produtos', '32'),
(463, 134, '_imagem_produtos', 'field_5dd6081fbd13c');

-- --------------------------------------------------------

--
-- Table structure for table `eco_posts`
--

DROP TABLE IF EXISTS `eco_posts`;
CREATE TABLE IF NOT EXISTS `eco_posts` (
  `ID` bigint(20) unsigned NOT NULL,
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
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `eco_posts`
--

INSERT INTO `eco_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-11-11 00:13:41', '2019-11-11 02:13:41', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'trash', 'open', 'open', '', 'ola-mundo__trashed', '', '', '2019-11-11 01:32:57', '2019-11-11 03:32:57', '', 0, 'http://ecoplanet.w16/?p=1', 0, 'post', '', 1),
(2, 1, '2019-11-11 00:13:41', '2019-11-11 02:13:41', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href="http://ecoplanet.w16/wp-admin/">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'publish', 'closed', 'open', '', 'pagina-exemplo', '', '', '2019-11-11 00:13:41', '2019-11-11 02:13:41', '', 0, 'http://ecoplanet.w16/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-11-11 00:13:41', '2019-11-11 02:13:41', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>O endereço do nosso site é: http://ecoplanet.w16.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais dados pessoais coletamos e porque</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comentários</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Mídia</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Formulários de contato</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Mídia incorporada de outros sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Análises</h3><!-- /wp:heading --><!-- wp:heading --><h2>Com quem partilhamos seus dados</h2><!-- /wp:heading --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Suas informações de contato</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informações adicionais</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Como protegemos seus dados</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Quais são nossos procedimentos contra violação de dados</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>De quais terceiros nós recebemos dados</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Quais tomadas de decisão ou análises de perfil automatizadas fazemos com os dados de usuários</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Requisitos obrigatórios de divulgação para sua categoria profissional</h3><!-- /wp:heading -->', 'Política de privacidade', '', 'draft', 'closed', 'open', '', 'politica-de-privacidade', '', '', '2019-11-11 00:13:41', '2019-11-11 02:13:41', '', 0, 'http://ecoplanet.w16/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-11-11 00:14:55', '2019-11-11 02:14:55', '{\n    "blogdescription": {\n        "value": "",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-11-11 02:14:55"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '347c7160-22dd-4553-9ad9-c28167cb3d89', '', '', '2019-11-11 00:14:55', '2019-11-11 02:14:55', '', 0, 'http://ecoplanet.w16/2019/11/11/347c7160-22dd-4553-9ad9-c28167cb3d89/', 0, 'customize_changeset', '', 0),
(7, 1, '2019-11-11 00:18:21', '2019-11-11 02:18:21', '', 'Página Inicial', '', 'publish', 'closed', 'closed', '', 'pagina-inicial', '', '', '2019-11-11 01:04:45', '2019-11-11 03:04:45', '', 0, 'http://ecoplanet.w16/?page_id=7', 0, 'page', '', 0),
(9, 1, '2019-11-11 00:24:53', '2019-11-11 02:24:53', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:18:"templates/home.php";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:3:{i:0;s:11:"the_content";i:1;s:7:"excerpt";i:2;s:14:"featured_image";}s:11:"description";s:0:"";}', 'Página Inicial', 'pagina-inicial', 'publish', 'closed', 'closed', '', 'group_5dc8c5df4e900', '', '', '2019-11-11 01:00:54', '2019-11-11 03:00:54', '', 0, 'http://ecoplanet.w16/?post_type=acf-field-group&#038;p=9', 0, 'acf-field-group', '', 0),
(10, 1, '2019-11-11 00:24:53', '2019-11-11 02:24:53', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:4:"left";s:8:"endpoint";i:0;}', 'Hero', 'hero', 'publish', 'closed', 'closed', '', 'field_5dc8c5f88619f', '', '', '2019-11-11 00:24:53', '2019-11-11 02:24:53', '', 9, 'http://ecoplanet.w16/?post_type=acf-field&p=10', 0, 'acf-field', '', 0),
(11, 1, '2019-11-11 00:24:53', '2019-11-11 02:24:53', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Supra-Título', 'supra_titulo', 'publish', 'closed', 'closed', '', 'field_5dc8c601861a0', '', '', '2019-11-11 00:24:53', '2019-11-11 02:24:53', '', 9, 'http://ecoplanet.w16/?post_type=acf-field&p=11', 1, 'acf-field', '', 0),
(12, 1, '2019-11-11 00:24:53', '2019-11-11 02:24:53', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Título', 'titulo', 'publish', 'closed', 'closed', '', 'field_5dc8c624861a1', '', '', '2019-11-11 00:24:53', '2019-11-11 02:24:53', '', 9, 'http://ecoplanet.w16/?post_type=acf-field&p=12', 2, 'acf-field', '', 0),
(13, 1, '2019-11-11 00:24:53', '2019-11-11 02:24:53', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:2:"id";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Imagem', 'imagem_hero', 'publish', 'closed', 'closed', '', 'field_5dc8c634861a2', '', '', '2019-11-11 00:28:01', '2019-11-11 02:28:01', '', 9, 'http://ecoplanet.w16/?post_type=acf-field&#038;p=13', 3, 'acf-field', '', 0),
(14, 1, '2019-11-11 00:24:53', '2019-11-11 02:24:53', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"50";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Label Botão', 'label_botao', 'publish', 'closed', 'closed', '', 'field_5dc8c64a861a3', '', '', '2019-11-11 00:25:35', '2019-11-11 02:25:35', '', 9, 'http://ecoplanet.w16/?post_type=acf-field&#038;p=14', 4, 'acf-field', '', 0),
(15, 1, '2019-11-11 00:24:53', '2019-11-11 02:24:53', 'a:6:{s:4:"type";s:4:"link";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"50";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";}', 'Link do Botão', 'link_do_botao', 'publish', 'closed', 'closed', '', 'field_5dc8c663861a4', '', '', '2019-11-11 00:25:35', '2019-11-11 02:25:35', '', 9, 'http://ecoplanet.w16/?post_type=acf-field&#038;p=15', 5, 'acf-field', '', 0),
(17, 1, '2019-11-11 00:29:02', '2019-11-11 02:29:02', '', 'home', '', 'inherit', 'open', 'closed', '', 'home', '', '', '2019-11-11 00:29:02', '2019-11-11 02:29:02', '', 7, 'http://ecoplanet.w16/wp-content/uploads/2019/11/home.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2019-11-11 00:29:06', '2019-11-11 02:29:06', '', 'Página Inicial', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-11-11 00:29:06', '2019-11-11 02:29:06', '', 7, 'http://ecoplanet.w16/2019/11/11/7-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2019-11-11 00:35:23', '2019-11-11 02:35:23', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:4:"left";s:8:"endpoint";i:0;}', 'Introdução', 'introducao', 'publish', 'closed', 'closed', '', 'field_5dc8c8bf83c08', '', '', '2019-11-11 00:35:23', '2019-11-11 02:35:23', '', 9, 'http://ecoplanet.w16/?post_type=acf-field&p=19', 6, 'acf-field', '', 0),
(20, 1, '2019-11-11 00:35:23', '2019-11-11 02:35:23', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";i:4;s:9:"new_lines";s:2:"br";}', 'Descrição', 'descricao', 'publish', 'closed', 'closed', '', 'field_5dc8c8cb83c09', '', '', '2019-11-11 00:35:23', '2019-11-11 02:35:23', '', 9, 'http://ecoplanet.w16/?post_type=acf-field&p=20', 7, 'acf-field', '', 0),
(21, 1, '2019-11-11 00:40:21', '2019-11-11 02:40:21', '', 'Página Inicial', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-11-11 00:40:21', '2019-11-11 02:40:21', '', 7, 'http://ecoplanet.w16/2019/11/11/7-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2019-11-11 00:42:59', '2019-11-11 02:42:59', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:4:"left";s:8:"endpoint";i:0;}', 'Produtos', 'produtos', 'publish', 'closed', 'closed', '', 'field_5dc8ca86e78a0', '', '', '2019-11-11 00:42:59', '2019-11-11 02:42:59', '', 9, 'http://ecoplanet.w16/?post_type=acf-field&p=22', 8, 'acf-field', '', 0),
(23, 1, '2019-11-11 00:42:59', '2019-11-11 02:42:59', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Título', 'titulo_produtos', 'publish', 'closed', 'closed', '', 'field_5dc8ca8fe78a1', '', '', '2019-11-11 00:42:59', '2019-11-11 02:42:59', '', 9, 'http://ecoplanet.w16/?post_type=acf-field&p=23', 9, 'acf-field', '', 0),
(24, 1, '2019-11-11 00:42:59', '2019-11-11 02:42:59', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:2:"id";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Imagem', 'imagem_produtos', 'publish', 'closed', 'closed', '', 'field_5dc8caa0e78a2', '', '', '2019-11-11 00:42:59', '2019-11-11 02:42:59', '', 9, 'http://ecoplanet.w16/?post_type=acf-field&p=24', 10, 'acf-field', '', 0),
(25, 1, '2019-11-11 00:42:59', '2019-11-11 02:42:59', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Label Botão', 'label_botao_produtos', 'publish', 'closed', 'closed', '', 'field_5dc8caace78a3', '', '', '2019-11-11 00:43:34', '2019-11-11 02:43:34', '', 9, 'http://ecoplanet.w16/?post_type=acf-field&#038;p=25', 11, 'acf-field', '', 0),
(26, 1, '2019-11-11 00:43:34', '2019-11-11 02:43:34', 'a:6:{s:4:"type";s:4:"link";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";}', 'Link Botão', 'link_botao_produtos', 'publish', 'closed', 'closed', '', 'field_5dc8cac24fdec', '', '', '2019-11-11 00:43:34', '2019-11-11 02:43:34', '', 9, 'http://ecoplanet.w16/?post_type=acf-field&p=26', 12, 'acf-field', '', 0),
(27, 1, '2019-11-11 00:44:21', '2019-11-11 02:44:21', '', 'about', '', 'inherit', 'open', 'closed', '', 'about', '', '', '2019-11-11 00:44:21', '2019-11-11 02:44:21', '', 7, 'http://ecoplanet.w16/wp-content/uploads/2019/11/about.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2019-11-11 00:44:21', '2019-11-11 02:44:21', '', 'about-cover', '', 'inherit', 'open', 'closed', '', 'about-cover', '', '', '2019-11-11 00:44:21', '2019-11-11 02:44:21', '', 7, 'http://ecoplanet.w16/wp-content/uploads/2019/11/about-cover.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2019-11-11 00:44:22', '2019-11-11 02:44:22', '', 'flower', '', 'inherit', 'open', 'closed', '', 'flower', '', '', '2019-11-11 00:44:22', '2019-11-11 02:44:22', '', 7, 'http://ecoplanet.w16/wp-content/uploads/2019/11/flower.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2019-11-11 00:44:23', '2019-11-11 02:44:23', '', 'flower-2', '', 'inherit', 'open', 'closed', '', 'flower-2', '', '', '2019-11-11 00:44:23', '2019-11-11 02:44:23', '', 7, 'http://ecoplanet.w16/wp-content/uploads/2019/11/flower-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2019-11-11 00:44:24', '2019-11-11 02:44:24', '', 'post', '', 'inherit', 'open', 'closed', '', 'post', '', '', '2019-11-11 00:44:24', '2019-11-11 02:44:24', '', 7, 'http://ecoplanet.w16/wp-content/uploads/2019/11/post.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2019-11-11 00:44:25', '2019-11-11 02:44:25', '', 'products', '', 'inherit', 'open', 'closed', '', 'products', '', '', '2019-11-11 00:44:25', '2019-11-11 02:44:25', '', 7, 'http://ecoplanet.w16/wp-content/uploads/2019/11/products.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2019-11-11 00:44:27', '2019-11-11 02:44:27', '', 'products-cover', '', 'inherit', 'open', 'closed', '', 'products-cover', '', '', '2019-11-11 00:44:27', '2019-11-11 02:44:27', '', 7, 'http://ecoplanet.w16/wp-content/uploads/2019/11/products-cover.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2019-11-11 00:44:46', '2019-11-11 02:44:46', '', 'Página Inicial', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-11-11 00:44:46', '2019-11-11 02:44:46', '', 7, 'http://ecoplanet.w16/2019/11/11/7-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2019-11-11 01:00:16', '2019-11-11 03:00:16', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:4:"left";s:8:"endpoint";i:0;}', 'Depoimentos', 'depoimentos', 'publish', 'closed', 'closed', '', 'field_5dc8ce485c12a', '', '', '2019-11-11 01:00:16', '2019-11-11 03:00:16', '', 9, 'http://ecoplanet.w16/?post_type=acf-field&p=35', 13, 'acf-field', '', 0),
(36, 1, '2019-11-11 01:00:16', '2019-11-11 03:00:16', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";i:1;s:3:"max";s:0:"";s:6:"layout";s:5:"block";s:12:"button_label";s:15:"Novo Depoimento";}', 'Depoimentos', 'depoimentos', 'publish', 'closed', 'closed', '', 'field_5dc8ce745c12b', '', '', '2019-11-11 01:00:54', '2019-11-11 03:00:54', '', 9, 'http://ecoplanet.w16/?post_type=acf-field&#038;p=36', 14, 'acf-field', '', 0),
(37, 1, '2019-11-11 01:00:16', '2019-11-11 03:00:16', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";i:4;s:9:"new_lines";s:2:"br";}', 'Depoimento', 'depoimento', 'publish', 'closed', 'closed', '', 'field_5dc8ce865c12c', '', '', '2019-11-11 01:00:16', '2019-11-11 03:00:16', '', 36, 'http://ecoplanet.w16/?post_type=acf-field&p=37', 0, 'acf-field', '', 0),
(38, 1, '2019-11-11 01:00:16', '2019-11-11 03:00:16', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"50";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Autor', 'autor', 'publish', 'closed', 'closed', '', 'field_5dc8ce9f5c12d', '', '', '2019-11-11 01:00:54', '2019-11-11 03:00:54', '', 36, 'http://ecoplanet.w16/?post_type=acf-field&#038;p=38', 1, 'acf-field', '', 0),
(39, 1, '2019-11-11 01:00:16', '2019-11-11 03:00:16', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"50";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Cargo Autor', 'cargo_autor', 'publish', 'closed', 'closed', '', 'field_5dc8cea55c12e', '', '', '2019-11-11 01:00:54', '2019-11-11 03:00:54', '', 36, 'http://ecoplanet.w16/?post_type=acf-field&#038;p=39', 2, 'acf-field', '', 0),
(40, 1, '2019-11-11 01:01:52', '2019-11-11 03:01:52', '', 'Página Inicial', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-11-11 01:01:52', '2019-11-11 03:01:52', '', 7, 'http://ecoplanet.w16/2019/11/11/7-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2019-11-11 01:04:45', '2019-11-11 03:04:45', '', 'Página Inicial', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-11-11 01:04:45', '2019-11-11 03:04:45', '', 7, 'http://ecoplanet.w16/2019/11/11/7-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2019-11-11 01:25:32', '2019-11-11 03:25:32', '<h2>O que são flores de corte?</h2>\r\nAs flores de corte são conhecidas por trazerem vida aos ambientes através de belos arranjos ou\r\nsimplesmente colocadas individualmente em vasos.\r\nSão chamadas assim, pois se tratam de flores que são cortadas das outras partes da planta que\r\noriginalmente faziam parte, sendo comercializadas sem suas raízes.\r\n<h3>O que são flores de corte?</h3>\r\nAs flores de corte são conhecidas por trazerem vida aos ambientes através de belos arranjos ou\r\nsimplesmente colocadas individualmente em vasos.\r\nSão chamadas assim, pois se tratam de flores que são cortadas das outras partes da planta que\r\noriginalmente faziam parte, sendo comercializadas sem suas raízes.\r\n\r\n<img class="alignnone size-medium wp-image-31" src="http://ecoplanet.w16/wp-content/uploads/2019/11/post-300x154.jpg" alt="" width="300" height="154" />', 'Líder no mercado brasileiro de produtos para flores de corte', '', 'publish', 'open', 'open', '', 'lider-no-mercado-brasileiro-de-produtos-para-flores-de-corte', '', '', '2019-11-11 01:25:58', '2019-11-11 03:25:58', '', 0, 'http://ecoplanet.w16/?p=42', 0, 'post', '', 0),
(43, 1, '2019-11-11 01:25:32', '2019-11-11 03:25:32', '<h2>O que são flores de corte?</h2>\r\nAs flores de corte são conhecidas por trazerem vida aos ambientes através de belos arranjos ou\r\nsimplesmente colocadas individualmente em vasos.\r\nSão chamadas assim, pois se tratam de flores que são cortadas das outras partes da planta que\r\noriginalmente faziam parte, sendo comercializadas sem suas raízes.\r\n<h3>O que são flores de corte?</h3>\r\nAs flores de corte são conhecidas por trazerem vida aos ambientes através de belos arranjos ou\r\nsimplesmente colocadas individualmente em vasos.\r\nSão chamadas assim, pois se tratam de flores que são cortadas das outras partes da planta que\r\noriginalmente faziam parte, sendo comercializadas sem suas raízes.\r\n\r\n<img class="alignnone size-medium wp-image-31" src="http://ecoplanet.w16/wp-content/uploads/2019/11/post-300x154.jpg" alt="" width="300" height="154" />', 'Líder no mercado brasileiro de produtos para flores de corte', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2019-11-11 01:25:32', '2019-11-11 03:25:32', '', 42, 'http://ecoplanet.w16/2019/11/11/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-11-11 01:32:57', '2019-11-11 03:32:57', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-11-11 01:32:57', '2019-11-11 03:32:57', '', 1, 'http://ecoplanet.w16/2019/11/11/1-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2019-11-11 01:50:33', '2019-11-11 03:50:33', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:12:"options_page";s:8:"operator";s:2:"==";s:5:"value";s:20:"configuracoes-gerais";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Configurações Gerais', 'configuracoes-gerais', 'publish', 'closed', 'closed', '', 'group_5dc8da4b8fe44', '', '', '2019-11-11 01:50:33', '2019-11-11 03:50:33', '', 0, 'http://ecoplanet.w16/?post_type=acf-field-group&#038;p=45', 0, 'acf-field-group', '', 0),
(46, 1, '2019-11-11 01:50:33', '2019-11-11 03:50:33', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:4:"left";s:8:"endpoint";i:0;}', 'Localização', 'localizacao', 'publish', 'closed', 'closed', '', 'field_5dc8da5753d0a', '', '', '2019-11-11 01:50:33', '2019-11-11 03:50:33', '', 45, 'http://ecoplanet.w16/?post_type=acf-field&p=46', 0, 'acf-field', '', 0),
(47, 1, '2019-11-11 01:50:33', '2019-11-11 03:50:33', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Telefone 1', 'telefone_1', 'publish', 'closed', 'closed', '', 'field_5dc8da6753d0b', '', '', '2019-11-11 01:50:33', '2019-11-11 03:50:33', '', 45, 'http://ecoplanet.w16/?post_type=acf-field&p=47', 1, 'acf-field', '', 0),
(48, 1, '2019-11-11 01:50:33', '2019-11-11 03:50:33', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Telefone 2', 'telefone_2', 'publish', 'closed', 'closed', '', 'field_5dc8da7253d0c', '', '', '2019-11-11 01:50:33', '2019-11-11 03:50:33', '', 45, 'http://ecoplanet.w16/?post_type=acf-field&p=48', 2, 'acf-field', '', 0),
(49, 1, '2019-11-11 01:50:33', '2019-11-11 03:50:33', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'E-mail', 'e-mail', 'publish', 'closed', 'closed', '', 'field_5dc8da7653d0d', '', '', '2019-11-11 01:50:33', '2019-11-11 03:50:33', '', 45, 'http://ecoplanet.w16/?post_type=acf-field&p=49', 3, 'acf-field', '', 0),
(50, 1, '2019-11-11 01:50:33', '2019-11-11 03:50:33', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";i:3;s:9:"new_lines";s:2:"br";}', 'Endereço', 'endereco', 'publish', 'closed', 'closed', '', 'field_5dc8da7b53d0e', '', '', '2019-11-11 01:50:33', '2019-11-11 03:50:33', '', 45, 'http://ecoplanet.w16/?post_type=acf-field&p=50', 4, 'acf-field', '', 0),
(51, 1, '2019-11-12 01:02:44', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-11-12 01:02:44', '0000-00-00 00:00:00', '', 0, 'http://ecoplanet.w16/?p=51', 1, 'nav_menu_item', '', 0),
(52, 1, '2019-11-12 01:02:44', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-11-12 01:02:44', '0000-00-00 00:00:00', '', 0, 'http://ecoplanet.w16/?p=52', 1, 'nav_menu_item', '', 0),
(53, 1, '2019-11-12 01:02:44', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-11-12 01:02:44', '0000-00-00 00:00:00', '', 0, 'http://ecoplanet.w16/?p=53', 1, 'nav_menu_item', '', 0),
(54, 1, '2019-11-12 01:03:15', '2019-11-12 03:03:15', 'Fundada em Florianópolis no ano de 1998, a Ecoplanet começou com Fernando Pretto, proprietário na época da floricultura Jardim do Sol, que devido a sua paixão pelas flores desejava desenvolver um conservante que prolongasse a vida delas. Inicialmente suas pesquisas começaram em um pequeno container ao lado de sua floricultura, que em conjunto com a Universidade Federal de Santa Catarina conseguiram chegar na fórmula final do produto após 06 meses. Em 2 anos o produto se destacou e hoje é usado e recomendado pelos melhores artistas florais e produtores de flores do Brasil.', 'Sobre', '', 'publish', 'closed', 'closed', '', 'sobre', '', '', '2019-11-21 01:48:47', '2019-11-21 03:48:47', '', 0, 'http://ecoplanet.w16/?page_id=54', 0, 'page', '', 0),
(56, 1, '2019-11-12 01:03:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-11-12 01:03:22', '0000-00-00 00:00:00', '', 0, 'http://ecoplanet.w16/?p=56', 1, 'nav_menu_item', '', 0),
(57, 1, '2019-11-12 01:03:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-11-12 01:03:22', '0000-00-00 00:00:00', '', 0, 'http://ecoplanet.w16/?p=57', 1, 'nav_menu_item', '', 0),
(58, 1, '2019-11-12 01:03:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-11-12 01:03:22', '0000-00-00 00:00:00', '', 0, 'http://ecoplanet.w16/?p=58', 1, 'nav_menu_item', '', 0),
(59, 1, '2019-11-12 01:04:23', '2019-11-12 03:04:23', ' ', '', '', 'publish', 'closed', 'closed', '', '59', '', '', '2019-11-12 01:04:23', '2019-11-12 03:04:23', '', 0, 'http://ecoplanet.w16/?p=59', 1, 'nav_menu_item', '', 0),
(60, 1, '2019-11-12 01:04:23', '2019-11-12 03:04:23', '', 'Produtos', '', 'publish', 'closed', 'closed', '', 'produtos', '', '', '2019-11-12 01:04:23', '2019-11-12 03:04:23', '', 0, 'http://ecoplanet.w16/?p=60', 2, 'nav_menu_item', '', 0),
(61, 1, '2019-11-12 01:04:23', '2019-11-12 03:04:23', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-11-12 01:04:23', '2019-11-12 03:04:23', '', 0, 'http://ecoplanet.w16/?p=61', 3, 'nav_menu_item', '', 0),
(62, 1, '2019-11-12 01:10:22', '2019-11-12 03:10:22', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-11-12 01:14:43', '2019-11-12 03:14:43', '', 0, 'http://ecoplanet.w16/?page_id=62', 0, 'page', '', 0),
(63, 1, '2019-11-12 01:10:22', '2019-11-12 03:10:22', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2019-11-12 01:10:22', '2019-11-12 03:10:22', '', 62, 'http://ecoplanet.w16/blog/62-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2019-11-14 01:11:50', '2019-11-14 03:11:50', 'este é um post sem foto!', 'Post sem foto', '', 'publish', 'open', 'open', '', 'post-sem-foto', '', '', '2019-11-14 01:11:50', '2019-11-14 03:11:50', '', 0, 'http://ecoplanet.w16/?p=64', 0, 'post', '', 0),
(65, 1, '2019-11-14 01:11:50', '2019-11-14 03:11:50', 'este é um post sem foto!', 'Post sem foto', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2019-11-14 01:11:50', '2019-11-14 03:11:50', '', 64, 'http://ecoplanet.w16/blog/64-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2019-11-14 01:45:29', '2019-11-14 03:45:29', '', 'post #1', '', 'publish', 'open', 'open', '', 'post-1', '', '', '2019-11-14 01:45:29', '2019-11-14 03:45:29', '', 0, 'http://ecoplanet.w16/?p=66', 0, 'post', '', 0),
(67, 1, '2019-11-14 01:45:29', '2019-11-14 03:45:29', '', 'post #1', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2019-11-14 01:45:29', '2019-11-14 03:45:29', '', 66, 'http://ecoplanet.w16/blog/66-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2019-11-14 01:46:59', '2019-11-14 03:46:59', '<h2>O que são flores de corte?</h2>\r\nAs flores de corte são conhecidas por trazerem vida aos ambientes através de belos arranjos ou\r\nsimplesmente colocadas individualmente em vasos.\r\nSão chamadas assim, pois se tratam de flores que são cortadas das outras partes da planta que\r\noriginalmente faziam parte, sendo comercializadas sem suas raízes.\r\n<h3>O que são flores de corte?</h3>\r\nAs flores de corte são conhecidas por trazerem vida aos ambientes através de belos arranjos ou\r\nsimplesmente colocadas individualmente em vasos.\r\nSão chamadas assim, pois se tratam de flores que são cortadas das outras partes da planta que\r\noriginalmente faziam parte, sendo comercializadas sem suas raízes.\r\n\r\n<img src="img/post.jpg" alt="" /><img class="size-medium wp-image-31 aligncenter" src="http://ecoplanet.w16/wp-content/uploads/2019/11/post-300x154.jpg" alt="" width="300" height="154" />', 'Psto #2', '', 'publish', 'open', 'open', '', 'psto-2', '', '', '2019-11-20 23:51:15', '2019-11-21 01:51:15', '', 0, 'http://ecoplanet.w16/?p=68', 0, 'post', '', 0),
(69, 1, '2019-11-14 01:45:37', '2019-11-14 03:45:37', '', 'Psto #2', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2019-11-14 01:45:37', '2019-11-14 03:45:37', '', 68, 'http://ecoplanet.w16/blog/68-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2019-11-14 01:46:55', '2019-11-14 03:46:55', '', 'Post #3', '', 'publish', 'open', 'open', '', 'post-3', '', '', '2019-11-14 01:46:55', '2019-11-14 03:46:55', '', 0, 'http://ecoplanet.w16/?p=70', 0, 'post', '', 0),
(71, 1, '2019-11-14 01:45:45', '2019-11-14 03:45:45', '', 'Post #3', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2019-11-14 01:45:45', '2019-11-14 03:45:45', '', 70, 'http://ecoplanet.w16/blog/70-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2019-11-14 01:46:52', '2019-11-14 03:46:52', '', 'Post #4', '', 'publish', 'open', 'open', '', 'post-4', '', '', '2019-11-14 01:46:52', '2019-11-14 03:46:52', '', 0, 'http://ecoplanet.w16/?p=72', 0, 'post', '', 0),
(73, 1, '2019-11-14 01:45:53', '2019-11-14 03:45:53', '', 'Post #4', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-11-14 01:45:53', '2019-11-14 03:45:53', '', 72, 'http://ecoplanet.w16/blog/72-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2019-11-14 01:46:49', '2019-11-14 03:46:49', '', 'Post #5', '', 'publish', 'open', 'open', '', 'post-5', '', '', '2019-11-14 01:46:49', '2019-11-14 03:46:49', '', 0, 'http://ecoplanet.w16/?p=74', 0, 'post', '', 0),
(75, 1, '2019-11-14 01:46:01', '2019-11-14 03:46:01', '', 'Post #5', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2019-11-14 01:46:01', '2019-11-14 03:46:01', '', 74, 'http://ecoplanet.w16/blog/74-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2019-11-14 01:46:47', '2019-11-14 03:46:47', '', 'Post #6', '', 'publish', 'open', 'open', '', 'post-6', '', '', '2019-11-14 01:46:47', '2019-11-14 03:46:47', '', 0, 'http://ecoplanet.w16/?p=76', 0, 'post', '', 0),
(77, 1, '2019-11-14 01:46:08', '2019-11-14 03:46:08', '', 'Post #6', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2019-11-14 01:46:08', '2019-11-14 03:46:08', '', 76, 'http://ecoplanet.w16/blog/76-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2019-11-20 23:49:02', '2019-11-21 01:49:02', ' <h2>O que são flores de corte?</h2>\r\n            <p>As flores de corte são conhecidas por trazerem vida aos ambientes através de belos arranjos ou\r\n              simplesmente colocadas individualmente em vasos.\r\n              São chamadas assim, pois se tratam de flores que são cortadas das outras partes da planta que\r\n              originalmente faziam parte, sendo comercializadas sem suas raízes.\r\n            </p>\r\n            <h3>O que são flores de corte?</h3>\r\n            <p>As flores de corte são conhecidas por trazerem vida aos ambientes através de belos arranjos ou\r\n              simplesmente colocadas individualmente em vasos.\r\n              São chamadas assim, pois se tratam de flores que são cortadas das outras partes da planta que\r\n              originalmente faziam parte, sendo comercializadas sem suas raízes.\r\n            </p>\r\n            <img src="img/post.jpg" alt="">', 'Psto #2', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2019-11-20 23:49:02', '2019-11-21 01:49:02', '', 68, 'http://ecoplanet.w16/blog/68-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2019-11-20 23:49:24', '2019-11-21 01:49:24', '<h2>O que são flores de corte?</h2>\r\nAs flores de corte são conhecidas por trazerem vida aos ambientes através de belos arranjos ou\r\nsimplesmente colocadas individualmente em vasos.\r\nSão chamadas assim, pois se tratam de flores que são cortadas das outras partes da planta que\r\noriginalmente faziam parte, sendo comercializadas sem suas raízes.\r\n<h3>O que são flores de corte?</h3>\r\nAs flores de corte são conhecidas por trazerem vida aos ambientes através de belos arranjos ou\r\nsimplesmente colocadas individualmente em vasos.\r\nSão chamadas assim, pois se tratam de flores que são cortadas das outras partes da planta que\r\noriginalmente faziam parte, sendo comercializadas sem suas raízes.\r\n\r\n<img src="img/post.jpg" alt="" />', 'Psto #2', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2019-11-20 23:49:24', '2019-11-21 01:49:24', '', 68, 'http://ecoplanet.w16/blog/68-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2019-11-20 23:49:42', '2019-11-21 01:49:42', '<h2>O que são flores de corte?</h2>\r\nAs flores de corte são conhecidas por trazerem vida aos ambientes através de belos arranjos ou\r\nsimplesmente colocadas individualmente em vasos.\r\nSão chamadas assim, pois se tratam de flores que são cortadas das outras partes da planta que\r\noriginalmente faziam parte, sendo comercializadas sem suas raízes.\r\n<h3>O que são flores de corte?</h3>\r\nAs flores de corte são conhecidas por trazerem vida aos ambientes através de belos arranjos ou\r\nsimplesmente colocadas individualmente em vasos.\r\nSão chamadas assim, pois se tratam de flores que são cortadas das outras partes da planta que\r\noriginalmente faziam parte, sendo comercializadas sem suas raízes.\r\n\r\n<img src="img/post.jpg" alt="" /><img class="alignnone size-medium wp-image-31" src="http://ecoplanet.w16/wp-content/uploads/2019/11/post-300x154.jpg" alt="" width="300" height="154" />', 'Psto #2', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2019-11-20 23:49:42', '2019-11-21 01:49:42', '', 68, 'http://ecoplanet.w16/blog/68-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2019-11-20 23:49:50', '2019-11-21 01:49:50', '<h2>O que são flores de corte?</h2>\r\nAs flores de corte são conhecidas por trazerem vida aos ambientes através de belos arranjos ou\r\nsimplesmente colocadas individualmente em vasos.\r\nSão chamadas assim, pois se tratam de flores que são cortadas das outras partes da planta que\r\noriginalmente faziam parte, sendo comercializadas sem suas raízes.\r\n<h3>O que são flores de corte?</h3>\r\nAs flores de corte são conhecidas por trazerem vida aos ambientes através de belos arranjos ou\r\nsimplesmente colocadas individualmente em vasos.\r\nSão chamadas assim, pois se tratam de flores que são cortadas das outras partes da planta que\r\noriginalmente faziam parte, sendo comercializadas sem suas raízes.\r\n\r\n<img src="img/post.jpg" alt="" /><img class="size-medium wp-image-31 aligncenter" src="http://ecoplanet.w16/wp-content/uploads/2019/11/post-300x154.jpg" alt="" width="300" height="154" />', 'Psto #2', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2019-11-20 23:49:50', '2019-11-21 01:49:50', '', 68, 'http://ecoplanet.w16/blog/68-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2019-11-21 00:12:02', '2019-11-21 02:12:02', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:22:"templates/produtos.php";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:3:{i:0;s:11:"the_content";i:1;s:7:"excerpt";i:2;s:14:"featured_image";}s:11:"description";s:0:"";}', 'Página Lista de Produtos', 'pagina-lista-de-produtos', 'publish', 'closed', 'closed', '', 'group_5dd5f272b9c26', '', '', '2019-11-21 00:14:30', '2019-11-21 02:14:30', '', 0, 'http://ecoplanet.w16/?post_type=acf-field-group&#038;p=82', 0, 'acf-field-group', '', 0),
(83, 1, '2019-11-21 00:12:03', '2019-11-21 02:12:03', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:4:"left";s:8:"endpoint";i:0;}', 'Hero', '', 'publish', 'closed', 'closed', '', 'field_5dd5f272c704a', '', '', '2019-11-21 00:12:03', '2019-11-21 02:12:03', '', 82, 'http://ecoplanet.w16/?post_type=acf-field&p=83', 0, 'acf-field', '', 0),
(84, 1, '2019-11-21 00:12:03', '2019-11-21 02:12:03', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Supra-Título', 'supra_titulo', 'publish', 'closed', 'closed', '', 'field_5dd5f272cac3e', '', '', '2019-11-21 00:12:03', '2019-11-21 02:12:03', '', 82, 'http://ecoplanet.w16/?post_type=acf-field&p=84', 1, 'acf-field', '', 0),
(85, 1, '2019-11-21 00:12:03', '2019-11-21 02:12:03', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Título', 'titulo', 'publish', 'closed', 'closed', '', 'field_5dd5f272ce69b', '', '', '2019-11-21 00:12:03', '2019-11-21 02:12:03', '', 82, 'http://ecoplanet.w16/?post_type=acf-field&p=85', 2, 'acf-field', '', 0),
(86, 1, '2019-11-21 00:12:03', '2019-11-21 02:12:03', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:2:"id";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Imagem', 'imagem_hero', 'publish', 'closed', 'closed', '', 'field_5dd5f272d2465', '', '', '2019-11-21 00:12:03', '2019-11-21 02:12:03', '', 82, 'http://ecoplanet.w16/?post_type=acf-field&p=86', 3, 'acf-field', '', 0),
(101, 1, '2019-11-21 00:13:50', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-11-21 00:13:50', '0000-00-00 00:00:00', '', 0, 'http://ecoplanet.w16/?p=101', 0, 'post', '', 0),
(102, 1, '2019-11-21 00:14:05', '2019-11-21 02:14:05', '', 'Produtos', '', 'publish', 'closed', 'closed', '', 'produtos', '', '', '2019-11-21 00:14:24', '2019-11-21 02:14:24', '', 0, 'http://ecoplanet.w16/?page_id=102', 0, 'page', '', 0),
(103, 1, '2019-11-21 00:14:05', '2019-11-21 02:14:05', '', 'Produtos', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2019-11-21 00:14:05', '2019-11-21 02:14:05', '', 102, 'http://ecoplanet.w16/blog/102-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2019-11-21 00:14:24', '2019-11-21 02:14:24', '', 'Produtos', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2019-11-21 00:14:24', '2019-11-21 02:14:24', '', 102, 'http://ecoplanet.w16/blog/102-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2019-11-21 00:22:04', '2019-11-21 02:22:04', 'Flower é um conservante de flores de fácil aplicação e surpreendente resultado. O Flower não se sobressai só por sua eficiência, mas também pelo custo benefício e compromisso ecológico: Para cada litro você pode tratar até 4000 hastes de flores, além de ser formulado com matérias primas que não agridem o meio ambiente. O produto esbanja versatilidade ao poder ser utilizado em uma grande variedade de flores de corte e manuseado tanto pelo produtor, quanto ao distribuidor de flores, floristas, decoradores e consumidor final. O compromisso do Flower é salvar suas flores, não importa em quais mãos estejam, se tornando seu maior parceiro no dia-a-dia.', 'Flower', 'Pós-colheita e conservante de flores de corte', 'publish', 'closed', 'closed', '', 'flower', '', '', '2019-11-21 01:25:21', '2019-11-21 03:25:21', '', 0, 'http://ecoplanet.w16/?post_type=produto&#038;p=105', 0, 'produto', '', 0),
(106, 1, '2019-11-21 00:27:52', '2019-11-21 02:27:52', '', 'Produto #2', 'produto teste 2', 'publish', 'closed', 'closed', '', 'produto-2', '', '', '2019-11-21 00:27:52', '2019-11-21 02:27:52', '', 0, 'http://ecoplanet.w16/?post_type=produto&#038;p=106', 0, 'produto', '', 0),
(107, 1, '2019-11-21 01:09:00', '2019-11-21 03:09:00', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:7:"produto";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Produto', 'produto', 'publish', 'closed', 'closed', '', 'group_5dd5ff7f53ce9', '', '', '2019-11-21 01:18:58', '2019-11-21 03:18:58', '', 0, 'http://ecoplanet.w16/?post_type=acf-field-group&#038;p=107', 0, 'acf-field-group', '', 0),
(108, 1, '2019-11-21 01:09:00', '2019-11-21 03:09:00', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Detalhamento', 'diferenciais', 'publish', 'closed', 'closed', '', 'field_5dd5ff8b7c8f1', '', '', '2019-11-21 01:09:00', '2019-11-21 03:09:00', '', 107, 'http://ecoplanet.w16/?post_type=acf-field&p=108', 0, 'acf-field', '', 0),
(109, 1, '2019-11-21 01:09:00', '2019-11-21 03:09:00', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";i:4;s:9:"new_lines";s:2:"br";}', 'Detalhamento', 'detalhamento', 'publish', 'closed', 'closed', '', 'field_5dd5ff9e7c8f2', '', '', '2019-11-21 01:09:13', '2019-11-21 03:09:13', '', 107, 'http://ecoplanet.w16/?post_type=acf-field&#038;p=109', 2, 'acf-field', '', 0),
(110, 1, '2019-11-21 01:09:13', '2019-11-21 03:09:13', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Título', 'titulo_detalhamento', 'publish', 'closed', 'closed', '', 'field_5dd5ffcf10e45', '', '', '2019-11-21 01:09:13', '2019-11-21 03:09:13', '', 107, 'http://ecoplanet.w16/?post_type=acf-field&p=110', 1, 'acf-field', '', 0),
(111, 1, '2019-11-21 01:11:29', '2019-11-21 03:11:29', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Veja Também', 'veja_tambem', 'publish', 'closed', 'closed', '', 'field_5dd6003555183', '', '', '2019-11-21 01:18:58', '2019-11-21 03:18:58', '', 107, 'http://ecoplanet.w16/?post_type=acf-field&#038;p=111', 4, 'acf-field', '', 0);
INSERT INTO `eco_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(112, 1, '2019-11-21 01:11:29', '2019-11-21 03:11:29', 'a:12:{s:4:"type";s:12:"relationship";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"post_type";a:1:{i:0;s:7:"produto";}s:8:"taxonomy";s:0:"";s:7:"filters";a:1:{i:0;s:6:"search";}s:8:"elements";a:1:{i:0;s:14:"featured_image";}s:3:"min";s:0:"";s:3:"max";s:0:"";s:13:"return_format";s:6:"object";}', 'Veja Também', 'veja_tambem', 'publish', 'closed', 'closed', '', 'field_5dd6003f55184', '', '', '2019-11-21 01:18:58', '2019-11-21 03:18:58', '', 107, 'http://ecoplanet.w16/?post_type=acf-field&#038;p=112', 5, 'acf-field', '', 0),
(113, 1, '2019-11-21 01:18:58', '2019-11-21 03:18:58', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:2:"id";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Imagem Detalhamento', 'imagem_detalhamento', 'publish', 'closed', 'closed', '', 'field_5dd6020e81202', '', '', '2019-11-21 01:18:58', '2019-11-21 03:18:58', '', 107, 'http://ecoplanet.w16/?post_type=acf-field&p=113', 3, 'acf-field', '', 0),
(114, 1, '2019-11-21 01:29:10', '2019-11-21 03:29:10', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:7:"default";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:2:{i:0;s:7:"excerpt";i:1;s:14:"featured_image";}s:11:"description";s:0:"";}', 'Páginas', 'paginas', 'publish', 'closed', 'closed', '', 'group_5dd604860626d', '', '', '2019-11-21 01:45:51', '2019-11-21 03:45:51', '', 0, 'http://ecoplanet.w16/?post_type=acf-field-group&#038;p=114', 0, 'acf-field-group', '', 0),
(115, 1, '2019-11-21 01:29:10', '2019-11-21 03:29:10', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:4:"left";s:8:"endpoint";i:0;}', 'Hero', '', 'publish', 'closed', 'closed', '', 'field_5dd6048614438', '', '', '2019-11-21 01:29:10', '2019-11-21 03:29:10', '', 114, 'http://ecoplanet.w16/?post_type=acf-field&p=115', 0, 'acf-field', '', 0),
(116, 1, '2019-11-21 01:29:10', '2019-11-21 03:29:10', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Supra-Título', 'supra_titulo', 'publish', 'closed', 'closed', '', 'field_5dd6048617e80', '', '', '2019-11-21 01:29:10', '2019-11-21 03:29:10', '', 114, 'http://ecoplanet.w16/?post_type=acf-field&p=116', 1, 'acf-field', '', 0),
(117, 1, '2019-11-21 01:29:10', '2019-11-21 03:29:10', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Título', 'titulo', 'publish', 'closed', 'closed', '', 'field_5dd604861b934', '', '', '2019-11-21 01:29:10', '2019-11-21 03:29:10', '', 114, 'http://ecoplanet.w16/?post_type=acf-field&p=117', 2, 'acf-field', '', 0),
(118, 1, '2019-11-21 01:29:10', '2019-11-21 03:29:10', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:2:"id";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Imagem', 'imagem_hero', 'publish', 'closed', 'closed', '', 'field_5dd604861f3a7', '', '', '2019-11-21 01:29:10', '2019-11-21 03:29:10', '', 114, 'http://ecoplanet.w16/?post_type=acf-field&p=118', 3, 'acf-field', '', 0),
(119, 1, '2019-11-21 01:34:27', '2019-11-21 03:34:27', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:4:"left";s:8:"endpoint";i:0;}', 'Detalhes', 'imagem_destaque', 'publish', 'closed', 'closed', '', 'field_5dd6057305680', '', '', '2019-11-21 01:34:27', '2019-11-21 03:34:27', '', 114, 'http://ecoplanet.w16/?post_type=acf-field&p=119', 4, 'acf-field', '', 0),
(120, 1, '2019-11-21 01:34:27', '2019-11-21 03:34:27', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:2:"id";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Imagem de destaque', 'imagem_de_destaque', 'publish', 'closed', 'closed', '', 'field_5dd6059a05681', '', '', '2019-11-21 01:34:27', '2019-11-21 03:34:27', '', 114, 'http://ecoplanet.w16/?post_type=acf-field&p=120', 5, 'acf-field', '', 0),
(121, 1, '2019-11-21 01:34:27', '2019-11-21 03:34:27', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:0:"";}', 'Frase destacada', 'frase_destacada', 'publish', 'closed', 'closed', '', 'field_5dd605a505682', '', '', '2019-11-21 01:36:03', '2019-11-21 03:36:03', '', 114, 'http://ecoplanet.w16/?post_type=acf-field&#038;p=121', 6, 'acf-field', '', 0),
(124, 1, '2019-11-21 01:37:45', '2019-11-21 03:37:45', 'Fundada em Florianópolis no ano de 1998, a Ecoplanet começou com Fernando Pretto,\n            proprietário na época da floricultura Jardim do Sol, que devido a sua paixão pelas flores desejava\n            desenvolver um conservante que prolongasse a vida delas. Inicialmente suas pesquisas começaram em um pequeno\n            container ao lado de sua floricultura, que em conjunto com a Universidade Federal de Santa Catarina\n            conseguiram chegar na fórmula final do produto após 06 meses. Em 2 anos o produto se destacou e hoje é usado\n            e recomendado pelos melhores artistas florais e produtores de flores do Brasil.', 'Sobre', '', 'inherit', 'closed', 'closed', '', '54-autosave-v1', '', '', '2019-11-21 01:37:45', '2019-11-21 03:37:45', '', 54, 'http://ecoplanet.w16/54-autosave-v1/', 0, 'revision', '', 0),
(125, 1, '2019-11-21 01:37:56', '2019-11-21 03:37:56', 'Fundada em Florianópolis no ano de 1998, a Ecoplanet começou com Fernando Pretto, proprietário na época da floricultura Jardim do Sol, que devido a sua paixão pelas flores desejava desenvolver um conservante que prolongasse a vida delas. Inicialmente suas pesquisas começaram em um pequeno container ao lado de sua floricultura, que em conjunto com a Universidade Federal de Santa Catarina conseguiram chegar na fórmula final do produto após 06 meses. Em 2 anos o produto se destacou e hoje é usado e recomendado pelos melhores artistas florais e produtores de flores do Brasil.', 'Sobre', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2019-11-21 01:37:56', '2019-11-21 03:37:56', '', 54, 'http://ecoplanet.w16/54-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2019-11-21 01:40:22', '2019-11-21 03:40:22', 'Fundada em Florianópolis no ano de 1998, a Ecoplanet começou com Fernando Pretto, proprietário na época da floricultura Jardim do Sol, que devido a sua paixão pelas flores desejava desenvolver um conservante que prolongasse a vida delas. Inicialmente suas pesquisas começaram em um pequeno container ao lado de sua floricultura, que em conjunto com a Universidade Federal de Santa Catarina conseguiram chegar na fórmula final do produto após 06 meses. Em 2 anos o produto se destacou e hoje é usado e recomendado pelos melhores artistas florais e produtores de flores do Brasil.', 'Sobre', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2019-11-21 01:40:22', '2019-11-21 03:40:22', '', 54, 'http://ecoplanet.w16/54-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2019-11-21 01:41:24', '2019-11-21 03:41:24', 'Fundada em Florianópolis no ano de 1998, a Ecoplanet começou com Fernando Pretto, proprietário na época da floricultura Jardim do Sol, que devido a sua paixão pelas flores desejava desenvolver um conservante que prolongasse a vida delas. Inicialmente suas pesquisas começaram em um pequeno container ao lado de sua floricultura, que em conjunto com a Universidade Federal de Santa Catarina conseguiram chegar na fórmula final do produto após 06 meses. Em 2 anos o produto se destacou e hoje é usado e recomendado pelos melhores artistas florais e produtores de flores do Brasil.', 'Sobre', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2019-11-21 01:41:24', '2019-11-21 03:41:24', '', 54, 'http://ecoplanet.w16/54-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2019-11-21 01:44:48', '2019-11-21 03:44:48', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:4:"left";s:8:"endpoint";i:0;}', 'Produtos', 'produtos', 'publish', 'closed', 'closed', '', 'field_5dd607e7bd139', '', '', '2019-11-21 01:44:48', '2019-11-21 03:44:48', '', 114, 'http://ecoplanet.w16/?post_type=acf-field&p=128', 7, 'acf-field', '', 0),
(129, 1, '2019-11-21 01:44:48', '2019-11-21 03:44:48', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Título', 'titulo_produtos', 'publish', 'closed', 'closed', '', 'field_5dd607f4bd13a', '', '', '2019-11-21 01:44:48', '2019-11-21 03:44:48', '', 114, 'http://ecoplanet.w16/?post_type=acf-field&p=129', 8, 'acf-field', '', 0),
(130, 1, '2019-11-21 01:44:48', '2019-11-21 03:44:48', 'a:6:{s:4:"type";s:4:"link";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";}', 'Link', 'link_botao_produtos', 'publish', 'closed', 'closed', '', 'field_5dd6080cbd13b', '', '', '2019-11-21 01:45:51', '2019-11-21 03:45:51', '', 114, 'http://ecoplanet.w16/?post_type=acf-field&#038;p=130', 10, 'acf-field', '', 0),
(131, 1, '2019-11-21 01:44:48', '2019-11-21 03:44:48', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:2:"id";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Imagem', 'imagem_produtos', 'publish', 'closed', 'closed', '', 'field_5dd6081fbd13c', '', '', '2019-11-21 01:45:51', '2019-11-21 03:45:51', '', 114, 'http://ecoplanet.w16/?post_type=acf-field&#038;p=131', 11, 'acf-field', '', 0),
(132, 1, '2019-11-21 01:45:51', '2019-11-21 03:45:51', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Label', 'label_botao_produtos', 'publish', 'closed', 'closed', '', 'field_5dd60865d37f4', '', '', '2019-11-21 01:45:51', '2019-11-21 03:45:51', '', 114, 'http://ecoplanet.w16/?post_type=acf-field&p=132', 9, 'acf-field', '', 0),
(133, 1, '2019-11-21 01:47:33', '2019-11-21 03:47:33', 'Fundada em Florianópolis no ano de 1998, a Ecoplanet começou com Fernando Pretto, proprietário na época da floricultura Jardim do Sol, que devido a sua paixão pelas flores desejava desenvolver um conservante que prolongasse a vida delas. Inicialmente suas pesquisas começaram em um pequeno container ao lado de sua floricultura, que em conjunto com a Universidade Federal de Santa Catarina conseguiram chegar na fórmula final do produto após 06 meses. Em 2 anos o produto se destacou e hoje é usado e recomendado pelos melhores artistas florais e produtores de flores do Brasil.', 'Sobre', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2019-11-21 01:47:33', '2019-11-21 03:47:33', '', 54, 'http://ecoplanet.w16/54-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2019-11-21 01:48:47', '2019-11-21 03:48:47', 'Fundada em Florianópolis no ano de 1998, a Ecoplanet começou com Fernando Pretto, proprietário na época da floricultura Jardim do Sol, que devido a sua paixão pelas flores desejava desenvolver um conservante que prolongasse a vida delas. Inicialmente suas pesquisas começaram em um pequeno container ao lado de sua floricultura, que em conjunto com a Universidade Federal de Santa Catarina conseguiram chegar na fórmula final do produto após 06 meses. Em 2 anos o produto se destacou e hoje é usado e recomendado pelos melhores artistas florais e produtores de flores do Brasil.', 'Sobre', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2019-11-21 01:48:47', '2019-11-21 03:48:47', '', 54, 'http://ecoplanet.w16/54-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `eco_term_relationships`
--

DROP TABLE IF EXISTS `eco_term_relationships`;
CREATE TABLE IF NOT EXISTS `eco_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `eco_term_relationships`
--

INSERT INTO `eco_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(42, 1, 0),
(59, 2, 0),
(60, 2, 0),
(61, 2, 0),
(64, 1, 0),
(66, 1, 0),
(68, 4, 0),
(70, 1, 0),
(72, 1, 0),
(74, 1, 0),
(76, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `eco_term_taxonomy`
--

DROP TABLE IF EXISTS `eco_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `eco_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `eco_term_taxonomy`
--

INSERT INTO `eco_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 7),
(2, 2, 'nav_menu', '', 0, 3),
(3, 3, 'category', '', 0, 0),
(4, 4, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `eco_termmeta`
--

DROP TABLE IF EXISTS `eco_termmeta`;
CREATE TABLE IF NOT EXISTS `eco_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eco_terms`
--

DROP TABLE IF EXISTS `eco_terms`;
CREATE TABLE IF NOT EXISTS `eco_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `eco_terms`
--

INSERT INTO `eco_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'Menu 1', 'menu-1', 0),
(3, 'Dicas', 'dicas', 0),
(4, 'Plantas', 'plantas', 0);

-- --------------------------------------------------------

--
-- Table structure for table `eco_usermeta`
--

DROP TABLE IF EXISTS `eco_usermeta`;
CREATE TABLE IF NOT EXISTS `eco_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `eco_usermeta`
--

INSERT INTO `eco_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'marco'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'eco_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'eco_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:"9e4f4ea8b306bc8f303f6368c619b921735f7a0586bc7c5ab70c3e373dcb1825";a:4:{s:10:"expiration";i:1574473071;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36";s:5:"login";i:1574300271;}}'),
(17, 1, 'eco_dashboard_quick_press_last_post_id', '101'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 1, 'closedpostboxes_page', 'a:0:{}'),
(20, 1, 'metaboxhidden_page', 'a:10:{i:0;s:12:"postimagediv";i:1;s:23:"acf-group_5dc8da4b8fe44";i:2;s:23:"acf-group_5dc8c5df4e900";i:3;s:23:"acf-group_5dd5f272b9c26";i:4;s:23:"acf-group_5dd5ff7f53ce9";i:5;s:11:"postexcerpt";i:6;s:16:"commentstatusdiv";i:7;s:11:"commentsdiv";i:8;s:7:"slugdiv";i:9;s:9:"authordiv";}'),
(21, 1, 'eco_user-settings', 'libraryContent=browse&editor=tinymce'),
(22, 1, 'eco_user-settings-time', '1574307494'),
(23, 1, 'closedpostboxes_post', 'a:1:{i:0;s:11:"postexcerpt";}'),
(24, 1, 'metaboxhidden_post', 'a:6:{i:0;s:23:"acf-group_5dc8c5df4e900";i:1;s:13:"trackbacksdiv";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}'),
(25, 1, 'closedpostboxes_toplevel_page_configuracoes-gerais', 'a:0:{}'),
(26, 1, 'metaboxhidden_toplevel_page_configuracoes-gerais', 'a:0:{}'),
(27, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(28, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(29, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `eco_users`
--

DROP TABLE IF EXISTS `eco_users`;
CREATE TABLE IF NOT EXISTS `eco_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `eco_users`
--

INSERT INTO `eco_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'marco', '$P$B2A/4pMsH7E4nOoJUz.G3263EWFnAt.', 'marco', 'marcob89@gmail.com', '', '2019-11-11 02:13:41', '', 0, 'marco');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eco_commentmeta`
--
ALTER TABLE `eco_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `eco_comments`
--
ALTER TABLE `eco_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `eco_links`
--
ALTER TABLE `eco_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `eco_options`
--
ALTER TABLE `eco_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `eco_postmeta`
--
ALTER TABLE `eco_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `eco_posts`
--
ALTER TABLE `eco_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `eco_term_relationships`
--
ALTER TABLE `eco_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `eco_term_taxonomy`
--
ALTER TABLE `eco_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `eco_termmeta`
--
ALTER TABLE `eco_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `eco_terms`
--
ALTER TABLE `eco_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `eco_usermeta`
--
ALTER TABLE `eco_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `eco_users`
--
ALTER TABLE `eco_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eco_commentmeta`
--
ALTER TABLE `eco_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eco_comments`
--
ALTER TABLE `eco_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `eco_links`
--
ALTER TABLE `eco_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eco_options`
--
ALTER TABLE `eco_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=292;
--
-- AUTO_INCREMENT for table `eco_postmeta`
--
ALTER TABLE `eco_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=464;
--
-- AUTO_INCREMENT for table `eco_posts`
--
ALTER TABLE `eco_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=135;
--
-- AUTO_INCREMENT for table `eco_term_taxonomy`
--
ALTER TABLE `eco_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `eco_termmeta`
--
ALTER TABLE `eco_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eco_terms`
--
ALTER TABLE `eco_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `eco_usermeta`
--
ALTER TABLE `eco_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `eco_users`
--
ALTER TABLE `eco_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

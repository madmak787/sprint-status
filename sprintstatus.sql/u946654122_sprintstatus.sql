-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 26, 2025 at 05:11 PM
-- Server version: 10.11.10-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u946654122_sprintstatus`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2025-01-14 08:11:10', '2025-01-14 08:11:10', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:11:{i:1737911472;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1737922399;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1737925869;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1737927669;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1737929469;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1737965472;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1737965599;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1737965604;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1738138272;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1738221516;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'on'),
(2, 'siteurl', 'https://sprint-status.khanamir.me', 'on'),
(3, 'home', 'https://sprint-status.khanamir.me', 'on'),
(4, 'blogname', 'Sprint Status', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'mohdamir.khan@eclerx.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '1', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'F j, Y', 'on'),
(25, 'time_format', 'g:i a', 'on'),
(26, 'links_updated_date_format', 'F j, Y g:i a', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:97:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:17:\"([^/]*)/([^/]*)/?\";s:63:\"index.php?sprint=1&sprintpage=$matches[1]&sprint_id=$matches[2]\";s:10:\"([^/]*)/?$\";s:41:\"index.php?sprint=1&sprintpage=$matches[1]\";s:3:\"^/?\";s:18:\"index.php?sprint=1\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:12:\"sitemap\\.xml\";s:24:\"index.php??sitemap=index\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:1:{i:0;s:31:\"sprint-status/sprint-status.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'http://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '0', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'twentytwentyfour', 'on'),
(42, 'stylesheet', 'twentytwentyfour', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '58975', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '1', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'posts', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:0:{}', 'on'),
(78, 'widget_text', 'a:0:{}', 'on'),
(79, 'widget_rss', 'a:0:{}', 'on'),
(80, 'uninstall_plugins', 'a:0:{}', 'off'),
(81, 'timezone_string', '', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '0', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1752394269', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'initial_db_version', '58975', 'on'),
(102, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'on'),
(103, 'fresh_site', '0', 'off'),
(104, 'user_count', '14', 'off'),
(105, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(106, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'auto'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.7.1\";s:5:\"files\";a:540:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:33:\"comment-author-name/style-rtl.css\";i:77;s:37:\"comment-author-name/style-rtl.min.css\";i:78;s:29:\"comment-author-name/style.css\";i:79;s:33:\"comment-author-name/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:26:\"comment-date/style-rtl.css\";i:85;s:30:\"comment-date/style-rtl.min.css\";i:86;s:22:\"comment-date/style.css\";i:87;s:26:\"comment-date/style.min.css\";i:88;s:31:\"comment-edit-link/style-rtl.css\";i:89;s:35:\"comment-edit-link/style-rtl.min.css\";i:90;s:27:\"comment-edit-link/style.css\";i:91;s:31:\"comment-edit-link/style.min.css\";i:92;s:32:\"comment-reply-link/style-rtl.css\";i:93;s:36:\"comment-reply-link/style-rtl.min.css\";i:94;s:28:\"comment-reply-link/style.css\";i:95;s:32:\"comment-reply-link/style.min.css\";i:96;s:30:\"comment-template/style-rtl.css\";i:97;s:34:\"comment-template/style-rtl.min.css\";i:98;s:26:\"comment-template/style.css\";i:99;s:30:\"comment-template/style.min.css\";i:100;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:101;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:102;s:38:\"comments-pagination-numbers/editor.css\";i:103;s:42:\"comments-pagination-numbers/editor.min.css\";i:104;s:34:\"comments-pagination/editor-rtl.css\";i:105;s:38:\"comments-pagination/editor-rtl.min.css\";i:106;s:30:\"comments-pagination/editor.css\";i:107;s:34:\"comments-pagination/editor.min.css\";i:108;s:33:\"comments-pagination/style-rtl.css\";i:109;s:37:\"comments-pagination/style-rtl.min.css\";i:110;s:29:\"comments-pagination/style.css\";i:111;s:33:\"comments-pagination/style.min.css\";i:112;s:29:\"comments-title/editor-rtl.css\";i:113;s:33:\"comments-title/editor-rtl.min.css\";i:114;s:25:\"comments-title/editor.css\";i:115;s:29:\"comments-title/editor.min.css\";i:116;s:23:\"comments/editor-rtl.css\";i:117;s:27:\"comments/editor-rtl.min.css\";i:118;s:19:\"comments/editor.css\";i:119;s:23:\"comments/editor.min.css\";i:120;s:22:\"comments/style-rtl.css\";i:121;s:26:\"comments/style-rtl.min.css\";i:122;s:18:\"comments/style.css\";i:123;s:22:\"comments/style.min.css\";i:124;s:20:\"cover/editor-rtl.css\";i:125;s:24:\"cover/editor-rtl.min.css\";i:126;s:16:\"cover/editor.css\";i:127;s:20:\"cover/editor.min.css\";i:128;s:19:\"cover/style-rtl.css\";i:129;s:23:\"cover/style-rtl.min.css\";i:130;s:15:\"cover/style.css\";i:131;s:19:\"cover/style.min.css\";i:132;s:22:\"details/editor-rtl.css\";i:133;s:26:\"details/editor-rtl.min.css\";i:134;s:18:\"details/editor.css\";i:135;s:22:\"details/editor.min.css\";i:136;s:21:\"details/style-rtl.css\";i:137;s:25:\"details/style-rtl.min.css\";i:138;s:17:\"details/style.css\";i:139;s:21:\"details/style.min.css\";i:140;s:20:\"embed/editor-rtl.css\";i:141;s:24:\"embed/editor-rtl.min.css\";i:142;s:16:\"embed/editor.css\";i:143;s:20:\"embed/editor.min.css\";i:144;s:19:\"embed/style-rtl.css\";i:145;s:23:\"embed/style-rtl.min.css\";i:146;s:15:\"embed/style.css\";i:147;s:19:\"embed/style.min.css\";i:148;s:19:\"embed/theme-rtl.css\";i:149;s:23:\"embed/theme-rtl.min.css\";i:150;s:15:\"embed/theme.css\";i:151;s:19:\"embed/theme.min.css\";i:152;s:19:\"file/editor-rtl.css\";i:153;s:23:\"file/editor-rtl.min.css\";i:154;s:15:\"file/editor.css\";i:155;s:19:\"file/editor.min.css\";i:156;s:18:\"file/style-rtl.css\";i:157;s:22:\"file/style-rtl.min.css\";i:158;s:14:\"file/style.css\";i:159;s:18:\"file/style.min.css\";i:160;s:23:\"footnotes/style-rtl.css\";i:161;s:27:\"footnotes/style-rtl.min.css\";i:162;s:19:\"footnotes/style.css\";i:163;s:23:\"footnotes/style.min.css\";i:164;s:23:\"freeform/editor-rtl.css\";i:165;s:27:\"freeform/editor-rtl.min.css\";i:166;s:19:\"freeform/editor.css\";i:167;s:23:\"freeform/editor.min.css\";i:168;s:22:\"gallery/editor-rtl.css\";i:169;s:26:\"gallery/editor-rtl.min.css\";i:170;s:18:\"gallery/editor.css\";i:171;s:22:\"gallery/editor.min.css\";i:172;s:21:\"gallery/style-rtl.css\";i:173;s:25:\"gallery/style-rtl.min.css\";i:174;s:17:\"gallery/style.css\";i:175;s:21:\"gallery/style.min.css\";i:176;s:21:\"gallery/theme-rtl.css\";i:177;s:25:\"gallery/theme-rtl.min.css\";i:178;s:17:\"gallery/theme.css\";i:179;s:21:\"gallery/theme.min.css\";i:180;s:20:\"group/editor-rtl.css\";i:181;s:24:\"group/editor-rtl.min.css\";i:182;s:16:\"group/editor.css\";i:183;s:20:\"group/editor.min.css\";i:184;s:19:\"group/style-rtl.css\";i:185;s:23:\"group/style-rtl.min.css\";i:186;s:15:\"group/style.css\";i:187;s:19:\"group/style.min.css\";i:188;s:19:\"group/theme-rtl.css\";i:189;s:23:\"group/theme-rtl.min.css\";i:190;s:15:\"group/theme.css\";i:191;s:19:\"group/theme.min.css\";i:192;s:21:\"heading/style-rtl.css\";i:193;s:25:\"heading/style-rtl.min.css\";i:194;s:17:\"heading/style.css\";i:195;s:21:\"heading/style.min.css\";i:196;s:19:\"html/editor-rtl.css\";i:197;s:23:\"html/editor-rtl.min.css\";i:198;s:15:\"html/editor.css\";i:199;s:19:\"html/editor.min.css\";i:200;s:20:\"image/editor-rtl.css\";i:201;s:24:\"image/editor-rtl.min.css\";i:202;s:16:\"image/editor.css\";i:203;s:20:\"image/editor.min.css\";i:204;s:19:\"image/style-rtl.css\";i:205;s:23:\"image/style-rtl.min.css\";i:206;s:15:\"image/style.css\";i:207;s:19:\"image/style.min.css\";i:208;s:19:\"image/theme-rtl.css\";i:209;s:23:\"image/theme-rtl.min.css\";i:210;s:15:\"image/theme.css\";i:211;s:19:\"image/theme.min.css\";i:212;s:29:\"latest-comments/style-rtl.css\";i:213;s:33:\"latest-comments/style-rtl.min.css\";i:214;s:25:\"latest-comments/style.css\";i:215;s:29:\"latest-comments/style.min.css\";i:216;s:27:\"latest-posts/editor-rtl.css\";i:217;s:31:\"latest-posts/editor-rtl.min.css\";i:218;s:23:\"latest-posts/editor.css\";i:219;s:27:\"latest-posts/editor.min.css\";i:220;s:26:\"latest-posts/style-rtl.css\";i:221;s:30:\"latest-posts/style-rtl.min.css\";i:222;s:22:\"latest-posts/style.css\";i:223;s:26:\"latest-posts/style.min.css\";i:224;s:18:\"list/style-rtl.css\";i:225;s:22:\"list/style-rtl.min.css\";i:226;s:14:\"list/style.css\";i:227;s:18:\"list/style.min.css\";i:228;s:22:\"loginout/style-rtl.css\";i:229;s:26:\"loginout/style-rtl.min.css\";i:230;s:18:\"loginout/style.css\";i:231;s:22:\"loginout/style.min.css\";i:232;s:25:\"media-text/editor-rtl.css\";i:233;s:29:\"media-text/editor-rtl.min.css\";i:234;s:21:\"media-text/editor.css\";i:235;s:25:\"media-text/editor.min.css\";i:236;s:24:\"media-text/style-rtl.css\";i:237;s:28:\"media-text/style-rtl.min.css\";i:238;s:20:\"media-text/style.css\";i:239;s:24:\"media-text/style.min.css\";i:240;s:19:\"more/editor-rtl.css\";i:241;s:23:\"more/editor-rtl.min.css\";i:242;s:15:\"more/editor.css\";i:243;s:19:\"more/editor.min.css\";i:244;s:30:\"navigation-link/editor-rtl.css\";i:245;s:34:\"navigation-link/editor-rtl.min.css\";i:246;s:26:\"navigation-link/editor.css\";i:247;s:30:\"navigation-link/editor.min.css\";i:248;s:29:\"navigation-link/style-rtl.css\";i:249;s:33:\"navigation-link/style-rtl.min.css\";i:250;s:25:\"navigation-link/style.css\";i:251;s:29:\"navigation-link/style.min.css\";i:252;s:33:\"navigation-submenu/editor-rtl.css\";i:253;s:37:\"navigation-submenu/editor-rtl.min.css\";i:254;s:29:\"navigation-submenu/editor.css\";i:255;s:33:\"navigation-submenu/editor.min.css\";i:256;s:25:\"navigation/editor-rtl.css\";i:257;s:29:\"navigation/editor-rtl.min.css\";i:258;s:21:\"navigation/editor.css\";i:259;s:25:\"navigation/editor.min.css\";i:260;s:24:\"navigation/style-rtl.css\";i:261;s:28:\"navigation/style-rtl.min.css\";i:262;s:20:\"navigation/style.css\";i:263;s:24:\"navigation/style.min.css\";i:264;s:23:\"nextpage/editor-rtl.css\";i:265;s:27:\"nextpage/editor-rtl.min.css\";i:266;s:19:\"nextpage/editor.css\";i:267;s:23:\"nextpage/editor.min.css\";i:268;s:24:\"page-list/editor-rtl.css\";i:269;s:28:\"page-list/editor-rtl.min.css\";i:270;s:20:\"page-list/editor.css\";i:271;s:24:\"page-list/editor.min.css\";i:272;s:23:\"page-list/style-rtl.css\";i:273;s:27:\"page-list/style-rtl.min.css\";i:274;s:19:\"page-list/style.css\";i:275;s:23:\"page-list/style.min.css\";i:276;s:24:\"paragraph/editor-rtl.css\";i:277;s:28:\"paragraph/editor-rtl.min.css\";i:278;s:20:\"paragraph/editor.css\";i:279;s:24:\"paragraph/editor.min.css\";i:280;s:23:\"paragraph/style-rtl.css\";i:281;s:27:\"paragraph/style-rtl.min.css\";i:282;s:19:\"paragraph/style.css\";i:283;s:23:\"paragraph/style.min.css\";i:284;s:35:\"post-author-biography/style-rtl.css\";i:285;s:39:\"post-author-biography/style-rtl.min.css\";i:286;s:31:\"post-author-biography/style.css\";i:287;s:35:\"post-author-biography/style.min.css\";i:288;s:30:\"post-author-name/style-rtl.css\";i:289;s:34:\"post-author-name/style-rtl.min.css\";i:290;s:26:\"post-author-name/style.css\";i:291;s:30:\"post-author-name/style.min.css\";i:292;s:26:\"post-author/editor-rtl.css\";i:293;s:30:\"post-author/editor-rtl.min.css\";i:294;s:22:\"post-author/editor.css\";i:295;s:26:\"post-author/editor.min.css\";i:296;s:25:\"post-author/style-rtl.css\";i:297;s:29:\"post-author/style-rtl.min.css\";i:298;s:21:\"post-author/style.css\";i:299;s:25:\"post-author/style.min.css\";i:300;s:33:\"post-comments-form/editor-rtl.css\";i:301;s:37:\"post-comments-form/editor-rtl.min.css\";i:302;s:29:\"post-comments-form/editor.css\";i:303;s:33:\"post-comments-form/editor.min.css\";i:304;s:32:\"post-comments-form/style-rtl.css\";i:305;s:36:\"post-comments-form/style-rtl.min.css\";i:306;s:28:\"post-comments-form/style.css\";i:307;s:32:\"post-comments-form/style.min.css\";i:308;s:27:\"post-content/editor-rtl.css\";i:309;s:31:\"post-content/editor-rtl.min.css\";i:310;s:23:\"post-content/editor.css\";i:311;s:27:\"post-content/editor.min.css\";i:312;s:26:\"post-content/style-rtl.css\";i:313;s:30:\"post-content/style-rtl.min.css\";i:314;s:22:\"post-content/style.css\";i:315;s:26:\"post-content/style.min.css\";i:316;s:23:\"post-date/style-rtl.css\";i:317;s:27:\"post-date/style-rtl.min.css\";i:318;s:19:\"post-date/style.css\";i:319;s:23:\"post-date/style.min.css\";i:320;s:27:\"post-excerpt/editor-rtl.css\";i:321;s:31:\"post-excerpt/editor-rtl.min.css\";i:322;s:23:\"post-excerpt/editor.css\";i:323;s:27:\"post-excerpt/editor.min.css\";i:324;s:26:\"post-excerpt/style-rtl.css\";i:325;s:30:\"post-excerpt/style-rtl.min.css\";i:326;s:22:\"post-excerpt/style.css\";i:327;s:26:\"post-excerpt/style.min.css\";i:328;s:34:\"post-featured-image/editor-rtl.css\";i:329;s:38:\"post-featured-image/editor-rtl.min.css\";i:330;s:30:\"post-featured-image/editor.css\";i:331;s:34:\"post-featured-image/editor.min.css\";i:332;s:33:\"post-featured-image/style-rtl.css\";i:333;s:37:\"post-featured-image/style-rtl.min.css\";i:334;s:29:\"post-featured-image/style.css\";i:335;s:33:\"post-featured-image/style.min.css\";i:336;s:34:\"post-navigation-link/style-rtl.css\";i:337;s:38:\"post-navigation-link/style-rtl.min.css\";i:338;s:30:\"post-navigation-link/style.css\";i:339;s:34:\"post-navigation-link/style.min.css\";i:340;s:28:\"post-template/editor-rtl.css\";i:341;s:32:\"post-template/editor-rtl.min.css\";i:342;s:24:\"post-template/editor.css\";i:343;s:28:\"post-template/editor.min.css\";i:344;s:27:\"post-template/style-rtl.css\";i:345;s:31:\"post-template/style-rtl.min.css\";i:346;s:23:\"post-template/style.css\";i:347;s:27:\"post-template/style.min.css\";i:348;s:24:\"post-terms/style-rtl.css\";i:349;s:28:\"post-terms/style-rtl.min.css\";i:350;s:20:\"post-terms/style.css\";i:351;s:24:\"post-terms/style.min.css\";i:352;s:24:\"post-title/style-rtl.css\";i:353;s:28:\"post-title/style-rtl.min.css\";i:354;s:20:\"post-title/style.css\";i:355;s:24:\"post-title/style.min.css\";i:356;s:26:\"preformatted/style-rtl.css\";i:357;s:30:\"preformatted/style-rtl.min.css\";i:358;s:22:\"preformatted/style.css\";i:359;s:26:\"preformatted/style.min.css\";i:360;s:24:\"pullquote/editor-rtl.css\";i:361;s:28:\"pullquote/editor-rtl.min.css\";i:362;s:20:\"pullquote/editor.css\";i:363;s:24:\"pullquote/editor.min.css\";i:364;s:23:\"pullquote/style-rtl.css\";i:365;s:27:\"pullquote/style-rtl.min.css\";i:366;s:19:\"pullquote/style.css\";i:367;s:23:\"pullquote/style.min.css\";i:368;s:23:\"pullquote/theme-rtl.css\";i:369;s:27:\"pullquote/theme-rtl.min.css\";i:370;s:19:\"pullquote/theme.css\";i:371;s:23:\"pullquote/theme.min.css\";i:372;s:39:\"query-pagination-numbers/editor-rtl.css\";i:373;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:374;s:35:\"query-pagination-numbers/editor.css\";i:375;s:39:\"query-pagination-numbers/editor.min.css\";i:376;s:31:\"query-pagination/editor-rtl.css\";i:377;s:35:\"query-pagination/editor-rtl.min.css\";i:378;s:27:\"query-pagination/editor.css\";i:379;s:31:\"query-pagination/editor.min.css\";i:380;s:30:\"query-pagination/style-rtl.css\";i:381;s:34:\"query-pagination/style-rtl.min.css\";i:382;s:26:\"query-pagination/style.css\";i:383;s:30:\"query-pagination/style.min.css\";i:384;s:25:\"query-title/style-rtl.css\";i:385;s:29:\"query-title/style-rtl.min.css\";i:386;s:21:\"query-title/style.css\";i:387;s:25:\"query-title/style.min.css\";i:388;s:20:\"query/editor-rtl.css\";i:389;s:24:\"query/editor-rtl.min.css\";i:390;s:16:\"query/editor.css\";i:391;s:20:\"query/editor.min.css\";i:392;s:19:\"quote/style-rtl.css\";i:393;s:23:\"quote/style-rtl.min.css\";i:394;s:15:\"quote/style.css\";i:395;s:19:\"quote/style.min.css\";i:396;s:19:\"quote/theme-rtl.css\";i:397;s:23:\"quote/theme-rtl.min.css\";i:398;s:15:\"quote/theme.css\";i:399;s:19:\"quote/theme.min.css\";i:400;s:23:\"read-more/style-rtl.css\";i:401;s:27:\"read-more/style-rtl.min.css\";i:402;s:19:\"read-more/style.css\";i:403;s:23:\"read-more/style.min.css\";i:404;s:18:\"rss/editor-rtl.css\";i:405;s:22:\"rss/editor-rtl.min.css\";i:406;s:14:\"rss/editor.css\";i:407;s:18:\"rss/editor.min.css\";i:408;s:17:\"rss/style-rtl.css\";i:409;s:21:\"rss/style-rtl.min.css\";i:410;s:13:\"rss/style.css\";i:411;s:17:\"rss/style.min.css\";i:412;s:21:\"search/editor-rtl.css\";i:413;s:25:\"search/editor-rtl.min.css\";i:414;s:17:\"search/editor.css\";i:415;s:21:\"search/editor.min.css\";i:416;s:20:\"search/style-rtl.css\";i:417;s:24:\"search/style-rtl.min.css\";i:418;s:16:\"search/style.css\";i:419;s:20:\"search/style.min.css\";i:420;s:20:\"search/theme-rtl.css\";i:421;s:24:\"search/theme-rtl.min.css\";i:422;s:16:\"search/theme.css\";i:423;s:20:\"search/theme.min.css\";i:424;s:24:\"separator/editor-rtl.css\";i:425;s:28:\"separator/editor-rtl.min.css\";i:426;s:20:\"separator/editor.css\";i:427;s:24:\"separator/editor.min.css\";i:428;s:23:\"separator/style-rtl.css\";i:429;s:27:\"separator/style-rtl.min.css\";i:430;s:19:\"separator/style.css\";i:431;s:23:\"separator/style.min.css\";i:432;s:23:\"separator/theme-rtl.css\";i:433;s:27:\"separator/theme-rtl.min.css\";i:434;s:19:\"separator/theme.css\";i:435;s:23:\"separator/theme.min.css\";i:436;s:24:\"shortcode/editor-rtl.css\";i:437;s:28:\"shortcode/editor-rtl.min.css\";i:438;s:20:\"shortcode/editor.css\";i:439;s:24:\"shortcode/editor.min.css\";i:440;s:24:\"site-logo/editor-rtl.css\";i:441;s:28:\"site-logo/editor-rtl.min.css\";i:442;s:20:\"site-logo/editor.css\";i:443;s:24:\"site-logo/editor.min.css\";i:444;s:23:\"site-logo/style-rtl.css\";i:445;s:27:\"site-logo/style-rtl.min.css\";i:446;s:19:\"site-logo/style.css\";i:447;s:23:\"site-logo/style.min.css\";i:448;s:27:\"site-tagline/editor-rtl.css\";i:449;s:31:\"site-tagline/editor-rtl.min.css\";i:450;s:23:\"site-tagline/editor.css\";i:451;s:27:\"site-tagline/editor.min.css\";i:452;s:26:\"site-tagline/style-rtl.css\";i:453;s:30:\"site-tagline/style-rtl.min.css\";i:454;s:22:\"site-tagline/style.css\";i:455;s:26:\"site-tagline/style.min.css\";i:456;s:25:\"site-title/editor-rtl.css\";i:457;s:29:\"site-title/editor-rtl.min.css\";i:458;s:21:\"site-title/editor.css\";i:459;s:25:\"site-title/editor.min.css\";i:460;s:24:\"site-title/style-rtl.css\";i:461;s:28:\"site-title/style-rtl.min.css\";i:462;s:20:\"site-title/style.css\";i:463;s:24:\"site-title/style.min.css\";i:464;s:26:\"social-link/editor-rtl.css\";i:465;s:30:\"social-link/editor-rtl.min.css\";i:466;s:22:\"social-link/editor.css\";i:467;s:26:\"social-link/editor.min.css\";i:468;s:27:\"social-links/editor-rtl.css\";i:469;s:31:\"social-links/editor-rtl.min.css\";i:470;s:23:\"social-links/editor.css\";i:471;s:27:\"social-links/editor.min.css\";i:472;s:26:\"social-links/style-rtl.css\";i:473;s:30:\"social-links/style-rtl.min.css\";i:474;s:22:\"social-links/style.css\";i:475;s:26:\"social-links/style.min.css\";i:476;s:21:\"spacer/editor-rtl.css\";i:477;s:25:\"spacer/editor-rtl.min.css\";i:478;s:17:\"spacer/editor.css\";i:479;s:21:\"spacer/editor.min.css\";i:480;s:20:\"spacer/style-rtl.css\";i:481;s:24:\"spacer/style-rtl.min.css\";i:482;s:16:\"spacer/style.css\";i:483;s:20:\"spacer/style.min.css\";i:484;s:20:\"table/editor-rtl.css\";i:485;s:24:\"table/editor-rtl.min.css\";i:486;s:16:\"table/editor.css\";i:487;s:20:\"table/editor.min.css\";i:488;s:19:\"table/style-rtl.css\";i:489;s:23:\"table/style-rtl.min.css\";i:490;s:15:\"table/style.css\";i:491;s:19:\"table/style.min.css\";i:492;s:19:\"table/theme-rtl.css\";i:493;s:23:\"table/theme-rtl.min.css\";i:494;s:15:\"table/theme.css\";i:495;s:19:\"table/theme.min.css\";i:496;s:24:\"tag-cloud/editor-rtl.css\";i:497;s:28:\"tag-cloud/editor-rtl.min.css\";i:498;s:20:\"tag-cloud/editor.css\";i:499;s:24:\"tag-cloud/editor.min.css\";i:500;s:23:\"tag-cloud/style-rtl.css\";i:501;s:27:\"tag-cloud/style-rtl.min.css\";i:502;s:19:\"tag-cloud/style.css\";i:503;s:23:\"tag-cloud/style.min.css\";i:504;s:28:\"template-part/editor-rtl.css\";i:505;s:32:\"template-part/editor-rtl.min.css\";i:506;s:24:\"template-part/editor.css\";i:507;s:28:\"template-part/editor.min.css\";i:508;s:27:\"template-part/theme-rtl.css\";i:509;s:31:\"template-part/theme-rtl.min.css\";i:510;s:23:\"template-part/theme.css\";i:511;s:27:\"template-part/theme.min.css\";i:512;s:30:\"term-description/style-rtl.css\";i:513;s:34:\"term-description/style-rtl.min.css\";i:514;s:26:\"term-description/style.css\";i:515;s:30:\"term-description/style.min.css\";i:516;s:27:\"text-columns/editor-rtl.css\";i:517;s:31:\"text-columns/editor-rtl.min.css\";i:518;s:23:\"text-columns/editor.css\";i:519;s:27:\"text-columns/editor.min.css\";i:520;s:26:\"text-columns/style-rtl.css\";i:521;s:30:\"text-columns/style-rtl.min.css\";i:522;s:22:\"text-columns/style.css\";i:523;s:26:\"text-columns/style.min.css\";i:524;s:19:\"verse/style-rtl.css\";i:525;s:23:\"verse/style-rtl.min.css\";i:526;s:15:\"verse/style.css\";i:527;s:19:\"verse/style.min.css\";i:528;s:20:\"video/editor-rtl.css\";i:529;s:24:\"video/editor-rtl.min.css\";i:530;s:16:\"video/editor.css\";i:531;s:20:\"video/editor.min.css\";i:532;s:19:\"video/style-rtl.css\";i:533;s:23:\"video/style-rtl.min.css\";i:534;s:15:\"video/style.css\";i:535;s:19:\"video/style.min.css\";i:536;s:19:\"video/theme-rtl.css\";i:537;s:23:\"video/theme-rtl.min.css\";i:538;s:15:\"video/theme.css\";i:539;s:19:\"video/theme.min.css\";}}', 'on'),
(125, 'recovery_keys', 'a:0:{}', 'off'),
(130, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1737908280;s:7:\"checked\";a:3:{s:16:\"twentytwentyfive\";s:3:\"1.0\";s:16:\"twentytwentyfour\";s:3:\"1.3\";s:17:\"twentytwentythree\";s:3:\"1.6\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.0.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.3.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.6.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'off'),
(135, 'can_compress_scripts', '0', 'on'),
(142, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(143, 'recently_activated', 'a:2:{s:31:\"wp-bestselling-block/plugin.php\";i:1737136030;s:37:\"bestseller-block/bestseller-block.php\";i:1737104913;}', 'off'),
(144, 'sprint', 'a:2:{s:6:\"enable\";b:1;s:5:\"title\";s:13:\"Sprint Status\";}', 'auto'),
(147, 'finished_updating_comment_type', '1', 'auto'),
(178, '_transient_health-check-site-status-result', '{\"good\":19,\"recommended\":4,\"critical\":0}', 'on'),
(179, 'sprint_jira', 'a:3:{s:6:\"domain\";s:0:\"\";s:5:\"email\";s:0:\"\";s:5:\"token\";s:0:\"\";}', 'auto'),
(199, 'wp-phpmyadmin-extension', 'a:23:{s:16:\"randomCookieName\";s:20:\"pma_YBM31EswrcIUNG4u\";s:17:\"randomCookieValue\";s:20:\"pma_5hudgERpW31Y98GV\";s:18:\"RandomFolderSuffix\";s:24:\"_0s948GBWN7MzA5Ztcf3UEJl\";s:20:\"manual_pma_login_url\";s:0:\"\";s:10:\"require_ip\";b:1;s:16:\"hide_phma_errors\";b:0;s:13:\"strip_slashes\";b:1;s:9:\"use_https\";b:0;s:12:\"is_localhost\";b:1;s:15:\"has_pro_version\";i:0;s:9:\"show_opts\";b:1;s:19:\"show_rating_message\";b:1;s:20:\"show_donation_footer\";b:1;s:19:\"show_donation_popup\";b:1;s:10:\"menu_pages\";a:1:{s:5:\"first\";a:7:{s:5:\"title\";s:13:\"WP-phpMyAdmin\";s:15:\"default_managed\";s:7:\"network\";s:13:\"required_role\";s:15:\"install_plugins\";s:5:\"level\";s:8:\"mainmenu\";s:4:\"icon\";s:92:\"http://localhost:10016/wp-content/plugins/wp-phpmyadmin-extension/assets/media/menu_icon.png\";s:10:\"page_title\";s:26:\"WP phpMyAdmin Options page\";s:4:\"tabs\";a:0:{}}}s:4:\"name\";s:13:\"WP phpMyAdmin\";s:5:\"title\";s:109:\"<a href=\"https://puvox.software/software/wordpress-plugins/?plugin=wp-phpmyadmin-extension\">WP phpMyAdmin</a>\";s:7:\"version\";s:8:\"5.2.1.13\";s:18:\"first_install_date\";i:1737012100;s:16:\"last_update_time\";i:1737012100;s:12:\"last_updates\";a:0:{}s:12:\"last_version\";s:8:\"5.2.1.13\";s:15:\"ssl_error_shown\";i:1;}', 'off'),
(200, 'wp-phpmyadmin-extension_transl_lastvers', '5.2.1.13', 'off'),
(210, 'WPLANG', '', 'auto'),
(211, 'new_admin_email', 'mohdamir.khan@eclerx.com', 'auto'),
(301, 'theme_mods_twentytwentyfive', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1737146707;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(302, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"6a64f06d5174183821b9e5e1b0e89c36\";s:6:\"blocks\";a:52:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:0:\"\";s:12:\"core/columns\";s:769:\":root :where(.wp-block-columns-is-layout-flow) > :first-child{margin-block-start: 0;}:root :where(.wp-block-columns-is-layout-flow) > :last-child{margin-block-end: 0;}:root :where(.wp-block-columns-is-layout-flow) > *{margin-block-start: var(--wp--preset--spacing--50);margin-block-end: 0;}:root :where(.wp-block-columns-is-layout-constrained) > :first-child{margin-block-start: 0;}:root :where(.wp-block-columns-is-layout-constrained) > :last-child{margin-block-end: 0;}:root :where(.wp-block-columns-is-layout-constrained) > *{margin-block-start: var(--wp--preset--spacing--50);margin-block-end: 0;}:root :where(.wp-block-columns-is-layout-flex){gap: var(--wp--preset--spacing--50);}:root :where(.wp-block-columns-is-layout-grid){gap: var(--wp--preset--spacing--50);}\";s:14:\"core/pullquote\";s:306:\":root :where(.wp-block-pullquote){font-size: var(--wp--preset--font-size--xx-large);font-weight: 300;line-height: 1.2;padding-top: var(--wp--preset--spacing--30);padding-bottom: var(--wp--preset--spacing--30);}:root :where(.wp-block-pullquote p:last-of-type){margin-bottom: var(--wp--preset--spacing--30);}\";s:32:\"c48738dcb285a3f6ab83acff204fc486\";s:106:\":root :where(.wp-block-pullquote cite){font-size: var(--wp--preset--font-size--small);font-style: normal;}\";s:11:\"core/avatar\";s:57:\":root :where(.wp-block-avatar img){border-radius: 100px;}\";s:12:\"core/buttons\";s:665:\":root :where(.wp-block-buttons-is-layout-flow) > :first-child{margin-block-start: 0;}:root :where(.wp-block-buttons-is-layout-flow) > :last-child{margin-block-end: 0;}:root :where(.wp-block-buttons-is-layout-flow) > *{margin-block-start: 16px;margin-block-end: 0;}:root :where(.wp-block-buttons-is-layout-constrained) > :first-child{margin-block-start: 0;}:root :where(.wp-block-buttons-is-layout-constrained) > :last-child{margin-block-end: 0;}:root :where(.wp-block-buttons-is-layout-constrained) > *{margin-block-start: 16px;margin-block-end: 0;}:root :where(.wp-block-buttons-is-layout-flex){gap: 16px;}:root :where(.wp-block-buttons-is-layout-grid){gap: 16px;}\";s:9:\"core/code\";s:427:\":root :where(.wp-block-code){background-color: var(--wp--preset--color--accent-5);color: var(--wp--preset--color--contrast);font-family: var(--wp--preset--font-family--fira-code);font-size: var(--wp--preset--font-size--medium);font-weight: 300;padding-top: var(--wp--preset--spacing--40);padding-right: var(--wp--preset--spacing--40);padding-bottom: var(--wp--preset--spacing--40);padding-left: var(--wp--preset--spacing--40);}\";s:24:\"core/comment-author-name\";s:169:\":root :where(.wp-block-comment-author-name){color: var(--wp--preset--color--accent-4);font-size: var(--wp--preset--font-size--small);margin-top: 5px;margin-bottom: 0px;}\";s:32:\"c0002c260f8238c4212f3e4c369fc4f7\";s:143:\":root :where(.wp-block-comment-author-name a:where(:not(.wp-element-button))){color: var(--wp--preset--color--accent-4);text-decoration: none;}\";s:32:\"1e7c38b45537b325dbbbaec17a301676\";s:112:\":root :where(.wp-block-comment-author-name a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:20:\"core/comment-content\";s:178:\":root :where(.wp-block-comment-content){font-size: var(--wp--preset--font-size--medium);margin-top: var(--wp--preset--spacing--30);margin-bottom: var(--wp--preset--spacing--30);}\";s:17:\"core/comment-date\";s:127:\":root :where(.wp-block-comment-date){color: var(--wp--preset--color--contrast);font-size: var(--wp--preset--font-size--small);}\";s:32:\"c83ca7b3e52884c70f7830c54f99b318\";s:114:\":root :where(.wp-block-comment-date a:where(:not(.wp-element-button))){color: var(--wp--preset--color--contrast);}\";s:22:\"core/comment-edit-link\";s:90:\":root :where(.wp-block-comment-edit-link){font-size: var(--wp--preset--font-size--small);}\";s:32:\"41d70710612536a90e368c12bcb0efea\";s:119:\":root :where(.wp-block-comment-edit-link a:where(:not(.wp-element-button))){color: var(--wp--preset--color--contrast);}\";s:23:\"core/comment-reply-link\";s:91:\":root :where(.wp-block-comment-reply-link){font-size: var(--wp--preset--font-size--small);}\";s:32:\"13c96340dbf37700add1f4c5cae19f3e\";s:120:\":root :where(.wp-block-comment-reply-link a:where(:not(.wp-element-button))){color: var(--wp--preset--color--contrast);}\";s:23:\"core/post-comments-form\";s:565:\":root :where(.wp-block-post-comments-form){font-size: var(--wp--preset--font-size--medium);padding-top: var(--wp--preset--spacing--40);padding-bottom: var(--wp--preset--spacing--40);}:root :where(.wp-block-post-comments-form textarea, .wp-block-post-comments-form input:not([type=submit])){border-radius:.25rem; border-color: var(--wp--preset--color--accent-6) !important;}:root :where(.wp-block-post-comments-form input[type=checkbox]){margin:0 .2rem 0 0 !important;}:root :where(.wp-block-post-comments-form label){font-size: var(--wp--preset--font-size--small);}\";s:24:\"core/comments-pagination\";s:182:\":root :where(.wp-block-comments-pagination){font-size: var(--wp--preset--font-size--medium);margin-top: var(--wp--preset--spacing--40);margin-bottom: var(--wp--preset--spacing--40);}\";s:29:\"core/comments-pagination-next\";s:98:\":root :where(.wp-block-comments-pagination-next){font-size: var(--wp--preset--font-size--medium);}\";s:32:\"core/comments-pagination-numbers\";s:101:\":root :where(.wp-block-comments-pagination-numbers){font-size: var(--wp--preset--font-size--medium);}\";s:33:\"core/comments-pagination-previous\";s:102:\":root :where(.wp-block-comments-pagination-previous){font-size: var(--wp--preset--font-size--medium);}\";s:14:\"core/post-date\";s:124:\":root :where(.wp-block-post-date){color: var(--wp--preset--color--accent-4);font-size: var(--wp--preset--font-size--small);}\";s:32:\"ac0d4e00f5ec22d14451759983e5bd43\";s:133:\":root :where(.wp-block-post-date a:where(:not(.wp-element-button))){color: var(--wp--preset--color--accent-4);text-decoration: none;}\";s:32:\"0ae6ffd1b886044c2da62d75d05ab13d\";s:102:\":root :where(.wp-block-post-date a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:25:\"core/post-navigation-link\";s:94:\":root :where(.wp-block-post-navigation-link){font-size: var(--wp--preset--font-size--medium);}\";s:15:\"core/post-terms\";s:158:\":root :where(.wp-block-post-terms){font-size: var(--wp--preset--font-size--small);font-weight: 600;}:root :where(.wp-block-post-terms a){white-space: nowrap;}\";s:15:\"core/post-title\";s:0:\"\";s:32:\"bb496d3fcd9be3502ce57ff8281e5687\";s:92:\":root :where(.wp-block-post-title a:where(:not(.wp-element-button))){text-decoration: none;}\";s:32:\"12380ab98fdc81351bb32a39bbfc9249\";s:103:\":root :where(.wp-block-post-title a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:10:\"core/quote\";s:1315:\":root :where(.wp-block-quote){border-color: currentColor;border-width: 0 0 0 2px;border-style: solid;font-size: var(--wp--preset--font-size--large);font-weight: 300;margin-right: 0;margin-left: 0;padding-top: var(--wp--preset--spacing--30);padding-right: var(--wp--preset--spacing--40);padding-bottom: var(--wp--preset--spacing--30);padding-left: var(--wp--preset--spacing--40);}:root :where(.wp-block-quote-is-layout-flow) > :first-child{margin-block-start: 0;}:root :where(.wp-block-quote-is-layout-flow) > :last-child{margin-block-end: 0;}:root :where(.wp-block-quote-is-layout-flow) > *{margin-block-start: var(--wp--preset--spacing--30);margin-block-end: 0;}:root :where(.wp-block-quote-is-layout-constrained) > :first-child{margin-block-start: 0;}:root :where(.wp-block-quote-is-layout-constrained) > :last-child{margin-block-end: 0;}:root :where(.wp-block-quote-is-layout-constrained) > *{margin-block-start: var(--wp--preset--spacing--30);margin-block-end: 0;}:root :where(.wp-block-quote-is-layout-flex){gap: var(--wp--preset--spacing--30);}:root :where(.wp-block-quote-is-layout-grid){gap: var(--wp--preset--spacing--30);}:root :where(.wp-block-quote.has-text-align-right ){border-width: 0 2px 0 0;}:root :where(.wp-block-quote.has-text-align-center ){border-width: 0;border-inline: 0; padding-inline: 0;}\";s:32:\"1de7a22e22013106efc5be82788cb6c0\";s:176:\":root :where(.wp-block-quote cite){font-size: var(--wp--preset--font-size--small);font-style: normal;font-weight: 300;}:root :where(.wp-block-quote cite sub){font-size: 0.65em}\";s:21:\"core/query-pagination\";s:107:\":root :where(.wp-block-query-pagination){font-size: var(--wp--preset--font-size--medium);font-weight: 500;}\";s:11:\"core/search\";s:380:\":root :where(.wp-block-search .wp-block-search__label, .wp-block-search .wp-block-search__input, .wp-block-search .wp-block-search__button){font-size: var(--wp--preset--font-size--medium);line-height: 1.6;}:root :where(.wp-block-search .wp-block-search__input){border-radius:3.125rem;padding-left:1.5625rem;padding-right:1.5625rem;border-color:var(--wp--preset--color--accent-6);}\";s:32:\"14fa6a3d0cfbde171cbc0fb04aa8a6cf\";s:138:\":root :where(.wp-block-search .wp-element-button,.wp-block-search  .wp-block-button__link){border-radius: 3.125rem;margin-left: 1.125rem;}\";s:32:\"05993ee2f3de94b5d1350998a7e9b6b0\";s:130:\":root :where(.wp-block-search .wp-element-button:hover,.wp-block-search  .wp-block-button__link:hover){border-color: transparent;}\";s:14:\"core/separator\";s:148:\":root :where(.wp-block-separator){border-color: currentColor;border-width: 0 0 1px 0;border-style: solid;color: var(--wp--preset--color--accent-6);}\";s:17:\"core/site-tagline\";s:86:\":root :where(.wp-block-site-tagline){font-size: var(--wp--preset--font-size--medium);}\";s:15:\"core/site-title\";s:75:\":root :where(.wp-block-site-title){font-weight: 700;letter-spacing: -.5px;}\";s:32:\"f513d889cf971b13995cc3fffed2f39b\";s:92:\":root :where(.wp-block-site-title a:where(:not(.wp-element-button))){text-decoration: none;}\";s:32:\"22c37a317cc0ebd50155b5ad78564f37\";s:103:\":root :where(.wp-block-site-title a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:21:\"core/term-description\";s:90:\":root :where(.wp-block-term-description){font-size: var(--wp--preset--font-size--medium);}\";s:15:\"core/navigation\";s:84:\":root :where(.wp-block-navigation){font-size: var(--wp--preset--font-size--medium);}\";s:32:\"25289a01850f5a0264ddb79a9a3baf3d\";s:92:\":root :where(.wp-block-navigation a:where(:not(.wp-element-button))){text-decoration: none;}\";s:32:\"026c04da08398d655a95047f1f235d97\";s:103:\":root :where(.wp-block-navigation a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:9:\"core/list\";s:52:\":root :where(.wp-block-list li){margin-top: 0.5rem;}\";s:12:\"core/heading\";s:0:\"\";s:14:\"core/paragraph\";s:0:\"\";s:10:\"core/group\";s:0:\"\";s:11:\"core/column\";s:0:\"\";}}', 'on'),
(405, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1737908278;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:41:\"pexlechris-adminer/pexlechris-adminer.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:32:\"w.org/plugins/pexlechris-adminer\";s:4:\"slug\";s:18:\"pexlechris-adminer\";s:6:\"plugin\";s:41:\"pexlechris-adminer/pexlechris-adminer.php\";s:11:\"new_version\";s:5:\"3.1.1\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/pexlechris-adminer/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/pexlechris-adminer.3.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/pexlechris-adminer/assets/icon-256x256.png?rev=2685107\";s:2:\"1x\";s:71:\"https://ps.w.org/pexlechris-adminer/assets/icon-128x128.png?rev=2685107\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/pexlechris-adminer/assets/banner-1544x500.jpg?rev=2685110\";s:2:\"1x\";s:73:\"https://ps.w.org/pexlechris-adminer/assets/banner-772x250.jpg?rev=2685110\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"4.7.0\";}}}', 'off'),
(410, 'current_theme', 'Twenty Twenty-Four', 'auto'),
(411, 'theme_mods_twentytwentyfour', 'a:3:{i:0;b:0;s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:0:{}}', 'on'),
(412, 'theme_switched', '', 'auto'),
(417, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.7.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.7.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.7.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.7.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.7.1\";s:7:\"version\";s:5:\"6.7.1\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1737908278;s:15:\"version_checked\";s:5:\"6.7.1\";s:12:\"translations\";a:0:{}}', 'off'),
(418, 'recovery_mode_email_last_sent', '1737147092', 'auto'),
(699, '_site_transient_timeout_theme_roots', '1737910079', 'off'),
(700, '_site_transient_theme_roots', 'a:3:{s:16:\"twentytwentyfive\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";}', 'off'),
(701, '_site_transient_timeout_wp_theme_files_patterns-9f26df587ca3e4744d65c1277cd57f02', '1737912421', 'off'),
(702, '_site_transient_wp_theme_files_patterns-9f26df587ca3e4744d65c1277cd57f02', 'a:2:{s:7:\"version\";s:3:\"1.3\";s:8:\"patterns\";a:57:{s:15:\"banner-hero.php\";a:5:{s:5:\"title\";s:4:\"Hero\";s:4:\"slug\";s:28:\"twentytwentyfour/banner-hero\";s:11:\"description\";s:69:\"A hero section with a title, a paragraph, a CTA button, and an image.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:3:{i:0;s:6:\"banner\";i:1;s:14:\"call-to-action\";i:2;s:8:\"featured\";}}s:30:\"banner-project-description.php\";a:5:{s:5:\"title\";s:19:\"Project description\";s:4:\"slug\";s:43:\"twentytwentyfour/banner-project-description\";s:11:\"description\";s:64:\"Project description section with title, paragraph, and an image.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:4:{i:0;s:8:\"featured\";i:1;s:6:\"banner\";i:2;s:5:\"about\";i:3;s:9:\"portfolio\";}}s:30:\"cta-content-image-on-right.php\";a:5:{s:5:\"title\";s:34:\"Call to action with image on right\";s:4:\"slug\";s:43:\"twentytwentyfour/cta-content-image-on-right\";s:11:\"description\";s:76:\"A title, paragraph, two CTA buttons, and an image for a general CTA section.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:14:\"call-to-action\";i:1;s:6:\"banner\";}}s:15:\"cta-pricing.php\";a:5:{s:5:\"title\";s:7:\"Pricing\";s:4:\"slug\";s:28:\"twentytwentyfour/cta-pricing\";s:11:\"description\";s:69:\"A pricing section with a title, a paragraph and three pricing levels.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:14:\"call-to-action\";i:1;s:8:\"services\";}}s:12:\"cta-rsvp.php\";a:5:{s:5:\"title\";s:4:\"RSVP\";s:4:\"slug\";s:25:\"twentytwentyfour/cta-rsvp\";s:11:\"description\";s:63:\"A large RSVP heading sideways, a description, and a CTA button.\";s:13:\"viewportWidth\";i:1100;s:10:\"categories\";a:2:{i:0;s:14:\"call-to-action\";i:1;s:8:\"featured\";}}s:27:\"cta-services-image-left.php\";a:5:{s:5:\"title\";s:42:\"Services call to action with image on left\";s:4:\"slug\";s:40:\"twentytwentyfour/cta-services-image-left\";s:11:\"description\";s:65:\"An image, title, paragraph and a CTA button to describe services.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:4:{i:0;s:14:\"call-to-action\";i:1;s:6:\"banner\";i:2;s:8:\"featured\";i:3;s:8:\"services\";}}s:26:\"cta-subscribe-centered.php\";a:5:{s:5:\"title\";s:23:\"Centered call to action\";s:4:\"slug\";s:39:\"twentytwentyfour/cta-subscribe-centered\";s:11:\"description\";s:67:\"Subscribers CTA section with a title, a paragraph and a CTA button.\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}s:8:\"keywords\";a:3:{i:0;s:10:\"newsletter\";i:1;s:9:\"subscribe\";i:2;s:6:\"button\";}}s:28:\"footer-centered-logo-nav.php\";a:5:{s:5:\"title\";s:40:\"Footer with centered logo and navigation\";s:4:\"slug\";s:41:\"twentytwentyfour/footer-centered-logo-nav\";s:11:\"description\";s:73:\"A footer section with a centered logo, navigation, and WordPress credits.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:25:\"footer-colophon-3-col.php\";a:5:{s:5:\"title\";s:31:\"Footer with colophon, 3 columns\";s:4:\"slug\";s:38:\"twentytwentyfour/footer-colophon-3-col\";s:11:\"description\";s:47:\"A footer section with a colophon and 3 columns.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:10:\"footer.php\";a:5:{s:5:\"title\";s:31:\"Footer with colophon, 4 columns\";s:4:\"slug\";s:23:\"twentytwentyfour/footer\";s:11:\"description\";s:47:\"A footer section with a colophon and 4 columns.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:29:\"gallery-full-screen-image.php\";a:4:{s:5:\"title\";s:17:\"Full screen image\";s:4:\"slug\";s:42:\"twentytwentyfour/gallery-full-screen-image\";s:11:\"description\";s:51:\"A cover image section that covers the entire width.\";s:10:\"categories\";a:2:{i:0;s:7:\"gallery\";i:1;s:9:\"portfolio\";}}s:36:\"gallery-offset-images-grid-2-col.php\";a:6:{s:5:\"title\";s:25:\"Offset gallery, 2 columns\";s:4:\"slug\";s:49:\"twentytwentyfour/gallery-offset-images-grid-2-col\";s:11:\"description\";s:51:\"A gallery section with 2 columns and offset images.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:7:\"gallery\";i:1;s:9:\"portfolio\";}s:8:\"keywords\";a:5:{i:0;s:7:\"project\";i:1;s:6:\"images\";i:2;s:5:\"media\";i:3;s:7:\"masonry\";i:4;s:7:\"columns\";}}s:36:\"gallery-offset-images-grid-3-col.php\";a:6:{s:5:\"title\";s:25:\"Offset gallery, 3 columns\";s:4:\"slug\";s:49:\"twentytwentyfour/gallery-offset-images-grid-3-col\";s:11:\"description\";s:51:\"A gallery section with 3 columns and offset images.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:7:\"gallery\";i:1;s:9:\"portfolio\";}s:8:\"keywords\";a:5:{i:0;s:7:\"project\";i:1;s:6:\"images\";i:2;s:5:\"media\";i:3;s:7:\"masonry\";i:4;s:7:\"columns\";}}s:36:\"gallery-offset-images-grid-4-col.php\";a:6:{s:5:\"title\";s:25:\"Offset gallery, 4 columns\";s:4:\"slug\";s:49:\"twentytwentyfour/gallery-offset-images-grid-4-col\";s:11:\"description\";s:51:\"A gallery section with 4 columns and offset images.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:3:{i:0;s:7:\"gallery\";i:1;s:8:\"featured\";i:2;s:9:\"portfolio\";}s:8:\"keywords\";a:5:{i:0;s:7:\"project\";i:1;s:6:\"images\";i:2;s:5:\"media\";i:3;s:7:\"masonry\";i:4;s:7:\"columns\";}}s:26:\"gallery-project-layout.php\";a:5:{s:5:\"title\";s:14:\"Project layout\";s:4:\"slug\";s:39:\"twentytwentyfour/gallery-project-layout\";s:11:\"description\";s:54:\"A gallery section with a project layout with 2 images.\";s:13:\"viewportWidth\";i:1600;s:10:\"categories\";a:3:{i:0;s:7:\"gallery\";i:1;s:8:\"featured\";i:2;s:9:\"portfolio\";}}s:14:\"hidden-404.php\";a:4:{s:5:\"title\";s:3:\"404\";s:4:\"slug\";s:27:\"twentytwentyfour/hidden-404\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:19:\"hidden-comments.php\";a:4:{s:5:\"title\";s:8:\"Comments\";s:4:\"slug\";s:32:\"twentytwentyfour/hidden-comments\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:21:\"hidden-no-results.php\";a:4:{s:5:\"title\";s:10:\"No results\";s:4:\"slug\";s:34:\"twentytwentyfour/hidden-no-results\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:25:\"hidden-portfolio-hero.php\";a:4:{s:5:\"title\";s:14:\"Portfolio hero\";s:4:\"slug\";s:38:\"twentytwentyfour/hidden-portfolio-hero\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:20:\"hidden-post-meta.php\";a:4:{s:5:\"title\";s:9:\"Post meta\";s:4:\"slug\";s:33:\"twentytwentyfour/hidden-post-meta\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:26:\"hidden-post-navigation.php\";a:4:{s:5:\"title\";s:15:\"Post navigation\";s:4:\"slug\";s:39:\"twentytwentyfour/hidden-post-navigation\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:24:\"hidden-posts-heading.php\";a:5:{s:5:\"title\";s:13:\"Posts heading\";s:4:\"slug\";s:37:\"twentytwentyfour/hidden-posts-heading\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;s:10:\"categories\";a:1:{i:0;s:6:\"hidden\";}}s:17:\"hidden-search.php\";a:4:{s:5:\"title\";s:6:\"Search\";s:4:\"slug\";s:30:\"twentytwentyfour/hidden-search\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:18:\"hidden-sidebar.php\";a:4:{s:5:\"title\";s:7:\"Sidebar\";s:4:\"slug\";s:31:\"twentytwentyfour/hidden-sidebar\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:23:\"page-about-business.php\";a:8:{s:5:\"title\";s:5:\"About\";s:4:\"slug\";s:36:\"twentytwentyfour/page-about-business\";s:11:\"description\";s:147:\"A business about page with a hero section, a text section, a services section, a team section, a clients section, a FAQ section, and a CTA section.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:21:\"twentytwentyfour_page\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:22:\"page-home-blogging.php\";a:7:{s:5:\"title\";s:13:\"Blogging home\";s:4:\"slug\";s:35:\"twentytwentyfour/page-home-blogging\";s:11:\"description\";s:92:\"A blogging home page with a hero section, a text section, a blog section, and a CTA section.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:21:\"twentytwentyfour_page\";}s:8:\"keywords\";a:2:{i:0;s:4:\"page\";i:1;s:7:\"starter\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:22:\"page-home-business.php\";a:8:{s:5:\"title\";s:13:\"Business home\";s:4:\"slug\";s:35:\"twentytwentyfour/page-home-business\";s:11:\"description\";s:146:\"A business home page with a hero section, a text section, a services section, a team section, a clients section, a FAQ section, and a CTA section.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:21:\"twentytwentyfour_page\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:31:\"page-home-portfolio-gallery.php\";a:8:{s:5:\"title\";s:28:\"Portfolio home image gallery\";s:4:\"slug\";s:34:\"twentytwentyfour/page-home-gallery\";s:11:\"description\";s:46:\"A portfolio home page that features a gallery.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:21:\"twentytwentyfour_page\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:23:\"page-home-portfolio.php\";a:8:{s:5:\"title\";s:40:\"Portfolio home with post featured images\";s:4:\"slug\";s:36:\"twentytwentyfour/page-home-portfolio\";s:11:\"description\";s:94:\"A portfolio home page with a description and a 4-column post section with only feature images.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:21:\"twentytwentyfour_page\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:27:\"page-newsletter-landing.php\";a:8:{s:5:\"title\";s:18:\"Newsletter landing\";s:4:\"slug\";s:40:\"twentytwentyfour/page-newsletter-landing\";s:11:\"description\";s:62:\"A block with a newsletter subscription CTA for a landing page.\";s:13:\"viewportWidth\";i:1100;s:10:\"categories\";a:3:{i:0;s:14:\"call-to-action\";i:1;s:21:\"twentytwentyfour_page\";i:2;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:27:\"page-portfolio-overview.php\";a:8:{s:5:\"title\";s:26:\"Portfolio project overview\";s:4:\"slug\";s:40:\"twentytwentyfour/page-portfolio-overview\";s:11:\"description\";s:138:\"A full portfolio page with a section for project description, project details, a full screen image, and a gallery section with two images.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfour_page\";i:1;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:21:\"page-rsvp-landing.php\";a:8:{s:5:\"title\";s:12:\"RSVP landing\";s:4:\"slug\";s:34:\"twentytwentyfour/page-rsvp-landing\";s:11:\"description\";s:63:\"A large RSVP heading sideways, a description, and a CTA button.\";s:13:\"viewportWidth\";i:1100;s:10:\"categories\";a:1:{i:0;s:21:\"twentytwentyfour_page\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:15:\"posts-1-col.php\";a:5:{s:5:\"title\";s:23:\"List of posts, 1 column\";s:4:\"slug\";s:28:\"twentytwentyfour/posts-1-col\";s:11:\"description\";s:26:\"A list of posts, 1 column.\";s:10:\"categories\";a:1:{i:0;s:5:\"query\";}s:10:\"blockTypes\";a:1:{i:0;s:10:\"core/query\";}}s:15:\"posts-3-col.php\";a:5:{s:5:\"title\";s:24:\"List of posts, 3 columns\";s:4:\"slug\";s:28:\"twentytwentyfour/posts-3-col\";s:11:\"description\";s:27:\"A list of posts, 3 columns.\";s:10:\"categories\";a:1:{i:0;s:5:\"query\";}s:10:\"blockTypes\";a:1:{i:0;s:10:\"core/query\";}}s:20:\"posts-grid-2-col.php\";a:5:{s:5:\"title\";s:49:\"Grid of posts featuring the first post, 2 columns\";s:4:\"slug\";s:33:\"twentytwentyfour/posts-grid-2-col\";s:11:\"description\";s:52:\"A grid of posts featuring the first post, 2 columns.\";s:10:\"categories\";a:1:{i:0;s:5:\"query\";}s:10:\"blockTypes\";a:1:{i:0;s:10:\"core/query\";}}s:27:\"posts-images-only-3-col.php\";a:5:{s:5:\"title\";s:42:\"Posts with featured images only, 3 columns\";s:4:\"slug\";s:40:\"twentytwentyfour/posts-images-only-3-col\";s:11:\"description\";s:53:\"A list of posts with featured images only, 3 columns.\";s:10:\"categories\";a:1:{i:0;s:5:\"query\";}s:10:\"blockTypes\";a:1:{i:0;s:10:\"core/query\";}}s:34:\"posts-images-only-offset-4-col.php\";a:4:{s:5:\"title\";s:49:\"Offset posts with featured images only, 4 columns\";s:4:\"slug\";s:47:\"twentytwentyfour/posts-images-only-offset-4-col\";s:11:\"description\";s:53:\"A list of posts with featured images only, 4 columns.\";s:10:\"categories\";a:1:{i:0;s:5:\"posts\";}}s:14:\"posts-list.php\";a:5:{s:5:\"title\";s:38:\"List of posts without images, 1 column\";s:4:\"slug\";s:27:\"twentytwentyfour/posts-list\";s:11:\"description\";s:41:\"A list of posts without images, 1 column.\";s:10:\"categories\";a:2:{i:0;s:5:\"query\";i:1;s:5:\"posts\";}s:10:\"blockTypes\";a:1:{i:0;s:10:\"core/query\";}}s:14:\"team-4-col.php\";a:5:{s:5:\"title\";s:23:\"Team members, 4 columns\";s:4:\"slug\";s:27:\"twentytwentyfour/team-4-col\";s:11:\"description\";s:76:\"A team section, with a heading, a paragraph, and 4 columns for team members.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:4:\"team\";i:1;s:5:\"about\";}}s:29:\"template-archive-blogging.php\";a:6:{s:5:\"title\";s:25:\"Blogging archive template\";s:4:\"slug\";s:42:\"twentytwentyfour/template-archive-blogging\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:5:{i:0;s:7:\"archive\";i:1;s:8:\"category\";i:2;s:3:\"tag\";i:3;s:6:\"author\";i:4;s:4:\"date\";}}s:30:\"template-archive-portfolio.php\";a:6:{s:5:\"title\";s:26:\"Portfolio archive template\";s:4:\"slug\";s:43:\"twentytwentyfour/template-archive-portfolio\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:7:\"archive\";}}s:26:\"template-home-blogging.php\";a:6:{s:5:\"title\";s:22:\"Blogging home template\";s:4:\"slug\";s:39:\"twentytwentyfour/template-home-blogging\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:3:{i:0;s:10:\"front-page\";i:1;s:5:\"index\";i:2;s:4:\"home\";}}s:26:\"template-home-business.php\";a:6:{s:5:\"title\";s:22:\"Business home template\";s:4:\"slug\";s:39:\"twentytwentyfour/template-home-business\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:10:\"front-page\";i:1;s:4:\"home\";}}s:27:\"template-home-portfolio.php\";a:6:{s:5:\"title\";s:49:\"Portfolio home template with post featured images\";s:4:\"slug\";s:40:\"twentytwentyfour/template-home-portfolio\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:10:\"front-page\";i:1;s:4:\"home\";}}s:27:\"template-index-blogging.php\";a:6:{s:5:\"title\";s:23:\"Blogging index template\";s:4:\"slug\";s:40:\"twentytwentyfour/template-index-blogging\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"index\";i:1;s:4:\"home\";}}s:28:\"template-index-portfolio.php\";a:6:{s:5:\"title\";s:24:\"Portfolio index template\";s:4:\"slug\";s:41:\"twentytwentyfour/template-index-portfolio\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:5:\"index\";}}s:28:\"template-search-blogging.php\";a:6:{s:5:\"title\";s:24:\"Blogging search template\";s:4:\"slug\";s:41:\"twentytwentyfour/template-search-blogging\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:6:\"search\";}}s:29:\"template-search-portfolio.php\";a:6:{s:5:\"title\";s:25:\"Portfolio search template\";s:4:\"slug\";s:42:\"twentytwentyfour/template-search-portfolio\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:6:\"search\";}}s:29:\"template-single-portfolio.php\";a:6:{s:5:\"title\";s:30:\"Portfolio single post template\";s:4:\"slug\";s:42:\"twentytwentyfour/template-single-portfolio\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:24:\"testimonial-centered.php\";a:6:{s:5:\"title\";s:20:\"Centered testimonial\";s:4:\"slug\";s:37:\"twentytwentyfour/testimonial-centered\";s:11:\"description\";s:67:\"A centered testimonial section with an avatar, name, and job title.\";s:13:\"viewportWidth\";i:1300;s:10:\"categories\";a:2:{i:0;s:12:\"testimonials\";i:1;s:4:\"text\";}s:8:\"keywords\";a:3:{i:0;s:5:\"quote\";i:1;s:6:\"review\";i:2;s:5:\"about\";}}s:27:\"text-alternating-images.php\";a:5:{s:5:\"title\";s:28:\"Text with alternating images\";s:4:\"slug\";s:40:\"twentytwentyfour/text-alternating-images\";s:11:\"description\";s:92:\"A text section, then a two-column section with text in one column and an image in the other.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:4:\"text\";i:1;s:5:\"about\";}}s:33:\"text-centered-statement-small.php\";a:6:{s:5:\"title\";s:25:\"Centered statement, small\";s:4:\"slug\";s:46:\"twentytwentyfour/text-centered-statement-small\";s:11:\"description\";s:54:\"A centered italic text statement with compact padding.\";s:13:\"viewportWidth\";i:1200;s:10:\"categories\";a:2:{i:0;s:4:\"text\";i:1;s:5:\"about\";}s:8:\"keywords\";a:2:{i:0;s:7:\"mission\";i:1;s:12:\"introduction\";}}s:27:\"text-centered-statement.php\";a:6:{s:5:\"title\";s:18:\"Centered statement\";s:4:\"slug\";s:40:\"twentytwentyfour/text-centered-statement\";s:11:\"description\";s:70:\"A centered text statement with a large amount of padding on all sides.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:3:{i:0;s:4:\"text\";i:1;s:5:\"about\";i:2;s:8:\"featured\";}s:8:\"keywords\";a:2:{i:0;s:7:\"mission\";i:1;s:12:\"introduction\";}}s:12:\"text-faq.php\";a:6:{s:5:\"title\";s:3:\"FAQ\";s:4:\"slug\";s:25:\"twentytwentyfour/text-faq\";s:11:\"description\";s:76:\"A FAQ section with a large FAQ heading and a group of questions and answers.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:3:{i:0;s:4:\"text\";i:1;s:5:\"about\";i:2;s:8:\"featured\";}s:8:\"keywords\";a:4:{i:0;s:3:\"faq\";i:1;s:5:\"about\";i:2;s:10:\"frequently\";i:3;s:5:\"asked\";}}s:27:\"text-feature-grid-3-col.php\";a:5:{s:5:\"title\";s:23:\"Feature grid, 3 columns\";s:4:\"slug\";s:40:\"twentytwentyfour/text-feature-grid-3-col\";s:11:\"description\";s:62:\"A feature grid of 2 rows and 3 columns with headings and text.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:4:\"text\";i:1;s:5:\"about\";}}s:24:\"text-project-details.php\";a:5:{s:5:\"title\";s:15:\"Project details\";s:4:\"slug\";s:37:\"twentytwentyfour/text-project-details\";s:11:\"description\";s:40:\"A text-only section for project details.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:4:\"text\";i:1;s:9:\"portfolio\";}}s:31:\"text-title-left-image-right.php\";a:5:{s:5:\"title\";s:49:\"Title text and button on left with image on right\";s:4:\"slug\";s:44:\"twentytwentyfour/text-title-left-image-right\";s:11:\"description\";s:77:\"A title, a paragraph and a CTA button on the left with an image on the right.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:3:{i:0;s:6:\"banner\";i:1;s:5:\"about\";i:2;s:8:\"featured\";}}}}', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 6, '_edit_lock', '1737136018:1'),
(8, 15, '_edit_lock', '1737104897:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2025-01-14 08:11:10', '2025-01-14 08:11:10', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2025-01-14 08:11:10', '2025-01-14 08:11:10', '', 0, 'http://localhost:10016/?p=1', 0, 'post', '', 1),
(2, 1, '2025-01-14 08:11:10', '2025-01-14 08:11:10', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:10016/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2025-01-14 08:11:10', '2025-01-14 08:11:10', '', 0, 'http://localhost:10016/?page_id=2', 0, 'page', '', 0),
(3, 1, '2025-01-14 08:11:10', '2025-01-14 08:11:10', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:10016.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2025-01-14 08:11:10', '2025-01-14 08:11:10', '', 0, 'http://localhost:10016/?page_id=3', 0, 'page', '', 0),
(6, 1, '2025-01-17 08:37:04', '2025-01-17 08:37:04', '<!-- wp:bestsellers/block {\"genre\":\"100000\"} -->\n<div class=\"bestsellers-block\"><h3>Bestsellers</h3><div class=\"bestsellers-carousel\" data-genre=\"100000\"><p>Books will be dynamically loaded here based on the selected genre.</p></div></div>\n<!-- /wp:bestsellers/block -->', 'Test Biblio', '', 'publish', 'closed', 'closed', '', 'test-biblio', '', '', '2025-01-17 09:09:08', '2025-01-17 09:09:08', '', 0, 'http://localhost:10016/?page_id=6', 0, 'page', '', 0),
(7, 1, '2025-01-17 08:33:30', '2025-01-17 08:33:30', '{\"version\": 3, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentyfive', '', '', '2025-01-17 08:33:30', '2025-01-17 08:33:30', '', 0, 'http://localhost:10016/wp-global-styles-twentytwentyfive/', 0, 'wp_global_styles', '', 0),
(8, 1, '2025-01-17 08:37:04', '2025-01-17 08:37:04', '<!-- wp:bestsellers/block -->\n<div class=\"bestsellers-block\"><h3>Bestsellers</h3><div class=\"bestsellers-carousel\" data-genre=\"\"><p>Books will be dynamically loaded here based on the selected genre.</p></div></div>\n<!-- /wp:bestsellers/block -->', 'Test Biblio', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-01-17 08:37:04', '2025-01-17 08:37:04', '', 6, 'http://localhost:10016/?p=8', 0, 'revision', '', 0),
(9, 1, '2025-01-17 08:37:18', '2025-01-17 08:37:18', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2025-01-17 08:37:18', '2025-01-17 08:37:18', '', 0, 'http://localhost:10016/navigation/', 0, 'wp_navigation', '', 0),
(11, 1, '2025-01-17 08:41:58', '2025-01-17 08:41:58', '<!-- wp:bestsellers/block {\"genre\":\"100000\"} -->\n<div class=\"bestsellers-block\"><h3>Bestsellers</h3><div class=\"bestsellers-carousel\" data-genre=\"100000\"><p>Books will be dynamically loaded here based on the selected genre.</p></div></div>\n<!-- /wp:bestsellers/block -->', 'Test Biblio', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-01-17 08:41:58', '2025-01-17 08:41:58', '', 6, 'http://localhost:10016/?p=11', 0, 'revision', '', 0),
(13, 1, '2025-01-17 09:00:49', '2025-01-17 09:00:49', '<!-- wp:bestseller/block /-->', 'Test Biblio', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-01-17 09:00:49', '2025-01-17 09:00:49', '', 6, 'http://localhost:10016/?p=13', 0, 'revision', '', 0),
(14, 1, '2025-01-17 09:01:25', '2025-01-17 09:01:25', '<!-- wp:bestseller/block /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Test Biblio', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-01-17 09:01:25', '2025-01-17 09:01:25', '', 6, 'http://localhost:10016/?p=14', 0, 'revision', '', 0),
(15, 1, '2025-01-17 09:03:58', '2025-01-17 09:03:58', '<!-- wp:bestseller/block /-->', 'Test Biblio 2', '', 'publish', 'closed', 'closed', '', 'test-biblio-2', '', '', '2025-01-17 09:07:52', '2025-01-17 09:07:52', '', 0, 'http://localhost:10016/?page_id=15', 0, 'page', '', 0),
(16, 1, '2025-01-17 09:03:58', '2025-01-17 09:03:58', '<!-- wp:bestseller/block /-->', 'Test Biblio 2', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2025-01-17 09:03:58', '2025-01-17 09:03:58', '', 15, 'http://localhost:10016/?p=16', 0, 'revision', '', 0),
(17, 1, '2025-01-17 09:07:18', '2025-01-17 09:07:18', '', 'Test Biblio 2', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2025-01-17 09:07:18', '2025-01-17 09:07:18', '', 15, 'http://localhost:10016/?p=17', 0, 'revision', '', 0),
(18, 1, '2025-01-17 09:07:41', '2025-01-17 09:07:41', '<!-- wp:bestseller/block /-->', 'Test Biblio 2', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2025-01-17 09:07:41', '2025-01-17 09:07:41', '', 15, 'http://localhost:10016/?p=18', 0, 'revision', '', 0),
(19, 1, '2025-01-17 09:09:08', '2025-01-17 09:09:08', '<!-- wp:bestsellers/block {\"genre\":\"100000\"} -->\n<div class=\"bestsellers-block\"><h3>Bestsellers</h3><div class=\"bestsellers-carousel\" data-genre=\"100000\"><p>Books will be dynamically loaded here based on the selected genre.</p></div></div>\n<!-- /wp:bestsellers/block -->', 'Test Biblio', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-01-17 09:09:08', '2025-01-17 09:09:08', '', 6, 'http://localhost:10016/?p=19', 0, 'revision', '', 0),
(21, 1, '2025-01-22 20:12:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2025-01-22 20:12:29', '0000-00-00 00:00:00', '', 0, 'https://sprint-status.khanamir.me/?p=21', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_sprint`
--

CREATE TABLE `wp_sprint` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_sprint`
--

INSERT INTO `wp_sprint` (`id`, `name`, `description`, `start_date`, `end_date`, `created_at`) VALUES
(1, 'Re-Design Sprint 1', 'Set up and familiarize team with WordPress and Site.\n', '2024-08-06', '2024-08-19', '2025-01-16 06:05:54'),
(2, 'Re-Design Sprint 2', 'Deliver the outstanding tasks from Sprint 1 and new tickets from Sprint 2 while gaining a better understanding of the back end and setting up the book functionality for future tickets.\n', '2024-08-20', '2024-09-03', '2025-01-16 06:06:57'),
(3, 'Re-Design Sprint 3', 'Complete some global tickets (e.g. buttons) and finish book and spotlight related work\n', '2024-09-03', '2024-09-17', '2025-01-16 06:07:33'),
(4, 'Re-Design Sprint 4', 'To clear the current in progress tickets and to pull in more tickets (if needed)\n', '2024-09-17', '2024-10-01', '2025-01-16 06:08:08'),
(5, 'Re-Design Sprint 5', 'To clear the remaining tasks from the previous sprint and deliver the initial Search tickets + Default book / Author pages and initial Social Media Plugin work.\n', '2024-10-04', '2024-10-15', '2025-01-16 06:08:42'),
(6, 'Re-Design Sprint 6', 'Complete all outstanding work before pulling in new tickets from the prioritised backlog\n', '2024-10-17', '2024-10-29', '2025-01-16 06:16:02'),
(7, 'Re-Design Sprint 7', 'Complete the work from Sprint 6 and be cautious of what we bring into sprint 7, focusing on a single ticket at a time so we can ensure that we have a smooth transition from \\\"In progress\\\" through \\\"Code Review\\\", \\\"QA\\\" and \\\"UAT\\\".\n', '2024-10-29', '2024-11-12', '2025-01-16 06:16:35'),
(8, 'Re-Design Sprint 8', '\n', '2024-11-12', '2024-11-26', '2025-01-16 06:17:00'),
(9, 'Re-Design Sprint 9', '\n', '2024-11-26', '2024-12-10', '2025-01-16 06:17:21'),
(10, 'Re-Design Sprint 10 (+11)', 'Combined Sprint 10 and 11 (Which covers the Xmas Period)\n', '2024-12-10', '2024-12-24', '2025-01-16 06:17:56'),
(11, 'Re-Design Sprint 12', '\n', '2025-01-08', '2025-01-21', '2025-01-16 06:18:26'),
(12, 'Re-Design Sprint 13', 'Last Sprint Prior to Go-Live Date\n', '2025-01-21', '2025-02-04', '2025-01-21 19:33:58');

-- --------------------------------------------------------

--
-- Table structure for table `wp_sprint_hours`
--

CREATE TABLE `wp_sprint_hours` (
  `id` int(11) UNSIGNED NOT NULL,
  `sprint_id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `jira_id` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `minutes` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_sprint_issues`
--

CREATE TABLE `wp_sprint_issues` (
  `id` int(11) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `sprint_id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `jira_id` varchar(50) NOT NULL,
  `reported_by` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_sprint_issues`
--

INSERT INTO `wp_sprint_issues` (`id`, `description`, `sprint_id`, `ticket_id`, `jira_id`, `reported_by`, `type`, `created_at`) VALUES
(1, 'Hi @Abhyan Morkal  Thanks for this, great work so far thank you.\nJust one request (which is my fault as it wasn\'t added to the dev notes.) \nWe also currently have a file lib/const/colors.js\nYou\'ll see to arrays bgColorOptions and textColorOptions\nThese are imported into wordpress and formulate background colour selection in blocks. \nIf you could update the brand colours if needed here.\nAdd the new colours to the bgColorOptions \nUpdate the Black in textColorOptions\nDon\'t worry about removing any legacy colours - we can do this at a later stage. \n\n', 1, 1, 'DC-1616', 7, 0, '2025-01-22 20:13:38'),
(2, 'Hi @ritu jaiswal Thanks so much for sending this over. You can see my review here. penguin2024-node: DC-1612 : Redesign: book cover alt textclosed\n \nI’ve requested a change - Which is just to add the string ‘Book cover of’ to the start of all alt text. Sorry if this wasn’t clear in the ticket. \nSecondly you’ll see my comments regarding lint errors. If you run npm run lint on your feature branch it will produce a list of lint errors that just need to be fixed\nAny questions please don’t hesitate to ask. \n', 1, 4, 'DC-1612', 7, 0, '2025-01-22 20:22:43'),
(3, 'For All iphone and Samsung phone the footer links like “Privacy policy , cookies policy...” break\nthe footr. And text shifted to next line as show in below image thus it can lead to poor UI .\n', 1, 6, 'DC-1593', 4, 0, '2025-01-22 20:29:40');

-- --------------------------------------------------------

--
-- Table structure for table `wp_sprint_tickets`
--

CREATE TABLE `wp_sprint_tickets` (
  `id` int(11) UNSIGNED NOT NULL,
  `jira_id` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `estimates` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_sprint_tickets`
--

INSERT INTO `wp_sprint_tickets` (`id`, `jira_id`, `user_id`, `name`, `description`, `estimates`, `type`, `created_at`) VALUES
(1, 'DC-1616', 13, 'Redesign: update global colours', 'As Design\nI would like the global colours of the site to be updated\nSo they align with the new designs \nBackground\nWe have the lib/const/colors.js which contains an array of colours which are in use for WordPress for background colour selection etc. This ticket would be to check this file (And any others that may be needed by running a find and replace). For example, the current black font is being replaced with a dark grey. \nDesigns\nPRH Design System - Multi-site \nAcceptance Criteria\nEnsure that the colours in the current site are replaced (*Where applicable) with those in the designs\nDev notes\nColour variables are defined in /styles/core/_color.scss.\n\n', 1, 0, '2025-01-16 07:50:33'),
(2, 'DC-1617', 13, 'Redesign: update global fonts', 'As Design\nI would like the fonts of the site to be updated\nSo they align with the new designs\nBackground\nThis ticket covers a global update to the fonts in use across the site.\nDesigns\nhttps://www.figma.com/design/n1SAl7btV4wxqAgMuwCMop/%5BWIP%5D-PRH-Design-System---Multi-site?node-id=940-11753&t=Eok6oSyNCBXJqDcr-1\nAcceptance Criteria\nEnsure that the fonts within the designs are currently in use\nIf so, please comment within the ticket\nIf not, please ensure that these are updated to match the designs (Update the font family, sizes and weights etc).\nCreate Global styling doc *(As per @Mohd Amir Khan \'s suggestion).\nSee below “Dev notes” for more information\nDev notes \nFonts are embedded in /styles/_fonts.scss and basic type mixins are in /styles/core/_\nGeneral type mixins are in /styles/core/_type.scss\n\n', 3, 0, '2025-01-16 07:58:48'),
(3, 'DC-1623', 13, 'Redesign: Update Global Layout', 'As Design\nI would like an update to the global layout\nSo that we can ensure the new website width is inherited by the site and the blocks being created.\nBackground\nThis will be a relatively small ticket but needs to be done first so we can be assured the new blocks we are creating inherit these changes.\nDesigns\nhttps://www.figma.com/design/n1SAl7btV4wxqAgMuwCMop/%5BWIP%5D-PRH-Design-System---Multi-site?node-id=1085-1719\nAcceptance Criteria\nWe have a layout file with mixin (Located here: styles/core/_layout.scss) check and update based on the new design and updating the breakpoint.\nCheck and update the container article content (which sets the width of the page) - This will need to be updated so the new components created are the right size.\nDocument widths for container areas (Update if needed)\nCheck Breakpoints (we have 3 break points currently. The new design shows 4 but we only have 3 layout types in the designs) Currently the site will scale so this is probably fine?\nUpdate everywhere that uses the black to use the new dark grey\nAlso check fonts to make sure they are correct (*we assume they are).\nDev notes\nBreakpoint variables are set in /styles/core/_breakpoints.scss in the front end repo. sm, md and lg are the three main breakpoints.\nColour variables are set in /styles/core/_color.scss\nContainer width mixins are in /styles/core/_layout.scss.\nFonts are embedded in /styles/_fonts.scss and basic type mixins are in /styles/core/_type.scss\n\n', 5, 0, '2025-01-16 08:41:29'),
(4, 'DC-1612', 3, 'Redesign: book cover alt text', 'As a user, I’d like book covers across the site to have alt text so that I can understand what the image shows.\nBackground\nThis ticket ensures alt text automatically pulls through on all book covers feeding in from Biblio across the site.\nAlt text helps visually impaired people understand what the image shows and helps search engine bots understand image contents.\nThe alt text for each book should follow the format:\nBook cover of [Book Title] by [Author]\nThe Author logic for the alt tag should follow - contributor type = author, include all comma separated. \nNo override option is needed for this.\nAcceptance criteria\nEnsure that all book covers feeding into the site from Biblio have alt text following the correct format.\nFront End \nCurrently the alt text for any book cover which is handled in the BookImage component components/BookImage/BookImage.jsx\nYou will need to update the current BookImage to pass new data into the alt prop\nThe following page / components use BookImage where the alt tag will need to be changed with relevant data mentioned above.\npages/books/[...args].jsx\ncomponents/BookCard/BookCard.jsx\ncomponents/BookHighlightFull/BookHighlightFull.jsx\ncomponents/AuthorTab/BooksTab.jsx\nAll the data required for the alt is available already.\nAuthor logic should follow: contributor type = author, include all comma separated. You can find this logic currently in (components/Modal/Modal.jsx#Line101-122. Please note for the alt text this will just be a string.\nCurrent book cover alt text across site: \nPages:\nBook page (pages/books/[...args].jsx) - has alt tag - title \nAuthor page (pages/authors/[...args].jsx) - has alt tag - title \nBlocks:\nBookshelf (components/BookShelf/BookShelf.jsx) - not alt tag \nBook Highlight Full (components/BookHighlightFull/BookHighlightFull.jsx) - has alt tag - title \nbook Highlight inline (components/BookHighlightInline/BookHighlightInline.jsx) - no alt tag \nensure alt text is present for the following data scenarios\nsingle author title e.g. https://www.penguin.co.uk/books/305809/middle-england-by-coe-jonathan/9780241983683 expect Book cover of Middle England by Jonathan Coe\nsingle author, multiple contributor title e.g. https://www.penguin.co.uk/books/34302/nicholas-nickleby-by-charles-dickens-illus-hablot-k-brownephiz-edited-with--an-introduction-and-notes-by-mark-ford-chronology-by-stephen-wall/9780140435122 expect Book cover of Nicholas Nickleby by Charles Dickens (note here the secondary and tertiary role types are omitted)\nmultiple author title e.g. https://www.penguin.co.uk/books/442903/edinburgh-unlocked-by-various/9780241503232 expect Book cover of Edinburgh Unlocked by Ivo Graham, Sofie Hagen, Lou Sanders, Dane Baptiste, Jessie Cave & Bebe Cave, Jordan Brookes, Sheeps, Fern Brady, Amrou Al-Kadhi, Crystal Rasmussen, Giants, Jen Brister, Mo Omar, Chloe Petts, Leo Reich, Yuriko Kotani, Shelf, Anna & Helen, Michelle De Swarte, Jake Farrell, Kemah Bob, John Kearns, Christopher Bliss (note here that all authors should be present in exactly this order - use a diff tool to compare expected with actual)\nno author title but has editor (for example) e.g. https://www.penguin.co.uk/books/450970/garden-stories-by-authors-various/9781841596327 expect Book cover of Garden Stories (note here the omission of \' by \' in case of no authors)\nno contributor title e.g. https://www.penguin.co.uk/books/34911/the-death-of-king-arthur-by-trans-james-cable/9780140442557 expect Book cover of The Death of King Arthur (note again omission of \' by \' i.e. we don’t want to see \'The Death of King Arthur by \')\nensure coverage across the site\nPages\nBook page\nAuthor page\nSeries page\nSearch page\nBlocks\nBookshelf block\nBook Highlight Inline\nBook Highlight Full\n\n', 3, 0, '2025-01-17 18:29:28'),
(5, 'DC-1622', 2, 'Update Next.Js to Version 14', 'As Dev\nWe need to update Next.Js as the start of the project \nSo that we can ensure that the site is as future proof as possible\n \nBackground\nThe update itself is very small but the testing will be more extensive as it changes both the image component and link component. \n \nAcceptance Criteria\nUsing the migration module link below as guidance\nUpgrading: Codemods \nUpdate the Next.JS to 14\nInstall the Image and Link codemods to ensure existing Next Link and Image components still work.\nIn the existing v12 repo we use the next/future/image module from React in two components - this needs to be checked in CoverDisplay and ImageHeading and this will be automatically replaced if the Image Codemod is installed, so please check its working. The best place to check this is series pages (cover display) and image heading (which can be added to pages e.g. Christmas Campaign pages) which can be added for you on test / Staging. \nDo a quick check to ensure nothing has broken and no new errors display.\nWorth checking the backend for adding images etc too (but we do not foresee this causing any issues).\nEnsure that the we add the ‘LegacyBehavior’ prop to links.\nTesting\nthe images will need to be tested so please ensure that you compare the images on test / staging to production. \nThe links (internal and External) will need to be tested so please ensure that you compare the images on test / staging to production.  \n\n', 13, 0, '2025-01-17 18:31:43'),
(6, 'DC-1593', 14, 'Redesign: navigation', 'Designs\n Redesign Project - Navigation \nAcceptance Criteria\nAdd skelton for slide out menu \nFor the images - Static placeholders will be fine (For both Mobile and Desktop) - (The content card information and the backend functionality can come later in a separate ticket).\n \nDev Notes\nThe current Site Navigation can be found:\ncomponents/\n└── SiteHeader/\n    ├── AuthorDropdown/\n    ├── Dropdown/\n    ├── Nav/\n    ├── NavItem/\n    ├── SearchDropdown/\n    ├── SiteHeader.jsx\n    └── SiteHeader.module.scss\n\n', 5, 0, '2025-01-17 18:34:06'),
(7, 'DC-1546', 3, 'Redesign: accordion', 'As a user, I’d like information to be packaged in an accordion so that I can expand and contract sections according to my needs.\nBackground\nWe have an Accordion component on the current site and it’s possible this can be adapted for the new site.\nIn the back end, an editor should be able to add sections with headings and text and have this output on the front end. \nDesigns\nPRH Design System - Multi-site \nAcceptance Criteria\nUsing the existing component as a starting point, ensure that the accordion:\noutputs on the site in the format referenced in the designs (see Figma link + Dev Mode for styling guidelines)\nbe able to be added to all pages and posts without restriction\npreview as expected and output the correct visuals for the back end as will be seen on the front end.\nFront end\nEnsure that:\nthe accordion matches the designs\nthe layout of the accordion changes depending on the number of sections added and user device size (see designs)\na section expands correctly when opened, with the expected colour change and arrow change (see designs) and content below pushed down without causing issues with components further down the page\na section contracts correctly when closed, with content below returning to its original position\nmultiple sections can be open at the same time (By default, on page load, all sections are closed).\nBack end\nEnsure that:\nthe component heading (optional) is editable\nthe section headings and text are editable\nthere is no limit (min or max) to the number of sections that can be added.\nDev Notes\nFront end \nThe Accordion component is located at /components/Accordion\nBackend \nThe Wordpress Accordion block code can be found here: \nwp-content/\n└── plugins/\n    └── prhuk-core/\n        └── blocks/\n            └── accordion/\n                ├── attributes.json\n                ├── edit.jsx\n                ├── editor.scss\n                └── index.jsx\n', 5, 0, '2025-01-17 18:37:21'),
(8, 'DC-1592', 13, 'Redesign Footer', 'PRH Design System - Multi-site \n\nDev notesCurrent SiteFooter component can be found here: components/SiteFooter/SiteFooter.jsx\nThe two columns with menu links are managed by menus within wordpress (wp-admin/nav-menus.php) ie. \n\n\nconst menu1 = getMenuByLocation(menus, \'FOOTER_MENU_1\');\nconst menu2 = getMenuByLocation(menus, \'FOOTER_MENU_2\');\nIf these pages don’t exist, we could create the link names with empty urls fields until we know? \nThe newsletter component is located at  /Components/NewsletterSignup. It is currently using getNewsletterProps from /components/Page to set which newsletter to show depending on the page brand\n\n', 5, 0, '2025-01-17 18:39:09'),
(9, 'DC-1563', 2, 'Redesign: site-wide banner', 'As a Channel Lead, I would like to modify the site-wide banner so that I can promote more than one strategically important message or campaign at a time.\nBackground\nThis block already exists on the legacy site as the sitewide banner. This ticket would modify this block to allow us to show multiple strategic messages at a time.\nDesigns\nPRH Design System - Multi-site \nAcceptance Criteria\nThe site-wide banner should:\nmatch the designs (see Figma file and Dev Mode)\nbe able to be added to all pages and posts without restriction\npreview as expected and output the correct visuals for the back end as will be seen on the front end.\nFront end\nEnsure that:\na single banner displays without arrow indicators if only one banner is added in the back end\nif multiple banners are added in the back end, users see one banner at a time with arrow indicators \nwhen the text is clicked, it takes the user to the correct destination\non text hover, the expected hover styling (underline) can be seen (see designs)\nBack end\nEnsure that:\ntext can be added that is clickable to an internal page\ntext colour and background colour can be selected using a colour picker\na single banner can be added or multiple banners can be added\nthe banner(s) can be removed quickly and easily via the CMS\nan admin can indicate individual pages (or groups of pages using a wildcard) where the banner should not display.\nDev notes\nThe site banner data comes from the Site Promotions content type in Wordpress. \nThe site wide banner component is currently located at /components/PromoBar.\nThe PromoBar is imported into the Page component (/components/Page) for use on every page on the site.\n\n', 5, 0, '2025-01-17 18:41:04'),
(11, 'DC-1544', 2, 'Redesign: bento box - variation 1', 'As an editor, I would like to display content in an eye-catching, modular way to encourage onward journey.\nBackground\nThere are various bento boxes within the designs that have differing layouts. In the first phase we will focus on delivering one key variation - the 8-box.\nIf there’s time, we’ll then look at the 6-box variation later in phase 1 (https://prh-uk.atlassian.net/browse/DC-1607).\nThen we will monitor usage and gather editor feedback before deciding on which variations to prioritise in phase 2 (https://prh-uk.atlassian.net/browse/DC-1588).\nDesigns\nhttps://www.figma.com/design/n1SAl7btV4wxqAgMuwCMop/%5BWIP%5D-PRH-Design-System---Multi-site?node-id=2609-16393&t=SVR52e5XhlDsziU3-1 \nAcceptance Criteria\nThe bento box should:\noutput on the site in the format and styling detailed in the designs - see Figma link\nbe able to be added to all pages and posts without restriction\npreview as expected and output the correct visuals for the back end as will be seen on the front end.\nFront end\nEnsure that:\nthe 8-box bento box matches the designs (see Figma)\nheadings and images added output on the front end\nthe headings are easy to read and conform to accessibility standards\nthe block is responsive to the user’s device size (large, medium, small)\non hover, the arrow button appears and the gradient intensifies.\nBack end\nEnsure that:\nan editor can add a pre-made 8-box template to a post or page and add images, links and headings\nimages can be selected from the media library or uploaded to each box\nimage cropping should be available on all images (both from the media library and newly uploaded images due to changes in the images from square to vertical) via the image crop tool (https://prh-uk.atlassian.net/browse/DC-1591) \nif a link is desired (optional), editors should be able to search and select a page or post for each module, or paste a URL\na heading can be added to each box\nthe gradient is applied to the bottom of each image with text easily readable and conforming to accessibility standards.\nNotes\nIf it’s easier to insist that an editor must add both a desktop and mobile image for each box, please advise.\n\n', 8, 0, '2025-01-17 19:05:32'),
(12, 'DC-1565', 13, 'Redesign: banner card', 'As a user, I\'d like to see the most important content displayed in an eye-catching way so that it draws my attention easily.\nBackground\nThis ticket covers the work to create a banner card. The block needs to be able to pull in posts and pages from the site.\nIf one post or page is selected, the card would be static; if more than one is selected the block would turn into a slider.\nDesigns\n \nAcceptance Criteria\nThe banner card should:\noutput on the site in the format referenced in the designs (see Figma file and Dev Mode)\nbe able to be added to all pages and posts without restriction\npreview as expected and output the correct visuals for the back end as will be seen on the front end.\nNOTE: With the slider (On the backend) the visual will not show the slider. In Preview on the front end you will see this in a slider. \nFront end\nEnsure that:\nthe banner card displays as per the designs\nif one piece of content is added, a static card is shown\nif two or more pieces of content are added, a slider is shown with carousel indicators and dots denoting the user’s position within the slider\non clicking the buttons or sliding to change card, the dots denoting the position of the slider reflect the change\ninternal links open in the same tab while external links open in a new tab.\nBack end\nEnsure that:\nan editor can select a post or page by searching OR can indicate a URL (either internal or external)\non selection of internal content, the image and heading automatically populate\nthe image and heading can be overridden in the CMS\non indication of external content, an image and heading can be added by the editor.\n\n', 5, 0, '2025-01-17 19:07:03'),
(13, 'DC-1559', 13, 'Redesign: content card', 'As a user, I\'d like to see a range of content signposted on the site so I can decide where to go next in my journey based on my interests.\nBackground\nThere are multiple types of content card in the designs. This variation is the standard content card.\nThe content card can display as a single static card or as multiple cards in a grid or carousel.\nThere are four variations:\nno container\nprimary (white)\nsecondary (grey)\nprimary inverse (black)\nDesigns\nContent card:PRH Design System - Multi-site \nCarousel behaviour: PRH Design System - Multi-site \nAcceptance Criteria\nThe content card should:\noutput on the site in single or slider format\nmatch the designs (see Figma file and Dev Mode) \nbe able to be added to all pages and posts without restriction\npreview as expected and output the correct visuals for the back end as will be seen on the front end.\nFront end\nEnsure that:\nthe content card displays as per the designs, with the correct variation\nthe correct layout (grid, slider) displays based on the number of cards and the user’s device\nwhen cards are shown in a carousel, carousel indicators display\na user can browse the carousel using the carousel indicators OR by swiping\nan image, heading, subheading, content category and button are present and correct (if indicated) \ninternal links open in the same tab while external links open in a new tab\nif an external link, the button includes an external link icon\nthe content category should link to that category page (Check with Tom on note re nesting CSS to see if this is feasible)\nthe entirety of the card (apart from the pill - see above) is clickable.\nBack end\nEnsure that:\nan editor can choose between the different variations in the designs\nan editor can search for a page or indicate a URL (internal or external)\ndepending on the type of content selected to appear, different default props show or are automatically pulled through (see carousel behaviour designs), though these can be overridden in the CMS\na heading, subheading, image and button destination can be added manually (eg. for external links)\ncards can be added in a slider (default) or grid.\nQuestions\nShould we add the functionality for related content here? Or make this available automatically based on the pages taxonomy?\n \n\nDev notes \n', 5, 0, '2025-01-17 19:09:19'),
(14, 'DC-1576', 3, 'Redesign: event card', 'As an editor, I’d like to add event details to a page so fans know when and where they can see their favourite authors.\nBackground\nThis component will be mostly used on author pages to promote their events.\nWe have an event component on the existing site - ‘Event Details’ - so we may be able to use this as a starting point.\nThere are two variations in the designs:\nHorizontal - if only one event is specified\nVertical carousel - if more than one event is specified\nDesigns\n \nAcceptance criteria\nThe event card and carousel should:\noutput on the site in the format referenced in the designs (see Figma link + Dev Mode for styling guidelines)\nbe able to be added to all pages and posts without restriction\npreview as expected and output the correct visuals for the back end as will be seen on the front end.\nFront end\nEnsure that:\nthe event card and carousel match the designs\nthe horizontal layout displays if only one event is shown\nthe vertical layout displays if more than one event is shown\na single date OR the start and end date display depending on which is indicated\nthe event name and location text display correctly\nthe descriptive text, button and button CTA display correctly if indicated\nall button destinations open in a new tab if external, and the external link icon displays\nan event card is automatically suppressed if the end date has passed\ncarousel indicators are shown if in a slider\nusers can browse a carousel using the carousel indicators OR by swiping.\nBack end\nEnsure that an editor can add and edit:\na single date OR start and end date\nevent name\ndescriptive text (optional)\nlocation text (NB. not a hyperlink)\nbutton (optional) with destination URL\nbutton CTA\nNotes\nThe existing component has functionality specific to Eventbrite links. This is not required in the new component.\n \n\nDev notes\n', 5, 0, '2025-01-17 19:10:49'),
(15, 'DC-1585', 2, 'Redesign: page header', 'As a user, I’d like to see a clear page heading so I understand the page I’m on and the purpose it serves.\nBackground\nThis ticket covers the page header and all its variations:\nwith image (black background)\nwith logo (grey background)\nno image or logo (orange background).\nThe heading text should act as the page h1.\nDesigns\n PRH Design System - Multi-site \nAcceptance criteria\nThe page header should:\nmatch the designs (see Figma and dev mode)\npreview as expected and output the correct visuals for the back end as will be seen on the front end.\nFront end\nEnsure that:\nthe correct variation is shown as selected in the back end\nthe heading displays correctly as an h1\nthe image and slogan / subheading text display correctly (if added)\nat the indicated breakpoint, the layout stacks (see designs)\nmax line length for a header (across all 3 variations) is 2\nmax character length for the paragraph text is as follows\nwith-image variation = 208\nwith-logo variation = 104\njust-text variation = 208\n(any values exceeding these maximums are required to truncate. NOTE - it’s acceptable for truncation to happen mid-word)\nBack end\nEnsure that an editor can:\nselect between the three variations\nadd and edit the heading text\nupload an image or logo directly or select one from the media library if desired\nadd and edit a slogan (logo version) or subheading text (image and no image or logo version) if desired.\nEnsure that any branch created (for the Front and Back end have the same name to keep it together and ensure you submit both for the code review)\n\nDev NotesWe don’t currently have a Gutenberg block that works similar to this. \nPlease create a new block that allows the user to create the 3 variations show above. \nThe user will need to be able to \nselect banner background colour\nAdd heading text \nAdd subheading \nshow a image (to the right)\nOR select a logo (to show on the left)\nIf no image or logo is selected the output will look like option 3. \nFrontend\nYou’ll need to create the component/PageHeader with styles. \nYou’ll need to add the PageHeader you create to components/PostContent/PostContent.tsx\nBackend \nCreate your new blocks class file e.g wp-content/plugins/prhuk-core/inc/blocks/class-prhuk-core-block-page-header.php \nMake your block available to the prhuk-core plugin function file: /wp-content/plugins/prhuk-core/functions.php\nCreate your Gutenberg block code  e.g:\nwp-content/\n  plugins/\n    prhuk-core/\n      blocks/\n        page-header/\n          attributes.json\n          edit.jsx\n          editor.scss\n          index.js\nadd relevant data to graphql filter_block_data function: wp-content/plugins/prhuk-core/inc/graphql.php\nYou can look at our current blocks for reference. \n\n', 8, 0, '2025-01-17 19:12:37'),
(16, 'DC-1572', 13, 'Redesign: spotlight card (book variation)', 'As a user, I’d like to see the most important content merchandised in an eye-catching way so that it draws my attention easily.\nBackground\nThe designs have multiple variations of the spotlight card block. Due to the complexity of building this block, we have split it out into two parts (book and content - https://prh-uk.atlassian.net/browse/DC-1552). \nOn the current site we have a component called Book Highlight Full that it’s possible could be used as the starting point for this work:\nBooks can be searched for by title, author or ISBN\nFormat can be default or selected\nBook cover and title automatically pull in and link to the book page\nAuthor name automatically pulls in and links to author page\nOpening lines of book description are automatically pulled in and this can be overridden in the CMS\nIncludes a retailer drop-down with links pulled in automatically; the CTA and link destination can be overridden in the CMS\nAn editor can choose whether the block has a grey (default) or white background\n*On the new site, we would like to build on this functionality and update styling.\nThis ticket will allow a single, static card to be added.\nUltimately we would like to be able to add a carousel that includes a mixture of both content spotlight cards and book spotlight cards. This work will be carried out in https://prh-uk.atlassian.net/browse/DC-1628 after the completion of both this ticket and https://prh-uk.atlassian.net/browse/DC-1552. \nDesigns\nSpotlight book card - https://www.figma.com/design/n1SAl7btV4wxqAgMuwCMop/%5BWIP%5D-PRH-Design-System---Multi-site?node-id=3340-1830&t=Z7nFeZhnj1Zo8kKl-1 \nAcceptance Criteria\nThe book spotlight block should:\nmatch the designs (see Figma file and Dev Mode) \nbe able to be added to all pages and posts without restriction\npreview as expected and output the correct visuals for the back end as will be seen on the front end.\nFront end\nEnsure that:\nthe book spotlight card displays as per the designs\nbook jacket(s), title(s), author(s) and button(s) are present and correct (if indicated).\nThere are 2 colourways that need to be available: White (default) and black (see Dev notes)\nBack end\nEnsure that:\nan editor can choose between the different variations detailed in the designs\nan editor can search for a book using title, author or ISBN and choose a default or specific format to display\nan editor can choose to show\na retailer drop-down button (default)\nindividual retailer buttons (NEW) or\nindicate their own retailer link and button text\nbook title, author, book jacket, retailer links and link to book page automatically pull through based on the book selected\ntext automatically pulls through from the book description with a ‘read more’ link to the book page, but the text can be easily overridden or removed\nan editor can select from the colourways detailed in the designs (*White (default) and black)\na single, static card can be added.\n \n\nDev NotesThe BookHighlightFull covers a lot of functionality that the block requires.\nFront End:\ncomponents/BookHighlightFull/BookHighlightFull.jsx - duplicate this and rename book-spotlight-card\nyou’ll need to add you’e new component to the PostContent component to allow the block to be used in front end. components/PostContent/PostContent.tsx\nBackend:\nYou can find the backend component here, duplicate this as your starting point to create the book-spotlight-card block\n\n\nwp-content/\n└── plugins/\n    └── prhuk-core/\n        └── blocks/\n            └── book-highlight-full/\n                ├── attributes.json\n                ├── edit.jsx\n                └── index.jsx\nYou’ll also need to add a class file for the Block definition for example you can see how this is done for book-highlight-full\n\n\nwp-content/\n└── plugins/    \n  └── prhuk-core/        \n    └── inc/            \n      └── blocks/                \n        └── class-prhuk-core-block-book-highlight-full.php\n \nFront end\nMain differences are the scss and layout, and the slider functionality.\nBack end\nThe backend you can use book-highlight-full as a starting point and remove any attributes that would not be necessary for the Book Spotlight Card. For example attributes, for the book-spotlight-card you’ll probably need something like this.\n\n\n{\n  \"isbn\": {\n    \"type\": \"string\"\n  },\n  \"ctaText\": {\n    \"type\": \"string\"\n  },\n  \"background\": {\n    \"type\": \"string\",\n    \"default\": \"gray\",\n    \"enum\": [\n      \"gray\",\n      \"white\"\n    ]\n  },\n  \"manualDesc\": {\n    \"type\": \"text\"\n  },\n  \"url\": {\n    \"type\": \"string\"\n  }\n}\nSecondly you will need to allow the user in the backend to add a banner item to the block, similar to the bookshelf or video-carousel, you’ll want to add AppenderButton to the visual editor, to allow the user to do this. and then ensure the editing experience stacks the banners in the visual editor and then displays as a slider in the front end (You can do a global search in the wordpress repo for AppenderButton to see it’s usage in other blocks) Note the detail that only a max of 5 spotlight book cards can be added. \nYou will also need the add the ability for an editor to choose to show a retailer drop-down button (default), individual retailer buttons (NEW), indicate their own retailer link and button text or show no button at all (NEW)\n\n', 8, 0, '2025-01-17 19:18:40'),
(17, 'DC-1596', 1, 'Redesign: button component', 'As a user, I’d like buttons to display in a clear, consistent and intuitive way so it’s clear how I continue my journey and what action I should take.\nBackground\nOn the existing site we have:\nglobal button styling\nan existing button block with multiple variations\nmultiple blocks and pages which include a button.\nIn this ticket, we recommend creating a new button block, importing the existing styles and updating CSS to the new styling.\nWhen adding a button to a post or page, editors should be able to choose between the different options - primary, secondary, tertiary and retailer. Please note the drop-down option will be covered in DC-1632: Redesign: button component - drop-downDone\n after completion of this ticket. \nAll auto-generated buttons and manually added buttons should follow the same designs.\nDesigns\nPRH Design System - Multi-site \nAcceptance criteria\nThe button block should:\noutput on the site in the format and styling detailed in the designs - see Figma link\nbe able to be added to all pages and posts without restriction\nbe added to any block that accepts a button\npreview as expected and output the correct visuals for the back end as will be seen on the front end.\nEditors should be able to:\nchoose their desired style variation\noverride the button text\nindicate a destination URL\nif the URL is external, an external icon should show in the button.\nEnsure that the styling of legacy buttons (e.g. the ones not covered by blocks), if any, is updated.\nNotes\nThe mega menu should be handled separately within the ticket that\'s already in the sprint.\n \n\nDev notes Global button styles: styles/objects/button.scss\nAll the core button styles used across the site are come from this stylesheet. Due to the change in buttons its probably best to create new styles and then update these across components and the blocks.\nWordpress core/buttons\nWe currently have the core/button block directly from Wordpress.\n The first two button styles already present in wordpress are the \'Fill\' and \'Outline\' variants,  which could become Primary and Secondary.\n You can update these classes in styles/blocks/_buttons.scss (frontend) These are then pulled into the backend.\n Then you could register a new variant for the tertiary button style.\n How to register a new variation:\nplugins/prhuk-core/inc/block-variations.php - set up the variation, you\'ll see the button style variation I added for the current site.\nplugins/prhuk-core/functions.php - add the function to allow it to be available in the editor.\nFor this ticket because a lot of the new blocks that use buttons haven’t been worked on you can focus on updating the styles ready for these to be used in blocks, and then create a test page on stage environment to show the new button styles being used in the button block. \nThen as we work on new blocks we can import the new button styles. \n\n', 5, 0, '2025-01-17 19:20:56'),
(18, 'DC-1552', 13, 'Redesign: spotlight card (content variant)', 'As a user, I’d like to see the most important content merchandised in an eye-catching way so that it draws my attention easily.\nBackground\nThe designs have multiple variations of the spotlight card block. Due to the complexity of building this block, we have split it out into two parts (content and book - DC-1572: Redesign: spotlight card (book variation)Done\n). \nThis ticket will allow a single, static card to be added.\nA user should also be able to select one of two layouts:\nimage left aligned to the text\nimage right aligned to the text\nUltimately we would like to be able to add a carousel that includes a mixture of both content spotlight cards and book spotlight cards. This work will be carried out in DC-1628: Redesign: Spotlight SliderDone\n after the completion of both this ticket and DC-1572: Redesign: spotlight card (book variation)Done\n . \nDesigns\nSpotlight card - PRH Design System - Multi-site \nAcceptance Criteria\nThe content spotlight block should:\nmatch the designs (see Figma file and Dev Mode) \nbe able to be added to all pages and posts without restriction\npreview as expected and output the correct visuals for the back end as will be seen on the front end.\nFront end\nEnsure that:\nthe content spotlight card displays as per the designs\nan image, heading, content category, text and button are present and correct (if indicated) \ninternal links open in the same tab while external links open in a new tab\nif an external link is indicated, an external link icon should appear on the button\nthe content category pill should link to that category page\nthe entirety of the card (apart from the pill - see above) is clickable if a link is indicated.\nBack end\nEnsure that:\nan editor can choose between the different layout variations detailed in the designs\nan editor can search for a post or page, indicate a URL (internal or external) or choose not to link out from the card at all\nheading, subheading, image, content category and button destination (if internal) automatically pull through from any post / page indicated, but can be overridden in the CMS\na heading, subheading, image and button destination can be added manually (eg. for external links or content with no destination)\nan editor can select from the two colourways detailed in the designs.\n\nDev NotesThe ArticleCard covers a lot of functionality that the block requires. Use this component / block as a starting point by duplicating and creating the Content Spotlight Card.\nFront End:\nFile location: components/ArticleCard/ArticleCard.jsx - duplicate this and rename content-spotlight-card\nyou’ll need to add you’e new component to the PostContent component to allow the block to be used in front end. components/PostContent/PostContent.tsx\nBackend:\nYou can find the backend component here, duplicate this as your starting point to create the content-spotlight-card block\n\n\nwp-content/\n└── plugins/\n    └── prhuk-core/\n        └── blocks/\n            └── article-card/\n                ├── attributes.json\n                ├── edit.jsx\n                └── index.jsx\nYou’ll also need to add a class file for the Block definition for example you can see how this is done for article-card\n\n\nwp-content/\n└── plugins/    \n  └── prhuk-core/        \n    └── inc/            \n      └── blocks/                \n        └── class-prhuk-core-block-article-card.php\n \nFront end\nMain differences are the scss and layout.\nBack end\nThe backend you can use article-card as a starting point and remove any attributes that would not be necessary for the Content Spotlight Card. and add any missing attributes.\n\n', 8, 0, '2025-01-17 19:23:06'),
(19, 'DC-1557', 3, 'Redesign: anchor menu', 'As a user, I\'d like to see a menu of anchor links on a page so that I can easily navigate down to content I want to see.\nBackground\nThis ticket will allow editors to add a ‘menu’ block of anchor links to a post or page so that users can jump to a particular section further down.\nEditors should be able to add sections to the menu, edit the text and indicate where they should send users to.\nExamples of where this block has been used in the designs are the default author pages (https://prh-uk.atlassian.net/browse/DC-1610) and the corporate pages.\nDesigns\n\nhttps://www.figma.com/design/n1SAl7btV4wxqAgMuwCMop/%5BWIP%5D-PRH-Design-System---Multi-site?node-id=2480-259&t=9RdHf2VuaGTfQd1f-1 \nAcceptance Criteria\nWe already have some of this functionality from the current site so please use this as a jumping off point\nThe anchor menu block should:\nmatch the designs (see Figma file and Dev Mode) \nbe able to be added to all pages and posts without restriction\npreview as expected and display the correct visuals for the back end as will be seen on the front end.\nFront end\nEnsure that:\nthe anchor menu matches the designs\nthe tabs adapt to devices of different widths (see responsive behaviour outlined in the designs)\nwhen a user scrolls down past the anchor menu, it becomes sticky to the top of the screen\ntabs are centre aligned\nthere is fixed padding between tabs regardless of how many are added\nif tabs do not fit within the container for a given break point (eg. if there are too many tabs with longer text), tabs should overflow into a carousel\ncarousel indicators display if in a carousel\na user can scroll through the tabs using the carousel indicators OR by swiping\non load, only the right carousel indicator is available, and after it is pressed, the left becomes available. when a user has scrolled to the final option, only the left indicator is available. The carousel does not loop\nthe highlighted tab should change as a user scrolls through the different sections on the page.\nBack end\nEnsure that:\nthe anchor menu can be added or removed as needed\nthe tab names can be edited in the CMS\nan editor can indicate the block a tab should jump down to by giving the section heading a name (eg. latest-news) and then linking the tab to the destination (eg. https://www.penguin.co.uk/authors/165198/james-patterson#latest-news). Note that this is how it already works on the current site\n\n', 5, 0, '2025-01-17 19:24:56'),
(20, 'DC-1631', 2, 'Redesign: series card block', 'As a user, I’d like series information to be easily discoverable so I can decide what series to read next.\nBackground\nIn  we updated the styling of the existing series card, which appears on author pages and internal search results.\nIn this ticket we would like to turn the series card into a block so that editors can add it to all pages.\nDesigns\n \nAcceptance criteria\nThe series card should:\noutput on the site in the format referenced in the designs (see Figma file and Dev Mode)\nbe able to be added to all posts and pages without restriction\npreview correctly in the CMS\nmaintain the existing book cover logic that generates the image\nupdate automatically as and when series information is updated in Biblio.\nFront end\nEnsure that:\nthe information displayed for a series matches that in Biblio\nthe series card directs users through to the correct series page\nif multiple series cards have been added to a slider, carousel indicators display\na user can browse the slider using the carousel indicators OR by swiping\nBack end\nEnsure that:\nan editor can add a series card to a page and search for the desired series using a lookup\nwhen a series is selected, the correct information populates automatically, pulling through from Biblio\nmultiple series cards can be added in a carousel or grid format.\n \nDev Notes\nSeries cards are currently handled on the front end using the articleCard component. They are not currently handled in the WP backend.\nThe type prop ‘Series’ is passed to an ArticleCardsList in components/searchTab/SeriesTab.js, and this is passed down to the articleCard component. For series cards added via a WP block, the series type attribute will need to be set in the article Card block.\nOn the front end, if the component has a type prop set to series, a call is made to getSeriesView within a useEffect hook to get the works in the series.\nThe cover images are extracted from these works using getSeriesImages in /lib/utils/getSeriesImages.js. 3 cover images (if they exist) are fed to the coverDisplay component to display the series books within the card.\nThere is new functionality referenced in the Fimga - With the Grid format, we display a maximum of 6 series, if more are shown then we display a ‘load more’ button that allows a user to preview more series cards by the relevant author. If there are more than 6 series per author selected in block / on the author page - the load more button will append the remaining series to the grid.\n\n', 8, 0, '2025-01-17 19:26:26'),
(21, 'DC-1630', 3, 'Redesign: accordion Part 2 (Backend)', 'This is part 2 of the Redesign: accordion Part 2 ticket - the front end basic UI has been implemented. This ticket is to handle the accordion wrapper, 2 column layout / backend implementation. \n\nAs a user, I’d like information to be packaged in an accordion so that I can expand and contract sections according to my needs.\nBackground\nWe have an Accordion component on the current site and it’s possible this can be adapted for the new site.\nIn the back end, an editor should be able to add sections with headings and text and have this output on the front end. \nDesigns\nPRH Design System - Multi-site \nAcceptance Criteria\nUsing the existing component as a starting point, ensure that the accordion:\noutputs on the site in the format referenced in the designs (see Figma link + Dev Mode for styling guidelines)\nbe able to be added to all pages and posts without restriction\npreview as expected and output the correct visuals for the back end as will be seen on the front end.\nFront end\nEnsure that:\nthe accordion matches the designs - still need to implement the 2 column layout\nthe layout of the accordion changes depending on the number of sections added and user device size (see designs) \na section expands correctly when opened, with the expected colour change and arrow change (see designs) and content below pushed down without causing issues with components further down the page\na section contracts correctly when closed, with content below returning to its original position\nmultiple sections can be open at the same time (By default, on page load, all sections are closed).\nBack end\nEnsure that:\nthe component heading (optional) is editable\nthe section headings and text are editable\nthere is no limit (min or max) to the number of sections that can be added.\nDev Notes\nFront end \nThe Accordion component is located at /components/Accordion\nBackend \nThe Wordpress Accordion block code can be found here: \nwp-content/\n└── plugins/\n    └── prhuk-core/\n        └── blocks/\n            └── accordion/\n                ├── attributes.json\n                ├── edit.jsx\n                ├── editor.scss\n                └── index.jsx\nExtended Dev notes from first ticket \nWe agreed that we should avoid manipulating the DOM. We also agreed on your idea of being able to add sub children to and accordion wrapper / parent.\nyou can look at the video carousel as a starting point. This has the wrapping component that maps the children within.\nThis will allow you to be able to set the 2 column layout on the parent component.\nBackend files paths for guidance:\nwp-content/plugins/prhuk-core/blocks/video-carousel\nwp-content/plugins/prhuk-core/blocks/video-carousel-video-youtube\nFront end file paths for guidance:\ncomponents/PostContent/PostContent.tsx - line 509 / 540 covers how the video carousel is implemented in the PostContent component.\ncomponents/VideoCard/\ncomponents/VideoSlider/\n', 5, 0, '2025-01-17 19:27:55'),
(22, 'DC-1632', 1, 'Redesign: button component - drop-down', 'As a user, I’d like buttons to display in a clear, consistent and intuitive way so it’s clear how I continue my journey and what action I should take.\nBackground\nOn the existing site we have:\nglobal button styling\nan existing button block with multiple variations\nmultiple blocks and pages which include a button.\nIn DC-1596: Redesign: button componentDone\n we updated styling and created a block for the non drop-down button options. In this ticket, we will address the drop-down options. When adding a button to a post or page, editors should be able to choose between the different options - primary and retailer link. \nAll auto-generated buttons and manually added buttons should follow the same designs.\nDesigns\nPRH Design System - Multi-site \nAcceptance criteria\nThe button block should:\noutput on the site in the format and styling detailed in the designs - see Figma link\nbe able to be added to all pages and posts without restriction\nbe added to any block that accepts a button\npreview as expected and output the correct visuals for the back end as will be seen on the front end.\nEditors should be able to:\nchoose their desired style variation\noverride the button text\nindicate destination URLs\nif a URL is external, an external icon should show in the button.\nEnsure that the styling of legacy buttons (e.g. the ones not covered by blocks), if any, is updated.\nNotes\nThe mega menu should be handled separately within the ticket that\'s already in the sprint.\n \n \n\nDev NotesGlobal button styles: styles/objects/button.scss\nAll the core dropdown button styles used across the site are come from this stylesheet. You can update / add your styling for the redesign dropdowns.\nThere are currently a few dropdown buttons used in blocks:\ncomponents/Dropdown - This is the main dropdown component that is utilised across other components\ncomponents/ShopNow  - Imports the Dropdown and the styles are imported from  styles/objects/button.scs within the components module.scss\n All other dropdowns are custom for example mega menus. Etc.\n\nSecondly you\'ll need to create a Dropdown Gutenberg block. To allow an editor to create their own dropdown buttons.\nEditing experience:\n Closed state of the dropdown should be visible in the visual editor, where the button text is editable\nThe dropdown button will not need to be interactive in the visual editor (ie open / closed state)\nThe list items can be added via the block sidebar menu.\nEditor can select from the 2 colour variations. \n\n', 8, 0, '2025-01-17 19:29:34');
INSERT INTO `wp_sprint_tickets` (`id`, `jira_id`, `user_id`, `name`, `description`, `estimates`, `type`, `created_at`) VALUES
(23, 'DC-1582', 13, 'Redesign: book highlight', 'As a user, I’d like to see books of note showcased so I can decide whether I’d like to buy it.\nBackground\nOn the current site we have a block called Book Highlight Inline that could possibly be used as the starting point for this work:\nBooks can be searched for by title, author or ISBN\nFormat can be default or selected\nBook cover, title and author name automatically pull in and link to the book page\nIncludes a retailer drop-down with links pulled in automatically; the CTA and link destination can be overridden in the CMS\nIn the settings an editor can choose whether the title and author name display on the front end\nTo add text, an editor can include this within the block itself OR they can add it separately as paragraph text so the text wraps around the book block.\nOn the new site, we would like to build on this block functionality and update styling.\nA user should also be able to select one of two layouts:\nbook jacket on top (vertical)\nbook jacket aligned to the left (horizontal).\nDesigns\nDesign system: PRH Design System - Multi-site \nPlease note: the 3D version covered in the designs should be ignored as it is descoped for this ticket.\nAcceptance criteria\nThe book highlight should:\noutput on the site in the format and styling detailed in the designs - see Figma link\nbe able to be added to all pages and posts without restriction\npreview as expected and output the correct visuals for the back end as will be seen on the front end.\nFront end\nEnsure that:\nthe book jacket, title, author, text and buttons are present and correct (if indicated) \nbook highlight blocks can be added within the column component; if, for example, three columns are added, these will stack on mobile / tablet\nBack end\nEnsure that:\nan editor can choose between the horizontal and vertical variations\nan editor can search for a book using title, author or ISBN and choose a default or specific format to display\nan editor can choose to show a retailer drop-down button, indicate their own retailer link and button text or show no button (POSSIBLY NEW).\n \n\nDev Notes The BookHighlightInline covers a lot of functionality that the block requires. \nWe could edit this block and perhaps rename to book-highlight / BookHighlight\nFront End:\ncomponents/BookHighlightFull/BookHighlightInline.jsx \nThe main differences for the front end of this component are the UI and new variations for text position. \nBackend:\nYou can find the backend component here:\n\n\nwp-content/\n└── plugins/\n    └── prhuk-core/\n        └── blocks/\n            └── book-highlight-inline/\n                ├── attributes.json\n                ├── edit.jsx\n                └── index.jsx\nText position variations you’ll need to add these style variations to allow the editor to be able to show their text either below the Book image or to the right of the book image. \n\n', 5, 0, '2025-01-17 19:32:31'),
(24, 'DC-1562', 3, 'Redesign: tabbed container', 'As a user, I’d like to tab between groups of themed books so I can browse recommendations according to my interests without scrolling endlessly.\nBackground\nIn the designs the tabbed container is used to move between different curated bookshelves.\nThe bookshelf already exists on the legacy site and will be adapted in \nhttps://prh-uk.atlassian.net/browse/DC-1542.\nThis ticket creates a Gutenberg block for the tabbed container and should be worked on after completion of the above ticket.\nThe tabbed container is found on the default book page (\nhttps://prh-uk.atlassian.net/browse/DC-1608), and can also be added to any manually curated pages within the CMS such as content hubs or genre pages.\nDesigns\n\nhttps://www.figma.com/design/n1SAl7btV4wxqAgMuwCMop/%5BWIP%5D-PRH-Design-System---Multi-site?node-id=2988-50837&t=9p7aGCxiFftLLKfB-1 \nAcceptance Criteria\nThe tabbed container should:\noutput on the site in the format referenced in the designs (see Figma file and Dev Mode)\nbe able to accommodate the bookshelf block, carrying over all bookshelf block functionality (buttons options, automation)\nbe able to be added to all pages and posts without restriction\ndisplay on the default book page (\nhttps://prh-uk.atlassian.net/browse/DC-1608)\npreview as expected and display the correct visuals for the back end as will be seen on the front end.\nFront end\nEnsure that:\na bookshelf shows in grid or inline layout when used within the tabbed container  \nwhen navigating between tabs, the pill styling should change to indicate which tab is selected\nif a URL destination has been indicated, a button displays correctly underneath the bookshelf within a tab\nthe URL destination and button CTA are specific to each tab\npills overflow into a slider with carousel indicators if they do not fit on one line\non load, only a right carousel indicator displays. When a user navigates to the right a left indicator is added. When a user reaches the far right, the right indicator is removed and only the left indicator displays\nusers can browse a slider of pills by using carousel indicators or by swiping.\nBack end\nEnsure that:\na minimum of two and a maximum of five tabs can be added\ntab labels can be added and edited\na minimum of two and a maximum of eight books can be added within a tab\nbooks can be selected in the same way as a bookshelf - both manually and automatically\na white or grey background colour can be selected\nwithin each tab, an editable button can be added underneath the books that links out to a URL destination\nthe destination can be indicated by pasting a URL or searched for using a lookup\nthe button URL destination and CTA can be different in each tab.\n\n', 8, 0, '2025-01-17 19:33:41'),
(25, 'DC-1580', 2, 'Redesign: series card styling', 'As a user, I’d like series information to be easily discoverable so I can decide what series to read next.\nBackground\nOn the current site we have a series tab on author pages that displays the series associated with each author (eg. Malorie Blackman). Series are also discoverable through internal search (eg. Search Results).\nEach series is represented by an image generated by logic originally developed in DC-17: Series Page - Series cards image displayDone\n, along with the series title and the number of books in the series. The card links to the relevant series page.\nThis ticket will cover the restyling of the card for the new site, but we would also like to turn it into a block so that editors can add it to all pages - not just the author pages. The block work will be covered in DC-1631: Redesign: series card blockDone\n .\nDesigns\nPRH Design System - Multi-site \nAcceptance criteria\nThe series card should:\noutput on the site in the format referenced in the designs (see Figma file and Dev Mode)\nmaintain the existing book cover logic that generates the image\ndisplay on the series section on author pages automatically for all authors which have more than one series associated with them\ndisplay as internal search results for series\nupdate automatically as and when series information is updated in Biblio\nthe series card directs users through to the correct series page.\nDev Notes\nSeries cards are currently handled on the front end using the articleCard component. They are not currently handled in the WP backend.\nThe type prop ‘Series’ is passed to an ArticleCardsList in components/searchTab/SeriesTab.js, and this is passed down to the articleCard component. For series cards added via a WP block, the series type attribute will need to be set in the article Card block.\nOn the front end, if the component has a type prop set to series, a call is made to getSeriesView within a useEffect hook to get the works in the series.\nThe cover images are extracted from these works using getSeriesImages in /lib/utils/getSeriesImages.js. 3 cover images (if they exist) are fed to the coverDisplay component to display the series books within the card.\nThere is new functionality referenced in the Fimga - With the Grid format, we display a maximum of 6 series, if more are shown then we display a ‘load more’ button that allows a user to preview more series cards by the relevant author. If there are more than 6 series per author selected in block / on the author page - the load more button will append the remaining series to the grid.\n\n', 8, 0, '2025-01-17 19:34:53'),
(26, 'DC-1629', 2, 'Redesign: wrapper block', 'As an editor, I’d like to change the background colour of a page section to help divide up content visually.\nBackground\nIn the designs there are some pages where the background colour has been changed for a section of the page.\nTo do this, we would like to create a wrapper block with colour option settings. \nIf a component is inside a wrapper block, we\'ll override the CSS to show the alternative background / font colours for that component depending on the colour of the wrapper.\nDesigns\nPRH Design System - Multi-site \nAcceptance criteria\nEnsure that:\nthe wrapper block can be added to all pages and posts without restriction\nblocks can be added within the wrapper block on all pages and posts without restriction\nan editor can indicate where the wrapper block should begin and end on a page\nthe margins around content within the block follow the break point guidance outlined in Figma\nthe wrapper block itself is a fluid container that should be the full width of the page\nthe colour options available to select from in the CMS differ according to the user’s permission level - see below.\nAn editor should be able to choose from:\nprimary (white)\nsecondary (grey)\nprimary-inverse (black)\nPenguin orange\nPuffin yellow\nLadybird red\nVintage red.\nAn admin should be able to select a custom colour using a colour picker.\n', 5, 0, '2025-01-17 19:36:08'),
(27, 'DC-1542', 2, '  Redesign: bookshelf', 'As a user, I’d like to see a row of books so I can see a range of recommendations grouped by a theme.\nBackground\nThis ticket covers the entire bookshelf component with the book title, author name, optional buy buttons and optional description.\nA bookshelf component already exists on the current site, and we intend to adapt this and update styling. The existing options and behaviours should be preserved in the new bookshelf, but with the addition of:\nOptional introductory description - between the heading and book jackets, as per the designs\nOptional book description - underneath each title\nSwitch default layout - from grid to slider.\nTo be noted\nThe existing bookshelf includes branding options for Puffin and Ladybird. This is something we may look at during phase 2 depending on stakeholder feedback, but for now this will be removed and the bookshelf should follow Penguin brand guidelines\nOn the current site, we have the quick view modal activated on the homepage, author pages and genre pages. Between now and phase 1 launch, we plan to A / B test optimisations to this which may ultimately change the design. As we don’t know how long these tests will run for, we should assume that phase 1 will carry across the existing modal with the only amends being to the button styling (as per the Figma designs)\nFollowing completion of this ticket, DC-1562: Redesign: tabbed containerDone\n will cover the tabbed bookshelf option.\nDesigns\nPRH Design System - Multi-site \nAcceptance Criteria\nThe bookshelf block should:\noutput on the site in the format referenced in the designs (see Figma link + Dev Mode for styling guidelines)\nbe able to be added to all pages and posts without restriction\npreview as expected and output the correct visuals for the back end as will be seen on the front end.\nFront End\nEnsure that:\nthe book jacket, title, author and buy now buttons are present and correct (if added) \nview more button is present (if selected)\nbookshelf title is visible (if indicated)\nbookshelf introductory description is visible (if indicated)\nbook copy displays (if added)\nthe correct layout (slider, grid, inline) displays\nif slider layout is selected, carousel controls do not show if there are only two books (mobile) four books (tablet) or six books (desktop)\nthe carousel can be controlled by users using the carousel controls AND by swiping\nwhen using the carousel controls or swipe functionality, the entire shelf updates with the next set of books in the shelf, rather than moving one by one. If there aren’t enough additional titles to show an entirely new set, the remaining titles should be shown in addition to the last titles in the previous set\nthe swipe movement matches that of the existing site\nthe quick view button appears on titles that appear on a page where the modal is activated i.e.\nhomepage\nauthor page\ngenre page\nthe quick view button by implication does not appear on a page where the modal is not activated e.g. book page\nany bookshelves that previously used Puffin or Ladybird branding now follow the same branding as Penguin bookshelves.\nBack End\nModify the existing bookshelf component (which can already draw in book covers, titles and author)\nMove the default bookshelf layout from grid to slider to align with the new designs, but keep grid and inline as additional options\nRemove the ability to choose between Penguin, Puffin and Ladybird branding.\nEnsure that:\nit can output the correct visuals for the back end as will be seen on the front end\na title can be added, amended and removed\nthere is no limit to the number of titles that can be added. For testing, I’ve never seen a bookshelf with more than ~25 titles in it.\nthe order of titles in the bookshelf can be edited\nan introductory description can be added and amended\noptional copy can be added underneath each book manually (ie. not feeding from Biblio)\n \nDev notes\nThe bookshelf block in WP is currently composed of two blocks: bookshelf and bookshelf-inline. \nAs the new release functionality is not required, you can remove any useage of the newReleaseBookshelf code. \nYou can move all bookshelf functionality to bookshelf-inline and remove the parent bookshelf wrapper block / container and then rename bookshelf-inline to bookshelf. \nThe SectionHeading block could be included in bookshelf-inline rather than being imported into the block. (not least because two api calls are needed to check if books exist before hiding the section heading or books if they don’t). \nAlso as we need the highlight text functionality you could allow the use of the rich text core component to allow this. \nQuick View modal buttons - you’ll need to import the new button style.\n Useful Front end file paths: \ncomponents/BookShelf\ncomponents/BookCard\nUseful Backend file paths: \nwp-content/plugins/prhuk-core/blocks/bookshelf - you can move this file\nwp-content/plugins/prhuk-core/blocks/bookshelf-inline - this can be renamed to bookshelf\nwp-content/plugins/prhuk-core/inc/graphql.php - can amend switch case for bookshelf in filter_block_data() function (line 155 will become bookshelf, lines 179-183 for old bookshelf can be removed.  \n', 8, 0, '2025-01-17 19:37:35'),
(28, 'DC-1627', 2, 'Re-Design: Update Wordpress plugin and theme Node.js to version 20', 'As Dev\nI would like to update the node.js to v20\nso that the frontend and backend node versions are in sync and we don\'t need to do this later and have unexpected errors on the site\nBackground\nOn doing the Next.Js update the devs have noted a need to update the Node.Js version to V20. \nAcceptance Criteria \nUpdate plugin and theme Next.Js to v20 \nEnsure that the update causes no errors\n\n', 21, 0, '2025-01-18 10:53:59'),
(29, 'DC-1560', 13, 'Redesign: logo card', 'As a user, I\'d like to see journey options clearly signposted so I can select the best option for me. \nBackground\nIn the designs, the logo card has been used to show a range of different destinations to a user - for example:\npopular genres or series\na range of independent retailers\nthe different imprints or staff members within a publishing house area\nauthor pages we want to spotlight.\nThese can be shown in a slider (default) or grid layout.\nThe block should allow editors to add:\nan image\na heading\na link destination (internal or external)\na subheading (optional)\na button (optional).\nOn the current site, the person card, the company card and the article cards list are the most similar blocks to the logo card in terms of usage.\nDesigns\nPRH Design System - Multi-site \nAcceptance Criteria\nThe logo card should:\nmatch the designs (see Figma file and Dev Mode) \nbe able to be added to all pages and posts without restriction\npreview as expected and output the correct visuals for the back end as will be seen on the front end.\nFront end\nEnsure that:\nthe image, heading, subheading and button display correctly (if selected)\nclicking the card takes the user to the expected destination\nthe destination URL opens in a new tab if external\nthe chosen layout (wide or circle) displays correctly\nthe width of the card is determined by the break point\ncarousel indicators display if cards are in a slider\nusers can browse the slider using the carousel indicators OR by swiping\nBack end\nEnsure that editors can:\nchoose between the two layout options (wide or circle)\nadd multiple cards in a row\nupload an image or select from the media library\nadd and edit a heading, link destination (internal or external), subheading (optional) and button (optional)\nchoose between grid and slider layout\nDev Questions\nDo we want to break this town into multiple smaller tickets?\nAnswer - Yes. See below\n1 x Person card (Which already exists)\n1 x everything else here\n\n', 8, 0, '2025-01-18 11:05:11'),
(30, 'DC-1590', 13, 'Redesign: introduce social media plugin', 'As an editor, I’d like to pull in posts from social media platforms to give users a sense of community, discussion and buzz around our brand and books.\nBackground\nThere are two different ways we’d like to be able to display social posts:\nHighlight company channels (eg. Penguin or Vintage) and have every post pulled in automatically\nHighlight specific posts (eg. on a campaign page for a particular title) and be able to pull them in manually by the social post ID / URL. Please note, if we decide we shouldn’t allow editors to do this but it is still an option available within the plugin, we would need to be able to lock it down so they can’t do it even if the functionality technically exists.\nThe designs show social media posts within blocks. For this to happen we will likely need to use a plugin to manage this. \nIn \nhttps://prh-uk.atlassian.net/browse/EQ-769Can\'t find link  we investigated ways to pull in social media posts so we can display them on the site.\nThe recommendation was to use a plugin Smash Balloon.\nSteps to set up Smash Balloon social post feed:\nInstall and activate the Smash Balloon Social Post Feed plugin.\nConnect your social media accounts through the plugin settings.\nCustomise the feed display options including layout, style, and moderation settings.\nEmbedding options\nShortcodes: shortcodes for embedding feeds in posts, pages, or widgets. Options to customise the feed display directly within the shortcode.\nGutenberg Blocks: Add a social feed block to your post or page in the Gutenberg editor.\nDesigns\nPRH Design System - Multi-site \nAcceptance criteria\nInstall the Smash Balloon plugin and ensure:\nthe component outputs on the front end as per the designs\nthe component can be added to all pages and posts without restriction\nposts can be pulled in automatically or by post ID / URL\nthe component heading and introductory text can be edited\npreviews function as expected, showing the correct visuals for the back end as will be seen on the front end.\n\n', 8, 0, '2025-01-18 11:06:55'),
(31, 'DC-1613', 2, 'Redesign: bookshelf numbering', 'As a user, I’d like to see bestselling books numbered so that I know their position in the bestsellers charts.\nBackground\nThis ticket will allow editors to add numbers to books in a bookshelf ( DC-1542: Redesign: bookshelfDone\n) so that users can see the order of books in the sales charts.\nIt was confirmed in a previous session that this would be done in CSS.\nNumbers should be applied in ascending order only.\nDesigns\nSee ‘with roundel’ section - PRH Design System - Multi-site \nBackground\nEnsure that:\neditors can add numbers to a bookshelf by ticking a box in the CMS\nnumbers can be applied in either slider, grid or inline layout\nonly ascending numbers can be added.\n\n', 5, 0, '2025-01-18 11:08:02'),
(32, 'DC-1635', 5, 'Redesign: remove company menu from company pages', 'As an editor, I’d like to optimise the page template on company pages to create a better user experience.\nBackground\nOn the current site, the Company Page template uses two types of menu:\na secondary navigation across the top of the page content, underneath the breadcrumb (all break points)\na left-hand menu (large, medium break points) or drop-down menu under the secondary nav (small break point).\nOn the new site, navigation between different company pages will be handled by blocks (such as the anchor menu and bento box).\nWe would like to remove the existing menus at this point to clean up the page template, bring the content container in line with the rest of the site and make it easier to test the blocks we’re creating.\nAcceptance criteria\nEnsure that on company pages:\nthe secondary navigation is removed\nthe left-hand menu (large, medium) and drop-down menu (small) are removed\ncontent added uses the full width of the page\nDev notes: \nIn pages/company/[...slug].jsx\nYou will need to remove CompanyMenu component\nAs well as the SidebarMenu\nThen in: pages/company/company.module.scss you\'ll need to adjust the css based off of the removal of the sidebar. E.g remove .sidebar css and change .content to be full width.\n\n', 5, 0, '2025-01-18 11:09:20'),
(33, 'DC-1610', 5, 'Redesign: default author page - P1', 'As a user, I’d like to go to a single destination for my favourite author so I can find out about their latest books and content.\nBackground\nOn the current site, the majority of authors have a default author page, populated by:\nBiblio - books, series, biography, social and web links\nthe CMS - articles (through tagging)\nThis content is split across automatically generated tabs.\nThis ticket covers the redesign of the default author page and will bring the content from the separate tabs onto one page, using jump links to navigate down to different sections. \nHeading - the author’s name (h1)\nAnchor menu - items included in the menu are determined by the content further down the page\n‘Latest release’ - spotlight book card - follows current author page logic of most recent release OR upcoming release (within next 90 days)\nthe description displayed for this ‘Latest release’ is required to change to prefer Biblio TI Sheet over ONIX Description (this is because the available space is less in the new designs and the TI Sheet value will give a cleaner look). Therefore the preference should be as follows:\nPenguin Web Description (text type ID 1030), ELSE if not available\nSynopsis / TI Sheet (text type 9), ELSE if not available\nONIX Description (text type 200), ELSE if not available\nno description is displayed\n‘Praise for book title’ - maximum three reviews pulling from Biblio\n‘Books by author\' - bookshelf (and \'view more’ button if more than six) showing six books, excluding the latest release\n‘Series by author’ - spotlight content card (if one series), series cards (if more than one). Series cards either carousel or have ‘load more’ option if more than six (desktop, tablet) or three (mobile) - dev to advise on which option is easier / quicker\n‘About author’ - author card, including social and web links\n\'Discover more\' - content cards showing tagged pages and articles relating to this author\nDesigns\nRedesign Project - Author hubs \nAcceptance criteria\nDefault author page matches the designs\nLinks in the anchor menu jump down to the correct section of the page\nIf an author doesn’t have a particular type of content, this section does not show on their page or in the anchor menu\nBookshelf logic is carried over from the current site\nIf an author has one series, a spotlight content card displays linking to the series page\nIf an author has more than one series, series cards display linking to each series\nArticle tagging logic is carried over from current site\nLatest book logic is carried over from the current site, with the exception of the book description text - see above hierarchy and below decision table\nensure also that text type hierarchy on both book and series pages remain intact\nData Scenario\nPenguin Web Description (1030)\nTI Sheet (9)\nONIX Description (200)\nPrefer ...\n1\nexists\nexists\nexists\nPenguin Web Description\n2\ndoes NOT exist\nexists\nexists\nTI Sheet\n3\ndoes NOT exist\nexists\ndoes NOT exist\nTI Sheet\n4\ndoes NOT exist\ndoes NOT exist\nexists\nONIX Description\n5\ndoes NOT exist\ndoes NOT exist\ndoes NOT exist\nno description to display\nNotes\nIt will be possible to override the content on an author page. This will be covered in a separate ticket.\n', 13, 0, '2025-01-18 11:10:31'),
(34, 'DC-1628', 13, 'Redesign: Spotlight Slider', 'As a user, \nI’d like to see the most important content merchandised in an eye-catching way \nso that it draws my attention easily.\nBackground\nThis ticket covers the ability to add both the Redesign: spotlight card (book variation) and Redesign: spotlight card (content variant) into a slider and allow them to display in a sequence determined by the editor. \nThis ticket cant be worked on before DC-1552: Redesign: spotlight card (content variant)Done\n  or DC-1572: Redesign: spotlight card (book variation)Done\n  as these must both exist for this to be available to the block.\nDesigns: \nSpotlight Card Carousel - PRH Design System - Multi-site\nAcceptance Criteria\nThe spotlight slider should:\nOutput on the site in the format and styling detailed in the designs - see Figma link above\nBe able to be added to all pages and posts without restriction\nPreview as expected and output the correct visuals for the back end as will be seen on the front end.\nEnsure that;\nIf two or more cards are added (Book Variation and/or content variation) a slider is shown with carousel indicators and dots denoting the user’s position within the slider\nA title can be added to the slider and displays on the front end\non clicking the buttons or swiping to change card, the dots denoting the position of the slider reflect the change\nBoth variations need to be selectable from the backend (so you can reference either a book or content \nNote:\nThe functionality from DC-1552: Redesign: spotlight card (content variant)Done\n and DC-1572: Redesign: spotlight card (book variation)Done\n should remain. Its advisable that we check that this functionality persists. \n', 8, 0, '2025-01-18 11:11:37'),
(35, 'DC-1608', 3, 'Redesign: default book page', 'As a user, I’d like to see book information displayed in a clear way so I can decide if I want to buy the book.\nBackground\nThis ticket covers restyling of the default book page. Override functionality will be covered in a separate ticket.\nOn the default book page, all information feeds from Biblio except the author photo which feeds through from the author page.\nThe different sections show or hide depending on what information exists in Biblio for each title, so there are a number of designs to show the different possible layouts.\nDesigns\nPlease advise in refinement if another design variation is required.\nMost common layout: [Redesign] Book page \nMost common layout with book synopsis expanded: [Redesign] Book page \nOne drop-down expanded: [Redesign] Book page \nBoth drop-downs expanded: [Redesign] Book page \nNo reviews: [Redesign] Book page \nWith series: [Redesign] Book page \nNo author image: [Redesign] Book page \nNo author image or biography: [Redesign] Book page \nMultiple authors: [Redesign] Book page \nNo authors: [Redesign] Book page \nAcceptance criteria\nUsing the current book page as a starting point, ensure that:\nthe default book page matches the designs\nthe expected modules display based on what information is available in Biblio\nthe series spotlight only displays if there is an approved series description available in Biblio\nthe layout updates automatically when changes to book information are made in Biblio\nwhen the book synopsis, book details, all editions or author name sections are expanded or collapsed, the content below is pushed down or brought up as per the designs\nTabbed container logic\nif there are more titles in the same series, show first four in ‘More from this series’ tab and a button directing to the series page\nif there are more titles by same author, show latest four in ‘More from this author’ tab and a button directing to search result of author’s books\n‘Related titles’ tab to show the four latest titles from same genre\nif not part of a series, and no additional titles from the author, only show related titles.\n\n', 13, 0, '2025-01-18 11:12:57'),
(36, 'DC-1597', 5, 'Redesign: column component - P1', 'As a user, I’d like to see content organised in a clear way so that it’s easy to navigate.\nBackground\nThis ticket will cover styling updates to the column block that exists on the current site.\nThe existing block:\nallows an editor to choose between different column splits (33/33/33%, 50/50%, 33/66%, 66/33%, 100%, 25/50/25%)\nallows an editor to select the container colour and text colour using a colour picker\nallows an editor to add blocks within containers\nIn this ticket, we need to:\ncreate primary, secondary, primary-inverse container options\ncreate option with rounded edges.\nDesigns\nPRH Design System - Multi-site \nAcceptance criteria\nEnsure that the column block:\nmatches the designs\ncan be added to all pages and posts without restriction\npreviews correctly in the CMS\nFront end\nthe chosen styling option displays (no container, primary, secondary, primary-inverse or custom colour) - NEW\nthe chosen column split % displays\nthe behaviour across the different break points reflects the designs\nif one column is left empty, the height of the column on mobile should not show a big gap - it should be the height of an empty container\nBack end\nthe editor can choose between the different style options - NEW\nif the editor chooses the custom colour option, they can select the background colour and text colour using a colour picker\nthe editor can choose between the different column split options\nthe editor can add blocks within the column containers\n\n', 8, 0, '2025-01-18 19:19:00'),
(37, 'DC-1686', 3, 'Redesign: introduce global heading classes and unified container width', 'As a user, I’d like styling to be consistent across the site to ensure the best possible user experience.\nBackground\nWhile working on some of the redesign tickets we’ve identified the need for the following:\nGlobal heading classes x 4 - these can be utilised by the developers in their current component heading to have consistent heading styling. \nUnified container width across pages and components - create a global full-width class that developers can use in their components / pages. We will add this global class as a NOT selector on the current block width styling (which is currently causing the issue). This will ensure that the blocks CSS will take specificity.\nAcceptance criteria\nEnsure that global heading classes:\ncan be used in headings across different blocks\ndisplay consistently.\nEnsure the global full-width class:\nis used across pages and components\nthis fixes the issues we’ve been experiencing where block are not full width. \nwe will add this class to any new pages and components we creating or under working.\n\n', 3, 0, '2025-01-18 19:33:00'),
(38, 'DC-1643', 13, 'Redesign: remove genre page menu', 'As an editor, I’d like to optimise the page template on genre pages to create a better user experience.\nBackground\nOn the current site, we have three parent genre pages, all of which have lots of child pages for their subgenres.\nThese are displayed in a sidebar menu on desktop and tablet screens. On mobile, a categories button expands the menu.\nWe would like to remove the existing menus to clean up the page template and bring the content container in line with the rest of the site. On the new site, we’ll use a menu of buttons to navigate to the subgenre child pages.\nYou can see how we’d ultimately like the genre pages to look in the Figma file Redesign Project - Genre pages but please note that this ticket does not cover the whole reworking of this page - I’m just providing the designs here to show how we plan to evolve these pages.\nAcceptance criteria\nEnsure that on genre pages:\nthe left-hand sidebar menu (desktop and tablet size screens) is removed\nthe categories button (mobile) is removed\ncontent added uses the full width of the page.\n\n', 3, 0, '2025-01-18 19:34:41'),
(39, 'DC-1690', 1, 'Redesign: add drop-down to ShopNow component', 'As a user, I’d like the ShopNow component to include a Dropdown component so that it can handle various format and purchase button options, ensuring a consistent and intuitive way to continue my journey and take action.\nBackground\nThe ShopNow component currently renders format and purchase buttons and is used across multiple book-related blocks:\nSpotlight Book Card\nBook Highlight\nBook Card - Bookshelves\nIn the existing code, the ShopNow component handles tracking and renders buttons for different formats and purchase options. To enhance its functionality, we need to import the New Dropdown (DC-1632: Redesign: button component - drop-downDone\n ) component into the ShopNow component.\nDesigns\nBookshelf: PRH Design System - Multi-site \nSpotlight Book Card: PRH Design System - Multi-site \nBook Highlight: PRH Design System - Multi-site \nAcceptance criteria\nThe New Dropdown component should be imported and integrated into the ShopNow component.\nThe ShopNow component should:\nRender the Dropdown component for format and purchase button options.\nMaintain existing tracking functionality.\nEnsure that the Dropdown component works seamlessly across all instances where the ShopNow component is used.\nThe ShopNow component should:\nOutput on the Book related blocks in the format and styling detailed in the designs - see Figma links\nNotes:\nThe Bookshelf Block and Book Highlight the button text should be \'Buy the Book\' on larger devices and \'Buy\' on smaller devices. We have this logic in place for if the templateIsArtcle but we can adapt this to work for these cases, for example check the context and set the text depneding on the block it Shop Now component is being used in - see PRH Design System - Multi-site \nSpotlight Book Card - regardling is screen size the Button text should always read \'Buy The Book\'\n\n', 3, 0, '2025-01-18 19:36:52'),
(40, 'DC-1648', 2, 'Redesign: review carousel', 'As a user, I’d like to see reviews so I can decide if a book is right for me.\nBackground\nThe designs for the book page and author page show a carousel of review quotes.\nWe would like to turn this into a block so that it can be added to other pages (eg. campaign page) or manually edited via the author override.\nDesigns\nPRH Design System - Multi-site  \nAcceptance criteria\nThe review carousel should:\nmatch the designs\nbe able to be added to any post or page without restriction\nappear on the default author page and default book page\npreview as expected and display the correct visuals as will be seen on the front end.\nFront end\nEnsure that:\nquote text and source name display correctly\nif a single card is added, no carousel indicators display\nif two or more reviews are added, they display in a carousel\na user can browse the carousel by swiping or by using the carousel indicators\nthe number of dots should reflect the number of cards in the carousel\nthe central card has an opacity of 100% and larger text; surrounding cards should be of lower opacity and have smaller text (see dev mode)\nthe block displays as expected across the different breakpoints (see Figma)\nBack end\nEnsure that an editor can:\nadd one static card\nadd two to five cards in a carousel\nadd and edit the heading in a rich text field\nadd and edit review text and source name in a plain text field\ncannot add review text longer than the character limit\nadd or edit a carousel reading (optional)\n\n', 5, 0, '2025-01-18 19:38:27'),
(41, 'DC-1579', 13, 'Redesign: author card - P1', 'As a user, I want author information to be presented in an easily digestible way so that I can find out about the writers behind the books.\nBackground\nThis block provides users with more information about a particular author and can be added to different pages, but will be managed from one central location - the author page.\nThe amount of content will vary based on how established an author is. Designs have been provided to show a highly populated component and a more stripped back version.\nSome content feeds through from Biblio, while other content must be updated manually within the CMS via the author page override option.\nWhen adding the author card to another page, an editor will be able to hide sections from the full author data on the author page.\nDesigns\nPRH Design System - Multi-site \nAcceptance criteria\nThe author card should:\noutput on the site in the format and styling detailed in the designs - see Figma link\nbe able to be added to all pages and posts without restriction\npreview as expected and output the correct visuals for the back end as will be seen on the front end.\nFront end\nEnsure that:\nthe chosen background and text colour combination displays\nthe layout adjusts according to the different break points\nauthor name and biography feed through correctly\nsocial icons and web links display (when existing)\nauthor image displays correctly when uploaded and selected in the CMS\na ‘read more’ link and downward arrow should appear when the biography exceeds more than 10 lines on desktop and 6 lines on mobile (unless overridden via the CMS). When clicked, the biography should expand and the the content below it should be pushed down. Once expanded, the link should read ‘read less’ with an upward arrow, and when clicked the biography should contract, with content below moving back up to its original position.\nBack end\nEnsure that:\neditors can search for an author by name or author ID and select from results\nwhen an author is selected, the name, biography and social links populate automatically, pulling through from Biblio\neditors can choose to add an author photo, awards, (max 5), genres (max 5) and configure a newsletter sign up component (DC-1547) within the CMS\neditors can decide between white background with black text and black background with white text\na CMS override exists for the above function to ensure that, when required for particular authors, the full biography can appear at all times and does not truncate.\n\n', 8, 0, '2025-01-18 19:39:41'),
(42, 'DC-1637', 1, 'Redesign: pills', 'As a user, I’d like pills to display in a clear, consistent way so it’s clear what action I should take.\nBackground\nPills feature in a number of different places across the designs for the new site - for example as tags or where it’s possible to filter the view or move between content like in DC-1562: Redesign: tabbed containerDone\n. \nThis ticket will update styling at a global level, in the same way we’ve done inDC-1596: Redesign: button componentDone\n, so that pills can be easily added to any blocks that need them.\nCharlotte has pulled together some guidance on the blocks and pages where pills appear in the new designs: https://www.figma.com/design/TdRVivxupVbUyEaffuSuq6/Redesign-Project---Pills-in-use?node-id=2406-7998&t=IwiMThPWwoLsV9W0-1Connect your Figma account \nDesigns\nPRH Design System - Multi-site \nAcceptance criteria\nThe pill should:\noutput on the site in the format and styling detailed in the designs - see Figma link\nbe added to any block that accepts a pill\nreplace the front end tags at the bottom of an article page\nreplace the applied filter tag on a search result page\npreview as expected and output the correct visuals for the back end as will be seen on the front end\nEnsure that the styling of legacy pills (e.g. the ones not covered by blocks), if any, is updated.\n \nDev Notes\nFacetPills component scss: components/FacetPills/FacetPills.module.scss\nThis component is used within Search to show filters\nTopicPills component scss: components/TopicPills/TopicPills.module.scss\nThis component is used within Articles to show Article tags. \n\n', 3, 0, '2025-01-18 19:53:53'),
(43, 'DC-1684', 3, 'Redesign: make hero image scale proportionally', 'As a user, I’d like header imagery to display correctly across my devices to ensure a good user experience.\nBackground\nWhen building pages on the current site, adding a header image can be tricky as content is cut off on the sides depending on the user’s screen size, so it’s hard to know what dimensions to make the image to. It would be great to make this easier on the new site.\nWhen adding a hero image, editors can supply both a desktop and mobile image in the page settings. This is the option most editors prefer to go for as it’s full width and more imposing, but content gets cut off and requires a lot of back and forth to get the dimensions and content area correct. The creative team have also provided feedback that they need to keep to a content area means they are really restricted with the kinds of creative they can use - they either have to go for a tiled approach or one where there are big empty expanses on both sides of the image.\nOpen image-20241004-141803.png\n\nOpen image-20241004-140650.png\n\nSee https://www.figma.com/design/5EDmzWa5q9WaxKMgVu7N7M/%5BRedesign%5D---Image-template-briefs?node-id=2425-43549&t=ku2fyWJQyXOLDT5V-1Connect your Figma account   to see the effect this would have on the front end experience.\nAcceptance criteria\nEnsure that:\nthe hero image is modified to ensure it scales proportionately on the front end\nthe desktop image displays on lg and md screen sizes; the mobile image displays on sm screen sizes\nall other functionality relating to the hero image stays the same.\n\n', 3, 0, '2025-01-18 19:55:25'),
(44, 'DC-1683', 2, 'Redesign: add mobile image option to image block', 'As a user, I’d like to see imagery optimised for my screen size so I have the best possible user experience.\nBackground\nOn the site we have an image block that allows an editor to add one image to a post or page. This is used heavily across the site, but depending on the dimensions of the image, the asset will not always look great on different devices and screen sizes.\nFor example, the Richard Osman image at the top of the below page is big and bold on desktop - but small and skinny on mobile.\n\nWe’d therefore like to optimise this block so that an editor has the choice to add a mobile image too. See https://www.figma.com/design/5EDmzWa5q9WaxKMgVu7N7M/%5BRedesign%5D---Image-template-briefs?node-id=2425-43299&t=ku2fyWJQyXOLDT5V-1 to see the effect this would have on the front end experience.\nAn example of how we could handle this in the back end could be by having an option in the block settings like we currently do for the hero image - see screenshot below. This is just a suggestion though so if it’s tricky or you can think of a better experience, just let me know.\n\nAcceptance criteria\nEnsure that:\nan editor can add a single image, or choose to also add a mobile image\nif a mobile image is added, the block displays correctly on the front end across the different break points - with the desktop image displaying on lg and md screens, and the mobile image showing on sm screens\nall other existing functionality relating to the image block is maintained.\n\n', 8, 0, '2025-01-18 19:57:15'),
(45, 'DC-1624', 1, 'Redesign: slim content card', 'As a user, I\'d like to see a range of content signposted on the site so I can decide where to go next in my journey based on my interests.\nBackground\nThe slim content card is a new block. It’s less visual than the content card and can be used when the editor is limited on space.\nDesigns\nPRH Design System - Multi-site \nAcceptance criteria\nEnsure that the slim content card:\nmatches the designs (see Figma)\ncan be added to all pages and posts without restriction\npreviews correctly in the back end according to what is seen on the front end.\nFront end\ntext should truncate depending on the amount of space available\nthe image and / or roundel should display (if indicated)\nthe chosen colour container option should display correctly\nthe block displays as expected across the different breakpoints (see Figma)\nBack end\nEnsure that an editor can:\nchoose whether to show the image and / or roundel\nchoose between no container, primary, secondary or inverse colour options\nadd multiple cards in one or two columns\nsearch for a post or page using a lookup, or indicate a destination URL\noverride the heading text that pulls through from the post or page\noverride the image that pulls through from the post or page if using the option with image\n\n', 8, 0, '2025-01-18 19:59:02'),
(46, 'DC-1545', 1, 'Redesign: block text component', 'As a user, I’d like important text to stand out in a way that’s eye-catching and easily readable.\nBackground\nThe designs show a few variations that allow an editor to highlight relevant text to users - either as a quote or block text, and with or without a button.\nThere are six colour options:\ndefault - white background, black text, optional orange quotation marks\nblack background, white text, optional orange quotation marks\norange background, black text, optional white quotation marks\nPuffin yellow background, black text, white quotation marks\nLadybird red background, black text, white quotation marks\nVintage red background, white text, white quotation marks\nIt’s possible that the quote block on the current site could be adapted or used as a starting point for this work.\nDesigns\nPRH Design System - Multi-site \nAcceptance Criteria\nThe block text component should:\noutput on the site in the format and styling detailed in the designs - see Figma link\nbe able to be added to all pages and posts without restriction\npreview as expected and output the correct visuals for the back end as will be seen on the front end.\nFront end\nEnsure that:\nthe block text component matches the designs\nif a quote, quotation marks and a quote source should be visible\nthe chosen colour option displays correctly\nthe button displays, if indicated\nthe block displays as expected across the different breakpoints (see Figma)\nBack end\nEnsure that an editor:\ncan add and edit text\ncan indicate if the text is a quote\nif a quote is indicated, quotation marks and name / source text fields should appear\ncan choose between the colour options\ncan choose to add a button and URL destination.\n\n', 5, 0, '2025-01-18 20:00:21');
INSERT INTO `wp_sprint_tickets` (`id`, `jira_id`, `user_id`, `name`, `description`, `estimates`, `type`, `created_at`) VALUES
(47, 'DC-1619', 5, 'Redesign: author page override - P1', 'As a user, I’d like to go to a single destination for my favourite author so I can find out about their latest books and content.\nBackground\nOn the current site, the majority of authors have a default author page, populated by:\nBiblio - books, series, biography, social and web links\nthe CMS - articles (through tagging)\nThis content is split across automatically generated tabs.\nIn DC-1610: Redesign: default author page - P1Done\n we redesigned the default author page, removing the tabs and instead using anchor links to jump down to sections of content. In this ticket, we will amend the author page override functionality, where editors will use the CMS to:\nadd an author photo (existing functionality)\noverride the content and layout of the default author page using blocks\nmanually control changes to detail in the author card.\nDesigns\nThe designs show a number of different examples of how an editor might want to update the author override.\nRedesign Project - Author hubs \nSome elements an editor might add:\nspotlight content cards\ncontent cards\nevent cards\naccordion\nvideo carousel\nauthor branded header image (see ‘Branded author’s page\' example in Figma file)\nAcceptance criteria\nFront end\nAn author override page should reflect the blocks and changes made in the CMS\nInformation that feeds from Biblio should continue to display correctly, if not overridden\nThe old tab menu is no longer seen and instead an anchor menu allows users to jump down to different sections of the page\nBack end\nAn editor should be able to add an override page in the same way as on the current site (Add new author > search by author name or ID)\nOn opening the CMS page, the editor should ideally see the default author page design recreated with blocks. This will allow them to make only the required edits or additions without having to rebuild the structure of the author page entirely\nAn editor should be able to add and remove blocks and reorder content in the same way they would edit any other page with the Gutenberg block editor\nAn editor can amend the options in the anchor menu to jump down to new, added sections of the page - for example, if they add a row of event cards they should be able to add ‘Events’ to the anchor menu\nAn editor can upload a desktop and mobile version of an author branded header image\nIf an editor makes changes to the author card via the author override, this should be reflected wherever that author’s author card is added across the site (eg. on a campaign page).\nTEST where CMS-overridden book becomes out of print both front end and in editor!!\nNotes\nKatie is checking the SEO implications of replacing the author name h1 with the branded author image\n', 13, 0, '2025-01-18 20:01:55'),
(48, 'DC-1577', 7, 'Redesign: video carousel (part 1) - P1', 'As an editor, I’d like to add a video carousel to a page to allow users to browse a wide range of relevant content.\nBackground\nWe currently have the ability to add a YouTube video carousel to the existing site with the Video Carousel block. In the existing block, you can:\nadd videos by indicating the YouTube ID for each video\nedit and delete videos in the carousel\noverride the preview image\noverride a caption for each video\nadd a heading for the carousel\nadd a carousel call to action text\nadd a carousel call to action URL.\nWe would like to keep most of this functionality and restyle the component to create a better, consistent user experience.\nDesigns\nhttps://www.figma.com/design/n1SAl7btV4wxqAgMuwCMop/PRH-Design-System---Multi-site?node-id=6474-20018&t=MB4bT6Z6XPIv1dbN-1\nAcceptance criteria\nEnsure that the video carousel block:\nmatches the designs (see Figma)\ncan be added to any post or page without restriction\npreviews as expected.\nFront end\nEnsure that:\nthe chosen videos display correctly\nvideo captions and preview images have pulled in from YouTube, unless overridden by the editor in the CMS\nthe carousel heading and introductory text display if added\nnon-playing videos display as a preview image with a YouTube play icon overlaid\nif a user clicks a video, it begins to play within its container\na user can then choose to play the video full-screen using the video’s YouTube settings\nif a user clicks on the slider arrows within the carousel while a video is playing, it automatically stops\na user can browse the carousel by swiping or by using the carousel indicators\nthe block displays as expected across the different breakpoints (see Figma)\nBack end\nEnsure that an editor can:\nadd videos from YouTube by indicating the YouTube video ID\nedit and remove videos from the carousel\noverride each video’s caption\noverride each video’s preview image\nadd a carousel heading (optional)\nadd introductory text (optional) (NEW FUNCTIONALITY).\nRemove the ability to:\nadd a carousel call to action text\nadd a carousel call to action URL.\nNotes\nUltimately we would like the video carousel block to allow for videos from other channels (eg. TikTok), but we have split this out to a future ticket, for day 2 - https://prh-uk.atlassian.net/browse/DC-1661 .\nRelevant folders across repos\nFront end :\ncomponents/VideoCard\nReturns a VideoCard element with YouTube video player.\ncomponents/VideoSlider\nReturns a Video slider for managing VideoCard children.\nBackend :\nThese folder are relevant to the video / youtube carousel\nwp-content/plugins/prhuk-core/blocks/video-carousel-video-youtube\nwp-content/plugins/prhuk-core/blocks/video-carousel\nIn the backend you\'ll notice we have the file wp-content/plugins/prhuk-core/blocks/video-carousel/preview.jsx. This is simply a preview for the editor that they\'ll see when the block is not selected. We don’t import the VideoSlider component from the frontend as we don\'t need the slider functionality for the editor preview.\nHere is a page on the TEST environment that uses the current video carousel block:\nBE: https://peng2024wpdev.wpenginepowered.com/wp-admin/post.php?post=61613&action=edit\nFE: https://test-2024.penguin.co.uk/lit-in-colour/teaching-resources/a-dutiful-boy-ks3/\nAny question please don’t hesitate to ask!\n', 8, 0, '2025-01-18 20:03:59'),
(49, 'DC-1649', 3, 'Redesign: create campaign page template - P1', 'As a marketer, I’d like to create a campaign page so I can promote our latest books.\nBackground\nOn the new site, publishing houses will be able to create their own campaign pages using the same blocks we’re producing.\nSee [Redesign] Campaign page - new book  for an example of how this might look.\nWe would like to keep these pages separate from other pages and content hubs. They shouldn’t be discoverable through internal search or any automated related content unless manually selected (eg. an editor adds a block to an author page directing users there).\nWe would therefore like to create a new page type specifically for campaign pages. For now, this can be duplicated from the regular page template (unless dev can think of any reasons why this is a bad idea).\nThe one notable change we then need to make is to allow an admin to change the colour scheme of individual campaign pages. In the Figma example, the background is a pale cream colour. We can then use the DC-1629: Redesign: wrapper blockDone\n to add the navy sections of the page.\nAcceptance criteria\nEnsure that:\na new page template is created for campaign pages\na new section for campaign pages is created in the menu and is accessible by users with editor permissions\ncampaign pages can be edited by users with editor permissions\nthe colour scheme (background colour and text colour) of an individual campaign page can be edited using a colour picker, but only by a user with admin permissions\ncampaign pages do not appear in internal search or automated related content.\nProposed URL structure\nThe below are examples and the page title should determine the end of the URL.\n\n\n', 13, 0, '2025-01-18 20:05:43'),
(50, 'DC-1615', 3, 'Redesign: internal search restyling - P1', 'As a user, I’d like pages to use consistent styling to ensure a seamless user experience.\nBackground\nThis ticket covers the restyling of internal search. Notable updates include:\nthe removal of the ‘overview’ tab\nusing content cards for article search results\nusing series cards for series search results\nhow the filter menu is opened and closed on sm devices\nhow applied filters are applied and removed on sm devices\nremoval of events as a search result category.\nDesigns\n[Redesign] Search results \nAcceptance criteria\nEnsure that:\nsearch results pages match the designs (see Figma)\npages display as expected across the different breakpoints\nthe overview tab is removed and users land on the books tab by default if they don’t select an alternative category as part of their search\nthe events category is removed\nthe actual results served and filter options are not impacted beyond how they look.\n\n', 13, 0, '2025-01-18 20:22:28'),
(51, 'DC-1696', 2, 'Redesign: series page restyling - P1', 'As a user, I’d like to see series displayed in a clear, consistent way so that I can navigate series information quickly and easily.\nBackground\nFor day 1 of the redesign we will be updating the styling on series pages to ensure it is consistent with the rest of the site. More complex series designs will come in day 2.\nAt this point no functionality should change, and all information should continue to feed through in exactly the same way as on the current series pages. See Jack Reacher  for an example of a current series page.\nDesigns\nSee ‘Day 1’ designs: [Redesign] Series page\nAcceptance criteria \nEnsure that series pages:\nmatch the designs (see Figma)\ndisplay as expected across the different breakpoints\ninclude a series description if one is present in Biblio or in the mapping sheet\nhave the social share options removed\nlimit the book descriptions to 8 lines, after which an ellipsis and a link to read more\n\n', 5, 0, '2025-01-18 20:25:29'),
(52, 'DC-1709', 5, 'ESP: Dead Good', 'As Consumer Loyalty\nI would like to install, configure and style a plugin to replace the current Adestra ESP with Iterable\nSo that we can begin using the new ESP on the site.\nBackground \nTo replace Adestra with the new Email Service Provider (Iterable) Tom has created a plugin thats added to the CMS and configured. Forms will be created in Iterable that render short codes in the PRHForms plug-in, allowing us to add these to pages on site. There are 2 types, Newsletter and competitions (The forms will have been created already and available in the CMS via the PRHForms plugin).\nAcceptance Criteria\nDeadGood has a staging site (Please use this for testing): https://dg2020stage.wpengine.com/cms\nInstall the PRHforms plugin (Its a submodule in the author site repo’s)\nGo to PRHforms settings in the WP dashboard. Enter the following API keys:\nIterable API key (Key below is for the sandbox Environment but will be replaced when testing etc is complete)\nIterable API Key: f19da4cb80504bea82825f5799b0676e\nGoogle RECAPTCHA API key: 6Lfm9XQqAAAAAFbA7WPYE3cwBxwH6G6xqDfFjImy\nStyle Forms\nNewsletter Form - Uses site specific CSS (No designs exist for this but please match to whats already there).\nCompetition Form - The styling is the same across all sites and will be available from the plugin itself. Ensure this looks correct and is not overridden by any site specific CSS.\nOnce installed you should see test forms available which will produce short codes for the pages, please add one of each type to test pages on Staging and ensure they are working.\nPlease add the page URL’s in the comments so Consumer Loyalty and Iterable can test this is working as expected.\nfor Sign off, Please move into Code Review so Tom can check implementation\nPost sign off from Tom, This can go directly into UAT and be assigned to Ellie / Michael and we will pass this ticket onto Helen and the Consumer Loyalty team / Iterable for sign off.\nOnce the ticket/work has been signed off by Consumer Loyalty (For the forms styling and data) and Seb at Iterable (to ensure the data is flowing correctly on Iterable’s side)\nPlease replace forms on the site\nIf any exist within the templates of the page (e.g. in footer) please replace these via code\nIf you find any forms on the site that are not included in the doc. Please replace these aswell but given the time available, a cursory check is fine.\n\n', 2, 0, '2025-01-18 20:27:45'),
(53, 'DC-1708', 5, 'ESP: The Happy Foodie - P1', 'As Consumer Loyalty\nI would like to install, configure and style a plugin to replace the current Adestra ESP with Iterable \nSo that we can begin using the new ESP on the site.\nBackground \nTo replace Adestra with the new Email Service Provider (Iterable) Tom has created a plugin thats added to the CMS and configured. Forms will be created in Iterable that render short codes in the PRHForms plug-in, allowing us to add these to pages on site. There are 2 types, Newsletter and competitions (The forms will have been created already and available in the CMS via the PRHForms plugin).\nAcceptance Criteria\nHappy Foodie has a staging site (Please use this for testing): thfstaging.wpengine.com\nInstall the PRHforms plugin (Its a submodule in the author site repo’s)\nGo to PRHforms settings in the WP dashboard. Enter the following API keys:\nIterable API key (Key below is for the sandbox Environment but will be replaced when testing etc is complete)\nIterable API Key: f19da4cb80504bea82825f5799b0676e\nGoogle RECAPTCHA API key: 6Lfm9XQqAAAAAFbA7WPYE3cwBxwH6G6xqDfFjImy\nStyle Forms\nNewsletter Form - Uses site specific CSS (No designs exist for this but please match to whats already there).\nCompetition Form - The styling is the same across all sites and will be available from the plugin itself. Ensure this looks correct and is not overridden by any site specific CSS. \nOnce installed you should see test forms available which will produce short codes for the pages, please add one of each type to test pages on Staging and ensure they are working.\nPlease add the page URL’s in the comments so Consumer Loyalty and Iterable can test this is working as expected.\nfor Sign off, Please move into Code Review so Tom can check implementation \nPost sign off from Tom, This can go directly into UAT and be assigned to Ellie / Michael and we will pass this ticket onto Helen and the Consumer Loyalty team / Iterable for sign off. \nOnce the ticket/work has been signed off by Consumer Loyalty (For the forms styling and data) and Seb at Iterable (to ensure the data is flowing correctly on Iterable’s side) \nPlease replace forms on the site\nIf any exist within the templates of the page (e.g. in footer) please replace these via code\nIf you find any forms on the site that are not included in the doc. Please replace these aswell but given the time available, a cursory check is fine. \n\n', 2, 0, '2025-01-19 20:39:33'),
(54, 'DC-1547', 2, 'Redesign: newsletter sign up block - front end - P1', 'As a user, I’d like a clear and easy way to sign up to newsletters so that I can receive awesome content direct to my inbox.\nBackground\nWe already have newsletter functionality on the site so this work will involve building on the current implementation and modifying it to deliver the designs. Please use the existing newsletter sign up block as a starting point.\nThis ticket covers how the block appears on the front end. Back end functionality will be covered in DC-1707: Redesign: newsletter sign up block - back endDone\n and form fields will be covered in DC-1705: Redesign: form restyling - P1In Progress\n.\nDesigns\nPRH Design System - Multi-site \nAcceptance Criteria\nThe newsletter sign up block should:\nmatch the designs - see Figma\nbe able to be added to all pages and posts without restriction\nbe able to be used in or in conjunction with the author card (see DC-1579: Redesign: author card - P1Done\n) \nEnsure that:\nif an image is added, this displays in the chosen layout\nthe chosen background colour displays correctly\nheading and subheading text display as expected\nthe terms and conditions text and privacy policy link is visible\nusers have to take a CAPTCHA test after inputting their details to stop bots spamming the form\nusers see the thank you message after successfully completing the CAPTCHA test\nthe block displays as expected across the different breakpoints\nNotes\nVerified Parental Consent forms are not required as part of this work.\nIn addition to Rhi, Helen Langley in the Consumer Loyalty team will need to sign off this component as part of UAT.\n\n', 8, 0, '2025-01-19 20:43:04'),
(55, 'DC-1639', 2, 'Penguin Redesign (SEO): Breadcrumbs - P1', 'Description\nAs the SEO Lead, I’d like to implement breadcrumbs as part of the redesign process to the new site to help improve search ranking and aid overall site navigation.\nBackground\nAs breadcrumbs are an important navigational element, helping users move through the site efficiently while providing search engines with a clear understanding of the new page hierarchy by using the updated URL structure. \nThe breadcrumb paths should reflect the logical journey a user takes across the site, structured as:\nHOME > CATEGORY > SUBCATEGORY > ITEM\nAcceptance Criteria:\nBreadcrumbs should be implemented across all pages where applicable, ensuring non-page URLs (e.g. /books, /series) are excluded.\nLinks within the breadcrumbs must lead to the correct pages, functioning as expected.\nBreadcrumbs should display the correct hierarchy for each page, based on the new URL structure provided.\nSpecific use cases, like multiple authors or complex page structures, should follow best practices (e.g., using \"Various Authors\" for titles with three or more contributors of type ‘Author’).\nExclude breadcrumbs from the homepage.\nThe final breadcrumb structure will need to be reviewed by Katie M (SEO) to ensure alignment with best practices and expectations before it goes live.\nBreadcrumbs Structure  (based on new URL structure)\nExamples for page types with breadcrumb structure, with HOME (a href link to homepage) > CATEGORY PAGE (a href link to relevant page/category) > ITEM/PAGE (no link)\nAnything in square brackets [] means that link should be excluded, so there shouldn’t be a hyperlink added\nDiscover Section\n/discover/puffin → HOME > DISCOVER > [PUFFIN]\n/discover/childrens-articles → HOME > DISCOVER > [CHILDREN\'S ARTICLES] \n/discover/articles/vintage-summer-paperbacks → HOME > DISCOVER > ARTICLES > [VINTAGE SUMMER PAPERBACKS]\n/discover/newsletters → HOME > DISCOVER > [NEWSLETTERS] \n/discover/campaigns/summer-reads → HOME > DISCOVER > [SUMMER READS] (as campaign landing page won’t exist, it would go straight from Discover to Summer reads)\nGenre pages\n/fiction → HOME > [FICTION] \n/fiction/contemporary-literary → HOME > FICTION > [CONTEMPORARY LITERARY] \n/non-fiction/biographies-memoirs → HOME > NON-FICTION > [BIOGRAPHIES & MEMOIRS]\nBooks \n/books/440073/shrines-of-gaiety-by-atkinson-kate/9781804991053 → HOME > KATE ATKINSON > [BOOK] \n/books/256685/the-drugs-dont-work-by-catchpole-professor-dame-sally-davies-dr-jonathan-grant-and-professor-mike/9780241968888 → HOME > [VARIOUS AUTHORS] > [BOOK] NOTE, Various Authors here should display but not be hyperlinked, as denoted by the square brackets\nAuthors\n/authors/16113/pat-barker → HOME > AUTHORS > [PAT BARKER]\nSeries\n/series/LBC/penguin-little-black-classics → HOME > [PENGUIN LITTLE BLACK CLASSICS]\nCompany Pages/Articles\n/about/publishing-houses/cornerstone → HOME > ABOUT > PUBLISHING HOUSES > [CORNERSTONE]\n/about/social-impact/lit-in-colour → HOME > ABOUT > SOCIAL IMPACT > [LIT IN COLOUR]\n/about/company-articles/how-to-pitch-your-book-to-an-agent → HOME > ABOUT > COMPANY ARTICLES > [HOW TO PITCH YOUR BOOK TO AN AGENT]\nFooter Pages\n/useful-links/privacy-policy → HOME > [USEFUL LINKS] > PRIVACY POLICY (/useful links/ will not be a page, so will be replaced with Home)\n\n', 5, 0, '2025-01-19 20:45:23'),
(56, 'DC-1638', 2, 'Penguin Redesign (SEO): URL structure - P1', 'Description: As the SEO Lead, I’d like to implement a new SEO-friendly URL structure for the upcoming website redesign to enhance search engine rankings and improve user navigation which also aligns with the overall IA and has been reviewed ahead by the Channel Lead. \nThe current URL structure of /book, /series and /author pages will remain the same, while majority of changes are affecting the /articles pages as they’re part of the new Discover category tree. We also want to implement the changes of the new articles URLs by not adding the publishing date in the URLs. \nAcceptance Criteria:\nApply the new URL structure to all pages and templates as outlined in the attached document.\nEnsure the new URL structure adheres to best practices\nVerify that all links within the new URL structure function correctly.\nEnsure the new URL structure integrates seamlessly with the website\'s design and layout.\nConfirm that the URL structure does not adversely affect page performance or user experience\nReview the implementation with Katie M (SEO) to ensure that it meets SEO expectations and requirements and also conduct testing to verify that the new URL structure does not result in broken links, 404s errors, or any negative SEO, page performance or user experience impact.\nURL structure UPDATED NOV24.xlsx \n\n', 8, 0, '2025-01-19 20:47:06'),
(57, 'DC-1710', 5, 'ESP: Ottolenghi - P2 (Post XMAS)', 'As Consumer Loyalty\nI would like to install, configure and style a plugin to replace the current Adestra ESP with Iterable \nSo that we can begin using the new ESP on the site.\nBackground \nTo replace Adestra with the new Email Service Provider (Iterable) Tom has created a plugin thats added to the CMS and configured. Forms will be created in Iterable that render short codes in the PRHForms plug-in, allowing us to add these to pages on site. There are 2 types, Newsletter and competitions (The forms will have been created already and available in the CMS via the PRHForms plugin).\nAcceptance Criteria\nOttolenghi has a staging site (Please use this for testing): ottolenghistg.wpengine.com\nInstall the PRHforms plugin (Its a submodule in the author site repo’s)\nGo to PRHforms settings in the WP dashboard. Enter the following API keys:\nIterable API key (Key below is for the sandbox Environment but will be replaced when testing etc is complete)\nIterable API Key: f19da4cb80504bea82825f5799b0676e\nGoogle RECAPTCHA API key: 6Lfm9XQqAAAAAFbA7WPYE3cwBxwH6G6xqDfFjImy\nStyle Forms\nNewsletter Form - Uses site specific CSS (No designs exist for this but please match to whats already there).\nCompetition Form - The styling is the same across all sites and will be available from the plugin itself. Ensure this looks correct and is not overridden by any site specific CSS. \nOnce installed you should see test forms available which will produce short codes for the pages, please add one of each type to test pages on Staging and ensure they are working.\nPlease add the page URL’s in the comments so Consumer Loyalty and Iterable can test this is working as expected.\nfor Sign off, Please move into Code Review so Tom can check implementation \nPost sign off from Tom, This can go directly into UAT and be assigned to Ellie / Michael and we will pass this ticket onto Helen and the Consumer Loyalty team / Iterable for sign off. \nOnce the ticket/work has been signed off by Consumer Loyalty (For the forms styling and data) and Seb at Iterable (to ensure the data is flowing correctly on Iterable’s side) \nPlease replace forms on the site\nIf any exist within the templates of the page (e.g. in footer) please replace these via code\nIf you find any forms on the site that are not included in the doc. Please replace these aswell but given the time available, a cursory check is fine. \nNote: \nOttolenghi also has sign up forms for Happy Foodie (As the two sites are linked) and sign up to the newsletter upon joining the site. We are looking into how best to action this but until updated, please proceed with the general implementation. \n', 2, 0, '2025-01-19 20:48:40'),
(58, 'DC-1640', 2, 'Penguin Redesign (SEO): Breadcrumbs schema - P1', 'Description:\nAs part of our SEO enhancements, we need to implement structured data for breadcrumbs using the Breadcrumbs Schema. This will help search engines better understand the hierarchy of pages on the site, which can improve our visibility in search results.\nBackground:\nThe Breadcrumbs Schema is a form of structured data that provides search engines with a clear outline of the site’s page structure. When properly implemented, this schema helps enhancing how breadcrumbs are displayed in search engine results, making it easier for users to understand their path through the site. It also contributes to better SEO performance by highlighting page hierarchy.\nThe schema should follow the logical breadcrumb paths implemented on the site (e.g., HOME > CATEGORY > SUBCATEGORY > ITEM), ensuring that this data is consistent across all applicable pages.\nAcceptance Criteria:\nImplement Breadcrumbs Schema markup across all eligible pages.\nThe markup should reflect the breadcrumb hierarchy for each page.\nEnsure that the schema follows Schema.org - Schema.org  Breadcrumb standards and is included in the HTML code of the pages.\nTest and validate the schema implementation using Google’s Structured Data Testing Tool to confirm correct setup (done by Katie M)\nSchema should be excluded from pages where breadcrumbs are not applied (e.g., homepage, non-page URLs like /useful-links/, /books).\nEnsure that this implementation aligns with the breadcrumb paths already established on the website.\nEnsure the implementation is reviewed Katie M (SEO) , and the schema is validated before deployment.\nExamples of Schema Implementation:\nOn a basic level for implementation it will look something like this if using HTML:\n<ul class=\"breadcrumb\">\n <li><a href=\"#\">Home</a></li>\n <li><a href=\"#\">Category Title </a></li>\n <li><a href=\"#\">Sub Category Title</a></li>\n <li>Book Title</li>\n</ul>\n \nExample for /discover/puffin via Breadcrumb Schema - BreadcrumbList in JSON LD :\n{\n  \"@context\": \"https://schema.org\",\n  \"@type\": \"BreadcrumbList\",\n  \"itemListElement\": [\n    {\n      \"@type\": \"ListItem\",\n      \"position\": 1,\n      \"name\": \"Home\",\n      \"item\": \"https://www.penguin.co.uk/\"\n    },\n    {\n      \"@type\": \"ListItem\",\n      \"position\": 2,\n      \"name\": \"Discover\",\n      \"item\": \"https://www.penguin.co.uk/discover\"\n    },\n    {\n      \"@type\": \"ListItem\",\n      \"position\": 3,\n      \"name\": \"Puffin\",\n      \"item\": \"https://www.penguin.co.uk/discover/puffin\"\n    }\n  ]\n}\n \nExample for /fiction/contemporary-literary:\n{\n  \"@context\": \"https://schema.org\",\n  \"@type\": \"BreadcrumbList\",\n  \"itemListElement\": [\n    {\n      \"@type\": \"ListItem\",\n      \"position\": 1,\n      \"name\": \"Home\",\n      \"item\": \"https://www.penguin.co.uk/\"\n    },\n    {\n      \"@type\": \"ListItem\",\n      \"position\": 2,\n      \"name\": \"Fiction\",\n      \"item\": \"https://www.penguin.co.uk/fiction\"\n    },\n    {\n      \"@type\": \"ListItem\",\n      \"position\": 3,\n      \"name\": \"Contemporary Literary\",\n      \"item\": \"https://www.penguin.co.uk/fiction/contemporary-literary\"\n    }\n  ]\n}\n', 5, 0, '2025-01-19 20:52:00'),
(59, 'DC-1747', 3, 'Make bookshelf-new the default bookshelf block within the tabbed container', 'As a user, I’d like to tab between groups of themed books so I can browse recommendations according to my interests without scrolling endlessly.\nBackground\nIn \nhttps://prh-uk.atlassian.net/browse/DC-1542 we created the bookshelf-new block, a revised version of the bookshelf. We created this as a separate block so that old bookshelves are not automatically removed from the site during content migration.\nWe now need to adapt the tabbed container (DC-1562) to take the bookshelf-new block by default, rather than the bookshelf block.\nAcceptance criteria\nEnsure that:\nthe default block within the tabbed container is updated from bookshelf to bookshelf-new\nthe tabbed container and bookshelf within it display as expected\nthe tabbed container otherwise continues to operate as usual.\n\n', 3, 0, '2025-01-19 21:04:32'),
(60, 'DC-1726', 3, 'Redesign: clean up of hard-coded genre page bits - P1', 'As a user, I’d like to see consistent styling across the site to ensure the best possible user experience.\nBackground\nWe need to remove some elements of the old genre page templates to ensure the new genre pages match the designs.\nremoval of page title - we’ll be using the Page Header block for this\n\nbutton styling update - this should be the primary button [RHI TO CHECK WITH KEVIN]\n\nremove ‘view all’ text on lg and md - move the ‘view all’ destination to the button\n\nAcceptance criteria\nEnsure that:\nthe old page title section is removed from the genre page template\nthe ‘view all’ button style is updated\nthe ‘view all’ text at the top of the page on lg and md is removed.\nNotes\nOriginally this ticket also included removal of the hard-coded newsletter sign up form at the bottom of every genre page. In an attempt to speed up build, we’re ticking the ‘Hide newsletter sign up’ box on all these pages instead - but if it’s better to remove these within this ticket rather than a future ticket just let me know.\n', 3, 0, '2025-01-19 21:07:20'),
(61, 'DC-1662', 3, 'Redesign: Classics list restyling - P1', 'As a user, I’d like pages to use consistent styling to ensure a seamless user experience.\nBackground\nThe Penguin Classics list is a valuable, high-traffic, hard-coded page that already exists on the current site.\nThis ticket will cover the styling update to the page to ensure it’s consistent with the rest of the site. The page should continue to function in exactly the same way, with no other changes.\nDesigns\nhttps://www.figma.com/design/e7EAsvtXCz9WylZvxfFlzK/%5BRedesign%5D-Hub-%26-Series-List-page---Penguin-Classics?node-id=2415-45219&t=NC41gR73iBlwn6IB-1\nAcceptance criteria\nEnsure that:\nthe Penguin Classics list page matches the designs (see Figma)\nfunctionality otherwise stays the same.\n\n', 5, 0, '2025-01-20 09:26:32'),
(62, 'DC-1737', 2, 'Redesign: navigation / menu amends - P1', 'As a user, I’d like key areas of the site called out in the navigation so I can find my destination easily.\nBackground\nWe worked on the navigation in https://prh-uk.atlassian.net/browse/DC-1593 and the footer in https://prh-uk.atlassian.net/browse/DC-1592, and now content build is underway we’ve discovered a few restrictions that prevent us from making the desired changes to the menus.\nBelow is a screenshot from Appearance > Menus > Manage Locations. An admin can create new menus and map the desired menu to the theme location. However, the theme only supports 13 menus, and some of these aren’t the kind of menus we need.\n\nOur new navigation has eight options, and the footer has three. In the current build, we have three footer menu theme locations, so this works fine, but we only have five header menu locations for the navigation.\nThese theme locations are therefore taking up menu quota while not being used:\nSubnav - Penguin\nSubnav - Puffin\nSubnav - Ladybird\nWe’re also not sure what the function of the ‘Company’ theme location is, as the actual company menu is called ‘About us’ and is assigned to one of the header menu slots.\nIn addition, there doesn’t seem to be a way to add a second column of links without a heading, as per the designs. See the below screenshot from redesign prod:\n\nAcceptance criteria\nEnsure that:\nan admin can add eight header menus and three footer menus\nmultiple columns of links can be added to a menu without the need to add a header to each column\nNotes\nIf it’s quicker to do this a certain way just for launch, with a future ticket for an admin to be able to do it themselves, that’s fine - just let me know.\n', 3, 0, '2025-01-20 09:28:27'),
(63, 'DC-1749', 6, 'Redesign: update registered address in footer - P1', 'As a user, I’d like to see up to date company information so I know how to contact the company.\nBackground\nIn the footer of our sites our company registered address is listed as 20 Vauxhall Bridge Road. As we have now moved offices we need to update this across our sites.\nWhile we’re doing this, we’d also like to take the opportunity to amend a typo in the footer - there should be a space between the dash and 2024.\nAcceptance criteria\nEnsure that on the redesign site\nthe registered address text in the website footer is updated from\nRegistered office: 20 Vauxhall Bridge Road, London, SW1V 2SA UK.\nto\nRegistered office: One Embassy Gardens, 8 Viaduct Gardens, London, SW11 7BW, UK. \nthe copyright text in the website footer is updated from\n© 1995 –2024 Penguin Books Ltd. Registered number: 861590 England.\nto\n© 1995 – 2024 Penguin Books Ltd. Registered number: 861590 England.\nthe existing styling and formatting of the text in the footer is preserved\nthe text displays on the footer across the whole site, and can be seen on each page as a user navigates through the site\nthe sites and footer otherwise continue to function as expected.\n\n', 1, 0, '2025-01-20 19:39:22'),
(64, 'DC-1705', 2, 'Redesign: form restyling - P1', 'As a user, I’d like form styling to be consistent across the site to ensure the best possible user experience.\nBackground\nThe new site will feature:\nnewsletter sign up forms\ncompetition forms\none-off miscellaneous forms (eg. the Permissions form).\nThis ticket will cover the restyling of the forms and the elements that are used within the forms.\nDesigns\nPRH Design System - Multi-site \nAcceptance criteria\nEnsure the following form elements match the designs:\ninput fields\ninput drop-down\ninput search\ncheckboxes\nradio controls\nfonts\n\n', 8, 0, '2025-01-20 19:41:45'),
(65, 'DC-1742', 6, 'Redesign: switch promoted book block to spotlight book card - P1', 'As a user, I’d like the site to use consistent styling and blocks to ensure the best possible user experience.\nBackground\nOn the current site, when a promoted book is selected within a post, the Book Highlight Full block appears on the front end. We’d like to update this so that the Spotlight Book Card appears instead.\nAcceptance criteria\nEnsure that the default Spotlight Book Card displays on the front end in the place of the Book Highlight Full when a promoted book is selected in post settings.\n', 2, 0, '2025-01-20 19:43:04'),
(66, 'DC-1716', 6, 'Redesigns: pull genre through into article topics on front end', 'As a user, I’d like to see genre information included in article topics so I can navigate to more articles about the same genre.\nBackground\nOn the current site, editors add tags to articles along with genre information. However, because the genre information does not display on the front end, editors are often duplicating their effort to put genre information in the tags section too so this can be seen by users on the front end.\nIf possible, we would like for the genre information indicated in the back end to pull through into the article topics section on the front end in the same way tags do.\nOpen\n\nAcceptance criteria\nEnsure that both ‘Tags’ and ‘Genres’ display in the topics section of articles, matching the topic pill designs.\nNotes\nIf it’s possible for these to be in one alphabetical list that would be great. If not, let me know.\n', 5, 0, '2025-01-20 19:44:56'),
(67, 'DC-1712', 6, 'Redesign: global fonts and headings 2.0 - P1', 'As a user, I’d like text to display consistently to ensure the best possible user experience.\nBackground\nIn https://prh-uk.atlassian.net/browse/DC-1617 we updated the fonts across the new site globally - however, this does not seem to have updated the fonts.\nWe would like to revisit this to ensure the fonts and headings are consistent across the site, regardless of whether they are within a new block or part of a core block.\nDesigns\nhttps://www.figma.com/design/n1SAl7btV4wxqAgMuwCMop/PRH-Design-System---Multi-site?node-id=940-11753&t=3AfyP2qz15vix8TB-1 \nAcceptance criteria\nEnsure that:\nparagraph text\nheadings\ntext and headings within blocks\nis consistent and matches the designs\n', 5, 0, '2025-01-20 19:47:19'),
(68, 'DC-1765', 3, 'Full width blocks not displaying full width on company pages - P1', 'Overview\nFull width blocks aren’t displaying full width on company pages on prod\nContext\nWe’ve begun content build on company pages and have spotted some bugs. This ticket covers a fix for full width blocks.\nSee https://prod-2024.penguin.co.uk/company/about-us for an example.\nOpen image-20241211-112716.png\n\nOpen image-20241211-131031.png\n\nOpen image-20241211-131049.png\n\nOpen image-20241211-131106.png\n\n \nThe issue is affecting the following blocks:\npage header\nwrapper block\nbanner card carousel\nspotlight slider\nAcceptance criteria\nEnsure any full width blocks display full width on company pages\nNotes\nDuring QA and UAT we should see if this fix has any impact on company pages that have a Shorthand embed - eg https://prod-2024.penguin.co.uk/company/social-impact/our-recent-impact/lit-in-colour\n', 3, 0, '2025-01-20 20:12:30'),
(69, 'DC-1756', 5, 'ESP: Sophie Kinsella - P1', 'As Consumer Loyalty\nI would like to install, configure and style a plugin to replace the current Adestra ESP with Iterable \nSo that we can begin using the new ESP on the site.\nBackground \nTo replace Adestra with the new Email Service Provider (Iterable) Tom has created a plugin thats added to the CMS and configured. Forms will be created in Iterable that render short codes in the PRHForms plug-in, allowing us to add these to pages on site. There are 2 types, Newsletter and competitions (The forms will have been created already and available in the CMS via the PRHForms plugin).\nAcceptance Criteria\nThe Sophie Kinsella (The official website of bestselling author, Sophie Kinsella ) site does not have a staging site (Tom is setting up a page for testing purposes but please note this is on Production). \nInstall the PRHforms plugin (Its a submodule in the author site repo’s)\nGo to PRHforms settings in the WP dashboard. Enter the following API keys:\nIterable API Keys:\n{\n  \"Brand\": \"252df6a7081447b4a3f933eb985b6113\",\n  \"Competitions\": \"9412fc580977413f9c25ba4803c9a290\",\n  \"Michael Joseph\": \"3aa082f9674b4bf299df58b707177297\",\n  \"Sales and Rights\": \"f0ca6e4db0374907b5e8ef020e309733\",\n  \"Children\'s\": \"95b1ad9917824ca0813a7aac3f33eb82\",\n  \"Penguin Press\": \"65d79b840d7b49f8b898e0b5d94d48cb\",\n  \"Vintage\": \"b8b849d462f444fc817e06daacf95f5c\",\n  \"Cornerstone\": \"5884ea2244984ec490c52ab929946628\",\n  \"Ebury and Quadrille\": \"95afcce999774b17968d750df6f70db0\",\n  \"Penguin General\": \"ff2a35fcb4644459a4c019de70ab07ed\",\n  \"Transworld\": \"0b49cfcb32484fa980a5bc4cc8c11c51\",\n  \"Internal\": \"7e44ced632144a79b6a422c95d20004a\",\n  \"Andersen Press\": \"fd9200167fd8473287ad888d94b970d2\"\n}\nGoogle RECAPTCHA API key: 6Le1Tm4aAAAAAOGTLr7uV1nd8Z (this is specific to Marian keyes as the site alreadyt uses CAPTCHA)\nNB the above are already added for this site.\nStyle Forms\nNewsletter Form - Uses site specific CSS (No designs exist for this but please match to whats already there).\nCompetition Form - The styling is the same across all sites and will be available from the plugin itself. Ensure this looks correct and is not overridden by any site specific CSS. \nOnce installed you should see test forms available which will produce short codes for the pages, please add one of each type to test pages on Staging and ensure they are working.\nPlease add the page URL’s in the comments so Consumer Loyalty and Iterable can test this is working as expected.\nfor Sign off, Please move into Code Review so Tom can check implementation \nPost sign off from Tom, This can go directly into UAT and be assigned to Ellie / Michael and we will pass this ticket onto Helen and the Consumer Loyalty team / Iterable for sign off. \nOnce the ticket/work has been signed off by Consumer Loyalty (For the forms styling and data) and Seb at Iterable (to ensure the data is flowing correctly on Iterable’s side) \nPlease replace forms on the site\nIf any exist within the templates of the page (e.g. in footer) please replace these via code\nIf you find any forms on the site that are not included in the doc. Please replace these aswell but given the time available, a cursory check is fine. \n\n', 2, 0, '2025-01-20 20:15:27'),
(70, 'DC-1757', 5, 'ESP: Jack Reacher', 'As Consumer Loyalty\nI would like to install, configure and style a plugin to replace the current Adestra ESP with Iterable \nSo that we can begin using the new ESP on the site.\nBackground \nTo replace Adestra with the new Email Service Provider (Iterable) Tom has created a plugin thats added to the CMS and configured. Forms will be created in Iterable that render short codes in the PRHForms plug-in, allowing us to add these to pages on site. There are 2 types, Newsletter and competitions (The forms will have been created already and available in the CMS via the PRHForms plugin).\nAcceptance Criteria\nThe Jack Reacher (https://jackreacher.co.uk) site does not have a staging site (Tom is setting up a page for testing purposes but please note this is on Production). \nInstall the PRHforms plugin (Its a submodule in the author site repo’s)\nGo to PRHforms settings in the WP dashboard. Enter the following API keys:\nIterable API Keys:\n{\n  \"Brand\": \"252df6a7081447b4a3f933eb985b6113\",\n  \"Competitions\": \"9412fc580977413f9c25ba4803c9a290\",\n  \"Michael Joseph\": \"3aa082f9674b4bf299df58b707177297\",\n  \"Sales and Rights\": \"f0ca6e4db0374907b5e8ef020e309733\",\n  \"Children\'s\": \"95b1ad9917824ca0813a7aac3f33eb82\",\n  \"Penguin Press\": \"65d79b840d7b49f8b898e0b5d94d48cb\",\n  \"Vintage\": \"b8b849d462f444fc817e06daacf95f5c\",\n  \"Cornerstone\": \"5884ea2244984ec490c52ab929946628\",\n  \"Ebury and Quadrille\": \"95afcce999774b17968d750df6f70db0\",\n  \"Penguin General\": \"ff2a35fcb4644459a4c019de70ab07ed\",\n  \"Transworld\": \"0b49cfcb32484fa980a5bc4cc8c11c51\",\n  \"Internal\": \"7e44ced632144a79b6a422c95d20004a\",\n  \"Andersen Press\": \"fd9200167fd8473287ad888d94b970d2\"\n}\nGoogle RECAPTCHA API key: 6Le1Tm4aAAAAAOGTLr7uV1nd8Z (this is specific to Marian keyes as the site alreadyt uses CAPTCHA)\nNB the above are already added for this site.\nStyle Forms\nNewsletter Form - Uses site specific CSS (No designs exist for this but please match to whats already there).\nCompetition Form - The styling is the same across all sites and will be available from the plugin itself. Ensure this looks correct and is not overridden by any site specific CSS. \nOnce installed you should see test forms available which will produce short codes for the pages, please add one of each type to test pages on Staging and ensure they are working.\nPlease add the page URL’s in the comments so Consumer Loyalty and Iterable can test this is working as expected.\nfor Sign off, Please move into Code Review so Tom can check implementation \nPost sign off from Tom, This can go directly into UAT and be assigned to Ellie / Michael and we will pass this ticket onto Helen and the Consumer Loyalty team / Iterable for sign off. \nOnce the ticket/work has been signed off by Consumer Loyalty (For the forms styling and data) and Seb at Iterable (to ensure the data is flowing correctly on Iterable’s side) \nPlease replace forms on the site\nIf any exist within the templates of the page (e.g. in footer) please replace these via code\nIf you find any forms on the site that are not included in the doc. Please replace these aswell but given the time available, a cursory check is fine. \n\n', 2, 0, '2025-01-20 20:16:28'),
(71, 'DC-1727', 6, 'Redesign: highlighted text not displaying on front end - P1', 'Overview\nHighlighted text is displaying inconsistently.\nContext\nIn the designs there are a number of places where headings have had all or part of the text colour changed. Now we have started the content build, we are finding that this sometimes works and sometimes doesn’t work. It always displays correctly in the CMS, but not when you then view the front end.\nThis seems to be a particular problem within the wrapper block and page header block.\nSee example below:\nhttps://prod-2024.penguin.co.uk/genres/non-fiction-books - where orange works but white doesn’t\n \nOpen image-20241120-102544.png\n\n \nOpen image-20241120-102620.png\n\nAcceptance criteria\nEnsure that highlighted text displays as expected on the front end.\n', 0, 0, '2025-01-20 20:19:07'),
(72, 'DC-1758', 5, 'ESP: Jo Nesbo - P1', 'As Consumer Loyalty\nI would like to install, configure and style a plugin to replace the current Adestra ESP with Iterable \nSo that we can begin using the new ESP on the site.\nBackground \nTo replace Adestra with the new Email Service Provider (Iterable) Tom has created a plugin thats added to the CMS and configured. Forms will be created in Iterable that render short codes in the PRHForms plug-in, allowing us to add these to pages on site. There are 2 types, Newsletter and competitions (The forms will have been created already and available in the CMS via the PRHForms plugin).\nAcceptance Criteria\nThe Jo Nesbo (https://jonesbo.com/ ) site does not have a staging site (Tom is setting up a page for testing purposes but please note this is on Production). \nInstall the PRHforms plugin (Its a submodule in the author site repo’s)\nGo to PRHforms settings in the WP dashboard. Enter the following API keys:\nIterable API Keys:\n{\n  \"Brand\": \"252df6a7081447b4a3f933eb985b6113\",\n  \"Competitions\": \"9412fc580977413f9c25ba4803c9a290\",\n  \"Michael Joseph\": \"3aa082f9674b4bf299df58b707177297\",\n  \"Sales and Rights\": \"f0ca6e4db0374907b5e8ef020e309733\",\n  \"Children\'s\": \"95b1ad9917824ca0813a7aac3f33eb82\",\n  \"Penguin Press\": \"65d79b840d7b49f8b898e0b5d94d48cb\",\n  \"Vintage\": \"b8b849d462f444fc817e06daacf95f5c\",\n  \"Cornerstone\": \"5884ea2244984ec490c52ab929946628\",\n  \"Ebury and Quadrille\": \"95afcce999774b17968d750df6f70db0\",\n  \"Penguin General\": \"ff2a35fcb4644459a4c019de70ab07ed\",\n  \"Transworld\": \"0b49cfcb32484fa980a5bc4cc8c11c51\",\n  \"Internal\": \"7e44ced632144a79b6a422c95d20004a\",\n  \"Andersen Press\": \"fd9200167fd8473287ad888d94b970d2\"\n}\nGoogle RECAPTCHA API key: 6Le1Tm4aAAAAAOGTLr7uV1nd8Z (this is specific to Marian keyes as the site already uses CAPTCHA)\nNB the above are already added for this site.\nStyle Forms\nNewsletter Form - Uses site specific CSS (No designs exist for this but please match to whats already there).\nCompetition Form - The styling is the same across all sites and will be available from the plugin itself. Ensure this looks correct and is not overridden by any site specific CSS. \nOnce installed you should see test forms available which will produce short codes for the pages, please add one of each type to test pages on Staging and ensure they are working.\nPlease add the page URL’s in the comments so Consumer Loyalty and Iterable can test this is working as expected.\nfor Sign off, Please move into Code Review so Tom can check implementation \nPost sign off from Tom, This can go directly into UAT and be assigned to Ellie / Michael and we will pass this ticket onto Helen and the Consumer Loyalty team / Iterable for sign off. \nOnce the ticket/work has been signed off by Consumer Loyalty (For the forms styling and data) and Seb at Iterable (to ensure the data is flowing correctly on Iterable’s side) \nPlease replace forms on the site\nIf any exist within the templates of the page (e.g. in footer) please replace these via code\nIf you find any forms on the site that are not included in the doc. Please replace these aswell but given the time available, a cursory check is fine. \n\n', 2, 0, '2025-01-20 20:21:08'),
(73, 'DC-1778', 5, 'ESP Ottolenghi: hide email sign up buttons on create an account - P1', 'As CL \nI would like to hide the 2 x email sign ups forms until the site is done\nSo users do not sign up for an email newsletter they will not get.\nLocation of newsletter sign up block\nOpen Screenshot 2024-12-18 at 11.41.28.png\n\nAcceptance Criteria\nPlease use the customiser to hide the 2 email sign up buttons on Ottolenghi (located in the create an account tab on the homepeage). \nNOTE This needs to be completed before the end of the work day on the 20th \n\n', 2, 0, '2025-01-20 20:22:20');
INSERT INTO `wp_sprint_tickets` (`id`, `jira_id`, `user_id`, `name`, `description`, `estimates`, `type`, `created_at`) VALUES
(74, 'DC-1760', 5, 'ESP: Peter Rabbit - P1', 'As Consumer Loyalty\nI would like to install, configure and style a plugin to replace the current Adestra ESP with Iterable \nSo that we can begin using the new ESP on the site.\nBackground \nTo replace Adestra with the new Email Service Provider (Iterable) Tom has created a plugin thats added to the CMS and configured. Forms will be created in Iterable that render short codes in the PRHForms plug-in, allowing us to add these to pages on site. There are 2 types, Newsletter and competitions (The forms will have been created already and available in the CMS via the PRHForms plugin).\nAcceptance Criteria\nThe Peter Rabbit site does not have a staging site (Tom is setting up a page for testing purposes but please note this is on Production). \nInstall the PRHforms plugin (Its a submodule in the author site repo’s)\nGo to PRHforms settings in the WP dashboard. Enter the following API keys:\nIterable API Keys:\n{\n  \"Brand\": \"252df6a7081447b4a3f933eb985b6113\",\n  \"Competitions\": \"9412fc580977413f9c25ba4803c9a290\",\n  \"Michael Joseph\": \"3aa082f9674b4bf299df58b707177297\",\n  \"Sales and Rights\": \"f0ca6e4db0374907b5e8ef020e309733\",\n  \"Children\'s\": \"95b1ad9917824ca0813a7aac3f33eb82\",\n  \"Penguin Press\": \"65d79b840d7b49f8b898e0b5d94d48cb\",\n  \"Vintage\": \"b8b849d462f444fc817e06daacf95f5c\",\n  \"Cornerstone\": \"5884ea2244984ec490c52ab929946628\",\n  \"Ebury and Quadrille\": \"95afcce999774b17968d750df6f70db0\",\n  \"Penguin General\": \"ff2a35fcb4644459a4c019de70ab07ed\",\n  \"Transworld\": \"0b49cfcb32484fa980a5bc4cc8c11c51\",\n  \"Internal\": \"7e44ced632144a79b6a422c95d20004a\",\n  \"Andersen Press\": \"fd9200167fd8473287ad888d94b970d2\"\n}\nGoogle RECAPTCHA API key: 6Le1Tm4aAAAAAOGTLr7uV1nd8Z (this is specific to Marian keyes as the site already uses CAPTCHA)\nNB the above are already added for this site.\nStyle Forms\nNewsletter Form - Uses site specific CSS (No designs exist for this but please match to whats already there).\nCompetition Form - The styling is the same across all sites and will be available from the plugin itself. Ensure this looks correct and is not overridden by any site specific CSS. \nOnce installed you should see test forms available which will produce short codes for the pages, please add one of each type to test pages on Staging and ensure they are working.\nPlease add the page URL’s in the comments so Consumer Loyalty and Iterable can test this is working as expected.\nfor Sign off, Please move into Code Review so Tom can check implementation \nPost sign off from Tom, This can go directly into UAT and be assigned to Ellie / Michael and we will pass this ticket onto Helen and the Consumer Loyalty team / Iterable for sign off. \nOnce the ticket/work has been signed off by Consumer Loyalty (For the forms styling and data) and Seb at Iterable (to ensure the data is flowing correctly on Iterable’s side) \nPlease replace forms on the site\nIf any exist within the templates of the page (e.g. in footer) please replace these via code\nIf you find any forms on the site that are not included in the doc. Please replace these aswell but given the time available, a cursory check is fine. \n\n', 2, 0, '2025-01-20 20:23:52'),
(75, 'DC-1759', 5, 'ESP: Terry Pratchett - P1', 'As Consumer Loyalty\nI would like to install, configure and style a plugin to replace the current Adestra ESP with Iterable \nSo that we can begin using the new ESP on the site.\nBackground \nTo replace Adestra with the new Email Service Provider (Iterable) Tom has created a plugin thats added to the CMS and configured. Forms will be created in Iterable that render short codes in the PRHForms plug-in, allowing us to add these to pages on site. There are 2 types, Newsletter and competitions (The forms will have been created already and available in the CMS via the PRHForms plugin).\nAcceptance Criteria\nThe Terry Pratchett site does not have a staging site (Tom is setting up a page for testing purposes but please note this is on Production). \nInstall the PRHforms plugin (Its a submodule in the author site repo’s)\nGo to PRHforms settings in the WP dashboard. Enter the following API keys:\nIterable API Keys:\n{\n  \"Brand\": \"252df6a7081447b4a3f933eb985b6113\",\n  \"Competitions\": \"9412fc580977413f9c25ba4803c9a290\",\n  \"Michael Joseph\": \"3aa082f9674b4bf299df58b707177297\",\n  \"Sales and Rights\": \"f0ca6e4db0374907b5e8ef020e309733\",\n  \"Children\'s\": \"95b1ad9917824ca0813a7aac3f33eb82\",\n  \"Penguin Press\": \"65d79b840d7b49f8b898e0b5d94d48cb\",\n  \"Vintage\": \"b8b849d462f444fc817e06daacf95f5c\",\n  \"Cornerstone\": \"5884ea2244984ec490c52ab929946628\",\n  \"Ebury and Quadrille\": \"95afcce999774b17968d750df6f70db0\",\n  \"Penguin General\": \"ff2a35fcb4644459a4c019de70ab07ed\",\n  \"Transworld\": \"0b49cfcb32484fa980a5bc4cc8c11c51\",\n  \"Internal\": \"7e44ced632144a79b6a422c95d20004a\",\n  \"Andersen Press\": \"fd9200167fd8473287ad888d94b970d2\"\n}\nGoogle RECAPTCHA API key: 6Le1Tm4aAAAAAOGTLr7uV1nd8Z (this is specific to Marian keyes as the site already uses CAPTCHA)\nNB the above are already added for this site.\nStyle Forms\nNewsletter Form - Uses site specific CSS (No designs exist for this but please match to whats already there).\nCompetition Form - The styling is the same across all sites and will be available from the plugin itself. Ensure this looks correct and is not overridden by any site specific CSS. \nOnce installed you should see test forms available which will produce short codes for the pages, please add one of each type to test pages on Staging and ensure they are working.\nPlease add the page URL’s in the comments so Consumer Loyalty and Iterable can test this is working as expected.\nfor Sign off, Please move into Code Review so Tom can check implementation \nPost sign off from Tom, This can go directly into UAT and be assigned to Ellie / Michael and we will pass this ticket onto Helen and the Consumer Loyalty team / Iterable for sign off. \nOnce the ticket/work has been signed off by Consumer Loyalty (For the forms styling and data) and Seb at Iterable (to ensure the data is flowing correctly on Iterable’s side) \nPlease replace forms on the site\nIf any exist within the templates of the page (e.g. in footer) please replace these via code\nIf you find any forms on the site that are not included in the doc. Please replace these aswell but given the time available, a cursory check is fine. \n\n', 2, 0, '2025-01-20 20:25:24'),
(76, 'DC-1761', 5, 'ESP: Puffin Schools - P1', 'As Consumer Loyalty\nI would like to install, configure and style a plugin to replace the current Adestra ESP with Iterable \nSo that we can begin using the new ESP on the site.\nBackground \nTo replace Adestra with the new Email Service Provider (Iterable) Tom has created a plugin thats added to the CMS and configured. Forms will be created in Iterable that render short codes in the PRHForms plug-in, allowing us to add these to pages on site. There are 2 types, Newsletter and competitions (The forms will have been created already and available in the CMS via the PRHForms plugin).\nAcceptance Criteria\nThe Puffin Schools site does not have a staging site (Tom is setting up a page for testing purposes but please note this is on Production). \nInstall the PRHforms plugin (Its a submodule in the author site repo’s)\nGo to PRHforms settings in the WP dashboard. Enter the following API keys:\nIterable API Keys:\n{\n  \"Brand\": \"252df6a7081447b4a3f933eb985b6113\",\n  \"Competitions\": \"9412fc580977413f9c25ba4803c9a290\",\n  \"Michael Joseph\": \"3aa082f9674b4bf299df58b707177297\",\n  \"Sales and Rights\": \"f0ca6e4db0374907b5e8ef020e309733\",\n  \"Children\'s\": \"95b1ad9917824ca0813a7aac3f33eb82\",\n  \"Penguin Press\": \"65d79b840d7b49f8b898e0b5d94d48cb\",\n  \"Vintage\": \"b8b849d462f444fc817e06daacf95f5c\",\n  \"Cornerstone\": \"5884ea2244984ec490c52ab929946628\",\n  \"Ebury and Quadrille\": \"95afcce999774b17968d750df6f70db0\",\n  \"Penguin General\": \"ff2a35fcb4644459a4c019de70ab07ed\",\n  \"Transworld\": \"0b49cfcb32484fa980a5bc4cc8c11c51\",\n  \"Internal\": \"7e44ced632144a79b6a422c95d20004a\",\n  \"Andersen Press\": \"fd9200167fd8473287ad888d94b970d2\"\n}\nGoogle RECAPTCHA API key: 6Le1Tm4aAAAAAOGTLr7uV1nd8Z (this is specific to Marian keyes as the site already uses CAPTCHA)\nNB the above are already added for this site.\nStyle Forms\nNewsletter Form - Uses site specific CSS (No designs exist for this but please match to whats already there).\nCompetition Form - The styling is the same across all sites and will be available from the plugin itself. Ensure this looks correct and is not overridden by any site specific CSS. \nOnce installed you should see test forms available which will produce short codes for the pages, please add one of each type to test pages on Staging and ensure they are working.\nPlease add the page URL’s in the comments so Consumer Loyalty and Iterable can test this is working as expected.\nfor Sign off, Please move into Code Review so Tom can check implementation \nPost sign off from Tom, This can go directly into UAT and be assigned to Ellie / Michael and we will pass this ticket onto Helen and the Consumer Loyalty team / Iterable for sign off. \nOnce the ticket/work has been signed off by Consumer Loyalty (For the forms styling and data) and Seb at Iterable (to ensure the data is flowing correctly on Iterable’s side) \nPlease replace forms on the site\nIf any exist within the templates of the page (e.g. in footer) please replace these via code\nIf you find any forms on the site that are not included in the doc. Please replace these aswell but given the time available, a cursory check is fine. \n\n', 2, 0, '2025-01-20 20:26:54'),
(77, 'DC-1762', 5, 'ESP: Ladybird Education - P1', 'As Consumer Loyalty\nI would like to install, configure and style a plugin to replace the current Adestra ESP with Iterable \nSo that we can begin using the new ESP on the site.\nBackground \nTo replace Adestra with the new Email Service Provider (Iterable) Tom has created a plugin thats added to the CMS and configured. Forms will be created in Iterable that render short codes in the PRHForms plug-in, allowing us to add these to pages on site. There are 2 types, Newsletter and competitions (The forms will have been created already and available in the CMS via the PRHForms plugin).\nAcceptance Criteria\nThe Ladybird Education site does not have a staging site (Tom is setting up a page for testing purposes but please note this is on Production). \nInstall the PRHforms plugin (Its a submodule in the author site repo’s)\nGo to PRHforms settings in the WP dashboard. Enter the following API keys:\nIterable API Keys:\n{\n  \"Brand\": \"252df6a7081447b4a3f933eb985b6113\",\n  \"Competitions\": \"9412fc580977413f9c25ba4803c9a290\",\n  \"Michael Joseph\": \"3aa082f9674b4bf299df58b707177297\",\n  \"Sales and Rights\": \"f0ca6e4db0374907b5e8ef020e309733\",\n  \"Children\'s\": \"95b1ad9917824ca0813a7aac3f33eb82\",\n  \"Penguin Press\": \"65d79b840d7b49f8b898e0b5d94d48cb\",\n  \"Vintage\": \"b8b849d462f444fc817e06daacf95f5c\",\n  \"Cornerstone\": \"5884ea2244984ec490c52ab929946628\",\n  \"Ebury and Quadrille\": \"95afcce999774b17968d750df6f70db0\",\n  \"Penguin General\": \"ff2a35fcb4644459a4c019de70ab07ed\",\n  \"Transworld\": \"0b49cfcb32484fa980a5bc4cc8c11c51\",\n  \"Internal\": \"7e44ced632144a79b6a422c95d20004a\",\n  \"Andersen Press\": \"fd9200167fd8473287ad888d94b970d2\"\n}\nGoogle RECAPTCHA API key: 6Le1Tm4aAAAAAOGTLr7uV1nd8Z (this is specific to Marian keyes as the site already uses CAPTCHA)\nNB the above are already added for this site.\nStyle Forms\nNewsletter Form - Uses site specific CSS (No designs exist for this but please match to whats already there).\nCompetition Form - The styling is the same across all sites and will be available from the plugin itself. Ensure this looks correct and is not overridden by any site specific CSS. \nOnce installed you should see test forms available which will produce short codes for the pages, please add one of each type to test pages on Staging and ensure they are working.\nPlease add the page URL’s in the comments so Consumer Loyalty and Iterable can test this is working as expected.\nfor Sign off, Please move into Code Review so Tom can check implementation \nPost sign off from Tom, This can go directly into UAT and be assigned to Ellie / Michael and we will pass this ticket onto Helen and the Consumer Loyalty team / Iterable for sign off. \nOnce the ticket/work has been signed off by Consumer Loyalty (For the forms styling and data) and Seb at Iterable (to ensure the data is flowing correctly on Iterable’s side) \nPlease replace forms on the site\nIf any exist within the templates of the page (e.g. in footer) please replace these via code\nIf you find any forms on the site that are not included in the doc. Please replace these aswell but given the time available, a cursory check is fine. \n\n', 2, 0, '2025-01-20 20:28:31'),
(78, 'DC-1763', 5, 'ESP: Penguin Readers - P1', 'As Consumer Loyalty\nI would like to install, configure and style a plugin to replace the current Adestra ESP with Iterable \nSo that we can begin using the new ESP on the site.\nBackground \nTo replace Adestra with the new Email Service Provider (Iterable) Tom has created a plugin thats added to the CMS and configured. Forms will be created in Iterable that render short codes in the PRHForms plug-in, allowing us to add these to pages on site. There are 2 types, Newsletter and competitions (The forms will have been created already and available in the CMS via the PRHForms plugin).\nAcceptance Criteria\nThe Penguin Readers site does not have a staging site (Tom is setting up a page for testing purposes but please note this is on Production). \nInstall the PRHforms plugin (Its a submodule in the author site repo’s)\nGo to PRHforms settings in the WP dashboard. Enter the following API keys:\nIterable API Keys:\n{\n  \"Brand\": \"252df6a7081447b4a3f933eb985b6113\",\n  \"Competitions\": \"9412fc580977413f9c25ba4803c9a290\",\n  \"Michael Joseph\": \"3aa082f9674b4bf299df58b707177297\",\n  \"Sales and Rights\": \"f0ca6e4db0374907b5e8ef020e309733\",\n  \"Children\'s\": \"95b1ad9917824ca0813a7aac3f33eb82\",\n  \"Penguin Press\": \"65d79b840d7b49f8b898e0b5d94d48cb\",\n  \"Vintage\": \"b8b849d462f444fc817e06daacf95f5c\",\n  \"Cornerstone\": \"5884ea2244984ec490c52ab929946628\",\n  \"Ebury and Quadrille\": \"95afcce999774b17968d750df6f70db0\",\n  \"Penguin General\": \"ff2a35fcb4644459a4c019de70ab07ed\",\n  \"Transworld\": \"0b49cfcb32484fa980a5bc4cc8c11c51\",\n  \"Internal\": \"7e44ced632144a79b6a422c95d20004a\",\n  \"Andersen Press\": \"fd9200167fd8473287ad888d94b970d2\"\n}\nGoogle RECAPTCHA API key: 6Le1Tm4aAAAAAOGTLr7uV1nd8Z (this is specific to Marian keyes as the site already uses CAPTCHA)\nNB the above are already added for this site.\nStyle Forms\nNewsletter Form - Uses site specific CSS (No designs exist for this but please match to whats already there).\nCompetition Form - The styling is the same across all sites and will be available from the plugin itself. Ensure this looks correct and is not overridden by any site specific CSS. \nOnce installed you should see test forms available which will produce short codes for the pages, please add one of each type to test pages on Staging and ensure they are working.\nPlease add the page URL’s in the comments so Consumer Loyalty and Iterable can test this is working as expected.\nfor Sign off, Please move into Code Review so Tom can check implementation \nPost sign off from Tom, This can go directly into UAT and be assigned to Ellie / Michael and we will pass this ticket onto Helen and the Consumer Loyalty team / Iterable for sign off. \nOnce the ticket/work has been signed off by Consumer Loyalty (For the forms styling and data) and Seb at Iterable (to ensure the data is flowing correctly on Iterable’s side) \nPlease replace forms on the site\nIf any exist within the templates of the page (e.g. in footer) please replace these via code\nIf you find any forms on the site that are not included in the doc. Please replace these aswell but given the time available, a cursory check is fine. \n\n', 2, 0, '2025-01-20 20:30:07'),
(79, 'DC-1725', 6, 'Redesign: add slider option to button block - P1', ' \nBackground\nCurrently when you add a number of buttons to a page they will automatically be added in a grid layout.\nOpen image-20241119-205409.png\n\nOpen image-20241209-173407.png\n\nOpen image-20241209-173503.png\n\n \nThis doesn’t look great when adding a lot of buttons or on mobile, so we would like to introduce the ability to add buttons in a slider so that a user can scroll through these buttons instead.\nDesigns\nPRH Design System - Multi-site \nAcceptance criteria\nEnsure that:\nan editor can choose between grid and slider layout when adding more than one button in a row\nan editor can choose to add an optional content header\nan editor can otherwise continue to add buttons in the same way as the current experience, with the same variations and settings available to choose from\nif the slider layout is selected, a user can swipe to browse the buttons, or navigate using carousel indicators\nthe buttons display as expected across breakpoints\n\n', 5, 0, '2025-01-20 20:31:45'),
(80, 'DC-1692', 5, 'Redesign: hard code content cards in nav for day 1 launch - P1', 'As a user, I’d like to see the most important content merchandised clearly so I can make quick and easy decisions about where I should navigate to.\nBackground\nIn DC-1593: Redesign: navigationDone\n we restyled the navigation but pulled out the ability to update the navigation content cards in the back end into a separate ticket - DC-1666: Redesign: content cards in navigationTo Do\n .\nHowever, in the interests of delivery we will now hard code this content for day 1 launch and work on the back end functionality further down the line when we have more capacity.\nContent tbc, will confirm closer to launch\nAcceptance criteria\nEnsure that:\nThe imagery and headings are updated correctly\nThe cards continue to display and function as expected across the different breakpoints\nIf a content card and heading link out to an external site (eg. Shop), an external icon appears at the end of the heading.\n \nContent URLs\nFiction\nContent card 1 - 100 must-read classics - /discover/articles/100-must-read-classic-books -\nContent card 2 - The Penguin Podcast - /discover/podcast\nContent card 3 - The best book club reads  - /discover/articles/the-ultimate-book-club-reads-for-2020\nNon-fiction\nContent card 1 - Self-help books for positive change - /discover/articles/best-self-help-books-for-a-better-life\nContent card 2 - The best new memoirs - /discover/articles/new-memoirs-autobiographies-biographies\nChildren’s\nContent card 1 - Discover the Puffin hub -  /discover/puffin\nContent card 2 - Discover the Ladybird hub - /discover/ladybird\nAbout us\nContent card 1 - Lit in Colour - /about/social-impact/lit-in-colour\nContent card 2 - Cover Design Award - /about/work-with-us/cover-design-award\nPenguin Shop\nContent card link - Browse the Penguin Shop - Gifts for Book Lovers & Readers | Buy Online at The Penguin Shop \n', 3, 0, '2025-01-20 20:44:13'),
(81, 'DC-1744', 5, 'Redesign: \\\\\\\'View more\\\\\\\' book results on author page delivering books not by author - P1', 'Overview\nThe ‘view more’ link on author pages takes users to a search result page including books by different authors.\nContext\nA while ago we made a fix to the ‘view more’ search results as users were seeing books by an author but also books by authors with the same first name or surname after the expected author’s books. See DC-1433: Penguin Author \"View More\" not explicitDone\n where we changed the search term in the URL to be (for example) kate-atkinson instead of kate+atkinson to fix this.\nMore recently, we noticed that although the above fix remains in place, the same problem has returned. We did not attempt a fix in the hope that it would become simpler to solve with smart search.\nHowever, now we’ve begun the content build on redesign prod, we’ve noticed a new issue. As well as displaying titles by other authors, the search result page does not necessarily display the correct author’s books first - see https://prod-2024.penguin.co.uk/authors/183533/kate-atkinson example - or the intended author’s books are broken up by books by other authors. See https://prod-2024.penguin.co.uk/authors/127066/tom-fletcher example.\nSteps to reproduce\nNavigate to https://prod-2024.penguin.co.uk/authors/183533/kate-atkinson or https://prod-2024.penguin.co.uk/authors/127066/tom-fletcher\nClick on the ‘view more’ link in the bookshelf\nObserve that the search results serve a book by another author before those by the intended author\nAcceptance criteria\nEnsure that when a user clicks ‘view more’ on an author page:\nthey see all books by the expected author\nthey do not see books by authors with similar names\nDev Notes\nThis can easily be fixed by adding a + rather than a - in the constructed URL. e.g.for the Tom Fletcher example ebove, https://prod-2024.penguin.co.uk/search-results?tab=books&q=Tom-Fletcher&x9=author&q9=Tom-Fletcher should be  https://prod-2024.penguin.co.uk/search-results?tab=books&q=Tom+Fletcher&x9=author&q9=Tom+Fletcher and will limit results to only Tom Flecther books.\n', 0, 0, '2025-01-20 20:46:01'),
(82, 'DC-1774', 5, 'Redesign: spotlight card (content variant) button styling – P1', 'Following the approval and deployment of DC-1552: Redesign: spotlight card (content variant)Done\n to STAGE, the button styling on the spotlight card (content variation) is appearing differently to the approved designs: https://stage-2024.penguin.co.uk/test-page-km\nbackground colour has disappeared on button CTA - please restore\nfont in button is different to those in the designs - please cross-reference with designs\nDesigns\nPRH Design System - Multi-site \nSteps to replicate\nOn the STAGE CMS, add a spotlight (content variant) block\nPreview button styling in browser\nAcceptance criteria\nOn the STAGE CMS, on adding the spotlight block (content variant) designs should be as per the expected appearance below.\n\nBut it has changed to the button having no bg and the font is different \nExpected appearance:\nOpen image-20241216-104412.png\n\nCurrent appearance on Stage:\nOpen image-20241216-104052.png\n\n\n\n', 0, 0, '2025-01-20 20:49:43'),
(83, 'DC-1766', 2, 'Page header overlapping with breadcrumb on company pages - P1', 'eg https://prod-2024.penguin.co.uk/company/about-us\n\nOpen\n\n\n\n', 0, 0, '2025-01-20 20:51:18'),
(84, 'DC-1715', 2, 'Redesign: Shorthand page navigation issues - P1', 'Overview\nThe navigation is not displaying correctly on pages with a Shorthand embed.\nContext\nThe Comms and Social Impact teams use a tool called Shorthand to create reports which are then embedded in pages or company pages on the website.\nHowever, on the new prod we’re seeing an issue with the navigation on pages with a Shorthand embed - see example below.\neg https://prod-2024.penguin.co.uk/company/social-impact/our-recent-impact/journey-to-net-zero-2/ \nOpen image-20241114-210412.png\n\nAcceptance criteria\nEnsure that the navigation displays correctly across breakpoints on all company pages with a Shorthand embed.\n', 0, 0, '2025-01-20 20:52:52'),
(85, 'DC-1724', 2, 'Redesign: Overridden content card category pill and heading reverts after saving - P1', 'Steps to replicate\nAdd content cards to a page\nRemove or override the text in the category pill and the heading\nAdd a URL override for the category pill destination\nUpdate the page and observe that the category pills are suppressed on the front end if they’ve been removed, or are overridden on the front end if overridden\nNavigate away from the page in the CMS and then return\nObserve that in the back end, the original category pill text displays\nUpdate the page and observe that the original category pill text and heading display on the front end, and the URL override is now missing from the back end\n \neg. https://prod-2024.penguin.co.uk/genres/non-fiction-books - scroll down to Penguin Shop section\n', 0, 0, '2025-01-20 20:54:17'),
(86, 'DC-1752', 3, 'Redesign: spotlight slider being cut off on Pages - P1', 'Overview\nWe’ve noticed that the spotlight slider is being cut off on Pages on prod\nContext\nSee https://prod-2024.penguin.co.uk/discover for an example\nOpen image-20241209-170519.png\n\nAcceptance criteria\nEnsure that the spotlight slider block is not cut off on Pages\n', 0, 0, '2025-01-20 20:56:08'),
(87, 'DC-1702', 3, 'Redesign: fix block heading colour within black wrapper block - P1', 'As a user, I’d like text to be legible on coloured backgrounds so I can read it.\nBackground\nWhen adding some blocks within a black wrapper block, the heading stays black, rather than changing to white, and can’t be read.\nThis ticket will amend this in the following blocks:\nLogo card carousel\nContent card carousel\nPossibly event card list? tbc following heading class fix\nhttps://stage-2024.penguin.co.uk/wrapper-block-uat\nAcceptance criteria\nEnsure that headings in the above blocks display in the correct colour when used within a wrapper block.\n', 0, 0, '2025-01-20 20:58:00'),
(88, 'DC-1723', 3, 'Redesign: Can\\\\\\\'t add price to content card without discount price - P1', 'Some Shop products aren’t discounted; some have a bundle offer, eg. 3 for £33. We’d like to be able to show the price / offer to avoid having some cards where the price is displayed and others where it’s not.\n\nOpen image-20241209-172616.png\n\nIf there is no discounted price, the price should be put in the ‘original price’ field.\nIf there is a bundle offer, the offer details should be put in the ‘discounted price’ field.\n', 0, 0, '2025-01-20 20:59:21'),
(89, 'DC-1771', 3, 'Redesign: 90th logo in global header – P2', 'As a user, I’d like to see the Penguin 90th anniversary logo on the header navigation of the new Penguin website, replacing the current Penguin logo.\n\nOpen image-20241212-170943.png\n\nBackground\nAhead of Penguin’s 90th anniversary, the brand team have created a specialist 90th anniversary logo. \nThis logo needs to replace the current normal Penguin logo in the global header of the website.\nDesigns\nLogo assets available here: 90th logo \n\nPlease note: there are two variations of the logo available. We will need to make a recommendation to Brand based on accessibility. The primary preference is the ‘since 1935’ logo, but if this is not accessible on smaller screens, the ‘90’ version should be used:\n\nPREFERRED: \nOpen image-20241216-114347.png\n\nALTERNATIVE:\nOpen image-20241216-114429.png\n\nAcceptance criteria\nThe Penguin 90th logo should:\nAppear globally in the navigation\nReplace the existing normal Penguin logo\nScale the same way as the existing normal Penguin logo\n\n', 3, 0, '2025-01-20 21:00:55'),
(90, 'DC-1711', 2, 'Redesign: incorrect Puffin yellow hex code in block text block - P2', 'Background\nIn DC-1545: Redesign: block text componentDone\n we created the new block text block, including pre-set brand colour backgrounds.\nHowever now we have begun content build we have discovered that the Puffin yellow colour has been added incorrectly.\nThe hex code should be #FAD715 but instead it is #FADF15.\nAcceptance criteria\nEnsure that:\nthe Puffin yellow background colour in the block text block is #FAD715\nthe block otherwise continues to function as expected.\n\n', 1, 0, '2025-01-20 21:02:09'),
(91, 'DC-1730', 2, 'Redesign: & in category pills and buttons displaying as &amp; on front end - P1', 'Character entity displaying on front end, though displaying as expected in back end\neg https://prod-2024.penguin.co.uk/discover/puffin\nOpen image-20241122-130308.png\n\n \nhttps://peng2024wp.wpenginepowered.com/wp-admin/post.php?post=51735&action=edit\nOpen image-20241122-130330.png\n\n \nYesterday I overrode these to say ‘Crafts and activities’ ahead of a session with PRHC and they have since reverted - probably related to DC-1724: Redesign: Overridden content card category pill and heading reverts after saving - P1Done\n \n', 0, 0, '2025-01-20 21:03:32'),
(92, 'DC-1782', 2, 'Redesign – Category Pills horizontally overlapping on Desktop – P2', 'On desktop and tablet only, pills including categories are crashing into each other when they go onto more than one line. This was previously resolved on mobile as part of UAT on this ticket, but is now happening on desktop and tablet:\nDESKTOP:\nOpen Screenshot 2024-12-18 at 12.53.17.png\n\nTABLET:\nOpen Screenshot 2024-12-18 at 12.53.31.png\n\n \nSteps to replicate on the front end:\nView on articles:\nhttps://prod-2024.penguin.co.uk/articles/2024/10/vintage-books-to-gift-this-christmas\nhttps://prod-2024.penguin.co.uk/articles/2024/10/personalised-gift-recommendations-from-vintage\nSteps to replicate in the CMS :\nCreate an article\nAdd 6 items to ‘Categories’ in the left-hand navigation\nPublish the article\nView on desktop or mobile\nOpen image-20241218-121746.png\n\n\n', 0, 0, '2025-01-20 21:04:52'),
(93, 'DC-1647', 2, 'Redesign: add internal tagging function - P2', 'As an editor, I’d like to add internal tags to the CMS so I can connect related content.\nBackground\nOn the current site, an editor can add tags to an article and these display on the front end at the bottom of an article. Some of these are audience-facing, but others exist for internal reasons and these shouldn’t really be visible to users.\nWe would therefore like to introduce the ability to add internal tagging to a post to enable back end processes in a way that doesn’t impact what displays to users on the front end.\nThis will lay the groundwork for future work planned for day 2, when we come to automate article promotion across the site - eg. on the Penguin Classics content hub, we could have a carousel of content cards that automatically displays the latest articles tagged with ‘Penguin Classics’.\nAcceptance criteria\nEnsure that:\nan editor add internal tags to a post, children’s article or company article\nthese tags do not appear anywhere on the front end\nthere are two distinct places in the CMS that make it clear where an editor should add internal tags and where they should add external-facing tags.\n\n', 5, 0, '2025-01-20 21:06:17'),
(94, 'DC-1604', 3, 'Redesign: update breadcrumb styling - P2', 'As a user, I’d like to see breadcrumbs styled in line with the rest of the site so that I have a consistent user experience.\nBackground\nThis ticket will cover the update to the styling of breadcrumbs across the site.\nAny changes to the breadcrumb paths themselves will be covered in DC-1639: Penguin Redesign (SEO): Breadcrumbs - P1In Progress\n. \nDesigns\nPRH Design System - Multi-site \nAcceptance criteria\nEnsure that:\nthe styling of breadcrumbs across the site is updated as per the designs\nthe positioning of breadcrumbs remains consistent according to the page type and location of header image\nthe breadcrumbs display as expected across the different breakpoints\nthe expected hover state can be seen on hover\nthe user’s current page remains not clickable within the breadcrumb\nNotes\nThere is no requirement to have different brand styling on children’s pages - all pages can use the same styling seen in the designs.\n', 3, 0, '2025-01-21 19:07:07'),
(95, 'DC-1794', 3, 'Redesign: Add heading to event card list when only one event displays - P1', 'Currently if you add an event card list, you can add an optional heading to the block.\nEven if this heading is added in the CMS, it does not display if there is only one event showing on the front end - for example if you are only promoting one event, or if there is only one event in the future and all previous events are suppressed on the front end.\nThis is a rather strange user experience - for example, on an author page, a user will jump down to ‘Events\' in the anchor menu and it will be the only section of the page where the heading does not display. See screenshot below, where the event looks like it is part of the section above it.\n\nAcceptance criteria\nEnsure that if a heading is added to the event card list block in the CMS, the heading displays on the front end when there is a minimum of one future event.\n', 1, 0, '2025-01-21 19:13:38'),
(96, 'DC-1787', 2, 'Redesign: Can\\\'t align image correctly in image block - P1', 'Example 1\nFront end: https://prod-2024.penguin.co.uk/discover/campaigns/think-again-by-jacqueline-wilson\nBack end: https://peng2024wp.wpenginepowered.com/wp-admin/post.php?post=80150&action=edit\nEven when ‘align centre’ is selected, the image no longer aligns in the centre of the page.\nExample 2\nFront end: https://prod-2024.penguin.co.uk/company/publishers/penguin-general/editors/alistair-thompson\nBack end: https://peng2024wp.wpenginepowered.com/wp-admin/post.php?post=63580&action=edit\nOn current prod, when ‘align left’ selected, the image aligns to the left with the text to the right. Here, the text displays below the image. See Alistair Thompson \nAcceptance criteria\nEnsure image alignment options within image block work as expected.\n', 0, 0, '2025-01-21 19:15:27'),
(97, 'DC-1795', 2, 'Redesign: Add HTML anchor field to content card carousel and tabbed container - P1', 'As a user, I’d like to use the anchor menu to jump to different sections of a page so I can find what I want quickly and easily.\nBackground\nDuring content build we’ve found a couple of blocks don’t have an HTML anchor field, but we’d like to use them in conjunction with the anchor menu.\nThis ticket will add the functionality to the following blocks:\ncontent card carousel\ntabbed container\nAcceptance criteria\nEnsure that an editor can add an HTML anchor to the heading of the content card carousel and tabbed container\n', 1, 0, '2025-01-21 19:18:52'),
(98, 'DC-1798', 2, 'Redesign: Add external content option to slim content card - P1', 'As a user, I\'d like to see a range of content signposted so I can decide where to go next in my journey based on my interests.\nBackground\nIn DC-1624: Redesign: slim content cardDone\n we created the slim content card block.\nAt the time we didn’t think we would use to it to promote external content on third-party websites, but during content build we’re finding much of the content we need to showcase doesn’t have  imagery, and the slim content card is our only content block with a no-image option.\nWe’d therefore like to amend the block to allow an editor to promote external URLs.\nIf possible, the ideal back end user experience would be similar to that of the logo card, where you can search for a post or page OR type a URL (see screenshot below), rather than like the content card or spotlight content card where you first have to search for a post or page and THEN override all the elements. If we’re able to implement something similar to the logo card, this will prevent us needing to work on an additional ticket in phase two to improve the back end experience.\nOpen image-20250110-103536.png\n\n \nAcceptance criteria\nEnsure that:\nAn editor can search for a post or page using a lookup, or indicate a destination URL (internal OR external)\nAll other back end and front end options are preserved - styling, colour options, ability to add and remove an image and a roundel\n\n', 2, 0, '2025-01-21 19:21:16'),
(99, 'DC-1793', 2, 'Redesign: Content card width changes depending on content within card - P1', 'eg https://prod-2024.penguin.co.uk/authors/139794/kim-hillyard\n\neg https://prod-2024.penguin.co.uk/company/contact-us-offices\n\n\n', 0, 0, '2025-01-21 19:23:44'),
(100, 'DC-1721', 6, 'Redesign: Can\\\'t select from pre-set wrapper block colours', 'Overview\nPre-set wrapper block colour options are not displaying in the CMS on prod\nContext\nThe wrapper block should have a number of selectable colour options that editors can choose from. Admins can choose from this too, though they also have access to a colour picker.\nThe colour options should be black, grey, Penguin orange, Puffin yellow, Ladybird red and Vintage red, as per the designs. This was tested on staging and the options were available, but the work was then deployed to prod where the options are no longer available - see screenshot below.\nOpen image-20241119-105645.png\n\nAcceptance criteria\nEnsure that editors can choose from the pre-set colour options when adding or editing a wrapper block\n', 3, 0, '2025-01-21 19:26:42'),
(101, 'DC-1680', 6, 'Redesign: quick view modal restyling - P2', 'As a user, I’d like to see the quick view modal styled in line with the rest of the site so that I have a consistent user experience.\nBackground\nThis ticket will cover the update to the styling of the quick view modal across the site.\nDesigns\nhttps://www.figma.com/design/gynOSZd4Szb14Ia9TvayU4/Redesign---Quick-view-modal?node-id=1-2&t=Dw8auAWuMOR9E7AP-1Connect your Figma account \nAcceptance criteria\nEnsure that:\nthe styling of the modal across the site is updated as per the designs\nthe modal displays as expected across the different breakpoints\nthe modal functionality otherwise stays the same.\n\n', 3, 0, '2025-01-21 19:29:24'),
(102, 'DC-1786', 2, 'Redesign - quality of images on Author Card block needs addressing - P1', 'Despite uploading a high quality image to the CMS, the quality of resolution is not desirable - see https://stage-2024.penguin.co.uk/authors/141792/richard-osman for example or https://stage-2024.penguin.co.uk/authors/183491/sophie-kinsella\n', 1, 0, '2025-01-21 19:31:08'),
(103, 'DC-1748', 2, 'Redesign: Spotlight card button CTAs now in title case rather than sentence case', 'Steps to reproduce\ncreate a page in the CMS\ncreate a ‘Spotlight Book Card’ ensuring the button type remains as the default i.e. Drop-down\ncreate a ‘Spotlight Content Card’ ensuring the toggle ‘Hide Buttons and Links’ remains as the default i.e. switched off\nview both blocks in both editor and on front end\nExpected result\nSentence case should be used\nFor the Spotlight Book Card the button label SHOULD be \'Buy the book\'\nFor the Spotlight Content Card the button label SHOULD be ‘Learn more’\nActual result\nTitle case is being used\nFor the Spotlight Book Card the button label is \'Buy The Book\'\nFor the Spotlight Content Card the button label is ‘Learn More’\nSee https://stage-2024.penguin.co.uk/dc-1748\nNOTE here you can see that the book card issue is no longer reproducible on STAGE - @Griffiths, Rhiannon have I missed something or possibly a fix has taken place?\nOpen image-20250120-125216.png\n\n \nRhi’s screenshot:\nOpen image-20241206-155611.png\n\n', 1, 0, '2025-01-21 19:32:43');

-- --------------------------------------------------------

--
-- Table structure for table `wp_sprint_tickets_revisions`
--

CREATE TABLE `wp_sprint_tickets_revisions` (
  `id` int(11) UNSIGNED NOT NULL,
  `sprint_id` int(11) NOT NULL,
  `jira_id` varchar(50) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `status` varchar(50) NOT NULL,
  `percentage` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_sprint_tickets_revisions`
--

INSERT INTO `wp_sprint_tickets_revisions` (`id`, `sprint_id`, `jira_id`, `ticket_id`, `comment`, `status`, `percentage`, `created_at`) VALUES
(1, 1, 'DC-1616', 1, 'Approved and merged.', 'done', '100', '2025-01-16 07:50:33'),
(2, 1, 'DC-1617', 2, 'Approved and Merged.', 'done', '100', '2025-01-16 07:58:48'),
(3, 1, 'DC-1623', 3, 'Some internal discussions within Penguin team for breakpoints, Additionally one JS file also needed to update.', 'blocked', '90', '2025-01-16 08:41:29'),
(4, 1, 'DC-1612', 4, 'Approved and merged to production.', 'done', '100', '2025-01-17 18:29:28'),
(5, 1, 'DC-1622', 5, 'In discussion with Tom/Maisie, requires some more changes but in future ticket', 'code_review', '99', '2025-01-17 18:31:43'),
(6, 1, 'DC-1593', 6, 'Some issue of navigation in Desktop, search is remaining in Mobile\r\n', 'in_progress', '80', '2025-01-17 18:34:06'),
(7, 1, 'DC-1546', 7, 'Block as we are not able to generate Gutenberg block in Backend.\r\n', 'in_progress', '60', '2025-01-17 18:37:21'),
(8, 1, 'DC-1592', 8, 'Finished, some linting issues to be fixed before code review.\r\n', 'in_progress', '90', '2025-01-17 18:39:09'),
(9, 1, 'DC-1563', 9, 'Bhuvan just started on this.\r\n', 'in_progress', '0', '2025-01-17 18:41:04'),
(10, 2, 'DC-1592', 10, 'Approved and merged to production.', 'done', '100', '2025-01-17 18:52:49'),
(11, 2, 'DC-1592', 8, 'Finished with some small QA issues\r\n', 'done', '100', '2025-01-17 19:03:39'),
(12, 2, 'DC-1544', 11, 'Not yet started\r\n', 'to_do', '0', '2025-01-17 19:05:32'),
(13, 2, 'DC-1565', 12, 'Almost finished with some slider issues\r\n', 'in_progress', '80', '2025-01-17 19:07:03'),
(14, 2, 'DC-1559', 13, 'Stucked with some GraphQL updates, discussing with Maisie\r\n', 'in_progress', '90', '2025-01-17 19:09:19'),
(15, 2, 'DC-1576', 14, 'Some backend CSS remaining, rest all good\r\n', 'in_progress', '90', '2025-01-17 19:10:49'),
(16, 2, 'DC-1585', 15, 'Having some Data props issues \r\n', 'in_progress', '90', '2025-01-17 19:12:37'),
(17, 2, 'DC-1593', 6, 'Approved and merged to production.', 'done', '100', '2025-01-17 19:13:27'),
(18, 2, 'DC-1563', 9, 'Approved and merged.', 'done', '100', '2025-01-17 19:14:58'),
(19, 2, 'DC-1546', 7, 'Approved and merged.', 'done', '100', '2025-01-17 19:15:25'),
(20, 2, 'DC-1612', 4, 'Approved and merged.', 'done', '100', '2025-01-17 19:15:59'),
(21, 3, 'DC-1572', 16, '', 'to_do', '0', '2025-01-17 19:18:40'),
(22, 3, 'DC-1596', 17, 'Component deployed to production, WP Block in progress\r\n', 'in_progress', '50', '2025-01-17 19:20:56'),
(23, 3, 'DC-1552', 18, 'Fixing some slider issues\r\n', 'in_progress', '80', '2025-01-17 19:23:06'),
(24, 3, 'DC-1557', 19, '', 'to_do', '0', '2025-01-17 19:24:56'),
(25, 3, 'DC-1631', 20, '', 'to_do', '0', '2025-01-17 19:26:26'),
(26, 3, 'DC-1630', 21, '', 'uat', '90', '2025-01-17 19:27:55'),
(27, 3, 'DC-1632', 22, 'Maisie wants a wp block for it too\r\n', 'code_review', '50', '2025-01-17 19:29:34'),
(28, 3, 'DC-1582', 23, '', 'to_do', '0', '2025-01-17 19:32:31'),
(29, 3, 'DC-1562', 24, '', 'to_do', '0', '2025-01-17 19:33:41'),
(30, 3, 'DC-1580', 25, '', 'to_do', '0', '2025-01-17 19:34:53'),
(31, 3, 'DC-1629', 26, '', 'in_progress', '80', '2025-01-17 19:36:08'),
(32, 3, 'DC-1542', 27, '', 'to_do', '0', '2025-01-17 19:37:35'),
(33, 3, 'DC-1593', 6, '', 'uat', '90', '2025-01-17 19:38:06'),
(34, 3, 'DC-1592', 8, '', 'uat', '90', '2025-01-17 19:38:32'),
(35, 3, 'DC-1559', 13, '', 'in_progress', '40', '2025-01-17 19:39:12'),
(36, 3, 'DC-1576', 14, 'Some slider issues fixes remaining for mobile devices\r\n', 'in_progress', '80', '2025-01-17 19:39:36'),
(37, 3, 'DC-1563', 9, 'Approved and merged.', 'done', '100', '2025-01-17 19:40:02'),
(38, 3, 'DC-1546', 7, 'Approved and merged.', 'done', '100', '2025-01-17 19:40:37'),
(39, 3, 'DC-1565', 12, '', 'code_review', '90', '2025-01-17 19:40:58'),
(40, 3, 'DC-1585', 15, '', 'code_review', '90', '2025-01-17 19:41:19'),
(41, 3, 'DC-1544', 11, '', 'in_progress', '50', '2025-01-17 19:41:42'),
(42, 4, 'DC-1572', 16, 'Maisie requested some changes in back-end PR\r\n', 'in_progress', '90', '2025-01-17 19:43:25'),
(43, 4, 'DC-1596', 17, '', 'code_review', '100', '2025-01-17 19:44:24'),
(44, 4, 'DC-1552', 18, '', 'qa', '100', '2025-01-17 19:44:43'),
(45, 4, 'DC-1557', 19, '', 'qa', '90', '2025-01-17 19:45:12'),
(46, 4, 'DC-1631', 20, '', 'in_progress', '50', '2025-01-17 19:45:35'),
(47, 4, 'DC-1630', 21, 'Approved and merged.', 'done', '100', '2025-01-17 19:45:58'),
(48, 4, 'DC-1632', 22, 'Creating backend block\r\n', 'in_progress', '70', '2025-01-17 19:46:25'),
(49, 4, 'DC-1582', 23, 'Passed code review.', 'code_review', '90', '2025-01-17 19:47:04'),
(50, 4, 'DC-1562', 24, '', 'in_progress', '40', '2025-01-17 19:47:48'),
(51, 4, 'DC-1580', 25, 'Ready for Code Review', 'in_progress', '80', '2025-01-17 19:48:21'),
(52, 4, 'DC-1629', 26, 'Passed Code Review, ready for QA.', 'code_review', '90', '2025-01-17 19:49:07'),
(53, 4, 'DC-1542', 27, '', 'to_do', '0', '2025-01-17 19:49:26'),
(54, 4, 'DC-1593', 6, 'Approved and merged.', 'done', '100', '2025-01-17 19:49:57'),
(55, 4, 'DC-1592', 8, 'Approved and merged.', 'done', '100', '2025-01-17 19:50:38'),
(56, 4, 'DC-1559', 13, 'Approved, Ready for QA.', 'code_review', '80', '2025-01-17 19:51:16'),
(57, 4, 'DC-1576', 14, 'Approved and merged.', 'done', '100', '2025-01-17 19:51:47'),
(58, 4, 'DC-1565', 12, 'Some additions from Jeremy and Charlotte\r\n', 'in_progress', '80', '2025-01-17 19:52:24'),
(59, 4, 'DC-1585', 15, 'Jeremy and Rhi have to update the scope of the ticket\r\n\r\n', 'blocked', '90', '2025-01-18 10:50:45'),
(60, 4, 'DC-1544', 11, 'Almost completed, some backend config is left\r\n', 'in_progress', '80', '2025-01-18 10:52:03'),
(61, 4, 'DC-1627', 28, 'Just have to check if eveything is working fine on windows\r\n', 'in_progress', '95', '2025-01-18 10:53:59'),
(62, 4, 'DC-1622', 5, 'Just have to check if eveything is working fine on windows\r\n', 'in_progress', '95', '2025-01-18 10:54:47'),
(63, 5, 'DC-1572', 16, 'Fixes of UAT\r\n', 'uat', '100', '2025-01-18 10:57:10'),
(64, 5, 'DC-1596', 17, 'Some UAT fixes', 'uat', '100', '2025-01-18 10:57:41'),
(65, 5, 'DC-1552', 18, 'Came back from UAT, after little Figma design change\r\n', 'in_progress', '100', '2025-01-18 10:58:09'),
(66, 5, 'DC-1557', 19, '', 'done', '100', '2025-01-18 10:58:39'),
(67, 5, 'DC-1631', 20, '', 'in_progress', '80', '2025-01-18 10:59:01'),
(68, 5, 'DC-1632', 22, 'Returned from Code Review\r\n', 'in_progress', '90', '2025-01-18 10:59:27'),
(69, 5, 'DC-1582', 23, 'Some additions from Jeremy\r\n', 'code_review', '100', '2025-01-18 10:59:55'),
(70, 5, 'DC-1562', 24, '', 'code_review', '100', '2025-01-18 11:00:22'),
(71, 5, 'DC-1580', 25, '', 'code_review', '100', '2025-01-18 11:00:44'),
(72, 5, 'DC-1629', 26, 'Maisie and Rhi discussion for text change as per background\r\n', 'uat', '100', '2025-01-18 11:01:11'),
(73, 5, 'DC-1542', 27, 'Returned from Code Review\r\n', 'in_progress', '90', '2025-01-18 11:01:39'),
(74, 5, 'DC-1559', 13, 'Blocked by Search ticket and some amendments\r\n', 'uat', '100', '2025-01-18 11:02:16'),
(75, 5, 'DC-1565', 12, 'Backed from UAT\r\n', 'in_progress', '100', '2025-01-18 11:02:43'),
(76, 5, 'DC-1585', 15, 'Backed from UAT\r\n', 'in_progress', '100', '2025-01-18 11:03:16'),
(77, 5, 'DC-1544', 11, '', 'qa', '100', '2025-01-18 11:03:39'),
(78, 4, 'DC-1560', 29, 'Setting up frontend for all cards\r\n', 'in_progress', '40', '2025-01-18 11:05:11'),
(79, 5, 'DC-1560', 29, '', 'uat', '100', '2025-01-18 11:05:32'),
(80, 5, 'DC-1590', 30, 'Blocked due to backend plugin\r\n', 'blocked', '0', '2025-01-18 11:06:55'),
(81, 5, 'DC-1613', 31, '', 'code_review', '100', '2025-01-18 11:08:02'),
(82, 5, 'DC-1635', 32, 'Approved and merged.', 'done', '100', '2025-01-18 11:09:20'),
(83, 5, 'DC-1610', 33, '', 'in_progress', '20', '2025-01-18 11:10:31'),
(84, 5, 'DC-1628', 34, '', 'in_progress', '50', '2025-01-18 11:11:37'),
(85, 5, 'DC-1608', 35, '', 'in_progress', '20', '2025-01-18 11:12:57'),
(86, 6, 'DC-1596', 17, '', 'done', '100', '2025-01-18 15:08:45'),
(87, 6, 'DC-1613', 31, 'Piyush is testing along with Bookshelf\r\n', 'qa', '90', '2025-01-18 19:11:55'),
(88, 6, 'DC-1632', 22, '', 'uat', '100', '2025-01-18 19:12:28'),
(89, 6, 'DC-1585', 15, 'Completed but blocked by full width ticket DC-1686\r\n', 'ready_to_deploy', '100', '2025-01-18 19:13:04'),
(90, 6, 'DC-1562', 24, 'Ritu working on UAT issues\r\n', 'in_progress', '95', '2025-01-18 19:13:46'),
(91, 6, 'DC-1580', 25, '', 'uat', '95', '2025-01-18 19:14:26'),
(92, 6, 'DC-1542', 27, 'Piyush is testing along with Bookshelf Numbering\r\n', 'qa', '95', '2025-01-18 19:14:57'),
(93, 6, 'DC-1559', 13, '', 'uat', '99', '2025-01-18 19:15:39'),
(94, 6, 'DC-1631', 20, 'Some issues in PR\r\n', 'code_review', '90', '2025-01-18 19:16:15'),
(95, 6, 'DC-1597', 36, '', 'to_do', '0', '2025-01-18 19:19:00'),
(96, 6, 'DC-1610', 33, 'Some changes in Cover display and awaiting review carousel\r\n', 'in_progress', '70', '2025-01-18 19:19:53'),
(97, 6, 'DC-1582', 23, '', 'uat', '95', '2025-01-18 19:20:42'),
(98, 6, 'DC-1560', 29, '', 'done', '100', '2025-01-18 19:28:19'),
(99, 6, 'DC-1628', 34, '', 'qa', '90', '2025-01-18 19:28:44'),
(100, 6, 'DC-1608', 35, 'Almost complete\r\n', 'in_progress', '80', '2025-01-18 19:29:18'),
(101, 6, 'DC-1629', 26, 'Completed but blocked by full width ticket DC-1686\r\n', 'ready_to_deploy', '100', '2025-01-18 19:29:54'),
(102, 6, 'DC-1565', 12, '', 'uat', '95', '2025-01-18 19:30:22'),
(103, 6, 'DC-1544', 11, '', 'uat', '90', '2025-01-18 19:30:58'),
(104, 6, 'DC-1686', 37, 'Internally discussed three solutions, will implement and show Tom\r\n', 'in_progress', '0', '2025-01-18 19:33:00'),
(105, 6, 'DC-1643', 38, '', 'done', '100', '2025-01-18 19:34:41'),
(106, 6, 'DC-1690', 39, '', 'code_review', '95', '2025-01-18 19:36:52'),
(107, 6, 'DC-1648', 40, '', 'in_progress', '50', '2025-01-18 19:38:27'),
(108, 6, 'DC-1579', 41, '', 'in_progress', '20', '2025-01-18 19:39:41'),
(109, 7, 'DC-1613', 31, 'Done but depends on Bookshelf Ticket\r\n', 'ready_to_deploy', '100', '2025-01-18 19:40:47'),
(110, 7, 'DC-1632', 22, 'Tested and changes according to usage in other blocks\r\n', 'uat', '100', '2025-01-18 19:41:48'),
(111, 7, 'DC-1585', 15, '', 'done', '100', '2025-01-18 19:42:17'),
(112, 7, 'DC-1562', 24, '', 'done', '100', '2025-01-18 19:42:53'),
(113, 7, 'DC-1580', 25, '', 'done', '100', '2025-01-18 19:43:22'),
(114, 7, 'DC-1542', 27, 'Due to Book Image size issue, resposive is left\r\n', 'in_progress', '95', '2025-01-18 19:43:49'),
(115, 7, 'DC-1559', 13, 'Completed by Maisie.', 'done', '0', '2025-01-18 19:44:34'),
(116, 7, 'DC-1631', 20, '', 'done', '100', '2025-01-18 19:45:11'),
(117, 7, 'DC-1597', 36, 'Working on backend part to set it up\r\n', 'in_progress', '10', '2025-01-18 19:45:38'),
(118, 7, 'DC-1610', 33, 'Code review done\r\n', 'qa', '85', '2025-01-18 19:46:10'),
(119, 7, 'DC-1582', 23, 'Maisie working on it. Some clarification from Rhi needed and one Dropdown change\r\n', 'in_progress', '90', '2025-01-18 19:46:59'),
(120, 7, 'DC-1628', 34, 'Maisie is working on it, some QA feedback\r\n', 'in_progress', '90', '2025-01-18 19:47:43'),
(121, 7, 'DC-1608', 35, 'Kevin and Ritu are working on some clarifications\r\n', 'in_progress', '80', '2025-01-18 19:48:21'),
(122, 7, 'DC-1629', 26, '', 'done', '100', '2025-01-18 19:48:52'),
(123, 7, 'DC-1565', 12, 'Maisie working on it, Some changes and back to UAT\r\n', 'uat', '99', '2025-01-18 19:49:38'),
(124, 7, 'DC-1544', 11, '', 'done', '100', '2025-01-18 19:50:07'),
(125, 7, 'DC-1686', 37, '', 'done', '100', '2025-01-18 19:50:35'),
(126, 7, 'DC-1690', 39, 'Back to UAT with some improvements and testing\r\n', 'uat', '99', '2025-01-18 19:51:06'),
(127, 7, 'DC-1648', 40, 'Back from UAT with 4 UI issues\r\n', 'in_progress', '95', '2025-01-18 19:51:37'),
(128, 7, 'DC-1579', 41, 'Maisie will work on it. Blocked by Author Override\r\n', 'blocked', '20', '2025-01-18 19:52:33'),
(129, 7, 'DC-1637', 42, '', 'uat', '95', '2025-01-18 19:53:53'),
(130, 7, 'DC-1684', 43, '', 'to_do', '0', '2025-01-18 19:55:25'),
(131, 7, 'DC-1683', 44, '', 'in_progress', '30', '2025-01-18 19:57:15'),
(132, 7, 'DC-1624', 45, '', 'code_review', '80', '2025-01-18 19:59:02'),
(133, 7, 'DC-1545', 46, '', 'done', '100', '2025-01-18 20:00:21'),
(134, 7, 'DC-1619', 47, '', 'to_do', '0', '2025-01-18 20:01:55'),
(135, 7, 'DC-1577', 48, '', 'in_progress', '20', '2025-01-18 20:03:59'),
(136, 7, 'DC-1649', 49, '', 'in_progress', '40', '2025-01-18 20:05:43'),
(137, 8, 'DC-1613', 31, 'Done but depends on Bookshelf Ticket\r\n', 'ready_to_deploy', '100', '2025-01-18 20:06:33'),
(138, 8, 'DC-1632', 22, 'Dependecy on bookshelf and other components\r\n', 'uat', '100', '2025-01-18 20:07:09'),
(139, 8, 'DC-1542', 27, 'Last change related to API caching\r\n', 'uat', '99', '2025-01-18 20:07:43'),
(140, 8, 'DC-1597', 36, 'Working on backend part to set it up\r\n', 'in_progress', '10', '2025-01-18 20:08:19'),
(141, 8, 'DC-1610', 33, 'Returned from some QA feedback\r\n', 'in_progress', '90', '2025-01-18 20:08:58'),
(142, 8, 'DC-1582', 23, 'Maisie working on it.', 'done', '100', '2025-01-18 20:09:46'),
(143, 8, 'DC-1628', 34, 'Maisie is working on it', 'done', '100', '2025-01-18 20:10:21'),
(144, 8, 'DC-1608', 35, 'Back from QA with some comments from Jeremy\r\n', 'in_progress', '90', '2025-01-18 20:11:03'),
(145, 8, 'DC-1565', 12, 'Maisie working on it.', 'done', '100', '2025-01-18 20:11:57'),
(146, 8, 'DC-1690', 39, 'Some issue with other components, back from UAT\r\n', 'in_progress', '95', '2025-01-18 20:12:53'),
(147, 8, 'DC-1648', 40, '', 'done', '100', '2025-01-18 20:13:21'),
(148, 8, 'DC-1579', 41, 'Maisie working on it.', 'done', '100', '2025-01-18 20:13:52'),
(149, 8, 'DC-1637', 42, '', 'done', '100', '2025-01-18 20:14:21'),
(150, 8, 'DC-1684', 43, '', 'to_do', '0', '2025-01-18 20:14:48'),
(151, 8, 'DC-1683', 44, 'Added option in backend, frontend changes are pending\r\n', 'in_progress', '70', '2025-01-18 20:15:22'),
(152, 8, 'DC-1624', 45, 'Back from UAT \r\n', 'code_review', '85', '2025-01-18 20:16:08'),
(153, 8, 'DC-1619', 47, 'Maisie working on it.', 'done', '100', '2025-01-18 20:16:36'),
(154, 8, 'DC-1577', 48, 'Some code review fixes are in progress for UAT chnages\r\n', 'in_progress', '85', '2025-01-18 20:17:00'),
(155, 8, 'DC-1649', 49, 'Making some changes for Editor permissions\r\n', 'in_progress', '80', '2025-01-18 20:17:26'),
(156, 9, 'DC-1615', 50, '', 'to_do', '0', '2025-01-18 20:22:28'),
(157, 9, 'DC-1696', 51, 'Some changes from Jeremy and Kevin', 'in_progress', '90', '2025-01-18 20:25:29'),
(158, 9, 'DC-1709', 52, '', 'to_do', '0', '2025-01-18 20:27:45'),
(159, 9, 'DC-1613', 31, 'Done but depends on Bookshelf Ticket\r\n', 'ready_to_deploy', '100', '2025-01-19 20:13:14'),
(160, 9, 'DC-1632', 22, 'Dependecy on bookshelf and other components\r\n', 'uat', '100', '2025-01-19 20:14:23'),
(161, 9, 'DC-1542', 27, 'Last change related to API caching\r\n', 'uat', '99', '2025-01-19 20:25:16'),
(162, 9, 'DC-1597', 36, 'Working on backend part to set it up\r\n', 'in_progress', '40', '2025-01-19 20:25:52'),
(163, 9, 'DC-1610', 33, 'Returned from some QA feedback\r\n', 'qa', '90', '2025-01-19 20:26:41'),
(164, 9, 'DC-1582', 23, 'Maisie working on it.', 'done', '100', '2025-01-19 20:27:21'),
(165, 9, 'DC-1628', 34, 'Maisie is working on it', 'done', '100', '2025-01-19 20:28:20'),
(166, 9, 'DC-1608', 35, 'Back from QA with some comments from Jeremy\r\n', 'in_progress', '90', '2025-01-19 20:28:55'),
(167, 9, 'DC-1565', 12, 'Maisie working on it.', 'done', '100', '2025-01-19 20:29:36'),
(168, 9, 'DC-1690', 39, 'Some issue with other components, back from UAT\r\n', 'in_progress', '99', '2025-01-19 20:30:20'),
(169, 9, 'DC-1579', 41, 'Maisie working on it.', 'done', '100', '2025-01-19 20:30:56'),
(170, 9, 'DC-1684', 43, '', 'to_do', '0', '2025-01-19 20:31:23'),
(171, 9, 'DC-1683', 44, 'Added option in backend, frontend changes are pending\r\n', 'in_progress', '70', '2025-01-19 20:32:06'),
(172, 9, 'DC-1624', 45, 'Back from UAT \r\n', 'in_progress', '85', '2025-01-19 20:32:46'),
(173, 9, 'DC-1619', 47, 'Maisie working on it.', 'done', '100', '2025-01-19 20:33:28'),
(174, 9, 'DC-1577', 48, 'Some code review fixes are in progress for UAT changes\r\n', 'in_progress', '85', '2025-01-19 20:34:16'),
(175, 9, 'DC-1649', 49, 'Making some changes for Editor permissions\r\n', 'in_progress', '80', '2025-01-19 20:34:51'),
(176, 9, 'DC-1708', 53, '', 'done', '100', '2025-01-19 20:39:33'),
(177, 9, 'DC-1547', 54, 'Back from UAT with some improvements', 'in_progress', '90', '2025-01-19 20:43:04'),
(178, 9, 'DC-1639', 55, '', 'to_do', '0', '2025-01-19 20:45:23'),
(179, 9, 'DC-1638', 56, '', 'to_do', '0', '2025-01-19 20:47:06'),
(180, 9, 'DC-1710', 57, '', 'to_do', '0', '2025-01-19 20:48:40'),
(181, 9, 'DC-1640', 58, '', 'to_do', '0', '2025-01-19 20:52:00'),
(182, 9, 'DC-1747', 59, 'Code review approved and ready for QA', 'qa', '80', '2025-01-19 21:04:32'),
(183, 9, 'DC-1726', 60, 'Code reviewed approved, moved to UAT', 'uat', '95', '2025-01-19 21:07:20'),
(184, 10, 'DC-1662', 61, 'Waiting Rhi\\\'s confirmation of sidebar design for pills', 'in_progress', '70', '2025-01-20 09:26:32'),
(185, 10, 'DC-1737', 62, 'Moved to QA with some explanation', 'qa', '80', '2025-01-20 09:28:27'),
(186, 10, 'DC-1749', 63, 'Approved and merged.', 'done', '100', '2025-01-20 19:39:22'),
(187, 10, 'DC-1705', 64, 'Blocked for competitions/complex sign up form for Tom', 'blocked', '50', '2025-01-20 19:41:45'),
(188, 10, 'DC-1742', 65, 'Approved and merged.', 'done', '100', '2025-01-20 19:43:04'),
(189, 10, 'DC-1716', 66, 'Backend approved, FE has some code review changes', 'code_review', '80', '2025-01-20 19:44:56'),
(190, 10, 'DC-1712', 67, 'QA with Kevin\\\'s fixes', 'qa', '100', '2025-01-20 19:47:19'),
(191, 10, 'DC-1615', 50, 'Moved to Code review with Kevin\\\'s fixes.', 'code_review', '80', '2025-01-20 19:49:09'),
(192, 10, 'DC-1577', 48, 'MAK is working on it, UAT fixes code review approved.', 'uat', '90', '2025-01-20 19:50:30'),
(193, 10, 'DC-1547', 54, 'Moved to Code review with UAT fixes', 'code_review', '80', '2025-01-20 19:51:45'),
(194, 10, 'DC-1624', 45, 'Approved and merged.', 'done', '100', '2025-01-20 19:53:06'),
(195, 10, 'DC-1747', 59, 'Approved and merged.', 'done', '100', '2025-01-20 19:53:44'),
(196, 10, 'DC-1684', 43, 'Approved and merged.', 'done', '100', '2025-01-20 19:55:07'),
(197, 10, 'DC-1649', 49, 'Approved and merged.', 'done', '100', '2025-01-20 19:55:59'),
(198, 10, 'DC-1619', 47, 'Maisie working on it.', 'done', '100', '2025-01-20 19:56:43'),
(199, 10, 'DC-1579', 41, 'Maisie working on it.', 'done', '100', '2025-01-20 19:58:47'),
(200, 10, 'DC-1696', 51, 'Approved and merged.', 'done', '100', '2025-01-20 19:59:54'),
(201, 10, 'DC-1610', 33, 'Approved and merged.', 'done', '100', '2025-01-20 20:01:16'),
(202, 10, 'DC-1709', 52, 'Approved and merged.', 'done', '100', '2025-01-20 20:02:05'),
(203, 10, 'DC-1708', 53, 'Approved and merged.', 'done', '100', '2025-01-20 20:02:46'),
(204, 10, 'DC-1639', 55, 'Almost finished.', 'in_progress', '90', '2025-01-20 20:04:34'),
(205, 10, 'DC-1638', 56, 'In Code review with some confirmation needed from Rhi.', 'code_review', '80', '2025-01-20 20:05:56'),
(206, 10, 'DC-1597', 36, 'In progress with some code review fixes for QA feedback.', 'in_progress', '70', '2025-01-20 20:07:26'),
(207, 10, 'DC-1710', 57, 'Blocked for working on later tickets', 'blocked', '50', '2025-01-20 20:08:24'),
(208, 10, 'DC-1640', 58, 'Ready for QA', 'qa', '90', '2025-01-20 20:09:43'),
(209, 10, 'DC-1726', 60, 'Approved and merged.', 'done', '100', '2025-01-20 20:10:43'),
(210, 10, 'DC-1765', 68, 'Approved and merged.', 'done', '100', '2025-01-20 20:12:30'),
(211, 10, 'DC-1756', 69, 'Approved and merged.', 'done', '100', '2025-01-20 20:15:27'),
(212, 10, 'DC-1757', 70, 'Approved and merged.', 'done', '100', '2025-01-20 20:16:28'),
(213, 10, 'DC-1727', 71, 'Approved and merged.', 'done', '100', '2025-01-20 20:19:07'),
(214, 10, 'DC-1758', 72, 'Styling completed from Toufiq', 'ready_to_deploy', '100', '2025-01-20 20:21:08'),
(215, 10, 'DC-1778', 73, 'Approved and merged.', 'done', '100', '2025-01-20 20:22:20'),
(216, 10, 'DC-1760', 74, 'Awaiting some form changes.', 'in_progress', '50', '2025-01-20 20:23:52'),
(217, 10, 'DC-1759', 75, 'Completed and waiting for UAT.', 'uat', '100', '2025-01-20 20:25:24'),
(218, 10, 'DC-1761', 76, 'Completed and approved.', 'ready_to_deploy', '100', '2025-01-20 20:26:54'),
(219, 10, 'DC-1762', 77, 'Completed form styling.', 'uat', '100', '2025-01-20 20:28:31'),
(220, 10, 'DC-1763', 78, 'Completed form styling.', 'uat', '100', '2025-01-20 20:30:07'),
(221, 10, 'DC-1725', 79, 'In code review, backend PR approved.', 'code_review', '80', '2025-01-20 20:31:45'),
(222, 10, 'DC-1692', 80, 'Back from Code Review with some feedback, Now MAK working on it.', 'in_progress', '80', '2025-01-20 20:44:13'),
(223, 10, 'DC-1744', 81, 'Code review approved, moving to QA', 'qa', '90', '2025-01-20 20:46:01'),
(224, 10, 'DC-1745', 0, 'Code review approved.', 'qa', '80', '2025-01-20 20:48:12'),
(225, 10, 'DC-1774', 82, 'Code review approved.', 'code_review', '80', '2025-01-20 20:49:43'),
(226, 10, 'DC-1766', 83, 'Code review approved.', 'qa', '90', '2025-01-20 20:51:18'),
(227, 10, 'DC-1715', 84, 'QA passed.', 'uat', '90', '2025-01-20 20:52:52'),
(228, 10, 'DC-1724', 85, 'QA passed.', 'uat', '90', '2025-01-20 20:54:17'),
(229, 10, 'DC-1752', 86, 'UAT passed.', 'ready_to_deploy', '100', '2025-01-20 20:56:08'),
(230, 10, 'DC-1702', 87, 'Back with some UAT feedback.', 'uat', '90', '2025-01-20 20:58:00'),
(231, 10, 'DC-1723', 88, 'Code review approved, moved to QA', 'qa', '80', '2025-01-20 20:59:21'),
(232, 10, 'DC-1771', 89, 'Izzie confirmed which logo to used.', 'in_progress', '80', '2025-01-20 21:00:55'),
(233, 10, 'DC-1711', 90, 'Passed UAT', 'ready_to_deploy', '100', '2025-01-20 21:02:09'),
(234, 10, 'DC-1730', 91, 'Passed QA.', 'uat', '90', '2025-01-20 21:03:32'),
(235, 10, 'DC-1782', 92, 'Passed QA', 'uat', '90', '2025-01-20 21:04:52'),
(236, 10, 'DC-1647', 93, 'In Progress', 'in_progress', '60', '2025-01-20 21:06:17'),
(237, 11, 'DC-1692', 80, 'Bhuvan working on it, Moved to QA', 'qa', '100', '2025-01-21 17:39:22'),
(238, 11, 'DC-1771', 89, 'Approved and merged.', 'done', '100', '2025-01-21 17:41:13'),
(239, 11, 'DC-1615', 50, 'In progress with some URL related changes.', 'in_progress', '90', '2025-01-21 17:44:01'),
(240, 11, 'DC-1774', 82, 'Aditya working on it, Passed Code review.', 'uat', '90', '2025-01-21 17:45:40'),
(241, 11, 'DC-1662', 61, 'In Code Review, for UAT changes.', 'code_review', '90', '2025-01-21 17:47:31'),
(242, 11, 'DC-1745', 0, 'Approved and merged.', 'done', '100', '2025-01-21 17:49:17'),
(243, 11, 'DC-1744', 81, 'Approved and merged.', 'done', '100', '2025-01-21 17:50:36'),
(244, 11, 'DC-1639', 55, 'With Katie for Testing.', 'in_progress', '95', '2025-01-21 17:51:32'),
(245, 11, 'DC-1597', 36, 'In Progress with some UAT amendments.', 'in_progress', '80', '2025-01-21 17:53:10'),
(246, 11, 'DC-1710', 57, 'Blocked for working on later.', 'blocked', '50', '2025-01-21 17:54:09'),
(247, 11, 'DC-1640', 58, 'Blocked for testing with Breadcrumbs.', 'blocked', '90', '2025-01-21 17:55:34'),
(248, 11, 'DC-1725', 79, 'In testing phase.', 'qa', '90', '2025-01-21 17:57:02'),
(249, 11, 'DC-1737', 62, 'Code review approved with UAT changes.', 'uat', '90', '2025-01-21 17:58:19'),
(250, 11, 'DC-1619', 47, 'Maisie working on it.', 'done', '100', '2025-01-21 17:59:35'),
(251, 11, 'DC-1778', 73, 'Approved and merged.', 'done', '100', '2025-01-21 18:00:58'),
(252, 11, 'DC-1577', 48, 'Bhuvan working on it for one last UAT change remaining.', 'in_progress', '90', '2025-01-21 18:04:06'),
(253, 11, 'DC-1705', 64, 'In Code review for UAT changes.', 'code_review', '90', '2025-01-21 18:05:18'),
(254, 11, 'DC-1547', 54, 'Approved and merged.', 'done', '100', '2025-01-21 18:06:07'),
(255, 11, 'DC-1702', 87, 'Approved and merged.', 'done', '100', '2025-01-21 18:06:59'),
(256, 11, 'DC-1759', 75, 'Approved and merged.', 'done', '100', '2025-01-21 18:08:02'),
(257, 11, 'DC-1715', 84, 'Approved and merged.', 'done', '100', '2025-01-21 18:08:56'),
(258, 11, 'DC-1756', 69, 'Approved and merged.', 'done', '100', '2025-01-21 18:09:28'),
(259, 11, 'DC-1712', 67, 'Approved and merged.', 'done', '100', '2025-01-21 18:10:13'),
(260, 11, 'DC-1752', 86, 'Approved and merged.', 'done', '100', '2025-01-21 18:11:10'),
(261, 11, 'DC-1761', 76, 'Completed and approved.', 'done', '100', '2025-01-21 18:11:42'),
(262, 11, 'DC-1760', 74, 'Working on footer newsletter form.', 'in_progress', '80', '2025-01-21 18:12:57'),
(263, 11, 'DC-1727', 71, 'Approved and merged.', 'done', '100', '2025-01-21 18:13:37'),
(264, 11, 'DC-1723', 88, 'Approved and merged.', 'done', '100', '2025-01-21 18:14:24'),
(265, 11, 'DC-1766', 83, 'Approved and merged.', 'done', '100', '2025-01-21 18:15:07'),
(266, 11, 'DC-1579', 41, 'Maisie working on it. Approved and merged.', 'done', '100', '2025-01-21 18:16:20'),
(267, 11, 'DC-1730', 91, 'Approved and merged.', 'done', '100', '2025-01-21 18:17:10'),
(268, 11, 'DC-1782', 92, 'Approved and merged.', 'done', '100', '2025-01-21 18:18:28'),
(269, 11, 'DC-1716', 66, 'Approved and merged.', 'done', '100', '2025-01-21 18:19:26'),
(270, 11, 'DC-1638', 56, 'Still in testing phase.', 'qa', '90', '2025-01-21 18:20:56'),
(271, 11, 'DC-1711', 90, 'Approved and merged.', 'done', '100', '2025-01-21 18:21:52'),
(272, 11, 'DC-1758', 72, 'Ready with Helen to deploy.', 'ready_to_deploy', '100', '2025-01-21 18:23:13'),
(273, 11, 'DC-1724', 85, 'Approved and merged.', 'done', '100', '2025-01-21 18:23:55'),
(274, 11, 'DC-1647', 93, 'Approved and merged.', 'done', '100', '2025-01-21 18:24:36'),
(275, 11, 'DC-1763', 78, 'Approved and merged.', 'done', '100', '2025-01-21 18:25:18'),
(276, 11, 'DC-1762', 77, 'Approved and merged.', 'done', '100', '2025-01-21 18:25:51'),
(277, 11, 'DC-1604', 94, 'Back from QA with some truncation issue.', 'in_progress', '80', '2025-01-21 19:07:07'),
(278, 11, 'DC-1794', 95, 'Approved and ready.', 'ready_to_deploy', '100', '2025-01-21 19:13:38'),
(279, 11, 'DC-1787', 96, 'Passed QA, In UAT', 'uat', '100', '2025-01-21 19:15:27'),
(280, 11, 'DC-1795', 97, 'Code review approved, moved to QA.', 'qa', '90', '2025-01-21 19:18:52'),
(281, 11, 'DC-1798', 98, 'Assigned to Piyush', 'qa', '100', '2025-01-21 19:21:16'),
(282, 11, 'DC-1793', 99, 'Passed QA', 'uat', '90', '2025-01-21 19:23:44'),
(283, 11, 'DC-1721', 100, 'Some code review changes requested.', 'in_progress', '70', '2025-01-21 19:26:42'),
(284, 11, 'DC-1680', 101, 'Working on desktop styling, responsive remaining.', 'in_progress', '50', '2025-01-21 19:29:24'),
(285, 11, 'DC-1786', 102, 'Assigned to Code review.', 'code_review', '100', '2025-01-21 19:31:08'),
(286, 11, 'DC-1748', 103, 'Assigned for code review.', 'code_review', '90', '2025-01-21 19:32:43');

-- --------------------------------------------------------

--
-- Table structure for table `wp_sprint_to_tickets`
--

CREATE TABLE `wp_sprint_to_tickets` (
  `id` int(11) UNSIGNED NOT NULL,
  `sprint_id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `jira_id` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_sprint_to_tickets`
--

INSERT INTO `wp_sprint_to_tickets` (`id`, `sprint_id`, `ticket_id`, `jira_id`, `created_at`) VALUES
(1, 1, 1, 'DC-1616', '2025-01-16 07:50:33'),
(2, 1, 2, 'DC-1617', '2025-01-16 07:58:48'),
(3, 1, 3, 'DC-1623', '2025-01-16 08:41:29'),
(12, 2, 10, 'DC-1592', '2025-01-17 18:52:49'),
(13, 1, 10, 'DC-1592', '2025-01-17 18:52:49'),
(27, 2, 4, 'DC-1612', '2025-01-17 19:15:59'),
(28, 1, 4, 'DC-1612', '2025-01-17 19:15:59'),
(51, 3, 9, 'DC-1563', '2025-01-17 19:40:02'),
(52, 2, 9, 'DC-1563', '2025-01-17 19:40:02'),
(53, 1, 9, 'DC-1563', '2025-01-17 19:40:02'),
(54, 3, 7, 'DC-1546', '2025-01-17 19:40:37'),
(55, 2, 7, 'DC-1546', '2025-01-17 19:40:37'),
(56, 1, 7, 'DC-1546', '2025-01-17 19:40:37'),
(75, 4, 21, 'DC-1630', '2025-01-17 19:45:58'),
(76, 3, 21, 'DC-1630', '2025-01-17 19:45:58'),
(89, 4, 6, 'DC-1593', '2025-01-17 19:49:57'),
(90, 3, 6, 'DC-1593', '2025-01-17 19:49:57'),
(91, 2, 6, 'DC-1593', '2025-01-17 19:49:57'),
(92, 1, 6, 'DC-1593', '2025-01-17 19:49:57'),
(93, 4, 8, 'DC-1592', '2025-01-17 19:50:38'),
(94, 3, 8, 'DC-1592', '2025-01-17 19:50:38'),
(95, 2, 8, 'DC-1592', '2025-01-17 19:50:38'),
(96, 1, 8, 'DC-1592', '2025-01-17 19:50:38'),
(100, 4, 14, 'DC-1576', '2025-01-17 19:51:47'),
(101, 3, 14, 'DC-1576', '2025-01-17 19:51:47'),
(102, 2, 14, 'DC-1576', '2025-01-17 19:51:47'),
(115, 4, 28, 'DC-1627', '2025-01-18 10:53:59'),
(116, 4, 5, 'DC-1622', '2025-01-18 10:54:47'),
(117, 1, 5, 'DC-1622', '2025-01-18 10:54:47'),
(118, 5, 16, 'DC-1572', '2025-01-18 10:57:10'),
(119, 4, 16, 'DC-1572', '2025-01-18 10:57:10'),
(120, 3, 16, 'DC-1572', '2025-01-18 10:57:10'),
(124, 5, 18, 'DC-1552', '2025-01-18 10:58:09'),
(125, 4, 18, 'DC-1552', '2025-01-18 10:58:09'),
(126, 3, 18, 'DC-1552', '2025-01-18 10:58:09'),
(127, 5, 19, 'DC-1557', '2025-01-18 10:58:39'),
(128, 4, 19, 'DC-1557', '2025-01-18 10:58:39'),
(129, 3, 19, 'DC-1557', '2025-01-18 10:58:39'),
(171, 5, 30, 'DC-1590', '2025-01-18 11:06:55'),
(173, 5, 32, 'DC-1635', '2025-01-18 11:09:20'),
(177, 6, 17, 'DC-1596', '2025-01-18 15:08:45'),
(178, 5, 17, 'DC-1596', '2025-01-18 15:08:45'),
(179, 4, 17, 'DC-1596', '2025-01-18 15:08:45'),
(180, 3, 17, 'DC-1596', '2025-01-18 15:08:45'),
(220, 6, 29, 'DC-1560', '2025-01-18 19:28:19'),
(221, 5, 29, 'DC-1560', '2025-01-18 19:28:19'),
(222, 4, 29, 'DC-1560', '2025-01-18 19:28:19'),
(243, 6, 38, 'DC-1643', '2025-01-18 19:35:05'),
(255, 7, 15, 'DC-1585', '2025-01-18 19:42:17'),
(256, 6, 15, 'DC-1585', '2025-01-18 19:42:17'),
(257, 5, 15, 'DC-1585', '2025-01-18 19:42:17'),
(258, 4, 15, 'DC-1585', '2025-01-18 19:42:17'),
(259, 3, 15, 'DC-1585', '2025-01-18 19:42:17'),
(260, 2, 15, 'DC-1585', '2025-01-18 19:42:17'),
(261, 7, 24, 'DC-1562', '2025-01-18 19:42:53'),
(262, 6, 24, 'DC-1562', '2025-01-18 19:42:53'),
(263, 5, 24, 'DC-1562', '2025-01-18 19:42:53'),
(264, 4, 24, 'DC-1562', '2025-01-18 19:42:53'),
(265, 3, 24, 'DC-1562', '2025-01-18 19:42:53'),
(266, 7, 25, 'DC-1580', '2025-01-18 19:43:22'),
(267, 6, 25, 'DC-1580', '2025-01-18 19:43:22'),
(268, 5, 25, 'DC-1580', '2025-01-18 19:43:22'),
(269, 4, 25, 'DC-1580', '2025-01-18 19:43:22'),
(270, 3, 25, 'DC-1580', '2025-01-18 19:43:22'),
(276, 7, 13, 'DC-1559', '2025-01-18 19:44:34'),
(277, 6, 13, 'DC-1559', '2025-01-18 19:44:34'),
(278, 5, 13, 'DC-1559', '2025-01-18 19:44:34'),
(279, 4, 13, 'DC-1559', '2025-01-18 19:44:34'),
(280, 3, 13, 'DC-1559', '2025-01-18 19:44:34'),
(281, 2, 13, 'DC-1559', '2025-01-18 19:44:34'),
(282, 7, 20, 'DC-1631', '2025-01-18 19:45:11'),
(283, 6, 20, 'DC-1631', '2025-01-18 19:45:11'),
(284, 5, 20, 'DC-1631', '2025-01-18 19:45:11'),
(285, 4, 20, 'DC-1631', '2025-01-18 19:45:11'),
(286, 3, 20, 'DC-1631', '2025-01-18 19:45:11'),
(303, 7, 26, 'DC-1629', '2025-01-18 19:48:52'),
(304, 6, 26, 'DC-1629', '2025-01-18 19:48:52'),
(305, 5, 26, 'DC-1629', '2025-01-18 19:48:52'),
(306, 4, 26, 'DC-1629', '2025-01-18 19:48:52'),
(307, 3, 26, 'DC-1629', '2025-01-18 19:48:52'),
(314, 7, 11, 'DC-1544', '2025-01-18 19:50:07'),
(315, 6, 11, 'DC-1544', '2025-01-18 19:50:07'),
(316, 5, 11, 'DC-1544', '2025-01-18 19:50:07'),
(317, 4, 11, 'DC-1544', '2025-01-18 19:50:07'),
(318, 3, 11, 'DC-1544', '2025-01-18 19:50:07'),
(319, 2, 11, 'DC-1544', '2025-01-18 19:50:07'),
(320, 7, 37, 'DC-1686', '2025-01-18 19:50:35'),
(321, 6, 37, 'DC-1686', '2025-01-18 19:50:35'),
(332, 7, 46, 'DC-1545', '2025-01-18 20:00:21'),
(383, 8, 40, 'DC-1648', '2025-01-18 20:13:21'),
(384, 7, 40, 'DC-1648', '2025-01-18 20:13:21'),
(385, 6, 40, 'DC-1648', '2025-01-18 20:13:21'),
(389, 8, 42, 'DC-1637', '2025-01-18 20:14:21'),
(390, 7, 42, 'DC-1637', '2025-01-18 20:14:21'),
(406, 9, 31, 'DC-1613', '2025-01-19 20:13:14'),
(407, 8, 31, 'DC-1613', '2025-01-19 20:13:14'),
(408, 7, 31, 'DC-1613', '2025-01-19 20:13:14'),
(409, 6, 31, 'DC-1613', '2025-01-19 20:13:14'),
(410, 5, 31, 'DC-1613', '2025-01-19 20:13:14'),
(411, 9, 22, 'DC-1632', '2025-01-19 20:14:23'),
(412, 8, 22, 'DC-1632', '2025-01-19 20:14:23'),
(413, 7, 22, 'DC-1632', '2025-01-19 20:14:23'),
(414, 6, 22, 'DC-1632', '2025-01-19 20:14:23'),
(415, 5, 22, 'DC-1632', '2025-01-19 20:14:23'),
(416, 4, 22, 'DC-1632', '2025-01-19 20:14:23'),
(417, 3, 22, 'DC-1632', '2025-01-19 20:14:23'),
(418, 9, 27, 'DC-1542', '2025-01-19 20:25:16'),
(419, 8, 27, 'DC-1542', '2025-01-19 20:25:16'),
(420, 7, 27, 'DC-1542', '2025-01-19 20:25:16'),
(421, 6, 27, 'DC-1542', '2025-01-19 20:25:16'),
(422, 5, 27, 'DC-1542', '2025-01-19 20:25:16'),
(423, 4, 27, 'DC-1542', '2025-01-19 20:25:16'),
(424, 3, 27, 'DC-1542', '2025-01-19 20:25:16'),
(434, 9, 23, 'DC-1582', '2025-01-19 20:27:21'),
(435, 8, 23, 'DC-1582', '2025-01-19 20:27:21'),
(436, 7, 23, 'DC-1582', '2025-01-19 20:27:21'),
(437, 6, 23, 'DC-1582', '2025-01-19 20:27:21'),
(438, 5, 23, 'DC-1582', '2025-01-19 20:27:21'),
(439, 4, 23, 'DC-1582', '2025-01-19 20:27:21'),
(440, 3, 23, 'DC-1582', '2025-01-19 20:27:21'),
(441, 9, 34, 'DC-1628', '2025-01-19 20:28:20'),
(442, 8, 34, 'DC-1628', '2025-01-19 20:28:20'),
(443, 7, 34, 'DC-1628', '2025-01-19 20:28:20'),
(444, 6, 34, 'DC-1628', '2025-01-19 20:28:20'),
(445, 5, 34, 'DC-1628', '2025-01-19 20:28:20'),
(446, 9, 35, 'DC-1608', '2025-01-19 20:28:55'),
(447, 8, 35, 'DC-1608', '2025-01-19 20:28:55'),
(448, 7, 35, 'DC-1608', '2025-01-19 20:28:55'),
(449, 6, 35, 'DC-1608', '2025-01-19 20:28:55'),
(450, 5, 35, 'DC-1608', '2025-01-19 20:28:55'),
(451, 9, 12, 'DC-1565', '2025-01-19 20:29:36'),
(452, 8, 12, 'DC-1565', '2025-01-19 20:29:36'),
(453, 7, 12, 'DC-1565', '2025-01-19 20:29:36'),
(454, 6, 12, 'DC-1565', '2025-01-19 20:29:36'),
(455, 5, 12, 'DC-1565', '2025-01-19 20:29:36'),
(456, 4, 12, 'DC-1565', '2025-01-19 20:29:36'),
(457, 3, 12, 'DC-1565', '2025-01-19 20:29:36'),
(458, 2, 12, 'DC-1565', '2025-01-19 20:29:36'),
(459, 9, 39, 'DC-1690', '2025-01-19 20:30:20'),
(460, 8, 39, 'DC-1690', '2025-01-19 20:30:20'),
(461, 7, 39, 'DC-1690', '2025-01-19 20:30:20'),
(462, 6, 39, 'DC-1690', '2025-01-19 20:30:20'),
(470, 9, 44, 'DC-1683', '2025-01-19 20:32:06'),
(471, 8, 44, 'DC-1683', '2025-01-19 20:32:06'),
(472, 7, 44, 'DC-1683', '2025-01-19 20:32:06'),
(495, 10, 63, 'DC-1749', '2025-01-20 19:39:22'),
(497, 10, 65, 'DC-1742', '2025-01-20 19:43:04'),
(508, 10, 45, 'DC-1624', '2025-01-20 19:53:06'),
(509, 9, 45, 'DC-1624', '2025-01-20 19:53:06'),
(510, 8, 45, 'DC-1624', '2025-01-20 19:53:06'),
(511, 7, 45, 'DC-1624', '2025-01-20 19:53:06'),
(512, 10, 59, 'DC-1747', '2025-01-20 19:53:44'),
(513, 9, 59, 'DC-1747', '2025-01-20 19:53:44'),
(514, 10, 43, 'DC-1684', '2025-01-20 19:55:07'),
(515, 9, 43, 'DC-1684', '2025-01-20 19:55:07'),
(516, 8, 43, 'DC-1684', '2025-01-20 19:55:07'),
(517, 7, 43, 'DC-1684', '2025-01-20 19:55:07'),
(518, 10, 49, 'DC-1649', '2025-01-20 19:55:59'),
(519, 9, 49, 'DC-1649', '2025-01-20 19:55:59'),
(520, 8, 49, 'DC-1649', '2025-01-20 19:55:59'),
(521, 7, 49, 'DC-1649', '2025-01-20 19:55:59'),
(531, 10, 51, 'DC-1696', '2025-01-20 19:59:54'),
(532, 9, 51, 'DC-1696', '2025-01-20 19:59:54'),
(533, 10, 33, 'DC-1610', '2025-01-20 20:01:16'),
(534, 9, 33, 'DC-1610', '2025-01-20 20:01:16'),
(535, 8, 33, 'DC-1610', '2025-01-20 20:01:16'),
(536, 7, 33, 'DC-1610', '2025-01-20 20:01:16'),
(537, 6, 33, 'DC-1610', '2025-01-20 20:01:16'),
(538, 5, 33, 'DC-1610', '2025-01-20 20:01:16'),
(539, 10, 52, 'DC-1709', '2025-01-20 20:02:05'),
(540, 9, 52, 'DC-1709', '2025-01-20 20:02:05'),
(541, 10, 53, 'DC-1708', '2025-01-20 20:02:46'),
(542, 9, 53, 'DC-1708', '2025-01-20 20:02:46'),
(556, 10, 60, 'DC-1726', '2025-01-20 20:10:43'),
(557, 9, 60, 'DC-1726', '2025-01-20 20:10:43'),
(558, 10, 68, 'DC-1765', '2025-01-20 20:12:30'),
(560, 10, 70, 'DC-1757', '2025-01-20 20:16:28'),
(572, 10, 0, 'DC-1745', '2025-01-20 20:48:12'),
(587, 11, 80, 'DC-1692', '2025-01-21 17:39:22'),
(588, 10, 80, 'DC-1692', '2025-01-21 17:39:22'),
(589, 11, 89, 'DC-1771', '2025-01-21 17:41:13'),
(590, 10, 89, 'DC-1771', '2025-01-21 17:41:13'),
(591, 11, 50, 'DC-1615', '2025-01-21 17:44:01'),
(592, 10, 50, 'DC-1615', '2025-01-21 17:44:01'),
(593, 9, 50, 'DC-1615', '2025-01-21 17:44:01'),
(594, 11, 82, 'DC-1774', '2025-01-21 17:45:40'),
(595, 10, 82, 'DC-1774', '2025-01-21 17:45:40'),
(596, 11, 61, 'DC-1662', '2025-01-21 17:47:31'),
(597, 10, 61, 'DC-1662', '2025-01-21 17:47:31'),
(598, 11, 0, 'DC-1745', '2025-01-21 17:49:17'),
(599, 11, 81, 'DC-1744', '2025-01-21 17:50:36'),
(600, 10, 81, 'DC-1744', '2025-01-21 17:50:36'),
(601, 11, 55, 'DC-1639', '2025-01-21 17:51:32'),
(602, 10, 55, 'DC-1639', '2025-01-21 17:51:32'),
(603, 9, 55, 'DC-1639', '2025-01-21 17:51:32'),
(604, 11, 36, 'DC-1597', '2025-01-21 17:53:10'),
(605, 10, 36, 'DC-1597', '2025-01-21 17:53:10'),
(606, 9, 36, 'DC-1597', '2025-01-21 17:53:10'),
(607, 8, 36, 'DC-1597', '2025-01-21 17:53:10'),
(608, 7, 36, 'DC-1597', '2025-01-21 17:53:10'),
(609, 6, 36, 'DC-1597', '2025-01-21 17:53:10'),
(610, 11, 57, 'DC-1710', '2025-01-21 17:54:09'),
(611, 10, 57, 'DC-1710', '2025-01-21 17:54:09'),
(612, 9, 57, 'DC-1710', '2025-01-21 17:54:09'),
(613, 11, 58, 'DC-1640', '2025-01-21 17:55:34'),
(614, 10, 58, 'DC-1640', '2025-01-21 17:55:34'),
(615, 9, 58, 'DC-1640', '2025-01-21 17:55:34'),
(616, 11, 79, 'DC-1725', '2025-01-21 17:57:02'),
(617, 10, 79, 'DC-1725', '2025-01-21 17:57:02'),
(618, 11, 62, 'DC-1737', '2025-01-21 17:58:19'),
(619, 10, 62, 'DC-1737', '2025-01-21 17:58:19'),
(620, 11, 47, 'DC-1619', '2025-01-21 17:59:35'),
(621, 10, 47, 'DC-1619', '2025-01-21 17:59:35'),
(622, 9, 47, 'DC-1619', '2025-01-21 17:59:35'),
(623, 8, 47, 'DC-1619', '2025-01-21 17:59:35'),
(624, 7, 47, 'DC-1619', '2025-01-21 17:59:35'),
(625, 11, 73, 'DC-1778', '2025-01-21 18:00:58'),
(626, 10, 73, 'DC-1778', '2025-01-21 18:00:58'),
(627, 11, 48, 'DC-1577', '2025-01-21 18:04:06'),
(628, 10, 48, 'DC-1577', '2025-01-21 18:04:06'),
(629, 9, 48, 'DC-1577', '2025-01-21 18:04:06'),
(630, 8, 48, 'DC-1577', '2025-01-21 18:04:06'),
(631, 7, 48, 'DC-1577', '2025-01-21 18:04:06'),
(632, 11, 64, 'DC-1705', '2025-01-21 18:05:18'),
(633, 10, 64, 'DC-1705', '2025-01-21 18:05:18'),
(634, 11, 54, 'DC-1547', '2025-01-21 18:06:07'),
(635, 10, 54, 'DC-1547', '2025-01-21 18:06:07'),
(636, 9, 54, 'DC-1547', '2025-01-21 18:06:07'),
(639, 11, 87, 'DC-1702', '2025-01-21 18:07:15'),
(640, 10, 87, 'DC-1702', '2025-01-21 18:07:15'),
(641, 11, 75, 'DC-1759', '2025-01-21 18:08:02'),
(642, 10, 75, 'DC-1759', '2025-01-21 18:08:02'),
(643, 11, 84, 'DC-1715', '2025-01-21 18:08:56'),
(644, 10, 84, 'DC-1715', '2025-01-21 18:08:56'),
(645, 11, 69, 'DC-1756', '2025-01-21 18:09:28'),
(646, 10, 69, 'DC-1756', '2025-01-21 18:09:28'),
(647, 11, 67, 'DC-1712', '2025-01-21 18:10:13'),
(648, 10, 67, 'DC-1712', '2025-01-21 18:10:13'),
(649, 11, 86, 'DC-1752', '2025-01-21 18:11:10'),
(650, 10, 86, 'DC-1752', '2025-01-21 18:11:10'),
(651, 11, 76, 'DC-1761', '2025-01-21 18:11:42'),
(652, 10, 76, 'DC-1761', '2025-01-21 18:11:42'),
(653, 11, 74, 'DC-1760', '2025-01-21 18:12:57'),
(654, 10, 74, 'DC-1760', '2025-01-21 18:12:57'),
(655, 11, 71, 'DC-1727', '2025-01-21 18:13:37'),
(656, 10, 71, 'DC-1727', '2025-01-21 18:13:37'),
(657, 11, 88, 'DC-1723', '2025-01-21 18:14:24'),
(658, 10, 88, 'DC-1723', '2025-01-21 18:14:24'),
(659, 11, 83, 'DC-1766', '2025-01-21 18:15:07'),
(660, 10, 83, 'DC-1766', '2025-01-21 18:15:07'),
(661, 11, 41, 'DC-1579', '2025-01-21 18:16:20'),
(662, 10, 41, 'DC-1579', '2025-01-21 18:16:20'),
(663, 9, 41, 'DC-1579', '2025-01-21 18:16:20'),
(664, 8, 41, 'DC-1579', '2025-01-21 18:16:20'),
(665, 7, 41, 'DC-1579', '2025-01-21 18:16:20'),
(666, 6, 41, 'DC-1579', '2025-01-21 18:16:20'),
(669, 11, 91, 'DC-1730', '2025-01-21 18:17:28'),
(670, 10, 91, 'DC-1730', '2025-01-21 18:17:28'),
(671, 11, 92, 'DC-1782', '2025-01-21 18:18:28'),
(672, 10, 92, 'DC-1782', '2025-01-21 18:18:28'),
(673, 11, 66, 'DC-1716', '2025-01-21 18:19:26'),
(674, 10, 66, 'DC-1716', '2025-01-21 18:19:26'),
(675, 11, 56, 'DC-1638', '2025-01-21 18:20:56'),
(676, 10, 56, 'DC-1638', '2025-01-21 18:20:56'),
(677, 9, 56, 'DC-1638', '2025-01-21 18:20:56'),
(678, 11, 90, 'DC-1711', '2025-01-21 18:21:52'),
(679, 10, 90, 'DC-1711', '2025-01-21 18:21:52'),
(680, 11, 72, 'DC-1758', '2025-01-21 18:23:13'),
(681, 10, 72, 'DC-1758', '2025-01-21 18:23:13'),
(682, 11, 85, 'DC-1724', '2025-01-21 18:23:55'),
(683, 10, 85, 'DC-1724', '2025-01-21 18:23:55'),
(684, 11, 93, 'DC-1647', '2025-01-21 18:24:36'),
(685, 10, 93, 'DC-1647', '2025-01-21 18:24:36'),
(686, 11, 78, 'DC-1763', '2025-01-21 18:25:18'),
(687, 10, 78, 'DC-1763', '2025-01-21 18:25:18'),
(688, 11, 77, 'DC-1762', '2025-01-21 18:25:51'),
(689, 10, 77, 'DC-1762', '2025-01-21 18:25:51'),
(690, 11, 94, 'DC-1604', '2025-01-21 19:07:07'),
(691, 11, 95, 'DC-1794', '2025-01-21 19:13:38'),
(692, 11, 96, 'DC-1787', '2025-01-21 19:15:27'),
(693, 11, 97, 'DC-1795', '2025-01-21 19:18:52'),
(694, 11, 98, 'DC-1798', '2025-01-21 19:21:16'),
(695, 11, 99, 'DC-1793', '2025-01-21 19:23:44'),
(696, 11, 100, 'DC-1721', '2025-01-21 19:26:42'),
(697, 11, 101, 'DC-1680', '2025-01-21 19:29:24'),
(698, 11, 102, 'DC-1786', '2025-01-21 19:31:08'),
(699, 11, 103, 'DC-1748', '2025-01-21 19:32:43');

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'twentytwentyfive', 'twentytwentyfive', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wp_theme', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', 'MAK'),
(3, 1, 'last_name', ''),
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
(16, 1, 'session_tokens', 'a:2:{s:64:\"6e01e9ce5fa4f7774648e00f53fb60747943c6b889f723dfeecfe5e2b5ef3ce3\";a:4:{s:10:\"expiration\";i:1738360483;s:2:\"ip\";s:39:\"2409:40e3:40f9:72ac:4891:48dc:8918:ab38\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:133.0) Gecko/20100101 Firefox/133.0\";s:5:\"login\";i:1737150883;}s:64:\"4feeaa28c64d429bc5644c5b69f4c5a411d07f9f4d428c92ae5cc955dce62dd0\";a:4:{s:10:\"expiration\";i:1738746468;s:2:\"ip\";s:38:\"2409:40e3:40f9:72ac:368d:498:fb4f:f6b3\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:134.0) Gecko/20100101 Firefox/134.0\";s:5:\"login\";i:1737536868;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '21'),
(18, 2, 'nickname', 'bhuvan.singh'),
(19, 2, 'first_name', 'Bhuvan'),
(20, 2, 'last_name', 'Singh'),
(21, 2, 'description', ''),
(22, 2, 'rich_editing', 'true'),
(23, 2, 'syntax_highlighting', 'true'),
(24, 2, 'comment_shortcuts', 'false'),
(25, 2, 'admin_color', 'fresh'),
(26, 2, 'use_ssl', '0'),
(27, 2, 'show_admin_bar_front', 'true'),
(28, 2, 'locale', ''),
(29, 2, 'wp_capabilities', 'a:1:{s:6:\"editor\";b:1;}'),
(30, 2, 'wp_user_level', '7'),
(31, 2, 'dismissed_wp_pointers', ''),
(32, 3, 'nickname', 'ritu.jaiswal.c'),
(33, 3, 'first_name', 'Ritu'),
(34, 3, 'last_name', 'Jaiswal'),
(35, 3, 'description', ''),
(36, 3, 'rich_editing', 'true'),
(37, 3, 'syntax_highlighting', 'true'),
(38, 3, 'comment_shortcuts', 'false'),
(39, 3, 'admin_color', 'fresh'),
(40, 3, 'use_ssl', '0'),
(41, 3, 'show_admin_bar_front', 'true'),
(42, 3, 'locale', ''),
(43, 3, 'wp_capabilities', 'a:1:{s:6:\"editor\";b:1;}'),
(44, 3, 'wp_user_level', '7'),
(45, 3, 'dismissed_wp_pointers', ''),
(46, 4, 'nickname', 'piyush.chate.c'),
(47, 4, 'first_name', 'Piyush'),
(48, 4, 'last_name', 'Chate'),
(49, 4, 'description', ''),
(50, 4, 'rich_editing', 'true'),
(51, 4, 'syntax_highlighting', 'true'),
(52, 4, 'comment_shortcuts', 'false'),
(53, 4, 'admin_color', 'fresh'),
(54, 4, 'use_ssl', '0'),
(55, 4, 'show_admin_bar_front', 'true'),
(56, 4, 'locale', ''),
(57, 4, 'wp_capabilities', 'a:1:{s:6:\"editor\";b:1;}'),
(58, 4, 'wp_user_level', '7'),
(59, 4, 'dismissed_wp_pointers', ''),
(60, 5, 'nickname', 'toufique.mallick.c'),
(61, 5, 'first_name', 'Toufique'),
(62, 5, 'last_name', 'Mallick'),
(63, 5, 'description', ''),
(64, 5, 'rich_editing', 'true'),
(65, 5, 'syntax_highlighting', 'true'),
(66, 5, 'comment_shortcuts', 'false'),
(67, 5, 'admin_color', 'fresh'),
(68, 5, 'use_ssl', '0'),
(69, 5, 'show_admin_bar_front', 'true'),
(70, 5, 'locale', ''),
(71, 5, 'wp_capabilities', 'a:1:{s:6:\"editor\";b:1;}'),
(72, 5, 'wp_user_level', '7'),
(73, 5, 'dismissed_wp_pointers', ''),
(74, 6, 'nickname', 'aditya.chavan03'),
(75, 6, 'first_name', 'Aditya'),
(76, 6, 'last_name', 'Chavan'),
(77, 6, 'description', ''),
(78, 6, 'rich_editing', 'true'),
(79, 6, 'syntax_highlighting', 'true'),
(80, 6, 'comment_shortcuts', 'false'),
(81, 6, 'admin_color', 'fresh'),
(82, 6, 'use_ssl', '0'),
(83, 6, 'show_admin_bar_front', 'true'),
(84, 6, 'locale', ''),
(85, 6, 'wp_capabilities', 'a:1:{s:6:\"editor\";b:1;}'),
(86, 6, 'wp_user_level', '7'),
(87, 6, 'dismissed_wp_pointers', ''),
(88, 7, 'nickname', 'mcampbell'),
(89, 7, 'first_name', 'Maisie'),
(90, 7, 'last_name', 'Campbell'),
(91, 7, 'description', ''),
(92, 7, 'rich_editing', 'true'),
(93, 7, 'syntax_highlighting', 'true'),
(94, 7, 'comment_shortcuts', 'false'),
(95, 7, 'admin_color', 'fresh'),
(96, 7, 'use_ssl', '0'),
(97, 7, 'show_admin_bar_front', 'true'),
(98, 7, 'locale', ''),
(99, 7, 'wp_capabilities', 'a:1:{s:6:\"author\";b:1;}'),
(100, 7, 'wp_user_level', '2'),
(101, 7, 'dismissed_wp_pointers', ''),
(102, 8, 'nickname', 'troberts'),
(103, 8, 'first_name', 'Thomas'),
(104, 8, 'last_name', 'Roberts'),
(105, 8, 'description', ''),
(106, 8, 'rich_editing', 'true'),
(107, 8, 'syntax_highlighting', 'true'),
(108, 8, 'comment_shortcuts', 'false'),
(109, 8, 'admin_color', 'fresh'),
(110, 8, 'use_ssl', '0'),
(111, 8, 'show_admin_bar_front', 'true'),
(112, 8, 'locale', ''),
(113, 8, 'wp_capabilities', 'a:1:{s:6:\"author\";b:1;}'),
(114, 8, 'wp_user_level', '2'),
(115, 8, 'dismissed_wp_pointers', ''),
(116, 9, 'nickname', 'jwilliams2'),
(117, 9, 'first_name', 'Jeremy'),
(118, 9, 'last_name', 'Williams'),
(119, 9, 'description', ''),
(120, 9, 'rich_editing', 'true'),
(121, 9, 'syntax_highlighting', 'true'),
(122, 9, 'comment_shortcuts', 'false'),
(123, 9, 'admin_color', 'fresh'),
(124, 9, 'use_ssl', '0'),
(125, 9, 'show_admin_bar_front', 'true'),
(126, 9, 'locale', ''),
(127, 9, 'wp_capabilities', 'a:1:{s:6:\"author\";b:1;}'),
(128, 9, 'wp_user_level', '2'),
(129, 9, 'dismissed_wp_pointers', ''),
(130, 10, 'nickname', 'rgriffiths'),
(131, 10, 'first_name', 'Rhiannon'),
(132, 10, 'last_name', 'Griffiths'),
(133, 10, 'description', ''),
(134, 10, 'rich_editing', 'true'),
(135, 10, 'syntax_highlighting', 'true'),
(136, 10, 'comment_shortcuts', 'false'),
(137, 10, 'admin_color', 'fresh'),
(138, 10, 'use_ssl', '0'),
(139, 10, 'show_admin_bar_front', 'true'),
(140, 10, 'locale', ''),
(141, 10, 'wp_capabilities', 'a:1:{s:6:\"author\";b:1;}'),
(142, 10, 'wp_user_level', '2'),
(143, 10, 'dismissed_wp_pointers', ''),
(144, 11, 'nickname', 'kmoloney1'),
(145, 11, 'first_name', 'Kevin'),
(146, 11, 'last_name', 'Moloney'),
(147, 11, 'description', ''),
(148, 11, 'rich_editing', 'true'),
(149, 11, 'syntax_highlighting', 'true'),
(150, 11, 'comment_shortcuts', 'false'),
(151, 11, 'admin_color', 'fresh'),
(152, 11, 'use_ssl', '0'),
(153, 11, 'show_admin_bar_front', 'true'),
(154, 11, 'locale', ''),
(155, 11, 'wp_capabilities', 'a:1:{s:6:\"author\";b:1;}'),
(156, 11, 'wp_user_level', '2'),
(157, 11, 'dismissed_wp_pointers', ''),
(158, 12, 'nickname', 'cwalsh3'),
(159, 12, 'first_name', 'Charlotte'),
(160, 12, 'last_name', 'Walsh'),
(161, 12, 'description', ''),
(162, 12, 'rich_editing', 'true'),
(163, 12, 'syntax_highlighting', 'true'),
(164, 12, 'comment_shortcuts', 'false'),
(165, 12, 'admin_color', 'fresh'),
(166, 12, 'use_ssl', '0'),
(167, 12, 'show_admin_bar_front', 'true'),
(168, 12, 'locale', ''),
(169, 12, 'wp_capabilities', 'a:1:{s:6:\"author\";b:1;}'),
(170, 12, 'wp_user_level', '2'),
(171, 12, 'dismissed_wp_pointers', ''),
(172, 13, 'nickname', 'abhyan.morkal.c'),
(173, 13, 'first_name', 'Abhyan'),
(174, 13, 'last_name', 'Morkal'),
(175, 13, 'description', ''),
(176, 13, 'rich_editing', 'true'),
(177, 13, 'syntax_highlighting', 'true'),
(178, 13, 'comment_shortcuts', 'false'),
(179, 13, 'admin_color', 'fresh'),
(180, 13, 'use_ssl', '0'),
(181, 13, 'show_admin_bar_front', 'true'),
(182, 13, 'locale', ''),
(183, 13, 'wp_capabilities', 'a:1:{s:6:\"editor\";b:1;}'),
(184, 13, 'wp_user_level', '7'),
(185, 13, 'dismissed_wp_pointers', ''),
(186, 1, 'wp_persisted_preferences', 'a:3:{s:4:\"core\";a:1:{s:26:\"isComplementaryAreaVisible\";b:1;}s:14:\"core/edit-post\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2025-01-17T08:33:35.267Z\";}'),
(187, 14, 'nickname', 'sanad.qazi.c'),
(188, 14, 'first_name', 'Sanad'),
(189, 14, 'last_name', 'Qazi'),
(190, 14, 'description', ''),
(191, 14, 'rich_editing', 'true'),
(192, 14, 'syntax_highlighting', 'true'),
(193, 14, 'comment_shortcuts', 'false'),
(194, 14, 'admin_color', 'fresh'),
(195, 14, 'use_ssl', '0'),
(196, 14, 'show_admin_bar_front', 'true'),
(197, 14, 'locale', ''),
(198, 14, 'wp_capabilities', 'a:1:{s:6:\"editor\";b:1;}'),
(199, 14, 'wp_user_level', '7'),
(200, 14, 'dismissed_wp_pointers', ''),
(201, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:20:\"2409:40e3:184:5c5f::\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BMYoUa/9GJMdP3gOTFoMBi8ZUfunrw.', 'admin', 'mohdamir.khan@eclerx.com', 'http://localhost:10016', '2025-01-14 08:11:10', '', 0, 'MAK'),
(2, 'bhuvan.singh', '$P$BVv8daCWaLZTmILPpB6z7YtipkCgiB0', 'bhuvan-singh', 'bhuvan.singh@eclerx.com', '', '2025-01-16 07:15:48', '', 0, 'Bhuvan'),
(3, 'ritu.jaiswal.c', '$P$BD.Ne5LZyG3Mw5/4B5IUvRPA1JFz241', 'ritu-jaiswal-c', 'ritu.jaiswal.c@eclerx.com', '', '2025-01-16 07:16:53', '', 0, 'Ritu'),
(4, 'piyush.chate.c', '$P$BV/BL62lTkihRzt6jRNnC.eWa.y8qC/', 'piyush-chate-c', 'piyush.chate.c@eclerx.com', '', '2025-01-16 07:17:29', '', 0, 'Piyush'),
(5, 'toufique.mallick.c', '$P$BpDOsiKiLcotwt1wCP1JTYHVEnA3Mh0', 'toufique-mallick-c', 'toufique.mallick.c@eclerx.com', '', '2025-01-16 07:25:09', '', 0, 'Toufique'),
(6, 'aditya.chavan03', '$P$BD2uLae3VfWexVffEIYUlYX2MqeE1G.', 'aditya-chavan03', 'aditya.chavan03@eclerx.com', '', '2025-01-16 07:25:54', '', 0, 'Aditya'),
(7, 'mcampbell', '$P$BDuuNXqLBGHeJpEQj/Y7tNxEJmZIct.', 'mcampbell', 'mcampbell@penguinrandomhouse.co.uk', '', '2025-01-16 07:30:56', '', 0, 'Maisie'),
(8, 'troberts', '$P$Bmj9cxgaX1aXKW9JZzE7RQawZjTYA70', 'troberts', 'troberts@penguinrandomhouse.co.uk', '', '2025-01-16 07:31:51', '', 0, 'Tom'),
(9, 'jwilliams2', '$P$BXfqIlQ9a.6FeRG5E/Ddo8Z7v0DS7d0', 'jwilliams2', 'jwilliams2@penguinrandomhouse.co.uk', '', '2025-01-16 07:32:50', '', 0, 'Jeremy'),
(10, 'rgriffiths', '$P$BD.HLkQDcGcfbBj/L.AxQNojVrmuDk1', 'rgriffiths', 'rgriffiths@penguinrandomhouse.co.uk', '', '2025-01-16 07:34:31', '', 0, 'Rhi'),
(11, 'kmoloney1', '$P$BEVwH26QabObmlyov7.iHyOCWRvzKL/', 'kmoloney1', 'kmoloney1@penguinrandomhouse.co.uk', '', '2025-01-16 07:36:12', '', 0, 'Kevin'),
(12, 'cwalsh3', '$P$BgFgfbsm3gtz/ygsBSuBo/f8OYS/P11', 'cwalsh3', 'cwalsh3@penguinrandomhouse.co.uk', '', '2025-01-16 07:37:17', '', 0, 'Charlotte'),
(13, 'abhyan.morkal.c', '$P$BqnTGRL17LGfpKWejEdAAEmQva.F6s/', 'abhyan-morkal-c', 'abhyan.morkal.c@eclerx.com', '', '2025-01-16 07:40:24', '', 0, 'Abhyan'),
(14, 'sanad.qazi.c', '$P$BliwnL6PvaDfi02L02fFZs7jpUTnJ2.', 'sanad-qazi-c', 'sanad.qazi.c@eclerx.com', '', '2025-01-17 18:35:31', '', 0, 'Sanad');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wp_phpmyadmin_extension__errors_log`
--

CREATE TABLE `wp_wp_phpmyadmin_extension__errors_log` (
  `id` int(50) NOT NULL,
  `gmdate` datetime DEFAULT NULL,
  `function_name` longtext NOT NULL,
  `function_args` longtext NOT NULL,
  `message` longtext NOT NULL
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
  ADD KEY `comment_author_email` (`comment_author_email`(10));

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
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

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
-- Indexes for table `wp_sprint`
--
ALTER TABLE `wp_sprint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_sprint_hours`
--
ALTER TABLE `wp_sprint_hours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_sprint_issues`
--
ALTER TABLE `wp_sprint_issues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_sprint_tickets`
--
ALTER TABLE `wp_sprint_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_sprint_tickets_revisions`
--
ALTER TABLE `wp_sprint_tickets_revisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_sprint_to_tickets`
--
ALTER TABLE `wp_sprint_to_tickets`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `wp_wp_phpmyadmin_extension__errors_log`
--
ALTER TABLE `wp_wp_phpmyadmin_extension__errors_log`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

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
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=703;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wp_sprint`
--
ALTER TABLE `wp_sprint`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wp_sprint_hours`
--
ALTER TABLE `wp_sprint_hours`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_sprint_issues`
--
ALTER TABLE `wp_sprint_issues`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_sprint_tickets`
--
ALTER TABLE `wp_sprint_tickets`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `wp_sprint_tickets_revisions`
--
ALTER TABLE `wp_sprint_tickets_revisions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=287;

--
-- AUTO_INCREMENT for table `wp_sprint_to_tickets`
--
ALTER TABLE `wp_sprint_to_tickets`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=700;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wp_wp_phpmyadmin_extension__errors_log`
--
ALTER TABLE `wp_wp_phpmyadmin_extension__errors_log`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

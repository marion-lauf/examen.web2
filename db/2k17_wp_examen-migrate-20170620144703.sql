# WordPress MySQL database migration
#
# Generated: Tuesday 20. June 2017 14:47 UTC
# Hostname: localhost
# Database: `2k17_wp_examen`
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_2k17_examencommentmeta`
#

DROP TABLE IF EXISTS `wp_2k17_examencommentmeta`;


#
# Table structure of table `wp_2k17_examencommentmeta`
#

CREATE TABLE `wp_2k17_examencommentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_2k17_examencommentmeta`
#

#
# End of data contents of table `wp_2k17_examencommentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_2k17_examencomments`
#

DROP TABLE IF EXISTS `wp_2k17_examencomments`;


#
# Table structure of table `wp_2k17_examencomments`
#

CREATE TABLE `wp_2k17_examencomments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_2k17_examencomments`
#
INSERT INTO `wp_2k17_examencomments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-06-20 08:50:08', '2017-06-20 06:50:08', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_2k17_examencomments`
# --------------------------------------------------------



#
# Delete any existing table `wp_2k17_examenlinks`
#

DROP TABLE IF EXISTS `wp_2k17_examenlinks`;


#
# Table structure of table `wp_2k17_examenlinks`
#

CREATE TABLE `wp_2k17_examenlinks` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_2k17_examenlinks`
#

#
# End of data contents of table `wp_2k17_examenlinks`
# --------------------------------------------------------



#
# Delete any existing table `wp_2k17_examenoptions`
#

DROP TABLE IF EXISTS `wp_2k17_examenoptions`;


#
# Table structure of table `wp_2k17_examenoptions`
#

CREATE TABLE `wp_2k17_examenoptions` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_2k17_examenoptions`
#
INSERT INTO `wp_2k17_examenoptions` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://http://mjm-webdesign.com/~laufenburger/', 'yes'),
(2, 'home', 'http://http://mjm-webdesign.com/~laufenburger/', 'yes'),
(3, 'blogname', 'Structures Intérieures', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'marion.lauf@gmail.com', 'yes'),
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
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=2&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'FoundationPress-master 2', 'yes'),
(41, 'stylesheet', 'FoundationPress-master 2', 'yes'),
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
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_2k17_examenuser_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'fr_FR', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar-widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:14:"footer-widgets";a:0:{}s:13:"array_version";i:3;}', 'yes') ;
INSERT INTO `wp_2k17_examenoptions` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'cron', 'a:4:{i:1497984608;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1498028145;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1498029301;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(109, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1497941758;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(124, 'can_compress_scripts', '1', 'no'),
(138, 'current_theme', 'FoundationPress', 'yes'),
(139, 'theme_mods_FoundationPress-master 2', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:9:"top-bar-r";i:2;}}', 'yes'),
(140, 'theme_switched', '', 'yes'),
(142, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(148, 'category_children', 'a:0:{}', 'yes'),
(165, 'recently_activated', 'a:0:{}', 'yes') ;

#
# End of data contents of table `wp_2k17_examenoptions`
# --------------------------------------------------------



#
# Delete any existing table `wp_2k17_examenpostmeta`
#

DROP TABLE IF EXISTS `wp_2k17_examenpostmeta`;


#
# Table structure of table `wp_2k17_examenpostmeta`
#

CREATE TABLE `wp_2k17_examenpostmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_2k17_examenpostmeta`
#
INSERT INTO `wp_2k17_examenpostmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'page-templates/page-accueil.php'),
(2, 2, '_edit_lock', '1497954316:1'),
(3, 2, '_edit_last', '1'),
(4, 5, '_edit_last', '1'),
(5, 5, '_wp_page_template', 'default'),
(6, 5, '_edit_lock', '1497942762:1'),
(7, 7, '_edit_last', '1'),
(8, 7, '_wp_page_template', 'page-templates/contact.php'),
(9, 7, '_edit_lock', '1497948403:1'),
(10, 9, '_menu_item_type', 'post_type'),
(11, 9, '_menu_item_menu_item_parent', '0'),
(12, 9, '_menu_item_object_id', '7'),
(13, 9, '_menu_item_object', 'page'),
(14, 9, '_menu_item_target', ''),
(15, 9, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(16, 9, '_menu_item_xfn', ''),
(17, 9, '_menu_item_url', ''),
(19, 10, '_menu_item_type', 'post_type'),
(20, 10, '_menu_item_menu_item_parent', '0'),
(21, 10, '_menu_item_object_id', '5'),
(22, 10, '_menu_item_object', 'page'),
(23, 10, '_menu_item_target', ''),
(24, 10, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(25, 10, '_menu_item_xfn', ''),
(26, 10, '_menu_item_url', ''),
(28, 11, '_menu_item_type', 'post_type'),
(29, 11, '_menu_item_menu_item_parent', '0'),
(30, 11, '_menu_item_object_id', '2'),
(31, 11, '_menu_item_object', 'page'),
(32, 11, '_menu_item_target', ''),
(33, 11, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(34, 11, '_menu_item_xfn', ''),
(35, 11, '_menu_item_url', ''),
(37, 12, '_edit_last', '1'),
(38, 12, '_edit_lock', '1497945402:1'),
(40, 14, '_edit_last', '1'),
(41, 14, '_edit_lock', '1497954367:1'),
(43, 17, '_wp_attached_file', '2017/06/image-article-1.png'),
(44, 17, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:408;s:6:"height";i:286;s:4:"file";s:27:"2017/06/image-article-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"image-article-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:27:"image-article-1-300x210.png";s:5:"width";i:300;s:6:"height";i:210;s:9:"mime-type";s:9:"image/png";}s:14:"featured-small";a:4:{s:4:"file";s:27:"image-article-1-408x200.png";s:5:"width";i:408;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(45, 14, '_thumbnail_id', '17'),
(47, 19, '_wp_attached_file', '2017/06/image-article-2.png'),
(48, 19, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:408;s:6:"height";i:285;s:4:"file";s:27:"2017/06/image-article-2.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"image-article-2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:27:"image-article-2-300x210.png";s:5:"width";i:300;s:6:"height";i:210;s:9:"mime-type";s:9:"image/png";}s:14:"featured-small";a:4:{s:4:"file";s:27:"image-article-2-408x200.png";s:5:"width";i:408;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(49, 20, '_wp_attached_file', '2017/06/image-article-3.png'),
(50, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:408;s:6:"height";i:286;s:4:"file";s:27:"2017/06/image-article-3.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"image-article-3-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:27:"image-article-3-300x210.png";s:5:"width";i:300;s:6:"height";i:210;s:9:"mime-type";s:9:"image/png";}s:14:"featured-small";a:4:{s:4:"file";s:27:"image-article-3-408x200.png";s:5:"width";i:408;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(51, 12, '_thumbnail_id', '19'),
(53, 1, '_edit_lock', '1497948154:1'),
(54, 1, '_edit_last', '1'),
(55, 1, '_thumbnail_id', '20'),
(57, 24, '_edit_last', '1'),
(58, 24, '_edit_lock', '1497966699:1'),
(59, 25, '_wp_attached_file', '2017/06/image-article-4.png'),
(60, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:408;s:6:"height";i:285;s:4:"file";s:27:"2017/06/image-article-4.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"image-article-4-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:27:"image-article-4-300x210.png";s:5:"width";i:300;s:6:"height";i:210;s:9:"mime-type";s:9:"image/png";}s:14:"featured-small";a:4:{s:4:"file";s:27:"image-article-4-408x200.png";s:5:"width";i:408;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(61, 26, '_wp_attached_file', '2017/06/image-article-5.png'),
(62, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:408;s:6:"height";i:285;s:4:"file";s:27:"2017/06/image-article-5.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"image-article-5-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:27:"image-article-5-300x210.png";s:5:"width";i:300;s:6:"height";i:210;s:9:"mime-type";s:9:"image/png";}s:14:"featured-small";a:4:{s:4:"file";s:27:"image-article-5-408x200.png";s:5:"width";i:408;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(63, 27, '_wp_attached_file', '2017/06/image-article-6.png'),
(64, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:408;s:6:"height";i:285;s:4:"file";s:27:"2017/06/image-article-6.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"image-article-6-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:27:"image-article-6-300x210.png";s:5:"width";i:300;s:6:"height";i:210;s:9:"mime-type";s:9:"image/png";}s:14:"featured-small";a:4:{s:4:"file";s:27:"image-article-6-408x200.png";s:5:"width";i:408;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(65, 24, '_thumbnail_id', '25'),
(67, 29, '_edit_last', '1'),
(68, 29, '_edit_lock', '1497966730:1'),
(69, 29, '_thumbnail_id', '27'),
(71, 31, '_edit_last', '1'),
(72, 31, '_edit_lock', '1497966834:1'),
(73, 31, '_thumbnail_id', '26') ;

#
# End of data contents of table `wp_2k17_examenpostmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_2k17_examenposts`
#

DROP TABLE IF EXISTS `wp_2k17_examenposts`;


#
# Table structure of table `wp_2k17_examenposts`
#

CREATE TABLE `wp_2k17_examenposts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_2k17_examenposts`
#
INSERT INTO `wp_2k17_examenposts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-06-20 08:50:08', '2017-06-20 06:50:08', '', 'Commode 8 tiroirs', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2017-06-20 09:59:32', '2017-06-20 07:59:32', '', 0, 'http://http://mjm-webdesign.com/~laufenburger//?p=1', 0, 'post', '', 1),
(2, 1, '2017-06-20 08:50:08', '2017-06-20 06:50:08', '', 'Accueil', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2017-06-20 11:14:29', '2017-06-20 09:14:29', '', 0, 'http://http://mjm-webdesign.com/~laufenburger//?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-06-20 08:50:19', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-06-20 08:50:19', '0000-00-00 00:00:00', '', 0, 'http://http://mjm-webdesign.com/~laufenburger//?p=3', 0, 'post', '', 0),
(4, 1, '2017-06-20 09:14:58', '2017-06-20 07:14:58', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-06-20 09:14:58', '2017-06-20 07:14:58', '', 2, 'http://http://mjm-webdesign.com/~laufenburger//2017/06/20/2-revision-v1/', 0, 'revision', '', 0),
(5, 1, '2017-06-20 09:15:05', '2017-06-20 07:15:05', '', 'Produits', '', 'publish', 'closed', 'closed', '', 'produits', '', '', '2017-06-20 09:15:05', '2017-06-20 07:15:05', '', 0, 'http://http://mjm-webdesign.com/~laufenburger//?page_id=5', 0, 'page', '', 0),
(6, 1, '2017-06-20 09:15:05', '2017-06-20 07:15:05', '', 'Produits', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-06-20 09:15:05', '2017-06-20 07:15:05', '', 5, 'http://http://mjm-webdesign.com/~laufenburger//2017/06/20/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2017-06-20 09:15:14', '2017-06-20 07:15:14', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2017-06-20 10:45:24', '2017-06-20 08:45:24', '', 0, 'http://http://mjm-webdesign.com/~laufenburger//?page_id=7', 0, 'page', '', 0),
(8, 1, '2017-06-20 09:15:14', '2017-06-20 07:15:14', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-06-20 09:15:14', '2017-06-20 07:15:14', '', 7, 'http://http://mjm-webdesign.com/~laufenburger//2017/06/20/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2017-06-20 09:15:36', '2017-06-20 07:15:36', ' ', '', '', 'publish', 'closed', 'closed', '', '9', '', '', '2017-06-20 09:16:30', '2017-06-20 07:16:30', '', 0, 'http://http://mjm-webdesign.com/~laufenburger//?p=9', 3, 'nav_menu_item', '', 0),
(10, 1, '2017-06-20 09:15:36', '2017-06-20 07:15:36', ' ', '', '', 'publish', 'closed', 'closed', '', '10', '', '', '2017-06-20 09:16:30', '2017-06-20 07:16:30', '', 0, 'http://http://mjm-webdesign.com/~laufenburger//?p=10', 2, 'nav_menu_item', '', 0),
(11, 1, '2017-06-20 09:15:36', '2017-06-20 07:15:36', ' ', '', '', 'publish', 'closed', 'closed', '', '11', '', '', '2017-06-20 09:16:30', '2017-06-20 07:16:30', '', 0, 'http://http://mjm-webdesign.com/~laufenburger//?p=11', 1, 'nav_menu_item', '', 0),
(12, 1, '2017-06-20 09:51:42', '2017-06-20 07:51:42', '', 'Meuble complet sur mesure', '', 'publish', 'open', 'open', '', 'article', '', '', '2017-06-20 09:59:04', '2017-06-20 07:59:04', '', 0, 'http://http://mjm-webdesign.com/~laufenburger//?p=12', 0, 'post', '', 0),
(13, 1, '2017-06-20 09:51:42', '2017-06-20 07:51:42', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.', 'article', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2017-06-20 09:51:42', '2017-06-20 07:51:42', '', 12, 'http://http://mjm-webdesign.com/~laufenburger//2017/06/20/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2017-06-20 09:52:14', '2017-06-20 07:52:14', '', 'Etagère à crochets', '', 'publish', 'open', 'open', '', 'article-3', '', '', '2017-06-20 09:54:35', '2017-06-20 07:54:35', '', 0, 'http://http://mjm-webdesign.com/~laufenburger//?p=14', 0, 'post', '', 0),
(15, 1, '2017-06-20 09:52:14', '2017-06-20 07:52:14', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with', 'article 3', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2017-06-20 09:52:14', '2017-06-20 07:52:14', '', 14, 'http://http://mjm-webdesign.com/~laufenburger//2017/06/20/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2017-06-20 09:53:16', '2017-06-20 07:53:16', '', 'Etagère à crochets', '', 'inherit', 'closed', 'closed', '', '14-autosave-v1', '', '', '2017-06-20 09:53:16', '2017-06-20 07:53:16', '', 14, 'http://http://mjm-webdesign.com/~laufenburger//2017/06/20/14-autosave-v1/', 0, 'revision', '', 0),
(17, 1, '2017-06-20 09:54:31', '2017-06-20 07:54:31', '', 'image-article-1', '', 'inherit', 'open', 'closed', '', 'image-article-1', '', '', '2017-06-20 09:54:31', '2017-06-20 07:54:31', '', 14, 'http://http://mjm-webdesign.com/~laufenburger//wp-content/uploads/2017/06/image-article-1.png', 0, 'attachment', 'image/png', 0),
(18, 1, '2017-06-20 09:54:35', '2017-06-20 07:54:35', '', 'Etagère à crochets', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2017-06-20 09:54:35', '2017-06-20 07:54:35', '', 14, 'http://http://mjm-webdesign.com/~laufenburger//2017/06/20/14-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2017-06-20 09:58:58', '2017-06-20 07:58:58', '', 'image-article-2', '', 'inherit', 'open', 'closed', '', 'image-article-2', '', '', '2017-06-20 09:58:58', '2017-06-20 07:58:58', '', 12, 'http://http://mjm-webdesign.com/~laufenburger//wp-content/uploads/2017/06/image-article-2.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2017-06-20 09:58:58', '2017-06-20 07:58:58', '', 'image-article-3', '', 'inherit', 'open', 'closed', '', 'image-article-3', '', '', '2017-06-20 09:58:58', '2017-06-20 07:58:58', '', 12, 'http://http://mjm-webdesign.com/~laufenburger//wp-content/uploads/2017/06/image-article-3.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2017-06-20 09:59:04', '2017-06-20 07:59:04', '', 'Meuble complet sur mesure', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2017-06-20 09:59:04', '2017-06-20 07:59:04', '', 12, 'http://http://mjm-webdesign.com/~laufenburger//2017/06/20/12-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2017-06-20 09:59:32', '2017-06-20 07:59:32', '', 'Commode 8 tiroirs', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-06-20 09:59:32', '2017-06-20 07:59:32', '', 1, 'http://http://mjm-webdesign.com/~laufenburger//2017/06/20/1-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2017-06-20 15:49:28', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-06-20 15:49:28', '0000-00-00 00:00:00', '', 0, 'http://http://mjm-webdesign.com/~laufenburger//?p=23', 0, 'post', '', 0),
(24, 1, '2017-06-20 15:53:50', '2017-06-20 13:53:50', '', 'Table de chevet vitrée', '', 'publish', 'open', 'open', '', 'table-de-chevet-vitree', '', '', '2017-06-20 15:53:50', '2017-06-20 13:53:50', '', 0, 'http://http://mjm-webdesign.com/~laufenburger//?p=24', 0, 'post', '', 0),
(25, 1, '2017-06-20 15:53:34', '2017-06-20 13:53:34', '', 'image-article-4', '', 'inherit', 'open', 'closed', '', 'image-article-4', '', '', '2017-06-20 15:53:34', '2017-06-20 13:53:34', '', 24, 'http://http://mjm-webdesign.com/~laufenburger//wp-content/uploads/2017/06/image-article-4.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2017-06-20 15:53:34', '2017-06-20 13:53:34', '', 'image-article-5', '', 'inherit', 'open', 'closed', '', 'image-article-5', '', '', '2017-06-20 15:53:34', '2017-06-20 13:53:34', '', 24, 'http://http://mjm-webdesign.com/~laufenburger//wp-content/uploads/2017/06/image-article-5.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2017-06-20 15:53:35', '2017-06-20 13:53:35', '', 'image-article-6', '', 'inherit', 'open', 'closed', '', 'image-article-6', '', '', '2017-06-20 15:53:35', '2017-06-20 13:53:35', '', 24, 'http://http://mjm-webdesign.com/~laufenburger//wp-content/uploads/2017/06/image-article-6.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2017-06-20 15:53:50', '2017-06-20 13:53:50', '', 'Table de chevet vitrée', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2017-06-20 15:53:50', '2017-06-20 13:53:50', '', 24, 'http://http://mjm-webdesign.com/~laufenburger//2017/06/20/24-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2017-06-20 15:54:28', '2017-06-20 13:54:28', '', 'Porte revue solide', '', 'publish', 'open', 'open', '', 'porte-revue-solide', '', '', '2017-06-20 15:54:28', '2017-06-20 13:54:28', '', 0, 'http://http://mjm-webdesign.com/~laufenburger//?p=29', 0, 'post', '', 0),
(30, 1, '2017-06-20 15:54:28', '2017-06-20 13:54:28', '', 'Porte revue solide', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2017-06-20 15:54:28', '2017-06-20 13:54:28', '', 29, 'http://http://mjm-webdesign.com/~laufenburger//2017/06/20/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2017-06-20 15:55:08', '2017-06-20 13:55:08', '', 'Un escalier à rangements', '', 'publish', 'open', 'open', '', 'escalier-a-rangements', '', '', '2017-06-20 15:55:39', '2017-06-20 13:55:39', '', 0, 'http://http://mjm-webdesign.com/~laufenburger//?p=31', 0, 'post', '', 0),
(32, 1, '2017-06-20 15:55:08', '2017-06-20 13:55:08', '', 'Escalier à rangements', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2017-06-20 15:55:08', '2017-06-20 13:55:08', '', 31, 'http://http://mjm-webdesign.com/~laufenburger//2017/06/20/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2017-06-20 15:55:39', '2017-06-20 13:55:39', '', 'Un escalier à rangements', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2017-06-20 15:55:39', '2017-06-20 13:55:39', '', 31, 'http://http://mjm-webdesign.com/~laufenburger//2017/06/20/31-revision-v1/', 0, 'revision', '', 0) ;

#
# End of data contents of table `wp_2k17_examenposts`
# --------------------------------------------------------



#
# Delete any existing table `wp_2k17_examenterm_relationships`
#

DROP TABLE IF EXISTS `wp_2k17_examenterm_relationships`;


#
# Table structure of table `wp_2k17_examenterm_relationships`
#

CREATE TABLE `wp_2k17_examenterm_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_2k17_examenterm_relationships`
#
INSERT INTO `wp_2k17_examenterm_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(9, 2, 0),
(10, 2, 0),
(11, 2, 0),
(12, 1, 0),
(14, 1, 0),
(24, 1, 0),
(29, 1, 0),
(31, 1, 0) ;

#
# End of data contents of table `wp_2k17_examenterm_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_2k17_examenterm_taxonomy`
#

DROP TABLE IF EXISTS `wp_2k17_examenterm_taxonomy`;


#
# Table structure of table `wp_2k17_examenterm_taxonomy`
#

CREATE TABLE `wp_2k17_examenterm_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_2k17_examenterm_taxonomy`
#
INSERT INTO `wp_2k17_examenterm_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 6),
(2, 2, 'nav_menu', '', 0, 3) ;

#
# End of data contents of table `wp_2k17_examenterm_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_2k17_examentermmeta`
#

DROP TABLE IF EXISTS `wp_2k17_examentermmeta`;


#
# Table structure of table `wp_2k17_examentermmeta`
#

CREATE TABLE `wp_2k17_examentermmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_2k17_examentermmeta`
#

#
# End of data contents of table `wp_2k17_examentermmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_2k17_examenterms`
#

DROP TABLE IF EXISTS `wp_2k17_examenterms`;


#
# Table structure of table `wp_2k17_examenterms`
#

CREATE TABLE `wp_2k17_examenterms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_2k17_examenterms`
#
INSERT INTO `wp_2k17_examenterms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Menu principal', 'menu-principal', 0) ;

#
# End of data contents of table `wp_2k17_examenterms`
# --------------------------------------------------------



#
# Delete any existing table `wp_2k17_examenusermeta`
#

DROP TABLE IF EXISTS `wp_2k17_examenusermeta`;


#
# Table structure of table `wp_2k17_examenusermeta`
#

CREATE TABLE `wp_2k17_examenusermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_2k17_examenusermeta`
#
INSERT INTO `wp_2k17_examenusermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_2k17_examencapabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_2k17_examenuser_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:1:{s:64:"a8fcbe125fd213e57dbe36fd98e08ad41e10e7e1c457af03469bb7034ec89f8d";a:4:{s:10:"expiration";i:1498114219;s:2:"ip";s:3:"::1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36";s:5:"login";i:1497941419;}}'),
(16, 1, 'wp_2k17_examendashboard_quick_press_last_post_id', '3'),
(17, 1, 'community-events-location', 'a:1:{s:2:"ip";s:2:"::";}'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(20, 1, 'wp_2k17_examenuser-settings', 'libraryContent=browse'),
(21, 1, 'wp_2k17_examenuser-settings-time', '1497945271') ;

#
# End of data contents of table `wp_2k17_examenusermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_2k17_examenusers`
#

DROP TABLE IF EXISTS `wp_2k17_examenusers`;


#
# Table structure of table `wp_2k17_examenusers`
#

CREATE TABLE `wp_2k17_examenusers` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_2k17_examenusers`
#
INSERT INTO `wp_2k17_examenusers` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B4GMabo10CU7xc7Xw9TJrZ9V57XOWR1', 'admin', 'marion.lauf@gmail.com', '', '2017-06-20 06:50:08', '', 0, 'admin') ;

#
# End of data contents of table `wp_2k17_examenusers`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#


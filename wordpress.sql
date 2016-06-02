-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Jeu 02 Juin 2016 à 14:14
-- Version du serveur: 5.5.37
-- Version de PHP: 5.4.4-14+deb7u10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `wordpress`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Monsieur WordPress', '', 'https://wordpress.org/', '', '2016-05-30 11:00:09', '2016-05-30 09:00:09', 'Bonjour, ceci est un commentaire.\nPour supprimer un commentaire, connectez-vous et affichez les commentaires de cet article. Vous pourrez alors les modifier ou les supprimer.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_duplicator_packages`
--

CREATE TABLE IF NOT EXISTS `wp_duplicator_packages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` mediumblob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_duplicator_packages`
--

INSERT INTO `wp_duplicator_packages` (`id`, `name`, `hash`, `status`, `created`, `owner`, `package`) VALUES
(1, '20160530_wordpress', '574c3a248902f9188160530130332', 100, '2016-05-30 13:04:44', 'fey89', 0x4f3a31313a224455505f5061636b616765223a32313a7b733a323a224944223b693a313b733a343a224e616d65223b733a31383a2232303136303533305f776f72647072657373223b733a343a2248617368223b733a32393a223537346333613234383930326639313838313630353330313330333332223b733a383a224e616d6548617368223b733a34383a2232303136303533305f776f726470726573735f3537346333613234383930326639313838313630353330313330333332223b733a373a2256657273696f6e223b733a353a22312e312e36223b733a393a2256657273696f6e5750223b733a353a22342e352e32223b733a393a2256657273696f6e4442223b733a32303a22352e352e33372d302b776865657a79312d6c6f67223b733a31303a2256657273696f6e504850223b733a31363a22352e342e342d31342b64656237753130223b733a343a2254797065223b693a303b733a353a224e6f746573223b733a303a22223b733a393a2253746f726550617468223b733a34343a222f7661722f7777772f70726f6a6563742f7372632f7075626c69632f77702d736e617073686f74732f746d70223b733a383a2253746f726555524c223b733a33363a22687474703a2f2f7777772e70726f6a6563742e6465762f77702d736e617073686f74732f223b733a383a225363616e46696c65223b733a35383a2232303136303533305f776f726470726573735f35373463336132343839303266393138383136303533303133303333325f7363616e2e6a736f6e223b733a373a2252756e74696d65223b733a393a22372e3532207365632e223b733a373a2245786553697a65223b733a383a223331392e32354b42223b733a373a225a697053697a65223b733a373a2231312e37334d42223b733a363a22537461747573223b4e3b733a363a22575055736572223b733a353a226665793839223b733a373a2241726368697665223b4f3a31313a224455505f41726368697665223a31333a7b733a31303a2246696c74657244697273223b733a303a22223b733a31303a2246696c74657245787473223b733a303a22223b733a31333a2246696c74657244697273416c6c223b613a303a7b7d733a31333a2246696c74657245787473416c6c223b613a303a7b7d733a383a2246696c7465724f6e223b693a303b733a343a2246696c65223b733a36303a2232303136303533305f776f726470726573735f35373463336132343839303266393138383136303533303133303333325f617263686976652e7a6970223b733a363a22466f726d6174223b733a333a225a4950223b733a373a225061636b446972223b733a32373a222f7661722f7777772f70726f6a6563742f7372632f7075626c6963223b733a343a2253697a65223b693a31323239383934303b733a343a2244697273223b613a303a7b7d733a353a2246696c6573223b613a303a7b7d733a31303a2246696c746572496e666f223b4f3a32333a224455505f417263686976655f46696c7465725f496e666f223a363a7b733a343a2244697273223b4f3a33343a224455505f417263686976655f46696c7465725f53636f70655f4469726563746f7279223a343a7b733a373a225761726e696e67223b613a303a7b7d733a31303a22556e7265616461626c65223b613a303a7b7d733a343a22436f7265223b613a303a7b7d733a383a22496e7374616e6365223b613a303a7b7d7d733a353a2246696c6573223b4f3a32393a224455505f417263686976655f46696c7465725f53636f70655f46696c65223a353a7b733a343a2253697a65223b613a303a7b7d733a373a225761726e696e67223b613a303a7b7d733a31303a22556e7265616461626c65223b613a303a7b7d733a343a22436f7265223b613a303a7b7d733a383a22496e7374616e6365223b613a303a7b7d7d733a343a2245787473223b4f3a32393a224455505f417263686976655f46696c7465725f53636f70655f42617365223a323a7b733a343a22436f7265223b613a303a7b7d733a383a22496e7374616e6365223b613a303a7b7d7d733a393a2255446972436f756e74223b693a303b733a31303a225546696c65436f756e74223b693a303b733a393a2255457874436f756e74223b693a303b7d733a31303a22002a005061636b616765223b723a313b7d733a393a22496e7374616c6c6572223b4f3a31333a224455505f496e7374616c6c6572223a31323a7b733a343a2246696c65223b733a36323a2232303136303533305f776f726470726573735f35373463336132343839303266393138383136303533303133303333325f696e7374616c6c65722e706870223b733a343a2253697a65223b693a3332363931363b733a31303a224f7074734442486f7374223b733a303a22223b733a31303a224f7074734442506f7274223b733a303a22223b733a31303a224f70747344424e616d65223b733a303a22223b733a31303a224f707473444255736572223b733a303a22223b733a31323a224f70747353534c41646d696e223b693a303b733a31323a224f70747353534c4c6f67696e223b693a303b733a31313a224f70747343616368655750223b693a303b733a31333a224f707473436163686550617468223b693a303b733a31303a224f70747355524c4e6577223b733a303a22223b733a31303a22002a005061636b616765223b723a313b7d733a383a224461746162617365223b4f3a31323a224455505f4461746162617365223a31323a7b733a343a2254797065223b733a353a224d7953514c223b733a343a2253697a65223b693a3731363436343b733a343a2246696c65223b733a36313a2232303136303533305f776f726470726573735f35373463336132343839303266393138383136303533303133303333325f64617461626173652e73716c223b733a343a2250617468223b4e3b733a31323a2246696c7465725461626c6573223b733a303a22223b733a383a2246696c7465724f6e223b693a303b733a343a224e616d65223b4e3b733a31303a22436f6d70617469626c65223b733a303a22223b733a31303a22002a005061636b616765223b723a313b733a32353a22004455505f446174616261736500646253746f726550617468223b733a3130363a222f7661722f7777772f70726f6a6563742f7372632f7075626c69632f77702d736e617073686f74732f746d702f32303136303533305f776f726470726573735f35373463336132343839303266393138383136303533303133303333325f64617461626173652e73716c223b733a32333a22004455505f446174616261736500454f464d61726b6572223b733a303a22223b733a32363a22004455505f4461746162617365006e6574776f726b466c757368223b623a303b7d7d);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=359 ;

--
-- Contenu de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://www.project.dev', 'yes'),
(2, 'home', 'http://www.project.dev', 'yes'),
(3, 'blogname', 'Cabinet Barthélémy', 'yes'),
(4, 'blogdescription', 'Votre partenaire en droit social', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'feyza.kozan04@gmail.com', 'yes'),
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
(19, 'default_comment_status', 'closed', 'yes'),
(20, 'default_ping_status', 'closed', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:21:"polylang/polylang.php";i:1;s:39:"contact-form-lite/easy-contact-form.php";i:2;s:25:"duplicator/duplicator.php";i:4;s:23:"wordfence/wordfence.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:96:"/var/www/project/src/public/wp-content/plugins/addons-for-visual-composer/livemesh-vc-addons.php";i:1;s:69:"/var/www/project/src/public/wp-content/themes/twentysixteen/style.css";i:2;s:0:"";}', 'no'),
(40, 'template', 'smpl-skeleton', 'yes'),
(41, 'stylesheet', 'smpl-skeleton', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '1', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '36686', 'yes'),
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
(69, 'close_comments_for_old_posts', '1', 'yes'),
(70, 'close_comments_days_old', '1', 'yes'),
(71, 'thread_comments', '', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:23:"wr-contactform/main.php";a:2:{i:0;s:24:"WR_Contactform_Installer";i:1;s:23:"on_uninstaller_function";}}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '19', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '36686', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'WPLANG', 'fr_FR', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:8:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:20:"footer-widget-area-1";a:0:{}s:20:"footer-widget-area-2";N;s:20:"footer-widget-area-3";N;s:20:"footer-widget-area-4";N;s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:16:{i:1464701693;a:1:{s:21:"wordfence_hourly_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1464724058;a:1:{s:30:"wordfence_start_scheduled_scan";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1464728409;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1464771626;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1464773621;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1464776083;a:1:{s:15:"ecf_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1464784493;a:1:{s:20:"wordfence_daily_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1464807844;a:1:{s:30:"wordfence_start_scheduled_scan";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1464871235;a:1:{s:8:"do_pings";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1464895865;a:1:{s:30:"wordfence_start_scheduled_scan";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1464982406;a:1:{s:30:"wordfence_start_scheduled_scan";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1465069806;a:1:{s:30:"wordfence_start_scheduled_scan";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1465155862;a:1:{s:30:"wordfence_start_scheduled_scan";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1465243068;a:1:{s:30:"wordfence_start_scheduled_scan";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1465826400;a:1:{s:31:"wordfence_email_activity_report";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}s:7:"version";i:2;}', 'yes'),
(115, '_site_transient_timeout_browser_3d0c4a0e6bce5f7a0dc9ea9f2af8ea5a', '1465203627', 'yes'),
(116, '_site_transient_browser_3d0c4a0e6bce5f7a0dc9ea9f2af8ea5a', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Safari";s:7:"version";s:3:"9.0";s:10:"update_url";s:28:"http://www.apple.com/safari/";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/safari.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/safari.png";s:15:"current_version";s:1:"5";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(118, 'can_compress_scripts', '0', 'yes'),
(135, 'recently_activated', 'a:9:{s:38:"page-builder-sandwich/class-plugin.php";i:1464870573;s:26:"fluxlive/plugneditflux.php";i:1464863371;s:39:"siteorigin-panels/siteorigin-panels.php";i:1464863017;s:47:"live-composer-page-builder/ds-live-composer.php";i:1464862005;s:33:"very-simple-contact-form/vscf.php";i:1464861999;s:49:"addons-for-visual-composer/livemesh-vc-addons.php";i:1464861429;s:83:"contact-form-7-select-box-editor-button/contact-form-7-select-box-editor-button.php";i:1464775992;s:23:"wr-contactform/main.php";i:1464775720;s:40:"web-contact-form/contact-form-widget.php";i:1464775461;}', 'yes'),
(159, 'theme_mods_twentysixteen', 'a:2:{s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1464768235;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(161, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(166, 'polylang', 'a:12:{s:7:"browser";i:1;s:7:"rewrite";i:1;s:12:"hide_default";i:0;s:10:"force_lang";i:1;s:13:"redirect_lang";i:0;s:13:"media_support";i:1;s:9:"uninstall";i:0;s:4:"sync";a:0:{}s:10:"post_types";a:0:{}s:10:"taxonomies";a:0:{}s:7:"domains";a:0:{}s:7:"version";s:5:"1.9.1";}', 'yes'),
(167, 'polylang_wpml_strings', 'a:0:{}', 'yes'),
(168, 'widget_polylang', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(169, 'rewrite_rules', '', 'yes'),
(170, 'wordfence_version', '6.1.8', 'yes'),
(171, 'wordfenceActivated', '1', 'yes'),
(172, 'wf_plugin_act_error', '', 'yes'),
(177, 'duplicator_settings', 'a:10:{s:7:"version";s:5:"1.1.6";s:18:"uninstall_settings";b:1;s:15:"uninstall_files";b:1;s:16:"uninstall_tables";b:1;s:13:"package_debug";b:0;s:17:"package_mysqldump";b:0;s:22:"package_mysqldump_path";s:0:"";s:24:"package_phpdump_qrylimit";s:3:"100";s:17:"package_zip_flush";b:0;s:20:"storage_htaccess_off";b:0;}', 'yes'),
(178, 'duplicator_version_plugin', '1.1.6', 'yes'),
(179, 'duplicator_ui_view_state', 'a:3:{s:22:"dup-pack-storage-panel";s:1:"1";s:22:"dup-pack-archive-panel";s:1:"0";s:24:"dup-pack-installer-panel";s:1:"0";}', 'yes'),
(180, 'duplicator_package_active', 'O:11:"DUP_Package":21:{s:2:"ID";N;s:4:"Name";s:18:"20160530_wordpress";s:4:"Hash";s:29:"574c3a248902f9188160530130332";s:8:"NameHash";s:48:"20160530_wordpress_574c3a248902f9188160530130332";s:7:"Version";s:5:"1.1.6";s:9:"VersionWP";s:5:"4.5.2";s:9:"VersionDB";s:20:"5.5.37-0+wheezy1-log";s:10:"VersionPHP";s:16:"5.4.4-14+deb7u10";s:4:"Type";i:0;s:5:"Notes";s:0:"";s:9:"StorePath";s:44:"/var/www/project/src/public/wp-snapshots/tmp";s:8:"StoreURL";s:36:"http://www.project.dev/wp-snapshots/";s:8:"ScanFile";s:58:"20160530_wordpress_574c3a248902f9188160530130332_scan.json";s:7:"Runtime";N;s:7:"ExeSize";N;s:7:"ZipSize";N;s:6:"Status";N;s:6:"WPUser";N;s:7:"Archive";O:11:"DUP_Archive":13:{s:10:"FilterDirs";s:0:"";s:10:"FilterExts";s:0:"";s:13:"FilterDirsAll";a:0:{}s:13:"FilterExtsAll";a:0:{}s:8:"FilterOn";i:0;s:4:"File";N;s:6:"Format";s:3:"ZIP";s:7:"PackDir";s:27:"/var/www/project/src/public";s:4:"Size";i:0;s:4:"Dirs";a:0:{}s:5:"Files";a:0:{}s:10:"FilterInfo";O:23:"DUP_Archive_Filter_Info":6:{s:4:"Dirs";O:34:"DUP_Archive_Filter_Scope_Directory":4:{s:7:"Warning";a:0:{}s:10:"Unreadable";a:0:{}s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:5:"Files";O:29:"DUP_Archive_Filter_Scope_File":5:{s:4:"Size";a:0:{}s:7:"Warning";a:0:{}s:10:"Unreadable";a:0:{}s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:4:"Exts";O:29:"DUP_Archive_Filter_Scope_Base":2:{s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:9:"UDirCount";i:0;s:10:"UFileCount";i:0;s:9:"UExtCount";i:0;}s:10:"\0*\0Package";O:11:"DUP_Package":21:{s:2:"ID";N;s:4:"Name";s:18:"20160530_wordpress";s:4:"Hash";s:29:"574c3a248902f9188160530130332";s:8:"NameHash";s:48:"20160530_wordpress_574c3a248902f9188160530130332";s:7:"Version";s:5:"1.1.6";s:9:"VersionWP";s:5:"4.5.2";s:9:"VersionDB";s:20:"5.5.37-0+wheezy1-log";s:10:"VersionPHP";s:16:"5.4.4-14+deb7u10";s:4:"Type";i:0;s:5:"Notes";s:0:"";s:9:"StorePath";s:44:"/var/www/project/src/public/wp-snapshots/tmp";s:8:"StoreURL";s:36:"http://www.project.dev/wp-snapshots/";s:8:"ScanFile";N;s:7:"Runtime";N;s:7:"ExeSize";N;s:7:"ZipSize";N;s:6:"Status";N;s:6:"WPUser";N;s:7:"Archive";r:20;s:9:"Installer";O:13:"DUP_Installer":12:{s:4:"File";N;s:4:"Size";i:0;s:10:"OptsDBHost";s:0:"";s:10:"OptsDBPort";s:0:"";s:10:"OptsDBName";s:0:"";s:10:"OptsDBUser";s:0:"";s:12:"OptsSSLAdmin";i:0;s:12:"OptsSSLLogin";i:0;s:11:"OptsCacheWP";i:0;s:13:"OptsCachePath";i:0;s:10:"OptsURLNew";s:0:"";s:10:"\0*\0Package";r:50;}s:8:"Database";O:12:"DUP_Database":12:{s:4:"Type";s:5:"MySQL";s:4:"Size";N;s:4:"File";N;s:4:"Path";N;s:12:"FilterTables";s:0:"";s:8:"FilterOn";i:0;s:4:"Name";N;s:10:"Compatible";s:0:"";s:10:"\0*\0Package";r:50;s:25:"\0DUP_Database\0dbStorePath";N;s:23:"\0DUP_Database\0EOFMarker";s:0:"";s:26:"\0DUP_Database\0networkFlush";b:0;}}}s:9:"Installer";r:70;s:8:"Database";r:83;}', 'yes'),
(221, 'current_theme', 'Smpl Skeleton', 'yes'),
(222, 'theme_mods_smpl-skeleton', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:3;}s:16:"background_image";s:63:"http://www.project.dev/wp-content/uploads/2016/06/visu_2000.jpg";}', 'yes'),
(223, 'theme_switched', '', 'yes'),
(236, '_transient_timeout_plugin_slugs', '1464956982', 'no'),
(237, '_transient_plugin_slugs', 'a:4:{i:0;s:25:"duplicator/duplicator.php";i:1;s:39:"contact-form-lite/easy-contact-form.php";i:2;s:21:"polylang/polylang.php";i:3;s:23:"wordfence/wordfence.php";}', 'no'),
(247, 'cfw_contact_form_widget_options', 'a:8:{s:8:"cfw_name";s:17:"Let''s Get Started";s:9:"cfw_email";s:16:"user@example.com";s:13:"cfw_marginTop";s:3:"100";s:13:"cfw_alignment";s:4:"left";s:9:"cfw_width";s:3:"350";s:10:"cfw_height";s:3:"450";s:19:"cfw_success_message";s:45:"Thank you for your message. It has been sent.";s:17:"cfw_error_message";s:42:"Mail was not sent. Please try again later.";}', 'yes'),
(251, 'wr_contactform_do_activation_redirect', 'No', 'yes'),
(260, 'ecf-settings-automatic_update', 'active', 'yes'),
(262, 'widget_ecf-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(265, '_transient_timeout_ecf_lite_whats_new', '1464783134', 'no'),
(266, '_transient_ecf_lite_whats_new', '<div style="" class="ecf-container-cnt">\n				<h3 class="customh3">Hurry up! Get Contact Form Pro with just $21</h3>\n				<div class="feature-section">\n				<div class="content-wrap"><p><img class="alignleft" src="http://cdn.ghozylab.netdna-cdn.com/images/feeds/limited-time-offer.png" alt="" width="150" height="150" /><em><strong>Hurry up!</strong></em> Get Contact Form Pro with just $21. This Special Offer available until <span class="mark_important">June 05, 2016</span> and will goes up to normal price $29.</p>\n<p>Just click button below to purchase :</p>\n<p>&nbsp;</p>\n<p><a class="ecf-button-blue" title="Click here to Order" href="https://secure.ghozylab.com/checkout/?edd_action=add_to_cart&amp;download_id=25435&amp;edd_options[price_id]=2&amp;discount=FORM-PROMO" target="_blank">GET IT NOW !</a>   <a class="ecf-button-orange" title="Click here to Order" href="http://demo.ghozylab.com/plugins/easy-contact-form-plugin/" target="_blank">VIEW DEMO</a></p>\n</div>\n				</div>\n				<p class="date-news">Published on 2015-09-15</p>\n			</div><div style="" class="ecf-container-cnt">\n				<h3 class="customh3">Amazing Pro Version</h3>\n				<div class="feature-section">\n				<div class="content-wrap"><p><a href="http://demo.ghozylab.com/plugins/easy-contact-form-plugin/" target="_blank"><img class="alignnone" src="http://cdn.ghozylab.netdna-cdn.com/images/feeds/form_next_level_banner.png" alt="" width="877" height="264" /></a></p>\n</div>\n				</div>\n				<p class="date-news">Published on 2016-01-06</p>\n			</div><div style="" class="ecf-container-cnt">\n				<h3 class="customh3">Earn EXTRA MONEY!</h3>\n				<div class="feature-section">\n				<div class="content-wrap"><p><img class="alignleft size-full wp-image-47" src="http://cdn.ghozylab.netdna-cdn.com/images/feeds/earn-dollar.png" alt="earn-dollar" width="150" height="150" />The GhozyLab Partner Program is the perfect opportunity for existing customers to earn credit towards their account by simply referring friends, family or others to GhozyLab. This quickly adds up to hundreds or even thousands of dollars!</p>\n<p>Once you sign up to the GhozyLab Partner Program, you will receive a special username and password to login to the secure affiliate area of our Web site. This area will provide you with a custom referral link that you can provide to friends, family and Web site visitors.</p>\n<p>To get started, simply register for the partner program. You may choose to add a banner or button to your Web site that directs visitors to your custom affiliate link, or you may choose to spread the link to friends and family via email. Either way, every validated sale generated from your link will result in a payout directly to you. GhozyLab will of course completely manage the client – all you have to do is send them to us!</p>\n<p>&nbsp;</p>\n<p><a class="ecf-button-blue" href="https://secure.ghozylab.com/affiliate-area/" target="_blank">JOIN GHOZYLAB AFFILIATE PROGRAM</a></p>\n</div>\n				</div>\n				<p class="date-news">Published on 2015-06-29</p>\n			</div><div style="" class="ecf-container-cnt">\n				<h3 class="customh3">New Addon Released ( Campaign Monitor )</h3>\n				<div class="feature-section">\n				<div class="content-wrap"><p><img class="alignleft size-full wp-image-71" src="http://cdn.ghozylab.netdna-cdn.com/images/feeds/campaignmonitor-addon.png" alt="campaignmonitor-addon" width="150" height="150" />The Campaign Monitor addon allows you to quickly create newsletter signup forms for your Campaign Monitor account using the power and flexibility that Easy Contact Form Lite provides :</p>\n<ul style="margin-left: 190px; list-style-type: circle;">\n<li>Unlimited signup forms</li>\n<li>Multiple Getresponse subscriptions per form</li>\n<li>Each form can subscribe users to a different list</li>\n<li>Sends Email, First Name, &amp; Last Name fields to your list</li>\n</ul>\n<p>This addon using API integration with mailing services so it will ensure all your client data will delivered faster and safer. Enjoy :)</p>\n</div>\n				</div>\n				<p class="date-news">Published on 2015-07-04</p>\n			</div><div style="" class="ecf-container-cnt">\n				<h3 class="customh3">New Addon Released ( Getresponse )</h3>\n				<div class="feature-section">\n				<div class="content-wrap"><p><img class="alignleft size-full wp-image-71" src="http://cdn.ghozylab.netdna-cdn.com/images/feeds/getresponse-addon.png" alt="getresponse-addon" width="150" height="150" />The Getresponse addon allows you to quickly create newsletter signup forms for your Getresponse account using the power and flexibility that Easy Contact Form Lite provides :</p>\n<ul style="margin-left: 190px; list-style-type: circle;">\n<li>Unlimited signup forms</li>\n<li>Multiple Getresponse subscriptions per form</li>\n<li>Each form can subscribe users to a different list</li>\n</ul>\n<p>This addon using API integration with mailing services so it will ensure all your client data will delivered faster and safer. Enjoy :)</p>\n</div>\n				</div>\n				<p class="date-news">Published on 2015-07-04</p>\n			</div><div style="" class="ecf-container-cnt">\n				<h3 class="customh3">New Addon Released ( Mad MiMi )</h3>\n				<div class="feature-section">\n				<div class="content-wrap"><p><img class="alignleft size-full wp-image-71" src="http://cdn.ghozylab.netdna-cdn.com/images/feeds/madmimi-addon.png" alt="madmimi-addon" width="150" height="150" />The Mad Mimi addon allows you to quickly create newsletter signup forms for your Mad Mimi account using the power and flexibility that Easy Contact Form Lite provides :</p>\n<ul style="margin-left: 190px; list-style-type: circle;">\n<li>Unlimited signup forms</li>\n<li>Multiple Mad Mimi subscriptions per form</li>\n<li>Each form can subscribe users to a different list</li>\n</ul>\n<p>This addon using API integration with mailing services so it will ensure all your client data will delivered faster and safer. Enjoy :)</p>\n</div>\n				</div>\n				<p class="date-news">Published on 2015-07-03</p>\n			</div><div style="" class="ecf-container-cnt">\n				<h3 class="customh3">New Addon Released ( Aweber )</h3>\n				<div class="feature-section">\n				<div class="content-wrap"><p><img class="alignleft size-full wp-image-71" src="http://cdn.ghozylab.netdna-cdn.com/images/feeds/aweber-addon1.png" alt="aweber-addon" width="150" height="150" />The AWeber addon allows you to quickly create newsletter signup forms for your AWeber account using the power and flexibility that Easy Contact Form Pro provides :</p>\n<ul style="margin-left: 190px; list-style-type: circle;">\n<li>Unlimited signup forms</li>\n<li>Multiple AWeber subscriptions per form</li>\n<li>Add subscribers to Lists in AWeber</li>\n</ul>\n<p>This addon using API integration with mailing services so it will ensure all your client data will delivered faster and safer. Enjoy :)</p>\n</div>\n				</div>\n				<p class="date-news">Published on 2015-07-03</p>\n			</div><div style="" class="ecf-container-cnt">\n				<h3 class="customh3">New Addon Released ( MailChimp )</h3>\n				<div class="feature-section">\n				<div class="content-wrap"><p><em><img class="alignleft size-full wp-image-65" src="http://cdn.ghozylab.netdna-cdn.com/images/feeds/mailchimp-logo.png" alt="mailchimp-logo" width="150" height="150" /></em></p>\n<p>The MailChimp addon allows you to quickly create newsletter signup forms for your MailChimp account using the power and flexibility that Easy Contact Form Lite provides :</p>\n<ul style="margin-left: 190px; list-style-type: circle;">\n<li>Unlimited signup forms</li>\n<li>Multiple MailChimp subscriptions per form</li>\n<li>Enable/disable double opt-in per form</li>\n<li>Add subscribers to Lists in MailChimp</li>\n</ul>\n<p>This addon using API integration with mailing services so it will ensure all your client data will delivered faster and safer. Enjoy :)</p>\n</div>\n				</div>\n				<p class="date-news">Published on 2015-07-03</p>\n			</div><div style="" class="ecf-container-cnt">\n				<h3 class="customh3">New Addon Released ( Form Captcha )</h3>\n				<div class="feature-section">\n				<div class="content-wrap"><p><img class="alignleft size-full wp-image-59" src="http://cdn.ghozylab.netdna-cdn.com/images/feeds/no-spam-addon.png" alt="no-spam-addon" width="150" height="150" /><em>Form Captcha</em> is a addon that protects your form against bots by generating and grading tests that humans can pass but current computer programs cannot.</p>\n<p>The purpose of the <em>Form Captcha</em> addon is to block form submissions by spam-bots, which are automated scripts that post spam content everywhere they can. <em>Form Captcha</em> addon includes several options which allow you to add a challenge to virtually every form on the website.</p>\n<p>With this addon you can select the following Captcha type :</p>\n<ul style="margin-left: 30px; list-style-type: circle;">\n<li><em>New reCAPTCHA</em> : To use this type you need to register first <a href="https://www.google.com/recaptcha/admin" target="_blank">here</a></li>\n<li><em>Old reCAPTCHA</em> : To use this type you need to register first <a href="https://www.google.com/recaptcha/admin" target="_blank">here</a></li>\n<li><em>Simple CAPTCHA</em></li>\n</ul>\n<p><span style="text-decoration: underline;">This addon requires Contact Form Lite version <em>1.0.15</em> and above.</span></p>\n</div>\n				</div>\n				<p class="date-news">Published on 2015-07-01</p>\n			</div><style>.content-wrap img{ padding: 0 10px 10px 0; } .ecf-button-blue {\n  background: #3498db;\n  background-image: -webkit-linear-gradient(top, #3498db, #2b8ecc);\n  background-image: -moz-linear-gradient(top, #3498db, #2b8ecc);\n  background-image: -ms-linear-gradient(top, #3498db, #2b8ecc);\n  background-image: -o-linear-gradient(top, #3498db, #2b8ecc);\n  background-image: linear-gradient(to bottom, #3498db, #2b8ecc);\n  -webkit-border-radius: 2;\n  -moz-border-radius: 2;\n  border-radius: 2px;\n  font-family: Arial;\n  color: #ffffff;\n  font-size: 20px;\n  padding: 10px 20px 10px 20px;\n  text-decoration: none;\n}\n\n.ecf-button-blue:hover {\n  background: #3aa4e6;\n  background-image: -webkit-linear-gradient(top, #3aa4e6, #2c8ecf);\n  background-image: -moz-linear-gradient(top, #3aa4e6, #2c8ecf);\n  background-image: -ms-linear-gradient(top, #3aa4e6, #2c8ecf);\n  background-image: -o-linear-gradient(top, #3aa4e6, #2c8ecf);\n  background-image: linear-gradient(to bottom, #3aa4e6, #2c8ecf);\n  text-decoration: none;\n  color: #ffffff !important;\n}\n\n.ecf-button-red {\n    background: #F65751 linear-gradient(to bottom, #FF7373, #B43232) repeat scroll 0% 0%;\n    border-radius: 2px;\n    font-family: Arial;\n    color: #FFF;\n    font-size: 20px;\n    padding: 10px 20px;\n    text-decoration: none;\n}\n\n.ecf-button-red:hover {\n  background: #B43232;\n  background-image: -webkit-linear-gradient(top, #B43232, #FF7373);\n  background-image: -moz-linear-gradient(top, #B43232, #FF7373);\n  background-image: -ms-linear-gradient(top, #B43232, #FF7373);\n  background-image: -o-linear-gradient(top, #B43232, #FF7373);\n  background-image: linear-gradient(to bottom, #B43232, #FF7373);\n  text-decoration: none;\n  color: #ffffff !important;\n}\n\n.ecf-button-orange {\n  background: #e39332;\n  background-image: -webkit-linear-gradient(top, #e39332, #c9802c);\n  background-image: -moz-linear-gradient(top, #e39332, #c9802c);\n  background-image: -ms-linear-gradient(top, #e39332, #c9802c);\n  background-image: -o-linear-gradient(top, #e39332, #c9802c);\n  background-image: linear-gradient(to bottom, #e39332, #c9802c);\n  -webkit-border-radius: 2;\n  -moz-border-radius: 2;\n  border-radius: 2px;\n  font-family: Arial;\n  color: #ffffff;\n  font-size: 20px;\n  padding: 10px 20px 10px 20px;\n  text-decoration: none;\n  color: #ffffff !important;\n}\n\n.ecf-button-orange:hover {\n  background: #e69a43;\n  background-image: -webkit-linear-gradient(top, #e69a43, #db8b30);\n  background-image: -moz-linear-gradient(top, #e69a43, #db8b30);\n  background-image: -ms-linear-gradient(top, #e69a43, #db8b30);\n  background-image: -o-linear-gradient(top, #e69a43, #db8b30);\n  background-image: linear-gradient(to bottom, #e69a43, #db8b30);\n  text-decoration: none;\n}\n\n.ghozy-blink {\n    outline:none;\n    text-decoration: none;\n    -webkit-animation: blink .75s linear infinite;\n    -moz-animation: blink .75s linear infinite;\n    -ms-animation: blink .75s linear infinite;\n    -o-animation: blink .75s linear infinite;\n    animation: blink .75s linear infinite;\n}\n@-webkit-keyframes blink {\n    0% {\n        opacity: 1;\n    }\n    50% {\n        opacity: 1;\n    }\n    50.01% {\n        opacity: 0;\n    }\n    100% {\n\n        opacity: 0;\n    }\n}\n\n@-moz-keyframes blink {\n    0% {\n        opacity: 1;\n    }\n    50% {\n        opacity: 1;\n    }\n    50.01% {\n        opacity: 0;\n    }\n    100% {\n        opacity: 0;\n    }\n}\n@keyframes blink {\n    0% {\n        opacity: 1;\n    }\n    50% {\n        opacity: 1;\n    }\n    50.01% {\n        opacity: 0;\n    }\n    100% {\n        opacity: 0;\n    }\n}\n\n.ghozy-blink:hover {\n    -webkit-animation:none;\n    -moz-animation: none;\n    animation: none;\n}\n\n.date-news {font-size: 12px !important; font-style: italic; color: #969595 !important;margin-bottom: 30px;padding-bottom: 7px;border-bottom: 1px dashed #CCC;}\n\n.mark_important {padding:2px 9px 2px 9px;background-color: #E74C3C;margin-left:1px;color:#fff;font-size:14px !important;border-radius:9px;-moz-border-radius: 9px;-webkit-border-radius: 9px;}\n\n</style>', 'no'),
(272, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:64:"http://downloads.wordpress.org/release/fr_FR/wordpress-4.5.2.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:64:"http://downloads.wordpress.org/release/fr_FR/wordpress-4.5.2.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.5.2";s:7:"version";s:5:"4.5.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1464876764;s:15:"version_checked";s:5:"4.5.2";s:12:"translations";a:0:{}}', 'yes'),
(276, 'theme_mods_responsiveboat', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:13:"zerif_address";s:40:"6 Place Charles Hernu\n69100 Villeurbanne";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1464860312;s:4:"data";a:9:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:15:"sidebar-aboutus";a:0:{}s:20:"zerif-sidebar-footer";a:0:{}s:22:"zerif-sidebar-footer-2";N;s:22:"zerif-sidebar-footer-3";N;s:16:"sidebar-ourfocus";a:4:{i:0;s:17:"ctup-ads-widget-1";i:1;s:17:"ctup-ads-widget-2";i:2;s:17:"ctup-ads-widget-3";i:3;s:17:"ctup-ads-widget-4";}s:20:"sidebar-testimonials";a:3:{i:0;s:21:"zerif_testim-widget-1";i:1;s:21:"zerif_testim-widget-2";i:2;s:21:"zerif_testim-widget-3";}s:15:"sidebar-ourteam";a:4:{i:0;s:19:"zerif_team-widget-1";i:1;s:19:"zerif_team-widget-2";i:2;s:19:"zerif_team-widget-3";i:3;s:19:"zerif_team-widget-4";}}}}', 'yes'),
(277, 'widget_ctup-ads-widget', 'a:5:{i:1;a:4:{s:5:"title";s:15:"PARALLAX EFFECT";s:4:"text";s:163:"Create memorable pages with smooth parallax effects that everyone loves. Also, use our lightweight content slider offering you smooth and great-looking animations.";s:4:"link";s:1:"#";s:9:"image_uri";s:71:"http://www.project.dev/wp-content/themes/zerif-lite/images/parallax.png";}i:2;a:4:{s:5:"title";s:11:"WOOCOMMERCE";s:4:"text";s:166:"Build a front page for your WooCommerce store in a matter of minutes. The neat and clean presentation will help your sales and make your store accessible to everyone.";s:4:"link";s:1:"#";s:9:"image_uri";s:66:"http://www.project.dev/wp-content/themes/zerif-lite/images/woo.png";}i:3;a:4:{s:5:"title";s:21:"CUSTOM CONTENT BLOCKS";s:4:"text";s:164:"Showcase your team, products, clients, about info, testimonials, latest posts from the blog, contact form, additional calls to action. Everything translation ready.";s:4:"link";s:1:"#";s:9:"image_uri";s:66:"http://www.project.dev/wp-content/themes/zerif-lite/images/ccc.png";}i:4;a:4:{s:5:"title";s:24:"GO PRO FOR MORE FEATURES";s:4:"text";s:186:"Get new content blocks: pricing table, Google Maps, and more. Change the sections order, display each block exactly where you need it, customize the blocks with whatever colors you wish.";s:4:"link";s:1:"#";s:9:"image_uri";s:70:"http://www.project.dev/wp-content/themes/zerif-lite/images/ti-logo.png";}s:12:"_multiwidget";i:1;}', 'yes'),
(278, 'widget_zerif_testim-widget', 'a:4:{i:1;a:3:{s:5:"title";s:10:"Dana Lorem";s:4:"text";s:242:"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur nec sem vel sapien venenatis mattis non vitae augue. Nullam congue commodo lorem vitae facilisis. Suspendisse malesuada id turpis interdum dictum.";s:9:"image_uri";s:75:"http://www.project.dev/wp-content/themes/zerif-lite/images/testimonial1.jpg";}i:2;a:3:{s:5:"title";s:13:"Linda Guthrie";s:4:"text";s:242:"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur nec sem vel sapien venenatis mattis non vitae augue. Nullam congue commodo lorem vitae facilisis. Suspendisse malesuada id turpis interdum dictum.";s:9:"image_uri";s:75:"http://www.project.dev/wp-content/themes/zerif-lite/images/testimonial2.jpg";}i:3;a:3:{s:5:"title";s:13:"Cynthia Henry";s:4:"text";s:242:"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur nec sem vel sapien venenatis mattis non vitae augue. Nullam congue commodo lorem vitae facilisis. Suspendisse malesuada id turpis interdum dictum.";s:9:"image_uri";s:75:"http://www.project.dev/wp-content/themes/zerif-lite/images/testimonial3.jpg";}s:12:"_multiwidget";i:1;}', 'yes'),
(279, 'widget_zerif_clients-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(280, 'widget_zerif_team-widget', 'a:5:{i:1;a:9:{s:4:"name";s:14:"ASHLEY SIMMONS";s:8:"position";s:15:"Project Manager";s:11:"description";s:157:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc dapibus, eros at accumsan auctor, felis eros condimentum quam, non porttitor est urna vel neque";s:7:"fb_link";s:1:"#";s:7:"tw_link";s:1:"#";s:7:"bh_link";s:1:"#";s:7:"db_link";s:1:"#";s:7:"ln_link";s:1:"#";s:9:"image_uri";s:68:"http://www.project.dev/wp-content/themes/zerif-lite/images/team1.png";}i:2;a:9:{s:4:"name";s:13:"TIMOTHY SPRAY";s:8:"position";s:12:"Art Director";s:11:"description";s:157:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc dapibus, eros at accumsan auctor, felis eros condimentum quam, non porttitor est urna vel neque";s:7:"fb_link";s:1:"#";s:7:"tw_link";s:1:"#";s:7:"bh_link";s:1:"#";s:7:"db_link";s:1:"#";s:7:"ln_link";s:1:"#";s:9:"image_uri";s:68:"http://www.project.dev/wp-content/themes/zerif-lite/images/team2.png";}i:3;a:9:{s:4:"name";s:12:"TONYA GARCIA";s:8:"position";s:15:"Account Manager";s:11:"description";s:157:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc dapibus, eros at accumsan auctor, felis eros condimentum quam, non porttitor est urna vel neque";s:7:"fb_link";s:1:"#";s:7:"tw_link";s:1:"#";s:7:"bh_link";s:1:"#";s:7:"db_link";s:1:"#";s:7:"ln_link";s:1:"#";s:9:"image_uri";s:68:"http://www.project.dev/wp-content/themes/zerif-lite/images/team3.png";}i:4;a:9:{s:4:"name";s:10:"JASON LANE";s:8:"position";s:20:"Business Development";s:11:"description";s:157:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc dapibus, eros at accumsan auctor, felis eros condimentum quam, non porttitor est urna vel neque";s:7:"fb_link";s:1:"#";s:7:"tw_link";s:1:"#";s:7:"bh_link";s:1:"#";s:7:"db_link";s:1:"#";s:7:"ln_link";s:1:"#";s:9:"image_uri";s:68:"http://www.project.dev/wp-content/themes/zerif-lite/images/team4.png";}s:12:"_multiwidget";i:1;}', 'yes'),
(288, '_transient_timeout_feed_66a70e9599b658d5cc038e8074597e7c', '1464901788', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(289, '_transient_feed_66a70e9599b658d5cc038e8074597e7c', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"WordPress Francophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:27:"http://www.wordpress-fr.net";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:70:"La communauté francophone autour du CMS WordPress et son écosystème";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 01 Jun 2016 13:13:20 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"fr-FR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:27:"http://wordpress.org/?v=4.3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:31:"En route vers le nouveau site !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/jnTdGpX49Y0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:81:"http://www.wordpress-fr.net/2016/06/01/volontaires-chantiers-site-forum/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 01 Jun 2016 13:13:20 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.wordpress-fr.net/?p=7579";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:329:"Lors de l’article du 23 mai, nous avons proposé à celles et ceux qui le souhaitaient de participer à la refonte du site et du forum de wordpress-fr.net. Une quinzaine de volontaires ont répondu à notre appel, nous les en remercions ! Les participants ont reçu les indications pour nous rejoindre sur le slack de [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Willy Bahuaud";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1637:"<p>Lors de l’article du 23 mai, nous avons proposé à celles et ceux qui le souhaitaient de participer à la refonte du site et du forum de wordpress-fr.net. Une quinzaine de volontaires ont répondu à notre appel, nous les en remercions !</p>\n<p>Les participants ont reçu les indications pour nous rejoindre sur le slack de l’association et deux groupes de travail ont donc été constitués : un pour le forum, et l’autre pour le site web.</p>\n<p>L’objectif est maintenant de mener à bien la réalisation de ces deux projets. Nous vous donnerons des nouvelles de leurs progressions vers fin juin.</p>\n<p>À très bientôt alors !</p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=jnTdGpX49Y0:EzCr7RZps1k:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=jnTdGpX49Y0:EzCr7RZps1k:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=jnTdGpX49Y0:EzCr7RZps1k:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=jnTdGpX49Y0:EzCr7RZps1k:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=jnTdGpX49Y0:EzCr7RZps1k:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=jnTdGpX49Y0:EzCr7RZps1k:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/jnTdGpX49Y0" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:77:"http://www.wordpress-fr.net/2016/06/01/volontaires-chantiers-site-forum/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:72:"http://www.wordpress-fr.net/2016/06/01/volontaires-chantiers-site-forum/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Des nouvelles de WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/83d0IWEmxkM/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:70:"http://www.wordpress-fr.net/2016/05/23/des-nouvelles-de-wpfr/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 May 2016 10:43:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.wordpress-fr.net/?p=7561";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:375:"Le 21 décembre dernier nous avions le plaisir de vous faire partager des informations à propos du renouveau de l&#8217;association WordPress Francophone. Ces derniers mois ont été l&#8217;occasion de tout remettre à plat et nous souhaitions vous donner des nouvelles sur les différents chantiers en cours. C&#8217;est également le moment de faire appel à la [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:6880:"<p>Le 21 décembre dernier nous avions le plaisir de vous faire partager des informations à propos du renouveau de l&rsquo;association WordPress Francophone. Ces derniers mois ont été l&rsquo;occasion de tout remettre à plat et nous souhaitions vous donner des nouvelles sur les différents chantiers en cours. C&rsquo;est également le moment de faire appel à la communauté pour constituer des groupes de travail sur les deux chantiers prioritaires : la refonte du site et l&rsquo;avenir du forum.</p>\n<p><span id="more-7561"></span></p>\n<h2>Refonte du site</h2>\n<p>Comme vous le savez tous, le site actuel de l&rsquo;association est dépassé, tant en terme d&rsquo;aspect, qu&rsquo;en terme de fonctionnalités. Au fil du temps le site est devenu compliqué à maintenir &#8211; pour ne pas dire impossible, et les fonctionnalités qu&rsquo;ils proposent ne répondent plus aux besoins réels de la communauté. Il était donc plus que temps d&rsquo;entamer la refonte !</p>\n<p>Nous avons d&rsquo;ores et déjà définis les objectifs du futur site, développé de nouvelles fonctionnalités, et ébauché l&rsquo;arborescence.</p>\n<p>Le site en cours de développement :</p>\n<ul>\n<li>Permettra aux membres de gérer leurs adhésions en ligne ;</li>\n<li>Proposera un annuaire des communautés et des événements ;</li>\n<li>Donnera la possibilité de poster / répondre à des offres d&#8217;emploi ;</li>\n<li>Indiquera de manière claire comment trouver de l&rsquo;aide et comment contribuer à l&rsquo;écosystème WordPress.</li>\n</ul>\n<p>Le site va aussi changer de nom et d&rsquo;URL afin de respecter <a href="https://wordpress.org/about/domains/" target="_blank">les règles de la fondation WordPress concernant la trademark</a>. Vous nous retrouverez bientôt sur <a href="http://wpfr.net" target="_blank">wpfr.net</a> !</p>\n<p>Le chantier est maintenant assez avancé pour proposer à ceux qui le souhaitent de s&rsquo;investir au sein d&rsquo;un groupe de travail dont l&rsquo;objectif est la finalisation de ce nouveau site. Nous cherchons des volontaires :</p>\n<ul>\n<li>3 personnes pour la rédaction des contenus du futur site (les contenus existants sont déjà réimportés sur le site de développement) ;</li>\n<li>2 web-designers pour intervenir sur la charte graphique de l&rsquo;association, et sur la maquette du site.</li>\n</ul>\n<p>Si vous êtes tentés par l&rsquo;aventure, <strong>écrivez-nous à contact[at]wpfr.net</strong>.</p>\n<h2>L&rsquo;avenir du forum</h2>\n<p>Le forum d&rsquo;entraide est la section du site destinée à l&rsquo;accompagnement des utilisateurs francophone du CMS. Si vous rencontrez un soucis dans l&rsquo;utilisation de WordPress, c&rsquo;est un des endroits ou vous trouverez le plus facilement de l&rsquo;aide. Les modérateurs bénévoles y font d&rsquo;ailleurs un travail formidable qu&rsquo;il convient de remercier !</p>\n<p>Malheureusement, l&rsquo;outil qui fait tourner ce forum est lui aussi vieillissant &#8211; il s&rsquo;agit de PunBB. Lors de la refonte <strong>nous devons basculer vers une solution plus moderne</strong>. Le forum existant sera mis en « lecture seule » afin de toujours pouvoir relire les anciens sujets, mais vous ne pourrez plus déposer, ni répondre aux sujets existants.</p>\n<p>Pour le choix, la mise en place et le suivi de cette nouvelle solution, nous souhaitons également constituer un groupe de travail. <strong>Nous invitons celles et ceux qui souhaitent s&rsquo;investir sur la refonte du forum d&rsquo;entraide à nous écrire sur contact[at]wpfr.net</strong>.</p>\n<p>Concernant le débat sur les différents outils disponibles à ce jour pour obtenir du support (forum, Facebook, Twitter, Slack, etc.), nous considérons qu&rsquo;il n&rsquo;a pas lieu d&rsquo;être. C&rsquo;est à chacun d&rsquo;opter pour l&rsquo;outil qui lui convient le mieux avec ses avantages et ses inconvénients.</p>\n<h2>Changement de trésorier</h2>\n<p>Émilie Lebrun a récemment souhaité démissionner du bureau de l&rsquo;association ; c&rsquo;est donc Willy Bahuaud qui a pris la place de trésorier. Le bureau est donc maintenant constitué de Benoît Catherineau (secrétaire), Willy Bahuaud (trésorier) et Aurélien Denis (président).</p>\n<p>Les objectifs de cette équipe reste inchangés <strong>: mettre en place les outils permettant à tous ceux qui le souhaitent, particuliers et entreprises, d&rsquo;adhérer à l&rsquo;association</strong>.</p>\n<p>Nous sommes dans une année de transition tant sur le plan administratif que technique, cela prend du temps mais nous y travaillons.</p>\n<h2>Coup d&rsquo;œil sur le planning</h2>\n<p>Au niveau de la progression des différentes actions, il est important de bien comprendre l&rsquo;imbrication des actions à mener :</p>\n<ul>\n<li>Les changements de statuts et de siège social sont quasiment finalisés, nous attendons la validation officielle de la préfecture ;</li>\n<li>Le transfert du compte bancaire sera effectif sous peu, cela dépendait des statuts ;</li>\n<li>Le nom de domaine et surtout l&rsquo;activation du certificat SSL dépendent de l&rsquo;officialisation du nouveau siège ;</li>\n<li>L&rsquo;ouverture de l&rsquo;association à tous dépend de la mise en ligne d&rsquo;un système pour gérer de manière efficace les adhésions / renouvellements d&rsquo;où la mise en place du groupe de travail pour le site Internet ;</li>\n</ul>\n<p>La <strong>date limite pour postuler est fixée au 31 mai 2016</strong>. Un chef de chantier sera choisi pour tenir informé le bureau des évolutions menées et ainsi communiquer de l&rsquo;état d&rsquo;avancement par l&rsquo;intermédiaire de ce blog.</p>\n<p>Nous sommes à votre disposition pour répondre à toutes vos interrogations et nous comptons sur vous pour que demain WPFR soit votre association aux services de chacun d&rsquo;entre vous !</p>\n<p>&nbsp;</p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=83d0IWEmxkM:sWCGB30URXc:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=83d0IWEmxkM:sWCGB30URXc:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=83d0IWEmxkM:sWCGB30URXc:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=83d0IWEmxkM:sWCGB30URXc:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=83d0IWEmxkM:sWCGB30URXc:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=83d0IWEmxkM:sWCGB30URXc:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/83d0IWEmxkM" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:66:"http://www.wordpress-fr.net/2016/05/23/des-nouvelles-de-wpfr/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"28";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:61:"http://www.wordpress-fr.net/2016/05/23/des-nouvelles-de-wpfr/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:8:"WPFR 2.0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/jHn6JESKG5o/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:57:"http://www.wordpress-fr.net/2015/12/21/wpfr-2-0/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 21 Dec 2015 11:00:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.wordpress-fr.net/?p=7516";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:422:"Une nouvelle ère s’ouvre pour l’association WordPress Francophone. Un nouveau bureau est en place avec à sa tête : Émilie Lebrun (trésorière), Benoît Catherineau (secrétaire) et moi-même, Aurélien Denis (président). Cette nouvelle aventure sera marquée par la &#171;&#160;professionnalisation&#160;&#187; de la communauté à tous les niveaux : refonte du site communautaire, mise à jour du site [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:7431:"<div class="page" title="Page 1">\n<div class="section">\n<div class="layoutArea">\n<div class="column">\n<p>Une nouvelle ère s’ouvre pour l’association WordPress Francophone. Un nouveau bureau est en place avec à sa tête : Émilie Lebrun (trésorière), Benoît Catherineau (secrétaire) et moi-même, Aurélien Denis (président).</p>\n<p>Cette nouvelle aventure sera marquée par la &laquo;&nbsp;professionnalisation&nbsp;&raquo; de la communauté à tous les niveaux : refonte du site communautaire, mise à jour du site localisé de WordPress.org, réflexion sur la création de certifications et autres formations diplômantes, ouverture de l’association aux membres&#8230; sont autant de chantiers que nous avons d’ores et déjà lancés en interne.</p>\n<p>Nous avons fait le choix d’adopter une approche par projets qui devront être menés de front pour donner un nouveau visage à la communauté francophone dans les 6 prochains mois. La masse de travail est conséquente, nous en avons conscience et c’est pour cela que toutes les bonnes volontés seront les bienvenues pour nous épauler dans cette mission. Soyez acteur de votre communauté !</p>\n<p>Comment agir ? Cette question revient souvent lors des nombreux échanges que chacun d’entre nous peuvent avoir, aussi bien de manière virtuelle que réelle. Il me semble opportun de décliner les différents chantiers afin que chacun puisse se positionner sur l’un d’eux.</p>\n<h2>La refonte du site WPFR</h2>\n<p>Disons le clairement : les attentes sont fortes, très fortes ! Contenus dépassés, forum obsolète, absence de services communautaires&#8230; Parmi les changements à venir, nous pouvons retenir :</p>\n<ul>\n<li>Changement du nom de domaine pour se mettre en conformité avec les règles établies par Automattic ;</li>\n<li>Changement de serveur pour de meilleures performances ;</li>\n<li>Bascule progressive du blog, de la vitrine et du forum vers le site fr.wordpress.org ;</li>\n<li>Création d’une nouvelle charte graphique ;</li>\n<li>Refonte technique (responsive design, prise en charge des écrans HDPI, etc.) ;</li>\n<li>Remise à plat fonctionnelle pour répondre à la réalité des besoins de la communauté ;</li>\n<li>Nouvelle stratégie de référencement ;</li>\n</ul>\n<p>L’objectif majeur de cette nouvelle version est le suivant : faire en sorte que chaque membre de la communauté puisse accéder à des services qui le concerne : utilisateurs occasionnels ou passionnés, contributeurs actifs ou en quête de contribution, développeurs de thèmes ou d&rsquo;extensions WordPress, animateurs d’associations locales&#8230; ce site sera le vôtre !</p>\n<h2>La mise à jour du site localisé fr.wordpress.org</h2>\n<p>Il s’agit du site officiel sur lequel vous téléchargez l’archive WordPress avec ses packs de traduction française. Pour les connaisseurs, on parle du site « Rosetta » qui fait référence au nom du thème installé sur ce dernier.</p>\n<p>WPFR a en charge la gestion de ce site et dispose d’une certaine latitude dans l’activation de nouvelles fonctionnalités. Vous aurez sans doute remarqué l’apparition des rubriques Thèmes et Extensions ou encore de contenus réécrits sur les différentes pages de présentation.</p>\n<p>Ce travail est en cours de réalisation par l’équipe de traducteurs bénévoles que sont François-Xavier Bénard, Xavier Borderie et Didier Demory.</p>\n</div>\n</div>\n</div>\n</div>\n<div class="page" title="Page 2">\n<div class="section">\n<div class="layoutArea">\n<div class="column">\n<p>A terme, le blog WPFR rejoindra ce site pour vous tenir informé sur les actualités en lien avec WordPress. De même, il est envisagé de migrer le forum sur cet outil pour se positionner au même niveau que le site WordPress.org dans sa version anglophone. Il sera donc possible d’utiliser votre compte WordPress.org sur les 2 sites. C’est là un chantier immense pour lequel il nous faut prendre des décisions qui auront un impact fort tant pour l’utilisateur que pour les administrateurs.</p>\n<h2>La délivrance de certifications / formations diplômantes</h2>\n<p>Un vaste sujet auquel la communauté francophone de WordPress peut répondre. A l’instar de ce que propose déjà d’autres communautés (SEO Camp) ou des acteurs majeurs du Web (Google, Microsoft, etc.), nous pensons qu’il nous faut délivrer des certifications pour les professionnels WordPress.</p>\n<p>Le but est là encore de professionnaliser les acteurs du Web en France afin de permettre une identification simple et efficace des entreprises compétentes sur le marché par les clients. C’est une demande récurrente de par le monde à laquelle Automattic ne peut répondre : le projet WordPress n’appartient pas à cette multinationale, elle ne fait que le soutenir et n’est donc pas légitime pour établir des certifications comme pourrait le faire Google pour ses services.</p>\n<p>En outre, comme le savent les formateurs WordPress, les réformes successives sur la formation professionnelle nécessitent qu’une formation délivre un diplôme. Maxime Bernard-Jacquet est volontaire pour porter les démarches et des synergies avec <a href="http://www.wp-next.fr/" target="_blank">l’association WP-Next</a> sont à élaborer.</p>\n<h2>L’ouverture des adhésions</h2>\n<p>Jusqu’à aujourd’hui l’association WPFR était fermée et non ouverte aux adhésions. Certains d’entre vous ont rempli un formulaire lors des WordCamps Paris et Lyon cette année. Rassurez-vous nous les avons bien conservés et vous serez contactés en priorité pour adhérer en ligne dès lors que le nouveau site sera disponible. Si vous ne l&rsquo;avez pas encore fait, contactez-nous via notre formulaire de contact.</p>\n<p>Ouvrir une association nécessite de savoir où l’on va tous ensemble, de proposer des services&#8230; autant d’aspects qui restent encore à définir précisément.</p>\n<p>Vous l’aurez compris, les 6 prochains mois seront décisifs ! Vous avez désormais la parole dans les commentaires pour nous faire part de vos remarques, vous positionner sur un chantier pour nous aider ou suggérer de nouvelles idées.</p>\n<p>Enfin, je terminerai par remercier chaleureusement tous ceux qui ont porté l&rsquo;association WPFR durant plus d&rsquo;une décennie. Ils se reconnaîtront sans doute : merci !</p>\n<p>Amicalement,<br />\nLe Président.</p>\n</div>\n</div>\n</div>\n</div>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=jHn6JESKG5o:rN9c88LUGi4:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=jHn6JESKG5o:rN9c88LUGi4:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=jHn6JESKG5o:rN9c88LUGi4:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=jHn6JESKG5o:rN9c88LUGi4:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=jHn6JESKG5o:rN9c88LUGi4:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=jHn6JESKG5o:rN9c88LUGi4:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/jHn6JESKG5o" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:53:"http://www.wordpress-fr.net/2015/12/21/wpfr-2-0/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"55";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:48:"http://www.wordpress-fr.net/2015/12/21/wpfr-2-0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:40:"Sortie de WordPress 4.4 « Clifford »";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/tgW8c7dvWys/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:81:"http://www.wordpress-fr.net/2015/12/09/sortie-de-wordpress-4-4-clifford/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 09 Dec 2015 19:22:21 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.wordpress-fr.net/?p=7508";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:401:"La version 4.4 de WordPress, baptisée “Clifford” en honneur au trompettiste de jazz Clifford Brown, est disponible en téléchargement ou en mise à jour via votre tableau de bord WordPress. Les nouvelles fonctionnalités de la 4.4 vous donnent un site plus connecté et au design adaptatif. Clifford introduit également un nouveau thème par défaut : Twenty Sixteen. Présentation [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Xavier";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:6445:"<p>La version 4.4 de WordPress, baptisée “Clifford” en honneur au trompettiste de jazz Clifford Brown, est disponible en téléchargement ou en mise à jour via votre tableau de bord WordPress.</p>\n<p>Les nouvelles fonctionnalités de la 4.4 vous donnent un site plus connecté et au design adaptatif. Clifford introduit également un nouveau thème par défaut : Twenty Sixteen.</p>\n<p><iframe src="https://videopress.com/embed/J44FHXvg?hd=0" width="632" height="354.35838150289015" frameborder="0" allowfullscreen="allowfullscreen"></iframe></p>\n<hr />\n<h2>Présentation de  Twenty Sixteen</h2>\n<p><img class="aligncenter size-large wp-image-7512" src="http://www.wordpress-fr.net/wp-content/uploads/2015/12/ipad-white-desktop-2x-1024x6941-500x339.png" alt="ipad-white-desktop-2x-1024x694" width="500" height="339" /></p>\n<p>Le nouveau thème par défaut, Twenty Sixteen, est une modernisation d’un thème de blog classique.</p>\n<p>Twenty Sixteen a été conçu pour être superbe sur tous les appareils. Avec son design en grille fluide, son en-tête flexible et ses jeux de couleurs joyeux, elle mettre en valeur votre contenu.</p>\n<hr />\n<h2>Images adaptatives</h2>\n<p><img class="aligncenter size-large wp-image-7511" src="http://www.wordpress-fr.net/wp-content/uploads/2015/12/responsive-devices-ipad-2x-500x229.png" alt="responsive-devices-ipad-2x" width="500" height="229" /></p>\n<p>WordPress approche désormais l’affichage des images de manières plus intelligente, utilisant à chaque fois la taille d’image la plus pertinente en fonction de l’appareil utilisé. Vous n’avez rien a changer à votre thème : ça fonctionne, c’est tout.</p>\n<hr />\n<h2>Intégrez votre contenu WordPress</h2>\n<div class="embed-container">\n<p>https://make.wordpress.org/core/2015/10/28/new-embeds-feature-in-wordpress-4-4/</p>\n<p>Vous pouvez désormais insérer vos articles dans d’autres sites, et même dans d’autres sites WordPress. Collez simplement l’adresse du contenu dans l’éditeur, et une prévisualisation s’affichera instantanément, avec titre, extrait, et l’image de Une si vous avez mise une. Vous y trouverez même l’icône de votre site et les liens pour commenter et partager.</p>\n</div>\n<p>En plus de l’insertion de contenu, WordPress 4.4 apporte la reconnaissance de cinq nouveaux fournisseurs oEmbed : Cloudup, Reddit Comments, ReverbNation, Speaker Deck et VideoPress.</p>\n<hr />\n<h2>Sous le capot</h2>\n<p><img class="aligncenter size-large wp-image-7513" src="http://www.wordpress-fr.net/wp-content/uploads/2015/12/banner-1544x500-500x162.jpg" alt="banner-1544x500" width="500" height="162" /></p>\n<h3>Infrastructure de l’API REST</h3>\n<p>L’infrastructure de l’API REST a été intégrée au coeur de WordPress, ouvrant ainsi une nouvelle ère pour le développement avec le logiciel. L’API REST a été conçue pour offrir aux développeurs une manière central de construire et étendre des API RESTful basées sur le socle WordPress.</p>\n<p>L’infrastructure est la première partie d’une mise en place en plusieurs étapes de l’API REST. L’inclusion des points d’accès est prévue pour une prochaine version. Pour avoir un aperçu des principaux points d’accès, et pour obtenir plus d’information sur la manière d’étendre l’API REST, découvrez l’extension officielle <a class="thickbox" href="http://xavier.borderie.net/blog/wp-admin/plugin-install.php?tab=plugin-information&amp;plugin=rest-api&amp;TB_iframe=1&amp;width=600&amp;height=550">WordPress REST API</a>.</p>\n<h3>Méta des termes</h3>\n<p>Les termes disposent désormais de métadonnées, tout comme les articles. Lisez la documentation de <a href="https://developer.wordpress.org/reference/functions/add_term_meta"><code>add_term_meta()</code></a>,<a href="https://developer.wordpress.org/reference/functions/get_term_meta"><code>get_term_meta()</code></a> et <a href="https://developer.wordpress.org/reference/functions/update_term_meta"><code>update_term_meta()</code></a>pour plus d&rsquo;information.</p>\n<h3>Amélioration des requêtes de commentaires</h3>\n<p>Les requêtes de commentaires disposent désormais d’un gestionnaire de cache pour améliorer les performances. Les nouveaux arguments de <code>WP_Comment_Query</code> simplifient la mise en place de requêtes de commentaires robustes.</p>\n<div class="feature-section under-the-hood three-col">\n<div class="col">\n<h3>Objets pour les termes, commentaires et réseaux</h3>\n<p>Les nouveaux objets <code>WP_Term</code>, <code>WP_Comment</code>et <code>WP_Network</code> rendent la gestion par le code des termes, commentaires et réseaux plus prévisible et intuitive.</p>\n<h2>L&rsquo;équipe</h2>\n<p><a class="alignleft" href="https://profiles.wordpress.org/wonderboymusic"><img id="grav-ed0f881acb9dc96bee53e4dc61b5558f-0" class="grav-hashed" src="https://www.gravatar.com/avatar/ed0f881acb9dc96bee53e4dc61b5558f?d=mm&amp;s=180&amp;r=G" alt="Scott Taylor" width="80" height="80" /></a>Cette version a été menée par <a href="http://scotty-t.com/">Scott Taylor</a>, avec l&rsquo;aide de plus de 471 contributeurs &#8212; le plus grand nombre jamais vu pour une nouvelle version de WordPress. Parmi eux, on trouve quelques français : Mathieu Viet, Julio Potier, Nicolas Juen, et tous les traducteurs qui ont donné de leur temps pour s&rsquo;assurer que cette version serait traduite dans les temps. Merci à tous !</p>\n</div>\n</div>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=tgW8c7dvWys:O5SMFkejhIY:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=tgW8c7dvWys:O5SMFkejhIY:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=tgW8c7dvWys:O5SMFkejhIY:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=tgW8c7dvWys:O5SMFkejhIY:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=tgW8c7dvWys:O5SMFkejhIY:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=tgW8c7dvWys:O5SMFkejhIY:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/tgW8c7dvWys" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:77:"http://www.wordpress-fr.net/2015/12/09/sortie-de-wordpress-4-4-clifford/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:72:"http://www.wordpress-fr.net/2015/12/09/sortie-de-wordpress-4-4-clifford/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"WordPress fait tourner 25% du web";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/WIL51xhSWSw/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:81:"http://www.wordpress-fr.net/2015/11/09/wordpress-fait-tourner-25-du-web/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 09 Nov 2015 12:15:20 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.wordpress-fr.net/?p=7491";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:341:"Le nombre tant attendu a été atteint ce week-end : selon le site W3Techs, qui présente de nombreuses statistiques et études chiffrées sur les technologies du web, WordPress est aujourd&#8217;hui utilisé par 25% des sites web &#8212; et pas seulement 1/4 des sites qui ont utilisent un outil de gestion de contenu (CMS), non : [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Xavier";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:5162:"<p>Le nombre tant attendu a été atteint ce week-end : selon le site <a href="http://w3techs.com/">W3Techs</a>, qui présente de nombreuses statistiques et études chiffrées sur les technologies du web, <a href="http://w3techs.com/technologies/history_overview/content_management/all/y">WordPress est aujourd&rsquo;hui utilisé par 25% des sites web</a> &#8212; et pas seulement 1/4 des sites qui ont utilisent un outil de gestion de contenu (CMS), non : 25% de TOUS les sites actuellement en ligne.</p>\n<p><img class="aligncenter wp-image-7492 size-full" src="http://www.wordpress-fr.net/wp-content/uploads/2015/11/wordpress-25pourcent-w3techs-tableau1.png" alt="wordpress-25pourcent-w3techs-tableau1" width="521" height="188" />Le site indique par ailleurs que WordPress a 58,7% de part de marché parmi les sites qui utilisent un CMS, avec l&rsquo;ajout de plus de 1100 sites par jour (dans le top 10 millions des sites).</p>\n<p><img class="aligncenter wp-image-7493 size-full" src="http://www.wordpress-fr.net/wp-content/uploads/2015/11/wordpress-25pourcent-w3techs-tableau2.png" alt="wordpress-25pourcent-w3techs-tableau2" width="509" height="146" /></p>\n<p>C&rsquo;est colossal, et c&rsquo;est le résultat de plusieurs années d&rsquo;amélioration d&rsquo;un projet qui, <a href="http://ma.tt/2015/11/seventy-five-to-go/">comme le rappelle Matt Mullenweg</a>, a commencé <a href="http://zengun.org/weblog/archives/2001/06/post1958/">en juin 2001</a> sous le nom de <a href="http://cafelog.com/">b2/cafelog</a>, dans la chambre du français Michel Valdrighi, alors étudiant sur sa Corse natale (voir <a href="https://wordpress.tv/2012/02/27/les-origines-de-wordpress-la-naissance-de-b2cafelog/">sa conférence sur le sujet au WordCamp Paris 2011</a>).</p>\n<p><img class="aligncenter wp-image-7495 size-full" src="http://www.wordpress-fr.net/wp-content/uploads/2015/11/wordpress-25pourcent-w3techs-graphique1.png" alt="wordpress-25pourcent-w3techs-graphique1" width="765" height="506" /></p>\n<p>Ce qui a commencé comme un script blog personnel utilisé par quelques 3000 personnes au faîte de sa popularité, est aujourd&rsquo;hui l&rsquo;outil choisi par la grande majorité des individus et sociétés quand il s&rsquo;agit de mettre leurs idées et contenus en ligne.</p>\n<p><img class="aligncenter wp-image-7494 size-full" src="http://www.wordpress-fr.net/wp-content/uploads/2015/11/wordpress-25pourcent-w3techs-tableau4.png" alt="wordpress-25pourcent-w3techs-tableau4" width="534" height="228" /></p>\n<p>Matt reprend ensuite : &laquo;&nbsp;Il reste une grosse opportunité à saisir avec les 57% de sites qui n&rsquo;utilisent aucun CMS&nbsp;&raquo;, ou en tout cas aucun d&rsquo;identifiable &#8212; qui pourraient tout aussi bien être des WordPress ou Drupal dont le propriétaire a choisi de cacher son outil. &laquo;&nbsp;Je pense que c&rsquo;est là où nous pouvons avoir une énorme croissance (et je soutiens également tous les autres CMS open-source).&nbsp;&raquo;</p>\n<p><img class="aligncenter size-full wp-image-7496" src="http://www.wordpress-fr.net/wp-content/uploads/2015/11/wordpress-25pourcent-w3techs-tableau3.png" alt="wordpress-25pourcent-w3techs-tableau3" width="469" height="321" /></p>\n<p>À suivre également, <a href="http://trends.builtwith.com/cms/WordPress">les statistiques proposées par Builtwith</a>.</p>\n<p>Ce 25% est un beau nouveau chiffre à ajouter à notre communauté en 2015, avec les 20 ans de PHP&#8230; et les 10 ans de l&rsquo;association WordPress-Francophone (dont vous aurez bientôt des nouvelles, promis !).</p>\n<p>Merci à toutes la communauté de développeurs, de traducteurs, de créateurs d&rsquo;extensions et de thèmes, d&rsquo;accompagnateurs sur les forums, et tant d&rsquo;autres !</p>\n<p>Rendez-vous aux prochains évènements WordPress français afin de fêter cela dignement, à commencer par le <a href="http://2015.wptech.fr/">WP Tech</a> à Nantes le 5 décembre, et le <a href="https://paris.wordcamp.org/2016/">WordCamp Paris</a> les 5 et 6 février 2016, ainsi que tous les autres évènements locaux, petits et grands, organisés par les membres de la grande famille WordPress !</p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=WIL51xhSWSw:f1vr0WZxhp4:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=WIL51xhSWSw:f1vr0WZxhp4:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=WIL51xhSWSw:f1vr0WZxhp4:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=WIL51xhSWSw:f1vr0WZxhp4:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=WIL51xhSWSw:f1vr0WZxhp4:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=WIL51xhSWSw:f1vr0WZxhp4:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/WIL51xhSWSw" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:77:"http://www.wordpress-fr.net/2015/11/09/wordpress-fait-tourner-25-du-web/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:72:"http://www.wordpress-fr.net/2015/11/09/wordpress-fait-tourner-25-du-web/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:54:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"L’Hebdo WordPress n°263 du 10e anniversaire";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/ayO_P6QzZyY/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:90:"http://www.wordpress-fr.net/2015/08/28/lhebdo-wordpress-n263-du-10e-anniversaire/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 28 Aug 2015 18:15:50 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:5:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:21:"WordPress Francophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:12:"anniversaire";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:5:"Hebdo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.wordpress-fr.net/?p=7471";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:348:"WPFR a 10 ans ! Il était une fois WordPress Francophone&#8230; Cette histoire a commencé il y a 10 ans par la volonté de quelques utilisateurs qui voulaient avoir un espace d&#8217;échange en français pour ne plus se faire rejeter des forums officiels allergiques aux non anglophones. Et un nouveau site wordpress-fr.net était né ! [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"Benoît";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:12074:"<h3>WPFR a 10 ans !</h3>\n<p>Il était une fois WordPress Francophone&#8230; <a href="http://www.wordpress-fr.net/2005/08/24/le-depart/">Cette histoire a commencé il y a 10 ans</a> par la volonté de quelques utilisateurs qui voulaient avoir un espace d&rsquo;échange en français pour ne plus se faire rejeter des forums officiels allergiques aux non anglophones. <a href="http://www.wordpress-fr.net/2005/08/25/wordpress-frnet/">Et un nouveau site wordpress-fr.net était né </a>!</p>\n<p>10 ans déjà de support en français avec <a href="http://www.wordpress-fr.net/support/">un forum</a> qui est aujourd&rsquo;hui la pierre angulaire de notre communauté. Il représente 7 6741 inscrits pour près de 110 000 discussions ouvertes représentant 560 000 messages.</p>\n<p>WordPress Francophone et son site portail wordpress-fr.net c&rsquo;est aujourd&rsquo;hui une moyenne de près de 200 000 visites par mois pour environ 400 000 pages vues mensuelles.</p>\n<p>WPFR c&rsquo;est aussi une présence sur <a href="https://twitter.com/wordpress_fr">Facebook</a>,<a href="https://twitter.com/wordpress_fr"> sur Twitter</a> et sur <a href="https://plus.google.com/u/0/b/112387028272126355329/112387028272126355329">Google+.</a></p>\n<p>Comme vous l&rsquo;aurez constaté, notre site en général et le forum en particulier sont vieillissants&#8230; cela fait des années qu&rsquo;une refonte est prévue. L&rsquo;évolution de notre association en cours nous donne de bons espoirs pour cette fin d&rsquo;année et le début de la suivante. Des annonces officielles vont suivre. Restez connectés !</p>\n<p>Des projets dans les cartons depuis longtemps devraient pouvoir se concrétiser enfin dans les mois à venir.</p>\n<p>Merci à toutes et tous pour votre fidélité, votre soutien, vos encouragements ou même parfois vos remarques et critiques&#8230; Rien n&rsquo;est vain et WPFR avance, doucement mais surement et cela grâce à vous tous, grâce à la communauté !</p>\n<p><strong>Joyeux anniversaire WPFR</strong> ! 10 ans, c&rsquo;est déjà presque l&rsquo;adolescence ! Longue vie !</p>\n<hr />\n<p>&nbsp;</p>\n<p><span style="text-decoration: underline;"><strong>Place à l&rsquo;hebdo WordPress n°263 :</strong></span></p>\n<h3>La roadmap pour WordPress 4.4</h3>\n<p>Le chantier se poursuit, pas de repos. <a href="https://make.wordpress.org/core/2015/08/27/taxonomy-roadmap-for-4-4-and-beyond/">Voici la feuille de route pour 4.4</a>. (en) &#8230; et on vous demande même votre avis sur <a href="https://make.wordpress.org/core/2015/08/19/wordpress-4-4-whats-on-your-wishlist/">ce que vous voulez voir arriver dans cette future version</a>. (en)</p>\n<h3>Le sondage WordPress 2015</h3>\n<p>Le sondage annuel de WordPress pour recueillir votre avis sur vos habitudes avec WordPress est disponible. <a href="http://wp-survey.polldaddy.com/s/wp-2015">N&rsquo;hésitez pas à le remplir</a>. (en)</p>\n<h3>2016, le prochain thème par défaut</h3>\n<p><a href="https://make.wordpress.org/core/2015/08/25/introducing-twenty-sixteen/">2016 est d&rsquo;ores et déjà mis en chantier</a>. (en)</p>\n<h3>BuddyPress 2.3.3</h3>\n<p>BuddyPress arrive dans sa <a href="https://buddypress.org/2015/08/buddypress-2-3-3/">version 2.3.3</a>. (en)</p>\n<h3>Les mots de passe sous WordPress 4.3</h3>\n<p>La dernière version en date de WordPress introduit <a href="https://make.wordpress.org/core/2015/07/28/passwords-strong-by-default/">une nouvelle gestion des mots de passe</a> (en).</p>\n<h3>Les nouveautés de WordPress 4.3</h3>\n<p>Si vous n&rsquo;êtes pas encore <a href="http://wptavern.com/wordpress-4-3-billie-named-after-jazz-singer-billie-holiday-is-available-for-download">passés (en) </a>à <a href="https://poststatus.com/wordpress-4-3-billie-released/">WordPress 4.3 (en)</a>, <a href="http://www.lumieredelune.com/encrelune/nouveautes-wordpress-4-3,2015,08">voici ce que vous ratez</a> &#8230; quelques <a href="http://wptavern.com/text-patterns-and-the-quick-link-toolbar-in-wordpress-4-3">autres explications</a> (en) ! Mais attention&#8230; <a href="http://www.layerswp.com/2015/08/are-you-ready-for-wordpress-4-3/">soyez sûrs d&rsquo;être prêts (en) </a>! Certains <a href="http://www.lumieredelune.com/encrelune/avertissement-widget-obsolete,2015,08">Widgets peuvent être obsolètes</a> notamment.</p>\n<h3>La check list essentielle pour la mise en place d’un site sous WordPress</h3>\n<p><a href="http://www.vingthuitzerotrois.fr/wordpress/la-check-list-essentielle-pour-la-mise-en-place-dun-site-sous-wordpress-15947/">LA checklist pour le moment fatidique (en) </a>où l&rsquo;on doit mettre en place un site sous WordPress. Pour ne rien oublier !</p>\n<h3>Le BuddyCamp Brighton de iMath</h3>\n<p>Notre iMath national a participé au BuddyCamp de Brighton, <a href="http://imathi.eu/2015/08/10/buddycamp-brighton/">voici son compte rendu</a>.</p>\n<h3>Automattic recrute</h3>\n<p>Automattic <a href="http://ma.tt/2015/08/automattic-is-hiring-2/">recrute différents profils</a>. (en)</p>\n<h3>Désactiver les notifications de YOAST SEO</h3>\n<p>Les notifications intempestives de cette extension pour dérangent ? <a href="http://wpchannel.com/desactiver-notifications-yoast-seo/">voici la solution</a>.</p>\n<h3>Un nouvel événement dédié à REST API</h3>\n<p><a href="http://feelingrestful.com/">A day of Rest est le prochain événement (en) </a>dédié à cette API de WordPress.</p>\n<h3>Inclure l&rsquo;extension REST API dans les thèmes du répertoire officiel ?</h3>\n<p>L&rsquo;équipe en charge des thèmes du répertoire officiel ont voté l&rsquo;autorisation d&rsquo;<a href="http://wptavern.com/wordpress-theme-review-team-votes-to-allow-themes-to-use-the-rest-api-plugin">inclure l&rsquo;extension REST API (en)</a> dans les thèmes du répertoire officiel.</p>\n<h3>Faciliter les invitations Slack</h3>\n<p>Slack est en constante augmentation de popularité. <a href="http://wptavern.com/new-wordpress-plugin-automates-slack-team-invitations">Voici une extension pour simplifier les invitations</a>. (en)</p>\n<h3>WordPress, on a un problème !</h3>\n<p>Ici ce n&rsquo;est pas Houston, mais quand on a un problème avec WordPress que fait-on ? <a href="http://wpformation.com/wordpress-probleme/">Voici des conseils par WPFormation</a>.</p>\n<h3>Les nouveautés de WooCommerce 2.4</h3>\n<p><a href="http://www.absoluteweb.net/woocommerce-2-4-nouveautes/">Découvrez les nouveautés de WooCommerce 2.4 (en).</a></p>\n<h3>Interview de Sara Rosso</h3>\n<p>Sara Rosso de chez Automattic <a href="http://mymorningroutine.com/sara-rosso/">est interviewée par mymorningroutine.com</a>. Interview forcément décalée. ☕</p>\n<h3>Vous n&rsquo;aimez pas les emojis ?</h3>\n<p><a href="http://www.hongkiat.com/blog/disable-wordpress-emoticons/">Désactivez-les !</a> (en)</p>\n<h3>Interview de Miriam Schwab de Illuminea.com</h3>\n<p>Retour d&rsquo;expérience de <a href="http://wptavern.com/wpweekly-episode-205-interview-with-miriam-schwab">Miriam Schwab</a>. (en)</p>\n<h3>WooCommerce : Synchroniser adresses de livraison et de facturation</h3>\n<p>Absolute Web explique <a href="http://www.absoluteweb.net/woocommerce-synchroniser-pays-livraison-facturation/">comment synchroniser les adresses de facturation et de livraison </a>dans WooCommerce.</p>\n<h3>Comment optimiser WordPress ?</h3>\n<p>Korben donne des <a href="http://korben.info/comment-optimiser-un-vieux-wordpress-obese.html">conseils pour alléger et optimiser </a>un vieux WordPress obèse !</p>\n<h3>Quel futur pour WordPress ?</h3>\n<p>Quelques hypothèses pour <a href="http://torquemag.io/where-do-you-see-the-future-of-wordpress/">l&rsquo;avenir de WordPress</a> (en).</p>\n<h3>Ajouter un portfolio</h3>\n<p>Comment ajouter un portflolio dans WordPress ? <a href="http://www.wpbeginner.com/plugins/how-to-add-a-portfolio-to-your-wordpress-site/">Suivez le guide</a>. (en)</p>\n<h3>Retours d&rsquo;expérience</h3>\n<p><a href="http://www.wpelevation.com/2015/08/starting-a-wordpress-consulting-business/">Troy Dean raconte son expérience</a> (en) en tant que consultant WordPress depuis 8 ans. Et Becky Davis nous <a href="http://heropress.com/essays/doing-what-i-want/">raconte son parcours</a>. (en)</p>\n<h3>Interview de Nikolay Bachiyski, chez de la sécurité de WordPress.org</h3>\n<p><a href="http://wptavern.com/short-interview-with-nikolay-bachiyski-wordpress-security-czar">Nikolay est chef de la sécurité</a> de WorPress.org (en).</p>\n<h3>Comment installer une extension ?</h3>\n<p>Il est parfois intéressant de revenir aux bases, c&rsquo;est pourquoi cet article devrait intéressant les <a href="http://yesweblog.fr/wordpress/comment-installer-extension-plugin-wordpress/">débutants qui souhaitent installer des extensions</a>.</p>\n<h3>Présentation de Elegant Themes</h3>\n<p>WP Marmite nous fait découvrir <a href="http://wpmarmite.com/elegant-themes/">Elegant Themes</a>.</p>\n<h3>La hiérarchie des templates</h3>\n<p>La hiérarchie des templates est très importantes dans WordPress. <a href="http://wphierarchy.com/">Voici comment s&rsquo;en imprégner</a>. (en)</p>\n<h3>API personnalisé pour base de données</h3>\n<p>Voici le premier numéro d&rsquo;<a href="https://pippinsplugins.com/custom-database-api-reasons-for-custom-tables-and-an-api/">un tuto sur la gestion des bases de données</a>.</p>\n<h3>Un glossaire pour débutants</h3>\n<p>WordPress vous parle en chinois, et ce malgré la langue sélectionnée avec soin ? Alors <a href="http://www.wpexplorer.com/wordpress-glossary-beginners/">ce guide peut être pour vous</a> ! (en)</p>\n<h3>Un guide pour créer son site e-commerce</h3>\n<p>Si vous voulez quelques idées pour créer votre site e-commerce avec WordPress, <a href="https://selfstartr.com/wordpress-ecommerce/">ce guide pourra vous donner des pistes</a>. (en)</p>\n<h3>25 raisons de passer à WordPress</h3>\n<p>Nelio donne <a href="http://neliosoftware.com/25-reasons-to-switch-to-wordpress/">25 raisons de migrer vers WordPress</a>. (en)</p>\n<h3>Au revoir Thèmes de France</h3>\n<p>Thèmes de France, la plateforme de thèmes WordPress lancées par Alex Bortolotti vient de <a href="https://www.themesdefrance.fr/">fermer définitivement ses portes</a>. Alex nous <a href="http://alexbortolotti.com/pourquoi-arret-themes-de-france/">explique les raisons</a>.</p>\n<h3>Ajouter un retour en haut</h3>\n<p>Thierry propose un bouton pour revenir en <a href="https://gist.github.com/thierrypigot/46a1f71af58c2c83a9a7">haut de page dans Genesis</a>.</p>\n<h3>Il était une fois Automattic&#8230;</h3>\n<p>Automattic c&rsquo;est quoi ? <a href="http://www.elegantthemes.com/blog/editorial/a-history-of-automattics-acquisitions-from-gravatar-to-woothemes">voici une partie de la réponse</a>. (en)</p>\n<h3>Afficher le profil Facebook dans WordPress</h3>\n<p>Si vous souhaitez <a href="http://www.hongkiat.com/blog/facebook-author-tag-wordpress/">afficher le profil Facebook</a> de vos auteurs par exemple, voici comment faire.</p>\n<h3>Top 99 des influenceurs WordPress</h3>\n<p>Les <a href="http://99robots.com/top-99-wordpress-influencers-2015/">99 personnes</a> qui font WordPress ! (en)</p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ayO_P6QzZyY:xNb17R3nBDQ:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ayO_P6QzZyY:xNb17R3nBDQ:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=ayO_P6QzZyY:xNb17R3nBDQ:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ayO_P6QzZyY:xNb17R3nBDQ:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ayO_P6QzZyY:xNb17R3nBDQ:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=ayO_P6QzZyY:xNb17R3nBDQ:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/ayO_P6QzZyY" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:86:"http://www.wordpress-fr.net/2015/08/28/lhebdo-wordpress-n263-du-10e-anniversaire/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"8";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:81:"http://www.wordpress-fr.net/2015/08/28/lhebdo-wordpress-n263-du-10e-anniversaire/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n\n\n\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:8:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:37:"Sortie de  WordPress 4.3 « Billie »";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/KD2NWiu1sHU/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:79:"http://www.wordpress-fr.net/2015/08/19/sortie-de-wordpress-4-3-billie/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 19 Aug 2015 06:35:23 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:14:"Développement";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.wordpress-fr.net/?p=7463";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:391:"La version 4.3 de WordPress, baptisée &#171;&#160;Billie&#160;&#187; en l&#8217;honneur de la chanteuse de jazz Billie Holiday, est disponible en téléchargement ou en mise à jour via le tableau de bord de votre WordPress. Les nouvelles fonctionnalités de la version 4.3 simplifient grandement la mise en forme de votre contenu et la personnalisation de votre site. Les menus [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"enclosure";a:3:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"url";s:45:"http://s.w.org/images/core/4.3/formatting.mp4";s:6:"length";s:7:"1574782";s:4:"type";s:9:"video/mp4";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"url";s:45:"http://s.w.org/images/core/4.3/formatting.ogv";s:6:"length";s:7:"1939540";s:4:"type";s:9:"video/ogg";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"url";s:46:"http://s.w.org/images/core/4.3/formatting.webm";s:6:"length";s:6:"686435";s:4:"type";s:10:"video/webm";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Xavier";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:5597:"<p>La version 4.3 de WordPress, baptisée &laquo;&nbsp;Billie&nbsp;&raquo; en l&rsquo;honneur de la chanteuse de jazz <a href="https://fr.wikipedia.org/wiki/Billie_Holiday">Billie Holiday</a>, est disponible en <a href="http://fr.wordpress.org/">téléchargement</a> ou en mise à jour via le tableau de bord de votre WordPress. Les nouvelles fonctionnalités de la version 4.3 simplifient grandement la mise en forme de votre contenu et la personnalisation de votre site.</p>\n<p><iframe width=''555'' height=''312'' src=''https://videopress.com/embed/T54Iy7Tw?hd=1'' frameborder=''0'' allowfullscreen></iframe><script src=''https://v0.wordpress.com/js/next/videopress-iframe.js?m=1435166243''></script></p>\n<h3>Les menus dans l’outil de personnalisation</h3>\n<p><img class="size-large wp-image-7464 alignnone" src="http://www.wordpress-fr.net/wp-content/uploads/2015/08/menu-customizer-500x281.png" alt="menu-customizer" width="500" height="281" /></p>\n<p>Créez votre menu, mettez-le à jour et placez-le, le tout en même temps que vous prévisualisez son apparence dans l’outil de personnalisation. Le design épuré de l’outil de personnalisation offre une interface accessible tant pour les appareils mobiles que pour les utilisateurs en situation de handicap. De version en version, il devient de plus en plus facile de donner à votre l’apparence que vous souhaitez.</p>\n<h3>Les raccourcis de mise en forme</h3>\n\n<p>Votre flux d’écriture va s’accélérer grâce aux nouveaux raccourcis de WordPress 4.3. Utilisez l’astérisque pour créer des listes, et le croisillon pour mettre en place un titre. Votre flux n’est plus ralenti par le mouvement de souris ; votre texte est plus clair grâce aux <code>*</code> et aux <code>#</code>.</p>\n<h3>Des icônes pour votre site</h3>\n<p><img class="size-large wp-image-7465 alignnone" src="http://www.wordpress-fr.net/wp-content/uploads/2015/08/site-icon-customizer-500x281.png" alt="site-icon-customizer" width="500" height="281" /></p>\n<p>Les icônes du site représentent votre site dans les onglets des navigateurs, dans les menus de favoris, et dans la page d’accueil des appareils mobiles. Ajoutez votre propre icône de site dans l’outil de personnalisation ; il restera même en place quand vous changerez de thème. Faites en sorte que tout votre site soit le reflet de votre marque.</p>\n<h3>De meilleurs mots de passe</h3>\n<p><img class="alignnone size-large wp-image-7466" src="http://www.wordpress-fr.net/wp-content/uploads/2015/08/better-passwords-500x281.png" alt="better-passwords" width="500" height="281" /></p>\n<p>Améliorez la sécurité de votre site grâce à la nouvelle gestion des mots de passe de WordPress. Au lieu de recevoir un mot de passe dans votre messagerie, vous recevrez un lien de réinitialisation. Et lorsque vous ajouterez de nouveaux utilisateurs à votre site, ou que vous modifierez le profil d’un utilisateur, WordPress génèrera automatiquement un mot de passe sécurisé.</p>\n<h3>D&rsquo;autres améliorations</h3>\n<ul>\n<li><strong>Une utilisation de l’administration plus agréable </strong>&#8212; Des améliorations à l’affichage des listes sur l’ensemble des pages d’administration rendent WordPress plus accessible et plus facile à utiliser sur n’importe quel appareil.</li>\n<li><strong>Les commentaires sont désactivés sur les pages </strong>&#8212; Toutes les nouvelles pages que vous créerez auront les commentaires désactivés par défaut. Cela permet de limiter les conversations à votre blog, là où elle sont censées se dérouler.</li>\n<li><strong>Une personnalisation rapide de votre site </strong>&#8212; Où que vous soyez sur l’interface du site, vous pouvez cliquer sur le lien de personnalisation dans la barre d’outils pour apporter une modification rapide à votre site.</li>\n<li><strong>Feuille de route de la taxinomie </strong>&#8212; Les termes partagés par plusieurs taxinomies sont maintenant séparés en plusieurs termes distincts.</li>\n<li><strong>Hiérarchie des fichiers du thème </strong>&#8212; Le fichier <code>singular.php</code> a été ajouté en tant qu’alternative à <code>single.php</code> et <code>page.php</code>.</li>\n<li><strong><code>WP_List_Table</code></strong> &#8212; Les tableaux de listes peuvent et doivent désigner une colonne principale.</li>\n</ul>\n<p>Cette version a été menée par <a href="http://konstantin.obenland.it/">Konstantin Obenland</a>, avec l&rsquo;aide 246 contributeurs, parmi lesquels on retrouve quelques français : Clement Biron, Julio Potier, Fabien Quatravaux et Mathieu Viet.</p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KD2NWiu1sHU:oBCnwZX5Yj8:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KD2NWiu1sHU:oBCnwZX5Yj8:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KD2NWiu1sHU:oBCnwZX5Yj8:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KD2NWiu1sHU:oBCnwZX5Yj8:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KD2NWiu1sHU:oBCnwZX5Yj8:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KD2NWiu1sHU:oBCnwZX5Yj8:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/KD2NWiu1sHU" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:75:"http://www.wordpress-fr.net/2015/08/19/sortie-de-wordpress-4-3-billie/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"11";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:70:"http://www.wordpress-fr.net/2015/08/19/sortie-de-wordpress-4-3-billie/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:51:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:81:"L’Hebdo WordPress n°262 : Communautés – Retours d’expérience – Astuces";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/NRscrl4Ddlw/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:110:"http://www.wordpress-fr.net/2015/07/24/lhebdo-wordpress-n262-communautes-retours-dexperience-astuces/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 24 Jul 2015 17:56:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:4:{i:0;a:5:{s:4:"data";s:7:"Astuces";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:7:"Brèves";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:12:"communautés";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:5:"Hebdo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.wordpress-fr.net/?p=7456";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:368:"WordPress 4.2.3 : mise à jour de sécurité Une 3e mise à jour mineure vient corriger une faille de sécurité détectée plus tôt. La communauté française grandie Jenny Beaumont a fait un résumé de l&#8217;histoire (en) de la communauté française de WordPress&#8230; et Émilie vous dit pourquoi en faire partie. 14e Podcast VFT : l&#8217;animation [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"Benoît";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:8365:"<h3>WordPress 4.2.3 : mise à jour de sécurité</h3>\n<p>Une <a href="http://wptavern.com/wordpress-4-2-3-is-a-critical-security-release-fixes-an-xss-vulnerability">3e mise à jour mineure </a>vient <a href="https://wordpress.org/news/2015/07/wordpress-4-2-3/">corriger </a>une faille de sécurité détectée plus tôt.</p>\n<h3>La communauté française grandie</h3>\n<p>Jenny Beaumont a fait <a href="https://poststatus.com/growth-in-the-french-community/">un résumé de l&rsquo;histoire (en)</a> de la communauté française de WordPress&#8230; et <a href="http://www.wp-pro.fr/pourquoi-rejoindre-la-communaute-wordpress/">Émilie vous dit pourquoi en faire partie</a>.</p>\n<h3>14e Podcast VFT : l&rsquo;animation d&rsquo;une communauté locale</h3>\n<p>Entourés de Valérie et Nicolas, l&rsquo;équipe de VFT <a href="http://veryfrenchtrip.com/podcast/podcast-14-animation-locale-wordpress/">nous donne des pistes pour animer une communauté locale</a>.</p>\n<h3>Le WP Tech 2015 a une salle !</h3>\n<p>Le lieu du prochain WP Tech <a href="http://2015.wptech.fr/lieu/">est connu</a>, ce sera la faculté de Pharmacie en plein centre de Nantes.</p>\n<h3>Des retours du WPMX Day, des vrais (cette fois !)</h3>\n<p>J&rsquo;avais fait une erreur dans mon dernier hebdo et confondu des liens&#8230; et je n&rsquo;a pas fait la mise à jour&#8230; dont acte !</p>\n<ul>\n<li><a href="http://www.myleneb.fr/wpmx-day-2015-mes-impressions/">Mylène Boyrie</a></li>\n<li><a href="http://www.ohmyweb.fr/retour-sur-le-wpmx-day-du-6-juin-2/">Oh My Web</a></li>\n<li><a href="http://www.goodness.fr/2015/06/13/referencement-wordpress-wpmx-2015/">Goodness</a></li>\n<li><a href="http://www.inpixelitrust.fr/blog/faites-rentrer-votre-elephant-dans-une-smart-bonnes-pratiques-sur-mobiles-ma-conference-au-wpmx-day-2015/">Stéphanie Walter</a></li>\n</ul>\n<h3>Quelques nouvelles des WordCamps dans le monde</h3>\n<p>Les WordCamps français n&rsquo;étant pas les seuls au monde, <a href="https://wordpress.org/news/2015/07/wordcamps-update/">voici du nouveau sur le reste du Monde</a> ! (en) &#8230; avec un clin d’œil à Fabrice Ducarme, bien connu de notre communauté&#8230; et le premier <a href="http://ma.tt/2015/07/wcus-philadelphia/">WordCamp US</a> aura lieu à Philadelphie&#8230;</p>\n<h3>WordPress 4.3 : revue de travaux</h3>\n<ul>\n<li><a href="http://wptavern.com/wordpress-4-3-adds-new-site-icons-feature-and-a-text-editor-to-press-this">Favicon et Press This</a> (en)</li>\n<li><a href="http://wptavern.com/wordpress-4-3-improves-user-search-and-turns-comments-off-on-pages-by-default">Fermeture de commentaire et recherche améliorée</a> (en)</li>\n</ul>\n<h3>Jetpack 3.6 débarque</h3>\n<p>Cette <a href="http://wptavern.com/jetpack-3-6-adds-the-ability-to-manage-your-connections-to-jetpack">nouvelle version</a> peut désormais gérer vos connexions aux réseaux sociaux. (en)</p>\n<h3>Focus sur le répertoire de thème officiel</h3>\n<p>L&rsquo;équipe en charge du répertoire officiel de thème de WordPress se concentre sur l&rsquo;amélioration du répertoire officiel de thèmes. <a href="http://wptavern.com/wordpress-theme-review-team-unanimously-approves-roadmap-to-improve-directory-and-review-process">Une réorganisation de l&rsquo;équipe est en cours</a>. (en)</p>\n<h3>Le fichier htaccess avec WordPress</h3>\n<p>MaintPress explique le <a href="http://www.maintpress.com/blog/htaccess-wordpress/">fonctionnement et l&rsquo;optimisation du fichier .htaccess</a> avec WordPress.</p>\n<h3>Rappel sur l&rsquo;utilisation d&rsquo;un domaine avec &laquo;&nbsp;wordpress&nbsp;&raquo;</h3>\n<p><a href="http://chrislema.com/this-is-why-you-dont-put-wordpress-in-a-domain-name/">Chris Lema rappelle quelques éléments</a> concernant l’utilisation du terme WordPress&#8230; et un <a href="http://thewordpresshelpers.com/wordpress-trademark-lawsuit">exemple d&rsquo;un cas concret</a> (en).</p>\n<h3>Retour sur le WordCamp Europe 2015</h3>\n<p><a href="http://www.kirstencassidy.com/wordcamp-europe-2015-in-review-day-one/">Kirsten Cassidy</a> (en)</p>\n<h3>Des shortcodes générés par ACF</h3>\n<p>Si vous avez des shortcodes à gérer dans votre site web, ou si vous souhaitez vos y mettre, l&rsquo;<a href="http://www.absoluteweb.net/generateur-shortcodes-acf/">extension ACF pourrait vous faciliter les choses</a>.</p>\n<h3>We are WP</h3>\n<p><a href="http://www.wearewp.pro/">We are WP</a>, c&rsquo;est la nouvelle agence de conseils et d&rsquo;expertise WordPress créée par Emilie Lebrun et Thierry Pigot, membres éminents de la communauté française.</p>\n<h3>Les parts de marché de WordPress dans le monde</h3>\n<p>Daniel présente les parts de marché mondiale de WordPress. <a href="http://www.seomix.fr/parts-de-marche-wordpress/">Un article très intéressant et instructif</a>.</p>\n<h3>Du nouveau avec REST API</h3>\n<p>Une <a href="http://wptavern.com/explore-the-wordpress-rest-api-with-the-new-interactive-console-plugin">console REST API </a>est maintenant disponible. (en)</p>\n<h3>WP Rocket, 2 ans après</h3>\n<p>Voici déjà 2 ans que la fusée WP Rocket a décollé. <a href="http://blog.wp-rocket.me/fr/2-ans-bilan-retour-experience/">A l&rsquo;heure du bilan</a>, autant dire que l&rsquo;optimisme est de rigueur. Une <a href="http://wptavern.com/wp-rocket-reports-355k-in-annual-revenue-after-2-years-in-business">belle aventure de startup à la française (en)</a>. (<a href="http://blog.wp-rocket.me/2-years-reports-feedbacks/">English version here</a>)</p>\n<h3>Puisqu&rsquo;on vous dit d&rsquo;utiliser un thème enfant !</h3>\n<p>On ne le répétera jamais assez&#8230; <a href="http://webdesignerhut.com/wordpress-child-themes/">utilisez un thème enfant</a> ! (en)</p>\n<h3>Gestion complète des menus</h3>\n<p>Grégoire propose un <a href="http://www.gregoirenoyelle.com/gestion-des-menus-depuis-wordpress-3/">tutoriel pour tout savoir des menus</a> dans WordPress.</p>\n<h3>L&rsquo;extension pour les surveiller toutes</h3>\n<p>L&rsquo;extension qui surveille les autres pour vous indiquer les failles de sécurité existe, il s&rsquo;agit de<a href="http://wpformation.com/plugin-failles-securite/"> Plugin Security Scanner</a>.</p>\n<h3>Automattic, Matt Mullenweg et Thesis&#8230; histoire d&rsquo;un conflit</h3>\n<p>La <a href="https://poststatus.com/thesis-automattic-and-wordpress/">longue histoire du conflit</a> qui oppose le thème Thesis à Automattic et Matt Mullenweg depuis 2010. (en)</p>\n<h3>Comment styliser les formulaires de Gravity Forms</h3>\n<p>La Marmite propose dans son menu de <a href="http://wpmarmite.com/gravity-forms-css/">styliser vos formulaires de Gravity Forms</a>.</p>\n<h3>Polylang et WooCommerce</h3>\n<p>Retour d&rsquo;expérience de l&rsquo;utilisation de <a href="http://www.absoluteweb.net/polylang-grosse-deception/">Polylang avec WooCommerce</a>.</p>\n<h3>Mise à jour du livre &laquo;&nbsp;optimiser son référencement WordPress&nbsp;&raquo;</h3>\n<p>Daniel Roch <a href="http://www.wp-referencement.fr/">indique la mise à jour du livre</a> qu&rsquo;il a écrit concernant le référencement avec WordPress.</p>\n<h3>Chrome 44 et WordPress</h3>\n<p>Cette semaine, la <a href="http://www.imadarchid.com/un-bug-sur-chrome-44-beta-detruit-wordpress-et-dautres-logiciels/">mise à jour 44 de Chrome</a> a entrainé un <a href="https://github.com/IshYoBoy/aaa-ishyoboy-google-chrome-44-ssl-fix">problème avec WordPress</a>.</p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=NRscrl4Ddlw:tH6Ix9sW9-g:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=NRscrl4Ddlw:tH6Ix9sW9-g:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=NRscrl4Ddlw:tH6Ix9sW9-g:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=NRscrl4Ddlw:tH6Ix9sW9-g:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=NRscrl4Ddlw:tH6Ix9sW9-g:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=NRscrl4Ddlw:tH6Ix9sW9-g:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/NRscrl4Ddlw" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:106:"http://www.wordpress-fr.net/2015/07/24/lhebdo-wordpress-n262-communautes-retours-dexperience-astuces/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"6";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:101:"http://www.wordpress-fr.net/2015/07/24/lhebdo-wordpress-n262-communautes-retours-dexperience-astuces/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:66:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n		\n		\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:80:"L’Hebdo WordPress n°261 : WordCamp et WPMX Day – e-barcamp – Communautés";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/ZSQgxX9WNpE/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:113:"http://www.wordpress-fr.net/2015/06/23/lhebdo-wordpress-n261-wordcamp-et-wpmx-day-e-barcamp-communautes/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 23 Jun 2015 05:26:52 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:9:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:7:"Brèves";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:14:"Développement";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:11:"Evènements";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:10:"Podcasting";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:8:"WordCamp";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:21:"WordPress Francophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:7;a:5:{s:4:"data";s:12:"communautés";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:8;a:5:{s:4:"data";s:8:"wordcamp";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.wordpress-fr.net/?p=7448";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:336:"WordCamp Lyon 2015 J&#8217;ai eu la chance de participer au 1er WordCamp Lyon. Il s&#8217;est déroulé le 5 juin dernier sous le soleil du Rhône. Autant le dire tout de suite, c&#8217;était un grand événement ! UN belle réussite. Bravo aux organisateurs ! Voici quelques liens qui en parlent en des termes au moins aussi [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"Benoît";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:6530:"<h3>WordCamp Lyon 2015</h3>\n<p>J&rsquo;ai eu la chance de participer au 1er WordCamp Lyon. Il s&rsquo;est déroulé le 5 juin dernier sous le soleil du Rhône. Autant le dire tout de suite, c&rsquo;était un grand événement ! UN belle réussite. Bravo aux organisateurs !</p>\n<p>Voici quelques liens qui en parlent en des termes au moins aussi élogieux que moi si ce n&rsquo;est plus :</p>\n<ul>\n<li><a href="http://eclozion360.com/wordcamp-lyon-2015/">Des photos</a></li>\n<li><a href="http://www.wp-spread.com/comment-travailler-en-equipe-autour-dun-projet-wordpress-wordcamp-lyon-2015/">Le retour de Maxime BJ</a></li>\n<li><a href="https://www.flickr.com/search/?text=WPLyon">D&rsquo;autres photos</a></li>\n<li><a href="http://wordpress.tv/event/wordcamp-lyon-2015/">Déjà les conférences et ateliers sur WordPress.tv</a></li>\n<li><a href="http://wpmarmite.com/wordcamp-lyon-2015/">Une marmite qui déborde de retours</a></li>\n<li><a href="http://www.jennybeaumont.com/results-2015-wordpress-maintenance-survey/">Le sondage pre-WordCamp Lyon de Jenny</a></li>\n<li><a href="https://lyon.wordcamp.org/2015/les-photos/">Le site officiel dit merci !</a></li>\n<li><a href="https://twitter.com/search?q=%23wplyon&amp;mode=news&amp;src=tyah">#wplyon</a></li>\n</ul>\n<h3>WPMX Day 2015</h3>\n<p>Le lendemain du WordCamp Lyon se déroulait à quelques centaines de km de Lyon, plus près de la côte Atlantique, le <a href="http://wpmx.org/retour-wpmx-day-2015/">WPMX Day</a>.</p>\n<ul>\n<li><a href="http://www.lameleeadour.com/wpmx-day-6-juin-2015-a-biarritz-2/">Un retour de cette journée.</a></li>\n</ul>\n<h3>Le premier e-barcamp de France</h3>\n<p>L&rsquo;équipe de VFT a mis en place  fin mai un e-barcamp. L&rsquo;objectif était d&rsquo;appliquer le mode barcamp à un podcast. <a href="http://veryfrenchtrip.com/podcast/podcast-13-e-barcamp-1/">Le résultat est en ligne ici</a>. En attendant la prochaine édition, VFT revient bientôt pour son traditionnel podcast <a href="http://veryfrenchtrip.com/annonce-podcast-14-organiser-des-meetups-wordpress/">consacré cette fois aux meetups</a>. Restez connectés.</p>\n<h3>La communauté WPFR sur Slack</h3>\n<p>La communauté WordPress Francophone est sur Slack depuis un mois environ et ne cesse de grandir. <a href="http://boiteaweb.fr/wordpressfr-on-slack-8588.html">Si ce n&rsquo;est pas encore faire venez nous rejoindre</a>.</p>\n<h3>Des meetups partout&#8230; encore et toujours !</h3>\n<p>La communauté est vivante et de plus en plus riche et active. Un nouveau groupe s&rsquo;est <a href="http://www.meetup.com/fr/WordPress-Lorraine/">créé en Lorraine</a>.</p>\n<p>Et le prochain et dernier meetup niçois avant les vacances, <a href="http://www.meetup.com/wordpress-in-nice/events/223309511/?a=ra1_te">c&rsquo;est le 30 juin</a> !</p>\n<h3>Glossaire des traductions françaises</h3>\n<p>FX, bien connu des traducteurs en français, a réalisé <a href="https://fxbenard.com/glossaire-des-traductions-francaises-de-wordpress/">un glossaire des traductions en français</a>. Un &laquo;&nbsp;<em>must have</em>&laquo;&nbsp;.</p>\n<h3>La mode est au Wapuu</h3>\n<p><a href="http://wptavern.com/introducing-the-wp-tavern-wapuu#comment-69209">WP Tavern a son wapuu</a>&#8230; et maintenant la <a href="http://boiteaweb.fr/welcome-to-marcel-le-wapuu-de-la-communaute-francaise-8598.html">France à le sien aussi</a> ! &#8230; Le<a href="http://wapuu.jp/about/"> Wapuu c&rsquo;est ça au fait</a> !</p>\n<h3>Un sondage sur WordPress</h3>\n<p>Jenny Wong souhaite recueillir vos avis sur WordPress, <a href="https://docs.google.com/forms/d/1dkF1nbVCTawp7vq8pZd2SB8FIV2iwny01EtfbadnfoA/viewform?c=0&amp;w=1">aidez-la (en)</a>.</p>\n<h3>Arrêter de s&rsquo;arracher les cheveux en cherchant un thème</h3>\n<p>Un article qui vous donne<a href="http://www.webmarketing-com.com/2015/03/25/36361-comment-arreter-de-sarracher-les-cheveux-en-recherchant-un-theme-wordpress"> des pistes pour vos recherches de thèmes</a> !</p>\n<h3>Un guide pour les Custom Page Template</h3>\n<p>Apprenez à<a href="http://www.smashingmagazine.com/2015/06/19/wordpress-custom-page-templates/"> personnaliser vos pages dans WordPress</a> (en).</p>\n<h3>Theme Juice : Une configuration Vagrant pour les développeurs</h3>\n<p>Vous êtes développeurs et souhaitez une nouvelle plateforme de développement, <a href="http://wptavern.com/theme-juice-a-new-vagrant-configuration-for-wordpress-development">c&rsquo;est ici que ça passe</a> (en).</p>\n<h3>Pas (que) du WordPress mais du PHP</h3>\n<p>PHP et WordPress sont étroitement liés, c&rsquo;est pourquoi cet article peut vous intéresser : <a href="https://kinsta.com/blog/hhvm-vs-php-7/">HHVM vs PHP7 (en)</a>.</p>\n<h3>&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;-</h3>\n<h3>Appel à la communauté francophone</h3>\n<p>Vous avez déjà participé au développement du core de WordPress (vous savez, vous avez eu votre heure de gloire avec votre nom dans les crédits de WordPress ! :p ) ? Signalez-vous ici (ou sur le Slack), un recensement est en cours par Jenny Beaumont <img src="http://s.w.org/images/core/emoji/72x72/1f609.png" alt="&#x1f609;" class="wp-smiley" style="height: 1em; max-height: 1em;" /></p>\n<h3>Association WPFR nouvelle génération</h3>\n<p>J&rsquo;ai ouïe dire que <span style="text-decoration: underline;"><strong>les nouveaux statuts sont déposés en préfecture</strong></span> et validés ! <em>WPFR next gen, </em>c&rsquo;est parti ! On vous en dit plus très très très très bientôt ! #wpfrstatuts</p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ZSQgxX9WNpE:Tg583M62sFc:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ZSQgxX9WNpE:Tg583M62sFc:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=ZSQgxX9WNpE:Tg583M62sFc:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ZSQgxX9WNpE:Tg583M62sFc:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ZSQgxX9WNpE:Tg583M62sFc:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=ZSQgxX9WNpE:Tg583M62sFc:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/ZSQgxX9WNpE" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:109:"http://www.wordpress-fr.net/2015/06/23/lhebdo-wordpress-n261-wordcamp-et-wpmx-day-e-barcamp-communautes/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:104:"http://www.wordpress-fr.net/2015/06/23/lhebdo-wordpress-n261-wordcamp-et-wpmx-day-e-barcamp-communautes/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:61:"L’Hebdo WordPress n°260 : WooThemes – Slack – Insights";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/XyIbHAGFLdw/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:95:"http://www.wordpress-fr.net/2015/06/03/lhebdo-wordpress-n260-woothemes-slack-insights/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 03 Jun 2015 05:27:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:7:"Astuces";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:10:"automattic";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.wordpress-fr.net/?p=7445";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:359:"Automattic acquiert WooThemes L&#8217;info de cette dernière quinzaine est sans aucun doute le rachat (en) de WooThemes (en) par Automattic (en). Le plus gros marchand de thèmes et le créateur du plus célèbre outil de e-commerce pour WordPress rejoint donc le giron de l&#8217;outil le plus puissant du web. 12e anniversaire de WordPress Que le [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"Benoît";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:3694:"<h3>Automattic acquiert WooThemes</h3>\n<p>L&rsquo;info de cette dernière quinzaine est sans aucun doute le <a href="https://poststatus.com/automattic-acquired-woocommerce-woothemes/">rachat (en) </a>de <a href="http://www.woothemes.com/2015/05/woothemes-joins-automattic/">WooThemes (en) </a>par <a href="http://ma.tt/2015/05/woomattic/">Automattic (en)</a>. Le plus gros marchand de thèmes et le créateur du plus célèbre outil de e-commerce pour WordPress <a href="http://wpchannel.com/woothemes-automattic-acquisition-e-commerce/">rejoint donc le giron</a> de l&rsquo;outil le plus puissant du web.</p>\n<h3>12e anniversaire de WordPress</h3>\n<p>Que le temps passe vite ! <a href="https://matt.wordpress.com/2015/05/27/wordpress-12th-birthday-cake/">Déjà 12 ans </a>depuis le début du projet. (en) !</p>\n<h3>WordPress.com lance Insights</h3>\n<p>Il s&rsquo;agit d&rsquo;un <a href="http://wptavern.com/wordpress-com-launches-insights-better-stats-for-visualizing-publishing-trends">meilleur outil de statistiques</a> qui apporte un certain nombres de changement à l&rsquo;interface actuelle.</p>\n<h3>Une communauté WordPress en français sur Slack</h3>\n<p>Un nouveau groupe a été créé sur la <a href="http://www.wp-spread.com/invitez-vous-sur-le-chat-wordpress-francophone-sur-slack/">plateforme Slack</a>. Rejoignez le groupe dès que vous pouvez !</p>\n<h3>Des tutos et ressources pour apprendre</h3>\n<p><a href="https://matt.wordpress.com/2015/05/27/wordpress-12th-birthday-cake/">Quelques tutoriels et ressources</a> diverses pour apprendre WordPress</p>\n<h3>Renommer automatiquement les fichiers accentués sous WordPress</h3>\n<p>Si vous avez des fichiers nommés <a href="http://wpchannel.com/renommer-automatiquement-fichiers-accentues-wordpress/">avec des accents et que vous en avez assez de les renommer sans cesse</a>, cette extension est pour vous.</p>\n<h3>La hiérarchie des templates</h3>\n<p>Avec WordPress il est souvent utile de connaitre<a href="http://4design.xyz/wordpress-visualisez-la-hierarchie-des-templates"> la hiérarchie des templates</a> pour travailler dans un thème notamment.</p>\n<h3>11 exemples de sites WordPress</h3>\n<p><a href="http://www.maintpress.com/blog/exemple-site-wordpress-bien-reussi/">Voici 11 sites WordPress</a> qui semblent intéressants selon MaintPress.</p>\n<h3>Connecter WordPress à OneNote de Microsoft</h3>\n<p>Voici la solution pour connecter <a href="http://blogs.office.com/2015/05/22/onenote-welcomes-three-new-partners-cloudhq-equil-and-wordpress/">un site WordPress avec un compte Microsoft OneNote (en)</a>.</p>\n<p><em>NB : A celles et ceux qui vont au WordCamp Lyon, je leur dit : &laquo;&nbsp;A vendredi !&nbsp;&raquo;</em></p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=XyIbHAGFLdw:abkmUGnIo1g:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=XyIbHAGFLdw:abkmUGnIo1g:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=XyIbHAGFLdw:abkmUGnIo1g:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=XyIbHAGFLdw:abkmUGnIo1g:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=XyIbHAGFLdw:abkmUGnIo1g:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=XyIbHAGFLdw:abkmUGnIo1g:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/XyIbHAGFLdw" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:91:"http://www.wordpress-fr.net/2015/06/03/lhebdo-wordpress-n260-woothemes-slack-insights/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"6";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:86:"http://www.wordpress-fr.net/2015/06/03/lhebdo-wordpress-n260-woothemes-slack-insights/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:2:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";s:4:"href";s:48:"http://feeds.feedburner.com/WordpressFrancophone";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:3:"hub";s:4:"href";s:32:"http://pubsubhubbub.appspot.com/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:4:{s:4:"info";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:3:"uri";s:20:"wordpressfrancophone";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:14:"emailServiceId";a:1:{i:0;a:5:{s:4:"data";s:20:"WordpressFrancophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:18:"feedburnerHostname";a:1:{i:0;a:5:{s:4:"data";s:29:"https://feedburner.google.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"feedFlare";a:9:{i:0;a:5:{s:4:"data";s:24:"Subscribe with NewsGator";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:112:"http://www.newsgator.com/ngs/subscriber/subext.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:42:"http://www.newsgator.com/images/ngsub1.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:24:"Subscribe with Bloglines";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:77:"http://www.bloglines.com/sub/http://feeds.feedburner.com/WordpressFrancophone";s:3:"src";s:48:"http://www.bloglines.com/images/sub_modern11.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:23:"Subscribe with Netvibes";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:98:"http://www.netvibes.com/subscribe.php?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:39:"//www.netvibes.com/img/add2netvibes.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:21:"Subscribe with Google";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:93:"http://fusion.google.com/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:51:"http://buttons.googlesyndication.com/fusion/add.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:25:"Subscribe with Pageflakes";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:101:"http://www.pageflakes.com/subscribe.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:87:"http://www.pageflakes.com/ImageFile.ashx?instanceId=Static_4&fileName=ATP_blu_91x17.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:21:"Subscribe with Plusmo";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:86:"http://www.plusmo.com/add?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:43:"http://plusmo.com/res/graphics/fbplusmo.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:23:"Subscribe with Live.com";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:81:"http://www.live.com/?add=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:141:"http://tkfiles.storage.msn.com/x1piYkpqHC_35nIp1gLE68-wvzLZO8iXl_JMledmJQXP-XTBOLfmQv4zhj4MhcWEJh_GtoBIiAl1Mjh-ndp9k47If7hTaFno0mxW9_i3p_5qQw";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:7;a:5:{s:4:"data";s:25:"Subscribe with Mon Yahoo!";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:99:"https://add.my.yahoo.com/content?lg=fr&url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:60:"http://us.i1.yimg.com/us.yimg.com/i/us/my/bn/intatm_fr_1.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:8;a:5:{s:4:"data";s:25:"Subscribe with Excite MIX";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:89:"http://mix.excite.eu/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:42:"http://image.excite.co.uk/mix/addtomix.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:52:"http://backend.userland.com/creativeCommonsRssModule";a:1:{s:7:"license";a:1:{i:0;a:5:{s:4:"data";s:49:"http://creativecommons.org/licenses/by-nc-sa/3.0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:10:{s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:4:"etag";s:27:"KhyWj+jMif4b5sWiO6yXKH+8SQU";s:13:"last-modified";s:29:"Thu, 02 Jun 2016 08:59:13 GMT";s:16:"content-encoding";s:4:"gzip";s:4:"date";s:29:"Thu, 02 Jun 2016 09:09:48 GMT";s:7:"expires";s:29:"Thu, 02 Jun 2016 09:09:48 GMT";s:13:"cache-control";s:18:"private, max-age=0";s:22:"x-content-type-options";s:7:"nosniff";s:16:"x-xss-protection";s:13:"1; mode=block";s:6:"server";s:3:"GSE";}s:5:"build";s:14:"20130911020210";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(290, '_transient_timeout_feed_mod_66a70e9599b658d5cc038e8074597e7c', '1464901788', 'no'),
(291, '_transient_feed_mod_66a70e9599b658d5cc038e8074597e7c', '1464858588', 'no'),
(292, '_transient_timeout_feed_925a96b1918580ab3893979ca7a4a994', '1464901790', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(293, '_transient_feed_925a96b1918580ab3893979ca7a4a994', 'a:4:{s:5:"child";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:3:"RDF";a:1:{i:0;a:6:{s:4:"data";s:281:"\n\n    \n    \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n        \n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:24:"http://purl.org/rss/1.0/";a:2:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:91:"\n        \n        \n        \n        \n        \n        \n        \n        \n    \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:35:"http://www.wordpress-fr.net/planet/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:24:"http://purl.org/rss/1.0/";a:4:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"WordPress Francophone : Planet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.wordpress-fr.net/planet/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"items";a:1:{i:0;a:6:{s:4:"data";s:18:"\n        \n        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:3:"Seq";a:1:{i:0;a:6:{s:4:"data";s:749:"\n                        \n                                    \n                                    \n                                    \n                                    \n                                    \n                                    \n                                    \n                                    \n                                    \n                                    \n                                    \n                                    \n                                    \n                                    \n                                    \n                                    \n                                    \n                                    \n                                    \n                    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:2:"li";a:20:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:85:"https://www.gregoirenoyelle.com/wordpress-gestion-multilingue-avec-multilingualpress/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/jnTdGpX49Y0/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:53:"http://www.echodesplugins.li-an.fr/plugins/lazy-load/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:35:"http://www.geekeries.fr/gerer-page/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:51:"http://wpformation.com/connaitre-serveur-wordpress/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:66:"http://www.geekpress.fr/tutoriel-advanced-custom-fields-debutants/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/83d0IWEmxkM/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:7;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:61:"https://wpchannel.com/masquer-labels-champs-de-gravity-forms/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:8;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:50:"http://www.echodesplugins.li-an.fr/news/wp-fr-net/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:9;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:79:"https://fr.wordpress.org/2016/05/18/retour-du-global-wordpress-translation-day/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:10;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:67:"http://wpformation.com/comment-importer-vos-contenus-sur-wordpress/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:11;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:54:"http://www.geekpress.fr/weglot-mulitilingue-wordpress/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:12;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:65:"http://www.echodesplugins.li-an.fr/plugins/harrys-gravatar-cache/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:13;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:49:"http://wpformation.com/gerer-plusieurs-wordpress/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:14;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:40:"http://www.geekpress.fr/wordpress-4-5-2/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:15;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:51:"http://www.echodesplugins.li-an.fr/plugins/folders/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:16;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:65:"http://www.geekpress.fr/geekpress-wp-spread-wp-pro-grande-fusion/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:17;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:57:"http://www.echodesplugins.li-an.fr/plugins/client-portal/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:18;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:66:"https://wpchannel.com/afficher-categories-enfants-article-parents/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:19;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:66:"http://www.echodesplugins.li-an.fr/plugins/wp-notification-center/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}s:32:"http://purl.org/dc/elements/1.1/";a:4:{s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:6:"rights";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-06-02T10:54:14+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:22:"http://webns.net/mvcb/";a:1:{s:14:"generatorAgent";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:28:"http://moonmoon.inertie.org/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:2:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rdf+xml";s:4:"href";s:45:"http://feeds.feedburner.com/wordpress-fr/RaoY";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:3:"hub";s:4:"href";s:32:"http://pubsubhubbub.appspot.com/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:4:"info";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:3:"uri";s:17:"wordpress-fr/raoy";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}s:4:"item";a:20:{i:0;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:85:"https://www.gregoirenoyelle.com/wordpress-gestion-multilingue-avec-multilingualpress/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:78:"Grégoire Noyelle : WordPress :: Gestion du multilingue avec MultilingualPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/Ofz99Y7xNYA/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:854:"<div>Dans ce tutoriel nous verrons comment cr&eacute;er un site multilingue p&eacute;renne qui marche toujours quand l&rsquo;extension est d&eacute;sactiv&eacute;e :). Pourquoi MultilingualPress? Les plus C&rsquo;est &agrave; mon sens la meilleure solution dans cet &eacute;cosyst&egrave;me. MultitingualPress est d&eacute;velopp&eacute; par la fameuse agence allemande Insypde. C&rsquo;est d&eacute;j&agrave; un gage de qualit&eacute;. L&rsquo;outil se greffe sur la fonctionnalit&eacute; multilingue ...<p>Cet article a &eacute;t&eacute; publi&eacute; le 2 juin 2016 par <a href="https://www.gregoirenoyelle.com/">Gr&eacute;goire Noyelle</a>. Pour le lire en ligne, suivre le lien: <a href="https://www.gregoirenoyelle.com/wordpress-gestion-multilingue-avec-multilingualpress/">WordPress :: Gestion du multilingue avec MultilingualPress</a>.</p>\n</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-06-02T05:10:41+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"Grégoire Noyelle";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:958:"<div>Dans ce tutoriel nous verrons comment cr&eacute;er un site multilingue p&eacute;renne qui marche toujours quand l&rsquo;extension est d&eacute;sactiv&eacute;e :). Pourquoi MultilingualPress? Les plus C&rsquo;est &agrave; mon sens la meilleure solution dans cet &eacute;cosyst&egrave;me. MultitingualPress est d&eacute;velopp&eacute; par la fameuse agence allemande Insypde. C&rsquo;est d&eacute;j&agrave; un gage de qualit&eacute;. L&rsquo;outil se greffe sur la fonctionnalit&eacute; multilingue ...<p>Cet article a &eacute;t&eacute; publi&eacute; le 2 juin 2016 par <a href="https://www.gregoirenoyelle.com/">Gr&eacute;goire Noyelle</a>. Pour le lire en ligne, suivre le lien: <a href="https://www.gregoirenoyelle.com/wordpress-gestion-multilingue-avec-multilingualpress/">WordPress :: Gestion du multilingue avec MultilingualPress</a>.</p>\n</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/Ofz99Y7xNYA" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:85:"https://www.gregoirenoyelle.com/wordpress-gestion-multilingue-avec-multilingualpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/jnTdGpX49Y0/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:55:"WordPress Francophone : En route vers le nouveau site !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/vCWMs-_IXug/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1725:"<div>\n<p>Lors de l&rsquo;article du 23 mai, nous avons propos&eacute; &agrave; celles et ceux qui le souhaitaient de participer &agrave; la refonte du site et du forum de wordpress-fr.net. Une quinzaine de volontaires ont r&eacute;pondu &agrave; notre appel, nous les en remercions !</p>\n<p>Les participants ont re&ccedil;u les indications pour nous rejoindre sur le slack de l&rsquo;association et deux groupes de travail ont donc &eacute;t&eacute; constitu&eacute;s : un pour le forum, et l&rsquo;autre pour le site web.</p>\n<p>L&rsquo;objectif est maintenant de mener &agrave; bien la r&eacute;alisation de ces deux projets. Nous vous donnerons des nouvelles de leurs progressions vers fin juin.</p>\n<p>&Agrave; tr&egrave;s bient&ocirc;t alors !</p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=jnTdGpX49Y0:EzCr7RZps1k:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=jnTdGpX49Y0:EzCr7RZps1k:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=jnTdGpX49Y0:EzCr7RZps1k:V_sGLiPBpWU" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=jnTdGpX49Y0:EzCr7RZps1k:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=jnTdGpX49Y0:EzCr7RZps1k:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=jnTdGpX49Y0:EzCr7RZps1k:gIN9vFwOqvQ" border="0"></a>\n</div>\n<img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/jnTdGpX49Y0" height="1" width="1" alt="">\n</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-06-01T15:13:20+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Willy Bahuaud";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1829:"<div>\n<p>Lors de l&rsquo;article du 23 mai, nous avons propos&eacute; &agrave; celles et ceux qui le souhaitaient de participer &agrave; la refonte du site et du forum de wordpress-fr.net. Une quinzaine de volontaires ont r&eacute;pondu &agrave; notre appel, nous les en remercions !</p>\n<p>Les participants ont re&ccedil;u les indications pour nous rejoindre sur le slack de l&rsquo;association et deux groupes de travail ont donc &eacute;t&eacute; constitu&eacute;s : un pour le forum, et l&rsquo;autre pour le site web.</p>\n<p>L&rsquo;objectif est maintenant de mener &agrave; bien la r&eacute;alisation de ces deux projets. Nous vous donnerons des nouvelles de leurs progressions vers fin juin.</p>\n<p>&Agrave; tr&egrave;s bient&ocirc;t alors !</p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=jnTdGpX49Y0:EzCr7RZps1k:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=jnTdGpX49Y0:EzCr7RZps1k:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=jnTdGpX49Y0:EzCr7RZps1k:V_sGLiPBpWU" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=jnTdGpX49Y0:EzCr7RZps1k:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=jnTdGpX49Y0:EzCr7RZps1k:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=jnTdGpX49Y0:EzCr7RZps1k:gIN9vFwOqvQ" border="0"></a>\n</div>\n<img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/jnTdGpX49Y0" height="1" width="1" alt="">\n</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/vCWMs-_IXug" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/jnTdGpX49Y0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:53:"http://www.echodesplugins.li-an.fr/plugins/lazy-load/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:103:"L&#039;écho des plugins WordPress : Lazy Load, pour un chargement moins lourd de vos nombreuses images";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/ml0yh7H3qhQ/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:86:"<div>&Eacute;vitez de charger toutes vos images d''un coup avec l''effet Lazy Load</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-05-30T12:16:07+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"Li-An";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:190:"<div>&Eacute;vitez de charger toutes vos images d''un coup avec l''effet Lazy Load</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/ml0yh7H3qhQ" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:53:"http://www.echodesplugins.li-an.fr/plugins/lazy-load/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:35:"http://www.geekeries.fr/gerer-page/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:44:"Geekeries : Gérer plus Facilement vos Pages";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/fa7gilqv5zE/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:323:"<div>\n<p>Advanced Page Manager est une puissante extension WordPress capable de g&eacute;rer vos dizaines de pages WordPress.</p>\n<p>Cet article <a href="http://www.geekeries.fr/gerer-page/">G&eacute;rer plus Facilement vos Pages</a> est apparu en premier sur <a href="http://www.geekeries.fr/">Geekeries.fr</a>.</p>\n</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-05-28T21:30:12+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Benjamin Lupu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:427:"<div>\n<p>Advanced Page Manager est une puissante extension WordPress capable de g&eacute;rer vos dizaines de pages WordPress.</p>\n<p>Cet article <a href="http://www.geekeries.fr/gerer-page/">G&eacute;rer plus Facilement vos Pages</a> est apparu en premier sur <a href="http://www.geekeries.fr/">Geekeries.fr</a>.</p>\n</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/fa7gilqv5zE" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.geekeries.fr/gerer-page/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:51:"http://wpformation.com/connaitre-serveur-wordpress/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:59:"WP Formation : Tout connaitre du serveur de votre WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/vYbu3WBs3_0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1966:"<div>\n<p><img width="849" height="566" src="http://wpformation.com/wp-content/uploads/2016/05/infos-serveur-wordpress.jpg" class="attachment-Large size-Large wp-post-image" alt="informations-serveur-wordpress" style="display: block; margin-left: 0px; margin-right: auto; margin-top:10px; margin-bottom:10px; max-width: 640px; max-height: 400px; " srcset="http://wpformation.com/wp-content/uploads/2016/05/infos-serveur-wordpress.jpg 849w, http://wpformation.com/wp-content/uploads/2016/05/infos-serveur-wordpress-300x200.jpg 300w, http://wpformation.com/wp-content/uploads/2016/05/infos-serveur-wordpress-768x512.jpg 768w, http://wpformation.com/wp-content/uploads/2016/05/infos-serveur-wordpress-600x400.jpg 600w, http://wpformation.com/wp-content/uploads/2016/05/infos-serveur-wordpress-610x407.jpg 610w, http://wpformation.com/wp-content/uploads/2016/05/infos-serveur-wordpress-810x540.jpg 810w" sizes="(max-width: 849px) 100vw, 849px">Il est parfois utile de conna&icirc;tre les caract&eacute;ristiques du serveur qui h&eacute;berge votre WordPress. Que ce soit pour d&eacute;bugger ou pour v&eacute;rifier la compatibilit&eacute;/pr&eacute; requis d''un plugin, bien connaitre les limites de votre h&eacute;bergement peut s''av&eacute;rer tr&egrave;s utile... &nbsp; Pr&eacute; requis serveur pour votre WordPress Pour rappel, voici les pr&eacute; requis que recommande WordPress pour [&hellip;]</p>\n<p>\n</p>\n<hr>\n<a rel="nofollow" href="http://wpformation.com/connaitre-serveur-wordpress/">Tout connaitre du serveur de votre WordPress</a> est un article de <a title="Formation WordPress Ecommerce" href="http://wpformation.com/">WP Formation</a>\n<p><a href="http://wpformation.com/formation-wordpress/">Formation WordPress</a> &amp; <a href="http://wpformation.com/formation-woocommerce-e-commerce/">WooCommerce</a> - Pour ne rien manquer : <a href="http://wpformation.com/abonnement-newsletter-wpf/">Abonnez-vous &agrave; la newsletter</a> !<br></p>\n<hr>\n</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-05-25T09:20:22+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"WPFormation";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2070:"<div>\n<p><img width="849" height="566" src="http://wpformation.com/wp-content/uploads/2016/05/infos-serveur-wordpress.jpg" class="attachment-Large size-Large wp-post-image" alt="informations-serveur-wordpress" style="display: block; margin-left: 0px; margin-right: auto; margin-top:10px; margin-bottom:10px; max-width: 640px; max-height: 400px; " srcset="http://wpformation.com/wp-content/uploads/2016/05/infos-serveur-wordpress.jpg 849w, http://wpformation.com/wp-content/uploads/2016/05/infos-serveur-wordpress-300x200.jpg 300w, http://wpformation.com/wp-content/uploads/2016/05/infos-serveur-wordpress-768x512.jpg 768w, http://wpformation.com/wp-content/uploads/2016/05/infos-serveur-wordpress-600x400.jpg 600w, http://wpformation.com/wp-content/uploads/2016/05/infos-serveur-wordpress-610x407.jpg 610w, http://wpformation.com/wp-content/uploads/2016/05/infos-serveur-wordpress-810x540.jpg 810w" sizes="(max-width: 849px) 100vw, 849px">Il est parfois utile de conna&icirc;tre les caract&eacute;ristiques du serveur qui h&eacute;berge votre WordPress. Que ce soit pour d&eacute;bugger ou pour v&eacute;rifier la compatibilit&eacute;/pr&eacute; requis d''un plugin, bien connaitre les limites de votre h&eacute;bergement peut s''av&eacute;rer tr&egrave;s utile... &nbsp; Pr&eacute; requis serveur pour votre WordPress Pour rappel, voici les pr&eacute; requis que recommande WordPress pour [&hellip;]</p>\n<p>\n</p>\n<hr>\n<a rel="nofollow" href="http://wpformation.com/connaitre-serveur-wordpress/">Tout connaitre du serveur de votre WordPress</a> est un article de <a title="Formation WordPress Ecommerce" href="http://wpformation.com/">WP Formation</a>\n<p><a href="http://wpformation.com/formation-wordpress/">Formation WordPress</a> &amp; <a href="http://wpformation.com/formation-woocommerce-e-commerce/">WooCommerce</a> - Pour ne rien manquer : <a href="http://wpformation.com/abonnement-newsletter-wpf/">Abonnez-vous &agrave; la newsletter</a> !<br></p>\n<hr>\n</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/vYbu3WBs3_0" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:51:"http://wpformation.com/connaitre-serveur-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:66:"http://www.geekpress.fr/tutoriel-advanced-custom-fields-debutants/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:54:"GeekPress : Advanced Custom Fields pour les débutants";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/cZNrTh7vX1w/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:727:"<div>\n<p>ACF est devenu une extension incontournable ces derni&egrave;res ann&eacute;es pour le d&eacute;veloppement de sites WordPress. Utilis&eacute; par les particuliers comme par les professionnels, elle vous offre la possibilit&eacute; d&rsquo;ajouter des champs personnalis&eacute;s dans vos articles et pages. Voyons aujourd&rsquo;hui comment cr&eacute;er votre premier groupe de champs ! Cet article est le premier d&rsquo;une s&eacute;rie de [&hellip;]</p>\n<p>Cet article <a rel="nofollow" href="http://www.geekpress.fr/tutoriel-advanced-custom-fields-debutants/">Advanced Custom Fields pour les d&eacute;butants</a> est apparu en premier sur <a rel="nofollow" href="http://www.geekpress.fr/">GeekPress</a>.</p>\n</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-05-24T12:02:43+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Maxime BJ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:831:"<div>\n<p>ACF est devenu une extension incontournable ces derni&egrave;res ann&eacute;es pour le d&eacute;veloppement de sites WordPress. Utilis&eacute; par les particuliers comme par les professionnels, elle vous offre la possibilit&eacute; d&rsquo;ajouter des champs personnalis&eacute;s dans vos articles et pages. Voyons aujourd&rsquo;hui comment cr&eacute;er votre premier groupe de champs ! Cet article est le premier d&rsquo;une s&eacute;rie de [&hellip;]</p>\n<p>Cet article <a rel="nofollow" href="http://www.geekpress.fr/tutoriel-advanced-custom-fields-debutants/">Advanced Custom Fields pour les d&eacute;butants</a> est apparu en premier sur <a rel="nofollow" href="http://www.geekpress.fr/">GeekPress</a>.</p>\n</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/cZNrTh7vX1w" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:66:"http://www.geekpress.fr/tutoriel-advanced-custom-fields-debutants/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/83d0IWEmxkM/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:45:"WordPress Francophone : Des nouvelles de WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/DhFErLRjsP8/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:7619:"<div>\n<p>Le 21 d&eacute;cembre dernier nous avions le plaisir de vous faire partager des informations &agrave; propos du renouveau de l&rsquo;association WordPress Francophone. Ces derniers mois ont &eacute;t&eacute; l&rsquo;occasion de tout remettre &agrave; plat et nous souhaitions vous donner des nouvelles sur les diff&eacute;rents chantiers en cours. C&rsquo;est &eacute;galement le moment de faire appel &agrave; la communaut&eacute; pour constituer des groupes de travail sur les deux chantiers prioritaires : la refonte du site et l&rsquo;avenir du forum.</p>\n<p><span id="more-7561"></span></p>\n<h2>Refonte du site</h2>\n<p>Comme vous le savez tous, le site actuel de l&rsquo;association est d&eacute;pass&eacute;,&nbsp;tant en terme d&rsquo;aspect, qu&rsquo;en terme de fonctionnalit&eacute;s. Au fil du temps le site est devenu compliqu&eacute; &agrave; maintenir &ndash; pour ne pas dire impossible, et les fonctionnalit&eacute;s qu&rsquo;ils proposent ne r&eacute;pondent plus aux besoins r&eacute;els de la communaut&eacute;. Il &eacute;tait donc plus que temps d&rsquo;entamer la refonte !</p>\n<p>Nous avons d&rsquo;ores et d&eacute;j&agrave; d&eacute;finis les objectifs du futur site, d&eacute;velopp&eacute; de nouvelles fonctionnalit&eacute;s, et &eacute;bauch&eacute;&nbsp;l&rsquo;arborescence.</p>\n<p>Le site en&nbsp;cours de d&eacute;veloppement :</p>\n<ul>\n<li>Permettra aux membres de g&eacute;rer leurs adh&eacute;sions en ligne ;</li>\n<li>Proposera un annuaire des communaut&eacute;s et des &eacute;v&eacute;nements ;</li>\n<li>Donnera la possibilit&eacute; de poster / r&eacute;pondre &agrave; des offres d&rsquo;emploi ;</li>\n<li>Indiquera de mani&egrave;re claire comment trouver de l&rsquo;aide et comment&nbsp;contribuer &agrave; l&rsquo;&eacute;cosyst&egrave;me WordPress.</li>\n</ul>\n<p>Le site va aussi changer de nom et d&rsquo;URL afin de respecter <a href="https://wordpress.org/about/domains/" target="_blank">les r&egrave;gles de la fondation WordPress concernant la trademark</a>. Vous nous retrouverez bient&ocirc;t sur <a href="http://wpfr.net/" target="_blank">wpfr.net</a> !</p>\n<p>Le chantier est maintenant assez avanc&eacute;&nbsp;pour proposer &agrave; ceux qui le souhaitent de s&rsquo;investir au sein d&rsquo;un groupe de travail dont l&rsquo;objectif est la finalisation&nbsp;de ce nouveau site. Nous cherchons des volontaires :</p>\n<ul>\n<li>3 personnes pour la r&eacute;daction des contenus du futur site (les contenus existants sont d&eacute;j&agrave; r&eacute;import&eacute;s sur le site de d&eacute;veloppement) ;</li>\n<li>2 web-designers&nbsp;pour intervenir sur la charte graphique de l&rsquo;association, et sur la maquette du site.</li>\n</ul>\n<p>Si vous &ecirc;tes tent&eacute;s par l&rsquo;aventure, <strong>&eacute;crivez-nous &agrave; contact[at]wpfr.net</strong>.</p>\n<h2>L&rsquo;avenir du forum</h2>\n<p>Le forum d&rsquo;entraide est la section du site destin&eacute;e &agrave; l&rsquo;accompagnement des utilisateurs francophone du CMS. Si vous&nbsp;rencontrez un soucis dans l&rsquo;utilisation de WordPress, c&rsquo;est un des endroits ou vous trouverez le plus facilement de l&rsquo;aide. Les mod&eacute;rateurs b&eacute;n&eacute;voles y font d&rsquo;ailleurs un travail formidable qu&rsquo;il convient de remercier !</p>\n<p>Malheureusement, l&rsquo;outil qui fait tourner ce forum est lui aussi vieillissant &ndash; il s&rsquo;agit de PunBB.&nbsp;Lors de la refonte <strong>nous devons basculer vers une solution plus moderne</strong>. Le forum existant sera mis en &laquo; lecture seule &raquo; afin de toujours pouvoir relire les anciens sujets, mais vous ne pourrez plus d&eacute;poser, ni r&eacute;pondre aux sujets existants.</p>\n<p>Pour le choix, la mise en place et le suivi de cette nouvelle solution, nous souhaitons &eacute;galement&nbsp;constituer un groupe de travail. <strong>Nous invitons celles et ceux qui souhaitent s&rsquo;investir sur la refonte du&nbsp;forum d&rsquo;entraide &agrave; nous &eacute;crire sur contact[at]wpfr.net</strong>.</p>\n<p>Concernant le d&eacute;bat sur les diff&eacute;rents outils disponibles &agrave; ce jour pour obtenir du support (forum, Facebook, Twitter, Slack, etc.), nous consid&eacute;rons qu&rsquo;il n&rsquo;a pas lieu d&rsquo;&ecirc;tre. C&rsquo;est &agrave; chacun d&rsquo;opter pour l&rsquo;outil qui lui convient le mieux avec ses avantages et ses inconv&eacute;nients.</p>\n<h2>Changement de tr&eacute;sorier</h2>\n<p>&Eacute;milie Lebrun a r&eacute;cemment souhait&eacute; d&eacute;missionner du bureau de l&rsquo;association ; c&rsquo;est donc Willy Bahuaud qui a pris la place de tr&eacute;sorier. Le bureau est donc maintenant constitu&eacute; de Beno&icirc;t Catherineau (secr&eacute;taire), Willy Bahuaud (tr&eacute;sorier) et Aur&eacute;lien Denis (pr&eacute;sident).</p>\n<p>Les objectifs de cette &eacute;quipe reste inchang&eacute;s <strong>: mettre en place les outils permettant&nbsp;&agrave; tous ceux qui le souhaitent, particuliers et entreprises, d&rsquo;adh&eacute;rer &agrave; l&rsquo;association</strong>.</p>\n<p>Nous sommes dans une ann&eacute;e de transition tant sur le plan administratif que technique, cela prend du temps mais nous y travaillons.</p>\n<h2>Coup d&rsquo;&oelig;il sur le&nbsp;planning</h2>\n<p>Au niveau de la progression&nbsp;des&nbsp;diff&eacute;rentes actions, il est important de bien comprendre l&rsquo;imbrication des actions &agrave; mener :</p>\n<ul>\n<li>Les changements de statuts et de si&egrave;ge social sont quasiment finalis&eacute;s, nous attendons la validation officielle de la pr&eacute;fecture ;</li>\n<li>Le transfert du compte bancaire sera effectif sous peu, cela d&eacute;pendait des statuts ;</li>\n<li>Le nom de domaine et surtout l&rsquo;activation du certificat SSL d&eacute;pendent de l&rsquo;officialisation du nouveau si&egrave;ge ;</li>\n<li>L&rsquo;ouverture de l&rsquo;association &agrave; tous d&eacute;pend de la mise en ligne d&rsquo;un syst&egrave;me pour g&eacute;rer de mani&egrave;re efficace les adh&eacute;sions / renouvellements d&rsquo;o&ugrave; la mise en place du groupe de travail pour le site Internet ;</li>\n</ul>\n<p>La <strong>date limite pour postuler est fix&eacute;e au 31 mai 2016</strong>. Un chef de chantier sera choisi pour tenir inform&eacute; le bureau des &eacute;volutions men&eacute;es et ainsi communiquer de l&rsquo;&eacute;tat d&rsquo;avancement par l&rsquo;interm&eacute;diaire de ce blog.</p>\n<p>Nous sommes &agrave; votre disposition pour r&eacute;pondre &agrave; toutes vos interrogations et nous comptons sur vous pour que demain WPFR soit votre association aux services de chacun d&rsquo;entre vous !</p>\n<p>&nbsp;</p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=83d0IWEmxkM:sWCGB30URXc:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=83d0IWEmxkM:sWCGB30URXc:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=83d0IWEmxkM:sWCGB30URXc:V_sGLiPBpWU" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=83d0IWEmxkM:sWCGB30URXc:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=83d0IWEmxkM:sWCGB30URXc:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=83d0IWEmxkM:sWCGB30URXc:gIN9vFwOqvQ" border="0"></a>\n</div>\n<img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/83d0IWEmxkM" height="1" width="1" alt="">\n</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-05-23T12:43:36+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:7723:"<div>\n<p>Le 21 d&eacute;cembre dernier nous avions le plaisir de vous faire partager des informations &agrave; propos du renouveau de l&rsquo;association WordPress Francophone. Ces derniers mois ont &eacute;t&eacute; l&rsquo;occasion de tout remettre &agrave; plat et nous souhaitions vous donner des nouvelles sur les diff&eacute;rents chantiers en cours. C&rsquo;est &eacute;galement le moment de faire appel &agrave; la communaut&eacute; pour constituer des groupes de travail sur les deux chantiers prioritaires : la refonte du site et l&rsquo;avenir du forum.</p>\n<p><span id="more-7561"></span></p>\n<h2>Refonte du site</h2>\n<p>Comme vous le savez tous, le site actuel de l&rsquo;association est d&eacute;pass&eacute;,&nbsp;tant en terme d&rsquo;aspect, qu&rsquo;en terme de fonctionnalit&eacute;s. Au fil du temps le site est devenu compliqu&eacute; &agrave; maintenir &ndash; pour ne pas dire impossible, et les fonctionnalit&eacute;s qu&rsquo;ils proposent ne r&eacute;pondent plus aux besoins r&eacute;els de la communaut&eacute;. Il &eacute;tait donc plus que temps d&rsquo;entamer la refonte !</p>\n<p>Nous avons d&rsquo;ores et d&eacute;j&agrave; d&eacute;finis les objectifs du futur site, d&eacute;velopp&eacute; de nouvelles fonctionnalit&eacute;s, et &eacute;bauch&eacute;&nbsp;l&rsquo;arborescence.</p>\n<p>Le site en&nbsp;cours de d&eacute;veloppement :</p>\n<ul>\n<li>Permettra aux membres de g&eacute;rer leurs adh&eacute;sions en ligne ;</li>\n<li>Proposera un annuaire des communaut&eacute;s et des &eacute;v&eacute;nements ;</li>\n<li>Donnera la possibilit&eacute; de poster / r&eacute;pondre &agrave; des offres d&rsquo;emploi ;</li>\n<li>Indiquera de mani&egrave;re claire comment trouver de l&rsquo;aide et comment&nbsp;contribuer &agrave; l&rsquo;&eacute;cosyst&egrave;me WordPress.</li>\n</ul>\n<p>Le site va aussi changer de nom et d&rsquo;URL afin de respecter <a href="https://wordpress.org/about/domains/" target="_blank">les r&egrave;gles de la fondation WordPress concernant la trademark</a>. Vous nous retrouverez bient&ocirc;t sur <a href="http://wpfr.net/" target="_blank">wpfr.net</a> !</p>\n<p>Le chantier est maintenant assez avanc&eacute;&nbsp;pour proposer &agrave; ceux qui le souhaitent de s&rsquo;investir au sein d&rsquo;un groupe de travail dont l&rsquo;objectif est la finalisation&nbsp;de ce nouveau site. Nous cherchons des volontaires :</p>\n<ul>\n<li>3 personnes pour la r&eacute;daction des contenus du futur site (les contenus existants sont d&eacute;j&agrave; r&eacute;import&eacute;s sur le site de d&eacute;veloppement) ;</li>\n<li>2 web-designers&nbsp;pour intervenir sur la charte graphique de l&rsquo;association, et sur la maquette du site.</li>\n</ul>\n<p>Si vous &ecirc;tes tent&eacute;s par l&rsquo;aventure, <strong>&eacute;crivez-nous &agrave; contact[at]wpfr.net</strong>.</p>\n<h2>L&rsquo;avenir du forum</h2>\n<p>Le forum d&rsquo;entraide est la section du site destin&eacute;e &agrave; l&rsquo;accompagnement des utilisateurs francophone du CMS. Si vous&nbsp;rencontrez un soucis dans l&rsquo;utilisation de WordPress, c&rsquo;est un des endroits ou vous trouverez le plus facilement de l&rsquo;aide. Les mod&eacute;rateurs b&eacute;n&eacute;voles y font d&rsquo;ailleurs un travail formidable qu&rsquo;il convient de remercier !</p>\n<p>Malheureusement, l&rsquo;outil qui fait tourner ce forum est lui aussi vieillissant &ndash; il s&rsquo;agit de PunBB.&nbsp;Lors de la refonte <strong>nous devons basculer vers une solution plus moderne</strong>. Le forum existant sera mis en &laquo; lecture seule &raquo; afin de toujours pouvoir relire les anciens sujets, mais vous ne pourrez plus d&eacute;poser, ni r&eacute;pondre aux sujets existants.</p>\n<p>Pour le choix, la mise en place et le suivi de cette nouvelle solution, nous souhaitons &eacute;galement&nbsp;constituer un groupe de travail. <strong>Nous invitons celles et ceux qui souhaitent s&rsquo;investir sur la refonte du&nbsp;forum d&rsquo;entraide &agrave; nous &eacute;crire sur contact[at]wpfr.net</strong>.</p>\n<p>Concernant le d&eacute;bat sur les diff&eacute;rents outils disponibles &agrave; ce jour pour obtenir du support (forum, Facebook, Twitter, Slack, etc.), nous consid&eacute;rons qu&rsquo;il n&rsquo;a pas lieu d&rsquo;&ecirc;tre. C&rsquo;est &agrave; chacun d&rsquo;opter pour l&rsquo;outil qui lui convient le mieux avec ses avantages et ses inconv&eacute;nients.</p>\n<h2>Changement de tr&eacute;sorier</h2>\n<p>&Eacute;milie Lebrun a r&eacute;cemment souhait&eacute; d&eacute;missionner du bureau de l&rsquo;association ; c&rsquo;est donc Willy Bahuaud qui a pris la place de tr&eacute;sorier. Le bureau est donc maintenant constitu&eacute; de Beno&icirc;t Catherineau (secr&eacute;taire), Willy Bahuaud (tr&eacute;sorier) et Aur&eacute;lien Denis (pr&eacute;sident).</p>\n<p>Les objectifs de cette &eacute;quipe reste inchang&eacute;s <strong>: mettre en place les outils permettant&nbsp;&agrave; tous ceux qui le souhaitent, particuliers et entreprises, d&rsquo;adh&eacute;rer &agrave; l&rsquo;association</strong>.</p>\n<p>Nous sommes dans une ann&eacute;e de transition tant sur le plan administratif que technique, cela prend du temps mais nous y travaillons.</p>\n<h2>Coup d&rsquo;&oelig;il sur le&nbsp;planning</h2>\n<p>Au niveau de la progression&nbsp;des&nbsp;diff&eacute;rentes actions, il est important de bien comprendre l&rsquo;imbrication des actions &agrave; mener :</p>\n<ul>\n<li>Les changements de statuts et de si&egrave;ge social sont quasiment finalis&eacute;s, nous attendons la validation officielle de la pr&eacute;fecture ;</li>\n<li>Le transfert du compte bancaire sera effectif sous peu, cela d&eacute;pendait des statuts ;</li>\n<li>Le nom de domaine et surtout l&rsquo;activation du certificat SSL d&eacute;pendent de l&rsquo;officialisation du nouveau si&egrave;ge ;</li>\n<li>L&rsquo;ouverture de l&rsquo;association &agrave; tous d&eacute;pend de la mise en ligne d&rsquo;un syst&egrave;me pour g&eacute;rer de mani&egrave;re efficace les adh&eacute;sions / renouvellements d&rsquo;o&ugrave; la mise en place du groupe de travail pour le site Internet ;</li>\n</ul>\n<p>La <strong>date limite pour postuler est fix&eacute;e au 31 mai 2016</strong>. Un chef de chantier sera choisi pour tenir inform&eacute; le bureau des &eacute;volutions men&eacute;es et ainsi communiquer de l&rsquo;&eacute;tat d&rsquo;avancement par l&rsquo;interm&eacute;diaire de ce blog.</p>\n<p>Nous sommes &agrave; votre disposition pour r&eacute;pondre &agrave; toutes vos interrogations et nous comptons sur vous pour que demain WPFR soit votre association aux services de chacun d&rsquo;entre vous !</p>\n<p>&nbsp;</p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=83d0IWEmxkM:sWCGB30URXc:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=83d0IWEmxkM:sWCGB30URXc:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=83d0IWEmxkM:sWCGB30URXc:V_sGLiPBpWU" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=83d0IWEmxkM:sWCGB30URXc:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=83d0IWEmxkM:sWCGB30URXc:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=83d0IWEmxkM:sWCGB30URXc:gIN9vFwOqvQ" border="0"></a>\n</div>\n<img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/83d0IWEmxkM" height="1" width="1" alt="">\n</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/DhFErLRjsP8" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/83d0IWEmxkM/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:61:"https://wpchannel.com/masquer-labels-champs-de-gravity-forms/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:66:"WordPress Channel : Masquer les labels des champs de Gravity Forms";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/jVZ7x9M97nA/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:819:"<div>\n<p>Depuis la version 1.9 de Gravity Forms, il n&rsquo;est plus possible de masquer les labels pour les champs d&rsquo;un formulaire. Cette d&eacute;cision a &eacute;t&eacute; prise afin d&rsquo;am&eacute;liorer l&rsquo;accessibilit&eacute;, notamment pour les personnes malvoyantes. Toutefois, cette option peut nous faire d&eacute;faut dans certains cas. Une ligne de code permet de la r&eacute;tablir, voici donc une astuce [&hellip;]</p>\n<p><a rel="nofollow" href="https://wpchannel.com/author/aurelien-denis/">Aur&eacute;lien Denis</a> - <a rel="nofollow" href="https://wpchannel.com/">WordPress Channel - Tutoriels, th&egrave;mes &amp; plugins WordPress</a> - <a rel="nofollow" href="https://wpchannel.com/masquer-labels-champs-de-gravity-forms/">Masquer les labels des champs de Gravity Forms</a></p>\n</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-05-23T07:50:19+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:923:"<div>\n<p>Depuis la version 1.9 de Gravity Forms, il n&rsquo;est plus possible de masquer les labels pour les champs d&rsquo;un formulaire. Cette d&eacute;cision a &eacute;t&eacute; prise afin d&rsquo;am&eacute;liorer l&rsquo;accessibilit&eacute;, notamment pour les personnes malvoyantes. Toutefois, cette option peut nous faire d&eacute;faut dans certains cas. Une ligne de code permet de la r&eacute;tablir, voici donc une astuce [&hellip;]</p>\n<p><a rel="nofollow" href="https://wpchannel.com/author/aurelien-denis/">Aur&eacute;lien Denis</a> - <a rel="nofollow" href="https://wpchannel.com/">WordPress Channel - Tutoriels, th&egrave;mes &amp; plugins WordPress</a> - <a rel="nofollow" href="https://wpchannel.com/masquer-labels-champs-de-gravity-forms/">Masquer les labels des champs de Gravity Forms</a></p>\n</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/jVZ7x9M97nA" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wpchannel.com/masquer-labels-champs-de-gravity-forms/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:50:"http://www.echodesplugins.li-an.fr/news/wp-fr-net/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:85:"L&#039;écho des plugins WordPress : WP-fr.net: y’a-t-il un pilote dans l’avion ?";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/dP6MD47rHeE/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:104:"<div>R&eacute;flexion diverses sur la communaut&eacute; francophone Wordpress et son site officiel</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-05-21T16:44:32+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"Li-An";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:208:"<div>R&eacute;flexion diverses sur la communaut&eacute; francophone Wordpress et son site officiel</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/dP6MD47rHeE" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:50:"http://www.echodesplugins.li-an.fr/news/wp-fr-net/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:79:"https://fr.wordpress.org/2016/05/18/retour-du-global-wordpress-translation-day/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:54:"Français : Retour du Global WordPress Translation Day";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/zymro15RRsU/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4206:"<div>\n<p>Le GWTD s&rsquo;est tenu le 24 avril dernier. Cette premi&egrave;re &eacute;dition a &eacute;t&eacute; un v&eacute;ritable succ&egrave;s si l&rsquo;on se r&eacute;f&egrave;re aux chiffres du document ci-dessous :<br><a href="https://fr.wordpress.org/files/2016/05/WPGTD-EN-FR.jpg"><img class="aligncenter wp-image-479 size-large" src="https://fr.wordpress.org/files/2016/05/WPGTD-EN-FR-770x1024.jpg" alt="WPGTD-EN-FR" width="692" height="920" srcset="https://fr.wordpress.org/files/2016/05/WPGTD-EN-FR-770x1024.jpg 770w, https://fr.wordpress.org/files/2016/05/WPGTD-EN-FR-226x300.jpg 226w, https://fr.wordpress.org/files/2016/05/WPGTD-EN-FR-768x1021.jpg 768w, https://fr.wordpress.org/files/2016/05/WPGTD-EN-FR.jpg 1000w" sizes="(max-width: 692px) 100vw, 692px"></a></p>\n<h2>Pour ce qui est de la communaut&eacute; fran&ccedil;aise&nbsp;:</h2>\n<p>Cette journ&eacute;e a &eacute;t&eacute; un v&eacute;ritable plaisir &agrave; organiser et &agrave; animer, riche en rencontres, en adaptations aux attentes et besoins de toutes les personnes pr&eacute;sentes au Node de Bordeaux.</p>\n<ul>\n<li>22 extensions et th&egrave;mes ont &eacute;t&eacute; traduits et valid&eacute;s.</li>\n<li>3 traducteurs ont rejoint l&rsquo;&eacute;quipe des responsables de traduction en tant que PTE.</li>\n<li>Le glossaire a &eacute;t&eacute; actualis&eacute;.</li>\n<li>Une &eacute;bauche de travail sur les termes &eacute;pic&egrave;nes a &eacute;t&eacute; lanc&eacute;e.</li>\n<li>Un <a href="https://docs.google.com/spreadsheets/d/1NjmkCg7qHuTALBC3DES6mQLIq6xsq6xr9Bq4JOa4Wlk/edit#gid=0">Google doc</a> a &eacute;t&eacute; cr&eacute;&eacute; &agrave; l&rsquo;occasion pour regrouper les termes qui n&eacute;cessitent d&rsquo;&ecirc;tre int&eacute;gr&eacute;s au glossaire ou dans la r&eacute;flexion sur les termes &eacute;pic&egrave;nes.</li>\n</ul>\n<p>Mais au final, c&rsquo;est surtout une Communaut&eacute; de traducteurs et de traductrices que j&rsquo;ai vu travailler ensemble, curieuse et motiv&eacute;e pour <strong>vous</strong> fournir les meilleures trads possibles. Et &ccedil;a, cela ne se chiffre pas et cela vaut toutes les statistiques que vous voulez.</p>\n<p>Alors encore merci @sharebordeaux, @alysko (et &agrave; toute sa famille), @<span class="message_body">juliefrance33, @crash_47 (et &agrave; toute sa famille), @nicolasricher, @bastienho, @Geronimo (et &agrave; Abi), @css31, * </span></p>\n<p>Une sp&eacute;ciale d&eacute;dicace @rashely pour nous avoir donn&eacute; acc&egrave;s au Node et @wolforg (wolfrog pour l&rsquo;occasion) qui a tenu le rythme des validations tout au long de la journ&eacute;e via le Slack de la communaut&eacute;.</p>\n<p>Je vous donne rendez-vous l&rsquo;ann&eacute;e prochaine pour un nouveau GWTD et pr&eacute;parez-vous &agrave; des changements dans les traductions dans les prochaines versions de WordPress <img src="https://s.w.org/images/core/emoji/72x72/1f642.png" alt="&#128578;" class="wp-smiley" style="height: 1em; max-height: 1em;"></p>\n<p>Et en attendant si vous voulez revoir la session consacr&eacute;e &agrave; la traduction fran&ccedil;aise, la vid&eacute;o est disponible <a href="https://www.crowdcast.io/e/wptranslationday/register">ici</a> et les slides <a href="https://fxbenard.com/traduire-wordpress-francais/">ici</a>.</p>\n<p><a href="https://fr.wordpress.org/files/2016/05/WPGTD-FR.jpg"><img class="aligncenter wp-image-480 size-large" src="https://fr.wordpress.org/files/2016/05/WPGTD-FR-770x1024.jpg" alt="WPGTD-FR" width="692" height="920" srcset="https://fr.wordpress.org/files/2016/05/WPGTD-FR-770x1024.jpg 770w, https://fr.wordpress.org/files/2016/05/WPGTD-FR-226x300.jpg 226w, https://fr.wordpress.org/files/2016/05/WPGTD-FR-768x1021.jpg 768w, https://fr.wordpress.org/files/2016/05/WPGTD-FR.jpg 1000w" sizes="(max-width: 692px) 100vw, 692px"></a>** Je tenais &agrave; m&rsquo;excuser aupr&egrave;s des personnes que j&rsquo;aurais pu oublier de nommer et qui &eacute;taient pr&eacute;sentes lors de cette journ&eacute;e. N&rsquo;h&eacute;sitez pas &agrave; m&rsquo;indiquer vos pseudos sur le Slack #gtd, je les ajouterais dans l&rsquo;article. Big up &agrave; notre am&eacute;ricain de passage et &agrave; notre typographe.</p>\n</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-05-18T08:57:05+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"fxbenard";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4310:"<div>\n<p>Le GWTD s&rsquo;est tenu le 24 avril dernier. Cette premi&egrave;re &eacute;dition a &eacute;t&eacute; un v&eacute;ritable succ&egrave;s si l&rsquo;on se r&eacute;f&egrave;re aux chiffres du document ci-dessous :<br><a href="https://fr.wordpress.org/files/2016/05/WPGTD-EN-FR.jpg"><img class="aligncenter wp-image-479 size-large" src="https://fr.wordpress.org/files/2016/05/WPGTD-EN-FR-770x1024.jpg" alt="WPGTD-EN-FR" width="692" height="920" srcset="https://fr.wordpress.org/files/2016/05/WPGTD-EN-FR-770x1024.jpg 770w, https://fr.wordpress.org/files/2016/05/WPGTD-EN-FR-226x300.jpg 226w, https://fr.wordpress.org/files/2016/05/WPGTD-EN-FR-768x1021.jpg 768w, https://fr.wordpress.org/files/2016/05/WPGTD-EN-FR.jpg 1000w" sizes="(max-width: 692px) 100vw, 692px"></a></p>\n<h2>Pour ce qui est de la communaut&eacute; fran&ccedil;aise&nbsp;:</h2>\n<p>Cette journ&eacute;e a &eacute;t&eacute; un v&eacute;ritable plaisir &agrave; organiser et &agrave; animer, riche en rencontres, en adaptations aux attentes et besoins de toutes les personnes pr&eacute;sentes au Node de Bordeaux.</p>\n<ul>\n<li>22 extensions et th&egrave;mes ont &eacute;t&eacute; traduits et valid&eacute;s.</li>\n<li>3 traducteurs ont rejoint l&rsquo;&eacute;quipe des responsables de traduction en tant que PTE.</li>\n<li>Le glossaire a &eacute;t&eacute; actualis&eacute;.</li>\n<li>Une &eacute;bauche de travail sur les termes &eacute;pic&egrave;nes a &eacute;t&eacute; lanc&eacute;e.</li>\n<li>Un <a href="https://docs.google.com/spreadsheets/d/1NjmkCg7qHuTALBC3DES6mQLIq6xsq6xr9Bq4JOa4Wlk/edit#gid=0">Google doc</a> a &eacute;t&eacute; cr&eacute;&eacute; &agrave; l&rsquo;occasion pour regrouper les termes qui n&eacute;cessitent d&rsquo;&ecirc;tre int&eacute;gr&eacute;s au glossaire ou dans la r&eacute;flexion sur les termes &eacute;pic&egrave;nes.</li>\n</ul>\n<p>Mais au final, c&rsquo;est surtout une Communaut&eacute; de traducteurs et de traductrices que j&rsquo;ai vu travailler ensemble, curieuse et motiv&eacute;e pour <strong>vous</strong> fournir les meilleures trads possibles. Et &ccedil;a, cela ne se chiffre pas et cela vaut toutes les statistiques que vous voulez.</p>\n<p>Alors encore merci @sharebordeaux, @alysko (et &agrave; toute sa famille), @<span class="message_body">juliefrance33, @crash_47 (et &agrave; toute sa famille), @nicolasricher, @bastienho, @Geronimo (et &agrave; Abi), @css31, * </span></p>\n<p>Une sp&eacute;ciale d&eacute;dicace @rashely pour nous avoir donn&eacute; acc&egrave;s au Node et @wolforg (wolfrog pour l&rsquo;occasion) qui a tenu le rythme des validations tout au long de la journ&eacute;e via le Slack de la communaut&eacute;.</p>\n<p>Je vous donne rendez-vous l&rsquo;ann&eacute;e prochaine pour un nouveau GWTD et pr&eacute;parez-vous &agrave; des changements dans les traductions dans les prochaines versions de WordPress <img src="https://s.w.org/images/core/emoji/72x72/1f642.png" alt="&#128578;" class="wp-smiley" style="height: 1em; max-height: 1em;"></p>\n<p>Et en attendant si vous voulez revoir la session consacr&eacute;e &agrave; la traduction fran&ccedil;aise, la vid&eacute;o est disponible <a href="https://www.crowdcast.io/e/wptranslationday/register">ici</a> et les slides <a href="https://fxbenard.com/traduire-wordpress-francais/">ici</a>.</p>\n<p><a href="https://fr.wordpress.org/files/2016/05/WPGTD-FR.jpg"><img class="aligncenter wp-image-480 size-large" src="https://fr.wordpress.org/files/2016/05/WPGTD-FR-770x1024.jpg" alt="WPGTD-FR" width="692" height="920" srcset="https://fr.wordpress.org/files/2016/05/WPGTD-FR-770x1024.jpg 770w, https://fr.wordpress.org/files/2016/05/WPGTD-FR-226x300.jpg 226w, https://fr.wordpress.org/files/2016/05/WPGTD-FR-768x1021.jpg 768w, https://fr.wordpress.org/files/2016/05/WPGTD-FR.jpg 1000w" sizes="(max-width: 692px) 100vw, 692px"></a>** Je tenais &agrave; m&rsquo;excuser aupr&egrave;s des personnes que j&rsquo;aurais pu oublier de nommer et qui &eacute;taient pr&eacute;sentes lors de cette journ&eacute;e. N&rsquo;h&eacute;sitez pas &agrave; m&rsquo;indiquer vos pseudos sur le Slack #gtd, je les ajouterais dans l&rsquo;article. Big up &agrave; notre am&eacute;ricain de passage et &agrave; notre typographe.</p>\n</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/zymro15RRsU" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:79:"https://fr.wordpress.org/2016/05/18/retour-du-global-wordpress-translation-day/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:67:"http://wpformation.com/comment-importer-vos-contenus-sur-wordpress/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:60:"WP Formation : Comment importer vos contenus sur WordPress ?";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/W4AFClK1zSU/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1675:"<div>\n<p><img width="764" height="419" src="http://wpformation.com/wp-content/uploads/2016/05/export-wordpress-1.jpg" class="attachment-Large size-Large wp-post-image" alt="export-wordpress" style="display: block; margin-left: 0px; margin-right: auto; margin-top:10px; margin-bottom:10px; max-width: 640px; max-height: 400px; " srcset="http://wpformation.com/wp-content/uploads/2016/05/export-wordpress-1.jpg 764w, http://wpformation.com/wp-content/uploads/2016/05/export-wordpress-1-300x165.jpg 300w, http://wpformation.com/wp-content/uploads/2016/05/export-wordpress-1-600x329.jpg 600w, http://wpformation.com/wp-content/uploads/2016/05/export-wordpress-1-610x335.jpg 610w" sizes="(max-width: 764px) 100vw, 764px">Une refonte de site, un transfert de contenu depuis une autre plateforme que WordPress : il y a beaucoup de raisons qui peuvent vous pousser &agrave; utiliser l''importation de contenu. Vous avez des articles, des pages et des m&eacute;dias &agrave; transf&eacute;rer vers une installation WordPress ? Nous allons voir quelles solutions peuvent &ecirc;tre mises en [&hellip;]</p>\n<p>\n</p>\n<hr>\n<a rel="nofollow" href="http://wpformation.com/comment-importer-vos-contenus-sur-wordpress/">Comment importer vos contenus sur WordPress ?</a> est un article de <a title="Formation WordPress Ecommerce" href="http://wpformation.com/">WP Formation</a>\n<p><a href="http://wpformation.com/formation-wordpress/">Formation WordPress</a> &amp; <a href="http://wpformation.com/formation-woocommerce-e-commerce/">WooCommerce</a> - Pour ne rien manquer : <a href="http://wpformation.com/abonnement-newsletter-wpf/">Abonnez-vous &agrave; la newsletter</a> !<br></p>\n<hr>\n</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-05-18T08:40:50+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Alexandre";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1779:"<div>\n<p><img width="764" height="419" src="http://wpformation.com/wp-content/uploads/2016/05/export-wordpress-1.jpg" class="attachment-Large size-Large wp-post-image" alt="export-wordpress" style="display: block; margin-left: 0px; margin-right: auto; margin-top:10px; margin-bottom:10px; max-width: 640px; max-height: 400px; " srcset="http://wpformation.com/wp-content/uploads/2016/05/export-wordpress-1.jpg 764w, http://wpformation.com/wp-content/uploads/2016/05/export-wordpress-1-300x165.jpg 300w, http://wpformation.com/wp-content/uploads/2016/05/export-wordpress-1-600x329.jpg 600w, http://wpformation.com/wp-content/uploads/2016/05/export-wordpress-1-610x335.jpg 610w" sizes="(max-width: 764px) 100vw, 764px">Une refonte de site, un transfert de contenu depuis une autre plateforme que WordPress : il y a beaucoup de raisons qui peuvent vous pousser &agrave; utiliser l''importation de contenu. Vous avez des articles, des pages et des m&eacute;dias &agrave; transf&eacute;rer vers une installation WordPress ? Nous allons voir quelles solutions peuvent &ecirc;tre mises en [&hellip;]</p>\n<p>\n</p>\n<hr>\n<a rel="nofollow" href="http://wpformation.com/comment-importer-vos-contenus-sur-wordpress/">Comment importer vos contenus sur WordPress ?</a> est un article de <a title="Formation WordPress Ecommerce" href="http://wpformation.com/">WP Formation</a>\n<p><a href="http://wpformation.com/formation-wordpress/">Formation WordPress</a> &amp; <a href="http://wpformation.com/formation-woocommerce-e-commerce/">WooCommerce</a> - Pour ne rien manquer : <a href="http://wpformation.com/abonnement-newsletter-wpf/">Abonnez-vous &agrave; la newsletter</a> !<br></p>\n<hr>\n</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/W4AFClK1zSU" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:67:"http://wpformation.com/comment-importer-vos-contenus-sur-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:54:"http://www.geekpress.fr/weglot-mulitilingue-wordpress/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:83:"GeekPress : Pitch A Plugin – Weglot : Le plugin de multilingue WordPress ultime ?";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/zDDvi6D_kMY/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:485:"<div>\n<p>&Agrave; l''occasion de ce 1er podcast "Pitch A Plugin", nous avons le plaisir de vous pr&eacute;senter les auteurs de Weglot et une d&eacute;monstration de leur plugin multilingue pour WordPress.</p>\n<p>Cet article <a rel="nofollow" href="http://www.geekpress.fr/weglot-mulitilingue-wordpress/">Pitch A Plugin &ndash; Weglot : Le plugin de multilingue WordPress ultime ?</a> est apparu en premier sur <a rel="nofollow" href="http://www.geekpress.fr/">GeekPress</a>.</p>\n</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-05-16T21:34:54+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Jonathan B.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:589:"<div>\n<p>&Agrave; l''occasion de ce 1er podcast "Pitch A Plugin", nous avons le plaisir de vous pr&eacute;senter les auteurs de Weglot et une d&eacute;monstration de leur plugin multilingue pour WordPress.</p>\n<p>Cet article <a rel="nofollow" href="http://www.geekpress.fr/weglot-mulitilingue-wordpress/">Pitch A Plugin &ndash; Weglot : Le plugin de multilingue WordPress ultime ?</a> est apparu en premier sur <a rel="nofollow" href="http://www.geekpress.fr/">GeekPress</a>.</p>\n</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/zDDvi6D_kMY" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:54:"http://www.geekpress.fr/weglot-mulitilingue-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:65:"http://www.echodesplugins.li-an.fr/plugins/harrys-gravatar-cache/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:61:"L&#039;écho des plugins WordPress : Harry’s Gravatar Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/Gmk038qi6vs/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:40:"<div>Mettre les Gravatars en cache</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-05-12T10:35:05+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"Li-An";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:144:"<div>Mettre les Gravatars en cache</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/Gmk038qi6vs" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:65:"http://www.echodesplugins.li-an.fr/plugins/harrys-gravatar-cache/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:49:"http://wpformation.com/gerer-plusieurs-wordpress/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:62:"WP Formation : Comment gérer plusieurs WordPress facilement ?";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/4TOmPUkTq7Q/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1984:"<div>\n<p><img width="1198" height="637" src="http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress.jpg" class="attachment-Large size-Large wp-post-image" alt="gerer-plusieurs-wordpress" style="display: block; margin-left: 0px; margin-right: auto; margin-top:10px; margin-bottom:10px; max-width: 640px; max-height: 400px; " srcset="http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress.jpg 1198w, http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress-300x160.jpg 300w, http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress-768x408.jpg 768w, http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress-1024x544.jpg 1024w, http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress-600x319.jpg 600w, http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress-610x324.jpg 610w, http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress-810x431.jpg 810w, http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress-1140x606.jpg 1140w" sizes="(max-width: 1198px) 100vw, 1198px">Vous avez plusieurs sites WordPress &agrave; g&eacute;rer ? Il existe des solutions tr&egrave;s efficaces con&ccedil;ues pour automatiser et simplifier la plupart de vos t&acirc;ches quotidiennes dans la gestion de plusieurs sites. D&eacute;couvrez comment faire...</p>\n<p>\n</p>\n<hr>\n<a rel="nofollow" href="http://wpformation.com/gerer-plusieurs-wordpress/">Comment g&eacute;rer plusieurs WordPress facilement ?</a> est un article de <a title="Formation WordPress Ecommerce" href="http://wpformation.com/">WP Formation</a>\n<p><a href="http://wpformation.com/formation-wordpress/">Formation WordPress</a> &amp; <a href="http://wpformation.com/formation-woocommerce-e-commerce/">WooCommerce</a> - Pour ne rien manquer : <a href="http://wpformation.com/abonnement-newsletter-wpf/">Abonnez-vous &agrave; la newsletter</a> !<br></p>\n<hr>\n</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-05-09T08:55:28+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"WPFormation";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2088:"<div>\n<p><img width="1198" height="637" src="http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress.jpg" class="attachment-Large size-Large wp-post-image" alt="gerer-plusieurs-wordpress" style="display: block; margin-left: 0px; margin-right: auto; margin-top:10px; margin-bottom:10px; max-width: 640px; max-height: 400px; " srcset="http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress.jpg 1198w, http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress-300x160.jpg 300w, http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress-768x408.jpg 768w, http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress-1024x544.jpg 1024w, http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress-600x319.jpg 600w, http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress-610x324.jpg 610w, http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress-810x431.jpg 810w, http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress-1140x606.jpg 1140w" sizes="(max-width: 1198px) 100vw, 1198px">Vous avez plusieurs sites WordPress &agrave; g&eacute;rer ? Il existe des solutions tr&egrave;s efficaces con&ccedil;ues pour automatiser et simplifier la plupart de vos t&acirc;ches quotidiennes dans la gestion de plusieurs sites. D&eacute;couvrez comment faire...</p>\n<p>\n</p>\n<hr>\n<a rel="nofollow" href="http://wpformation.com/gerer-plusieurs-wordpress/">Comment g&eacute;rer plusieurs WordPress facilement ?</a> est un article de <a title="Formation WordPress Ecommerce" href="http://wpformation.com/">WP Formation</a>\n<p><a href="http://wpformation.com/formation-wordpress/">Formation WordPress</a> &amp; <a href="http://wpformation.com/formation-woocommerce-e-commerce/">WooCommerce</a> - Pour ne rien manquer : <a href="http://wpformation.com/abonnement-newsletter-wpf/">Abonnez-vous &agrave; la newsletter</a> !<br></p>\n<hr>\n</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/4TOmPUkTq7Q" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:49:"http://wpformation.com/gerer-plusieurs-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:40:"http://www.geekpress.fr/wordpress-4-5-2/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:67:"GeekPress : WordPress 4.5.2 : Mise à jour de sécurité critique !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/XlG2iS6i2zw/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:738:"<div>\n<p>L&rsquo;&eacute;quipe de WordPress vient de mettre &agrave; disposition la version 4.5.2. C&rsquo;est une mise &agrave; jour de s&eacute;curit&eacute; qui concerne les versions 4.5.1 et inf&eacute;rieures. WordPress 4.5.2 corrige deux failles de s&eacute;curit&eacute; critique. La librairie Pupload utilis&eacute;e pour l&rsquo;upload des images comportait une faille de type SOME (Same-Origin Method Execution), tandis que la librairie MediaElement.js [&hellip;]</p>\n<p>Cet article <a rel="nofollow" href="http://www.geekpress.fr/wordpress-4-5-2/">WordPress 4.5.2 : Mise &agrave; jour de s&eacute;curit&eacute; critique !</a> est apparu en premier sur <a rel="nofollow" href="http://www.geekpress.fr/">GeekPress</a>.</p>\n</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-05-06T23:38:07+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Jonathan B.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:842:"<div>\n<p>L&rsquo;&eacute;quipe de WordPress vient de mettre &agrave; disposition la version 4.5.2. C&rsquo;est une mise &agrave; jour de s&eacute;curit&eacute; qui concerne les versions 4.5.1 et inf&eacute;rieures. WordPress 4.5.2 corrige deux failles de s&eacute;curit&eacute; critique. La librairie Pupload utilis&eacute;e pour l&rsquo;upload des images comportait une faille de type SOME (Same-Origin Method Execution), tandis que la librairie MediaElement.js [&hellip;]</p>\n<p>Cet article <a rel="nofollow" href="http://www.geekpress.fr/wordpress-4-5-2/">WordPress 4.5.2 : Mise &agrave; jour de s&eacute;curit&eacute; critique !</a> est apparu en premier sur <a rel="nofollow" href="http://www.geekpress.fr/">GeekPress</a>.</p>\n</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/XlG2iS6i2zw" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:40:"http://www.geekpress.fr/wordpress-4-5-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:51:"http://www.echodesplugins.li-an.fr/plugins/folders/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:44:"L&#039;écho des plugins WordPress : Folders";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/rz5BkpJvkiM/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"<div>Rangez vos billets, pages et m&eacute;dias dans des r&eacute;pertoires c&ocirc;t&eacute; admin</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-05-06T18:07:31+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"Li-An";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:209:"<div>Rangez vos billets, pages et m&eacute;dias dans des r&eacute;pertoires c&ocirc;t&eacute; admin</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/rz5BkpJvkiM" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:51:"http://www.echodesplugins.li-an.fr/plugins/folders/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:65:"http://www.geekpress.fr/geekpress-wp-spread-wp-pro-grande-fusion/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:61:"GeekPress : GeekPress, WP-Spread, WP Pro : La grande fusion !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/nw2Kkhhgkus/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:674:"<div>\n<p>3 sources d&rsquo;informations WordPress fusionnent aujourd&rsquo;hui ! Afin de vous proposer un contenu plus complet nous avons d&eacute;cid&eacute; de joindre nos forces. Jonathan, de WP Media, tenait auparavant le blog GeekPress, proposant de nombreux tutoriels techniques autour de WordPress. Mais quand il a lanc&eacute; WP Rocket, il y a quelques ann&eacute;es de cela, il n&rsquo;a [&hellip;]</p>\n<p>Cet article <a rel="nofollow" href="http://www.geekpress.fr/geekpress-wp-spread-wp-pro-grande-fusion/">GeekPress, WP-Spread, WP Pro : La grande fusion !</a> est apparu en premier sur <a rel="nofollow" href="http://www.geekpress.fr/">GeekPress</a>.</p>\n</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-05-04T09:19:15+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Maxime BJ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:778:"<div>\n<p>3 sources d&rsquo;informations WordPress fusionnent aujourd&rsquo;hui ! Afin de vous proposer un contenu plus complet nous avons d&eacute;cid&eacute; de joindre nos forces. Jonathan, de WP Media, tenait auparavant le blog GeekPress, proposant de nombreux tutoriels techniques autour de WordPress. Mais quand il a lanc&eacute; WP Rocket, il y a quelques ann&eacute;es de cela, il n&rsquo;a [&hellip;]</p>\n<p>Cet article <a rel="nofollow" href="http://www.geekpress.fr/geekpress-wp-spread-wp-pro-grande-fusion/">GeekPress, WP-Spread, WP Pro : La grande fusion !</a> est apparu en premier sur <a rel="nofollow" href="http://www.geekpress.fr/">GeekPress</a>.</p>\n</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/nw2Kkhhgkus" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:65:"http://www.geekpress.fr/geekpress-wp-spread-wp-pro-grande-fusion/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:57:"http://www.echodesplugins.li-an.fr/plugins/client-portal/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:50:"L&#039;écho des plugins WordPress : Client Portal";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/rHf74t2f0Oo/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:77:"<div>Une page personnelle pour chacun de vos membres - nouvelle formule</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-05-03T06:29:39+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"Li-An";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:181:"<div>Une page personnelle pour chacun de vos membres - nouvelle formule</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/rHf74t2f0Oo" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:57:"http://www.echodesplugins.li-an.fr/plugins/client-portal/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:66:"https://wpchannel.com/afficher-categories-enfants-article-parents/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:84:"WordPress Channel : Afficher les catégories enfants d’un article sans les parents";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/GBAePwxQflc/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:958:"<div>\n<p>Les cat&eacute;gories d&rsquo;articles sous WordPress constituent le moyen principal pour classer vos contenus. &Agrave;&nbsp;la diff&eacute;rence des &eacute;tiquettes &ndash; anciennement d&eacute;nomm&eacute;es les mots-cl&eacute;s, les cat&eacute;gories sont compos&eacute;es de termes hi&eacute;rarchiques. Comprenez par l&agrave; que vous pouvez cr&eacute;er des cat&eacute;gories et des sous-cat&eacute;gories, des parents et des enfants. Le cas d&rsquo;&eacute;cole pos&eacute; ici consiste &agrave; n&rsquo;afficher que [&hellip;]</p>\n<p><a rel="nofollow" href="https://wpchannel.com/author/aurelien-denis/">Aur&eacute;lien Denis</a> - <a rel="nofollow" href="https://wpchannel.com/">WordPress Channel - Tutoriels, th&egrave;mes &amp; plugins WordPress</a> - <a rel="nofollow" href="https://wpchannel.com/afficher-categories-enfants-article-parents/">Afficher les cat&eacute;gories enfants d&rsquo;un article sans les parents</a></p>\n</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-05-02T08:00:30+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1062:"<div>\n<p>Les cat&eacute;gories d&rsquo;articles sous WordPress constituent le moyen principal pour classer vos contenus. &Agrave;&nbsp;la diff&eacute;rence des &eacute;tiquettes &ndash; anciennement d&eacute;nomm&eacute;es les mots-cl&eacute;s, les cat&eacute;gories sont compos&eacute;es de termes hi&eacute;rarchiques. Comprenez par l&agrave; que vous pouvez cr&eacute;er des cat&eacute;gories et des sous-cat&eacute;gories, des parents et des enfants. Le cas d&rsquo;&eacute;cole pos&eacute; ici consiste &agrave; n&rsquo;afficher que [&hellip;]</p>\n<p><a rel="nofollow" href="https://wpchannel.com/author/aurelien-denis/">Aur&eacute;lien Denis</a> - <a rel="nofollow" href="https://wpchannel.com/">WordPress Channel - Tutoriels, th&egrave;mes &amp; plugins WordPress</a> - <a rel="nofollow" href="https://wpchannel.com/afficher-categories-enfants-article-parents/">Afficher les cat&eacute;gories enfants d&rsquo;un article sans les parents</a></p>\n</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/GBAePwxQflc" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:66:"https://wpchannel.com/afficher-categories-enfants-article-parents/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:66:"http://www.echodesplugins.li-an.fr/plugins/wp-notification-center/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:59:"L&#039;écho des plugins WordPress : WP Notification Center";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/xEHlPreNJm8/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:82:"<div>Contenez l''avalanche de notifications dues aux plugins et th&egrave;mes</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-04-27T22:15:39+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"Li-An";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:186:"<div>Contenez l''avalanche de notifications dues aux plugins et th&egrave;mes</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/xEHlPreNJm8" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:66:"http://www.echodesplugins.li-an.fr/plugins/wp-notification-center/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:64;s:7:"headers";a:10:{s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:4:"etag";s:27:"yPx/GjoOK00DmIhpAdeYpQ+LYIE";s:13:"last-modified";s:29:"Thu, 02 Jun 2016 08:54:16 GMT";s:16:"content-encoding";s:4:"gzip";s:4:"date";s:29:"Thu, 02 Jun 2016 09:09:48 GMT";s:7:"expires";s:29:"Thu, 02 Jun 2016 09:09:48 GMT";s:13:"cache-control";s:18:"private, max-age=0";s:22:"x-content-type-options";s:7:"nosniff";s:16:"x-xss-protection";s:13:"1; mode=block";s:6:"server";s:3:"GSE";}s:5:"build";s:14:"20130911020210";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(294, '_transient_timeout_feed_mod_925a96b1918580ab3893979ca7a4a994', '1464901790', 'no'),
(295, '_transient_feed_mod_925a96b1918580ab3893979ca7a4a994', '1464858590', 'no'),
(296, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1464901791', 'no'),
(297, '_transient_feed_b9388c83948825c1edaef0d856b7b109', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n	\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:117:"\n		\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wordpress.org/plugins/browse/popular/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Jun 2016 08:58:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:30:{i:0;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Hello Dolly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/hello-dolly/#post-5790";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 29 May 2008 22:11:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"5790@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"This is not just a plugin, it symbolizes the hope and enthusiasm of an entire generation summed up in two words sung most famously by Louis Armstrong.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google XML Sitemaps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/google-sitemap-generator/#post-132";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:31:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"132@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"This plugin will generate a special XML sitemap which will help search engines to better index your blog.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Arne Brachhold";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"W3 Total Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/w3-total-cache/#post-12073";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 29 Jul 2009 18:46:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"12073@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:132:"Easy Web Performance Optimization (WPO) using caching: browser, page, object, database, minify and content delivery network support.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Frederick Townes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"TinyMCE Advanced";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wordpress.org/plugins/tinymce-advanced/#post-2082";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Jun 2007 15:00:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2082@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Enables the advanced features of TinyMCE, the WordPress WYSIWYG editor.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Andrew Ozz";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Akismet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:46:"https://wordpress.org/plugins/akismet/#post-15";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"15@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:98:"Akismet checks your comments against the Akismet Web service to see if they look like spam or not.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:9:"Yoast SEO";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wordpress.org/plugins/wordpress-seo/#post-8321";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Jan 2009 20:34:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"8321@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:114:"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using Yoast SEO plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"Google Analytics by MonsterInsights";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/plugins/google-analytics-for-wordpress/#post-2316";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Sep 2007 12:15:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2316@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:113:"Connect Google Analytics with WordPress by adding your Google Analytics tracking code. Get the stats that matter.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Syed Balkhi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"Advanced Custom Fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/advanced-custom-fields/#post-25254";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Mar 2011 04:07:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"25254@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:68:"Customise WordPress with powerful, professional and intuitive fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"elliotcondon";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Jetpack by WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wordpress.org/plugins/jetpack/#post-23862";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jan 2011 02:21:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"23862@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:107:"Increase your traffic, view your stats, speed up your site, and protect yourself from hackers with Jetpack.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Automattic";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Regenerate Thumbnails";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/regenerate-thumbnails/#post-6743";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 23 Aug 2008 14:38:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"6743@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:76:"Allows you to regenerate your thumbnails after changing the thumbnail sizes.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:25:"Alex Mills (Viper007Bond)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WP-PageNavi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wp-pagenavi/#post-363";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 23:17:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"363@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:49:"Adds a more advanced paging navigation interface.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Lester Chan";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/woocommerce/#post-29860";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Sep 2011 08:13:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"29860@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:97:"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"WooThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/contact-form-7/#post-2141";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2007 12:45:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2141@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:54:"Just another contact form plugin. Simple but flexible.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Really Simple CAPTCHA";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/really-simple-captcha/#post-9542";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 09 Mar 2009 02:17:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"9542@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"Really Simple CAPTCHA is a CAPTCHA module intended to be called from other plugins. It is originally created for my Contact Form 7 plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress Importer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wordpress-importer/#post-18101";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 May 2010 17:42:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"18101@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Brian Colinger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Wordfence Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wordfence/#post-29832";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 04 Sep 2011 03:13:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"29832@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"The Wordfence WordPress security plugin provides free enterprise-class WordPress security, protecting your website from hacks and malware.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Wordfence";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"NextGEN Gallery";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/nextgen-gallery/#post-1169";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Apr 2007 20:08:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"1169@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:121:"The most popular WordPress gallery plugin and one of the most popular plugins of all time with over 14 million downloads.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Alex Rabe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WP Super Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/wp-super-cache/#post-2572";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Nov 2007 11:40:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2572@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:73:"A very fast caching engine for WordPress that produces static html files.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Donncha O Caoimh";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"All in One SEO Pack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/all-in-one-seo-pack/#post-753";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Mar 2007 20:08:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"753@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"The most downloaded plugin for WordPress (almost 30 million downloads). Use All in One SEO Pack to automatically optimize your site for Search Engines";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"uberdose";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Duplicate Post";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/duplicate-post/#post-2646";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 05 Dec 2007 17:40:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2646@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:22:"Clone posts and pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Lopo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Page Builder by SiteOrigin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/siteorigin-panels/#post-51888";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Apr 2013 10:36:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"51888@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:111:"Build responsive page layouts using the widgets you know and love using this simple drag and drop page builder.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Greg Priday";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"Disable Comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wordpress.org/plugins/disable-comments/#post-26907";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 27 May 2011 04:42:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"26907@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:134:"Allows administrators to globally disable comments on their site. Comments can be disabled according to post type. Multisite friendly.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Samir Shah";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WP Multibyte Patch";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wp-multibyte-patch/#post-28395";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Jul 2011 12:22:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"28395@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Multibyte functionality enhancement for the WordPress Japanese package.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"plugin-master";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Google Analytics Dashboard for WP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wordpress.org/plugins/google-analytics-dashboard-for-wp/#post-50539";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 10 Mar 2013 17:07:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"50539@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:127:"Displays Google Analytics reports in your WordPress Dashboard. Inserts the latest Google Analytics tracking code in your pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Alin Marcu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"Black Studio TinyMCE Widget";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wordpress.org/plugins/black-studio-tinymce-widget/#post-31973";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 10 Nov 2011 15:06:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"31973@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:39:"The visual editor widget for Wordpress.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Marco Chiesi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"UpdraftPlus WordPress Backup Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/updraftplus/#post-38058";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 21 May 2012 15:14:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"38058@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:148:"Backup and restoration made easy. Complete backups; manual or scheduled (backup to S3, Dropbox, Google Drive, Rackspace, FTP, SFTP, email + others).";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"David Anderson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"iThemes Security (formerly Better WP Security)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/better-wp-security/#post-21738";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 22 Oct 2010 22:06:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"21738@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:146:"Take the guesswork out of WordPress security. iThemes Security offers 30+ ways to lock down WordPress in an easy-to-use WordPress security plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"iThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Clef Two-Factor Authentication";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wordpress.org/plugins/wpclef/#post-47509";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 27 Dec 2012 01:25:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"47509@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"Modern two-factor that people love to use: strong authentication without passwords or tokens; single sign on/off; magical user experience.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Dave Ross";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:10:"Duplicator";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/duplicator/#post-26607";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 16 May 2011 12:15:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"26607@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:88:"Duplicate, clone, backup, move and transfer an entire site from one location to another.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Cory Lamle";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Meta Slider";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/ml-slider/#post-49521";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Feb 2013 16:56:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"49521@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"Easy to use WordPress Slider plugin. Create responsive slideshows with Nivo Slider, Flex Slider, Coin Slider and Responsive Slides.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Matcha Labs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:46:"https://wordpress.org/plugins/rss/view/popular";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:12:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Thu, 02 Jun 2016 09:09:51 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:25:"strict-transport-security";s:11:"max-age=360";s:7:"expires";s:29:"Thu, 02 Jun 2016 09:33:05 GMT";s:13:"cache-control";s:0:"";s:6:"pragma";s:0:"";s:13:"last-modified";s:31:"Thu, 02 Jun 2016 08:58:05 +0000";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 250";}s:5:"build";s:14:"20130911020210";}', 'no'),
(298, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1464901791', 'no'),
(299, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1464858591', 'no'),
(300, '_transient_timeout_dash_bd94b8f41e74bae2f4dc72e9bd8379af', '1464901791', 'no'),
(301, '_transient_dash_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''http://feedproxy.google.com/~r/WordpressFrancophone/~3/jnTdGpX49Y0/''>En route vers le nouveau site !</a> <span class="rss-date">1 juin 2016</span><div class="rssSummary">Lors de l’article du 23 mai, nous avons proposé à celles et ceux qui le souhaitaient de participer à la refonte du site et du forum de wordpress-fr.net. Une quinzaine de volontaires ont répondu à notre appel, nous les en remercions ! Les participants ont reçu les indications pour nous rejoindre sur le slack de [&hellip;]</div></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/Ofz99Y7xNYA/''>Grégoire Noyelle : WordPress :: Gestion du multilingue avec MultilingualPress</a></li><li><a class=''rsswidget'' href=''http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/vCWMs-_IXug/''>WordPress Francophone : En route vers le nouveau site !</a></li><li><a class=''rsswidget'' href=''http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/ml0yh7H3qhQ/''>L&#039;écho des plugins WordPress : Lazy Load, pour un chargement moins lourd de vos nombreuses images</a></li></ul></div><div class="rss-widget"><ul><li class="dashboard-news-plugin"><span>Extensions populaires:</span> Page Builder by SiteOrigin&nbsp;<a href="plugin-install.php?tab=plugin-information&amp;plugin=siteorigin-panels&amp;_wpnonce=ad069b1825&amp;TB_iframe=true&amp;width=600&amp;height=800" class="thickbox open-plugin-details-modal" aria-label="Installer Page Builder by SiteOrigin">(Installer)</a></li></ul></div>', 'no'),
(308, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1464870492;s:7:"checked";a:4:{s:13:"smpl-skeleton";s:5:"2.1.1";s:13:"twentyfifteen";s:3:"1.5";s:14:"twentyfourteen";s:3:"1.7";s:13:"twentysixteen";s:3:"1.2";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(309, '_site_transient_timeout_wporg_theme_feature_list', '1464871321', 'yes'),
(310, '_site_transient_wporg_theme_feature_list', 'a:4:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:6:"Layout";a:9:{i:0;s:12:"fixed-layout";i:1;s:12:"fluid-layout";i:2;s:17:"responsive-layout";i:3;s:10:"one-column";i:4;s:11:"two-columns";i:5;s:13:"three-columns";i:6;s:12:"four-columns";i:7;s:12:"left-sidebar";i:8;s:13:"right-sidebar";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:8:"blavatar";i:2;s:10:"buddypress";i:3;s:17:"custom-background";i:4;s:13:"custom-colors";i:5;s:13:"custom-header";i:6;s:11:"custom-menu";i:7;s:12:"editor-style";i:8;s:21:"featured-image-header";i:9;s:15:"featured-images";i:10;s:15:"flexible-header";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes'),
(311, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1464871403', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(312, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5899";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3655";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3598";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3121";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2789";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2370";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2216";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2097";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"2046";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"2025";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1988";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1934";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1868";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"1705";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1689";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1583";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1536";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1393";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1316";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1289";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1220";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1109";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1083";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:4:"1008";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"986";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"974";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"922";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"915";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"911";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"906";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"905";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"840";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"830";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"794";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"776";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"767";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"761";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"758";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"752";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"750";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"747";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"743";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"707";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"699";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"692";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"691";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"688";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"687";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"667";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"661";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"653";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"645";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"614";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"612";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"602";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"599";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"598";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"596";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"586";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"579";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"573";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"568";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"562";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"553";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"553";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"543";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"534";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"523";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"521";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"516";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"514";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"512";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"509";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"506";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"482";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"462";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"461";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"457";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"456";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"452";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"443";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"443";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"428";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"423";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"423";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"421";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"421";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"419";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"414";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"412";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"406";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"404";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"404";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"402";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"400";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"400";}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";s:3:"398";}s:8:"linkedin";a:3:{s:4:"name";s:8:"linkedin";s:4:"slug";s:8:"linkedin";s:5:"count";s:3:"393";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"393";}s:7:"profile";a:3:{s:4:"name";s:7:"profile";s:4:"slug";s:7:"profile";s:5:"count";s:3:"392";}}', 'yes'),
(321, 'siteorigin_panels_initial_version', '2.4.9', 'no'),
(322, 'siteorigin_panels_settings', 'a:0:{}', 'yes'),
(323, 'widget_siteorigin-panels-post-content', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(324, 'widget_siteorigin-panels-postloop', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(325, 'widget_siteorigin-panels-builder', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(331, 'JSColortoFlux', 'checked', 'yes'),
(332, 'CKEditortoFlux', 'checked', 'yes'),
(333, 'ThemeorFluxCSS', '', 'yes'),
(334, 'FluxParseCanvas', 'checked', 'yes'),
(335, 'FluxRemoveHTML', 'checked', 'yes'),
(337, 'FluxMinWidth', '968', 'yes'),
(340, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1464870562;s:7:"checked";a:5:{s:25:"duplicator/duplicator.php";s:5:"1.1.6";s:39:"contact-form-lite/easy-contact-form.php";s:6:"1.0.83";s:38:"page-builder-sandwich/class-plugin.php";s:6:"2.15.1";s:21:"polylang/polylang.php";s:5:"1.9.1";s:23:"wordfence/wordfence.php";s:5:"6.1.8";}s:8:"response";a:1:{s:25:"duplicator/duplicator.php";O:8:"stdClass":8:{s:2:"id";s:5:"22600";s:4:"slug";s:10:"duplicator";s:6:"plugin";s:25:"duplicator/duplicator.php";s:11:"new_version";s:5:"1.1.8";s:3:"url";s:41:"https://wordpress.org/plugins/duplicator/";s:7:"package";s:58:"http://downloads.wordpress.org/plugin/duplicator.1.1.8.zip";s:6:"tested";s:5:"4.5.2";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}}s:12:"translations";a:0:{}s:9:"no_update";a:4:{s:39:"contact-form-lite/easy-contact-form.php";O:8:"stdClass":7:{s:2:"id";s:5:"59179";s:4:"slug";s:17:"contact-form-lite";s:6:"plugin";s:39:"contact-form-lite/easy-contact-form.php";s:11:"new_version";s:6:"1.0.83";s:3:"url";s:48:"https://wordpress.org/plugins/contact-form-lite/";s:7:"package";s:66:"http://downloads.wordpress.org/plugin/contact-form-lite.1.0.83.zip";s:14:"upgrade_notice";s:48:"IMPORTANT! SECURITY BUGS FIX, PLEASE UPDATE NOW!";}s:38:"page-builder-sandwich/class-plugin.php";O:8:"stdClass":6:{s:2:"id";s:5:"57740";s:4:"slug";s:21:"page-builder-sandwich";s:6:"plugin";s:38:"page-builder-sandwich/class-plugin.php";s:11:"new_version";s:6:"2.15.1";s:3:"url";s:52:"https://wordpress.org/plugins/page-builder-sandwich/";s:7:"package";s:70:"http://downloads.wordpress.org/plugin/page-builder-sandwich.2.15.1.zip";}s:21:"polylang/polylang.php";O:8:"stdClass":6:{s:2:"id";s:5:"25780";s:4:"slug";s:8:"polylang";s:6:"plugin";s:21:"polylang/polylang.php";s:11:"new_version";s:5:"1.9.1";s:3:"url";s:39:"https://wordpress.org/plugins/polylang/";s:7:"package";s:56:"http://downloads.wordpress.org/plugin/polylang.1.9.1.zip";}s:23:"wordfence/wordfence.php";O:8:"stdClass":6:{s:2:"id";s:5:"25305";s:4:"slug";s:9:"wordfence";s:6:"plugin";s:23:"wordfence/wordfence.php";s:11:"new_version";s:5:"6.1.8";s:3:"url";s:40:"https://wordpress.org/plugins/wordfence/";s:7:"package";s:57:"http://downloads.wordpress.org/plugin/wordfence.6.1.8.zip";}}}', 'yes'),
(349, 'skeleton_options', 'a:1:{s:8:"logotype";s:0:"";}', 'yes'),
(350, 'category_children', 'a:0:{}', 'yes'),
(353, '_site_transient_timeout_available_translations', '1464882673', 'yes'),
(354, '_site_transient_available_translations', 'a:81:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-10 15:55:55";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 14:44:00";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.5.2/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 22:48:01";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-11 22:42:10";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-03 14:05:41";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-01 06:39:12";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-19 23:16:37";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 06:38:51";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-02-16 15:34:57";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.3/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-11 18:32:36";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"Čeština‎";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 14:21:06";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 15:42:12";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 20:03:25";s:12:"english_name";s:23:"(Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/4.5.2/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-02 08:22:25";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.5.2/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-01 09:24:14";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 19:26:41";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-25 18:37:03";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 06:26:11";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-28 11:29:02";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-10 05:23:57";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-26 02:00:05";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 12:51:07";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 10:58:49";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-28 13:08:25";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-16 17:35:43";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 21:06:55";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 12:43:00";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-19 16:39:25";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-04 06:10:33";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-28 13:34:35";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-19 21:32:12";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 11:11:25";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-23 22:05:23";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-27 18:29:46";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-10 18:44:50";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 07:33:47";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-29 19:30:46";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-01 09:16:29";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-09-24 15:25:30";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.4/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-22 23:06:30";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-16 13:14:11";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-13 11:24:52";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-07 12:13:44";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-03 06:34:38";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-04 07:13:54";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-06 12:11:53";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-30 15:18:26";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-31 08:01:17";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-27 00:36:15";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 09:29:35";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-08 02:07:38";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-10 06:34:16";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-12 13:55:28";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-16 06:42:31";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-01-28 05:41:39";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.11";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.11/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 12:35:50";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-13 08:12:50";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-01-20 13:35:50";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.4.3/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 07:36:04";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-25 06:38:00";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.5.2/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-18 16:39:27";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.11";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.11/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-17 23:58:57";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-27 18:35:51";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-01 05:36:12";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 18:04:14";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-29 09:53:12";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-11-26 00:00:18";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-09 09:01:28";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-10 08:00:57";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-14 14:47:49";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-22 14:05:41";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-11-27 15:51:36";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-21 01:31:12";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-31 09:50:18";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-23 09:33:59";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-09 01:01:25";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-17 03:29:01";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 09:08:07";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'yes'),
(357, '_site_transient_timeout_theme_roots', '1464877713', 'yes'),
(358, '_site_transient_theme_roots', 'a:5:{s:14:"responsiveboat";s:7:"/themes";s:13:"smpl-skeleton";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=289 ;

--
-- Contenu de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'onecolumn-page.php'),
(11, 2, '_edit_lock', '1464872387:1'),
(12, 5, '_edit_lock', '1464875921:1'),
(13, 5, '_edit_last', '1'),
(14, 5, '_wp_page_template', 'default'),
(15, 8, '_edit_lock', '1464775711:1'),
(16, 9, '_edit_lock', '1464876000:1'),
(17, 9, '_edit_last', '1'),
(57, 9, 'ecf_formbuilder_format', '{"fields":[{"label":"Name","field_type":"name","icons":"fa-user","iconpos":"prepend","required":true,"field_options":{"size":"medium"},"cid":"c1"},{"label":"Email","field_type":"email","icons":"fa-envelope-o","iconpos":"prepend","required":true,"field_options":{"size":"medium"},"cid":"c2"},{"label":"Subject","field_type":"text","icons":"fa-asterisk","iconpos":"prepend","required":true,"field_options":{"size":"medium"},"cid":"c3"},{"label":"Message","field_type":"message","icons":"fa-comment","iconpos":"prepend","required":true,"field_options":{"size":"large"},"cid":"c4"}]}'),
(58, 9, 'ecf_meta_admin_email', 'feyza.kozan04@gmail.com'),
(59, 9, 'ecf_meta_email_format', 'html'),
(60, 9, 'ecf_meta_admin_email_header', 'Email from Wordpress'),
(61, 9, 'ecf_meta_admin_email_addinfo', 'on'),
(62, 9, 'ecf_meta_saveattch', 'off'),
(63, 9, 'ecf_meta_multiattach', 'on'),
(64, 9, 'ecf_email_action_on_sent', 'a:3:{i:0;s:4:"text";i:1;s:35:"Your Message Submitted Successfully";i:2;s:7:"http://";}'),
(65, 9, 'ecf_email_isauto_response', 'on'),
(66, 9, 'ecf_email_auto_response_from', ''),
(67, 9, 'ecf_email_auto_response_name', 'Wordpress'),
(68, 9, 'ecf_email_auto_response', 'Dear {name},\r\n\r\nThank you for contacting us, we will reply via ( {email} ) as soon as possible starting from {date_time}\r\n\r\n&nbsp;\r\n\r\nBest Regard,\r\n<em>Wordpress</em>'),
(69, 9, 'ecf_meta_use_captcha', 'off'),
(70, 9, 'ecf_meta_captcha_style', 'v2'),
(71, 9, 'ecf_meta_captcha_themes', 'light'),
(72, 9, 'ecf_meta_captcha_pub', ''),
(73, 9, 'ecf_meta_captcha_skey', ''),
(74, 9, 'ecf_meta_captcha_label', 'Enter characters below:'),
(75, 9, 'ecf_meta_form_width', '800'),
(76, 9, 'ecf_meta_form_back_col', '#ffffff'),
(77, 9, 'ecf_meta_form_border', '1'),
(78, 9, 'ecf_meta_form_border_col', '#d6d6d6'),
(79, 9, 'ecf_meta_form_isshadow', 'on'),
(80, 9, 'ecf_meta_form_shadow_col', '#383838'),
(81, 9, 'ecf_meta_form_text_col', '#666666'),
(82, 9, 'ecf_meta_form_header_col', '#F8F8F8'),
(83, 9, 'ecf_meta_form_istitle', 'off'),
(84, 9, 'ecf_meta_form_header_txt', ''),
(85, 9, 'ecf_meta_form_title_col', '#232323'),
(86, 9, 'ecf_meta_form_fields_br_col', '#2da5da'),
(87, 9, 'ecf_meta_form_fields_bk_col', '#ffffff'),
(88, 9, 'ecf_meta_form_fields_btn_col', '#2DA5DA'),
(89, 9, 'ecf_meta_form_fields_btn_txt', 'SEND'),
(90, 9, 'ecf_meta_form_fields_btn_anim', 'slide-down'),
(91, 9, 'ecf_meta_form_err_msg', 'This field is required'),
(92, 9, 'ecf_meta_admin_email_maxup', '0'),
(93, 9, 'ecf_meta_fileex', 'txt:text/plain\r\ncss:text/css\r\ngif:image/gif\r\npng:image/x-png\r\njpeg:image/jpeg\r\njpg:image/jpeg\r\nJPG:image/jpeg\r\njpe:image/jpeg\r\nTIFF:image/tiff\r\ntiff:image/tiff\r\ntif:image/tiff\r\nTIF:image/tiff\r\nbmp:image/x-ms-bmp\r\nBMP:image/x-ms-bmp\r\nai:application/postscript\r\neps:application/postscript\r\nps:application/postscript\r\nrtf:application/rtf\r\npdf:application/pdf\r\ndoc:application/msword\r\ndocx:application/msword\r\nxls:application/vnd.ms-excel\r\nxlsx:application/vnd.ms-excel\r\nzip:application/zip\r\nrar:application/rar\r\nwav:audio/wav\r\nmp3:audio/mp3\r\nppt:application/vnd.ms-powerpoint\r\naar:application/sb-replay\r\nsce:application/sb-scenario'),
(94, 9, 'ecf_meta_customcss', ''),
(95, 9, 'ecf_meta_customjs', ''),
(96, 15, '_edit_lock', '1464859401:1'),
(97, 16, '_edit_lock', '1464861380:1'),
(98, 16, '_edit_last', '1'),
(99, 16, '_wp_page_template', 'default'),
(100, 18, '_wp_attached_file', '2016/06/visu_2000.jpg'),
(101, 18, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2047;s:6:"height";i:1028;s:4:"file";s:21:"2016/06/visu_2000.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"visu_2000-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"visu_2000-300x151.jpg";s:5:"width";i:300;s:6:"height";i:151;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"visu_2000-768x386.jpg";s:5:"width";i:768;s:6:"height";i:386;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"visu_2000-1024x514.jpg";s:5:"width";i:1024;s:6:"height";i:514;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:20:"visu_2000-150x75.jpg";s:5:"width";i:150;s:6:"height";i:75;s:9:"mime-type";s:10:"image/jpeg";}s:10:"squared150";a:4:{s:4:"file";s:21:"visu_2000-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:10:"squared250";a:4:{s:4:"file";s:21:"visu_2000-250x250.jpg";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:7:"video43";a:4:{s:4:"file";s:21:"visu_2000-320x240.jpg";s:5:"width";i:320;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"video169";a:4:{s:4:"file";s:21:"visu_2000-320x180.jpg";s:5:"width";i:320;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(102, 19, '_wp_attached_file', '2016/06/cropped-visu_2000.jpg'),
(103, 19, '_wp_attachment_context', 'site-icon'),
(104, 19, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:29:"2016/06/cropped-visu_2000.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"cropped-visu_2000-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"cropped-visu_2000-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:29:"cropped-visu_2000-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:10:"squared150";a:4:{s:4:"file";s:29:"cropped-visu_2000-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:10:"squared250";a:4:{s:4:"file";s:29:"cropped-visu_2000-250x250.jpg";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:7:"video43";a:4:{s:4:"file";s:29:"cropped-visu_2000-320x240.jpg";s:5:"width";i:320;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"video169";a:4:{s:4:"file";s:29:"cropped-visu_2000-320x180.jpg";s:5:"width";i:320;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-270";a:4:{s:4:"file";s:29:"cropped-visu_2000-270x270.jpg";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-192";a:4:{s:4:"file";s:29:"cropped-visu_2000-192x192.jpg";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-180";a:4:{s:4:"file";s:29:"cropped-visu_2000-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"site_icon-32";a:4:{s:4:"file";s:27:"cropped-visu_2000-32x32.jpg";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(105, 18, '_wp_attachment_is_custom_background', 'smpl-skeleton'),
(106, 2, '_edit_last', '1'),
(125, 16, '_wp_trash_meta_status', 'publish'),
(126, 16, '_wp_trash_meta_time', '1464861391'),
(127, 16, '_wp_desired_post_slug', 'home'),
(129, 26, '_edit_lock', '1464863349:1'),
(130, 26, '_wp_trash_meta_status', 'draft'),
(131, 26, '_wp_trash_meta_time', '1464863355'),
(132, 26, '_wp_desired_post_slug', ''),
(133, 29, '_edit_lock', '1464872511:1'),
(134, 29, '_edit_last', '1'),
(135, 29, '_wp_page_template', 'onecolumn-page.php'),
(145, 39, '_wp_attached_file', '2016/06/logo.png'),
(146, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:159;s:6:"height";i:133;s:4:"file";s:16:"2016/06/logo.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"logo-150x133.png";s:5:"width";i:150;s:6:"height";i:133;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:16:"logo-150x125.png";s:5:"width";i:150;s:6:"height";i:125;s:9:"mime-type";s:9:"image/png";}s:10:"squared150";a:4:{s:4:"file";s:16:"logo-150x133.png";s:5:"width";i:150;s:6:"height";i:133;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(147, 40, '_edit_lock', '1464870882:1'),
(148, 40, '_edit_last', '1'),
(149, 40, '_wp_page_template', 'default'),
(159, 40, '_wp_trash_meta_status', 'publish'),
(160, 40, '_wp_trash_meta_time', '1464870944'),
(161, 40, '_wp_desired_post_slug', 'test'),
(162, 43, '_edit_lock', '1464871236:1'),
(163, 43, '_edit_last', '1'),
(164, 43, '_encloseme', '1'),
(183, 47, '_menu_item_type', 'post_type'),
(184, 47, '_menu_item_menu_item_parent', '0'),
(185, 47, '_menu_item_object_id', '2'),
(186, 47, '_menu_item_object', 'page'),
(187, 47, '_menu_item_target', ''),
(188, 47, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(189, 47, '_menu_item_xfn', ''),
(190, 47, '_menu_item_url', ''),
(192, 48, '_menu_item_type', 'post_type'),
(193, 48, '_menu_item_menu_item_parent', '0'),
(194, 48, '_menu_item_object_id', '29'),
(195, 48, '_menu_item_object', 'page'),
(196, 48, '_menu_item_target', ''),
(197, 48, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(198, 48, '_menu_item_xfn', ''),
(199, 48, '_menu_item_url', ''),
(201, 49, '_menu_item_type', 'post_type'),
(202, 49, '_menu_item_menu_item_parent', '0'),
(203, 49, '_menu_item_object_id', '29'),
(204, 49, '_menu_item_object', 'page'),
(205, 49, '_menu_item_target', ''),
(206, 49, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(207, 49, '_menu_item_xfn', ''),
(208, 49, '_menu_item_url', ''),
(209, 49, '_menu_item_orphaned', '1464871328'),
(210, 50, '_menu_item_type', 'post_type'),
(211, 50, '_menu_item_menu_item_parent', '0'),
(212, 50, '_menu_item_object_id', '5'),
(213, 50, '_menu_item_object', 'page'),
(214, 50, '_menu_item_target', ''),
(215, 50, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(216, 50, '_menu_item_xfn', ''),
(217, 50, '_menu_item_url', ''),
(219, 51, '_edit_lock', '1464871554:1'),
(220, 51, '_edit_last', '1'),
(221, 52, '_wp_attached_file', '2016/06/Associes-Groupe-Couleur2.jpg'),
(222, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:565;s:4:"file";s:36:"2016/06/Associes-Groupe-Couleur2.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"Associes-Groupe-Couleur2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"Associes-Groupe-Couleur2-300x170.jpg";s:5:"width";i:300;s:6:"height";i:170;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:36:"Associes-Groupe-Couleur2-768x434.jpg";s:5:"width";i:768;s:6:"height";i:434;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:35:"Associes-Groupe-Couleur2-150x85.jpg";s:5:"width";i:150;s:6:"height";i:85;s:9:"mime-type";s:10:"image/jpeg";}s:10:"squared150";a:4:{s:4:"file";s:36:"Associes-Groupe-Couleur2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:10:"squared250";a:4:{s:4:"file";s:36:"Associes-Groupe-Couleur2-250x250.jpg";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:7:"video43";a:4:{s:4:"file";s:36:"Associes-Groupe-Couleur2-320x240.jpg";s:5:"width";i:320;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"video169";a:4:{s:4:"file";s:36:"Associes-Groupe-Couleur2-320x180.jpg";s:5:"width";i:320;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(223, 51, '_wp_page_template', 'default'),
(224, 55, '_menu_item_type', 'post_type'),
(225, 55, '_menu_item_menu_item_parent', '0'),
(226, 55, '_menu_item_object_id', '51'),
(227, 55, '_menu_item_object', 'page'),
(228, 55, '_menu_item_target', ''),
(229, 55, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(230, 55, '_menu_item_xfn', ''),
(231, 55, '_menu_item_url', ''),
(233, 58, '_wp_attached_file', '2016/05/visu_492x334.jpg'),
(234, 58, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:492;s:6:"height";i:334;s:4:"file";s:24:"2016/05/visu_492x334.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"visu_492x334-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"visu_492x334-300x204.jpg";s:5:"width";i:300;s:6:"height";i:204;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:24:"visu_492x334-150x102.jpg";s:5:"width";i:150;s:6:"height";i:102;s:9:"mime-type";s:10:"image/jpeg";}s:10:"squared150";a:4:{s:4:"file";s:24:"visu_492x334-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:10:"squared250";a:4:{s:4:"file";s:24:"visu_492x334-250x250.jpg";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:7:"video43";a:4:{s:4:"file";s:24:"visu_492x334-320x240.jpg";s:5:"width";i:320;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:8:"video169";a:4:{s:4:"file";s:24:"visu_492x334-320x180.jpg";s:5:"width";i:320;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(235, 43, '_wp_trash_meta_status', 'publish'),
(236, 43, '_wp_trash_meta_time', '1464872789'),
(237, 43, '_wp_desired_post_slug', 'test'),
(238, 64, '_edit_lock', '1464874335:1'),
(239, 64, '_edit_last', '1'),
(240, 65, '_edit_lock', '1464873691:1'),
(241, 65, '_edit_last', '1'),
(242, 65, '_wp_page_template', 'default'),
(243, 69, '_menu_item_type', 'post_type'),
(244, 69, '_menu_item_menu_item_parent', '0'),
(245, 69, '_menu_item_object_id', '65'),
(246, 69, '_menu_item_object', 'page'),
(247, 69, '_menu_item_target', ''),
(248, 69, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(249, 69, '_menu_item_xfn', ''),
(250, 69, '_menu_item_url', ''),
(261, 72, '_edit_lock', '1464873934:1'),
(262, 72, '_edit_last', '1'),
(263, 72, '_wp_page_template', 'default'),
(273, 72, '_wp_trash_meta_status', 'publish'),
(274, 72, '_wp_trash_meta_time', '1464873941'),
(275, 72, '_wp_desired_post_slug', 'archives'),
(276, 75, '_edit_lock', '1464874302:1'),
(277, 75, '_edit_last', '1'),
(278, 76, '_edit_last', '1'),
(279, 76, '_wp_page_template', 'articles_archives.php'),
(280, 76, '_edit_lock', '1464874403:1'),
(281, 79, '_menu_item_type', 'post_type'),
(282, 79, '_menu_item_menu_item_parent', '0'),
(283, 79, '_menu_item_object_id', '76'),
(284, 79, '_menu_item_object', 'page'),
(285, 79, '_menu_item_target', ''),
(286, 79, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(287, 79, '_menu_item_xfn', ''),
(288, 79, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=80 ;

--
-- Contenu de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-05-30 11:00:09', '2016-05-30 09:00:09', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2016-05-30 11:00:09', '2016-05-30 09:00:09', '', 0, 'http://www.project.dev/?p=1', 0, 'post', '', 1),
(2, 1, '2016-05-30 11:00:09', '2016-05-30 09:00:09', '<h1></h1>\r\n<img class="size-full wp-image-58 alignleft" src="http://www.project.dev/wp-content/uploads/2016/05/visu_492x334.jpg" alt="visu_492x334" width="492" height="334" />\r\n<h1><strong>Expertises</strong></h1>\r\n<h2>Partenaire en stratégie sociale</h2>\r\nBarthélémy Avocats, c’est 50 ans d’une relation de partenariat avec plus de 5000 entreprises en matière de droit social, en conseil comme en contentieux.\r\n<h2>Formations</h2>\r\n<h3>Pour gérer au mieux\r\nvos relations sociales</h3>\r\nDécouvrez une offre complète de formations liées aux dernières actualités sociales, pouvant répondre aux objectifs d’un large public.\r\n\r\n&nbsp;', 'Home', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2016-06-02 14:59:46', '2016-06-02 12:59:46', '', 0, 'http://www.project.dev/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-05-30 11:00:27', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-05-30 11:00:27', '0000-00-00 00:00:00', '', 0, 'http://www.project.dev/?p=3', 0, 'post', '', 0),
(5, 1, '2016-06-01 11:34:29', '2016-06-01 09:34:29', '[easy-contactform id=9]', 'Contactez moi', '', 'publish', 'closed', 'closed', '', 'contactez-nous', '', '', '2016-06-02 11:31:38', '2016-06-02 09:31:38', '', 0, 'http://www.project.dev/?page_id=5', 0, 'page', '', 0),
(6, 1, '2016-06-01 11:34:29', '2016-06-01 09:34:29', '', 'Contactez moi', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-06-01 11:34:29', '2016-06-01 09:34:29', '', 5, 'http://www.project.dev/index.php/2016/06/01/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2016-06-01 12:06:04', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-06-01 12:06:04', '0000-00-00 00:00:00', '', 0, 'http://www.project.dev/?post_type=wr_cf_post_type&p=7', 0, 'wr_cf_post_type', '', 0),
(8, 1, '2016-06-01 12:06:52', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-06-01 12:06:52', '0000-00-00 00:00:00', '', 0, 'http://www.project.dev/?post_type=wr_cf_post_type&p=8', 0, 'wr_cf_post_type', '', 0),
(9, 1, '2016-06-01 12:15:55', '2016-06-01 10:15:55', '', 'Contact Form', '', 'publish', 'closed', 'closed', '', 'contact-form', '', '', '2016-06-01 12:18:54', '2016-06-01 10:18:54', '', 0, 'http://www.project.dev/?post_type=easycontactform&#038;p=9', 0, 'easycontactform', '', 0),
(10, 1, '2016-06-01 12:16:39', '2016-06-01 10:16:39', '[easy-contactform id=9]', 'Contactez moi', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-06-01 12:16:39', '2016-06-01 10:16:39', '', 5, 'http://www.project.dev/index.php/2016/06/01/5-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2016-06-02 11:22:50', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-06-02 11:22:50', '0000-00-00 00:00:00', '', 0, 'http://www.project.dev/?page_id=15', 0, 'page', '', 0),
(16, 1, '2016-06-02 11:32:23', '2016-06-02 09:32:23', 'Ceci est la page d''accueil', 'Home', '', 'trash', 'closed', 'closed', '', 'home__trashed', '', '', '2016-06-02 11:56:31', '2016-06-02 09:56:31', '', 0, 'http://www.project.dev/?page_id=16', 0, 'page', '', 0),
(17, 1, '2016-06-02 11:32:23', '2016-06-02 09:32:23', 'Ceci est la page d''accueil', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-06-02 11:32:23', '2016-06-02 09:32:23', '', 16, 'http://www.project.dev/index.php/2016/06/02/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2016-06-02 11:50:22', '2016-06-02 09:50:22', '', 'visu_2000', '', 'inherit', 'closed', 'closed', '', 'visu_2000', '', '', '2016-06-02 11:50:22', '2016-06-02 09:50:22', '', 0, 'http://www.project.dev/wp-content/uploads/2016/06/visu_2000.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2016-06-02 11:50:34', '2016-06-02 09:50:34', 'http://www.project.dev/wp-content/uploads/2016/06/cropped-visu_2000.jpg', 'cropped-visu_2000.jpg', '', 'inherit', 'closed', 'closed', '', 'cropped-visu_2000-jpg', '', '', '2016-06-02 11:50:34', '2016-06-02 09:50:34', '', 0, 'http://www.project.dev/wp-content/uploads/2016/06/cropped-visu_2000.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2016-06-02 11:53:24', '2016-06-02 09:53:24', '<h2>Expertises</h2>\r\n<h3>Partenaire en\r\nstratégie sociale</h3>\r\nBarthélémy Avocats, c’est 50 ans d’une relation de partenariat avec plus de 5000 entreprises en matière de droit social, en conseil comme en contentieux.', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-06-02 11:53:24', '2016-06-02 09:53:24', '', 2, 'http://www.project.dev/index.php/2016/06/02/2-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2016-06-02 12:22:25', '2016-06-02 10:22:25', '<h2>Expertises</h2>\r\n<h3>Partenaire en\r\nstratégie sociale</h3>\r\nBarthélémy Avocats, c’est 50 ans d’une relation de <br> partenariat avec plus de 5000 entreprises en matière de <br>droit social, en conseil comme en contentieux.', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-06-02 12:22:25', '2016-06-02 10:22:25', '', 2, 'http://www.project.dev/index.php/2016/06/02/2-revision-v1/', 0, 'revision', '', 0),
(26, 0, '2016-06-02 12:26:49', '2016-06-02 10:26:49', '<div style="position: relative;" id="PlugNeditFluxEditor" data-pneversion="Flux" data-hguides="" data-vguides="" data-pnekey="" data-pnebackgroundcolor="" data-fluxadjustsize="true" data-fluxautoposition="true"><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="PlugNeditFluxEditorS-Spacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer468" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer480" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer568" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer667" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer736" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer414" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer375" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer800" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer598" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer359" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer640" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="PlugNeditFluxEditorS-SpacerMobile" class="fluxspacer"></div><div id="PNEcanvasI" style="position: absolute; width: 0px; top: 0px; z-index: 10; left: 50%; overflow: visible;"><div id="FluxFullCanvas" data-canvas="FluxFullCanvas" style=""></div><div id="FluxMobileCanvas" data-canvas="FluxMobileCanvas" style="" data-fluxresonsive="*IsFluxResponsive*" class="FluxResponsiveCanvas"></div></div><div style="position:absolute;top:0px;left:0px;width:100%;" id="PNEFixedWidthI"></div><div style="position:absolute;top:0px;left:0px;width:100%;" id="PNEFixedMobileWidthI"></div></div>', '', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2016-06-02 12:29:15', '2016-06-02 10:29:15', '', 0, 'http://www.project.dev/?page_id=26', 0, 'page', '', 0),
(27, 1, '2016-06-02 12:26:49', '2016-06-02 10:26:49', '<div style="position: relative;" id="PlugNeditFluxEditor" data-pneversion="Flux" data-hguides="" data-vguides="" data-pnekey="" data-pnebackgroundcolor="" data-fluxadjustsize="true" data-fluxautoposition="true"><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="PlugNeditFluxEditorS-Spacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer468" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer480" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer568" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer667" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer736" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer414" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer375" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer800" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer598" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer359" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer640" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="PlugNeditFluxEditorS-SpacerMobile" class="fluxspacer"></div><div id="PNEcanvasI" style="position: absolute; width: 0px; top: 0px; z-index: 10; left: 50%; overflow: visible;"><div id="FluxFullCanvas" data-canvas="FluxFullCanvas" style=""></div><div id="FluxMobileCanvas" data-canvas="FluxMobileCanvas" style="" data-fluxresonsive="*IsFluxResponsive*" class="FluxResponsiveCanvas"></div></div><div style="position:absolute;top:0px;left:0px;width:100%;" id="PNEFixedWidthI"></div><div style="position:absolute;top:0px;left:0px;width:100%;" id="PNEFixedMobileWidthI"></div></div>', '', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2016-06-02 12:26:49', '2016-06-02 10:26:49', '', 26, 'http://www.project.dev/index.php/2016/06/02/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2016-06-02 12:31:08', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-06-02 12:31:08', '0000-00-00 00:00:00', '', 0, 'http://www.project.dev/?page_id=28', 0, 'page', '', 0),
(29, 1, '2016-06-02 14:23:02', '2016-06-02 12:23:02', '<h4>Les avocats Barthélémy vous accompagnent au quotidien dans la construction de votre stratégie sociale.</h4>\r\n<p style="margin-bottom: 20px;">Cabinet expert en droit social, Barthélémy Avocats met à votre service tout son savoir-faire dans la réalisation de missions d’audit, de prestations de conseil ou de défense des intérêts devant les juridictions sociales, répressives, spécialisées ou administratives.</p>\r\n<p style="margin-bottom: 20px;"></p>\r\n\r\n<h2>Être à vos côtés</h2>\r\n<div class="alignLeft abonnement-social">\r\n<h3>L’abonnement social annuel*</h3>\r\n<div class="accompagnement">\r\n<ul>\r\n 	<li>Un interlocuteur dédié</li>\r\n 	<li>Des services sur mesure</li>\r\n 	<li>Un traitement prioritaire de vos demandes</li>\r\n 	<li>Une offre personnalisée</li>\r\n</ul>\r\n*Hors prestations judiciaires\r\n\r\n</div>\r\n</div>\r\n<div class="alignLeft ou-separe">\r\n<h3>ou</h3>\r\n</div>\r\n<div class="alignRight assistance-ponctuelle">\r\n<h3>L’assistance ponctuelle**</h3>\r\n<div class="accompagnement">\r\n<ul>\r\n 	<li>Prestations de conseil en droit social sur demande</li>\r\n 	<li>Défense des intérêts devant les juridictions compétentes\r\n(Conseil de Prud’hommes, Tribunal des Affaires de Sécurité Sociale...)</li>\r\n</ul>\r\n**Facturée à la vacation selon un taux horaire défini.\r\n\r\n</div>\r\n</div>\r\n<div class="clear"></div>', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2016-06-02 15:01:50', '2016-06-02 13:01:50', '', 0, 'http://www.project.dev/?page_id=29', 0, 'page', '', 0),
(30, 1, '2016-06-02 14:15:32', '2016-06-02 12:15:32', '<h1>Les avocats Barthélémy vous accompagnent au quotidien dans la construction de votre stratégie sociale.</h1>', 'Services', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2016-06-02 14:15:32', '2016-06-02 12:15:32', '', 29, 'http://www.project.dev/index.php/2016/06/02/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2016-06-02 14:16:06', '2016-06-02 12:16:06', '<h2>Les avocats Barthélémy vous accompagnent au quotidien dans la construction de votre stratégie sociale.</h2>', 'Services', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2016-06-02 14:16:06', '2016-06-02 12:16:06', '', 29, 'http://www.project.dev/index.php/2016/06/02/29-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2016-06-02 14:16:23', '2016-06-02 12:16:23', '<h3>Les avocats Barthélémy vous accompagnent au quotidien dans la construction de votre stratégie sociale.</h3>', 'Services', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2016-06-02 14:16:23', '2016-06-02 12:16:23', '', 29, 'http://www.project.dev/index.php/2016/06/02/29-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2016-06-02 14:16:39', '2016-06-02 12:16:39', '<h4>Les avocats Barthélémy vous accompagnent au quotidien dans la construction de votre stratégie sociale.</h4>', 'Services', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2016-06-02 14:16:39', '2016-06-02 12:16:39', '', 29, 'http://www.project.dev/index.php/2016/06/02/29-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2016-06-02 14:17:15', '2016-06-02 12:17:15', '<h4>Les avocats Barthélémy vous accompagnent au quotidien dans la construction de votre stratégie sociale.</h4>\r\n<p>Cabinet expert en droit social, Barthélémy Avocats met à votre service tout son savoir-faire dans la réalisation de missions d’audit, de prestations de conseil ou de défense des intérêts devant les juridictions sociales, répressives, spécialisées ou administratives.</p>', 'Services', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2016-06-02 14:17:15', '2016-06-02 12:17:15', '', 29, 'http://www.project.dev/index.php/2016/06/02/29-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2016-06-02 14:22:17', '2016-06-02 12:22:17', '<h4>  Les avocats Barthélémy vous accompagnent au quotidien dans la construction de votre stratégie sociale.  </h4>  <p style="margin-bottom: 20px;">Cabinet expert en droit social, Barthélémy Avocats met à votre service tout son savoir-faire dans la réalisation de missions d’audit, de prestations de conseil ou de défense des intérêts devant les juridictions sociales, répressives, spécialisées ou administratives.</p>', 'Services', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2016-06-02 14:22:17', '2016-06-02 12:22:17', '', 29, 'http://www.project.dev/index.php/2016/06/02/29-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2016-06-02 14:32:58', '2016-06-02 12:32:58', '', 'logo', '', 'inherit', 'closed', 'closed', '', 'logo', '', '', '2016-06-02 14:32:58', '2016-06-02 12:32:58', '', 0, 'http://www.project.dev/wp-content/uploads/2016/06/logo.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2016-06-02 14:34:41', '2016-06-02 12:34:41', 'test', 'Test', '', 'trash', 'closed', 'closed', '', 'test__trashed', '', '', '2016-06-02 14:35:44', '2016-06-02 12:35:44', '', 0, 'http://www.project.dev/?page_id=40', 0, 'page', '', 0),
(41, 1, '2016-06-02 14:34:41', '2016-06-02 12:34:41', 'test', 'Test', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2016-06-02 14:34:41', '2016-06-02 12:34:41', '', 40, 'http://www.project.dev/index.php/2016/06/02/40-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2016-06-02 14:40:35', '2016-06-02 12:40:35', 'test', 'test', '', 'trash', 'closed', 'closed', '', 'test__trashed', '', '', '2016-06-02 15:06:29', '2016-06-02 13:06:29', '', 0, 'http://www.project.dev/?p=43', 0, 'post', '', 0),
(44, 1, '2016-06-02 14:40:35', '2016-06-02 12:40:35', 'test', 'test', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2016-06-02 14:40:35', '2016-06-02 12:40:35', '', 43, 'http://www.project.dev/index.php/2016/06/02/43-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2016-06-02 14:42:22', '2016-06-02 12:42:22', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2016-06-02 15:33:36', '2016-06-02 13:33:36', '', 0, 'http://www.project.dev/?p=47', 1, 'nav_menu_item', '', 0),
(48, 1, '2016-06-02 14:42:22', '2016-06-02 12:42:22', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2016-06-02 15:33:36', '2016-06-02 13:33:36', '', 0, 'http://www.project.dev/?p=48', 2, 'nav_menu_item', '', 0),
(49, 1, '2016-06-02 14:42:08', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-06-02 14:42:08', '0000-00-00 00:00:00', '', 0, 'http://www.project.dev/?p=49', 1, 'nav_menu_item', '', 0),
(50, 1, '2016-06-02 14:42:22', '2016-06-02 12:42:22', '', 'Contact', '', 'publish', 'closed', 'closed', '', '50', '', '', '2016-06-02 15:33:36', '2016-06-02 13:33:36', '', 0, 'http://www.project.dev/?p=50', 6, 'nav_menu_item', '', 0),
(51, 1, '2016-06-02 14:45:53', '2016-06-02 12:45:53', '<img src="http://www.project.dev/wp-content/uploads/2016/06/Associes-Groupe-Couleur2-300x170.jpg" alt="Associes-Groupe-Couleur2" width="700" height="570" class="alignnone size-medium wp-image-52" />', 'Qui sommes-nous ?', '', 'publish', 'closed', 'closed', '', 'qui-sommes-nous', '', '', '2016-06-02 14:45:53', '2016-06-02 12:45:53', '', 0, 'http://www.project.dev/?page_id=51', 0, 'page', '', 0),
(52, 1, '2016-06-02 14:44:55', '2016-06-02 12:44:55', '', 'Associes-Groupe-Couleur2', '', 'inherit', 'closed', 'closed', '', 'associes-groupe-couleur2', '', '', '2016-06-02 14:44:55', '2016-06-02 12:44:55', '', 51, 'http://www.project.dev/wp-content/uploads/2016/06/Associes-Groupe-Couleur2.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2016-06-02 14:45:08', '2016-06-02 12:45:08', '<img src="http://www.project.dev/wp-content/uploads/2016/06/Associes-Groupe-Couleur2-300x170.jpg" alt="Associes-Groupe-Couleur2" width="300" height="170" class="alignnone size-medium wp-image-52" />', 'Qui sommes-nous ?', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2016-06-02 14:45:08', '2016-06-02 12:45:08', '', 51, 'http://www.project.dev/index.php/2016/06/02/51-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2016-06-02 14:45:37', '2016-06-02 12:45:37', '<img src="http://www.project.dev/wp-content/uploads/2016/06/Associes-Groupe-Couleur2-300x170.jpg" alt="Associes-Groupe-Couleur2" width="700" height="570" class="alignnone size-medium wp-image-52" />', 'Qui sommes-nous ?', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2016-06-02 14:45:37', '2016-06-02 12:45:37', '', 51, 'http://www.project.dev/index.php/2016/06/02/51-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2016-06-02 14:46:15', '2016-06-02 12:46:15', ' ', '', '', 'publish', 'closed', 'closed', '', '55', '', '', '2016-06-02 15:33:36', '2016-06-02 13:33:36', '', 0, 'http://www.project.dev/?p=55', 5, 'nav_menu_item', '', 0),
(57, 1, '2016-06-02 14:53:37', '2016-06-02 12:53:37', '<h1>Expertises</h1>\r\n<h2>Partenaire en stratégie sociale</h2>\r\nBarthélémy Avocats, c’est 50 ans d’une relation de <br> partenariat avec plus de 5000 entreprises en matière de <br>droit social, en conseil comme en contentieux.', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-06-02 14:53:37', '2016-06-02 12:53:37', '', 2, 'http://www.project.dev/?p=57', 0, 'revision', '', 0),
(58, 1, '2016-06-02 14:55:31', '2016-06-02 12:55:31', '', 'visu_492x334', '', 'inherit', 'closed', 'closed', '', 'visu_492x334', '', '', '2016-06-02 14:55:31', '2016-06-02 12:55:31', '', 2, 'http://www.project.dev/wp-content/uploads/2016/05/visu_492x334.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2016-06-02 14:56:19', '2016-06-02 12:56:19', '<h1><strong>Expertises</strong></h1>\r\n<h2>Partenaire en stratégie sociale</h2>\r\n<img class="size-full wp-image-58 alignright" src="http://www.project.dev/wp-content/uploads/2016/05/visu_492x334.jpg" alt="visu_492x334" width="492" height="334" />Barthélémy Avocats, c’est 50 ans d’une relation de partenariat avec plus de 5000 entreprises en matière de droit social, en conseil comme en contentieux.\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2016-06-02 14:56:19', '2016-06-02 12:56:19', '', 2, 'http://www.project.dev/?p=59', 0, 'revision', '', 0),
(60, 1, '2016-06-02 14:56:14', '2016-06-02 12:56:14', '<h1><strong>Expertises</strong></h1>\r\n<h2>Partenaire en stratégie sociale</h2>\r\n<img class="size-full wp-image-58 alignright" src="http://www.project.dev/wp-content/uploads/2016/05/visu_492x334.jpg" alt="visu_492x334" width="492" height="334" />Barthélémy Avocats, c’est 50 ans d’une relation de partenariat avec plus de 5000 entreprises en matière de droit social, en conseil comme en contentieux.\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-06-02 14:56:14', '2016-06-02 12:56:14', '', 2, 'http://www.project.dev/?p=60', 0, 'revision', '', 0),
(61, 1, '2016-06-02 14:56:55', '2016-06-02 12:56:55', '<h1><strong>Expertises</strong></h1>\r\n<h2>Partenaire en stratégie sociale</h2>\r\n<img class="size-full wp-image-58 alignleft" src="http://www.project.dev/wp-content/uploads/2016/05/visu_492x334.jpg" alt="visu_492x334" width="492" height="334" />Barthélémy Avocats, c’est 50 ans d’une relation de partenariat avec plus de 5000 entreprises en matière de droit social, en conseil comme en contentieux.\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-06-02 14:56:55', '2016-06-02 12:56:55', '', 2, 'http://www.project.dev/?p=61', 0, 'revision', '', 0),
(62, 1, '2016-06-02 14:59:46', '2016-06-02 12:59:46', '<h1></h1>\r\n<img class="size-full wp-image-58 alignleft" src="http://www.project.dev/wp-content/uploads/2016/05/visu_492x334.jpg" alt="visu_492x334" width="492" height="334" />\r\n<h1><strong>Expertises</strong></h1>\r\n<h2>Partenaire en stratégie sociale</h2>\r\nBarthélémy Avocats, c’est 50 ans d’une relation de partenariat avec plus de 5000 entreprises en matière de droit social, en conseil comme en contentieux.\r\n<h2>Formations</h2>\r\n<h3>Pour gérer au mieux\r\nvos relations sociales</h3>\r\nDécouvrez une offre complète de formations liées aux dernières actualités sociales, pouvant répondre aux objectifs d’un large public.\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-06-02 14:59:46', '2016-06-02 12:59:46', '', 2, 'http://www.project.dev/?p=62', 0, 'revision', '', 0),
(63, 1, '2016-06-02 15:01:50', '2016-06-02 13:01:50', '<h4>Les avocats Barthélémy vous accompagnent au quotidien dans la construction de votre stratégie sociale.</h4>\r\n<p style="margin-bottom: 20px;">Cabinet expert en droit social, Barthélémy Avocats met à votre service tout son savoir-faire dans la réalisation de missions d’audit, de prestations de conseil ou de défense des intérêts devant les juridictions sociales, répressives, spécialisées ou administratives.</p>\r\n<p style="margin-bottom: 20px;"></p>\r\n\r\n<h2>Être à vos côtés</h2>\r\n<div class="alignLeft abonnement-social">\r\n<h3>L’abonnement social annuel*</h3>\r\n<div class="accompagnement">\r\n<ul>\r\n 	<li>Un interlocuteur dédié</li>\r\n 	<li>Des services sur mesure</li>\r\n 	<li>Un traitement prioritaire de vos demandes</li>\r\n 	<li>Une offre personnalisée</li>\r\n</ul>\r\n*Hors prestations judiciaires\r\n\r\n</div>\r\n</div>\r\n<div class="alignLeft ou-separe">\r\n<h3>ou</h3>\r\n</div>\r\n<div class="alignRight assistance-ponctuelle">\r\n<h3>L’assistance ponctuelle**</h3>\r\n<div class="accompagnement">\r\n<ul>\r\n 	<li>Prestations de conseil en droit social sur demande</li>\r\n 	<li>Défense des intérêts devant les juridictions compétentes\r\n(Conseil de Prud’hommes, Tribunal des Affaires de Sécurité Sociale...)</li>\r\n</ul>\r\n**Facturée à la vacation selon un taux horaire défini.\r\n\r\n</div>\r\n</div>\r\n<div class="clear"></div>', 'Services', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2016-06-02 15:01:50', '2016-06-02 13:01:50', '', 29, 'http://www.project.dev/?p=63', 0, 'revision', '', 0),
(64, 1, '2016-06-02 15:13:07', '0000-00-00 00:00:00', '[gallery ids="58,52,39,19"]', 'Blog', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-06-02 15:13:07', '2016-06-02 13:13:07', '', 0, 'http://www.project.dev/?p=64', 0, 'post', '', 0),
(65, 1, '2016-06-02 15:13:20', '2016-06-02 13:13:20', '[gallery columns="4" ids="58,52,39,19"]', 'Gallerie', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2016-06-02 15:14:32', '2016-06-02 13:14:32', '', 0, 'http://www.project.dev/?page_id=65', 0, 'page', '', 0),
(66, 1, '2016-06-02 15:07:49', '2016-06-02 13:07:49', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2016-06-02 15:07:49', '2016-06-02 13:07:49', '', 65, 'http://www.project.dev/?p=66', 0, 'revision', '', 0),
(67, 1, '2016-06-02 15:10:59', '2016-06-02 13:10:59', '[gallery ids="58,52,39,19"]', 'Blog', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2016-06-02 15:10:59', '2016-06-02 13:10:59', '', 64, 'http://www.project.dev/?p=67', 0, 'revision', '', 0),
(68, 1, '2016-06-02 15:13:20', '2016-06-02 13:13:20', '[gallery columns="4" ids="58,52,39,19"]', 'Blog', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2016-06-02 15:13:20', '2016-06-02 13:13:20', '', 65, 'http://www.project.dev/?p=68', 0, 'revision', '', 0),
(69, 1, '2016-06-02 15:13:38', '2016-06-02 13:13:38', ' ', '', '', 'publish', 'closed', 'closed', '', '69', '', '', '2016-06-02 15:33:36', '2016-06-02 13:33:36', '', 0, 'http://www.project.dev/?p=69', 3, 'nav_menu_item', '', 0),
(70, 1, '2016-06-02 15:14:32', '2016-06-02 13:14:32', '[gallery columns="4" ids="58,52,39,19"]', 'Gallerie', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2016-06-02 15:14:32', '2016-06-02 13:14:32', '', 65, 'http://www.project.dev/?p=70', 0, 'revision', '', 0),
(72, 1, '2016-06-02 15:22:33', '2016-06-02 13:22:33', '', 'Archives', '', 'trash', 'closed', 'closed', '', 'archives__trashed', '', '', '2016-06-02 15:25:41', '2016-06-02 13:25:41', '', 0, 'http://www.project.dev/?page_id=72', 0, 'page', '', 0),
(73, 1, '2016-06-02 15:22:33', '2016-06-02 13:22:33', '', 'Archives', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2016-06-02 15:22:33', '2016-06-02 13:22:33', '', 72, 'http://www.project.dev/?p=73', 0, 'revision', '', 0),
(75, 1, '2016-06-02 15:30:52', '0000-00-00 00:00:00', '', 'Archives', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-06-02 15:30:52', '2016-06-02 13:30:52', '', 0, 'http://www.project.dev/?page_id=75', 0, 'page', '', 0),
(76, 1, '2016-06-02 15:31:59', '2016-06-02 13:31:59', '', 'Archives', '', 'publish', 'closed', 'closed', '', 'archives', '', '', '2016-06-02 15:31:59', '2016-06-02 13:31:59', '', 0, 'http://www.project.dev/?page_id=76', 0, 'page', '', 0),
(77, 1, '2016-06-02 15:31:59', '2016-06-02 13:31:59', '', 'Archives', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2016-06-02 15:31:59', '2016-06-02 13:31:59', '', 76, 'http://www.project.dev/?p=77', 0, 'revision', '', 0),
(78, 1, '2016-06-02 15:32:03', '2016-06-02 13:32:03', '', 'Archives', '', 'inherit', 'closed', 'closed', '', '76-autosave-v1', '', '', '2016-06-02 15:32:03', '2016-06-02 13:32:03', '', 76, 'http://www.project.dev/?p=78', 0, 'revision', '', 0),
(79, 1, '2016-06-02 15:32:42', '2016-06-02 13:32:42', ' ', '', '', 'publish', 'closed', 'closed', '', '79', '', '', '2016-06-02 15:33:36', '2016-06-02 13:33:36', '', 0, 'http://www.project.dev/?p=79', 4, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=4 ;

--
-- Contenu de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(3, 'menu1', 'menu1', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(43, 1, 0),
(47, 3, 0),
(48, 3, 0),
(50, 3, 0),
(55, 3, 0),
(64, 1, 0),
(69, 3, 0),
(79, 3, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=4 ;

--
-- Contenu de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=38 ;

--
-- Contenu de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'fey89'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'easycform_pointer'),
(13, 1, 'show_welcome_panel', '1'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 2, 'nickname', 'Abonne'),
(17, 2, 'first_name', ''),
(18, 2, 'last_name', ''),
(19, 2, 'description', ''),
(20, 2, 'rich_editing', 'true'),
(21, 2, 'comment_shortcuts', 'false'),
(22, 2, 'admin_color', 'fresh'),
(23, 2, 'use_ssl', '0'),
(24, 2, 'show_admin_bar_front', 'true'),
(25, 2, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(26, 2, 'wp_user_level', '0'),
(27, 2, 'dismissed_wp_pointers', ''),
(30, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(31, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(32, 1, 'nav_menu_recently_edited', '3'),
(34, 1, 'wp_user-settings', 'mfold=o&libraryContent=browse&editor=tinymce&post_dfw=off&imgsize=full'),
(35, 1, 'wp_user-settings-time', '1464872170'),
(36, 1, 'so_panels_directory_enabled', '1'),
(37, 1, 'session_tokens', 'a:2:{s:64:"8c9d2c83115d40c89d42a81c521c0f2ea7dc71a2d5725b71329aed47cd69aaf3";a:4:{s:10:"expiration";i:1465043225;s:2:"ip";s:12:"192.168.56.1";s:2:"ua";s:116:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56";s:5:"login";i:1464870425;}s:64:"b7e6f7d702257d2521c546b02f01b44e3264b3f607615b545a49b62ff49eb5d9";a:4:{s:10:"expiration";i:1465049661;s:2:"ip";s:12:"192.168.56.1";s:2:"ua";s:116:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56";s:5:"login";i:1464876861;}}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'fey89', '$P$BmApsMnjTf0MiFNiT.8jOaViUpJRi60', 'fey89', 'feyza.kozan04@gmail.com', '', '2016-05-30 09:00:09', '', 0, 'fey89'),
(2, 'Abonne', '$P$BIrl5ruULaEDcWgpVM8XWMovXQgioa0', 'abonne', 'abonne@me.com', '', '2016-05-30 09:53:00', '', 0, 'Abonne');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wfBadLeechers`
--

CREATE TABLE IF NOT EXISTS `wp_wfBadLeechers` (
  `eMin` int(10) unsigned NOT NULL,
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `hits` int(10) unsigned NOT NULL,
  PRIMARY KEY (`eMin`,`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wfBlockedIPLog`
--

CREATE TABLE IF NOT EXISTS `wp_wfBlockedIPLog` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `countryCode` varchar(2) NOT NULL,
  `blockCount` int(10) unsigned NOT NULL DEFAULT '0',
  `unixday` int(10) unsigned NOT NULL,
  PRIMARY KEY (`IP`,`unixday`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wfBlocks`
--

CREATE TABLE IF NOT EXISTS `wp_wfBlocks` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `blockedTime` bigint(20) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `lastAttempt` int(10) unsigned DEFAULT '0',
  `blockedHits` int(10) unsigned DEFAULT '0',
  `wfsn` tinyint(3) unsigned DEFAULT '0',
  `permanent` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`IP`),
  KEY `k1` (`wfsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wfBlocksAdv`
--

CREATE TABLE IF NOT EXISTS `wp_wfBlocksAdv` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `blockType` char(2) NOT NULL,
  `blockString` varchar(255) NOT NULL,
  `ctime` int(10) unsigned NOT NULL,
  `reason` varchar(255) NOT NULL,
  `totalBlocked` int(10) unsigned DEFAULT '0',
  `lastBlocked` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wfConfig`
--

CREATE TABLE IF NOT EXISTS `wp_wfConfig` (
  `name` varchar(100) NOT NULL,
  `val` longblob,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_wfConfig`
--

INSERT INTO `wp_wfConfig` (`name`, `val`) VALUES
('actUpdateInterval', ''),
('addCacheComment', 0x30),
('adminUserList', 0x613a313a7b693a313b693a313b7d),
('advancedCommentScanning', 0x30),
('alertEmails', ''),
('alertOn_adminLogin', 0x31),
('alertOn_block', 0x31),
('alertOn_critical', 0x31),
('alertOn_loginLockout', 0x31),
('alertOn_lostPasswdForm', 0x31),
('alertOn_nonAdminLogin', 0x30),
('alertOn_throttle', 0x30),
('alertOn_update', 0x30),
('alertOn_warnings', 0x31),
('alert_maxHourly', 0x30),
('allowed404s', 0x2f66617669636f6e2e69636f0a2f6170706c652d746f7563682d69636f6e2a2e706e670a2f2a4032782e706e67),
('allowHTTPSCaching', 0x30),
('apiKey', 0x38366136623638643866313238613361383463336363343930326163396161306262316534383535646232656635316139643330643966623437393361623434646339663565373261626236323832623332346338643862346664383432633936363064613364663533613532643233346239336237623763373465653035316636633130623566376437306362326330613430326565633335323632313138),
('autoBlockScanners', 0x31),
('autoUpdate', 0x30),
('bannedURLs', ''),
('blockedTime', 0x333030),
('blockFakeBots', 0x30),
('cbl_restOfSiteBlocked', 0x31),
('checkSpamIP', 0x30),
('currentCronKey', ''),
('debugOn', 0x30),
('deleteTablesOnDeact', 0x30),
('disableCodeExecutionUploads', 0x30),
('disableCookies', 0x30),
('email_summary_dashboard_widget_enabled', 0x31),
('email_summary_enabled', 0x31),
('email_summary_excluded_directories', 0x77702d636f6e74656e742f63616368652c77702d636f6e74656e742f776663616368652c77702d636f6e74656e742f706c7567696e732f776f726466656e63652f746d70),
('email_summary_interval', 0x62697765656b6c79),
('encKey', 0x32663936343730343635343734636632),
('firewallEnabled', 0x31),
('howGetIPs', ''),
('lastAdminLogin', 0x613a363a7b733a363a22757365724944223b693a313b733a383a22757365726e616d65223b733a353a226665793839223b733a393a2266697273744e616d65223b733a303a22223b733a383a226c6173744e616d65223b733a303a22223b733a343a2274696d65223b733a32353a2254687520326e64204a756e6520402030323a32373a3035504d223b733a323a224950223b733a31323a223139322e3136382e35362e31223b7d),
('lastScanCompleted', 0x6f6b),
('lastScheduledScanStart', 0x31343634363738373433),
('liveTrafficEnabled', 0x31),
('liveTraf_ignoreIPs', ''),
('liveTraf_ignorePublishers', 0x31),
('liveTraf_ignoreUA', ''),
('liveTraf_ignoreUsers', ''),
('liveTraf_maxRows', 0x32303030),
('loginSecurityEnabled', 0x31),
('loginSec_blockAdminReg', 0x31),
('loginSec_countFailMins', 0x323430),
('loginSec_disableAuthorScan', 0x31),
('loginSec_lockInvalidUsers', 0x30),
('loginSec_lockoutMins', 0x323430),
('loginSec_maskLoginErrors', 0x31),
('loginSec_maxFailures', 0x3230),
('loginSec_maxForgotPasswd', 0x3230),
('loginSec_strongPasswds', 0x70756273),
('loginSec_userBlacklist', ''),
('max404Crawlers', 0x44495341424c4544),
('max404Crawlers_action', 0x7468726f74746c65),
('max404Humans', 0x44495341424c4544),
('max404Humans_action', 0x7468726f74746c65),
('maxExecutionTime', ''),
('maxGlobalRequests', 0x44495341424c4544),
('maxGlobalRequests_action', 0x7468726f74746c65),
('maxMem', 0x323536),
('maxRequestsCrawlers', 0x44495341424c4544),
('maxRequestsCrawlers_action', 0x7468726f74746c65),
('maxRequestsHumans', 0x44495341424c4544),
('maxRequestsHumans_action', 0x7468726f74746c65),
('maxScanHits', 0x44495341424c4544),
('maxScanHits_action', 0x7468726f74746c65),
('neverBlockBG', 0x6e65766572426c6f636b5665726966696564),
('other_blockBadPOST', 0x30),
('other_hideWPVersion', 0x31),
('other_noAnonMemberComments', 0x31),
('other_pwStrengthOnUpdate', 0x31),
('other_scanComments', 0x31),
('other_scanOutside', 0x30),
('other_WFNet', 0x31),
('scanFileProcessing', ''),
('scansEnabled_checkReadableConfig', 0x31),
('scansEnabled_comments', 0x31),
('scansEnabled_core', 0x31),
('scansEnabled_diskSpace', 0x31),
('scansEnabled_dns', 0x31),
('scansEnabled_fileContents', 0x31),
('scansEnabled_heartbleed', 0x31),
('scansEnabled_highSense', 0x30),
('scansEnabled_malware', 0x31),
('scansEnabled_oldVersions', 0x31),
('scansEnabled_options', 0x31),
('scansEnabled_passwds', 0x31),
('scansEnabled_plugins', 0x30),
('scansEnabled_posts', 0x31),
('scansEnabled_public', 0x30),
('scansEnabled_scanImages', 0x30),
('scansEnabled_suspiciousAdminUsers', 0x31),
('scansEnabled_themes', 0x30),
('scansEnabled_wpscan_directoryListingEnabled', 0x31),
('scansEnabled_wpscan_fullPathDisclosure', 0x31),
('scan_exclude', ''),
('scan_include_extra', ''),
('scheduledScansEnabled', 0x31),
('securityLevel', 0x32),
('signatureUpdateTime', 0x31343539313135343833),
('spamvertizeCheck', 0x30),
('ssl_verify', 0x31),
('startScansRemotely', 0x30),
('totalAlertsSent', 0x33),
('totalLoginHits', 0x3130),
('totalLogins', 0x33),
('totalScansRun', 0x32),
('tourClosed', 0x31),
('vulnRegex', 0x2f283f3a776f726466656e63655f746573745f76756c6e5f6d617463687c5c2f74696d7468756d625c2e7068707c5c2f7468756d625c2e7068707c5c2f7468756d62735c2e7068707c5c2f7468756d626e61696c5c2e7068707c5c2f7468756d626e61696c735c2e7068707c5c2f7468756d6e61696c735c2e7068707c5c2f63726f707065725c2e7068707c5c2f70696373697a655c2e7068707c5c2f726573697a65725c2e7068707c636f6e6e6563746f72735c2f75706c6f6164746573745c2e68746d6c7c636f6e6e6563746f72735c2f746573745c2e68746d6c7c6d696e676c65666f72756d616374696f6e7c75706c6f61646966795c2e7068707c616c6c7765626d656e75732d776f726470726573732d6d656e752d706c7567696e7c77702d6379636c652d706c61796c6973747c636f756e742d7065722d6461797c77702d6175746f796f75747562657c7061792d776974682d74776565747c636f6d6d656e742d726174696e675c2f636b2d70726f636573736b61726d615c2e706870292f69),
('welcomeClosed', 0x31),
('wfKillRequested', 0x30),
('wfPeakMemory', 0x3832373637373336),
('wfsd_engine', ''),
('wfStatusStartMsgs', 0x613a31353a7b693a303b733a303a22223b693a313b733a303a22223b693a323b733a303a22223b693a333b733a303a22223b693a343b733a303a22223b693a353b733a303a22223b693a363b733a303a22223b693a373b733a303a22223b693a383b733a303a22223b693a393b733a303a22223b693a31303b733a303a22223b693a31313b733a303a22223b693a31323b733a303a22223b693a31333b733a303a22223b693a31343b733a303a22223b7d),
('wf_dnsA', 0x7777772e70726f6a6563742e64657620706f696e747320746f203132372e302e35332e3533),
('wf_dnsCNAME', ''),
('wf_dnsLogged', 0x31),
('wf_dnsMX', 0x796f75722d646e732d6e656564732d696d6d6564696174652d617474656e74696f6e2e646576),
('wf_scanRunning', ''),
('wf_summaryItems', 0x613a31363a7b733a31303a22746f74616c5573657273223b693a323b733a31303a22746f74616c5061676573223b733a313a2231223b733a31303a22746f74616c506f737473223b733a313a2231223b733a31333a22746f74616c436f6d6d656e7473223b733a313a2231223b733a31353a22746f74616c43617465676f72696573223b733a313a2231223b733a31313a22746f74616c5461626c6573223b693a33333b733a393a22746f74616c526f7773223b693a323535333b733a31323a22746f74616c506c7567696e73223b693a333b733a31303a226c617374557064617465223b693a313436343637383830313b733a31313a22746f74616c5468656d6573223b693a333b733a393a22746f74616c44617461223b733a383a2232392e3639204d42223b733a31303a22746f74616c46696c6573223b693a323036343b733a393a22746f74616c44697273223b693a3338353b733a31303a226c696e65734f66504850223b693a3336383938393b733a31303a226c696e65734f664a4348223b693a3137363233343b733a383a227363616e54696d65223b643a313436343637383830312e3730343739383b7d),
('whitelisted', '');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wfCrawlers`
--

CREATE TABLE IF NOT EXISTS `wp_wfCrawlers` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `patternSig` binary(16) NOT NULL,
  `status` char(8) NOT NULL,
  `lastUpdate` int(10) unsigned NOT NULL,
  `PTR` varchar(255) DEFAULT '',
  PRIMARY KEY (`IP`,`patternSig`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wfFileMods`
--

CREATE TABLE IF NOT EXISTS `wp_wfFileMods` (
  `filenameMD5` binary(16) NOT NULL,
  `filename` varchar(1000) NOT NULL,
  `knownFile` tinyint(3) unsigned NOT NULL,
  `oldMD5` binary(16) NOT NULL,
  `newMD5` binary(16) NOT NULL,
  PRIMARY KEY (`filenameMD5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_wfFileMods`
--

INSERT INTO `wp_wfFileMods` (`filenameMD5`, `filename`, `knownFile`, `oldMD5`, `newMD5`) VALUES
('\00��#�9���Z4�j$', 'wp-admin/network/user-edit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1�s�̶>��Ѕc��'),
('\05g���꫔c�0�"D', 'wp-includes/css/media-views-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\\�uM���~V��0�?'),
('\0C_\n��jD��@k', 'wp-admin/network/index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���y�5�SQ`yж�'),
('\0`Y�ϭrG����', 'wp-includes/SimplePie/Restriction.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*qhd�s�;�y'),
('\0�^9N�t"tu���', 'wp-content/plugins/wordfence/lib/menu_diagnostic.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�F�G$�nG��/+��^'),
('\0���;f��Q�=*Ǖ�', 'wp-includes/js/wp-emoji.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��߸`z-_\0άZ'),
('\0�|9��u�e���@��', 'wp-admin/includes/image.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�po	�* �O��?\\�$'),
('\0�ێx%�d\Z�kK](', 'wp-content/themes/twentyfifteen/footer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'hYӠ�&��6�	���N'),
('��Ȅ�7�g�b^I5', 'wp-content/themes/twentyfourteen/header.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'W�����i?T����'),
('M~�Y�\n�!�q�W�+', 'wp-includes/.DS_Store', 0, '��D��в���f1,�', '��D��в���f1,�'),
('NQ�"*hz�r�w|\Z�', 'wp-admin/images/media-button-other.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ƴk�|��,O�"�'),
('R����\ZD����l�ե', 'wp-content/plugins/polylang/frontend/frontend-filters-links.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'e�xb�8��&d�O��'),
('�T�h���zP��r�', 'wp-admin/widgets.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'j2#O�)�mI�M��}'),
('��R�d�0��Z�֖', 'wp-content/plugins/polylang/flags/dj.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~o�W���s9=�A�'),
('��%y`{V�''����', 'wp-content/plugins/polylang/flags/li.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '� 4��F����B	*2'),
('��`Ƚ�c �)d��', 'wp-content/themes/twentyfourteen/content-image.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ky#�$~� p��ǁ'),
('t]�ٟu��u���j�', 'wp-admin/images/menu-vs.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'q���L�,_�;1/�E�'),
('��~�w`�5;F㮮', 'wp-includes/js/jquery/ui/effect-size.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':I�k�C�*���]�'),
('�=��q�\rljA+', 'wp-admin/user/user-edit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*zu�c���m	J��e�'),
('*lX��KPqU', 'wp-content/themes/twentyfifteen/inc/customizer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�%�E��4G	����H�'),
('<)8T*.�SuS�ĺ�', 'wp-includes/SimplePie/Cache/MySQL.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���B�C�\ZH�xV�'),
('FK\n=(��=7^��  ', 'wp-content/plugins/polylang/modules/share-slug/settings-share-slug.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�K3��(lx[c�$'),
('HC���!���"(�', 'wp-includes/js/tinymce/plugins/compat3x/css/dialog.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���rp�Ԃ��K+��'),
('J�\rӷG>�����', 'wp-includes/class-walker-page-dropdown.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ezC�<Xٟ6�!��m'),
('u��s��y6''v,��=', 'wp-includes/js/tinymce/plugins/wordpress/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '''��Y�XB��p�����w'),
('��^�z�,����Y�', 'wp-content/plugins/polylang/flags/fo.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�氣���''[PW���f'),
('�Ú5�ǸD������', 'wp-content/plugins/duplicator/views/help/about.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�2�h�*n)�s��>jV�'),
('����7�&��Ȁ', 'wp-includes/js/tinymce/skins/lightgray/content.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '� {C!''��Ã��qZx'),
('༗!>#�@��7W�''', 'wp-content/themes/twentyfourteen/genericons/genericons.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���4b��-�+l��'),
('�;Μpne���^@�', 'wp-content/themes/twentyfourteen/rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ŭ�c�5u�1�2\\��'),
('��0r�H"�YK]T�', 'wp-admin/css/site-icon-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ܼǊk�����iQ'),
('�s�\Z��Zt��c�	�', 'wp-content/themes/twentyfourteen/sidebar-content.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���ȃ$��\0DO��K'),
('(���љ����\0H<_', 'wp-admin/includes/nav-menu.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�#����]��t''��s'),
('i��PÙ��ld\0��', 'wp-includes/css/jquery-ui-dialog.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�4{�GjƶF�Eiyp�'),
('�[�]�!������Y�', 'wp-content/plugins/duplicator/views/packages/new1.base.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'a#�\rP������;���'),
('�_r�ɂh��5m��', 'wp-content/plugins/polylang/languages/polylang-af.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�G���m�4�aP���'),
('!���@|�4��n���', 'wp-includes/class-http.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'NY]�d^�Z�4%qq'),
('''ڞ\0;��?�+VҪ�', 'wp-admin/network/edit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\r�^�Y�&��;^���\Z'),
(';pR9��+�qpծ', 'wp-admin/includes/options.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N1;��:]�*Z��`'),
('E�&��VN���"N', 'wp-admin/css/ie.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ';��2\Z���P+�eS��'),
('H��P:M�q�<<���', 'wp-content/plugins/polylang/languages/polylang-zh_CN.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��փ@�bN����t'),
('x��m���\0�~���', 'wp-includes/customize/class-wp-customize-nav-menus-panel.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��u�:Q&����S�'),
('�Ú2��d�=', 'wp-includes/rest-api.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '岪ȕ3���m#��'),
('�P\0''�0l���v�#J<', 'wp-includes/js/jquery/ui/effect-fold.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�6^�����<��DEl'),
('Ȅ���xy�����', 'wp-includes/js/tinymce/skins/wordpress/images/embedded.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����p�N��y~�n"'),
('ΰH���0�U�&�`�', 'wp-content/plugins/duplicator/installer/build/assets/inc.libs.css.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�=3��Q�>���y~'),
('ϴ 3P`#8^��Z', 'wp-admin/css/colors/coffee/colors.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�2�+�� 3��e|t�3~'),
('\Z�c��֡�����', 'wp-content/plugins/polylang/flags/ki.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'p<풹|�q08����'),
('"��N߬jj)��\0��N', 'wp-admin/images/menu-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'jG�����{�>�^;$��'),
('H���c���I�J%�H', 'wp-content/plugins/wordfence/views/reports/activity-report-email.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����vcy2;�9�'),
('N��޴\\<����', 'wp-content/plugins/polylang/flags/ru.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\r1�u��"s�˓�Jt"'),
('tZQ��Yz0����跫', 'wp-admin/images/wordpress-logo.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ư�y��o�8��8S�`�'),
('�ѼR�Kd�����P', 'wp-content/themes/twentysixteen/image.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���i%8�W���O'),
('���k�5S�H���Ы', 'wp-includes/SimplePie/Author.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4�q�_�A�%�Nw�1'),
('���e�bW�A0�d', 'wp-admin/images/comment-grey-bubble.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Y�*''����t���F'),
('��������\0u~�3', 'wp-content/plugins/polylang/flags/ml.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Q�C�qg�1���l'),
('�)7�q�گO�q�t', 'wp-content/plugins/duplicator/assets/img/logo-menu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}�U��J(2\n<�h�'),
(' �,eO���z��Ñ�', 'wp-includes/customize/class-wp-customize-site-icon-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '讆�ϒ�s���[��JA'),
('"�}�%��x�R:F���', 'wp-content/themes/twentyfourteen/featured-content.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Q� qϞ�2V���w'),
('Q� ��(;ؠ|~R8�b', 'wp-admin/includes/user.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '#Y�\rP�ŤФp='),
('T�]\\g���4źuP�;', 'wp-admin/css/admin-menu-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�͡�F�\0�y���W'),
('z�S��ͬ�\\�/��', 'wp-content/themes/twentyfourteen/js/keyboard-image-navigation.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���?ft3��K%���\0'),
('���%bQ�bM<�x', 'wp-includes/js/imgareaselect/border-anim-h.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Z��,�ntZ^6�{Lp�4'),
('�Ŋ�`�7��T��a', 'wp-content/plugins/wordfence/lib/menu_whois.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '&�:���o�u�)/n6'),
('�mL�h�7�h����6', 'wp-content/plugins/polylang/flags/gr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��2��1�''X\\���y�'),
('ѧ�_�4a!�F��', 'wp-admin/css/ie.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Z�I���Q �9\ZΛ,'),
('��i)33ܥ��s�*', 'wp-admin/includes/class-wp-ms-users-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-a�om��QJ�\Z��vb'),
('j��o�+��s�7�8', 'wp-content/plugins/wordfence/css/iptraf.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+	���<�dq�7^�'),
('hC��3���w:ϩ�', 'wp-content/plugins/polylang/flags/pa.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'dyP	֛6��F�Y��V'),
('�5�g�1�bC��f��', 'wp-content/plugins/polylang/settings/settings-url.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�[�f{���Pv+g��\Z'),
('���#����	>�7', 'wp-includes/js/tinymce/skins/wordpress/images/pagebreak.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�I��m���LWyݓH'),
('���@���N�� _n', 'wp-content/themes/twentyfifteen/js/color-scheme-control.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'g��O:�]ɏ���X��'),
('�C�~gI/���i_D', 'wp-content/themes/twentysixteen/header.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�QFBN��!U�a����'),
('-�}Yoc0�=G���', 'wp-content/plugins/polylang/flags/tz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Fx�����1;���\\'),
(':뭲c���RPe(', 'wp-includes/rest-api/class-wp-rest-server.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���%1��7>L���^'),
('k����b��gS�', 'wp-includes/js/tinymce/plugins/wplink/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\\ww�t�^�ϨV�T'),
('����g�~�w\Z�hh', 'wp-admin/css/themes-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	-�nm��%-?�K�U�'),
('	QW���~-�\0d�', 'wp-includes/class-phpass.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z!��T�����B'),
('	?������q�uM', 'wp-includes/js/mediaelement/mediaelementplayer.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'U4��w��{f��.M'),
('	,��/Օ�!�gy�d', 'wp-includes/js/media-editor.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�YQg�I6�-_�����'),
('	I���*�eo�)y/�', 'wp-content/plugins/polylang/frontend/frontend-auto-translate.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�z�`�Sy����W��'),
('	P=N>��b"j:~[Q{�', 'wp-includes/js/tinymce/plugins/wpdialogs/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���[ߢ�9��Z�'),
('	X�t\\4vNI5��j��', 'wp-admin/async-upload.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~d4hʥ��h��N�'),
('	��),��nƸL�j@', 'wp-content/plugins/polylang/admin/admin-static-pages.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Tn_*��M�@�B�:'),
('	�9��fވU�f����', 'wp-includes/js/tinymce/tinymce.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��#J)��s�Zѽ�}'),
('	����09��-b��ͩW', 'wp-admin/network/users.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\r��\ro�o�N�f�A	�'),
('\n4f7�]Ϲ�w���{~', 'wp-content/plugins/polylang/modules/wpml/wpml-config.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��;�2��$��>�\0'),
('\nT��/\\9$Y�U\n��͌', 'wp-includes/customize/class-wp-widget-form-customize-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�������\r\0}��'),
('\nf���Y��4&�L�', 'wp-admin/images/se.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ȔB�`��.}''7:'),
('\n���f�Ӆ;{�t��', 'wp-includes/class-wp-role.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N����ݴ�c\n��JE1{'),
('\n���b-�V�:��|m��', 'wp-admin/edit-link-form.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|���A]�t�_�4�['),
('\n��NNM��ۑ4;�p�4', 'wp-includes/js/customize-models.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'OK�.�q;�t��N�\n'),
('\n�\r�B��p̭', 'wp-admin/theme-install.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���]©�������'),
('\n�Gƙn��\Z@1+U]�', 'wp-admin/css/revisions.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��7�[�z΢`\n�N P'),
('\n����UYY��Ć�', 'wp-content/plugins/polylang/languages/polylang-ar.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�CV�I�''������'),
('"w%�_��K\\��u�', 'wp-admin/images/wpspin_light.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Nm�h����;\Z@��'),
('&c�YD�#�P{+��', 'wp-includes/js/jquery/ui/effect-blind.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����<O�mA�_;OL'),
(')�ؓya�v,�S�W(', 'wp-content/plugins/polylang/modules/sync/admin-sync.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'k��)�Q��t71�+'),
('F-�r�>��/52�', 'wp-content/plugins/polylang/flags/al.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|[� ��0G���\0�q��'),
('�����Y����q�', 'wp-includes/customize/class-wp-customize-partial.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%�w�Y��$��\n��u'),
('���,H(b�_F�O', 'wp-admin/admin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�;QGzK�k�T�q'),
('��HVե�d��p�Vp', 'wp-includes/images/media/spreadsheet.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���4���\0T��̇?�'),
('�Ǩ�`�r�]���h', 'wp-content/themes/twentyfourteen/genericons/LICENSE.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�4�Mi���Hj���JBc'),
('�D>�G�J�g��4��', 'wp-content/plugins/polylang/languages/polylang-lv.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�z��zq_��DFUy'),
('�c"ml� �Ǟ>o', 'wp-admin/images/wordpress-logo.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�N�%�d���g���p'),
(')�L�֤�D�Ep�ɀ', 'wp-content/plugins/polylang/flags/ec.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'RD!⁑=�l�'),
('*�O�������i', 'wp-includes/customize/class-wp-customize-media-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�6��M}j�8��N'),
('D�� �2��K|&�', 'wp-admin/css/nav-menus-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�<[�s������\0Uc�'),
('WR�S������\0.\\Ii', 'wp-content/plugins/duplicator/lang/duplicator-fa_IR.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�7��>l�*k��t�'),
('{�M��i�i2n��6�', 'wp-includes/js/jquery/ui/effect-highlight.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����*��øN���!'),
('�B\r�a3K���]���', 'wp-content/plugins/polylang/flags/sb.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^Kt��t+�:b���'),
('���AY�Ԝ+gK�#�', 'wp-content/plugins/polylang/flags/mw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+�6�-C�ѫK$1_�9'),
('�9��@e�K�F�4��', 'wp-content/plugins/polylang/flags/tt.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��G�Ԇ''��lْ�,�+'),
('���B�÷�����cP', 'wp-content/plugins/duplicator/assets/img/create.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�E���huύ54R�'),
('\rrǵi��\r2u�1͓$', 'wp-content/plugins/duplicator/assets/css/images/ui-bg_flat_0_aaaaaa_40x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*D��s`�"������'),
('\rxݍ�^���\Z���<;', 'wp-admin/my-sites.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�P:��)=��ދW�'),
('\r�vN��[B��&��SL', 'wp-admin/css/common.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���D�^.�{���^\Z'),
('\r�ҧxOz���z���h', 'wp-includes/class-wp-customize-panel.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��,	3�����Ě�'),
('\r��:�:���HH�:d', 'wp-admin/css/edit.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '!i��h6!''��tRv''Y'),
('\r�%����%�yS�`�', 'wp-includes/js/crop/cropper.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����H.s�o����'),
('\rѪ1s1=��`(�y', 'wp-admin/options-head.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�֕`^m�N@\nTof~�'),
('\r١���H�$��5', 'wp-content/plugins/polylang/flags/ne.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���e`]���ӯK!^�'),
('#疭ۭ�v"��M�', 'wp-content/plugins/wordfence/lib/wfAction.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '@��_����>js'),
('9���.�-O�(01�\Z', 'wp-content/plugins/polylang/flags/kp.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�>��K������.6\0�'),
('X��H奥(�:�Z�', 'wp-admin/admin-ajax.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�B�]�O�|Z�\\�e��'),
('go�s�V�;����\n$', 'wp-includes/js/tinymce/plugins/compat3x/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R̑54m��%��U��'),
('q��nBh�+�ʓ�Ō', 'wp-content/plugins/polylang/flags/bo.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'T�a�zD�J7��s�c'),
('� ��C�Y���', 'wp-includes/pomo/entry.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '흁�����`�1L�a'),
('�>�M�8� ٵ��|', 'wp-includes/images/crystal/archive.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�S������I0An�'),
('��KR�<Â񨅁R�B', 'wp-content/plugins/duplicator/assets/css/images/ui-bg_glass_75_e6e6e6_1x400.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�%CV¨ɣ� ^���"�'),
('�O�ljO*]\Z���O_~', 'wp-content/plugins/polylang/languages/polylang-zh_TW.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}�~s��^5Z�q9=�'),
('��"\rJ\04��''i�', 'wp-admin/js/password-strength-meter.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'M�(F�Vp��#*�{�'),
('��F��x(4�_E���', 'wp-content/languages/admin-fr_FR.po', 0, '��8�������_�I�', '��8�������_�I�'),
(';�&�nb��i�ٷ�', 'wp-includes/js/mediaelement/silverlightmediaelement.xap', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�:�:=C".K�|�n\0t�'),
('\\�����AV*籿', 'wp-includes/js/jquery/ui/slider.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}	1l4�&��QW��L�'),
('���G�6}�Л��', 'wp-content/plugins/polylang/flags/si.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�N��Z�i\0�\ZqŁ�'),
('�c��nx�Ժ|�', 'wp-includes/class-walker-category.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'M�{3bk�?KK]Q�dj'),
('�~N�p��v7�.�Q', 'wp-content/plugins/polylang/flags/ye.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ')	��B��)�Y�'),
('�ݡ=��Nx��K�`*', 'wp-content/plugins/wordfence/lib/wordfenceClass.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'p\nߟ��E�+�o�xМ�'),
('\0��]�a�v���CY', 'wp-includes/class-wp-walker.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�^ZP��������X}'),
('���NVԱ��z�Z', 'wp-includes/js/jquery/ui/effect-shake.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�''JgV�̯\0�@p�'),
(')x��]�[��_*X�', 'wp-content/plugins/polylang/js/user.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'v���1��U��CRF�'),
(')��_���J�����', 'wp-includes/js/media-models.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��3a(���q�h���'),
('H�j�y�\\�8㣽�N', 'wp-content/plugins/duplicator/assets/img/hdivider.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�=|�Q�]�����'),
('`�&��锥~K3/d', 'wp-admin/css/login.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>"���P�Ff6����'),
('�#eR���~[���	)', 'wp-content/plugins/duplicator/views/tools/logging.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���B�e�8�������'),
('���ґ-���\r�{,�', 'wp-content/plugins/wordfence/lib/wfCache.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\nH/�=mc��J1���-'),
('�~��L��*�,�<:�', 'wp-admin/includes/theme-install.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ']�t\r��IPSkӆ��'),
('�Sx��4�@o�w�N', 'wp-admin/js/widgets.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'I�G���>Xc�r&�m�h'),
('���:m��[ݢ�:#', 'wp-includes/l10n.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':��W�AíX5�4l�'),
('�I��\\j���x���g', 'wp-admin/images/date-button-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ')R�,$k���)6C��c'),
('���j7r[�,���Z��', 'wp-admin/upgrade.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���\0:��I�%��0\0�'),
('D�8hFޛBViR�', 'wp-admin/css/colors/blue/colors-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'T�C9��4Āq;�P'),
('J9�?�+��Q�鴵�', 'wp-content/themes/twentyfifteen/genericons/Genericons.ttf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�&tw�4�Љ�pc�$'),
('j׻���q.�*;��2', 'wp-admin/css/colors/sunrise/colors-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2�ɳ�	t\0��\\���'),
('�I�y��^��r�8�c', 'wp-content/plugins/duplicator/views/packages/new2.base.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 't�f�-�υ��mf39JR'),
('�Z�1h������N3�', 'wp-content/themes/twentyfifteen/js/customize-preview.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��t��?\r�J4��a�)'),
('�r�W�3���᥾V', 'wp-admin/css/color-picker-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��%�(��Տ*5O��o'),
(':�X��2�M���~��', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce-small.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '߾\\H�]��9�Z��'),
('L����8���\\�ݼ+', 'wp-admin/images/imgedit-icons-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',��''��6U�������t'),
('p۞�2N<:Z�7�r�', 'wp-includes/js/tw-sack.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���������9>���'),
('u�)8FG9�C�(���', 'wp-includes/js/wp-ajax-response.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^���������O%�'),
('���Clo�������', 'wp-admin/nav-menus.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '_���	L�9�)-�6�Q�'),
('�ͻ��e�"\Z`g\\R��', 'wp-content/plugins/polylang/languages/polylang-hu_HU.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '=����,IئtV2G��'),
('��-��i>bs��1�', 'wp-includes/js/jquery/ui/resizable.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '?�*��W�i�X㝶տ'),
('�&�Ί�Ÿ\Z�.��', 'wp-content/plugins/polylang/settings/flags.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���[��)����K�'),
('��4r�%����j���', 'wp-includes/SimplePie/File.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���kU�6�\n�+�)%�'),
('��KS+�e׎A�@��', 'wp-admin/css/colors/light/colors.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H��G�#��<�^o'),
('�����Fe�	57[�', 'wp-content/plugins/wordfence/lib/email_newIssues.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��֪�j�|Hٺ��'),
('����UNEA�g�t', 'wp-includes/js/customize-selective-refresh.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��''6�����BML�R'),
('��w�/@C�*b�ּ��', 'wp-content/plugins/duplicator/views/packages/new1.inc.form.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'M�V��>��Y�(X�j�-'),
('�A�o�!�V��ų`v', 'wp-content/wflogs/ips.php', 0, 'lC�db��.�˴�v', 'lC�db��.�˴�v'),
('�0��5��mk��', 'wp-includes/js/wp-a11y.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�r#��U�i�T�:M'),
('.�\Z��d4a�����', 'wp-content/plugins/polylang/flags/ni.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�:_5H��X���ښ��'),
('�o�p���p�\r��5�', 'wp-content/plugins/polylang/languages/polylang-he_IL.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�{%qTd���%��?�\n'),
('�-��B��|tS^�', 'wp-includes/customize/class-wp-customize-nav-menu-section.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�]~���F��c9*'),
('�TfP�%,5H��4��', 'wp-content/themes/twentysixteen/genericons/LICENSE.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�4�Mi���Hj���JBc'),
('΢�S˪�\n��B�V"', 'wp-includes/fonts/dashicons.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'xih�7�w#؟���'),
('��ܡ9�u_\\\n�9�''', 'wp-admin/css/color-picker.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�V�բ�\Z�]U��#n��'),
('�KU�g0MU�/��ʇ', 'wp-admin/admin-functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��ga���c�3�aq�'),
('4;V��''�/����f�', 'wp-includes/js/jquery/ui/effect-scale.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�}0e,)����+m�T'),
('<���$q�h	����', 'wp-content/plugins/polylang/flags/fm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�v~�TfW��c�V�T'),
('Ce���v&����b�Ǎ', 'wp-content/plugins/polylang/include/model.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '8/�����Q��YH�t'),
('���C\n���U���', 'wp-admin/js/custom-header.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2�\0X���`o���uf�'),
('��0l��j�0+%�', 'wp-includes/SimplePie/Source.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '������S{�*���'),
('���窒�u��\rZJW+', 'wp-content/plugins/wordfence/images/help.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$N��;''��M���� Y'),
('�)����t\r�,�Jڼ', 'wp-admin/options-permalink.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\��5�*�12zDV�K�'),
('�?Ǆ����:\n��X', 'wp-includes/customize/class-wp-customize-theme-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�-��6�q��Տ K���'),
('Ր(�����@��', 'wp-admin/js/press-this.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ǐ�\ru�s�\0�k��:'),
('Wl��y:�\0Vn`�d\0�', 'wp-includes/js/tinymce/plugins/wpview/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 's��{3T''�T���Q�'),
('�,�4#��(�#', 'wp-signup.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����L��넏���G3'),
('��Ւ��L��썞i', 'wp-content/plugins/polylang/settings/view-about.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '<��oBaI(y�8L'),
('��l\0''��DC�/�', 'wp-content/plugins/polylang/flags/np.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R�dE=�:����/('),
('��y7��MA�@���', 'wp-includes/widgets/class-wp-widget-rss.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\\�Yޭ�+P�`I�'''),
('FҒ+#9\r�0�����', 'wp-content/plugins/polylang/include/widget-calendar.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��̱�84�����F'),
('w�A�/	����ĉ\\q', 'wp-content/plugins/wordfence/js/jquery.colorbox-min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4?Jǃ�G�`�\n�N�xl'),
('x�,¨��N2D�˱', 'wp-content/themes/twentysixteen/screenshot.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����n\\#J�/<W�'),
('��R� N+`gVO��Z', 'wp-content/themes/twentyfourteen/single.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N�OG(v!$�uL���a'),
('�:8�Ia��øl�m', 'wp-admin/includes/class-ftp-pure.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��6��-Kw�ypV-ҧ'),
('����KqM���{���', 'wp-admin/css/dashboard.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����݈��KT�@'),
('�TB��O>�v2��}Ea', 'wp-includes/SimplePie/Locator.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�s����;�uvf^��'),
('�5@����L��gzW', 'wp-content/plugins/polylang/flags/bf.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�e�L�6y3��! K-'),
('�m��jg�.��P��', 'wp-content/themes/twentyfourteen/content-page.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'f��2"�zYl�/���'),
('U�?b�cǃq!���', 'wp-content/plugins/polylang/languages/polylang-my_MM.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��\r�Z�E�^u�}�!�'),
('�8�$�]�8�E�9', 'wp-content/plugins/duplicator/assets/css/images/ui-icons_888888_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�F�ʴ>"�K�&�Ԁm�'),
('Fbى��Q�l����C', 'wp-content/themes/twentysixteen/searchform.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ۏԛh�u%�>��\0#^'),
('F��e���}�(��', 'wp-includes/js/jquery/ui/dialog.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$aV�{Ԅ��,�0'),
('{S��b�3	�?kix', 'wp-content/plugins/duplicator/views/packages/details/detail.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Y�U=�n����b���'),
('�����X/��\0��	', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/parser/sqli.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2Hs�=F�᭝\nnH'),
('�Y�@:w�-�w�i�N', 'wp-content/plugins/polylang/languages/polylang-pl_PL.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.iȰ����g��'),
('�3ƹܕj�bi�Υ�', 'wp-includes/customize/class-wp-customize-nav-menu-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�o�W��dH�zmc�I	�'),
('}ꜛ��9L�{�X\Z', 'wp-content/plugins/polylang/languages/polylang-hu_HU.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'X&����+��17�A'),
('d��錩�<�5kw\0P�', 'wp-content/plugins/polylang/frontend/frontend-filters-search.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���/ŠK>@~�)'),
('�`1�����o��x', 'wp-content/themes/twentyfourteen/functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��z�Ђ��\nE�i�+=+'),
('�SH6��o�\n�Y�', 'wp-content/plugins/polylang/include/pointer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�R�1�D����(��'),
('��>�/ᡇ_�����', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce-small.eot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�l([qא���D#��'),
('�&UX\r�L4{����', 'wp-includes/js/utils.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����Nx��ܽ�7�F73'),
('\ZW�k���{�_X���_�', 'wp-content/plugins/polylang/languages/polylang-he_IL.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'n1)�HtA(����Uz'),
('\Z�e\r���j!^��	��', 'wp-includes/js/mediaelement/bigplay.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'qd6�=�Ҟk7�b�Rgj'),
('\Zڵ|-�!� >�p�aO{', 'wp-content/plugins/polylang/frontend/choose-lang-domain.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�"�I|��%��P6C'),
('\Z������)qtsCI9', 'wp-includes/functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '`F��u�\0�ڥs�W;'),
('\Z�y��8R#O�y��', 'wp-admin/css/nav-menus-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�r��2N��`ssU�'),
('\Z��\Z:\\��Rf�P�~3', 'wp-includes/class-wp-metadata-lazyloader.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Z�X!�� �7�-���'),
('\Z�UE�s(���#E�p', 'wp-includes/images/smilies/icon_mrgreen.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���J����Rw��w��'),
('�w�i�hg$�����', 'wp-content/themes/twentyfourteen/languages/twentyfourteen.pot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�/��q�A��!62�v'),
('A�Z�哖̅L��(', 'wp-includes/js/mediaelement/skipback.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�m�0�E���k��o�HF'),
('L''��#TQ��Q�~��', 'wp-content/plugins/duplicator/readme.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�{��$�9��lp'),
('�y���!�\0pZ�[A', 'wp-includes/js/mediaelement/mediaelement-and-player.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��e{���:�W��'),
('ֻE\n�<�B�[�,', 'wp-includes/class-wp-ajax-response.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Hn�/3=��	����#'),
('�m��n9�F�6�', 'wp-admin/css/admin-menu-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'l5�9c�5Y��;/�G'),
(')�M��^�ûoz�', 'wp-admin/images/loading.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-[��t�P���d�'),
('4%�IH�O��ʰ�L', 'wp-includes/css/media-views.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��T��n=(��8'),
('C�/�;)��ّ�o', 'wp-admin/js/comment.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���\0���ML�E]˜U'),
('Lo�SX���9!r�4�', 'wp-content/themes/twentyfourteen/genericons/COPYING.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�B;��a`GԢ�މ'),
('T�gslF��ʞ��Ly', 'wp-admin/js/set-post-thumbnail.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����8�կ!�1z['),
('vs�%�z�����F�', 'wp-admin/css/ie-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-vWM�31����\Z�T�'),
('z�|*6�S\\5��3', 'wp-content/plugins/wordfence/lib/wordfenceScanner.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���I�����d��Ai�'),
('�S�m���q��=�', 'wp-content/languages/admin-fr_FR.mo', 0, '=6Vj�����p�', '=6Vj�����p�'),
('�\n$z�X�`�1Bw', 'wp-includes/js/tinymce/plugins/charmap/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�y15��h&[2(�'),
('��=b�6��hs���t', 'wp-admin/ms-themes.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R�K��$�IZ1�i%�'),
('��''��FE�A�vQMv', 'wp-content/plugins/wordfence/lib/Diff/Renderer/Abstract.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>\r��5]xVI�''�i�'),
('�k0B��a��`�', 'wp-includes/customize/class-wp-customize-nav-menu-setting.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�F�v\ZҨxk��b�'),
('�F�hJ�6B���^�', 'wp-content/plugins/polylang/flags/mm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '5��(���q���Z�h'),
('�-=Q�Cw�tnL�#', 'wp-content/plugins/wordfence/lib/wfBrowscap.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Q?SXl��4�Z�>'),
('�c=|u���r��', 'wp-content/plugins/polylang/flags/ve.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':�$�_j���E /��'),
('\n��O�_��;]/^��', 'wp-includes/images/down_arrow.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'e��]:u�Wv���"��'),
('G_bc�.,]&���', 'wp-admin/js/image-edit.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'l�Mъ�.���*��\\'),
('fMx���	�+9�U�', 'wp-admin/js/customize-widgets.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���P��04��Sv'),
('o0�7>�N�Xr�\\@', 'wp-content/plugins/polylang/include/nav-menu.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��2�}�.m�!]��'),
('�%��\\��MA�����', 'wp-admin/images/wordpress-logo-white.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��qP�C��-SPD��'),
('����J�}F��E\0�9�', 'wp-content/themes/index.php', 0, 'gD,V�=\\�bP', 'gD,V�=\\�bP'),
('�����Є=��)&H�', 'wp-content/plugins/polylang/flags/lb.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���o\r�̠�J�3-��'),
('�"j�ǧ`�����1�', 'wp-admin/css/press-this-editor.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�#��-` �Y�U'),
('�=�}C���i��HT', 'wp-admin/network/profile.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�i&�Q\\Ӣ�綨'),
('�g��I�!٭���_�', 'wp-includes/ms-blogs.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����\rRCT-�6ԗ��'),
('��]/~���q��XŎE', 'wp-includes/js/jquery/ui/button.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'n]?�vk��:�S'),
('��\0<�W�]���P�', 'wp-content/plugins/polylang/frontend/frontend-static-pages.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�=�?I&��ߪV�T�'),
('<Q�4��,�Zhʨ�|', 'wp-content/themes/twentysixteen/functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\r,R��<�n�hk�����'),
('R�\\�&��T	�|`', 'wp-includes/class-wp-user.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'y����qx��$�Q�ٵ'),
('ynm�;�/�UsK	��', 'wp-includes/css/wp-embed-template-ie.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z�<�wV���\nӜwr'),
('|�&;�r�Ls5��', 'wp-admin/includes/comment.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ')�\n k��6��Y�>�+'),
('���Ye�.�0s��', 'wp-admin/includes/class-wp-comments-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�`p�3v�ۡ�T��\Z'),
('�:��q��B����', 'wp-content/plugins/duplicator/views/settings/general.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' �7�j�[rc컫1��'),
('��''-�p�-���f�', 'wp-admin/css/l10n-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��P�^�i�&����'),
('뉶o�Ǽ��\Z��@�', 'wp-content/plugins/polylang/flags/ar.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/�W��f����#�E�'),
('/)s\\;R?V7o�3', 'wp-content/plugins/duplicator/assets/css/jquery-ui.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�g%�:=�ʹBB]'),
('L��bP�-I׭1f�', 'wp-includes/theme-compat/header.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'oWqOG�� -�{a=��'),
('N�d#R��+��r\0s[', 'wp-content/plugins/wordfence/views/reports/activity-report.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\r���D�7p=;ʣ�'),
('t������!�\Z�%\n', 'wp-content/plugins/wordfence/vendor/composer/autoload_namespaces.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '5�,}vĨ3��G��)�'),
('�{��Y�\\�z錿�}c', 'wp-includes/images/smilies/rolleyes.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' ���O�2�Ofݣi�'),
('����j�n�Z�u�I-', 'wp-content/plugins/polylang/flags/gb.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����0��s>���'),
('�;�@;w=��d�}�', 'wp-content/plugins/polylang/languages/polylang-uk.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��)��F(\0�Sh6�%'),
('�(�!UM��ў', 'wp-content/plugins/polylang/flags/eh.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}դj4���2�!:�{'),
(' *@ADғ�=pu���E', 'wp-admin/user-new.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'P�)�YN��d�χ�X\Z'),
(' ��c̫)I�\np,͑��', 'wp-includes/css/jquery-ui-dialog-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����b����.|Ri'),
(' �p(?Qn����a��Z', 'wp-includes/js/plupload/plupload.silverlight.xap', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'tq\0���3�X�0��b�'),
('!�|H`g��K:~�i', 'wp-content/plugins/polylang/flags/at.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'b�\ZVSi+4��sJY�b'),
('!o�\r��A��v7��e', 'wp-admin/update.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���y�R���I�U�,&'),
('!1b݅9��*���\\��', 'wp-admin/admin-footer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�_�ފx���0�|,�'),
('!_��輵p3p�n��L', 'wp-includes/images/smilies/icon_eek.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��_��s���jN��_z�'),
('!�R���p�nL�w�m7', 'wp-includes/js/tinymce/plugins/lists/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ڪQ.�F��:{��''�'),
('!�O�4�bCRR�fO�', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/storage/file.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%0`~l>��m@=x-�?'),
('!����Y0-z1�dm>�', 'wp-admin/js/plugin-install.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2)��7�ɠ5I�}��'),
('"Et�y�s����\Z|g', 'wp-includes/js/tinymce/plugins/wptextpattern/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ҷ쩨���nW''9M#k'),
('"(}G��r�	0��V(', 'wp-admin/ms-options.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�''�\0�}��:��ㆯ�'),
('"0�rN1M���#����', 'wp-content/plugins/wordfence/vendor/composer/autoload_classmap.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�EӤ㭇��M��g��'),
('"8A\n=��ᇼfp5', 'wp-includes/theme-compat/embed-404.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��%\0��i���hq��'),
('"IFn����@�a�}�9', 'wp-admin/includes/class-wp-themes-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^me}A*\0�&�v��a'),
('"����b9��e�|�_�', 'wp-includes/feed-atom-comments.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��!I���=j#���B'),
('"�����u>1�7���', 'wp-includes/class-pop3.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���\ZS�9�a�a����'),
('"����c���9�&', 'wp-includes/js/plupload/plupload.full.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'JC��$Vm''�.''��'),
('"��6\r+K{�\Z!a', 'wp-admin/comment.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����M�PV��ga�6�'),
('#	���9��$�ݸ', 'wp-content/plugins/duplicator/installer/dtoken.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ƮV�{i���X�~�H'),
('#\n��/��PZ~h���', 'wp-content/plugins/wordfence/lib/email_genericAlert.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�X6^�)���CUC��6'),
('#d@Kv�O�?>>�', 'wp-content/plugins/polylang/languages/polylang-lv.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1�R�U�E�8��'),
('#�\0��w��-��w�=��', 'wp-content/plugins/polylang/flags/ke.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '5qR�7��Z}Wſ0�<'),
('#��<{=��Ў��', 'wp-content/plugins/polylang/languages/polylang-bel.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��1|$�.2����'),
('$����0S\r�r���', 'wp-includes/images/smilies/icon_redface.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'm��A��R!4a'),
('$��������/��4�', 'wp-content/themes/twentyfourteen/tag.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��a,��''Vɱ�J�E'),
('$�[S#t��Ã=�/', 'wp-content/plugins/polylang/flags/cx.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��U�K�G�� �Q/'),
('$���C����/�9��', 'wp-includes/class-wp.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����`f���W�\0�'),
('%����7��娳�', 'wp-content/plugins/wordfence/waf/wfWAFUserIPRange.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��ߟ�g^L����'),
('%*&�zE��W�KŒt��', 'wp-content/plugins/polylang/flags/gy.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�	g�z��s͉�`�'),
('%o�?<�����0��o�', 'wp-content/plugins/polylang/flags/mp.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���翵��0�ƒU�'),
('%y���^AJ���Q�q', 'wp-content/plugins/polylang/flags/uy.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���ٱ�0�U\\�~�'),
('%�Xr���r���9+�', 'wp-content/plugins/polylang/flags/fi.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��I=猙�\Z��- k'),
('%����8^�V<�t�', 'wp-admin/edit-tag-form.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '_�^�9ǉ�9�?\n��'),
('%Ǎ��rRRۋ�R�r8', 'wp-content/plugins/polylang/admin/admin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��/��j-��d����'),
('%�Pb.���8�Gd�t�', 'wp-admin/css/media.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��X�U2\0�R&��\r'),
('&*���dĆָ�	�H5', 'wp-admin/images/align-center.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	�\Zݶ�4y�dY1�e�'),
('&0�^���GY�-', 'wp-content/plugins/duplicator/duplicator.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'AG���H�ߒ#��qE'),
('&=\Z�+t�"�/k''\n', 'wp-includes/js/jquery/jquery.form.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�À�s���E�VM�-�'),
('&D���6�������P', 'wp-content/plugins/duplicator/lang/wpduplicator-fr_FR.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�]d�v⼵����K'),
('&S�H1�S`zu�p�', 'wp-content/plugins/polylang/admin/admin-filters-columns.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\q�?iX%��7��'),
('&ee�\n3K���vZ��', 'wp-admin/ms-delete-site.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��g���k�;��қ'),
('&t!0^g��bJ�c,>3', 'wp-admin/upload.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��1V�{漥�^+�y.5'),
('&���X�B`]"?װ�\Z', 'wp-admin/css/press-this-editor-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�z?o����ͯ���	'),
('&��z{�($����H{�', 'wp-content/plugins/duplicator/views/packages/main/new1.inc.form.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��wryИ�	H&���'),
('&�2{\Z{>��~E׌�E', 'wp-content/plugins/polylang/flags/af.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�|X''*�lޔ\\�K�\0��'),
('&���Rw?~�j�hJ�D', 'wp-includes/Text/Diff/Renderer/inline.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\n�n5�P�����B''�'),
('&��]0W��\n)�=��', 'wp-includes/js/tinymce/plugins/directionality/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '`�W%<�:oJ��9�'),
('&�`�O�Q5�Q�43�', 'wp-admin/theme-editor.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�-�T4�└\0���}'),
('&���	P�shcusS', 'wp-content/wflogs/attack-data.php', 0, '#ح\n���y�Ib�\r�\r', '#ح\n���y�Ib�\r�\r'),
('&�vA��Q��c��qw8,', 'wp-includes/theme-compat/header-embed.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��@�8Z�Y�2WUu�M'),
('&饱����W��؀�|�', 'wp-includes/widgets/class-wp-widget-links.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',-��T�.� ~��M'),
('''=!Za��a���jU�Q', 'wp-admin/css/site-icon.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Q�.]d����L+���U'),
('''M��w�񑍷���\rKj', 'wp-admin/includes/class-wp-site-icon.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��\r�8\n�܁���w�'),
('''���� �o���S��', 'wp-content/plugins/wordfence/images/icons/ajax3.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'mw�ߴtꍓ''\n���s'),
('''����R*����O', 'wp-content/plugins/duplicator/classes/package.database.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�X������U�ҋ��'),
('''�GL�qЮ�%��H', 'wp-content/plugins/polylang/languages/polylang-bel.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����W���WlɂT.�'),
('''��T��*<�=`�ӿ', 'wp-content/themes/twentyfourteen/image.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ыp	�D����.r.'),
('''��?�h�	}�Y\0IG', 'wp-content/plugins/wordfence/lib/email_pleaseChangePasswd.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�*�Gs�WcȐ�3'),
('''��H�B�/�,|�i�', 'wp-content/plugins/duplicator/views/inc.header.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�q�ȧtP����c�i'),
('''�!�2��S���L�V6�', 'wp-content/languages/fr_FR.mo', 0, '�7��>l\0�dI�L', '�7��>l\0�dI�L'),
('(��g%\0��4��l>��', 'wp-includes/js/jquery/jquery.schedule.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '&��T�k�f؞���'),
('(?���>��S�N揚�&', 'wp-includes/images/media/default.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-����I�B�h�@���b'),
('(Yv^�G��:��<G�v', 'wp-content/plugins/polylang/flags/ee.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ߪ��p��F3��:�'),
('([d��������BQ��', 'wp-admin/js/updates.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��y�VaV���#���b�'),
('(x*J���,�LÛn�<K', 'wp-content/plugins/wordfence/images/icons/arrow_refresh.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'k�w�`�`�|�}$G��'),
('(~6vqV�0�{�"', 'wp-includes/ID3/readme.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����Ɯ���VLN[�'),
('(���v|T�— ¥�', 'wp-admin/includes/screen.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ࢊ_�9��S��\n_Y '),
('(ަ���/���6`�', 'wp-content/plugins/polylang/flags/ss.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z�V���f/����&@@'),
('(�^�3N������3', 'wp-includes/wp-diff.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '=Y�P`6N����qA�'),
('(���m�ܨ���', 'wp-content/plugins/polylang/flags/fr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��t�0^VcTzH��-�'),
(')\rM5�:��OD<~�W1', 'wp-content/plugins/polylang/include/translated-term.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��|\0��r����9�~�J'),
(')/$���"����S6�''', 'wp-content/plugins/polylang/flags/km.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '̔$��� !��X#�4'),
('){�jW-_�Q=?�GlҢ', 'wp-includes/media.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�tC��"�*��]���x'),
(')�Oz=�u����˷', 'wp-includes/rewrite.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����w\nպ��I�:'),
(')���]���Z$�P%', 'wp-includes/embed-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�K?F�D}d,�x�]u'),
(')�f><z0-AUi�', 'wp-admin/js/wp-fullscreen-stub.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ñ2���86�%O�ņ'),
('* a�F���4��u�vU', 'wp-admin/images/menu-vs-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'J�ZY<�i�Y��b�'),
('*t$�ߋv��n��s�', 'wp-includes/js/swfupload/swfupload.swf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Z%�5�e,�r��HO'),
('*��-3�u��E�[�O#', 'wp-includes/images/down_arrow-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�s���$�6(�@�a'),
('*���L�m&&2��\nb', 'wp-includes/js/tinymce/utils/form_utils.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��T8?ZP��{�-��'),
('*�\Z07ѥ1O���َ8', 'wp-includes/js/json2.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 's��{N�|EO�0�'),
('+9���[BU�E�e', 'wp-admin/js/updates.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\n%�m9R��r"��4'),
('+��Z�\r9�"���=v', 'wp-content/plugins/duplicator/assets/js/javascript.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��o\0D��i�����F'),
('+��G*#�������f�', 'wp-admin/network/site-info.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\0���\Z�	?l:|=6�C'),
('+���t�%R?������', 'wp-admin/network/credits.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '8,�4,���X���u�'),
(',<�� �?C]�0A�', 'wp-includes/js/tinymce/plugins/colorpicker/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��(oT���R��a�'),
(',B�c���ԛZ�4Y', 'wp-includes/js/swfupload/plugins/swfupload.speed.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'AZ7��k���E`,*�s�'),
(',���@��hj�qrޒ�', 'wp-includes/ID3/module.tag.id3v2.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�c����Fy�O*�N'),
(',�hɃs?4B[�^՝', 'wp-includes/SimplePie/Cache/DB.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Y�OU���.�b���'),
(',���1`Ц�q;�R|', 'wp-content/themes/twentyfourteen/inc/back-compat.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���]z4���f߮'),
('-	f�x�d�`GpW', 'wp-content/plugins/polylang/flags/sa.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '`X����F�����\Z��'),
('->��]���2j���', 'wp-content/plugins/wordfence/lib/menu_rangeBlocking.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����o��`!݌�$\r'),
('-_sEdUI���&P۹|', 'wp-content/plugins/polylang/frontend/choose-lang-url.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'c�''�_�b������)'),
('-c�D��K~a��W��J', 'wp-content/plugins/polylang/js/admin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'xc܏+�׃ ���nΠ'),
('-kdϯ���X�w\\7���', 'wp-includes/admin-bar.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��N�����1;y�?'),
('-����Ǹ�%w=��', 'wp-admin/css/colors/ocean/colors.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z|[���l�|ٱf%h'),
('-��)7�5y�8c��Wv�', 'wp-admin/about.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��lK/[�⒲�-�'),
('-�_��+��Yn��S', 'wp-includes/js/jquery/ui/tooltip.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�]G҃������@EQ'),
('-�f��4]�#"u��l', 'wp-admin/css/colors/light/colors-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '"���h�>�''Љ�^'),
('-��藂��Y{]ns�', 'wp-includes/css/wp-pointer.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~�ׂ`.�\rݑ�`�x'),
('._I�W�S�����o', 'wp-content/plugins/polylang/flags/dk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��l�q�_����\nA��'),
('. �\0_oE�]A�_�0PJ', 'wp-includes/js/tinymce/plugins/wpautoresize/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'd�\0Xc�O�@p��%�'),
('.IhU���3��+B\Z��', 'wp-includes/images/admin-bar-sprite-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Q����8��o��'),
('.Z{=U�uߩAJ��*', 'wp-admin/css/press-this.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'i�\Z��kG�;B�n{�'),
('.�u����@��Ios�H', 'wp-content/plugins/polylang/flags/arab.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�a�\\�3ǽ��=�''��'),
('.�E�[J��l�x��', 'wp-content/plugins/wordfence/images/forward_disabled.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'M_��Z?�N)�Ҋ�:�5'),
('/<ا^ɼf}�"���$�', 'wp-includes/images/media/document.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'v�4�8�Αy�6�d�'),
('/�s��C4��������', 'wp-admin/network/setup.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Bm>n9z]�њ�'),
('/��''�p�i20����	R', 'wp-content/themes/twentyfourteen/sidebar-footer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��`��kt֙��|,6'),
('/鹠���ΰ1�iw��', 'wp-includes/images/uploader-icons-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���&-��O��Õ�~'),
('/�N�/Կ���������', 'wp-content/plugins/polylang/languages/polylang-sr_RS.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ay�I[jR��ЏӬ�'),
('0\r�*#���E��`Ƚ�', 'wp-content/plugins/polylang/flags/wales.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'B�ʃr�2$��M�&'),
('0<�����lڿ��J��', 'wp-includes/js/wp-backbone.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�x��\n%�6�h�)��9'),
('0]�qK''�f�x����', 'wp-includes/js/tinymce/plugins/compat3x/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'W����������r��'),
('0j�Vƽ�f:�5��`�\\', 'wp-includes/js/customize-selective-refresh.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4�엝o�i��q�p� '),
('0���E\00���X�H', 'wp-includes/js/colorpicker.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'X�/�a�����誣��N'),
('0����|�L=�AB�', 'wp-content/plugins/duplicator/assets/img/google_drive_64px.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '},��>3�+��\\{b�'),
('1s�)6�Ӷ���C��Η', 'wp-admin/user/admin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��''�$�U�m�x�Z'),
('1�EfQ�v#)�\n�0EkQ', 'wp-admin/images/media-button-image.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~���WÎ�@��b�rճ'),
('1��X�/�t60^Ҁ!�7', 'wp-includes/js/comment-reply.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'V�''&�) {��/�z��'),
('2@�j�j\0�kӲ��Ә', 'wp-admin/includes/template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�G���=d���)�k\r'),
('2j�L,���W\r��W$��', 'wp-admin/css/colors/sunrise/colors-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Rǖ}�8�Xg����/'),
('2��㺨a|F�l3]�', 'wp-includes/customize/class-wp-customize-new-menu-section.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�H�⛱08���\n�'),
('2퐒��-�0�g��(]', 'wp-content/plugins/polylang/flags/tm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�l�&���gvN�\0)+'),
('2��^(��ʭ�-^x��', 'wp-includes/SimplePie/Enclosure.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.�B�n΍K�s]');
INSERT INTO `wp_wfFileMods` (`filenameMD5`, `filename`, `knownFile`, `oldMD5`, `newMD5`) VALUES
('3�kMf�9j��]�', 'wp-content/themes/twentyfifteen/languages/twentyfifteen.pot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��y-�{�zɫ��I�'),
('3I\r��z%!<7s�', 'wp-content/plugins/polylang/flags/va.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'I6B�k�D`/���O�'),
('3''!��9��ID��L$', 'wp-content/themes/twentyfourteen/readme.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'i9���s�B>�����k'),
('3+z��.���6Q~]y[', 'wp-includes/js/tinymce/plugins/wptextpattern/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'B�,���nz���V��'),
('3-��E>��Aߜ����', 'wp-content/languages/admin-network-fr_FR.po', 0, '���������cV���', '���������cV���'),
('3^ӚW�y�s�W%b=�', 'wp-content/plugins/polylang/flags/md.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��U�8glS�3\rk�'),
('3bŻ�6�>�۷����', 'wp-content/plugins/polylang/frontend/frontend-filters.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���0�Z�̙~�Е'),
('3k��oW�5	k[mq', 'wp-admin/includes/continents-cities.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z�(~�Ġ�.��[�}'),
('3���''���RK�Bf�', 'wp-includes/js/tinymce/plugins/wpdialogs/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���G���7�(tt�@�'),
('3��fQ3�h�5[��W�<', 'wp-includes/Text/Diff/Renderer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�� �C0�Y7O�@�GS'),
('3�\ZmU(�>�������', 'wp-content/plugins/polylang/flags/ht.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�6�t3;;�''���V'),
('4<7�(=����7<h�s', 'wp-content/plugins/polylang/lingotek/lingotek.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�G�y�!Hb����� �t'),
('4"^u�Yu�D��ۗCA#', 'wp-content/themes/twentyfourteen/style.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'z�L�W�-\ZIep��F`'),
('48�Vt���+^X�', 'wp-includes/pomo/mo.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ů�0l�D���/i[�'),
('4AI�n09��7c`', 'wp-includes/js/tinymce/utils/validate.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�+Q`�����k0RW�'),
('4U_߯ÔmN�k�e��', 'wp-content/plugins/polylang/flags/ky.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�,V�%h�0�q?�'),
('4a��[I�}���H�m)', 'wp-admin/css/deprecated-media.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'U?���ѩP��ӈ��y�'),
('4��!"�#���o0\r', 'wp-content/plugins/polylang/admin/view-translations-media.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�9/d���Q��?J'),
('4ժm�Ř+��z+r', 'wp-content/plugins/duplicator/assets/img/logo-dpro-300x50.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��X���v�����[�T'),
('4ڂ��L$�,K[�u��', 'xmlrpc.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '܇�:�B�qЅ4du�'),
('4�Br8X�s)�����', 'wp-content/themes/twentysixteen/template-parts/content-none.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'x Y�B��j����y��'),
('5�?��y��<�2�', 'wp-admin/css/dashboard-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��+��}\rl�Q�%k0�'),
('58�d�`S61K>ۮ�v', 'wp-admin/css/colors/blue/colors-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��q�0�I�л()�'),
('5C�)\nWu�꽝/F�cK', 'wp-includes/js/plupload/wp-plupload.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ӭk�=&��[��MW�6'),
('5L-t��X\0F��1�D�', 'wp-content/plugins/polylang/flags/us.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����	����K�Yz�H'),
('5S{�TƁ���e�/�', 'wp-includes/class-walker-page.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�vY�=g���m�q��?'),
('5Z����Sμ�v�`6�9', 'wp-includes/version.php', 0, '� *j"�#\r�	l\0�p\r�', '� *j"�#\r�	l\0�p\r�'),
('5\\h>��w	���N�', 'wp-includes/registration.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'q�ύH^�ܲ��I��i�'),
('5]���/����\r�', 'wp-content/themes/twentyfifteen/rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�{�����eh'),
('5`Tc���	w=�9\rn1`', 'wp-content/plugins/duplicator/assets/js/jquery.qtip/jquery.qtip.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'M}@�j�j��gɘ�'),
('5`�]\\ͭi\0���\ZJ�T', 'wp-includes/class-wp-embed.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��]���:�ʝ^!��'),
('5k֧�f]Q~B�ƓB''�', 'wp-content/plugins/polylang/install/upgrade.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*s���ؕ��9K2'),
('5��g�������''�[', 'wp-content/plugins/duplicator/assets/img/logo-box.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\nU�v�Qm؁�'),
('5��WB��$���l�', 'wp-content/themes/twentyfourteen/content-link.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'g%VҔэ����Ԫc�'),
('5��&VL��ؖ��', 'wp-content/plugins/polylang/include/language.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��͇G�eI��h����'),
('5��2�[�J8���v7��', 'wp-content/plugins/duplicator/installer/build/view.help.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'u�G�w>�v$a��؏�'),
('5�\Z9&�FMoN�Vذ�', 'wp-content/plugins/polylang/flags/io.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '8���p''��aP(��!'),
('6����X/��HL', 'wp-includes/js/mediaelement/wp-playlist.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��t�����j�8�C'),
('6�]r�\\\n���', 'wp-content/plugins/polylang/js/post.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'q|�����V6'),
('6;I(�H�m�%��f�', 'wp-admin/css/farbtastic-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����q�@!!�Ek�'),
('6[f�9�?�� _�', 'wp-content/plugins/wordfence/images/icons/bullet_yellow.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'J&���Ɍ����ԔQ<'),
('6�]j�v�W�k\r3-�', 'wp-admin/load-scripts.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�!�!�D�Ds?���'),
('6�,b�-���.�\\�', 'wp-content/plugins/polylang/flags/ax.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '''p�x��%�u�<0?���'),
('6�����ti�y�xٿ', 'wp-content/themes/twentysixteen/readme.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/�FD�Ȩ3z��C�'),
('6̠,��_���q���u�', 'wp-admin/includes/class-wp-filesystem-ftpext.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H��]\r�x2ف�+�i'),
('6٨	��:{�^D�', 'wp-includes/js/jquery/ui/accordion.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'asy��6�=�(�w��'),
('6���>�h��x��X���', 'wp-content/plugins/polylang/flags/scotland.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '쥾�nM���X������'),
('7<L�U3�9�TU�3Əs', 'wp-content/plugins/wordfence/js/admin.ajaxWatcher.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�_��2�BBt�ĸ�}`%'),
('7|oOU���z\0Ef���', 'wp-admin/network/update-core.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�"?}R2{8\\��?R�'),
('7�%Wy~׹P?�x��', 'wp-includes/js/tinymce/skins/wordpress/images/playlist-video.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�lzV6`wmZBs���'),
('7��O+�����ǋ''n', 'wp-includes/js/mediaelement/bigplay.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'tl:��E��9�n^���'),
('7�c�¢)��S�eb�', 'wp-includes/js/jquery/ui/menu.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '''�Y����-�9|�l�>�'),
('7�c�.$P!�"�򹚆', 'wp-content/plugins/wordfence/images/sort_desc.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�<���j��_�ˊR�2'),
('8\rms�]O���7"�`�', 'wp-content/plugins/polylang/flags/sy.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��n�>�}dj�QMWR�'),
('82NG�@|�M�8|\n', 'wp-content/themes/twentyfourteen/404.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��*<�S�"��\n��s'),
('8=�I��a�%��k�~�', 'wp-admin/js/editor.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�葤;�TA���ǟ�G�'),
('8f(!����\r����[', 'wp-content/plugins/polylang/flags/vi.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�[�u,ґw��^��9'),
('8�R6�DH��q�-{�:`', 'wp-admin/includes/translation-install.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�j��U�+9�\0�.v�$�'),
('8�@)��6yg[y�sQR', 'wp-admin/css/deprecated-media-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��D�]�J��\n�dmzo'),
('8ÛZE�Q$}UP�T��', 'wp-content/plugins/wordfence/lib/wfCrawl.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�L���U/�m`A\Z'),
('8Ջ���+_���P�m', 'wp-content/plugins/polylang/flags/fk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�''1�u~��m��訇'),
('8ܞt��\Zw�Nxa��', 'wp-includes/class-wp-network.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'E�{�y�iZ''��#g'),
('8����g]�pFp', 'wp-content/plugins/polylang/admin/admin-filters-media.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��\nչ���_�^b+'),
('9�a�����mEl��', 'wp-content/plugins/polylang/flags/se.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'L�m�3$&~(ܭ�W/'),
('9�\r5''X���>?�', 'wp-includes/js/customize-preview-widgets.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'v�2��Ў8��D�'),
('9FD�����@��b', 'wp-content/plugins/polylang/flags/bw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ւp�%��gէ0h,VD'),
('9ψ[�1d{���@', 'wp-includes/class.wp-styles.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��ly�����k�(\r|'),
('9:��d�o\n��p`Ry��', 'wp-includes/js/tinymce/langs/wp-langs-en.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�f�tS�uc�.k�7a7'),
('9�} B^��?	�"�', 'wp-includes/script-loader.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '(�#�!�=�YΚ���'),
('9��C���?\0�}Q��', 'wp-content/plugins/duplicator/views/packages/list-nodata.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'So��)DX<��t�'),
('9ՍҢ��9��d\r�Y', 'wp-includes/ID3/license.commercial.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\n;g��J�g����xA�'),
('9��s�3�SZ,p�8g', 'wp-includes/images/media/text.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'z��s��0�ȝ�Q�K'),
('9�LF��\\U2�ӳTc�', 'wp-content/plugins/polylang/include/widget-languages.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��iC�4�H�2#�Y�'),
(':{���{7�9����', 'wp-admin/link.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'c���Na�b���d'),
(':�|L�H6(��c�g��', 'wp-includes/ID3/module.audio.ogg.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '{܁:�_����Գ}<�'),
(':6���M�OYkx�UN;�', 'wp-content/plugins/polylang/flags/za.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��M���zy�gk�z'),
(':<�$��0,w"&e({', 'wp-includes/class-feed.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'E��/^EMVۃ'),
(':D�J�$�h��ǅ\r�', 'wp-admin/js/customize-nav-menus.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�/�M�d�b�$(�'),
(':mwvK\r�����Z��~', 'wp-content/plugins/wordfence/images/wordfence-logo-16x16.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Y�~F,�N8z����O2'),
(':���%H`!���\r�Z', 'wp-admin/js/media-gallery.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2��� Ғ�����n'),
(':��X�&e��ͣ���', 'wp-content/themes/twentyfifteen/genericons/genericons.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ĥ��U�S��t�+�'),
(':�Xqݝ�J\\�5P�4', 'wp-includes/images/spinner.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����1c~''�dv�vHq'),
(':�n̣RM�ti#��=', 'wp-includes/images/media/audio.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�taCA����.��Z��'),
(';�b�fȖ0����x', 'wp-admin/css/colors/midnight/colors.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Vd��SfL���`���~'),
(';*�������,~`ĝ)', 'wp-content/plugins/polylang/flags/gi.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���*��\\�w����'),
(';1ы#�Y_N��t�', 'wp-settings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Y=���[J���mR'),
(';R�yh���RxK�\r', 'wp-admin/js/farbtastic.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�:�T�2Aq]����4�'),
(';�k�5��''�w�\r���', 'wp-content/plugins/polylang/flags/be.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$������R�����'),
(';�p}�	�D�E�q�', 'wp-content/plugins/polylang/flags/au.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/�IȈ�����G\\���'),
(';�"�C��ؘܳ� hc\Z', 'wp-content/themes/twentyfifteen/content-page.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�$zx���6ޓ�M#'),
(';�d��iP�:Q\\�˙''', 'wp-content/languages/themes/twentysixteen-fr_FR.po', 0, '�<1w��+����~���', '�<1w��+����~���'),
(';�Wct���*+��Br�', 'wp-includes/images/smilies/icon_surprised.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ')�r�����i\r�^@8��'),
(';����*1\Zn��4�', 'wp-includes/js/wp-emoji-loader.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����Wb���|0'),
('<�Aޏ�j{�ajD,\\', 'wp-content/plugins/polylang/flags/catalonia.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'v�=����`?�o�$'),
('<���B�-�f��k�K�', 'wp-content/plugins/polylang/languages/polylang-ary.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'F@?��������'),
('<F���Pz�22��~', 'wp-includes/js/imgareaselect/imgareaselect.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}(��()��3���󵕯'),
('<��9�u�j����!�$', 'wp-admin/css/install.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'A��?�b5<\0���v��'),
('<�A�o���ԾLzڽ', 'wp-content/plugins/polylang/include/filters-links.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\r�yJ���T)�u\0'),
('<�1F|���W�Z��!', 'wp-content/plugins/wordfence/.DS_Store', 0, '���@,�/�s͢}d�К', '���@,�/�s͢}d�К'),
('<�hj�	�4���4a�2�', 'wp-includes/js/utils.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��O�ێ/���n�'),
('<�jY!O����I���!-', 'wp-content/plugins/polylang/include/links-model.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��z��*���0\0\\�Y@�'),
('<��u꿖\Zܜ��Y�^', 'wp-includes/js/tinymce/plugins/wpeditimage/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���a�v��N4�_��*'),
('=9)���)�\\��', 'wp-content/plugins/wordfence/lib/wfGeoIP.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'It�h�\\5���q�xdU'),
('=*�˨��)+�A�9�d�', 'wp-content/plugins/polylang/flags/england.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 's�� ��$�E�M�ڑ'),
('=S�6�a��Xo�,�2', 'wp-content/plugins/wordfence/vendor/autoload.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'f�\\o��	��jk_'),
('=f�u�A><Th���@', 'wp-includes/js/jquery/ui/progressbar.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��C�{��˚q��t	�'),
('=g���<;��3��w�', 'wp-content/themes/twentyfourteen/genericons/font/genericons-regular-webfont.eot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���r9�8e�z��`'),
('=��;�8�N�.��E�3�', 'wp-content/plugins/wordfence/images/wordfenceFalconEngineSmall.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�s�*�f�&@7�=J'),
('=��k�[4��� ��=�', 'wp-includes/comment-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '������\rA�''���'),
('=�ݲd >Sm[�0���', 'wp-content/plugins/duplicator/assets/fonts/fontawesome-webfont.ttf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��!p���w���&h'),
('>#�������wt��E�7', 'wp-content/themes/twentysixteen/js/keyboard-image-navigation.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ']��''''����/W�����'),
('>hЩ�XX*�v1���', 'wp-includes/theme-compat/comments.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'J�n�$��h�Um,+;'),
('>ql�+�m�\05Ħ"�^', 'wp-includes/js/customize-preview.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�^���=.r2��TM�'),
('>��X�\r�b��ڟ�$W', 'wp-includes/class-wp-image-editor-gd.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��ZmS�6����wε'),
('>�9��\0��A\\PcL]�', 'wp-content/plugins/polylang/languages/polylang-cs_CZ.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�G�n����r��9Q'),
('>���!�[CI9�o', 'wp-content/plugins/polylang/include/links-domain.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[��t�.JV�Ew�l�~'),
('?2yT!s|��t���u}', 'wp-includes/random_compat/random_bytes_dev_urandom.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'P<!�=�-�f��aDh�'),
('?Yv�q_����ۮXO', 'wp-content/plugins/wordfence/images/sort_both.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��%�B�Qx�SV.D'),
('?]�P�.��1����2b', 'wp-includes/js/tinymce/plugins/textcolor/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Rr���gw�d"���'),
('?�$ O���;�>ե�', 'wp-content/plugins/wordfence/css/jquery-ui-timepicker-addon.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ')e��f�#�`P�~7�n'),
('?�f��	=�OW�GT"fx', 'wp-content/plugins/polylang/flags/kr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�c�[�U�J������'),
('@V�$�K���<�1*��', 'wp-includes/css/jquery-ui-dialog.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��E�����ޒ@*�'),
('@b�Hf�Q�"$��S', 'wp-admin/js/press-this.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�H�\n�}x-N8�,�c)'),
('@k/�����I�?T,', 'wp-includes/js/jquery/ui/datepicker.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�⊮4�z�`M'),
('@��̘9�#�L�y(��', 'wp-includes/images/arrow-pointer-blue.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'w��b�·*L���[��'),
('@�>^3y9���S���', 'wp-content/plugins/polylang/settings/table-languages.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��ý�����q�9��'),
('@�XD\n�\nRN��t���', 'wp-admin/images/menu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\r�9#�d�Y`	���'),
('@�;5�X��V��O�Z', 'wp-admin/images/mask.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���g~�"��J��䩎�'),
('@�m����O��W', 'wp-admin/admin-header.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��ld��`��%8/'),
('@�t�R>G�Hh��ס', 'wp-admin/css/revisions-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%gÜw��p�{Zٕ+'),
('@� ��x�v]J�s', 'wp-content/plugins/polylang/flags/ir.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*���TupM0�Y�+'),
('@�s�Z��^����q�v', 'wp-admin/images/media-button-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '#�WI��\\��?��'),
('@��+�T΄''����٤', 'wp-includes/ID3/module.audio.flac.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'P�|��sq��;�'),
('A�lA~i^����u�Ø', 'wp-admin/css/customize-nav-menus.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':�����:c�t���/\r�'),
('AE���[�`����', 'wp-includes/js/thickbox/thickbox.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��cU�\0�M̱��4wu'),
('Aa�@J������Ł�', 'wp-includes/js/tinymce/plugins/colorpicker/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '"S�I�$�0DRj�*'),
('A{&� ��V>��Νs', 'wp-admin/css/login-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ψ�}6\0��#���?\\'),
('Aػ#���"���j�', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/views/403-roadblock.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Zoo�>���Uw��(��'),
('A��ZcT\r��`�(���', 'wp-content/plugins/duplicator/views/packages/details/transfer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�B�״!�;���P�:�'),
('BJ��O������z�D�', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/config.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ';��\0wzk�Be��<#�'),
('B��j�)��q�D�S', 'wp-admin/install-helper.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'dV�`����1&�\Zl'),
('C2}	��2��-�c��', 'wp-content/themes/twentyfourteen/js/slider.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�)�Cۤ\0G(�,��'),
('Cb&ҫ����-5��.L', 'wp-content/plugins/polylang/flags/sh.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���	��zJ`����	='),
('Cz0v�q5r�*�-��', 'wp-content/plugins/duplicator/views/help/gopro.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'zwl0]�)�S�[JZ�'),
('C�ؚ�T�R�!vF{', 'wp-includes/customize/class-wp-customize-nav-menu-item-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N''���I�%�ꏣ9�}'),
('C��|D��7���', 'wp-content/plugins/polylang/flags/sl.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 's�N��O�i<N�NX!'),
('C�L�����L�J�@��', 'wp-content/themes/twentysixteen/template-parts/content-page.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'sE��E�*���ȷ'),
('Dm�\n��z�H��S���', 'wp-includes/images/crystal/document.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�''^c�s���D��3T\\'),
('D.���:�\0��S�R8', 'wp-includes/ID3/module.audio-video.asf.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '(k��Q����|$�4�'),
('D6m�e�r{pK�O�', 'wp-includes/locale.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��1�%����p�'),
('D����)ba�k��{��', 'wp-admin/includes/admin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Vb�Z^%��5��ޅ'),
('Dչ������$Oa����', 'wp-admin/css/colors/ectoplasm/colors-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��BQ��,��f���\r'),
('D��5\n''�\\��~W��', 'wp-includes/category.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'FXB�+:�j9t�PT'),
('E#���-v37�6�Ť', 'wp-content/plugins/wordfence/wordfence.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6�P���9��-����'),
('E4��fu\r#R:k!jgh', 'wp-includes/js/wp-list-revisions.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��OBy��MK�/�l'),
('Eh��������@aq��', 'wp-includes/session.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���z����������'),
('Ep�Cxh�B�Q\0�2�', 'wp-content/plugins/polylang/flags/ae.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 's���{Q��*Zm{�'),
('Ex"��GC~2J��ŕs�', 'wp-content/themes/twentysixteen/genericons/Genericons.ttf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\0�'' ��N깛���V'),
('E��(�zRA1;eN�qD3', 'wp-content/plugins/wordfence/index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2��e��ª��\\��og'),
('E�}�~��M��-�]�a', 'wp-admin/css/widgets.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'J�O~W���N��'),
('E�V���,�%��,SM=', 'wp-admin/ms-edit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�/�Ħý��:E�'),
('E�0fۿo�i�\r�"��&', 'wp-content/plugins/wordfence/css/images/ui-icons_cd0a0a_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Ō��o�8�%��'),
('F�Hȝl�e��#�', 'wp-includes/js/tinymce/skins/wordpress/images/more-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'l,��r�%�^x�%'),
('F��Oۣ������g�', 'wp-content/plugins/wordfence/images/wordfence-logo-32x32.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��@ۯI����uU�'),
('F\r�x�w~�\rܱ��\n�', 'wp-includes/widgets/class-wp-widget-search.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�V��~��f�����2�'),
('F./V�)%<''k�����', 'wp-content/plugins/polylang/flags/vu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�{��,߀I.�M��bV�'),
('FF�v��V;v�8/�\r��', 'wp-includes/SimplePie/Misc.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���y�-���^�\ZK�'),
('FH���30m�:��s��', 'wp-includes/js/tinymce/skins/wordpress/images/dashicon-edit.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'xR�	�Y�X���ݤ���'),
('FYn�Az\0����>QM', 'wp-content/plugins/duplicator/installer/build/classes/class.serializer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1�(�6r)�=p���'),
('F���Ã\\�O�fg�', 'wp-includes/js/tinymce/skins/wordpress/images/gallery-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��1����v��R'),
('F�''�B�/�4{J�{w', 'wp-admin/js/edit-comments.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '<��߈�,�7V��/�7'),
('F����CЙ�L-xgY��', 'wp-content/plugins/polylang/flags/bj.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'g�.����[��!�8�'),
('F���?�C;$��H\r\r', 'wp-admin/css/color-picker.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9ptd\Z`j\n-V��=b'),
('G6U�2\01R������J', 'wp-admin/js/theme.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'gs�Gl5��#�$�e#}'),
('Gm��:�MľV��LЉ', 'wp-includes/js/tinymce/utils/editable_selects.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�d*\n�z�f��G"0��t'),
('Gq�@����gm屪', 'wp-includes/js/mediaelement/controls.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '@�oZsm������ۊR�'),
('Gu��������ʭ�', 'wp-includes/class-wp-meta-query.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':R�*�:\ZF^>�}�$�'),
('Gu�^�/1��ՁS�7', 'wp-includes/atomlib.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'o�.�B�o��@*�U''�'),
('G�9q���=ʥ[3?a�', 'wp-admin/images/bubble_bg-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R=[����;��c��'),
('G�7\Z��I&:�x', 'wp-admin/edit-form-comment.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���>�߳��p4յ�aB'),
('H+�E~�}�1Q���', 'wp-includes/js/wp-util.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Й�ֱE�3O�!_�W�'),
('H7ɮ\Z$.����1�8', 'wp-content/plugins/polylang/flags/cg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����Zr�V��U�CY'),
('HA���f�,���$F-�', 'wp-admin/css/customize-nav-menus-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'I��%����0�P��ʳ�'),
('HGh''��x�R���~\n', 'wp-admin/js/customize-nav-menus.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��sJ38χR5���,A�'),
('He0|�����F0$ؕ�', 'wp-content/plugins/wordfence/js/knockout-3.3.0.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��_���B8lc^��'),
('H�`H�Ǜ�O.��ViC', 'wp-content/plugins/wordfence/lib/menu_countryBlocking.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�B��hO��m�H��B'),
('H����Z�x�ob��/', 'wp-content/plugins/polylang/flags/occitania.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '߿���\ZJ���\\xY�t'),
('Hý��i�Z�U,H�L', 'wp-admin/includes/meta-boxes.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�5s�Hdww?�\Z��3�'),
('I0��S�$2�T��B*', 'wp-includes/widgets/class-wp-widget-calendar.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�1��̈́�EW&o�:�'),
('I��:Bs�#����@�', 'wp-blog-header.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�taMm?�%,=t�z�'),
('I�l���!pᤅ��n��', 'wp-content/plugins/polylang/flags/mc.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'c��1Ȱ�s6���S�'),
('I�K;H�:���.�o�!', 'wp-content/plugins/duplicator/installer/build/view.step2.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ӛ�"]��4����	�'),
('I�V/��6�s���', 'wp-admin/js/editor-expand.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Z.�+���Y6Cȋ'),
('Jf�3?���_r�C�', 'wp-admin/images/w-logo-white.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'n���Jvۢ~�y�\\�'),
('J��E[�7U��\Z�~', 'wp-includes/js/plupload/handlers.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��WPIʿ���F�Ug)'),
('J><rF�<�A?��9�', 'wp-content/plugins/polylang/admin/view-translations-post.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '(blvFm��vZ\\�i'),
('J{�ֹZi^ùx�I', 'wp-admin/media-new.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ڥy/��y[v��)Ԛ'),
('J��\n���ފ�ou�', 'wp-content/plugins/polylang/flags/bd.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�-���q�$fF�''��'),
('J�+D�m�+���5��', 'wp-content/plugins/polylang/flags/et.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'sv>Fډo>�T�G;JK'),
('J�͇?��\r]����', 'wp-content/plugins/polylang/flags/nr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/�Ktxv��[c�l��o�'),
('J�hU�`|\0G�)~''��', 'wp-content/plugins/duplicator/classes/package.archive.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�d�_۞����q`���'),
('J����0��\0���;', 'wp-content/themes/twentyfifteen/css/editor-style.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�BH\r�%��%^�f�\r�'),
('J򾁬��Oh���sDؾ', 'wp-includes/js/zxcvbn.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�L�;��uc���<��'),
('J�	4��/���|��	�', 'wp-content/plugins/wordfence/css/select2.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�X��N|7�Z��(C�'),
('K����ߺ�b�', 'wp-content/plugins/wordfence/lib/compat.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��?H�Y��/2��?T'),
('K4�Q�Y@e�:��2�,�', 'wp-content/plugins/polylang/include/class-polylang.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�p�\\Fh�}���3�_��'),
('KH~�<1�{ـ�z�''o', 'wp-content/plugins/polylang/flags/jm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���^ _v''z�q�!�'),
('K�nҋD&sR�WU(�', 'wp-admin/css/farbtastic.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '0�i��)�3\\۸�/�;'),
('K�ǯ�y6Lq�u�lm', 'wp-content/languages/themes/twentyfifteen-fr_FR.po', 0, '����q���>�^N~', '����q���>�^N~'),
('K�!���4�\\��o%', 'wp-content/plugins/polylang/flags/me.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'z.���^�xj����	'),
('K�c��#2s�/(�"�', 'wp-includes/widgets/class-wp-widget-pages.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��W&�KzO\r�W��'),
('K�X�m��̔�s�r5', 'wp-content/plugins/.DS_Store', 0, '��^��xW��ߥ��Oc', '��^��xW��ߥ��Oc'),
('K�ߢ���,��S���G�', 'wp-content/themes/twentyfourteen/search.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Wfs�Cu�����`}���'),
('K��W�&\0\0K�\06�G�', 'wp-admin/js/set-post-thumbnail.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+QSWm�@�~��Q'),
('K�K+��2�	aeZ�e', 'wp-includes/class-walker-comment.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�9"I`I�Z�	��'),
('L<#���\Z����}', 'wp-includes/js/tinymce/skins/lightgray/img/loader.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9K���M�:�Tf�9'),
('L#��/۰*��3���\r', 'wp-admin/includes/class-wp-terms-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Y�:8��Z	6Kl��"�E'),
('L(���n�9[2�C6�', 'wp-includes/js/zxcvbn-async.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1��p9	�9�~��'),
('LR7Q��ToG|�{', 'wp-content/plugins/wordfence/lib/viewFullActivityLog.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��݉\0�w��aY�%P'),
('LW]��=����\0;�:', 'wp-content/plugins/wordfence/css/images/ui-bg_flat_100_1997c7_40x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'j�\ZKȚ�-"��a{*0'),
('LsЇś\n�c}>�K��', 'wp-includes/css/editor.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 's�C�t�5	��ش�'),
('L{�MKx>�>�X6l<\Z', 'wp-content/plugins/polylang/flags/ms.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ݼ*��\n�3���&'),
('L�N9�2�\Zh�y��', 'wp-content/plugins/duplicator/classes/package.archive.zip.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 't�Ƶ.8#L���9��'),
('L���g_4�>(��''�F', 'wp-content/plugins/polylang/flags/nz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ÚX�$�����ܠ'),
('L��e�t"pc(	�e�', 'wp-includes/wp-db.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�N�Q��(��O�-I�\0'),
('L�>t���N�����', 'wp-admin/css/colors/blue/colors.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��5Iה�g,)Z�YM�'),
('L��)��a$�D-�Ӯ�J', 'wp-includes/js/tinymce/plugins/wplink/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6��ٕ�߼�평��_�'),
('M(y��|\\=�D&\n�', 'wp-content/plugins/duplicator/assets/fonts/FontAwesome.otf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���=�W���b&��W'),
('M?,5�*�����K*�f', 'wp-admin/js/post.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ɒ��^�''��ޢLg�'),
('MW�	���:��ي', 'wp-admin/images/align-none.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�eqd2���u����\r'),
('MY��G��\\tX����/', 'wp-includes/customize/class-wp-customize-color-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'p./짊O�nBk�rt�'),
('MР\0�A���9Q�+��', 'wp-includes/js/admin-bar.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[���G�Y*kȥ�ְp�'),
('M���!H*��}a�', 'wp-content/plugins/polylang/languages/polylang-bg_BG.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�~�6W����[�5'),
('M�;C�����8Yyﲏ', 'wp-includes/js/twemoji.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'n�ԇ�k��_����'),
('M���I�M����rD��-', 'wp-includes/post-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Ѝ�3���~�<7'),
('N|�Jв�zn��sw', 'wp-includes/pluggable-deprecated.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[n�k�Q�����\Z��'),
('N�3�j@pu5����^��', 'wp-includes/js/tinymce/skins/wordpress/images/more.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����\n�\nm\0;�˫�z'),
('N���HV����}�4G', 'wp-admin/css/customize-widgets-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��1���w�g�['),
('O	��S����#��Yi�v', 'wp-admin/includes/class-wp-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '骓�zZ���<�mi�'),
('OI��\n����3!GZ�', 'wp-content/plugins/polylang/flags/quebec.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N�����y/4^:7'),
('O]te������U���u', 'wp-content/plugins/polylang/flags/vc.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '`���y�^���b�7��'),
('OlqCcێ���������', 'wp-admin/css/forms-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|ݕ�Vn�\n+����I�'),
('O��\\���P5���{�R�', 'wp-admin/plugins.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�;A�$��@�R����	'),
('O����&�r�蓏�� ', 'wp-admin/freedoms.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'dNaՄ�2�T��'),
('O����R�r����D�?�', 'wp-admin/js/postbox.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[���:��2�&;���'),
('O�����y ��k	b�', 'wp-admin/css/customize-nav-menus-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '޻�P O�����]/I�'),
('O�ec*�	���;(xS', 'wp-content/plugins/polylang/flags/tv.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'o�Umؽ�l���̆I�'),
('O�hu�G���&\0�L�', 'wp-includes/Text/Diff/Engine/native.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�''*�����*�x'),
('PE۫�7r|oI�6��>', 'wp-includes/js/backbone.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���zk�VC}[���v'),
('P''�(���?+�z��$�', 'wp-admin/js/postbox.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�^O���p[@LE���_'),
('P73o�	��\0�=��', 'wp-admin/js/word-count.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '@�]\\��cݪ�����'),
('P����������7��', 'wp-content/plugins/polylang/flags/gm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ׅ�A�j^m�0�ho '),
('P��iz�t�a�}�a', 'wp-admin/users.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��}23�Z�z����'),
('P�⩣-ƅ����i�', 'wp-content/plugins/wordfence/css/images/ui-bg_highlight-soft_75_a5a5a5_1x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��m8O@��d8�<Qž'),
('P��@���;b<\n�c�', 'wp-includes/class-wp-oembed-controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '� �jZ$y�M�ԜǛ��'),
('P�M�\Z�I̸�ݭY`r', 'wp-content/plugins/wordfence/lib/wfHelperString.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�OV�FaD�V�4�4ܪ'),
('P�1$���\\*�C', 'wp-admin/images/stars-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��A���#�S�Me.^'),
('P��0��a��R�z= ', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce.ttf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Pù�4�S͈0p���'),
('Q.���EXy��<�ɀ\\�', 'wp-content/plugins/duplicator/assets/css/images/ui-bg_highlight-soft_75_cccccc_1x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'rœ�n��R͍y��3��'),
('QB��QP6*J̿��c;', 'wp-content/themes/twentyfourteen/content-video.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�_�9Nvt�(ܶ�.'),
('QT���*�f�P��.�', 'wp-admin/includes/file.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�y�x��io���U/�'),
('QY��1�Tl��Vr<', 'wp-includes/js/customize-views.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Z���٢Uo��������'),
('Q[��J�g?���,��', 'wp-content/plugins/polylang/flags/az.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�?\\��^ʝ�c8�'),
('Qq_1��F�E��A�2', 'wp-content/plugins/polylang/flags/td.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'l�?l����J�I}�'),
('QuoPX��\0��Sڞ', 'wp-admin/images/bubble_bg.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '=,����(��\Z2cV� 8'),
('Q���6K4������H', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/views/403.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��뱝�R�|�$��d'),
('Q�`���8�M�8', 'wp-admin/press-this.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '������In����a�'),
('Q������l��g�-��', 'wp-admin/js/comment.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�6�\rwġ�������'),
('R3�Us�3��}T���', 'wp-includes/js/autosave.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '?��f_��H����\rt'),
('RB����eL��±�{�', 'wp-content/themes/twentyfourteen/archive.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���Z�C��J�+W'),
('RQ�b7f�� |~ۓ�(', 'wp-admin/js/widgets.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��|�\r����,��d9w'),
('RW>0�໼`�x�zp', 'wp-content/plugins/duplicator/assets/fonts/fontawesome-webfont.woff', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�W �����C�~O�E�s'),
('R���1?���Y�VDt�', 'wp-content/plugins/wordfence/lib/.htaccess', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�I�z~�i�,L���'),
('R�x�4Mp@�9u\n֊ p', 'wp-includes/images/wpspin.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Nm�h����;\Z@��'),
('R��|Rx/�bzn9\0*�J', 'wp-admin/includes/plugin-install.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Dě%$I��FIQ�B;K'),
('R�\\SC�|ju�9��A', 'wp-includes/js/media-grid.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'sH_O��IΒ�l���x'),
('R¥�����Le�q	�&�', 'wp-admin/js/user-suggest.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3)��()ݰ4}\n�'),
('R�!Z�+L���L�G5', 'wp-content/plugins/polylang/flags/ad.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�uD!Z� ��\\�+\r'),
('R���Y#:&��%ղ��', 'wp-content/plugins/polylang/include/filters.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'I��V�-�>S�v3G�o'),
('R�H\r0��!�d�?c&', 'wp-includes/widgets/class-wp-widget-categories.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6��iM������>�B8p'),
('R�6OU�^s�YT5͙�', 'wp-content/plugins/polylang/languages/polylang-lt_LT.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'B�������!������'),
('R�W���h����V/1', 'wp-content/plugins/polylang/flags/mg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Z�$����Wp��8�'),
('S$<ql.��=yH��', 'wp-content/plugins/polylang/flags/br.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'T�����G�њ���'),
('S.FȫA�j���(�:', 'wp-includes/js/hoverIntent.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�P\nޅL1A�Wb��\0'),
('S0�־��K/17u���', 'wp-includes/js/jquery/ui/selectmenu.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�}�˪2�9Zhxi"6�'),
('SX+7��1?����-', 'wp-includes/js/jcrop/Jcrop.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Z��7e�����Q�%K'),
('S����p�>��Wr�YE', 'wp-comments-post.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�:�@�r����_�s'),
('S��&�az8�Jض9�', 'wp-includes/widgets.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '8��K�W�]R�;M��'),
('S�.�����0��be9', 'wp-content/plugins/polylang/flags/la.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3u�S]i$�\n�>�h�'),
('S�\Zu�Ӱ͇���Q�', 'wp-content/plugins/duplicator/installer/build/assets/inc.libs.js.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�h{�m��A=�93�'),
('T�r���~�W]�', 'wp-includes/class-wp-comment.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',g��F��;�`Bg���'),
('T6K?���s� �7(�', 'wp-includes/customize/class-wp-customize-sidebar-section.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '!T+caβF��������'),
('T?�?:q׮P��ah''��', 'wp-content/plugins/wordfence/views/reports/activity-report-email-inline.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '=\\�uj��t�Q��;z�'),
('TM�����l������', 'wp-admin/includes/class-wp-screen.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',�C�g���%��կ��'),
('T�.o@Ψ2�w�v��X�', 'wp-includes/js/jcrop/jquery.Jcrop.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/a��Lru�4�\Z�'),
('T���vm?,�a���T4�', 'wp-includes/ID3/module.audio-video.quicktime.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '''-�nL9 a\Z�!�n�'),
('U�\\p{J��O�Q�&', 'wp-includes/SimplePie/Cache/Base.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�C���2]�]#|j'),
('U�nɓb4lZ,I', 'wp-admin/css/about-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'a3"*�N�pY~+��'),
('U���$i"u��&���9', 'wp-includes/images/crystal/video.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����l��ڤ�;�='),
('U�H\r}�\r�׋3=�', 'wp-content/plugins/polylang/flags/pt.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[����!)�2����p'),
('V\n��U`�_�5���8', 'wp-includes/js/customize-base.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�r��9��9''#�(q1�'),
('Vّ)�xq-�O�', 'wp-content/plugins/polylang/js/term.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�*Z�%��\nr�!އ'),
('V<:��%��{��y�ޚ', 'wp-content/plugins/polylang/lingotek/image01.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��)o��䌫�r%����'),
('VL6�7G^l%D5z3��', 'wp-includes/default-widgets.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�OiT�0�*\0�h�)g�'),
('Vne!�z0u1?��', 'wp-includes/shortcodes.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�=?�=$���MXw��2'),
('Vrm�KE�p�j��6�', 'wp-admin/images/w-logo-blue.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�[N�W��_p�w�0'),
('V�����댏$�x', 'wp-admin/js/post.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '!�B�L�p🀷5�A'),
('V����xJ:f:�ĀN�9', 'wp-content/plugins/duplicator/classes/package.installer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�B�߲G����S�y'''),
('VǗ�=���Ut���Z�', 'wp-content/plugins/polylang/flags/nf.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�$�!��Y%j>:QG�%'),
('V׀��''h��Ĉ+:��', 'wp-admin/includes/network.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'M�M�i�A��֖r�'),
('V�U�؁�Vr�~���v', 'wp-content/plugins/polylang/flags/zw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�~<I��u�օI�\Z'),
('WN�	b%�9pY&����', 'wp-content/plugins/wordfence/css/jquery-ui.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N3(�-�M���\r��'),
('WVʛ�5���ù\r�', 'wp-content/plugins/polylang/flags/mh.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���X!��E�߆g�`�'),
('W{�g- X���''=n8', 'wp-admin/moderation.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'TB���YR��"4�o�'),
('W})Ӗ7���e�}5�9,', 'wp-admin/load-styles.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Q�s��~WI&��s7S_'),
('W�����у�o����', 'wp-content/plugins/polylang/languages/polylang-nb_NO.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�7��Q�%�!(�Oڊlj'),
('X,�E�Cj$_��8I��0', 'wp-includes/images/smilies/icon_cool.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�F~��ߢ.���>t8'),
('XJ��U��k���"�', 'wp-content/plugins/polylang/flags/in.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'P�,��4����sdl��'),
('X�:8+˓2>V]��8�', 'wp-admin/images/sort-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'nQ&�] �0�-����'),
('X�9�%��,Q�|', 'wp-content/plugins/polylang/flags/cz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�[m+�\n1y�e/h���'),
('X�{%�>V"����z', 'wp-content/plugins/polylang/flags/tn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��GٜH�M$�$6�'),
('X���G������z�X', 'wp-admin/includes/class-wp-upgrader.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�������6��֨)�6�'),
('X�|�t|�t�3c��', 'wp-content/plugins/polylang/flags/tw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'A�+<�=^veЂ1�'),
('X�{��?��ASH�', 'wp-content/plugins/polylang/flags/cy.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�A�"�u�������'),
('Y,Qp�gmu#�e���~', 'wp-includes/widgets/class-wp-nav-menu-widget.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��6�B9U(�bG,*��e'),
('Y?9##1D��a�ȣ�o:', 'wp-content/plugins/duplicator/assets/img/paypal.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�~�մ������'),
('Y�La���h�(', 'wp-admin/edit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���$���d5��y~�'),
('Y�,�e�A��w�`���', 'wp-includes/images/media/archive.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9����h�\0��ì�u'),
('Y�68�H;%,�_c\n�', 'wp-includes/css/wp-auth-check.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��O���;}��$�HBҔ'),
('Y����]���ŞI���', 'wp-includes/js/jquery/ui/effect-slide.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�#G_��MVژ�y�'),
('Y֝��U����}�r/', 'wp-includes/SimplePie/Cache.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'y���:�oMh�vL�4'),
('Z2�G�,�+\n��+', 'wp-content/plugins/polylang/js/admin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 's[JZB�����m�/�'),
('Z4<n?e�����', 'wp-content/plugins/wordfence/lib/wfConfig.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��&�!�����I.'),
('Z@�xX0���X"r�', 'wp-content/plugins/polylang/flags/gd.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����ƱQ	x�{�{F'),
('Zx��1�2K�Z�,��', 'wp-includes/customize/class-wp-customize-header-image-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��D�q��0�]�1�'),
('ZҌ�[��\nv���	F', 'wp-includes/SimplePie/gzdecode.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�8��a��al�4�'),
('Z�\Z�"H{�B��� ��S', 'wp-content/plugins/polylang/js/user.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'vw�}��]k���Brn'''),
('Z����� %/�Z�z9��', 'wp-admin/includes/taxonomy.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�m�^u�����@�z�,�'),
('Z�\0��Y���� æfg', 'wp-includes/js/crop/marqueeVert.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����\0���9��R���'),
('[#�.v:�<�%T', 'wp-content/plugins/duplicator/installer/build/view.step3.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6QG�����l�!P'),
('[5���Y�Nh���K�M�', 'wp-includes/customize/class-wp-widget-area-customize-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'W�oV[���~��TQ��'),
('[Q"ABb.Q����:�', 'wp-content/plugins/wordfence/js/jquery-ui-timepicker-addon.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\\�#�kz������I]'),
('[��#ܧ\Z>]��<�', 'wp-admin/css/colors/ectoplasm/colors.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'CZ\r��ʈ�׍Y1�\\+'),
('[�E�*�B �-\\�m', 'wp-content/plugins/polylang/settings/languages.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���E��2\\��E��'),
('[���uPE����x{�', 'wp-content/themes/twentyfourteen/screenshot.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}��k1?.9oAcQBE'),
('[�>�x�;�wn/t�H', 'wp-includes/js/wp-emoji.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��SV����Sr�A��'),
('[���1�YAdk�,', 'wp-includes/SimplePie/Sanitize.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Bظ��F�إ�H��u'),
('[ꠏ�|K�o�یb7�', 'wp-admin/user/index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '������-x���Nb��'),
('\\�����9������', 'wp-admin/ms-upgrade-network.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|��&"�S�m��8h�m'),
('\\[��i%Ͱ<��e�>�', 'wp-includes/css/wp-pointer-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����LQON���8@'),
('\\�т�?$�̈́8����', 'wp-admin/includes/dashboard.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R��h�w0���GBC'),
('\\��+5��¦DW"�', 'wp-content/themes/twentyfifteen/search.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>��"7ў׉!�T\n�}�'),
('\\έ�ep�5�=:E�R�', 'wp-content/plugins/polylang/languages/polylang-id_ID.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�4�''��1�m(hJ��'),
('\\�\0��>�+���Fb��', 'wp-admin/revision.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '`��.��+�!ވ��'),
('\\�Jh''�{���a�`_�', 'wp-content/themes/twentyfifteen/comments.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R�ڢd��ɓ�GH��'),
('](R�&!��1;�3��', 'wp-includes/js/wp-ajax-response.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'x''�����[#X�+'),
(']B#�2�z���bU��/', 'wp-includes/Text/Diff.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'lp՞��n��7q��*'),
(']��P���Tkvt��8A', 'wp-admin/network/menu.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���0+\Z=l�.��W@�'),
(']���*������J�', 'wp-content/plugins/wordfence/images/icons/email_go.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��j��E��H)�.��'),
(']�����"}[�Y�R�', 'wp-admin/css/edit-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'a}_��YA.\Z4!��'),
('^9(-(Ų�y ���0q*', 'wp-admin/user/about.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��\0ڍ�KN� ���N�-'),
('^@ղ{''��_���92', 'wp-admin/upgrade-functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^����uP�qX\\e��'),
('^yG=ڜFg;3�á�', 'wp-content/plugins/wordfence/images/button-grad-grey.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��RC���Ty��?�'),
('^�Ð����+�y|�', 'wp-includes/images/crystal/spreadsheet.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '5�9�Т1�T��n��'),
('^�rǍ��-����i0�', 'wp-content/plugins/polylang/flags/pw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '������@�=�O'),
('_�\0��d �MP~��D', 'wp-includes/revision.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��R1\r���m,<j\Z�_�'),
('_�k4���!*}��݄ ', 'wp-content/plugins/wordfence/vendor/composer/ClassLoader.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>B����aX���wa;'),
('_*�⽞L�0�>\r', 'wp-includes/feed-rss2.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�(i�Kt�,Ur�s��H'),
('_Wl��f�8gP����c', 'wp-content/plugins/duplicator/assets/img/logo-pro-32.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ե�Sh����z\Z�O�'),
('_j���_��/���yӱ', 'wp-includes/load.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�iV�MӨb- �w)X'),
('_�� �����p�d:`', 'wp-content/plugins/polylang/modules/plugins/plugins-compat.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.��sbo�~�vϧ��\Z'),
('_�|��T�M^���J', 'wp-includes/css/editor.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+g�	0U���n>*�'),
('_���4�3���=��', 'wp-includes/images/uploader-icons.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��\\M�����m��'),
('_�(�C���M6�9�', 'wp-admin/includes/class-wp-links-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'r�Z�ZI�L��:��'),
('_�����8}���?�', 'wp-includes/css/media-views-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�gP���˄X���~'),
('_�柣���CK陜�[0', 'wp-content/plugins/duplicator/installer/build/assets/inc.css.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',�[�;�^q�w��Y'),
('`���S�`NI�^G�', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce-small.ttf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '(�i@�G�g���0�p'),
('`%�ֽ�j��''��P��', 'wp-admin/js/edit-comments.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��H����P�LO��'),
('`�BԮ����3��8��\\', 'wp-content/plugins/polylang/flags/bg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'w�:��n����+�!'),
('`�c0���\\���3�', 'wp-content/plugins/wordfence/lib/Diff/SequenceMatcher.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�O�"%é�O�DZ�j'),
('`�����vLW�U��', 'wp-content/plugins/polylang/languages/polylang-vec.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��N�5�a��:���'),
('`��*(��R�)́��_', 'wp-content/plugins/polylang/include/walker-list.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'w�Z���j��e.2Z'),
('`���;�"�-���+~;', 'wp-includes/js/tinymce/plugins/media/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�W�R&��-@�6���'),
('`��U�2���mdW', 'wp-includes/class-wp-customize-nav-menus.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H����� �� �b'),
('a\n�~w�SK��\Z����', 'wp-content/plugins/polylang/flags/hu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'loΊoМ4	d�^���'),
('a\Z�c����r�2���', 'wp-content/plugins/wordfence/js/jquery.tmpl.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\\}�"���7ڷ��DZ'),
('a&?�A������(~(', 'wp-content/plugins/duplicator/installer/build/main.installer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Q�����(��	�7b��'),
('a)�TMW�Oo��Q�|�', 'wp-admin/images/media-button.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����6@p�z^ye��'),
('a\\c,I"5T��#̋�', 'wp-admin/images/media-button-music.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��]�2\\Z�/��ޕ'),
('a\\�f���1NU��', 'wp-content/plugins/polylang/languages/polylang-ru_RU.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��<z٣Ҩ���s<��e'),
('an�ܨ�5MgU{�', 'wp-content/themes/twentyfourteen/content-audio.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�gd��L#\\����|'),
('a��EM�M�Zݠ�\nA\\', 'wp-content/plugins/duplicator/assets/img/ftp-64.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��}L��AU���P�_'),
('a�����(m�EB�l�', 'wp-includes/media-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Z�-�����y1�7_a�)'),
('a�c�CH\r��=l@ĸ', 'wp-admin/plugin-editor.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'j�^�UD�>��s1�'),
('a�|\n��|@X\n��fM\r�', 'wp-content/plugins/wordfence/css/dt_table.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�[�f��\Z��}�I+o'),
('b�A�Ik�m�P�', 'wp-content/plugins/polylang/flags/lr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ';m�r!���FRI��+'''),
('bY�,��ϥY�r۝�;�', 'wp-includes/js/crop/cropper.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ky5�ni*M(��'),
('b�ʡF1t�=����	v', 'wp-content/themes/twentysixteen/js/color-scheme-control.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Z��p����2/�>)~Oz'),
('b��Nc���VX�ʭ-', 'wp-content/plugins/polylang/settings/settings-tools.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'L���=��0gK�k�');
INSERT INTO `wp_wfFileMods` (`filenameMD5`, `filename`, `knownFile`, `oldMD5`, `newMD5`) VALUES
('b���HzfW����gw�', 'wp-content/plugins/wordfence/lib/wfSchema.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��O�Gr��U���\n�'),
('b�����Ҍ &�?�{', 'wp-includes/js/customize-loader.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����<�ܽL-�Im'),
('b��+ƴݟ�3�', 'wp-includes/customize/class-wp-customize-nav-menu-location-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�G4"�w�k:�''���'),
('c�4L]�˞��Mc', 'wp-admin/includes/class-wp-post-comments-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\4�Z����eN]%�D'),
('c,���[xޫ�3�\n�@', 'wp-includes/js/jquery/jquery.masonry.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����R�(��e^'),
('crahKԏ�[����2�Z', 'wp-content/plugins/polylang/flags/st.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�''*P�ee�6����'),
('c��r�h��:�;���\\[', 'wp-content/plugins/duplicator/assets/img/5star.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�H�����`|�R�*('),
('c�6����9S�����', 'wp-content/plugins/polylang/flags/ck.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�	([r�.��nᄞ@�'),
('c����nu�\\>}KF�', 'wp-content/plugins/polylang/admin/admin-filters-post.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'g�4�X�FZ����ED#'),
('c��[b]���ݽ�JF', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/storage.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'vc�`''�OA[ϙ�U�'),
('d��:w���O�І', 'wp-includes/ID3/getid3.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���V�z�e=Iu��\\'),
('d��1�쵓-�;O��', 'wp-admin/js/custom-background.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�j�)N���ˈ¨iv#'),
('d#��u=k�f�''�\0��', 'wp-content/themes/twentyfourteen/js/customizer.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�bp�_��[�r�$/��'),
('dPy�,;[.�BZg�<!', 'wp-content/plugins/polylang/languages/polylang-uk.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'bA4�Y#%��G7��'),
('d�on�W>a������', 'wp-content/themes/twentyfifteen/genericons/Genericons.woff', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 's/��n]�d���z�?'),
('d�(��%J���@�G�', 'wp-admin/options.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'u��yI���r|��'),
('d�hħ{q4�2�K"�', 'wp-includes/SimplePie/Rating.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '=p�m	�K�دat�'),
('d�4�j�2U�V��$�P', 'wp-admin/css/wp-admin.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�佐5\0���!��*['),
('e.PȴNB�Sx[�&��', 'wp-admin/includes/class-wp-plugin-install-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '@�@^�2��@A��Z�'),
('e��__�%��x���', 'wp-includes/class-snoopy.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����5�<$#��m�'),
('e������*�i!�e�Z', 'wp-content/plugins/duplicator/assets/css/images/ui-icons_2e83ff_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'nz����T@X����R'),
('e�^#|ۍ�TЩ��z', 'wp-includes/Text/Diff/Engine/xdiff.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ֹ�b�t�X8�GX'),
('f�u3\n�M\\�}6*0�', 'wp-includes/class-wp-customize-setting.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ktR��ށk��z"'),
('f�yĐ��ƼvhK�', 'wp-content/themes/twentysixteen/inc/customizer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%�:��ш_�n^�\\'),
('f�霰f؟|h��U�L', 'wp-admin/includes/ms.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'e~�O*f⋴at�+'),
('f�����e��R�)�', 'wp-includes/SimplePie/Item.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'E�!�Cz�\0�c<ܧ'),
('fֈ�����V�Թ)�9', 'wp-includes/theme-compat/embed-content.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 's��y��n��F捅'),
('g	U�B[�&JnFU�>�', 'wp-content/plugins/polylang/languages/polylang-cs_CZ.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '� $�,;���Ĭ��'),
('g#�,vM������:��', 'wp-includes/js/jquery/jquery.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����>���X""���'),
('g+yr���q����D��/', 'wp-includes/vars.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ls����"��B�\Z��'),
('gF2�����H1�����', 'wp-content/plugins/polylang/flags/fj.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|>x��K��es�6'),
('gl?sD*��U��G1��a', 'wp-content/plugins/polylang/flags/ls.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�(x:��T��QZ*�'),
('g|y_�o4"��X�N���', 'wp-includes/images/smilies/mrgreen.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-5��^����J�j���'),
('g�$G\\��;�r���1X', 'wp-includes/images/wpicons.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'dS��uq��V_���a�'),
('g�f�1�۶�y�;�_', 'wp-includes/class-wp-http-proxy.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'q6��һW:䬧���_'),
('g�}\Zn�\\���6��4', 'wp-content/plugins/polylang/flags/mx.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'G��_��p�T���?�}'),
('g��]bR%� Z��E�', 'wp-includes/js/shortcode.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��O�N��F��V[f��'),
('g�Ed��1��D}�����', 'wp-includes/js/jquery/ui/autocomplete.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���PصC��\Z8�zj�\\'),
('h\ZOhl��_��Lm/�', 'wp-includes/class-wp-customize-manager.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��������%�Y��ʲ'),
('h d��껅2��_�r', 'wp-includes/functions.wp-styles.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���`�ǌb��YR��xy'),
('h0X-�i����^�G`8', 'wp-includes/pluggable.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'k�(�Uh�s���'),
('h4���#3�`�-݈�"�', 'wp-admin/profile.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���?���>z�ͩ��z&'),
('h@Z�%�R�F�;ti\\m', 'wp-admin/css/login-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Z,�A���Bz{v'),
('h{���t��0K�:9/', 'wp-content/plugins/duplicator/lang/duplicator-fr_FR.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Whz*�U��P��ĐE'),
('h|hE��f:Ʊ2��~', 'wp-admin/network/theme-install.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '&շ�1Up�%��1=$�'),
('h�<�]���OpNCƴ�', 'wp-content/plugins/wordfence/lib/wordfenceURLHoover.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'v�#Aq''I�bO��v�D'),
('h����AQ�x�AԞ', 'wp-content/plugins/polylang/flags/tk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�o��F8�ca�0vh�T'),
('i3.�b)f��NZ?�', 'wp-content/plugins/polylang/flags/mq.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�_��3�������7?'),
('i%b�yR�ءo��"�N�', 'wp-content/plugins/polylang/flags/ps.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'h���$�~�ӳ�2�"�'),
('i|�F�\\Q�E���v�', 'wp-content/plugins/polylang/include/links-directory.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�>''���ʈ\Z/ZT��X'),
('i�-��X�8V[~E�', 'wp-admin/css/install-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'J��5�M''�+zr��]'),
('i�\\����=X�h$', 'wp-admin/js/language-chooser.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	�P�V0��tJ�J'),
('i�k���C��T,�', 'wp-content/plugins/wordfence/lib/wfIPWhitelist.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��C�\r����?N͕�'),
('j&�V1���6�4����', 'wp-content/plugins/wordfence/images/icons/ajaxWhite32x32.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���r��9 �#��{�'),
('jQ���e���;�e', 'wp-includes/css/wp-pointer-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'En�Ve�l��W��'),
('jmE��AX�uw�>܆', 'wp-admin/css/colors/ectoplasm/colors-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',{~�Н��/�!���U'),
('j�䱋����%���]�', 'wp-includes/class-wp-xmlrpc-server.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����An��ǌ�I�'),
('j�����5F+���o', 'wp-includes/images/crystal/interactive.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�R�m`��`�9��'),
('j�^���۝h�8���', 'wp-includes/js/tinymce/plugins/wpembed/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�8*�R/���?�%��'),
('j���"ׅ��ܪdi�R', 'wp-content/plugins/duplicator/installer/build/classes/class.config.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��.J�e}��賯U�ͮ'),
('jڿ�t��1u���}���', 'wp-content/plugins/wordfence/images/wordfence-logo-64x64.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'v^�I�N/��g@��\\u'),
('j���\n#V�	�-', 'wp-content/plugins/polylang/settings/settings-module.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�tB�s	ۿ�9\n��'),
('j�>?)�A�Y�A�Db', 'wp-content/plugins/duplicator/assets/img/logo-menu.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'm_�46\ZYf.�V�+'),
('k���$6O��-N�x�', 'wp-includes/js/tinymce/plugins/charmap/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '21���Q�*�nh��'),
('kM�������̙Ysp', 'wp-admin/credits.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�h�\r�*Q�-��)�'),
('kk� ��Gj)J�����', 'wp-content/plugins/polylang/lingotek/image04.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'd5�{�hx_��Ճ\n'),
('k��;��(�h���\\��', 'wp-content/plugins/polylang/languages/polylang-af.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/����R/"h���E�'),
('k��B˞�b=y��', 'wp-includes/user.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Kih\n�}:��[E3�}'),
('k�=8��ƭ����u�', 'wp-content/plugins/polylang/flags/kw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.�͹ʂ@��7.L��'),
('l/\n�Ԁ�W�ͱ-c�', 'wp-includes/widgets/class-wp-widget-recent-posts.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�,�cb\Z��:5X}�z'),
('l9��=��h�,>���&', 'wp-content/plugins/wordfence/lib/wfDiagnostic.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ę��W>\r\n�	���}�'),
('l�ⴚf�s�����a�', 'wp-content/plugins/polylang/include/walker-dropdown.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�y��Tu���RT��@'),
('l�iǑ��/Nz&��ڂ�', 'wp-content/plugins/polylang/flags/jp.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����|%�F��"6\\\0<'),
('l�W��\rv�\0,���c/', 'wp-content/plugins/polylang/include/widget-recent-posts.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'rUI�"�٣��ͅ+�f'),
('l��\0�is���W8�o', 'wp-content/plugins/polylang/modules/translate-slugs/settings-translate-slugs.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'T^�rx��Y)<DͳM['),
('mD��T�ms���A�}', 'wp-includes/certificates/ca-bundle.crt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ѕh�f;��Q)�lU'),
('mA��Y�����Rb|�S�', 'wp-includes/ms-default-constants.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��P@��b\r߫�xH�b'),
('mE������\\�)��o�', 'wp-includes/js/jquery/ui/spinner.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ש�/k&HQ��;j��'),
('mY����}ɽ��?', 'wp-includes/js/jquery/jquery.ui.touch-punch.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'L�m�Q4փ��]�'),
('m��-\Zm1�����w��', 'wp-includes/js/jquery/ui/sortable.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Xw���k^�'),
('m�Q�Ӌ���\Z��!\0�', 'wp-content/plugins/polylang/languages/polylang-nb_NO.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Ξc�aN��	�@�-��'),
('m����\Z�/�����', 'wp-content/themes/twentyfifteen/screenshot.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[�t�ծ1�O�r�H^\r'),
('m����-�s�\Z�E��', 'wp-content/plugins/polylang/flags/bm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�[�Y ,�����q�'),
('n]�j7<3ISsQ�', 'wp-admin/images/post-formats32-vs.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�t.E���5G�N\Z��v'),
('n#�t=�''�����b]{�', 'wp-includes/js/tinymce/themes/modern/theme.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�x�V���U"̀~�'),
('nZ/1T:{&^�/n���', 'wp-admin/js/media-gallery.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|��f����8�}+&'),
('nef���A@���R�?��', 'wp-includes/js/jquery/ui/position.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�������x��02z:�'),
('nzql9k��:�T���LZ', 'wp-content/plugins/polylang/flags/sz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�vu�R���Lɚ�\0O'),
('n����@��A��F�', 'wp-admin/network/sites.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����� `8�Q3ib�'),
('n���0�9j�v8�"', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/request.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���U;,���6�P�'),
('oMwY|��S�u�X"�', 'wp-content/plugins/duplicator/assets/img/logo-dpro-300x50-nosnap.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\0��V��\Z0[GS/"'),
('oPZ\n�%�o2X!�''^', 'wp-content/themes/twentyfourteen/page-templates/contributors.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*��x/>7�e���C�'),
('oP��c����o�.�r', 'wp-includes/js/tinymce/skins/lightgray/img/object.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�rdP�E}u\n/M�A�� '),
('oZ0�������<c�0', 'wp-includes/SimplePie/IRI.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'n� �憒�;a{�_6�'),
('o��VnN�*5O��7', 'wp-content/plugins/polylang/flags/co.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'K�#�����h&�elS3'),
('o��a��w5h�@+w\r�', 'wp-content/plugins/wordfence/css/main.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.�j�_��P�cf�)?~'),
('o㮚-�;?X:��pҡ', 'wp-trackback.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���.��d���#k�l'),
('o����%��]\Z', 'wp-content/wflogs/wafRules.rules', 0, '�q�U�?��}�jXA��F', '�q�U�?��}�jXA��F'),
('o�[��n3u��ʹ�P5', 'wp-admin/options-general.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�PQ��;%5�o-��'),
('p��7u�L�_{2Û�', 'wp-includes/js/jquery/ui/draggable.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'PV�d��@��Y��'),
('pUy�a	�b��va�;�8', 'wp-includes/js/comment-reply.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��N�خ���T�&\0'),
('p�t��2��\r����n�', 'wp-content/plugins/polylang/flags/aw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'n�''��G4_���>5'),
('p��.а��[ÍD�', 'wp-includes/deprecated.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�H�b�sn.�s��GF�'),
('p��z�� h�� ���', 'wp-content/plugins/polylang/flags/hk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '8�Q���@芓X����'),
('p�%}��28�~��.', 'wp-content/plugins/polylang/flags/bi.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'B|r�4(��b�5�Ǻ'),
('q\0^�mvBsfC~�', 'wp-content/themes/twentyfifteen/index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ɲb�ZK���K�W��:'),
('q"�co���>�2Rh�]', 'wp-admin/includes/plugin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��2�Ӭwh-�u=���'),
('qh�665�y|�=�?S	', 'wp-includes/js/jquery/jquery.serialize-object.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\\)������J�l<�"'),
('q��5@�*=�&��\\X�', 'wp-content/plugins/wordfence/lib/wfHelperBin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ';��!�ȍ��4Q��X#'),
('qϮ\0�[\n\\\ZX�� ���', 'wp-content/plugins/polylang/flags/th.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��(k������6��RQ'),
('r��h��v��Lk/��', 'wp-admin/network/upgrade.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|���f*���(���'),
('r+zk;� 4��WI', 'wp-includes/js/tinymce/themes/modern/theme.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\r�ZT��|�u���"\\'),
('r7�Kl��+6�srQ��', 'wp-content/plugins/polylang/admin/admin-model.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'v�^Z�(��ZqW''�f��'),
('rt�i�. �:v��V&�', 'wp-content/plugins/wordfence/css/jquery-ui.theme.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���{_����#��S'),
('r�(n՞���j��b"', 'wp-admin/js/media.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'υ�^p0LB�uSŅ'),
('r�_�/��HG=�%�<�', 'wp-includes/images/arrow-pointer-blue-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%m�rތ]4�9c�'),
('r��r�(J�g�(�y�t', 'wp-includes/js/mce-view.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�_�-N�k6e���\\['),
('r��\n��b��#��', 'wp-admin/css/media-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 's"U� ��)�9�=7'),
('s��y-� �A�X�Q�g', 'wp-content/themes/twentysixteen/genericons/Genericons.woff', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��;(H��-Jht�x�'),
('s�E�Ξq�p�B���', 'wp-admin/css/widgets-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '#v�#�|W��ه��?�'),
('s�ŏU''���e@�d�', 'wp-includes/js/tinymce/plugins/fullscreen/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '@ǁ�B�F�i��⻇�"'),
('s��˱�Y*u���O�', 'wp-content/plugins/wordfence/vendor/composer/autoload_psr4.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�:\0��>������}LQ\0'),
('s�C4M�*��*B�)�', 'wp-includes/css/wp-pointer.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Lh(�(Ȁ�����'),
('t6��O�\ra��Ȇ�f', 'wp-admin/js/plugin-install.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�pCzb�CZ�����'),
('t8����p�̋�z{jDp', 'wp-includes/css/buttons-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���@�:[�����^�'),
('t?W�L�;Vn%�B�}/�', 'wp-content/plugins/polylang/flags/cr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�(��蟢�D�vB�_�'),
('tU�/Ds�Iڤ�st�', 'wp-includes/js/wp-auth-check.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��z}j����o)��'),
('tm6ۗ�q���.��=j', 'wp-admin/css/colors/blue/colors.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�M>/�U���F�'),
('t�����.�Õ�81�', 'wp-includes/random_compat/random_bytes_com_dotnet.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'er��LV��str��'),
('t��x�*�nݘ&ؒ��', 'wp-content/plugins/duplicator/assets/css/images/ui-icons_454545_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����J։އ>��>n'),
('tܨS�9&&�����+', 'wp-content/plugins/polylang/flags/vg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'y�WQI�f=����'),
('ue�,"\n	�h�g.', 'wp-admin/css/colors/_mixins.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'E"m�z�2�J�Ǖ<P�'),
('uv�՞(S5���훨', 'wp-content/themes/twentyfifteen/style.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4�$��I��h�;aR�'),
('u��3!pA�f�)R�M�', 'wp-includes/js/tinymce/plugins/wpgallery/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�H4PD�����DM\\I'),
('u�M	�\Z���D!aQ,�', 'wp-content/plugins/duplicator/lang/wpduplicator.pot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9��h���M�u9���['),
('u�qg\Z\0�8�hԭ�\0�', 'wp-admin/custom-header.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�z_u��	��эBD�'),
('u��Q"��~W����ð', 'wp-content/themes/twentyfifteen/genericons/LICENSE.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�4�Mi���Hj���JBc'),
('vڴ����V���K��P', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce.eot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$z�3�`c���.'),
('vK9(��<��a���S', 'wp-content/plugins/duplicator/assets/img/logo.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�D��\\e#���E���'),
('vK;@�s�aU1;�	^�', 'wp-config.php', 0, '��g������g�*', '��g������g�*'),
('vj/�3�Oy|����', 'wp-content/plugins/polylang/modules/plugins/wp-import.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��lb�^W����R�('),
('vlBT��[6��B�J�', 'wp-content/themes/twentyfifteen/genericons/README.md', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'u�9\nJ��La7Q��焑'),
('vw��@�H��z�F�', 'wp-admin/ms-admin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���@�ͯE�b6�'),
('v]�z������3�tB', 'wp-admin/includes/class-wp-importer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�^�)���=����A�@'),
('v��ޣ��R�', 'wp-includes/js/jquery/jquery-migrate.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\0�����F�w�'),
('vâ,\\�+Q�����֧', 'wp-admin/css/l10n-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��\0�Y��I]�'),
('v�G�.�g�A��#�r�', 'wp-admin/images/align-right-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'h�l�>r�]�lW��x'),
('v����4�|>�<����', 'wp-admin/js/xfn.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����t�+��n�(k'),
('v�{#��l��b\0}��B', 'wp-admin/css/colors/light/colors.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��z%M���d;�u��0�'),
('v�Ҹ);�D��~J"��q', 'wp-includes/js/jquery/jquery.form.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���.�,�+��\nq'),
('wu�l|��p��Q', 'wp-includes/js/autosave.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�l���h/	�&Xɫg'),
('w�i�''�c���û�qz', 'wp-content/plugins/polylang/flags/ch.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�{�vq��+<�J]['),
('w-��I\\��7��=�v', 'wp-content/plugins/polylang/languages/polylang-ary.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�G9���p���dD���'),
('w��C��O�x��#�)n', 'wp-content/plugins/duplicator/views/tools/controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'I�$�''e]�EH�%'),
('w���L��0���]r.', 'wp-includes/images/crystal/code.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '`�1������1�9'),
('w��`M��>�{���', 'wp-admin/includes/noop.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�KИ�d�԰����/��'),
('w������:}V��P', 'wp-admin/js/common.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ZQ�0��(�|&�X�'),
('w�i����Xg�eq.5', 'wp-content/plugins/polylang/flags/ws.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'h?d2�\Z��z�1���'),
('x	G!N�$�.�d�Tb�', 'wp-includes/ID3/module.audio-video.flv.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'k�Hi�,W��Q�F���'),
('x���b���(�ڴr/�', 'wp-content/plugins/polylang/flags/cd.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4�*���s�A;\rE'),
('x.o\Z0L�u ϳ��', 'wp-content/themes/twentyfifteen/header.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6E�ִ��J���M'),
('x7����M�J^A�;', 'wp-content/plugins/polylang/include/api.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��H�}8�܁B3/Ւ��'),
('x9@^6��ߑ��o��', 'wp-includes/images/w-logo-blue.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�[N�W��_p�w�0'),
('x<�ϙ�D�^Y�W2%', 'wp-content/plugins/polylang/flags/hm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/�IȈ�����G\\���'),
('xIH�.�9�Y��BO', 'wp-admin/css/colors/coffee/colors.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9~8 �z#C0�^%a�'),
('xy�!���q�)�.ˉ"', 'wp-content/plugins/wordfence/images/sort_desc_disabled.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�m����͟��r�� 9'),
('x�s�2����"Z�U�®', 'wp-content/themes/twentyfifteen/404.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�� ��2�MD�$��'),
('x�^m�]̲�/��L4vU', 'wp-admin/includes/revision.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '_��nf��1����k?'),
('x�j�	���&�����', 'wp-content/.DS_Store', 0, '�b/��F�7;)?��', '�b/��F�7;)?��'),
('x����rm%��b�8�', 'wp-content/plugins/polylang/flags/kz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'mQk�R�_�]vE315'),
('x�k����M�^���O', 'wp-content/themes/twentysixteen/inc/template-tags.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Lf��y�''�^��\0'),
('x덂��@}Y��i�+', 'wp-includes/js/tinymce/plugins/tabfocus/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'j]xL*��_d���5I/'),
('y���1��-�/fIנ', 'wp-content/plugins/wordfence/lib/Diff/Renderer/Html/Array.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�±���t�T2�y%p�'),
('y��\n�,\nC�|[i', 'wp-includes/customize/class-wp-customize-selective-refresh.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Q����i^��g*׉%'),
('y���E�a��:�[\0', 'wp-includes/class.wp-dependencies.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���˝�.����7��h'),
('y�C[�P�,؆��9�v', 'wp-content/plugins/polylang/flags/pn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���W�4���w�6�;�'),
('y��C(����#Tp', 'wp-content/plugins/duplicator/installer/build/ajax.step1.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '!K��r���U:^�ܤ'),
('y�ބ�[$P��m�G��', 'wp-content/plugins/polylang/flags/bb.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'GȮ�f_N�Zzs��'),
('y���G�\\`����MR�', 'wp-admin/network/site-new.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\n�V&��ѧeG���T'),
('z;j2WD�6��[�V', 'wp-admin/js/accordion.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�?�=L�/�%NZ�\\�\n'),
('z�5�*\ZADZCk��j��', 'wp-content/plugins/wordfence/images/icons/magnifier.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���uO�{:qcV��'''),
('z��Q<��''��U~�R\\', 'wp-includes/css/wp-embed-template.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�0�q��<��T�/�k�'),
('z����JX�w{!\rF���', 'wp-admin/includes/class-wp-upgrader-skins.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',���?S"��Nf��e'),
('z��7,D\Z2��㭉M', 'wp-content/themes/twentysixteen/comments.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'n�D>D�W�%�_]~��'),
('{��a�t�\n">��S', 'wp-includes/js/mediaelement/flashmediaelement.swf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\0F�\\�U���>�`-'),
('{rD���mx���x', 'wp-content/plugins/polylang/languages/polylang-ka_GE.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'A���[��$.�x�'),
('{N���2�Q�u��=	�', 'wp-admin/network/theme-editor.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�O�F��dm����j'),
('{Pz�ҹ��a�e�ӧ�9', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/bootstrap-sample.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'K!��೚R�l�q`'),
('{t�E~��P�A�1��', 'wp-admin/js/tags.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'L�Bf�Z��<���/s'),
('{y"�ҵ��ݩ�{���', 'wp-admin/includes/class-walker-category-checklist.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�J_��e�q�_5'),
('{�)�4e4p:�fW�', 'wp-includes/js/jquery/jquery.query.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ';�Xz�ǰ����wC'),
('{�RC��\Z�.*"�Q', 'wp-includes/feed.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\�}�1��L���Γ'),
('{�\r�-��}�^��', 'wp-includes/images/smilies/frownie.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Q���������'),
('{���?����\r��\n''', 'wp-admin/images/imgedit-icons.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'K�\\2���}�G�i;O'),
('|j��x7�(Q}�0�''�', 'wp-admin/css/list-tables.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '?���Y��g�6��'),
('|/ڒ�\0[*4��x��', 'wp-includes/js/admin-bar.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�z���A擒�ZG�=�'),
('|1��QA�����E�`1', 'wp-admin/css/press-this-editor.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',	nJ��Ǘ��z��} '),
('|;�?���1��2', 'wp-content/themes/twentyfourteen/css/ie.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ǎ?�n��Oj��eA'),
('|�t|�Ay��\rA�����', 'wp-content/themes/twentyfourteen/content-none.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�	�]X&2��_'),
('|����,^�j���$n', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce-small.json', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�A�\r2_s:��SV�'),
('|��Y�>���	�Ɔ�', 'wp-admin/link-add.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'u�G�D�/�ϥ�W��'),
('}ĉ=�t�����', 'wp-includes/images/toggle-arrow-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'F���\\����CDr�'),
('}*"��\0y�a�=H�m�', 'wp-content/plugins/polylang/flags/veneto.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2	4�m}(;��k�M'),
('}`��g"P�2��V��', 'wp-includes/images/spinner-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\q��9)hdxR���]l'),
('}��4�	�-M�q{�O�', 'wp-content/plugins/polylang/flags/mz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��A���<h��)�'),
('}�7 ޘ�DHD�Pl', 'wp-includes/SimplePie/Registry.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ȣ����1v9�d\0�ٸ'),
('}�Ȑ�\\L��`���i)', 'wp-includes/ID3/license.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '5ي����hQ3fQ��k�'),
('}�0��5���M�Z��', 'wp-content/plugins/wordfence/js/select2.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' bG�.i��TR�U�'),
('}���{RҢ����"', 'wp-includes/default-constants.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��v�y��p�����'),
('~ �5�nX�''�u�te�', 'wp-content/plugins/duplicator/classes/logging.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'G�.\r��n�^��%�'),
('~79�h�g$+�=���\\0', 'wp-admin/js/bookmarklet.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���a���ݬ%T<E'),
('~?�J�I�b*׺�e�C', 'wp-admin/images/resize.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '?�D�$�\r�Xv����a'),
('~F��㫎>dy��j�', 'wp-includes/css/jquery-ui-dialog-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�.�R��8��)��I'),
('~��ReOX�f2��`�', 'wp-includes/class-wp-post.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Щx�^X��So��Yj&'),
('~ť�s\0�1y�$�L}h', 'wp-config-sample.php', 0, '�x�\n���7�V�w��', '�x�\n���7�V�w��'),
('~�Ӹbc��\Z$�@$��*', 'wp-content/plugins/wordfence/vendor/composer/autoload_real.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�c�@�q���xy=`��'),
('~Ӥ�w�J̼���.�', 'wp-content/plugins/wordfence/lib/schedWeekEntry.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'D�1�D1����� .V'),
('`^�X��_dؾ�#�\r', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce.json', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���"ם��u��B�X'),
('^k�֪Dv6�R�', 'wp-content/plugins/wordfence/lib/wfRate.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�|\\X�E����\n�W�\0'),
('j&��^����b����', 'wp-includes/ms-settings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'c�[W񱤷��:#�'),
('�СqD֚?�i�X', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/utils.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����,�ا\Z.8�e��'),
('�K�Q�}U&;&���Q', 'wp-includes/meta.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'F.o^�''��7u^nV'),
('�tr�εF_� ���', 'wp-includes/js/wp-emoji-loader.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-''1�6�yK�Y�J.'),
('鍕��c�B�w!��W', 'wp-content/themes/twentyfifteen/readme.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':))��mȩ�ԤJ�'),
('�.G&�<m�b����,�', 'wp-content/plugins/duplicator/assets/img/cpanel-48.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��5/X�%a�ηӢi'),
('�R9��҅��I�;^�', 'wp-content/plugins/polylang/flags/il.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�5����9Ak�$v�+'),
('�R�*�����������', '.htaccess', 0, '	<����A!PN�l2�:(', '	<����A!PN�l2�:('),
('���SP�;^ƭz��I', 'wp-content/plugins/wordfence/lib/conntest.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�j��"�����r\r'),
('��ں�u���M���[\r', 'wp-admin/images/wpspin_light-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}�3��Y�(�I��m'),
('��sSk�i�<4''c�-6', 'wp-includes/js/wp-embed.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'W|�;��sof2C�M��'),
('���+��0�����1', 'wp-content/plugins/wordfence/lib/menu_blockedIPs.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�}������م�(�'),
('����e��97�aJS', 'wp-includes/images/smilies/icon_smile.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��G)ö��u��\\\nM'),
('��XQ���d9r�ڼ��', 'wp-includes/customize/class-wp-customize-themes-section.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.��������1"AV'),
('�el�5�s��E�úQ�', 'wp-admin/js/media-upload.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�/�����%���f�'),
('��,CUU����9i-', 'wp-includes/css/wp-auth-check.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�u,�ș��)~�G���'),
('�ȉV?	��]�)A', 'wp-includes/js/media-views.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����4NKB�!���2<'),
('��X����-�4�J�_�3', 'wp-content/plugins/wordfence/lib/wordfenceHash.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'LRh��n�a�;�'),
('�����''>�[��·�', 'wp-admin/js/user-profile.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����z�A�k��#��'),
('���Pd������c�3', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/http.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 's�[''�����h7�3;,�'),
('�O�X��g]<f@�', 'wp-admin/css/farbtastic-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z�L	czG�0~l0W��'),
('�3��Ƈe�(ú9�', 'wp-includes/js/jquery/suggest.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 's\\+A)���n.;��'),
('��\\�(��wB��I�', 'wp-admin/network/update.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�E�^�!��u��)�u�'),
('�"ݷ	f0�&��9���Y', 'wp-content/plugins/polylang/flags/gt.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '8N�8B\ZhS��]H�Ě�'),
('�(tTlDά7&��MP.�', 'wp-includes/js/tinymce/tiny_mce_popup.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�� �B+u؞˘4	�m'),
('�B��ه�v<Sv稳', 'wp-includes/SimplePie/Parse/Date.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���\rȯƹeҹ��^'),
('�F� �GJ��B��s7�', 'wp-includes/js/media-models.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����vx2G�T�'),
('�w��5�����)���', 'wp-includes/css/wp-embed-template-ie.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�)6��	؞мq ���'),
('��\0���+OW+�', 'index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�%0;��s��Dm\\�:['),
('�����A���1\Z�;�', 'wp-includes/rss.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ⓑF(|��ܢ��in'),
('����v�A\nGr�3C9`', 'wp-admin/includes/class-wp-internal-pointers.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�I��Nt�#S�#A��'),
('���]]S�x�^�6�', 'wp-content/themes/twentysixteen/inc/back-compat.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��ˀ^�l��t�ߌ'),
('�` ��Q�49���ߣ', 'wp-content/plugins/polylang/css/selectmenu.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '!�K�á(^��FQ�*'),
('��>���S�`�y7ì�@', 'wp-content/plugins/polylang/frontend/choose-lang-content.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��''k��n7�u6F'),
('��?���z6���aDz', 'wp-content/plugins/wordfence/images/loading.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'K:�����m𙗣P�'),
('���ʆ��n�D㮖�(', 'wp-admin/css/install.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'c�-�w�te=��-b'),
('��f�N�d�����L��', 'wp-content/plugins/wordfence/lib/cronview.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Wjۚ�����مO'),
('�)ũ��2[�	�4�_a', 'wp-includes/class-walker-category-dropdown.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	�߶��yv��%`,��m'),
('�9֡T}�_d$��=', 'wp-content/plugins/duplicator/assets/img/amazon-64.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'z���}p��0χ�'),
('�:+[��g��CZ���', 'wp-includes/template-loader.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�G�\rwt��\0���8˓'),
('�~��H �|���e$��', 'wp-content/plugins/duplicator/views/packages/details/controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'J��j��W�Fce):[\n'),
('�����Uve�.��9�u', 'wp-content/plugins/polylang/flags/hn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��B�V�x\0�#���y�W'),
('�ĝYE	���$��', 'wp-content/themes/twentyfourteen/taxonomy-post_format.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�.��\\+6��΁!��'),
('��nv��Z�YV����', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/init.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��$�*(��\03���'),
('�g�1��ܠ�%l��', 'wp-content/plugins/polylang/flags/id.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��8���\0��U�T&tL'),
('�8�th��[g�N���', 'wp-content/plugins/polylang/flags/dz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�<	Q�%�5����ֱ'),
('�B%v6�I"Jb��4ӡT', 'wp-admin/link-manager.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'n,{C�ٽ�/�p�Q�'),
('�p¾��?/[㴀*�', 'wp-content/plugins/polylang/include/license.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'q�%���Hz�!Ъ�'),
('��>�A�B�7�Sz!�e', 'wp-admin/includes/export.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�m]4�''\r|j/�)'),
('���.DtR;ŀJ�Y��', 'wp-content/plugins/duplicator/lang/duplicator-de_DE.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��(b��8�I�}����'),
('�1�eU��MV��^��', 'wp-admin/includes/misc.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�(mr��2��%V�M��'),
('�5GzA`G�F���V	U', 'wp-content/plugins/polylang/settings/table-settings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�熌Pb\Z���F���'),
('�@GBW�%�4''p�d�Q', 'wp-content/plugins/polylang/flags/ug.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�4���v�UA��an]'),
('��\0�>#����z(', 'wp-includes/bookmark.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^�}�K�~<�F|�FruS'),
('���������}��', 'wp-admin/media-upload.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�P��a\n''"�Oe��1J�'),
('���P�w���0�h�9', 'wp-includes/js/tinymce/plugins/fullscreen/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��7�Tr_��0仵��'),
('�J�&_#��3S�q���', 'wp-admin/images/spinner-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\q��9)hdxR���]l'),
('�V+@�0���p�ɏhi', 'wp-includes/rest-api/class-wp-rest-response.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�<l�t�6G�''��.X�'),
('�b~5�a���I@)*�', 'wp-includes/class-wp-site.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'k�@�J�D;a������'),
('�u6�/LQ�nWߞH', 'wp-content/plugins/polylang/flags/ng.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Pa1��x.O�\\쉩'),
('��\\:��ڈ��)g,\\', 'wp-includes/images/smilies/icon_twisted.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'b���.�8\Z|`�Q�LF'),
('��!��E��S7�x����', 'wp-content/wflogs/rules.php', 0, '�z�OKP� ��;��@', '�z�OKP� ��;��@'),
('���3v�U�\Z3�P�^O ', 'wp-admin/css/widgets-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�[\0v���u�� �����'),
('��L �U����f��u�<', 'wp-admin/images/icons32-vs.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',�P*���{>v��Uf'),
('���o�w���Ў�696I', 'wp-includes/random_compat/cast_to_int.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�_vtZ��;�f�0�\\�'),
('��y��/��dz�Qg��', 'wp-content/plugins/wordfence/js/tourTip.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�K��$g�M�{坥w'),
('�\0�~%?��Q�\ZiVz', 'wp-content/plugins/polylang/flags/mr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'lȡ���B\Z8��s�|�'),
('�!��88�^��e��', 'wp-content/plugins/duplicator/views/packages/main/new2.base.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' �K��a�ZdH�|�'),
('�:=�%�����M�۵', 'wp-includes/template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\r�a��@xi ��a���'),
('�I�{�?��r�]��7', 'wp-admin/images/resize-rtl.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ےc�ZY�6��'),
('�m�m�\\�T�_�on3', 'wp-content/plugins/duplicator/classes/package.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�g��v�''B���'),
('�p{w$K�B��4>�', 'wp-content/plugins/polylang/flags/pk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ';щq�n�F&��'),
('�u#]z*�|�?�r�O', 'wp-content/plugins/polylang/include/olt-manager.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�2��7�R�X��U��g'),
('�7*���"{��\n�K<', 'wp-admin/includes/ms-deprecated.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Oa�@�؅��ӯ��A'),
('�?�8������Z��N�', 'wp-includes/ID3/module.tag.lyrics3.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'U��3����"9��2�'),
('�j��I���<꟟��iU', 'wp-includes/category-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�&fũUX0�1Hl\0'),
('�t�g}O�H��7�', 'wp-content/plugins/polylang/flags/wf.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��\Z�7��t��gp��'),
('���Q��Ws�A7d\n', 'wp-admin/css/site-icon-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���ٮ�Nh}b�p�X�'),
('��e�\\��1�tƋ�<	�', 'wp-content/plugins/wordfence/lib/wfUpdateCheck.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\r����^,l�8!l'),
('��B]nȄ�8�7g��', 'wp-includes/images/smilies/icon_rolleyes.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Ȼ�_�Ҹ*>,\Z�\Z!j'),
('���ڝ�	&�(��!W�', 'wp-content/plugins/duplicator/views/tools/cleanup.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�{�q�&�\0�:�C�ox'),
('�w-\Z/L������', 'wp-content/plugins/polylang/flags/mv.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$���?�02vði�'),
('�\Z%��ܢ��4Y�8', 'wp-content/plugins/polylang/flags/yt.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�l|ײGL��[ �U�'),
('�%����,�����fS�', 'wp-content/plugins/polylang/flags/lc.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�_,y�wK� ��\n�'),
('�4B�i\01������>/�', 'wp-content/themes/twentyfourteen/content-aside.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����y�*s�$�uR'),
('�Mj�A�M��O�"If', 'wp-includes/SimplePie/Net/IPv6.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Fy!j�ـ�����'),
('��$��xM1>�_8P\0', 'wp-includes/js/swfupload/swfupload.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�:�E%ρz���s~'),
('��p�q\nC�[�]��L/', 'wp-content/plugins/polylang/flags/sd.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�r��3i� �XѸ`��'),
('���6�d��x�D��', 'wp-includes/js/mediaelement/background.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'p<e�K�c�\\c8�r~\0l'),
('��Qs|�c�L؜VH�)', 'wp-admin/includes/class-walker-nav-menu-checklist.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���������n�'),
('�n97�I.O�ҝ޿�', 'wp-includes/js/heartbeat.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z0���?.?�g)�S�ѡ'),
('����q𷞊�D��`', 'wp-content/themes/twentyfifteen/js/skip-link-focus-fix.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�t���>:{������'),
('����h+��B����', 'wp-includes/js/tw-sack.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�D�N�k�P\n�~h�'),
('��F�"��vh�$Lb��', 'wp-includes/js/imgareaselect/border-anim-v.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' �z!�<�7������*�'),
('��yc�0O�g)ρ�Mf�', 'wp-admin/network/site-settings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�=����a��ؒ�'),
('�-c��3�y�L����', 'wp-content/plugins/duplicator/lang/wpduplicator-de_DE.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����)w���@��\0/s'),
('�?�\n5��H�?������', 'wp-admin/css/customize-controls.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Ċ�^��x�1���'),
('�M$!���\\�z���', 'wp-content/plugins/wordfence/css/images/ui-icons_fbe569_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���u�3�<�����j'),
('�ON5��d��ݹ�� ��', 'wp-content/plugins/duplicator/assets/css/images/ui-bg_glass_95_fef1ec_1x400.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '������*o�]��c'),
('���i?� �0���I�ŝ', 'wp-content/plugins/polylang/languages/polylang-pl_PL.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' m���ݭ�����'),
('�����juGCtO����', 'wp-admin/css/colors/coffee/colors-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'zj�o���{������$'),
('��l�.H|S���{��', 'wp-includes/js/jquery/ui/effect-transfer.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ި\0w}����n�'),
('��u��d*�oZ>��', 'wp-content/themes/twentyfourteen/inc/widgets.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��}O%���[�~X�8'),
('���an���V=Ty X�', 'wp-includes/SimplePie/Copyright.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��h�T��	Ù���j'),
('�9��}��몟��!\Z\r�', 'wp-content/themes/twentysixteen/genericons/Genericons.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ')�ld*�Z�����b�'),
('�M��2��έ�"�@�8', 'wp-content/themes/twentysixteen/search.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'دveF�@��1�a�'),
('�} �yT��Z�H�cDJ', 'wp-admin/js/custom-background.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��#Y>W� �����e�'),
('���k�`�^;�D��,g�', 'wp-content/plugins/polylang/flags/na.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�1� �8�6�� '),
('��{�0l(Ʋu9,wS�u', 'wp-includes/js/media-audiovideo.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�VP<�k�;D�.?F��;'),
('�鄞���T��7���', 'wp-content/plugins/polylang/flags/sv.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Svm��-�"Y��/\\'),
('� �A$ۤfC�N��37', 'wp-includes/query.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'a�(���z��[��D�P'),
('�(���ה�W�h@=a', 'wp-includes/images/smilies/icon_mad.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '׾�ie\Zc�{��0'),
('�+qO�\\�A�a�\Z��', 'wp-content/plugins/polylang/include/static-pages.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'u�k]a;4���Љ��.'),
('�RLS�f,�@��L=�.', 'wp-content/plugins/wordfence/lib/menu_activity.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�^2q0\r�AW2�s��'),
('����v���ό�Y9�', 'wp-includes/ID3/getid3.lib.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�-�dr"�K$��u_��'),
('����ɜ�G��&', 'wp-content/plugins/duplicator/assets/css/images/ui-icons_222222_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�涐*@����cy�Gu%'),
('���X����H�o�v�', 'wp-admin/css/common-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��@��Lz��'),
('���\0�=j噂����', 'wp-content/plugins/polylang/flags/ba.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '˶�Fƞ������h\r3'),
('��֗]NR���S{qv?�', 'wp-admin/css/wp-admin-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 't�������fo�,i�s�'),
('���Ĭ+�����0', 'wp-content/themes/twentyfifteen/css/ie.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�l�g��IN�6���'),
('��Le�$Th�Y��ܟ�', 'wp-content/plugins/duplicator/views/packages/controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '<r=	\0%2^)��%1�<'),
('��+�Ϳ�#Ft�EǍ7', 'wp-includes/js/mediaelement/froogaloop.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*�B����#�D����'),
('�$�����j�X�])D:', 'wp-load.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'U���n�]��@)"'),
('�V�Vr��j����TW', 'wp-content/plugins/polylang/flags/pg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H����;���a��'),
('�j%M�ɍ��p)Z��', 'wp-admin/images/generic.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����''�[#98!�'),
('�{̕]݊�3��', 'wp-content/plugins/polylang/flags/nc.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����_�#��<�Cx'),
('��_@l@�����\r�c��', 'wp-content/plugins/polylang/flags/tf.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�̺��N��Lx`���'),
('��;(Xp`ҙ��pݷ', 'wp-includes/js/plupload/handlers.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�<�`a*6Y$�qpM�\\'),
('��1�{�a���,��', 'wp-content/plugins/duplicator/assets/css/font-awesome.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'O��`G��7?O�V9ȿ'),
('��t�0�g�a�/���', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce-small.woff', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~��-�������x''�	'),
('�\n�qo�qZVyX��9', 'wp-admin/includes/menu.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\��!5F�F�+@	)'),
('�e�\\]�f#҆<�K', 'wp-content/plugins/polylang/include/links-default.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+rO�>K�ypPםRD'),
('��Ư	''CԻ��ګ\Z', 'wp-includes/images/admin-bar-sprite.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'S���:�W����^'),
('��"�Z0\0ؿe�Ԧp�', 'wp-admin/css/admin-menu.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��h%C�\04b_�'),
('����x8[!>�X', 'wp-admin/includes/class-wp-users-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�6�H�j������g'),
('��X�/7�斎�!.', 'wp-content/plugins/polylang/install/install-base.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�2�L]~�bD ��'),
('�S����KK2iɈ', 'wp-includes/comment.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�N7"K,����B���'),
('�y�g��zaU"�	XKG', 'wp-includes/js/hoverIntent.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ʳY�C��c�On�כ'),
('��DBE��΄�]H\n�A�', 'wp-content/plugins/polylang/flags/kurdistan.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'y��[HU5�揿�:��'),
('����ؐ�F����8��', 'wp-content/plugins/polylang/admin/admin-filters-term.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ӭ���\0�Ҧ��o�J'),
('�/�ɘ�]�^�W\\�q', 'wp-includes/css/wp-embed-template.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '{��w�S���4~��q'),
('�`m���H�6�O�ʠ', 'wp-content/plugins/polylang/flags/galicia.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��t-ɥf�I��k'),
('�s�yF�%B�\\�"`aj', 'wp-content/plugins/polylang/flags/gh.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'څrM��w�r�ۍ�q'),
('�v{L�Jlō�Yz�`�(', 'wp-includes/js/thickbox/thickbox.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'm��`���m�-�/%�'),
('�����{�9I���u�', 'wp-content/plugins/polylang/include/translated-object.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�}.���,!$�^Le'),
('��5*�W�H�P��BZ', 'wp-content/plugins/polylang/uninstall.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ΰ���.�����T��'),
('�X�VטO|8}���', 'wp-includes/theme.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '˺���32^{�3��\\�'),
('�8��xzCE���*�q', 'wp-content/plugins/polylang/settings/table-string.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '7�81Q���+��'),
('�@�m��)s���4�L', 'wp-content/plugins/polylang/js/term.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����Jplo?�_�^k�'),
('�A�A��v\\,_��E', 'wp-content/plugins/polylang/flags/ci.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���,!Qv��E;���C'),
('�B�H*mz��N83��', 'wp-admin/css/edit-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H0�k>:@��b�U��U'),
('�V}�P���m�/�|I*�', 'wp-includes/js/customize-loader.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�<$DB)�m���C�'),
('��.��v8-rJŕ�qQ', 'wp-includes/js/wp-auth-check.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�P\r�J�vv�\Zy��%�e'),
('��n��4�ۆ�x��', 'wp-content/plugins/wordfence/lib/menu_twoFactor.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��\\�����oLs��o'),
('��7��E#�wŧj���', 'wp-admin/includes/image-edit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':�&��Ї��\ro[�9'),
('��Q�c$2�6.�i��', 'wp-content/plugins/wordfence/css/images/ui-bg_flat_75_ffffff_40x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ');7/E��w�A��g'),
('��\0i[V�Q�\n�1�a', 'wp-content/plugins/polylang/include/switcher.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��7�� O�cWr7=fT'),
('��v���|�-��', 'wp-includes/js/tinymce/plugins/tabfocus/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�͓���>5��C���'),
('�!HUN&�"����z��', 'wp-admin/css/widgets.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��O���$,L���'),
('�a�tU�q�^!�0ƣl�', 'wp-includes/post-formats.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�J�R�֓L*Q)>��'),
('�k���zߣ����bo�R', 'wp-admin/post-new.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���~Lm���0\r�u˗'),
('��@��{�J��5䷴X', 'wp-includes/js/tinymce/skins/wordpress/images/playlist-audio.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'U,�:)��؋"�QqY'),
('����L��6	���׳', 'wp-includes/ID3/module.audio.ac3.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�E\0�L;"O�����d'''),
('��T��V�����\\��', 'wp-admin/import.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>_���sJ�8��*`S�'),
('�֫=9�jV��ocy2�', 'wp-content/plugins/duplicator/classes/server.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ']�.B���o��\Zk*B�'),
('�ڙ��;�Av''���', 'wp-content/plugins/polylang/flags/uz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '7佶B)�bL��}B�!M'),
('�ܵ[Ҳm%�6�S8:D', 'wp-includes/images/toggle-arrow.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��·�a��;�d��*�'),
('����!ެ��߳���p', 'wp-includes/images/crystal/default.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'A�>)*/��!�-�'),
('����ª�0�����I', 'wp-content/plugins/polylang/flags/is.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����Ȑ�HX~�'),
('�?�>\0%lD[T��', 'wp-content/plugins/wordfence/css/images/ui-bg_flat_100_222_40x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�^�F�"�I~�\0�GͲ'),
('�h�����FuQe� �', 'wp-includes/images/wlw/wp-comments.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'L�6]P����.s���'),
('��sK��� C���\\G/', 'wp-content/themes/twentysixteen/template-parts/content-search.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}A9���l�c\nOW'),
('�ǀ3�<��&��YĆ', 'wp-includes/class-wp-roles.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}�kOm��YS=� ���'),
('��f0��ͭ��~�)', 'wp-includes/fonts/dashicons.woff', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z�_rY+ʂ;�'),
('��MO,���s���\r��', 'wp-includes/class-wp-http-encoding.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�3�*j(ʀ\n&���'),
('�6�|;�;8�Q�4�k��', 'wp-admin/install.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�w��xkt�Q�f󵅸'),
('�9�e�E��bݾl�3�', 'wp-includes/js/wp-lists.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�U��0`�^_�ob8Ƿ'),
('��\Z5o��#R''/��l', 'wp-includes/fonts/dashicons.eot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '0���!_����y�H'),
('����E�?��Юᾠ', 'wp-includes/js/media-views.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\0�$���[�  �*�'),
('��Cg����}|�E��', 'wp-admin/js/word-count.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�P_��J''䓖AE��'),
('�	v�O.�|ߤҵ�', 'wp-includes/js/tinymce/license.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ']�t"ٞ3��[�t�|');
INSERT INTO `wp_wfFileMods` (`filenameMD5`, `filename`, `knownFile`, `oldMD5`, `newMD5`) VALUES
('�S\n��(X�0]��~*�', 'wp-content/plugins/polylang/flags/kn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�rzv�e%�c4�\Z�j'),
('�Z���k�K�Cr\\�', 'wp-content/plugins/polylang/flags/ca.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�p�E�����T��)�'),
('��b�������|e~�', 'wp-admin/css/customize-widgets.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���1����"@�	'),
('�\0h�Kf��\0��', 'wp-content/plugins/wordfence/images/forward_enabled.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'U\0/3e4e������'),
('������H�06�', 'wp-admin/images/browser.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����K\\�b�$�F'),
('����8(\Z�j�Z]}', 'wp-includes/js/jquery/ui/effect-pulsate.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�&`������f��'),
('�X����g5����(�=c', 'wp-includes/js/tinymce/skins/lightgray/img/trans.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��7I �1F�Gu�j^'),
('�pt_ Y����7L�Kt', 'wp-admin/css/deprecated-media-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�W	�G���u	\ZL'),
('����T��D��F�K1�', 'wp-admin/css/media.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'mˍE%\0�\\\n��7��'),
('��/GΞӶ[�ǜ��C', 'wp-admin/js/gallery.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'xϩe�9e���m嵫�'),
('���[�/�9}�`:w�P', 'license.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��e�1���x����'),
('�\0�����.}�fwA', 'wp-includes/date.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�O[���Z�\n:� �PA�'),
('�z�i�����g9&� �', 'wp-content/plugins/polylang/flags/gn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����)ۊ����e�"'),
('�[���QH"pS1Ȫ�c', 'wp-admin/images/arrows-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '� Q��}��ydb#6�'),
('��[ixT�q��~Wv�e', 'wp-admin/network/plugin-editor.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '?�͚�GM�XZ\ri=�'),
('��F~���y�c7v-', 'wp-includes/js/customize-preview-nav-menus.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'I\ZwC��0�+��*���'),
('��EN0����6', 'wp-content/plugins/wordfence/js/jquery.dataTables.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'aG��z�����׳�'),
('��6��KFJZ�;�\n�', 'wp-content/languages/fr_FR.po', 0, '#K,�a�N��ɼ����', '#K,�a�N��ɼ����'),
('�\Z-��x7��(A�4���', 'wp-includes/js/swfupload/license.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��[�`�^�-�o�QWz'),
('�1W;c�����N��"�u', 'wp-includes/pomo/streams.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��s�|�-�<i�p�'),
('�J��B�GT�;,l��T', 'wp-includes/images/smilies/icon_exclaim.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\�qE�\Z!HY__=�{_�'),
('�V�^�3��m6�._P', 'wp-includes/customize/class-wp-customize-background-image-setting.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ')�@�t��j23��W'),
('�����[���D?_�[�', 'wp-includes/random_compat/random_bytes_libsodium.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����f���}��>'),
('���7�M3�$��', 'wp-includes/images/smilies/icon_question.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�''u��&E�qA���mN�'),
('����2@�k�w>K�2', 'wp-includes/feed-atom.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\\��F�x9;'),
('�����H\0ۙ��h�C��', 'wp-admin/css/colors/ectoplasm/colors.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'J��:�8�H�b���'),
('��wt�H���-s�\0�n', 'wp-includes/js/wplink.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��{~\\2)Y�f�_�['),
('����=֬H�@-i��', 'wp-includes/css/admin-bar-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3Ġ�H������>��'),
('��,�(+��Q�9�r�', 'wp-content/plugins/duplicator/views/tools/diagnostics.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'E��a�G��	���!$�6'),
('��h�L���JH�X#0', 'wp-content/plugins/wordfence/lib/wfUnlockMsg.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'h\r>�[��?Rg���Te'),
('���^��''�q���0��', 'wp-links-opml.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�c���v��Il�mf�'),
('�%n��Tߒ	^�gXΰ', 'wp-admin/js/inline-edit-post.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�u�G�9��p���'),
('�''-j''kI��4Tʗ', 'wp-content/plugins/polylang/languages/polylang-vec.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'yP"W^��F�a�q$'),
('��h2ܺa��uY�v6�S', 'wp-content/plugins/polylang/frontend/frontend.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��`d߉+T7!�4��O'),
('��n&���n�!崬�', 'wp-admin/css/site-icon.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�X�ֽO�ŵգ�x�'),
('�\Zی���|�QP�$,�n', 'wp-content/themes/twentysixteen/languages/twentysixteen.pot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ɔ���G�,�?����'),
('�5����\r��k��', 'wp-admin/js/color-picker.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����:_W-ZN�j'),
('�8�������P5aĨ�	', 'wp-includes/images/smilies/icon_wink.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\ZO�Z���g9�4�'),
('�d��[���8��4�ky', 'wp-content/plugins/wordfence/images/wordfenceFalconSmall.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>��h�j�K�w�~��'),
('�l1]HG��!��+N�Σ', 'wp-content/plugins/polylang/flags/to.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ά��-wx�f��_Ks�'),
('�l�d�՟�L�1u0', 'wp-content/themes/twentyfifteen/css/ie7.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'dh��=�[KM7��,��'),
('�|yPV���(�͜��', 'wp-content/plugins/polylang/languages/polylang-tr_TR.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��i^=�^\Zq��\0��'),
('�����y85���æb�', 'wp-admin/css/colors/sunrise/colors.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'P�_��7j�A5�6y'),
('����PQ�E|E}7+', 'wp-admin/includes/class-wp-filesystem-ftpsockets.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '£�,���W�?��ۯ\n'),
('��U���$�\\*�1^�S�', 'wp-includes/js/jquery/ui/effect-clip.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ǔ�W�#�GZas'),
('��P\Z��/���l%�', 'wp-includes/js/jquery/jquery.hotkeys.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '┃��&�݋\rFư��'),
('�\0� ��k~��U5T', 'wp-includes/widgets/class-wp-widget-text.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�M�z����d[$v(?w'),
('�\n%f[!aE�r�tg�i', 'wp-includes/images/media/video.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����u�h����q��'),
('�#��>��҆�Kl', 'wp-content/plugins/wordfence/lib/pageTitle.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Hh�I��!S�??k'),
('�&�S짿o�$��0�n', 'wp-includes/author-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��P~�]�/����0�'),
('�G�|$p֠+(�', 'wp-admin/js/tags-box.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\r�a�RL�w�ޑ��d'),
('�Q����ԁ�2�7u�L', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����Fh%�C��y'),
('��Ѻ�"�P5��^U�\Zi', 'wp-admin/index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�h���P�<R%,F�'),
('��m���z4�L��K', 'wp-admin/images/xit.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�)�X��`1���H��'),
('����A�G,��<���', 'wp-includes/js/jquery/ui/effect-fade.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�o�OO_��;{r�5$m'),
('���<��p\Zo@S�q��', 'wp-admin/includes/class-wp-press-this.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��m/�rj�&''|�r��'),
('��pX�I}����y�', 'wp-content/themes/twentyfourteen/footer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'q��J��nj9�T��'),
('� �n�$��q��^qf��', 'wp-includes/images/smilies/icon_lol.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��M�Z8|����,���'),
('�*T�u\r�����~�m', 'wp-admin/css/colors/ocean/colors.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�f��Q�+��}0�|z�'),
('�E-j��1j��\r�E�', 'wp-includes/registration-functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '_?<���&T�xH�X�CL'),
('�������<�x�B�', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/waf.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'p�n]�9ҝ@��!�7'),
('��"��p�"-C����w', 'wp-admin/js/wp-fullscreen-stub.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'p\n��L{A��g���J5'),
('��p?E^�@�''��PE�', 'wp-admin/edit-comments.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'g���Ko��۴\0Xx'),
('�O�\\�okc)/J~ \Z', 'wp-content/plugins/duplicator/classes/ui.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'd���S��9/�!�&�'),
('�<��(����*A]�O�', 'wp-admin/css/colors/ocean/colors-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���`�{l)U5�W]'),
('�bv��E��H���΄', 'wp-includes/js/wp-lists.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��� �����j��$�'),
('�hS����:���`', 'wp-includes/customize/class-wp-customize-nav-menu-auto-add-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��[�]z�@�Q)�`�k'),
('���&��N�,���6P', 'wp-admin/images/icons32-vs-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�*04�G4F�	&Z�i}"'),
('��x[�e��>M�', 'wp-admin/includes/edit-tag-messages.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�]"d%����\0c4�j['),
('�q�h���Bc�92��', 'wp-admin/network/site-themes.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�������״k4�C'),
('��d]\0F�mŲp�D', 'wp-includes/js/tinymce/plugins/media/moxieplayer.swf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'NY�N�-���3Yj���'),
('����`%��{���+��', 'wp-content/plugins/wordfence/images/icons/error128.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�:�%7�!��.�'),
('���v��\\Q���-��', 'wp-includes/js/tinymce/plugins/hr/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\#%Z����,3�I�8�'),
('��і�q��SGKy(�', 'wp-includes/kses.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��6�x���]U\rƦm'),
('�9��l�ן? r��q�', 'wp-includes/class-wp-user-query.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����ڠ�E�:̭\\�U'),
('��X�T�R!����Ǡ', 'wp-content/plugins/polylang/flags/lv.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'o���em=�R��-�'),
('�,�1x,�眿$\nAk]', 'wp-content/plugins/polylang/flags/lu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ';೦	n�w�׹��d�'),
('�[�Hn[P�.~���FU|', 'wp-includes/nav-menu.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-���Ni�/�"�ߌ��'),
('����Z�\Zxcy�d��''', 'wp-admin/js/language-chooser.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'h"8Jq	t���F��'),
('�����:x��=�}�', 'wp-includes/js/jquery/ui/mouse.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�8'']��!��Iٲ��'),
('����_��V��ن�b', 'wp-content/themes/twentysixteen/css/ie7.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���\Z^�Ն&��tIm�'),
('��H�a�+����̰I�', 'wp-content/plugins/wordfence/waf/bootstrap.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'A�`0!����m�צ�'),
('��y�&a�A�7�]Dm', 'wp-content/plugins/wordfence/images/icons/ajaxRed16.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���%���B\ng�2��;'),
('���@V��[o_\0�{', 'wp-content/plugins/polylang/flags/pm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�A��IP���¨�'),
('��|La����\Z�g<$�', 'wp-content/plugins/polylang/admin/admin-links.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*tw�G*�p:��;4N�'),
('� a"KwT�bc1S', 'wp-admin/css/revisions.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�y{=�~	�S�q1�'),
('�!���H�M1���<�', 'wp-content/plugins/duplicator/assets/css/images/ui-icons_cd0a0a_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>E*,f2����\0\Z�|'),
('�#q�[\nhK+�8��mx', 'wp-content/themes/twentysixteen/genericons/README.md', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��6����V\0����'),
('�-�[ip��\\^����]', 'wp-includes/widgets/class-wp-widget-tag-cloud.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '5og�_ÐT-n�e�'),
('�0��&�Y�������', 'wp-content/plugins/wordfence/vendor/composer/LICENSE', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'JJ˭9FN=���O'),
('�4g��e���>���ߝ', 'wp-admin/images/list-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'hջIS�2��i�g�'),
('�fkj��N�Uei4=%�', 'wp-admin/js/tags.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/I�@�!{�hL�R\Z�'),
('�hj��̟؂p�u�', 'wp-content/plugins/duplicator/views/settings/controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�K,���r��[_'),
('�y%���Ǻ~�ne"V', 'wp-admin/css/list-tables-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�*B��f.��y'),
('�Ӎ?K���%Q6$��3', 'wp-content/themes/twentysixteen/archive.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ol��9���i�~ee\n\0'),
('��m_i�Fkl����{Q', 'wp-content/plugins/polylang/flags/bt.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/�|h�;G��7�'),
('�������,{H��Ĭq', 'wp-content/plugins/wordfence/js/admin.liveTraffic.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'A��OZ������4�U'),
('�''(K3�S�{8!�B', 'wp-content/plugins/polylang/flags/pr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '@��\ZL�m@��\\o՚'),
('�1�o%��q�A��', 'wp-admin/js/inline-edit-post.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�P�;���o��/��'),
('�zR�u�������	;', 'wp-content/plugins/wordfence/images/wordfenceFalcon.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'd''m_0�xZb-���%'),
('��F�����{���A', 'wp-content/plugins/wordfence/lib/sysinfo.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Zi�T�T2kU�}�٤'),
('���倽���ڊt�%�', 'wp-content/themes/twentyfourteen/genericons/font/genericons-regular-webfont.woff', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�z��g�Å��m~��v'),
('��E����Q?��	(�', 'wp-includes/class-oembed.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��o��-�<�%E��s�'),
('�.݁B��xK�Y�', 'wp-includes/ms-default-filters.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�f�r.�L��\\�蒀�i'),
('��6����~e�{�".w', 'wp-includes/widgets/class-wp-widget-recent-comments.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�.�S\Z��㥑f�}�'),
('�*O-�Lτ���\r[�u', 'wp-admin/css/about-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Z�\n	���8�C[�V�'),
('�??n������_2g��j', 'wp-includes/js/wp-util.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'pQ��)<���鎠�''t�'),
('���r��SXi��', 'wp-content/themes/twentyfourteen/inc/customizer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�λ�frZ�*�WZ�j�'),
('���"\\��D�-\\gc�', 'wp-content/themes/twentyfifteen/sidebar.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��*�pz.9�{���S'),
('��Y�\0)\r/j�)�Ar', 'wp-includes/customize/class-wp-customize-filter-setting.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��`Vv�>A�� �$��'),
('�R;lzO�8m<3�Nie', 'wp-admin/user/freedoms.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�˹��޳H�t��i.'),
('�afh=F���T�:��6�', 'wp-admin/includes/class-ftp-sockets.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '� s���̚��;�y*'),
('�����;~ӷR�>��', 'wp-includes/class.wp-scripts.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��e�{�֯q�6�0e'),
('���nvp�e������}�', 'wp-admin/js/customize-controls.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '8���oJ�E�n�z�/'),
('��Ç�~�O�h��s=', 'wp-content/plugins/polylang/flags/gl.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ';k�n��qE�݉��}'),
('��K	�ZV�-��U-v', 'wp-content/plugins/polylang/languages/polylang-ar.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\�� CD!�tt��'),
('�(�|n���sARF�+', 'wp-includes/js/crop/marqueeHoriz.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�̮����;���Lo\n'),
('�����:[&b�[�hY��', 'wp-includes/images/smilies/icon_razz.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��˭��=��J�@��'),
('���H���R���>����', 'wp-content/plugins/polylang/include/translated-post.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '඄ߪ��]ϢX�/㕑'),
('�չ3����/��,~�wu', 'wp-content/plugins/polylang/flags/sg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��QY�7���=���ы'),
('����8`9��?Bb�Б', 'wp-includes/js/jquery/ui/effect-puff.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Iml�c�G�@�ȳ� �'),
('�(����ܺ��Y,�2<', 'wp-content/plugins/polylang/flags/cl.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�{;�x��EM�[y��'),
('�c�̎��$\n''@�\r��', 'wp-admin/setup-config.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'F�K�)�4e��`d'),
('���J1��M�F��<�', 'wp-admin/js/tags-box.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�F*�ϙG�t��-�'),
('��;S��&��p�C���j', 'wp-content/plugins/duplicator/lang/wpduplicator-fa_IR.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�0.9��1�GҔ~s'),
('���`�䃽�eW�Y��', 'wp-content/themes/twentyfifteen/content-none.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��V��X+�1�'),
('���?ڟ�E���$PF', 'wp-includes/pomo/translations.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'T�~t�:{��>�4V��'),
('�����6��b�g�>_�', 'wp-includes/images/wlw/wp-watermark.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ';��uMmܭD|�w���D'),
('��`[��*��뇩����', 'wp-content/plugins/polylang/flags/vn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'c�6���ڷ�l����S'),
('�����''K�z�f��', 'wp-includes/customize/class-wp-customize-header-image-setting.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '{v�Va���51�1t�'),
('���v9�b�$�L', 'wp-includes/random_compat/error_polyfill.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�YT�~\Z�''"�l�\nUe�'),
('� �(T5!��h�u', 'wp-admin/css/press-this-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���''&4 �XqT�~���'),
('�#�?���Gc	¯l1e', 'wp-includes/class-wp-theme.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��\r&p�:h�?��ۣǜ'),
('�2[��s�$��t�X[', 'wp-content/themes/twentyfifteen/content-link.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���F''i�V�1��'),
('�H�����Pw��%8��', 'wp-includes/images/smilies/icon_sad.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z''=��Oj�?�uA|��'),
('�Q49��Lz�J�', 'wp-content/plugins/wordfence/lib/wfUtils.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Fܲ>Liє�%s�<'),
('�[�n�G{��''��q:�', 'wp-includes/ms-deprecated.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.�D,=�y�±'),
('���Ȁ�~_q�I��S�', 'wp-admin/js/password-strength-meter.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1��|��=��m�U��'),
('���\\�D �>�F,���', 'wp-admin/menu.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�KUl�j�d�sxt''�'),
('���\Z��NwVl��/̸', 'wp-content/themes/twentyfourteen/index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^���*�1�x��Ӷ#'),
('���#�����G��', 'wp-content/plugins/duplicator/assets/css/images/ui-bg_glass_75_dadada_1x400.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�,e����dȣ��$i'),
('�+������ɆIW�{', 'wp-content/plugins/duplicator/views/actions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�2��!\Z�x��A3���'),
('�V;�6\\�́�=ƾ', 'wp-content/themes/twentysixteen/css/ie.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ľ���������j'),
('��=CѠ��*TX���4', 'wp-admin/css/colors/_variables.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':�	k\Z	r�L���Z'),
('��ڷt�g�Z�gE�', 'wp-includes/class-wp-http-response.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'v����p{ʕӑ,%�S�'),
('�� ��It13&', 'wp-admin/js/nav-menu.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' \ZZJ��V�����'),
('���P���x����_', 'wp-content/plugins/duplicator/assets/css/images/ui-bg_glass_65_ffffff_1x400.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��.(�\\''��3Ȩ��'),
('�;?2��S��\0��p', 'wp-admin/customize.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'P1�S��b�;����#�Y'),
('�Ml�/A���q۷��-', 'wp-content/themes/twentysixteen/js/customize-preview.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2A���p$գ�JT�'),
('�X��@��%�1C��i', 'wp-content/plugins/wordfence/images/lightbox-controls.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�m]�a���\\$��'),
('�]�.�1\rPXL�', 'wp-admin/includes/update.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�J$���΢ӦW�O��Z'),
('������|� ��', 'wp-includes/js/masonry.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'iq}Eigo@���T��'),
('���v{C����ҧ��4I', 'wp-content/plugins/wordfence/lib/wfViewResult.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	qN��K80�O��'),
('��p�$^���d�Z', 'wp-admin/network/plugin-install.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'k��Oy_��4�)�\Z���'),
('��[K���b���28�', 'wp-includes/pomo/po.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\n�;�#V�V��|o�'),
('���X����J��p', 'wp-content/plugins/wordfence/lib/wfBrowscapCache.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����)�)��Kϻ��'),
('�n֢��\r�V5��,�', 'wp-includes/widgets/class-wp-widget-meta.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��N�d�<��}\Z�z�'),
('�o����l>��x~I� �', 'wp-admin/network/about.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��=���SV��V���'),
('�����U�<�5:)r�', 'wp-content/plugins/duplicator/lang/wpduplicator-fr_FR.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��B��Kt#�տ'),
('���0j�l�S��K�', 'wp-includes/post.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�,��:�H����ʔ�RU'),
('����Xi�>{��e�M�', 'wp-content/plugins/polylang/flags/tl.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	>v�gYd|3�^񺝠'),
('�«��-j=�u�N\\q''', 'wp-admin/css/farbtastic.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��8)���}{��C�h2U'),
('��ü�<3�Z��Q�I\n', 'wp-content/plugins/polylang/js/media.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '������H��|�N�'),
('���ᗏ�3�-��4�', 'wp-admin/css/colors/midnight/colors-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'k���f�T��g�Q��'),
('�����''��pG���', 'wp-content/plugins/polylang/flags/ag.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9\n��mF+�&''�)F�Z'),
('�"ڕK[@�G����9�', 'wp-admin/includes/class-wp-theme-install-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-��O��,rT}7���'),
('�3!9�=�6�ݡ', 'wp-admin/images/resize-rtl-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ɞ�@��T0:��}'),
('�{���u��G\0_�+', 'wp-content/plugins/polylang/flags/ao.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'A���m$�٧wh'),
('����EMaL)���#19', 'wp-content/plugins/polylang/flags/gq.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'p�K+8��R�Dj>3'),
('��}�*�xx��\r�*', 'wp-content/languages/themes/twentyfifteen-fr_FR.mo', 0, '�J�Ca�v�q��6g.��', '�J�Ca�v�q��6g.��'),
('�z ˎ:B�~����', 'wp-content/plugins/duplicator/installer/build/classes/class.logging.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����-����V�'),
('�)["J�H��|�jk��$', 'wp-admin/js/customize-widgets.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Sպ橶�ZMC�x�'),
('�,���߹1U�q\ZVT9�', 'wp-content/plugins/duplicator/views/packages/main/new3.base.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����#5:��W''N'),
('�JTV0D��oTA［@�', 'wp-admin/options-discussion.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'U�hV��Qi��$��'),
('����[&���}�V�E', 'wp-content/plugins/duplicator/views/packages/main/packages.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3n�d�4�\r�C%�n�(F'),
('����S�h���S�%Tz�', 'wp-includes/js/mediaelement/wp-mediaelement.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\0��7ԇ:�3U��:]�'),
('���"ܒ����nzD', 'wp-includes/SimplePie/Caption.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����BjM��g[����'),
('��Z\nu�oK� ��T;e', 'wp-admin/images/list.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>��*��ӳ�S��'),
('���KV*<ԡ�&)e��', 'wp-content/plugins/polylang/flags/om.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '{\0+�ī\Z����,DB�'),
('���Uy/�*%���;', 'wp-admin/includes/update-core.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�6��*y�:�U�HyI'),
('�\rE��U���̈́��', 'wp-includes/images/wpspin-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}�3��Y�(�I��m'),
('�x�W���2e�uv�L', 'wp-includes/customize/class-wp-customize-background-image-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'PK��a��ԏ''s��1ȩ'),
('�������l����ޭ', 'wp-content/themes/twentysixteen/sidebar-content-bottom.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+$�VD�<��:t�*A2'),
('�������sp���e�', 'wp-admin/includes/class-wp-ms-sites-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '([f�����&r_���#P'),
('�-1�8�;�T�/X�]', 'wp-admin/ms-sites.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ']b$�����q����h'),
('�j�<M�Dd����4m�', 'wp-admin/includes/ms-admin-filters.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Q7�9��l;�'),
('�Ρ~�ߓ�:�����eo', 'wp-content/plugins/wordfence/images/icons/tick128.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ğ��c�h4"���'),
('����(5�aH�yo,X�', 'wp-includes/js/jquery/ui/tabs.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Er����l�n�wGV��'),
('�$�͓�bHn��,\0-', 'wp-includes/images/smilies/icon_confused.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�sYFPZ6��,��'),
('���+��y1F���T3', 'wp-content/plugins/polylang/js/post.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'O����̦&��m�&Qb'),
('�\0� M�\\�5̿��c\0', 'wp-content/themes/twentyfourteen/js/featured-content-admin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\0���P�wp"�LK6��'),
('�,:\Z������tB$�\Z', 'wp-content/plugins/polylang/languages/polylang-lt_LT.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��$Ƀ�[��~B�`UG'),
('�L���yE�{��f�', 'wp-includes/css/dashicons.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�<�&� %��!8��\rS'),
('�k�UL��ǡ�$���', 'wp-admin/ms-users.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H#�f{#ʃ��	6G�'),
('��=��-Xԍn{]�pf', 'wp-includes/js/wp-embed-template.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�T�t�廋�r\r3]�'),
('���fSu�B�ͥ?^yO', 'wp-admin/css/themes.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����#�m��)<��9'),
('����{^��W����C�', 'wp-admin/css/colors/ocean/colors-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'NE�����Ɲ�nl��r'),
('����˄�v��+�nG�', 'wp-content/plugins/wordfence/js/jquery.tools.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�:-��Eՠx�$�B'),
('��&B�5V�AUU,��', 'wp-includes/class-wp-http-cookie.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�%�p(�=<�\r`+'),
('�_f��;w�a��ځ�', 'wp-includes/js/tinymce/skins/wordpress/images/gallery.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�_���Pw��PU�4'),
('�h{n�V"��0���', 'wp-content/plugins/wordfence/css/jquery-ui.structure.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��\\@�1D��?���'),
('�u��<e�x��@ֈ>', 'wp-includes/js/underscore.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'j:CJ`�tCA�}�{�'),
('��q?%��rp��0�7�q', 'wp-admin/css/colors/coffee/colors-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'f:��3�Rv��''$'),
('���S�W�M#a�!�%4�', 'wp-content/themes/twentysixteen/css/ie8.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '"�v?�P�.�T<W�'),
('���B�6[s��M�', 'wp-content/plugins/wordfence/lib/wfCountryMap.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ']hF�3���k�;�u'),
('����x�Й�)DC��<', 'wp-includes/js/customize-models.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':y�t}ɟD�c\n2�@'),
('�~����U�"�&��', 'wp-includes/images/wpicons-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��n�V�o�$��Of~7'),
('��W2��D��G�7�V', 'wp-admin/css/common-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����}SdtϾ%���'),
('��M��~\n�T|�', 'wp-includes/js/mediaelement/wp-mediaelement.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 't�Og��ER{�1��'),
('�6cI�	@۞o����', 'wp-content/plugins/wordfence/lib/menu_scan.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'nhu����6��Qe�K�'),
('�Vb(kt�W"�6(;ƴ�', 'wp-admin/includes/class-wp-media-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�zi�w�u�iEs���'),
('�b|Lv��_�7���E�', 'wp-content/themes/twentyfourteen/content.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���C���KZ��˳?�'),
('�tfF	�r{�܇�_I�x', 'wp-includes/SimplePie/Parser.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R�.�b���~����+�'),
('���9�8ͤ���F�$w', 'wp-content/plugins/duplicator/assets/css/images/ui-bg_glass_55_fbf9ee_1x400.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��U���,�g�S9�'),
('�\n��g�HSXd$���', 'wp-content/plugins/polylang/settings/view-tab-strings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Hd�EëJP�6�x�'),
('��߲;��0����', 'wp-includes/feed-rss2-comments.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�f�?j��7�gg�'),
('�^+�w7b=��;�E�{', 'wp-content/themes/twentysixteen/genericons/COPYING.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�B;��a`GԢ�މ'),
('�^��18btt�*�ͯ!', 'wp-content/plugins/polylang/flags/nl.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'a�U�w��Ӯ7�3�'),
('�h�0��so��P�m)�', 'wp-content/themes/twentysixteen/css/editor-style.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���q��m��H�^�'),
('�x�t�7���I�D77L', 'wp-content/plugins/polylang/flags/by.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��FLI����\Z�W�'),
('��3�T.^�ƙ<���', 'wp-mail.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '?�Jԝ�ĳ̿a����'),
('��''���J�-ax�?��', 'wp-content/plugins/duplicator/define.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��4?\r�9�B$�P?՞'),
('��*괶�Z�3�\\�f�', 'wp-content/themes/twentyfourteen/genericons/font/genericons-regular-webfont.ttf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�?''�� �K��>����'),
('��K���OȖ9�3|<�', 'wp-admin/maint/repair.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��r�0�QN�iﾪ'),
('��I����.$U0]''�S_', 'wp-admin/includes/widgets.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'TI�-1otpi><�\n�i$'),
('����ث\Z8vr��\\R�', 'wp-content/plugins/polylang/flags/lk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N��S��wiv���N�'),
('��+D�FܿTZ[H7', 'wp-admin/images/post-formats-vs.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��S�l��H\\�������'),
('����CQ��(�;�U=4', 'wp-content/plugins/polylang/flags/ly.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '?�n��_�ˌ \Z�鷼'),
('�GV\\z��#���!;��', 'wp-includes/js/media-audiovideo.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\rS����t�D'),
('�M��s�;'',���-E', 'wp-admin/css/dashboard-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��K�C�b\n\Z��)�T6'),
('�O�r#���T�G��!', 'wp-includes/js/swfobject.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���,�I}p�e~2�q�'),
('�l&�*�������&', 'wp-includes/SimplePie/Content/Type/Sniffer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|r��i�Ub�lw����3'),
('���$(�g�(���P��/', 'wp-admin/css/wp-admin-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ݚ��*��7"G�Ū�'),
('�������kM��?�uX', 'wp-admin/css/ie-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����A?��	���'),
('��5��At߂�m0i�z�', 'wp-admin/css/themes-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�K$��9	u�*v��5�'),
('���q�K�U�j�', 'wp-includes/SimplePie/Category.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�~��?��.\nܯd�*'),
('���?��7,�t�ߝ���', 'wp-content/plugins/polylang/css/admin.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'e���\Zn''}s���j��'),
('��-Z���:E�:', 'wp-admin/js/image-edit.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�U��x;auKxr�	?Q'),
('��9��[�c��7��<�', 'wp-content/plugins/polylang/settings/settings-cpt.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�+�"8rg.^�^uR6�'),
('���|�jX����|�fb', 'wp-admin/css/login.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '?�c-��"�/��Y:�1'),
('�MR��l�B�F�u', 'wp-includes/option.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��_��G�؇Đ�1'),
('�r�\\�j�����A$�', 'wp-includes/js/customize-base.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Zaw�5�+ǎ����Q'),
('�����"Sέ`t@', 'wp-admin/network/plugins.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'A��|��MM0\0���'),
('���\\��.1��-��:', 'wp-admin/options-media.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�A,x�������l���'),
('��ΝH�*��*.ځS', 'wp-admin/includes/bookmark.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÿ8����E\\�MߘN'),
('��Ul1�ȕD�bmg�', 'wp-includes/css/buttons-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' =!��<0�F�-�#2'),
('��I�F�_��5k"�'')', 'wp-content/plugins/polylang/flags/tr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1�pXT�W�2�Ph��'),
('�\nfv�8���1���-I', 'wp-includes/SimplePie/Exception.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	K�v&���<\\ڏ�S5'),
('�G/�G�3	��(N���', 'wp-content/plugins/polylang/include/links.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�*85��/�^�}G\\'),
('�yu��hj�pմm�Q��', 'wp-content/plugins/polylang/languages/polylang-zh_CN.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'PY��hMaH�1�z�'),
('���ZQ4��\\(�܇', 'wp-admin/network/admin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N��5Cs��	�'),
('�\Z���l����3Ȋ�', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce.woff', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'k7T���Vn@����'),
('�*�,�L�8()K��', 'wp-content/languages/themes/twentyfourteen-fr_FR.po', 0, '���� ����y\Zk', '���� ����y\Zk'),
('�J|6}�P�,\rٛ', 'wp-admin/css/colors/_admin.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3}��K`f�#İ4=r�'),
('�_����Ba����PG;�', 'wp-content/themes/twentysixteen/sidebar.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���&���I�~r'),
('�����[��:�����q', 'wp-admin/includes/class-wp-plugins-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�/��:��(�gb���'),
('���P�Of;���/��', 'wp-includes/SimplePie/Decode/HTML/Entities.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'E�^/�\rB���Z#�%/a'),
('���l�I��!5����O', 'wp-content/plugins/polylang/include/mo.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'djF6C�����~Kx�%'),
('��\\ ��Iѻ���,', 'wp-includes/class-simplepie.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�5W��,l��~��4�'),
('��bҩ~8}���R�', 'wp-content/plugins/polylang/flags/pl.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���l ��I�&��L�'),
('�/&�����2�ѡ\rgDs', 'wp-includes/http.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\0��t�C8��$���R'),
('�6��\0	�@���׍�', 'wp-content/plugins/polylang/flags/mk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ay��ʯ��ZLt��'),
('�I���q\Z���mC�', 'wp-content/plugins/polylang/flags/qa.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��6:''��ў$''G׾�'),
('��?�0|���5uơ��', 'wp-admin/custom-background.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'GVlp�O�.�a8��@'),
('��d�㛟��[����E#', 'wp-content/plugins/polylang/flags/ge.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�@rz�l��fjd7g'),
('���g�0;�\0a', 'wp-content/plugins/polylang/flags/sc.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9e�(Q�!eװ�;D'),
('���qh�n�J�j�', 'wp-admin/css/nav-menus.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '_#k�&Ď��%3���z�'),
('���<�	�f%�n�O�', 'wp-admin/includes/credits.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�"_�M��j]Q��$�o'),
('�ÏuL�,�&Ǒ�\r1', 'wp-admin/media.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�_�v)��K}ߎ�6_'),
('��%I���}�P�zW��', 'wp-includes/random_compat/random_bytes_mcrypt.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%l��1/sŀl�)w�i'),
('��$�<@�Řa���c"', 'wp-includes/js/swfupload/plugins/swfupload.swfobject.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '̵q�V7�T\\���s'),
('�WM��{h����(��', 'wp-content/plugins/wordfence/lib/menu_options.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����t/5�Q�(%�K'),
('�a�@o��''��kb���', 'wp-includes/js/jquery/jquery-migrate.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '䉽�i����G7���'),
('����^[X��i�	�', 'wp-admin/themes.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�;a]R���0�tb�'),
('��4T�(�\\9''��3�)', 'wp-admin/css/customize-widgets-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'G �sF\r��Ж6Q��ƌ'),
('��k{��&��x\n��', 'wp-includes/class-wp-error.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'KA�SJD��Oa9�=h'),
('���A0f��f`� Kǁ}', 'wp-content/plugins/wordfence/lib/wfDirectoryIterator.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '켘~d[�!L��A�/�9'),
('���s�YX���㞗', 'wp-content/plugins/wordfence/css/phpinfo.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�<`�,7��Ju\0�'),
('�\0��%3[$x\0��.��(', 'wp-admin/images/marker.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3�*O2/�3I2���'),
('���4�����=��', 'wp-content/plugins/wordfence/images/icons/ajaxScan.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ʖ�Ѵ��~f���i�'),
('�	���Em[�����l�<', 'wp-includes/js/tinymce/plugins/image/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'U[M���0����#'),
('�nB��L�*��D~�wUt', 'wp-content/plugins/polylang/flags/ua.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~�����}\\/�p�'),
('��5Z�����o��Ү<', 'wp-content/plugins/wordfence/css/fullLog.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+����W�jw˄}��'),
('��{�]\\ֵ�	��d��', 'wp-admin/css/forms-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�սJC�eu��0�����'),
('�������"�R�Ŝ', 'wp-includes/images/crystal/text.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�� Ѳ��#�d�%�[�'),
('� xs���*�>��', 'wp-content/plugins/polylang/languages/polylang-my_MM.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'gZ�/��c��5�dM'),
('�v%���S�[�̪�Ѿ', 'wp-includes/ms-functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���b`���p\n�#I�&�'),
('���Pl�T���F��Y', 'wp-content/plugins/duplicator/classes/settings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�C5E�4����)'),
('��58R���yx����*', 'wp-content/themes/twentysixteen/js/html5.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^鐐{1P''�`���K'),
('���X"�-{��$48sx', 'wp-admin/css/deprecated-media.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '@s��&Y*t�M�Q�F�'),
('��b''���������', 'wp-content/plugins/polylang/settings/settings-media.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\n�M��dIgk�\0>���'),
('������3�38;�@', 'wp-content/plugins/polylang/admin/admin-strings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��''�n{|�wiF{nI9'),
('�Z��Wt�p�N�h', 'wp-admin/css/nav-menus.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[�MkJ�$��HGbr�'),
('�}��%J����g��z��', 'wp-content/themes/twentyfifteen/archive.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[k�"x�E�7@s}l�'),
('��Z ��Og\nW�W�2', 'wp-includes/js/wp-embed-template.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�9GxDN������T.'),
('��ϯ�����,����0', 'wp-content/plugins/polylang/languages/polylang-zh_TW.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���98�G��M���"�v'),
('���WWՃo�m����e', 'wp-content/themes/twentyfifteen/js/html5.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\\�"�ȶ��jȓ�P'),
('���\\��9�ѕ�F�w�', 'wp-admin/js/revisions.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N�$�]>Mb��\nm*y�w'),
('���$L獊�I�C�&', 'wp-content/plugins/polylang/flags/do.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9IXE�:Lw�=�'),
('���{��k`�N', 'wp-content/plugins/polylang/modules/wpml/settings-wpml.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.��B�XfrsB�OwBd'),
('�\0�b!�=8hO��8�P', 'wp-content/plugins/duplicator/assets/fonts/fontawesome-webfont.woff2', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ہ-�p�莈�D�ɢ~�'),
('���D��=ڬa�	��U', 'wp-content/plugins/polylang/flags/cu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Sf�\\�(B�`�3��'),
('����N����@�(�3�', 'wp-includes/ID3/module.audio.mp3.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�%{/��U��"m��'),
('��&��KG���)�', 'wp-content/themes/twentyfifteen/js/functions.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�kf-�u�-�m.��'),
('��h���)UG@�x��v	', 'wp-admin/edit-tags.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$�MX)a���.�\n<�'),
('��(�[3?�H/�[�e]', 'wp-includes/js/tinymce/skins/lightgray/fonts/readme.md', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'zd��+���E@�1�'),
('��ym�ɺ�B�6���', 'wp-content/plugins/duplicator/views/packages/main/new1.base.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'k�k��3�.	��F,ji'),
('��2]hqu:�T6E�U�', 'wp-content/plugins/wordfence/lib/wfAPI.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�quc �jħ�''�|��'),
('��Y����1�؎$ɧ', 'wp-content/themes/twentyfourteen/genericons/README.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'I#''y��F�@���d"'),
('�#�AuI.F��/���', 'wp-includes/js/wp-pointer.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '5ˋ8�.�r:ě���'),
('�<{����,-�![M��', 'wp-includes/js/tinymce/skins/lightgray/skin.ie7.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�.z�Mx��.j@�K\n�'),
('�@��,�n\\���+k�', 'wp-includes/js/tinymce/plugins/wpemoji/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�u\0���e���;'),
('�v�FI��2h����n�', 'wp-content/plugins/wordfence/readme.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�K`oJ�l�\Z��3��'),
('�{�1��"��^���.', 'wp-includes/class-wp-widget-factory.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����+����'),
('��\nX�{پj��ܽ�\\�', 'wp-content/plugins/polylang/include/links-subdomain.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'IoPK<Gy\Z�Mܻ�u�;'),
('���=V;�����N.K', 'wp-includes/js/wp-list-revisions.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'GQ\ru`�*�L��n$��'),
('��\n�ӛIQED	���', 'wp-includes/class-wp-comment-query.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'T��򣲬+�W��ɽ'),
('���Ƿ�������\n�H�', 'wp-content/plugins/wordfence/lib/dashboard.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '&����]�m���+\Z%'),
('��Κ,�Q�a�gl��\Z�', 'wp-includes/class-smtp.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�.+ݪ7�/>"Z��*��'),
('��dA#���*�Źo7', 'wp-admin/js/customize-controls.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 't��V�#f��{j2�'),
('�Y�j"yŉ�}@���x', 'wp-content/plugins/polylang/flags/pe.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��b���"z�%7'),
('��3"�(z�a�4�8�', 'wp-includes/images/media/code.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-o��Uʓ��U�U_'),
('��^Mh� ��^8���', 'wp-content/plugins/polylang/flags/ph.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Ѕ��"M4F^$��'),
('���|��U�C�D��h', 'wp-content/themes/twentyfourteen/genericons/font/genericons-regular-webfont.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�f���l����G{'),
('�kHm�1��`0ѹ��_', 'wp-content/plugins/wordfence/lib/wordfenceConstants.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3;��s,�xؘ�ɲ1�'),
('�zݿ�&X❙6���s', 'wp-admin/css/media-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�BxY�~rW�C�u�'),
('�ٵ\nh��Jx�dv�ԃ]', 'wp-content/plugins/wordfence/lib/wf503.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�-^����K�D�h$�'),
('��5��[,	j�(�ƪ�', 'wp-includes/js/mediaelement/controls.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$�"�Ӭ����?�Ȥ'),
('���Lca\\��Y�', 'wp-content/plugins/polylang/css/selectmenu.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����*�&VW�ԛ�'),
('���2zs��4x�EB', 'wp-includes/ID3/module.tag.id3v1.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+6���Q��g4'),
('�Obc��" ���|J(', 'wp-includes/images/smilies/icon_evil.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'c����VM<�"!�.'),
('�1��WV(2��6����', 'wp-admin/images/icons32.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�۬[�m9��J�4�\Z�'),
('�ii��B�e8.��8�', 'wp-content/themes/twentyfourteen/author.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '� �}z������Y'),
('��1���|�}���dQ', 'wp-admin/export.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���v�:K^��-�'),
('��2�\\�(�{n�V�', 'wp-content/plugins/polylang/frontend/frontend-nav-menu.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�/|V�E����V�N2�'),
('��/�9��CZ��U�U0', 'wp-content/plugins/polylang/flags/sr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���sv{�xv�*�C�`'),
('��	1��А々�S:(', 'wp-includes/js/thickbox/loadingAnimation.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�"h\r�c�����&�'),
('�^��C�O��P�>�', 'wp-content/themes/twentyfifteen/image.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�{��I��<�<$���~'),
('�.�B�|xӳ��E�', 'wp-admin/css/press-this-editor-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�g�^�]�ڇ��[���'),
('�C�3�!0Q�o�J�e `', 'wp-includes/js/plupload/plupload.flash.swf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '7\rv�EROG�Ҙ�t��l'),
('�_���jSX�2�QQ=', 'wp-includes/ms-load.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'w�Yw���3��\\��_Q'),
('á@�.�÷.������', 'wp-content/plugins/polylang/js/media.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z��%%>�!���2:'),
('ûv��n��A�����', 'wp-content/plugins/polylang/languages/polylang-ru_RU.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ݎϥ�klh�k�'),
('��tnR�ؔ����%^�', 'wp-admin/images/align-right.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'B���Oe#�l@:P+"v'),
('���5�V"�$$�_��', 'wp-admin/includes/post.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'xp��ࢸ������'),
('��iY����\0\nR)��', 'wp-includes/post-thumbnail-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��+����\\~��a�/'),
('��u�X�ݼ#�-����', 'wp-includes/class-wp-http-ixr-client.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�|IN6�>G�{��A'),
('��U�F ����Ԟ', 'wp-content/themes/twentyfourteen/genericons/Genericons-Regular.otf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�1k��\ZN��+�>�'),
('�8\0Kb��Y�S������', 'wp-content/languages/admin-network-fr_FR.mo', 0, '��=�`e���%c+', '��=�`e���%c+'),
('�|��\Z����:s�~�', 'wp-content/themes/twentyfifteen/author-bio.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4�ԡR$)����wZO�'),
('Ĉ^A��+l���o�d��', 'wp-includes/js/tinymce/skins/wordpress/images/audio.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '7~!���\0�����"w'),
('ĔԼ���pP�Z	H��', 'wp-includes/images/smilies/icon_cry.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'E>z?��Ap�mWlA�`'),
('ĳJ�\n`|�5,HT��', 'wp-admin/includes/admin-filters.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'uc6�j��d�V�r�'),
('��ʙ\0}��甠K��.�', 'wp-includes/js/jquery/jquery.color.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�-���E�G����>vJ'),
('��{A��mm��*�K', 'wp-includes/nav-menu-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��\n�4x&��q��g{C'),
('�`#��G�b�C��֊�', 'wp-includes/js/swfupload/handlers.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Y,k?�X�N�0G�;'),
('�k�H�-cS]\0`��', 'wp-content/plugins/polylang/frontend/frontend-links.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��\0�@�\0��\n�݆�'),
('łj�Dߋ�.�˖D��', 'wp-admin/css/forms.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��frW~c��д��X*'),
('ň�f+�0|��?''L�', 'wp-content/plugins/polylang/changelog.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�c��`#g{��N�h�'),
('Ŗ�/PI����c�D=Y', 'wp-content/plugins/wordfence/css/images/ui-icons_222222_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':<Th��zģ ��*ˌ'),
('��-�p�lE���k�/�', 'wp-includes/js/jquery/jquery.hotkeys.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�S!}EU�\\b�g�h��='),
('�+���g���q6�^\0�', 'wp-admin/images/wheel.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'E0� q0m��\ZY%V�X�'),
('ƅ����|_�i/y��	', 'wp-includes/js/tinymce/plugins/media/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' �61V]Q�ċd�'),
('Ƭ+\Z���I�d^i <\0', 'wp-includes/js/jquery/suggest.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':$tV�E�ʿ����'),
('�����,H��ŕ�', 'wp-content/plugins/duplicator/lang/duplicator-fa_IR.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�0.9��1�GҔ~s'),
('��v\\*��e�]����', 'wp-content/plugins/polylang/js/nav-menu.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'i+{)�>������('),
('ǂ-i)�.�\\���z�^a', 'wp-includes/Text/Diff/Engine/shell.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'u�Aܑ�~J�^t����'),
('ǅ�9��9:���\Z�', 'wp-includes/cache.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���ݙ![�ܢ�ͮE'),
('Ǥ>z�Ԅ��!J]>', 'wp-includes/css/wp-auth-check-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����������:9�H!L'),
('ǫ�=��m�/���^', 'wp-admin/includes/schema.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���Qιl��YC`;�'),
('ǳ\\��_L-Y�Ō%$', 'wp-includes/ID3/module.audio.dts.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��V`�L7.��l] '),
('��D�&�M�E�*ީS', 'wp-content/themes/twentysixteen/js/functions.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'A�*�g\r���&+gxC�'),
('�\Z{g��?�3gڢ\Z�', 'wp-admin/images/icons32-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�%�*�����g����'),
('�B^洫G�Hڱ�', 'wp-content/plugins/polylang/flags/gs.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ';Q\r6�p�ճڀ�ɷ'),
('�"u@��T��S��5�', 'wp-includes/images/smilies/icon_idea.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��"m%h�����S��r�'),
('�Y$''����o���', 'wp-includes/css/wp-auth-check-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[�L.�TR�@��矻'),
('ȍP�� �3����\n��', 'wp-includes/class-wp-customize-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�n���F�&�J�j�'),
('�����~\r\ZK4(#��', 'wp-admin/user/credits.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '� ����ǀ[K}�Z'),
('�*�}%f/D´i��', 'wp-content/plugins/polylang/flags/tj.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\�Hх��6�s����'),
('�A7�''�C#�w�S�s�', 'wp-admin/css/about.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��^��G(}j�n�ʄ'),
('�D���UG8�h�K��', 'wp-content/plugins/polylang/flags/es.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�i<�4k-���5UN\n'),
('�lX�w��B�*X�W�', 'wp-content/plugins/wordfence/images/sort_asc_disabled.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Oɧ���*�X���9e'),
('�l쩎�Աh�#���&', 'wp-content/plugins/polylang/flags/eg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	č5b��Q��Pw�C'),
('Ɇ8����pŻѵV�', 'wp-content/plugins/wordfence/lib/wfActivityReport.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�,7�̰b��w0�'''),
('�����2D�i�e�', 'wp-admin/css/l10n.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����P+^.(�zҤ�'),
('�!&�i�)^�W���R�', 'wp-includes/js/jquery/ui/widget.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��i4�6����	/'),
('�(�q�4P�}�5Oz�k', 'wp-admin/js/inline-edit-tax.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����"Y�gC�_r�8'),
('�0B�#[wIu�Ε���', 'wp-content/plugins/duplicator/assets/css/style.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����\n,��Y��bN'),
('�R���ш�޿�0', 'wp-admin/css/themes.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�kXp���R���SW~�'),
('�hFM<@`%q-��', 'wp-admin/includes/class-wp-filesystem-direct.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Tx(�>���\0����'),
('�xjP�����!c�x', 'wp-admin/plugin-install.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��|��K��:|&12��'),
('�Ô~,V	�4�EO��s', 'wp-content/plugins/polylang/languages/polylang-tr_TR.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�~��\nj��Dk���\r'),
('��	b���8�[����y', 'wp-includes/js/wp-emoji-release.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�x���C�fY\0Z��'),
('��_>�J���E�3\r', 'wp-content/plugins/polylang/include/base.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Y��ݧx��	�M'),
('��M�aN��`�:�,�', 'wp-content/themes/twentyfifteen/functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '������ܒ�BUR��'),
('�!��#��I|���F�', 'wp-includes/js/tinymce/plugins/directionality/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '_!8[EV�aYP@�A'),
('�-��^]pw���w�', 'wp-content/plugins/duplicator/views/packages/new3.base.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\rσa\rq��j�'),
('�6�<��C�﮿�V:(r', 'wp-includes/js/tinymce/plugins/wpeditimage/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+Q�=մn���ƹ��Y'),
('�S��~���GxU~�)', 'wp-content/plugins/polylang/flags/dm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��]��(�O(���Q]�'),
('�U<�?Y,����ػ(', 'wp-admin/js/svg-painter.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���ܥCi��ٌ�]'),
('ˍ�G䯀oe���o�', 'wp-includes/js/shortcode.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 's_�K\r3��\Z�h��V');
INSERT INTO `wp_wfFileMods` (`filenameMD5`, `filename`, `knownFile`, `oldMD5`, `newMD5`) VALUES
('ˤԐ�{%k�#�f�', 'wp-includes/js/mediaelement/wp-playlist.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��3p2K�N�����We'),
('˭����ayA�n�m��', 'wp-content/plugins/duplicator/lang/wpduplicator-de_DE.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Tx4�EH�(�p�,iw'),
('��\\�`���^''���	Q', 'wp-content/plugins/polylang/flags/kh.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�X�f�O�l�\Z�H,'),
('��v�E,�-O�{���', 'wp-includes/link-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '<WH��FS��*(���'),
('�]�^^n�<��<х�[', 'wp-content/plugins/polylang/flags/tc.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ps<�g\0X�7�R���'),
('�!�LT�3��i��x�', 'wp-admin/update-core.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'T-_����Q��թM,m'),
('�M�Tq&[?��>칊�\n', 'wp-admin/css/colors/ectoplasm/colors.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�q�9+�"��+��'),
('�V�ڮ����M��jӁ', 'wp-includes/js/plupload/license.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'u&\n�TI�z����+�'),
('�Ê5ff�;,G!''��''-', 'wp-admin/css/colors/ocean/colors.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�M��\n���\Z����=�r'),
('�Ǌ�E�v�c,�صyS^', 'wp-includes/images/crystal/license.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�]�Lc�iG�fQ�\r��'),
('��t+���N-�̒��', 'wp-content/plugins/wordfence/lib/email_passwdChanged.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�IwK��mKa{į�;�'),
('����p�j֛`��w', 'wp-admin/css/customize-controls-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ЊH���G''��]�W*'),
('�d���lP�O��I�', 'wp-admin/network.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��\r�_�2�Pd.�+��'),
('���c���''6z��I', 'wp-content/themes/twentyfourteen/page-templates/full-width.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ce"��m���\0o�s�'),
('�)����\0�e�_�5=�', 'wp-content/plugins/wordfence/lib/diffResult.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'IY��Y8�\\@�6d''r#'),
('�a��qb�OaI�-�\r*', 'wp-content/themes/twentyfifteen/inc/template-tags.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��[q`#<�^��Z'),
('�m��L0N"�T~�b�', 'wp-includes/theme-compat/footer-embed.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��\0<[���\\FY��{�]'),
('�w�9=�_"h%��v', 'wp-admin/css/install-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\r\\�K�N�-\r3\0v�'),
('͓�Y�36��l�Y��', 'wp-includes/js/tinymce/plugins/textcolor/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'hɛ��ϑ��ôq�4��'),
('ͽ3��=��O�G�|~�', 'wp-includes/SimplePie/Credit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��M猋*>\n�|'),
('��x<���绋Ӟ%y�', 'wp-content/plugins/polylang/settings/view-languages.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'W�J_V�e�,�[��hc9'),
('����j(g��~jU#��', 'wp-admin/includes/class-wp-filesystem-ssh2.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���D[-�^�)7띜'),
('��^4�`�c�:Ϭ��', 'wp-content/plugins/polylang/modules/sync/settings-sync.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���b�m\r5�ظ*��'),
('�S�с^b�*	q-�N', 'wp-content/plugins/polylang/flags/tg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\bru�����n+��'),
('�_)-�]�ˌkO	���', 'wp-includes/ID3/module.tag.apetag.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4l����U��R�9I'),
('�|��f�����,2�T	', 'wp-admin/term.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~O�Q��;��͊C�l'),
('Ί�Y�(e��_b�Wj_�', 'wp-includes/js/tinymce/plugins/wpembed/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~�[���L	Zu�-,��'),
('Χ�D����C��e', 'wp-content/plugins/polylang/flags/sk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Z~�~D�b���$�0��2'),
('�œ���ϔ�=��#6', 'wp-admin/images/post-formats32.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'WY~�O��{�+_L�kE;'),
('��,���G� �:�0�/', 'wp-content/themes/twentyfifteen/inc/custom-header.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�4_�N�G^F�}[�F'),
('�����2�x�Y�#', 'wp-content/plugins/duplicator/lang/wpduplicator.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'k�S	���3؛�8�F'),
('���/ߡ���>��;�', 'wp-content/plugins/polylang/lingotek/image02.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��l��D���(y�t'),
('�-�+�e���m�u"��x', 'wp-admin/css/colors/sunrise/colors.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|6j�9�U"���7���'),
('�=�j���Yر�ag=', 'wp-content/plugins/polylang/flags/ga.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�-�Kޡ5�i��}��'),
('�uF��^G��E+��c', 'wp-admin/network/freedoms.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����p�O~+�~�1'),
('π�3��Ӱ��!�&', 'wp-content/themes/twentysixteen/page.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��o��jt�m�Jp;�Z�'),
('π�tGȩ�����D', 'wp-includes/js/tinymce/plugins/image/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'E�����9`NA��v��'),
('φK	�ըL�H:dg�<6', 'wp-content/themes/twentysixteen/template-parts/biography.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '<]_ר���o�uN�B�'),
('ϊ=��X���bBz'' �', 'wp-includes/js/jquery/ui/effect-explode.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '`YU����Q}X�Q�0�'),
('�����HԹ��f�k�', 'wp-includes/js/tinymce/wp-tinymce.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�b\n��0pr���Hv'),
('�ݙ�P(���O''E��e', 'wp-includes/js/jquery/ui/effect.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'A֢�pi��u+`�'),
('�鋭��{^�MU*�_', 'wp-includes/js/twemoji.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'g���CLtZ�����Z��'),
('��]mٲ�	▭�', 'wp-content/plugins/wordfence/vendor/composer/installed.json', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'O��fI��8�x�E\Z'),
('�>�s�l�WD7�M�', 'wp-includes/bookmark-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\�\Z�`�^@�"\\H�~'),
('�L�����D52�_�', 'wp-content/plugins/duplicator/views/javascript.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ŝ�:_��%�Q�16�'),
('�|���������"�M5', 'wp-content/plugins/polylang/flags/lt.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��읹�t�_���S�Ä'),
('Єq�U��]���I', 'wp-content/languages/continents-cities-fr_FR.po', 0, '���q �?,�}�����d', '���q �?,�}�����d'),
('Т�펹�|����@', 'wp-includes/images/smilies/icon_arrow.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ʵ	�������('),
('��"����y��N(D', 'wp-content/languages/themes/twentyfourteen-fr_FR.mo', 0, '��>��[�o5J= +��P', '��>��[�o5J= +��P'),
('��^�\\�X�PvS�\\�{', 'wp-admin/js/media-upload.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��d��kTT��y_$m'),
('����n��,[��h��', 'wp-content/plugins/polylang/languages/polylang-sr_RS.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'E�\rԒ��р�{Io'),
('��Q^S7�����', 'wp-content/plugins/polylang/flags/mo.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'c9���L����h_'),
('�/��0��\n*7�f(��', 'wp-includes/js/wp-a11y.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����k\n_˰���V\Z'),
('�_\\c9mL�v��1���', 'wp-includes/compat.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '8�Z��"	^2Lh��\\q'),
('�a~�l����\n2�', 'wp-content/plugins/polylang/flags/basque.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Xč�]�2㒏�'),
('���z�@��%��', 'wp-content/themes/twentysixteen/footer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '&IX��o����Oq'),
('��*\Z��CbѸ(�3E', 'wp-content/plugins/duplicator/installer/build/view.step0.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$��V\\т�Il�?�V4'),
('�Jh|��0�`Zp�E', 'wp-admin/user-edit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Z�J�(w�ޜ�'),
('�+qK(�e�$k�\\���', 'wp-content/themes/twentyfourteen/content-gallery.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��&ΜQWƗ`��w'),
('Ҟ����ǟ�	Ks���', 'wp-includes/images/icon-pointer-flag-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���2�b��&�Z�r'),
('Ҫ*���H���\n;t��', 'wp-admin/includes/ajax-actions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��%�h���� T��}'),
('ҭ�_VlK�g�!p�1', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/rules.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '?\0`���qzg����z�'),
('ҲE5|�ѵ�C�d闼', 'wp-admin/options-reading.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '̲�	���MCY��'),
('��Lt593�u^���)��', 'wp-admin/images/comment-grey-bubble-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�TY�ŝ2�s,\r�m��'),
('��]u�s���r|�:v', 'wp-content/plugins/polylang/flags/hr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'hĐ\0�Sٴ�G��a'),
('�&)-â�\Z�Ι�p', 'wp-content/plugins/wordfence/lib/GeoIP.dat', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ɲ\n����*���K@�'),
('�57��\0�u�T㴬}�', 'wp-content/languages/continents-cities-fr_FR.mo', 0, '�Mi�@��/B��:2��', '�Mi�@��/B��:2��'),
('�@�ԍ��Ŕ�AD9Y�z', 'wp-content/plugins/polylang/flags/cm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���e�6��2p|B��J'),
('�E#l��L��_&ܪ���', 'wp-admin/images/arrows.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�v�$�>����>�Y'),
('�U��n�/|r@ڪ���', 'wp-content/wflogs/config.php', 0, '���ㆵ3԰w�[+�<�', '���ㆵ3԰w�[+�<�'),
('�js��w2��p��qS', 'wp-content/plugins/wordfence/lib/wfIssues.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'P�g�8W/,,\nMW;'),
('�{ڭd3T�Xy����7;', 'wp-includes/css/admin-bar-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'l>�sz����_�y��'),
('Ӌ��ċJ�ު��7', 'wp-content/plugins/polylang/flags/rw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��#H��8�F#&�/�"'),
('�»c���&)�lԚ@', 'wp-content/plugins/polylang/flags/cf.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%-_LG7J>»��'),
('������0*�W��', 'wp-content/plugins/index.php', 0, 'gD,V�=\\�bP', 'gD,V�=\\�bP'),
('�����}�vϣ��G�', 'wp-content/themes/twentyfifteen/genericons/Genericons.eot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '→��(��7k�j'),
('�].�oo�ȦM-n	�', 'wp-admin/images/align-none-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�XC�)[���-�4�'),
('�Ȇp���]4��L��q�', 'wp-includes/css/admin-bar.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Ju���/5''��V5='),
('��p��S��`�]T]D�', 'wp-includes/css/dashicons.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�׃𫙼�Gu����'),
('�����:����}޺�R�', 'wp-content/plugins/polylang/modules/wpml/wpml-compat.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�yq��3)t�����\\'),
('���&U������k�', 'wp-content/themes/twentysixteen/single.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��>�W;o]�U�ol~P'),
('�X��$�a��B��^', 'wp-admin/js/user-suggest.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��T\\���\\|�\r�9�'),
('����ͤ6�\0/��k���', 'wp-includes/js/imgareaselect/jquery.imgareaselect.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%�.�e��By�Ur@%'),
('�>���uϽ�S�4����', 'wp-content/plugins/polylang/js/nav-menu.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-_!y8�?pL�?�k��'),
('�Z��	r!ޏf���	�', 'wp-includes/images/icon-pointer-flag.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��,���E^�j`'''),
('�oҨ*K��o�7{� <', 'wp-includes/ID3/module.audio-video.matroska.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'c����K9j\0�S��i�J'),
('�rY�S�xwDY˚J�[', 'wp-includes/images/media/interactive.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R׬˂���ôŉh�H'),
('֋�8�[�����0�ʊ', 'wp-content/plugins/wordfence/views/waf/debug.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3��Tɤ���>M2��i'),
('ֶ��9؞f�po3t', 'wp-includes/class-wp-admin-bar.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��T/���\Z��l]��'),
('��J���!�[W6ݧ��', 'wp-content/plugins/wordfence/lib/IPTraf.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��0t^J�����F�-\n'),
('���v#�9���)?Ip�', 'wp-content/themes/twentyfifteen/content.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '?<h���>C��Bq��p'),
('�򩐗�⼑B��W', 'wp-content/themes/twentysixteen/genericons/genericons.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�P\r�6��Xw��x�M'),
('�\rn8#Ô��9����|', 'wp-content/themes/twentyfourteen/images/pattern-light.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�i���Gp�j���Sݨ'),
('�Gȩ��6����\0Y', 'wp-admin/includes/class-wp-posts-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�c��A��Q|Wp�	�'),
('מ�y�7mE5���O_�', 'wp-admin/js/media.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.���$!&��^$�Y'),
('ײ2�D�ɻ&-u��	', 'wp-content/themes/twentyfifteen/page.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'B�5���^�\0�`�C�'),
('��j0���w�E}®R�', 'wp-admin/css/wp-admin.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���v&�o��0l\Z��'),
('��^�u����}�G��', 'wp-content/plugins/wordfence/lib/email_unlockRequest.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '� �E�28.63R��'),
('��\Zv�I:wm�''~K-', 'wp-includes/ID3/module.audio-video.riff.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�TfbpGO�-�'),
('� �H\Z���ƪo�y�', 'wp-content/plugins/polylang/flags/esperanto.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ݪ�V��d?��X�kg'),
('�&�Zh�$�Éo�', 'wp-includes/class-json.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��B{�vC�ޯM��A�m'),
('�8/B��$8���`m�', 'wp-includes/js/imgareaselect/jquery.imgareaselect.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'z�B�RS���:Y�'),
('�A�h)I�\Z]Gr���E', 'wp-admin/includes/import.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\0�:����b\n��hy'),
('�M&�3\r��3CMaQ{', 'wp-admin/images/yes.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�+��7܉�\rqZ�Qk'),
('�V���ۜ���}A', 'wp-content/themes/twentysixteen/template-parts/content.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��$��/s=N�����'),
('�]���A��nB���(d', 'wp-content/plugins/polylang/flags/my.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���b�A�a_��у��'),
('�o�ǣ�	ף�f0�Y', 'wp-includes/SimplePie/Core.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���#��������\Z�'),
('�v����\r���&X��', 'wp-includes/js/jquery/ui/selectable.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Q�"�{�B�M���'),
('�x��βЦ��A	�<�', 'wp-content/plugins/wordfence/lib/wfCrypt.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���W��k|��)���4+'),
('�{��Tq�M��}�[f', 'wp-content/plugins/polylang/flags/gp.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��\n b�O�d13q���'),
('ؐV\\=lS��l�J�&', 'wp-content/plugins/wordfence/lib/menuHeader.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'vB��p_0*�k8�oG'),
('ر�-�_}Z�h��\n�\Z', 'wp-admin/includes/class-walker-nav-menu-edit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\n''�նם��B�w��'),
('��ҐDo��=(�S�{f', 'wp-content/plugins/duplicator/assets/css/images/ui-bg_flat_75_ffffff_40x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����������DÎ���'),
('���Aj^��3�z\nt.�', 'wp-content/plugins/polylang/admin/admin-filters-post-base.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�3]W �;j�������v'),
('�,(�i7:^�^�#', 'wp-includes/js/tinymce/plugins/paste/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 's>�����-uu��'),
('�<��`��עA�zq�', 'wp-content/plugins/polylang/languages/polylang-et.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'K֨Q���_�v.�'),
('�J��^\Z7��uG�k+', 'wp-content/plugins/wordfence/lib/wfDB.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'C��?8]N\n:}MQ��'),
('�k��/y�����&��G', 'wp-includes/images/rss-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Ya[�Q�����rj�'),
('٘�"P�ܞ��,���', 'wp-content/plugins/wordfence/images/icons/ajax24.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'K:�����m𙗣P�'),
('ٹӃ2HAY�fM�#�m�', 'wp-content/themes/twentysixteen/404.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '8ȗG@=/6�(�\r�'),
('��֨�������5', 'wp-content/plugins/duplicator/classes/utility.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'G&�?>�\0�`��8g9S'),
('��3��I�98\\�֛�[t', 'wp-includes/random_compat/random_int.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����]m\riVi+Ԑ3�8'),
('��!}�=�`*�gZ=', 'wp-admin/network/themes.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��M�s�~z+���`8'),
('����aj���2l7�3', 'wp-content/plugins/polylang/flags/bs.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�E�L�@�$Hi!��*��'),
('��>�~�!�g�q��', 'wp-includes/js/tinymce/skins/lightgray/skin.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�v�A��!�j��+�'),
('�k�-	�����', 'wp-content/plugins/polylang/admin/admin-base.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Aw��.�Q�S�'),
('��w�=Ţ�O�&�F�', 'wp-admin/css/colors/midnight/colors.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '&܍���|DW��!E�4'),
('�|�#�԰#�{�����', 'wp-admin/js/link.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��F��0�;���3�%-'),
('�РL�jQ�D��Ğ', 'wp-content/plugins/duplicator/installer/build/ajax.step2.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'b9���Y\0�Et���'),
('��!�(t��<Թ', 'wp-includes/js/heartbeat.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'v}�P�*��Bv'),
('��_\r�JL�#�@B��', 'wp-admin/css/colors/midnight/colors.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�W�	�ߥ���_�j��'),
('� �I�_X�����?', 'wp-admin/js/gallery.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N{%�3t�9Ze&Q�w'),
('�;����-�F{���', 'wp-content/plugins/duplicator/lang/duplicator-fr_FR.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '٥ΰ�����\r)|<��'),
('ۖJ�Bw�C��|M�v', 'wp-content/plugins/wordfence/lib/Diff.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R|�$����V;P����'),
('ۙ����̱@��^1�L', 'wp-content/plugins/duplicator/views/help/help.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�(I-��o�u�$��B�'),
('۟Ob��i��ԅ�-(kn', 'wp-content/plugins/polylang/flags/de.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ݫ�h~���뀍DC�'),
('۪���	.�ո�\\���', 'wp-includes/js/tinymce/skins/wordpress/wp-content.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�U''`��\\%A���'),
('��r�����؁=�Ԓ�', 'wp-includes/images/rss.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��[�(�.��*NZ�'),
('��\np���Gnu:���', 'wp-includes/js/colorpicker.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��V g�����-�'),
('��vPiZ޴8W����', 'wp-content/themes/twentyfourteen/js/html5.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Z��k\\���8F2Y�A'),
('�ȼ�؟�''\r`����', 'wp-includes/feed-rdf.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*�I̳����7B��'),
('�2G�?�_��\\���-B', 'wp-includes/canonical.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'P���<�ܫކ�;p�'),
('�:}Y��c��?7x��', 'wp-content/plugins/polylang/flags/am.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�]��N�d��^�c/'),
('�F|\n�MN,8�ݪ�''�', 'wp-admin/css/press-this.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '=Ʉ3���^�B�t�8'),
('�Mލ,T�v�\Z\0�\0(�U', 'wp-content/themes/twentysixteen/js/skip-link-focus-fix.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�"B!���H1�涭/Ps'),
('�a\0vࣷ�y6�xo', 'wp-content/plugins/polylang/flags/sn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'P\Z_�f-zՈ�\\��IT'),
('��ջZml��4�ˮU', 'wp-includes/images/smilies/simple-smile.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�K��{��f�w�h'),
('��\r\0FJ��B��e�', 'wp-login.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�OFg���b�섆Fd'),
('�)\0�2g�~���_0�', 'wp-content/plugins/polylang/flags/py.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���Z1D�\ZE)�xp'),
('�8W��L �V����B', 'wp-content/plugins/polylang/flags/ie.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H�-\rQ籛{y�1��\\'),
('�J0����j�Yg�h�', 'wp-includes/js/tinymce/plugins/lists/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�$,�e+_+�M�2g.�'),
('�[6�5��+�	�n9�', 'wp-admin/images/sort.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.�ˍ���lHj�]'),
('�f��y���ħ�*!', 'wp-admin/js/nav-menu.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/��a��*Q���۸ٸ'),
('�{fZ���ߥ���	�KQ', 'wp-content/themes/twentyfourteen/images/pattern-dark.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�E��[�.�t5��\0k'),
('ݖ�''�"|3�_�t|��', 'wp-includes/class-wp-term.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����r�Y�6Sl$ay��'),
('�3^��PM�Y���H�D�', 'wp-includes/js/tinymce/skins/wordpress/images/video.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�¶��B�=\rz��3j�'),
('�<���86Ko��X', 'wp-content/plugins/wordfence/css/activity-report-widget.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���\r�mE�d�b�'),
('�N�\\�|�`*�,)@4', 'wp-includes/images/xit-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��r�T��`��?J�/�'),
('�^�K^�8v�8���', 'wp-content/themes/twentyfifteen/content-search.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�<CUy�Q�O���b�'),
('�o�`���N\0p�WW��', 'wp-content/plugins/polylang/settings/settings-browser.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��G�itC''	:�;�\\^'),
('ޠ�����@w�c!�', 'wp-content/themes/twentyfourteen/inc/custom-header.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'c\0�<E6	��;�.*+'),
('�ދ���1F����a�', 'wp-content/plugins/wordfence/lib/wfArray.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��e�my��V�M�\Z��'),
('��''g!�:�H��),�', 'wp-includes/SimplePie/XML/Declaration/Parser.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���p(Å��B��s#b'),
('��X�5^�z�#6�I8', 'wp-content/plugins/polylang/flags/no.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'U�庮�sۍ�P�lb'),
('������9t7tD%Y', 'wp-content/plugins/duplicator/lang/wpduplicator.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3�0�e����^JR,�'),
('����"�����c)j�"', 'wp-includes/js/wplink.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '!�|O��\n�fU�D���'),
('�=Fh3{DW}��!b��', 'wp-content/themes/twentyfourteen/content-quote.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�d���k��I�9<�'),
('�Pd���X�h�U"��r', 'wp-content/plugins/polylang/flags/mn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Jۚ�A�u71��''�Og�'),
('�q����%ű� m+', 'wp-admin/css/colors/light/colors-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�S�Q�*�֥8%�lE'),
('ߌ��(������2���', 'wp-includes/js/quicktags.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�]���h�EJ�_�M'),
('ߖ/�2�Z��{�6��', 'wp-content/themes/twentyfourteen/category.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Ȇ��@9�{���%='),
('ߗ�Q��u�!ٶx�[', 'wp-includes/js/wpdialog.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�-���\0�g\r�Fġ�'),
('߰S����h[�۳�', 'wp-includes/class-wp-http-streams.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Q�t��5����}4`���'),
('߹V�=���"�#n�	�', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/parser/lexer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'I��	=�~��i��'),
('�û��"s����a�u', 'wp-content/plugins/polylang/languages/polylang-et.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'j*�j���]�Q|\r.G'),
('���6��9&�����R�', 'wp-content/themes/twentyfourteen/css/editor-style.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�#��`Y�0r�����?n'),
('�!��0��tT�(� ��', 'wp-content/plugins/wordfence/css/images/ui-bg_flat_0_aaaaaa_40x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'f�\\K�K�G�лSA�'),
('�%�f\\+,���\0\\Y', 'wp-admin/includes/class-wp-filesystem-base.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�m8�����Mƹ�!��,'),
('�o���ӱAL�\n����', 'wp-content/plugins/polylang/css/admin.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�蔩��hx�)h��'),
('�s�-v�TS�b��z�', 'wp-content/plugins/polylang/readme.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�e�Ǹ�QK��x�=z3�'),
('�|��B�����5Y��', 'wp-content/plugins/wordfence/lib/menu_sitePerf.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ϳ"��x<�%��+�4'),
('���r��M�ܴ-\nS��', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/parser/parser.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��\rcmm��j��ik�'),
('��כ�/`���f���$', 'wp-content/plugins/polylang/flags/pf.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���F�a��`�O�'),
('��^��bR��SI�!�?', 'wp-includes/class-wp-image-editor-imagick.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����qp.�f�x�/�'),
('�A	!f�Y�j=	qQ|H', 'wp-content/plugins/wordfence/lib/menu_sitePerfStats.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'B9�>��q�̉-�押'),
('�Z���(>(�1bޫ�Z�', 'wp-includes/js/tinymce/skins/lightgray/content.inline.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Q�8��̩\0�}�3'),
('�q�@/��ꦑٞ-M�', 'wp-admin/network/site-users.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'x\nI��9�m(*z�W�'),
('�t�?�?�u-����SJ', 'wp-content/plugins/polylang/flags/rs.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[g.>�3aB�a[�wK�'),
('�>���\n�5����Z', 'wp-includes/customize/class-wp-customize-image-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ui�h-�� ���K�'),
('��\\9ã>���Iz4�c', 'wp-includes/js/tinymce/plugins/hr/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'B���z{��@�X�б\Z'),
('� *�s\\�O��il�', 'wp-content/plugins/wordfence/lib/menu_scanSchedule.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Cd�Nr��,"''\0g"S�'),
('�%Z_''�~LJ��⍒�', 'wp-content/plugins/polylang/flags/it.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'xO~�3�YX�Ζ��'),
('�42\r��Z����j�', 'wp-content/plugins/duplicator/views/packages/main/controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�c~~0��R����S\ZH'),
('�L�>�ٟ�#{6p}Y��', 'wp-admin/options-writing.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9i�K�(�r���'),
('��ĸ:�,p�1��Hr', 'wp-admin/js/dashboard.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Z��ÜA�ʢ�>�5'),
('�\0��וoxi3%\r+]kg', 'wp-admin/images/post-formats.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�K���\0���%3���'),
('�\Z%e4w�o��', 'wp-content/plugins/polylang/flags/ai.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����q\0bi�s\0�'),
('�.��aZ�����j���a', 'wp-content/themes/twentysixteen/template-parts/content-single.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�cY��o�Lx����wF'),
('�0�;�-,�A�Ey�', 'wp-includes/theme-compat/sidebar.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H��]�!p�G#ϭ��P'),
('�L$�@��]����%+X', 'wp-content/themes/twentyfifteen/inc/back-compat.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'a������� �[�`z'),
('�a�Oj''�ŻD*ցV4', 'wp-cron.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�B�vme%�I�v�26�'),
('�s�F�wԬ��Tr�@', 'wp-content/plugins/polylang/flags/iq.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9��vb\Z�0�4�#O�'),
('�e�\\�k�c��Xf', 'wp-includes/customize/class-wp-customize-upload-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'J���F�yž�r@�{'),
('�F<��d�8�<\\=��', 'wp-content/plugins/polylang/flags/ro.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�8��R��O�\\{��G'),
('��q�82��v�&#M', 'wp-includes/js/tinymce/plugins/wpview/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '''��֥��:A{�"<���'),
('���<kUJv%��1��', 'wp-includes/fonts/dashicons.ttf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���F��F����Ń�'),
('���#�iJ�H�?�@�', 'wp-includes/class-wp-http-curl.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�RoU�A�U��d��L\r'),
('�w����V���!�', 'wp-admin/includes/class-wp-ms-themes-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����XC[!Cҭ��y�'),
('��N�`��rHn0���', 'wp-includes/js/mediaelement/jumpforward.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ᬌ��.��&w�H�S'),
('�~$�=Rvں�f�����', 'wp-content/plugins/duplicator/lib/forceutf8/README.md', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�0�''PK@	.�t�t'),
('����zpKC�{\\>��', 'wp-admin/js/dashboard.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\0&,\n*�Wv���Ĺ'),
('���1�]�M|�K�FZ', 'wp-content/plugins/wordfence/lib/wfBulkCountries.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}���M슱���_#9'),
('��\00��q�ĊNy)��', 'wp-includes/plugin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�~����hWn����'),
('�''�`F̔�~�Ė��', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/view.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}��J�g�!fy��L�'),
('�H��4�.\\�:��#��', 'wp-admin/css/l10n.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H"n��C��,��U\\@'),
('�N��6kd}�no�', 'readme.3b9e06d146e8215c4dde6285061ba1d8.html', 0, 'Zv�^#�Pź�z.%�', 'Zv�^#�Pź�z.%�'),
('�R��5?�- S�^H��', 'wp-admin/js/editor-expand.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�?�.\\_xG�����y��'),
('�eŐ�����n���A�', 'wp-content/plugins/wordfence/lib/wfView.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '⇲*�!�P�''|�%\Z�'),
('嘤�(!$db�F	`', 'wp-content/plugins/polylang/settings/settings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'r��ǜ���7�W��Y'),
('壛��w���?��<', 'wp-content/plugins/polylang/admin/admin-filters.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��:���)��ν�R'),
('�\r�b\\��ɍ�\Z��', 'wp-admin/edit-form-advanced.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�G�A��,��E�*�'),
('�+���.���eF��', 'wp-admin/css/dashboard.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����0=�Q"����'),
('�9e���kk�R�o���S', 'wp-includes/embed.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%*��y���"ʈ?r��'),
('�G��5�@����07��', 'wp-includes/images/blank.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H�+��51	��f]��9'),
('�J~_o�f�k�����', 'wp-includes/js/wp-embed.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��ف�/jV�@�}{'),
('�jI�!W������*:G�', 'wp-content/themes/twentyfourteen/comments.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.������_݇�X�'),
('�r�6�4�>n>�lZM�', 'wp-content/plugins/polylang/flags/mt.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'z~������n�S�o!'),
('様��7�^��b�"�', 'wp-content/plugins/wordfence/images/back_disabled.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'h���g���i���>'),
('�y�l��s�U>�<��', 'wp-includes/css/customize-preview.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'v�M�uU��m���YKw�'),
('��W���"���Sk:�', 'wp-admin/images/align-center-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���-�r�5*J7�If'),
('���ť�X����Q��', 'wp-content/themes/twentyfourteen/js/functions.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�+�4�<\\>[���r�'),
('�⣣�M�O����U�', 'wp-admin/js/editor.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'nɍ�$&������Fn'),
('�"�ơ���7vs+�', 'wp-admin/includes/class-pclzip.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�M"���,\\�jC�$��'),
('�Djמ�8]fД_�', 'wp-includes/class-wp-widget.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':^^����{�b�A)��'),
('�b`K�''��컜���K', 'wp-includes/functions.wp-scripts.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�O���[����=1<&�'),
('���x��Agm%����', 'wp-content/themes/twentyfifteen/single.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�lC�n���/���'),
('�J��ёe�\rXd��$�', 'wp-includes/class-wp-customize-widgets.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�vF��Ӄ�u�����Q�'),
('�l�XNEM�CgVsA:', 'wp-includes/js/swfupload/plugins/swfupload.queue.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�SR/�J��5�-v͏'),
('��d�JgP"\rާ"J', 'wp-content/plugins/polylang/settings/view-tab-settings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�9��f���2!�*'),
('���K�g���o#�0', 'wp-activate.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'V�I�W��f���\\[&'),
('�ŉ�	i����/Э', 'wp-includes/formatting.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��d!�j�{rK�7&���'),
('��H���l��{!D#�!', 'wp-admin/js/color-picker.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�''�rlB���j����	6'),
('��F�ZY��C8��3E', 'wp-admin/css/colors/blue/colors.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�8��{x~�v��~�\0a'),
('�%y�>}H�o���(6', 'wp-includes/js/jquery/ui/core.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' Ms���\r�a���{'),
('�f�i�`�=@T��o�', 'wp-admin/images/spinner.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����1c~''�dv�vHq'),
('�pqE/��c�/�2�1', 'wp-content/plugins/polylang/flags/bz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'n���2�6t	AUE�~s'),
('�J���y��0m�`�/', 'wp-includes/class-IXR.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�g�7�&��S=+fG�A'),
('�\0�]�p��ޑ�	\rG', 'wp-admin/css/customize-nav-menus.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\|�c�8"36��?N�x'),
('��\0����$$�J�', 'wp-content/plugins/wordfence/lib/menu_waf.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��rh�P��7?tA�q'),
('���Q�o�H*���(�', 'wp-content/plugins/wordfence/images/sort_asc.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',��I��+ƾ���=��'),
('�"��[Q	����', 'wp-content/plugins/wordfence/js/admin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' ۽\Z�L�"������]'),
('�F�j!Y�{.J=,��', 'wp-admin/images/stars.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[����><�k�{��(�'),
('�SEyQ\\;��f	Ý)', 'wp-content/plugins/polylang/flags/cv.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/N�ܺL�?�z#_2�'),
('�]�W/>�}<8� VF�', 'wp-admin/includes/theme.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'E�.��s�D/���l�'),
('�^.�jT}�<��I��', 'wp-admin/js/accordion.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����$t8)!ioZ~�'),
('�_���\0��i�l��', 'wp-content/plugins/polylang/polylang.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'lĪ��j���6u���'),
('�'' ��#s��߾U|', 'wp-includes/js/mediaelement/loading.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'v�&��B"o�!e���'),
('頻�yN<���9�o\Z<', 'wp-admin/js/xfn.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'f�''�(�.�J9\r^'),
('��m�Mt���W�B', 'wp-admin/images/align-left.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\�y0��d�Z�o.h��'),
('����t���Z�O''� \n', 'wp-includes/js/thickbox/macFFBgHack.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Ȱg�W�,/u�'),
('�����V,E@�X���y', 'wp-includes/SimplePie/Cache/File.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�=�@��B[	S�'),
('�kLN\0��x6@', 'wp-admin/css/list-tables.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*`�l�`�_�\r�0��'),
('�%N{kP�R�gI0�l\r', 'wp-content/plugins/duplicator/installer/build/classes/class.utils.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'j����B�Pc�sZ4'),
('�&�(�yf�\r��*KcA', 'wp-content/themes/twentyfourteen/page.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'M�;DjR�?���'),
('�4���2�)A.;4�', 'wp-includes/js/customize-preview.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%ىD}L��f&���'),
('�nmq\0���@pF�d*', 'wp-content/plugins/wordfence/css/images/ui-bg_glass_95_fef1ec_1x400.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��0���(5�&3lh�)W'),
('ꍥ��2jEbg؈W�x�', 'wp-includes/css/editor-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��܎��-�u=/!H!'),
('��y}p~Ρ!\Z���Y', 'wp-content/plugins/polylang/include/cache.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'V���6��[�lC}O��'),
('�Ǉ���4˓T`�k', 'wp-includes/js/wp-pointer.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6��|dMpX\0��fɐ�'),
('�-n�$.�#g%�}��', 'wp-content/plugins/wordfence/lib/Diff/Renderer/Html/SideBySide.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'p���uQ���: �*'),
('�0���R�J�{y�ˣ��', 'wp-includes/general-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\�����8�(g�1��'),
('�F �8�+�)��r�P�', 'wp-admin/images/no.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�k�d�$��ܟV7���'),
('�M\Z����H�?ͲZ', 'wp-includes/class-wp-rewrite.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ʓ�[���r{�cc]�'),
('�Oӿ�;�=\\J�zy', 'wp-includes/js/tinymce/plugins/wpgallery/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�7`��O�ty���O�'),
('뭷\r�!z}ML�K�E', 'wp-includes/ms-files.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ѳoJ0�90�A�h�av'),
('��Sڰp��GMǯ�l�', 'wp-includes/css/media-views.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���7B��dI�i�'),
('���׮F��p�s��4�', 'wp-content/plugins/wordfence/images/back_enabled.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����]�����H��'),
('��vA�ds�����K�]', 'wp-admin/post.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��1��H�PR<�n�d�'),
('��YC��o�oR�亞�', 'wp-includes/capabilities.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�M��b��Ct-d�s��4'),
('��q;:\0z���s��V%', 'wp-content/plugins/duplicator/lib/forceutf8/Encoding.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'h�d�p�I�u�m�Q��M'),
('�8�ڧ��s}��ն�Ni', 'wp-includes/class-phpmailer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��|#vd��BhG�p��'),
('�?�����h�����;', 'wp-includes/js/quicktags.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '!:�C��>�<��#Q�'),
('�D\rh}�����!\n', 'wp-includes/js/jquery/ui/effect-drop.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'W�V��ǥ�Y��F2��'),
('�Pط��悇̺ƴ$@�', 'wp-includes/SimplePie/HTTP/Parser.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'W%���4�6���6	'),
('��E\0d�<&����', 'wp-content/plugins/duplicator/assets/fonts/fontawesome-webfont.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�u�̨�!�[�ᅲ|['),
('��c��.D�r� |��', 'wp-includes/js/tinymce/skins/wordpress/images/dashicon-no.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R����Z�?f.��8��	'),
('츃�v��6��;�~�', 'wp-includes/js/tinymce/utils/mctabs.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��\r��|uJkek��5\0'),
('��-x�(�E�oI�=�', 'wp-includes/class-wp-customize-section.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�B��x�\Z�~�{�k��w'),
('�\\�S�Շ��8��;2', 'wp-includes/class-wp-tax-query.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�x���&Z�\Zd0/.p`'),
('�\Zpr5>��#E���ĕ', 'wp-content/themes/twentyfourteen/inc/template-tags.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 't%d&���H,e\ZO'),
('�]��@�\n��>ĺ�Yn', 'wp-admin/admin-post.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>�[s��+����,h'),
('��h��dg��P�', 'wp-content/plugins/duplicator/assets/img/dropbox-64.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '("a���1H��z\n=N\r'),
('�QR"��@3��v�S', 'wp-admin/js/link.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�u��5ϳt�{��z�'),
('�t�ŔB���hMy�q�', '.DS_Store', 0, '�;܎�\n�rf&�����', '�;܎�\n�rf&�����'),
('�G� ��~����`�', 'wp-includes/customize/class-wp-customize-nav-menu-name-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '{�`ٖ�_�7T��ȥ3'),
('��\Za�]]�A��''h���', 'wp-admin/network/settings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���y����O��a���'),
('����=��c�ه���', 'wp-admin/includes/upgrade.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Նw�I|)�VX?3'),
('���eC����Di!��', 'wp-admin/css/colors/coffee/colors.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��������u��C�(�'),
('���f�%u�P���', 'wp-includes/js/mce-view.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��2���hy$��'),
('�\Z���{:\Z���4f', 'wp-includes/js/customize-preview-nav-menus.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '"M�Kß����;��(�'),
('�H��=��cb��Hp', 'wp-content/plugins/polylang/flags/nu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�/h-�@��n�)oc܇'),
('�טn�`UMҵ�����', 'wp-content/plugins/duplicator/installer/build/view.step1.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'kG~����Mx~��p�'),
('�순$#N�p�ѣ��?;', 'wp-content/plugins/polylang/include/links-permalinks.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ǻ�}~�hA>͕�4Ο'),
('�@}&�J~�¾&��\0', 'wp-includes/customize/class-wp-customize-new-menu-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[��!���A[�\rZL��'),
('�&t�G1o�U�N��{\n', 'wp-content/plugins/polylang/admin/admin-nav-menu.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�BKa]~#wv��iJ�%'),
('�7���0c[O�H|�z�', 'wp-content/plugins/polylang/flags/mu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H���?���{��R/'),
('�;L�t�׬C����ɣ', 'wp-content/plugins/wordfence/tmp/.htaccess', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�I�z~�i�,L���'),
('�D=Jǅ/	6ރa�', 'wp-includes/js/swfupload/plugins/swfupload.cookies.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�~�\rڈ�k\\ 7̴��'),
('�Y^~5~��p�G-���', 'wp-includes/js/customize-views.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��>h����%���N'),
('�z�������|�z�xv', 'wp-includes/js/jquery/ui/droppable.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\ZK"q�H�d����~A�P'),
('�t��J���E���C', 'wp-content/plugins/polylang/flags/cn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�/�9��@b2�Dt�=�'),
('���P��a`Xu', 'wp-admin/css/color-picker-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '<����J��pH(D'),
('��X=U�pfp���Z', 'wp-includes/taxonomy.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'y޿>�n���ȹ�:�'),
('�ތt+�\\�+�Xa�ZU', 'wp-content/plugins/wordfence/lib/wfScan.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'V������*���3A��'),
('�㯩�	''��ި��V', 'wp-includes/images/smilies/icon_biggrin.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�YpR�+�0}k�N{�k'),
('��6X�Ԫ4��[_��=t', 'wp-content/plugins/wordfence/lib/wfScanEngine.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���''�^q����'),
('����9��r�Mԧ��', 'wp-includes/js/customize-preview-widgets.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����e�G6P|i��\Z''\\'),
('�"⼶����/���1', 'wp-content/plugins/polylang/flags/cc.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '뿱�y�R��˱,�\n#'),
('�$�ī�I�^��3���', 'wp-admin/menu-header.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'm�	T����5#���Ժ'),
('�B�Ȱ�.��\0�7���', 'wp-content/themes/twentysixteen/rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���tl.Y��Z8~Xϧ'),
('�eI���TyK�m�1�?A', 'wp-content/plugins/polylang/flags/bh.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[�a��%�$��ٛA�'),
('����e�}�r�''����', 'wp-content/plugins/polylang/languages/polylang-ka_GE.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�jΉB����19?^'),
('��U��e�]�G��v-', 'wp-content/plugins/polylang/flags/er.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H9JɤO0@��W�#�'),
('�N ���iiڭ�', 'wp-includes/random_compat/random_bytes_libsodium_legacy.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�~F��-��&�6,��Q'),
('�!A���\rږ\r>�', 'wp-content/themes/twentyfourteen/content-featured-post.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '`��X�''�gT\\d)�'),
('�H8*��A��5�b', 'wp-content/plugins/polylang/flags/sm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'V�����''�kP�Q��'),
('�з&�L۽¨��VN�', 'wp-includes/css/buttons.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Qfc��eJ����+'),
('�գm��p��驍�9\n', 'wp-content/themes/twentyfourteen/inc/featured-content.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Sj��h�(2�����'),
('�������6$[���O�', 'wp-admin/css/customize-widgets.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�8�����ҩ���^�'),
('����n>ϭ5J�qN/X,', 'wp-content/plugins/polylang/flags/an.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}}h*���jm�ۇ3O'),
('���rp.u�3zx�', 'wp-admin/includes/class-ftp.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '!��|�*������d'),
('�7s�\\]�}�AA�we1�', 'wp-admin/tools.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�z� ��_P��O�"�'),
('�Z/���{Lt�ծF$�', 'wp-admin/js/svg-painter.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����/�|ĩ���z�'),
('�TY�PpE�w��', 'wp-includes/widgets/class-wp-widget-archives.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��/�n�<�5�Y�O'),
('��J]����;�o*��P', 'wp-content/themes/twentyfifteen/genericons/Genericons.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/�=³zeX*�|��b'),
('�ſ9�>�2BOP�/I�', 'wp-content/plugins/polylang/flags/as.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���X''{g XLM�N�'),
('��0�1IrBF�H�2', 'wp-content/plugins/duplicator/uninstall.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Z)Q����e�*n\\��'),
('�\nB��2v?YX\n�+', 'wp-content/languages/themes/twentysixteen-fr_FR.mo', 0, '�:��C4*�z G5>�', '�:��C4*�z G5>�'),
('�+)+�j^�;#���', 'wp-content/plugins/polylang/install/install.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'nFè���{A�b�4f'),
('�4%V��g����1�', 'wp-content/plugins/duplicator/lang/duplicator-de_DE.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'l���ݓ��ҿ�`'),
('�?��E_�)�xڅ$��', 'wp-admin/includes/deprecated.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ТS\0xֹ�Y'''),
('�po���X0%������', 'wp-includes/css/editor-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'עX�<έ�U���q�e�'),
('��M�٦M�/`�', 'wp-includes/js/swfupload/handlers.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Oۅ��߲�}�'),
('򱠭��B�R�z��Y', 'wp-includes/js/jquery/jquery.table-hotkeys.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�o�go����~i�I	�'),
('�?{o_���''�n�', 'wp-admin/images/resize-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��e?�&h.��\n��'),
('���_f $�O<o', 'wp-admin/js/common.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\Z5��4/��%[Ed��'),
('��%�\0��z�f�N�pS', 'wp-includes/js/tinymce/plugins/wpemoji/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�za1�Pe=ߡzV�b�'),
('�ҭ������]\Z��y�v', 'wp-content/plugins/polylang/flags/zm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�i���}#Dhg��JR#�'),
('��w�+"+�$��^�', 'wp-content/plugins/wordfence/lib/wfLog.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����wH���L"�\n^'),
('�#\\���/�vXR', 'wp-admin/js/theme.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'D5T���F�����xԆ'),
('�K��z��=�G����8i', 'wp-content/plugins/wordfence/lib/menu_passwd.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����ٝ�&�U%��uy]'),
('�lF����c뒕�L���', 'wp-admin/js/iris.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'u�5`�@Ħ�Ue߰�'),
('��,�o�!�z�j"�', 'wp-admin/css/edit.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'p����\Z�w;W���'),
('�ؠ]�f���P����', 'wp-content/plugins/wordfence/lib/wfLockedOut.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Wѱ�X�e D���'),
('���Q뚰33x�}�F', 'wp-content/plugins/polylang/include/widget-recent-comments.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��bWE�(���\Z�'),
('��V��k9۴�s���ֿ', 'wp-admin/css/customize-controls-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�L+hGF_mo��5�;�Z'),
('�+�,��������\0�', 'wp-content/plugins/duplicator/views/packages/list.base.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '#GV8�!Ѡ��,ԯ�'),
('���;�^𩸴8c�', 'wp-includes/css/buttons.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�^�]��U�c�r\\�'),
('�J''#��rN�0a\r�', 'wp-includes/images/crystal/audio.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�nV�:�ω�G��-#k'),
('�Y��R�Yi/��l@HX�', 'wp-includes/js/media-grid.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ljt8�j��ݷW[@��'),
('��j�8���ď�\Z���', 'wp-includes/js/wp-backbone.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���O�[���J-v'),
('����0`���_3q�', 'wp-content/plugins/polylang/settings/settings-licenses.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�zb�il���q�j��'),
('�-"D��ʹD�5a�/', 'wp-includes/cron.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'zKr^��E��_�fd�'),
('�<��l�\0�u\n��L]�', 'wp-content/plugins/polylang/flags/so.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'K����m�CJ�}�?��'),
('�A4e���{�^����Z', 'wp-includes/js/wpdialog.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'r�9_�M@9\0�S�����'),
('�F��\Z����C��1�P', 'wp-content/plugins/wordfence/lib/wfDict.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*��6Att��#�'),
('�u�N���.A_�_�', 'wp-includes/js/media-editor.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.��t�+~6ң8L�N'),
('������>+ܞL[�m', 'wp-includes/js/tinymce/skins/lightgray/img/anchor.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��a5q��ȑ_4�@'),
('����(���%�#�9yn', 'wp-admin/css/forms.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��]��IjZ�y�&��'),
('�����y��\0�"��Q', 'wp-admin/user/menu.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�)��»�g��E�p�'),
('��~������r�C��', 'wp-admin/link-parse-opml.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'J�#�/����|ھI�'),
('�j��Z�;\nlГ�', 'wp-includes/random_compat/random.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����G|�1[_s1�'),
('�KF\nO�i�},���w�', 'wp-includes/random_compat/byte_safe_strings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�u����t�����oyi'),
('�V9��K���goX��7�', 'wp-admin/images/align-left-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'i�8�O�����^��c'),
('������H�S!;� �', 'wp-admin/js/user-profile.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����A�<k�G_�^'),
('���]k\rW��#��t', 'wp-content/plugins/polylang/admin/view-translations-term.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�t���v�-LϘ3��'),
('���,P��9:�2���', 'wp-content/plugins/polylang/flags/ma.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�6������_�L\rhhN'),
('���+���q�pW��', 'wp-includes/update.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6�s�(ӽ{y�9y_^'),
('���`�&X<�aQ�Vh\\', 'wp-admin/user/profile.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '������\0yݤ�&-'),
('����Pq-�t�@l�', 'wp-includes/images/wlw/wp-icon.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1	�ʚ�7w3K��*'),
('� @�;��*��|��', 'wp-includes/Text/Diff/Engine/string.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':��=�M��\0��i)'),
('��/�,[�m��đ?�', 'wp-content/plugins/polylang/languages/polylang-id_ID.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����2��Q����ߢ'),
('�>�v�L�#��IZ�', 'wp-content/plugins/polylang/flags/bn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'I�*��H�/��$��<'),
('�@���sB0<�{l�3��', 'wp-includes/wlwmanifest.xml', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Ԑ����i�^��'),
('�koZ���z!/��f', 'wp-content/themes/twentyfifteen/js/keyboard-image-navigation.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�/�80r�\ro���'),
('�k����e<F��4', 'wp-admin/js/revisions.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'b�^�Om]�''����9Dn'),
('����sY�Qeٕ~\0\Z5', 'wp-content/wflogs/.htaccess', 0, ':RV���*��bLQ���', ':RV���*��bLQ���'),
('��6K1���(���}/AX', 'wp-admin/network/user-new.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�;��1��`��n!El'),
('����z�/�u70O=y�', 'wp-content/plugins/duplicator/lang/wpduplicator-fa_IR.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-���s�rN|;xCA��'),
('�-3g<�`c��B\0\n\n', 'wp-content/plugins/duplicator/lang/duplicator.pot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��i?��2���Q�V7'),
('�^Q6l��J!�	�ͦ', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/json.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�J�aD5H�r����'),
('��H�Mz�@�A��', 'wp-admin/css/press-this-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�5~�V6t)5�Lj�^'),
('��ɱ%��a{Z�j	%�', 'wp-includes/class-wp-editor.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '(?K���R��q%�Hu'),
('����I�:4P�U���', 'wp-includes/SimplePie/Cache/Memcache.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��JU���1SQ��?�'),
('��8K�� ?O]ʹY', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/rules.key', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��\ZlY^[F\r�2xʻ'),
('����p�l4[���e���', 'wp-admin/js/inline-edit-tax.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'u��L���?�P\Zߊp�'),
('���XiU1`��]���', 'wp-content/plugins/wordfence/js/perf.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'uQ�"�wF���R@p'),
('������Ѝ3�>#�.�', 'wp-includes/rest-api/class-wp-rest-request.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��~j��P~�7@V}'),
('�R��=��*�d��n�', 'wp-admin/includes/media.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��k+1��H��''{I)'),
('�-^g��̺@\0/���', 'wp-content/index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'gD,V�=\\�bP'),
('�.ն���Zg{�=��', 'wp-admin/css/customize-controls.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'dg8\rgb��Z�Gz��K');
INSERT INTO `wp_wfFileMods` (`filenameMD5`, `filename`, `knownFile`, `oldMD5`, `newMD5`) VALUES
('�Wa��r�^Qͤ$q�5', 'wp-content/plugins/duplicator/assets/js/parsley-standalone.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�t���U�PTD�'),
('�`��X鹎7��DU', 'wp-content/plugins/polylang/frontend/choose-lang.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '<��\0�#r~��c)�Zr'),
('�c%X�~5�\\��\\e�', 'wp-content/plugins/duplicator/assets/fonts/fontawesome-webfont.eot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2@N�*�ؿ�B''�F'),
('�j�g� ����q�]š', 'wp-content/plugins/polylang/settings/view-tab-lang.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��dYW�7<ç�.�?�'),
('��''_G���>��r-gʯ', 'wp-content/themes/twentyfifteen/genericons/COPYING.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�B;��a`GԢ�މ'),
('���~��a%��!�P', 'wp-includes/js/tinymce/skins/wordpress/images/pagebreak-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '{�6�#UQ:��|>#��'),
('�����L?@��.~O�', 'wp-admin/css/colors/midnight/colors-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Z7U�Z�x6X��\r�'),
('����T\n����e.(��', 'wp-includes/class-wp-image-editor.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��+Q�?N~<��\r�R��'),
('��}���PÛ�P\\�\Z', 'wp-includes/js/tinymce/plugins/wpautoresize/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'VL��	�gS''����i'),
('��R�,�A���\Z�GJ''-', 'wp-includes/default-filters.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H0�>���/��Lv'),
('����p�q�=�sD���a', 'wp-content/plugins/polylang/languages/polylang-bg_BG.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�t��7��є\0['),
('���\n\\��ɶ.5���', 'wp-includes/images/xit.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�)�X��`1���H��'),
('�:�;:-s����5''�', 'wp-content/themes/twentysixteen/style.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'r��X�3\r�k�)����'),
('�D����]�|߼�$�', 'wp-includes/js/mediaelement/wp-mediaelement.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����J9W=K�F�''/'),
('�Ph�����rV�', 'wp-admin/css/revisions-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\\�:�M�L��#�m'),
('���,��x�|arL}�', 'wp-content/plugins/duplicator/assets/js/jquery.qtip/jquery.qtip.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�:��!���՗�.ل#'),
('�Ɍ.�4�f;D���', 'wp-content/plugins/polylang/flags/jo.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ў�����������'),
('����6Ri*5����æ', 'wp-content/plugins/wordfence/lib/dbview.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���(D�e��d�:�]'),
('�''������}����0', 'wp-includes/js/tinymce/wp-tinymce.js.gz', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�I��f������k�'),
('�])��	���{�?R}', 'wp-includes/feed-rss.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'r-�V^�|��� �'),
('�0<Ps��מH���22', 'wp-includes/js/jquery/jquery.table-hotkeys.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��֔#t�gP�g��'),
('�9(F�Rj2�n6]��', 'wp-admin/css/colors/light/colors.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����y�) ��w��2'),
('�J���!2���\0����', 'wp-admin/css/about.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�5��{�=�F]���'),
('�^|��\r�-��Ȉ�', 'wp-content/plugins/polylang/flags/kg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' 3��}Ī�c\\'),
('�^ֺ��S^�c���', 'wp-includes/random_compat/random_bytes_openssl.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�iVK��m�D�''�c��'),
('�g�"�}_�7����J5', 'wp-includes/js/jcrop/jquery.Jcrop.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'V̞��/K�x����'),
('��p��9�6è�R�', 'wp-admin/css/common.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ro�a�����!wN�k�'),
('�����ƪq�悳��', 'wp-includes/js/tinymce/plugins/paste/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��3����[��T�|'),
('��<l�a��,�bX,��', 'wp-admin/images/xit-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��r�T��`��?J�/�'),
('�͋�$��ѳ�ҥh', 'wp-content/plugins/polylang/install/plugin-updater.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'bf��,u{I8)1���'),
('��ŷN	\0��f\ZT��', 'wp-content/plugins/wordfence/css/diff.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�"�����y1���4Z�'),
('��M�J��dB.���*', 'wp-content/plugins/wordfence/css/images/ui-icons_fff_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Aa+JD$�2��J��'),
('���S�`v߬^7@�', 'wp-content/plugins/duplicator/installer/build/assets/inc.js.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '������~u��>��'),
('�!@A�;1)SJ��b��', 'wp-content/plugins/wordfence/css/colorbox.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'jR ��S���7����M�'),
('�+q^e����gu�F6\n', 'wp-includes/theme-compat/embed.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'r�L��E�va3���6I'),
('�G���!#h�9	��&', 'wp-includes/js/tinymce/plugins/wordpress/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^~�Y;�����7I'),
('�Kj��h����', 'wp-content/plugins/wordfence/images/loading_background.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��''�2��p\nK�X��'),
('�fw@�����J��F��', 'wp-content/themes/twentysixteen/genericons/Genericons.eot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��S�ө\n�/;]s>'),
('��w�@��9J�\Z/G�', 'wp-content/plugins/polylang/lingotek/image03.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ȣ:��	H�`�Jh���'),
('��Ҧ���$2�b�L�$', 'wp-content/themes/twentyfourteen/sidebar.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ORn�]&d�������n'),
('���''�B���7S�', 'wp-includes/js/zxcvbn-async.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '������\0�V]u#3'),
('��{�	\n|p�٤', 'wp-includes/customize/class-wp-customize-nav-menu-item-setting.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����	����(y:��g�'),
('������)�(��<��', 'wp-includes/js/json2.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ʌ�B��\r��/��Ĵ�'),
('��a��''@T瑓����', 'wp-admin/images/date-button.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���.��I��V�ď�'),
('�sw�f�Pr��u�;', 'wp-content/themes/twentysixteen/index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��\n,�ʪ%��N�*'),
('�''T����́��Y�Ǚ', 'wp-includes/customize/class-wp-customize-cropped-image-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�[W''"�f��Iޙ��t'),
('�����)z]!?��a�', 'wp-admin/images/media-button-video.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '������r�x�4Q���'),
('�F�%��C��0����,', 'wp-admin/css/list-tables-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}f��(��6`�\r�'),
('�I"�p��t�Q��[Z6x', 'wp-includes/css/admin-bar.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��!��5�XWf(`81'),
('�c��wk�(���4�3�', 'wp-admin/includes/list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'aH"&�2�o8�-��'),
('�gV���HIw��!���', 'wp-includes/css/customize-preview.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\n�@;��{��_'),
('�Qֿ6��yq�88', 'wp-includes/theme-compat/footer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�	�yW+(�a�0�Ĕ'),
('�˨e]�!�-Q���I�F', 'wp-content/plugins/polylang/flags/gw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '5���!��_X�w�d�'),
('���w��''�6)', 'wp-includes/rss-functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'g�����l]�4j0l=�'),
('�����N��9�{�;', 'wp-includes/js/mediaelement/wp-mediaelement.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�zD�Q9�(q�9Qfy�'),
('�;`�$r���$���=', 'wp-content/plugins/wordfence/images/icons/warning128.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'p�G�I�t*����Np='),
('�E58��y���Ws�O��', 'wp-admin/css/admin-menu.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '������h�B�k=;W'),
('�L����e5x?e=�&', 'wp-includes/js/plupload/wp-plupload.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��S�y�,lf@�@'),
('����M~�^x��;��', 'wp-content/plugins/wordfence/lib/unknownFiles.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'A�{���U���z�[��'),
('��a5[4�5�Me�pC', 'wp-includes/js/jquery/ui/effect-bounce.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ؖ�0TQ�5����S'),
('���T����Ç=w���', 'wp-admin/js/bookmarklet.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���5�j����ŕ��C'),
('��S�CRC��l��', 'wp-admin/css/colors/sunrise/colors.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'V��\Z�z�	h���=�'),
('���k��i��.���\\��', 'wp-includes/images/smilies/icon_neutral.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '������	����Z�'),
('��t@�s����N', 'wp-content/plugins/polylang/flags/gu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-�|�6M$�[�?��');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wfHits`
--

CREATE TABLE IF NOT EXISTS `wp_wfHits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attackLogTime` double(17,6) unsigned NOT NULL,
  `ctime` double(17,6) unsigned NOT NULL,
  `IP` binary(16) DEFAULT NULL,
  `jsRun` tinyint(4) DEFAULT '0',
  `statusCode` int(11) NOT NULL DEFAULT '200',
  `isGoogle` tinyint(4) NOT NULL,
  `userID` int(10) unsigned NOT NULL,
  `newVisit` tinyint(3) unsigned NOT NULL,
  `URL` text,
  `referer` text,
  `UA` text,
  `action` varchar(64) NOT NULL DEFAULT '',
  `actionDescription` text,
  `actionData` text,
  PRIMARY KEY (`id`),
  KEY `k1` (`ctime`),
  KEY `k2` (`IP`,`ctime`),
  KEY `attackLogTime` (`attackLogTime`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Contenu de la table `wp_wfHits`
--

INSERT INTO `wp_wfHits` (`id`, `attackLogTime`, `ctime`, `IP`, `jsRun`, `statusCode`, `isGoogle`, `userID`, `newVisit`, `URL`, `referer`, `UA`, `action`, `actionDescription`, `actionData`) VALUES
(1, 0.000000, 1464679747.038346, '\0\0\0\0\0\0\0\0\0\0��\0\0', 0, 200, 0, 0, 0, 'http://', '', '', '', NULL, NULL),
(2, 0.000000, 1464679809.013020, '\0\0\0\0\0\0\0\0\0\0��\0\0', 0, 200, 0, 0, 0, 'http://', '', '', '', NULL, NULL),
(3, 0.000000, 1464680403.555034, '\0\0\0\0\0\0\0\0\0\0��\0\0', 0, 200, 0, 0, 0, 'http://', '', '', '', NULL, NULL),
(4, 0.000000, 1464686021.002597, '\0\0\0\0\0\0\0\0\0\0����8', 0, 200, 0, 1, 0, 'http://www.project.dev/wp-login.php?action=logout&_wpnonce=561dd0a109', 'http://www.project.dev/wp-admin/index.php', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56', 'logout', NULL, NULL),
(5, 0.000000, 1464686021.569678, '\0\0\0\0\0\0\0\0\0\0����8', 1, 200, 0, 0, 0, 'http://www.project.dev/wp-login.php?loggedout=true', 'http://www.project.dev/wp-admin/index.php', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56', '', NULL, NULL),
(6, 0.000000, 1464686031.839283, '\0\0\0\0\0\0\0\0\0\0����8', 1, 200, 0, 0, 0, 'http://www.project.dev/wp-login.php', 'http://www.project.dev/wp-login.php?loggedout=true', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56', '', NULL, NULL),
(7, 0.000000, 1464686039.145738, '\0\0\0\0\0\0\0\0\0\0����8', 1, 200, 0, 1, 0, 'http://www.project.dev/wp-login.php', 'http://www.project.dev/wp-login.php', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56', 'loginOK', NULL, NULL),
(8, 0.000000, 1464858846.828585, '\0\0\0\0\0\0\0\0\0\0����8', 1, 200, 0, 0, 0, 'http://www.project.dev/wp-login.php?interim-login=1', 'http://www.project.dev/wp-admin/index.php', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56', '', NULL, NULL),
(9, 0.000000, 1464858847.619116, '\0\0\0\0\0\0\0\0\0\0����8', 1, 200, 0, 0, 0, 'http://www.project.dev/wp-login.php?interim-login=1', 'http://www.project.dev/wp-admin/index.php', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56', '', NULL, NULL),
(10, 0.000000, 1464858852.038555, '\0\0\0\0\0\0\0\0\0\0����8', 1, 200, 0, 0, 0, 'http://www.project.dev/wp-login.php', 'http://www.project.dev/wp-login.php?interim-login=1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56', '', NULL, NULL),
(11, 0.000000, 1464858857.113224, '\0\0\0\0\0\0\0\0\0\0����8', 1, 200, 0, 0, 0, 'http://www.project.dev/wp-login.php', 'http://www.project.dev/wp-login.php', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56', '', NULL, NULL),
(12, 0.000000, 1464858863.289141, '\0\0\0\0\0\0\0\0\0\0����8', 1, 200, 0, 1, 0, 'http://www.project.dev/wp-login.php', 'http://www.project.dev/wp-login.php', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56', 'loginOK', NULL, NULL),
(13, 0.000000, 1464870420.415059, '\0\0\0\0\0\0\0\0\0\0����8', 1, 200, 0, 1, 0, 'http://www.project.dev/wp-login.php?action=logout&_wpnonce=8fc3279c45', 'http://www.project.dev/index.php/contactez-nous/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56', 'logout', NULL, NULL),
(14, 0.000000, 1464870421.152403, '\0\0\0\0\0\0\0\0\0\0����8', 1, 200, 0, 0, 0, 'http://www.project.dev/wp-login.php?loggedout=true', 'http://www.project.dev/index.php/contactez-nous/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56', '', NULL, NULL),
(15, 0.000000, 1464870425.290055, '\0\0\0\0\0\0\0\0\0\0����8', 1, 200, 0, 1, 0, 'http://www.project.dev/wp-login.php', 'http://www.project.dev/wp-login.php?loggedout=true', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56', 'loginOK', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `wp_wfHoover`
--

CREATE TABLE IF NOT EXISTS `wp_wfHoover` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner` text,
  `host` text,
  `path` text,
  `hostKey` binary(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `k2` (`hostKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wfIssues`
--

CREATE TABLE IF NOT EXISTS `wp_wfIssues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time` int(10) unsigned NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `severity` tinyint(3) unsigned NOT NULL,
  `ignoreP` char(32) NOT NULL,
  `ignoreC` char(32) NOT NULL,
  `shortMsg` varchar(255) NOT NULL,
  `longMsg` text,
  `data` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `wp_wfIssues`
--

INSERT INTO `wp_wfIssues` (`id`, `time`, `status`, `type`, `severity`, `ignoreP`, `ignoreC`, `shortMsg`, `longMsg`, `data`) VALUES
(3, 1464678765, 'new', 'file', 1, '06255e9ad1546259053361a4e10b3a07', 'cdc3e2d6d727caf8b41a422ed642ba5c', 'WordPress core file modified: wp-config-sample.php', 'This WordPress core file has been modified and differs from the original file distributed with this version of WordPress.', 'a:5:{s:4:"file";s:20:"wp-config-sample.php";s:5:"cType";s:4:"core";s:7:"canDiff";b:1;s:6:"canFix";b:1;s:9:"canDelete";b:0;}'),
(4, 1464678799, 'new', 'easyPassword', 2, 'c81e728d9d4c2f636f067f89cc14862c', 'e4c18b6d2fc67b9d22930a2fa4d23fcb', 'User "Abonne" with ''subscriber'' access has a very easy password.', 'A user with ''subscriber'' access has a password that is very easy to guess. Please either change it or ask the user to change their password.', 'a:6:{s:2:"ID";i:2;s:10:"user_login";s:6:"Abonne";s:10:"user_email";s:13:"abonne@me.com";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:12:"editUserLink";s:55:"http://www.project.dev/wp-admin/user-edit.php?user_id=2";}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wfLeechers`
--

CREATE TABLE IF NOT EXISTS `wp_wfLeechers` (
  `eMin` int(10) unsigned NOT NULL,
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `hits` int(10) unsigned NOT NULL,
  PRIMARY KEY (`eMin`,`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wfLockedOut`
--

CREATE TABLE IF NOT EXISTS `wp_wfLockedOut` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `blockedTime` bigint(20) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `lastAttempt` int(10) unsigned DEFAULT '0',
  `blockedHits` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wfLocs`
--

CREATE TABLE IF NOT EXISTS `wp_wfLocs` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `ctime` int(10) unsigned NOT NULL,
  `failed` tinyint(3) unsigned NOT NULL,
  `city` varchar(255) DEFAULT '',
  `region` varchar(255) DEFAULT '',
  `countryName` varchar(255) DEFAULT '',
  `countryCode` char(2) DEFAULT '',
  `lat` float(10,7) DEFAULT '0.0000000',
  `lon` float(10,7) DEFAULT '0.0000000',
  PRIMARY KEY (`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wfLogins`
--

CREATE TABLE IF NOT EXISTS `wp_wfLogins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hitID` int(11) DEFAULT NULL,
  `ctime` double(17,6) unsigned NOT NULL,
  `fail` tinyint(3) unsigned NOT NULL,
  `action` varchar(40) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userID` int(10) unsigned NOT NULL,
  `IP` binary(16) DEFAULT NULL,
  `UA` text,
  PRIMARY KEY (`id`),
  KEY `k1` (`IP`,`fail`),
  KEY `hitID` (`hitID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `wp_wfLogins`
--

INSERT INTO `wp_wfLogins` (`id`, `hitID`, `ctime`, `fail`, `action`, `username`, `userID`, `IP`, `UA`) VALUES
(1, 4, 1464686021.160100, 0, 'logout', 'fey89', 1, '\0\0\0\0\0\0\0\0\0\0����8', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56'),
(2, 7, 1464686039.306395, 0, 'loginOK', 'fey89', 1, '\0\0\0\0\0\0\0\0\0\0����8', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56'),
(3, 12, 1464858863.615042, 0, 'loginOK', 'fey89', 1, '\0\0\0\0\0\0\0\0\0\0����8', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56'),
(4, 13, 1464870420.600131, 0, 'logout', 'fey89', 1, '\0\0\0\0\0\0\0\0\0\0����8', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56'),
(5, 15, 1464870425.564942, 0, 'loginOK', 'fey89', 1, '\0\0\0\0\0\0\0\0\0\0����8', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wfNet404s`
--

CREATE TABLE IF NOT EXISTS `wp_wfNet404s` (
  `sig` binary(16) NOT NULL,
  `ctime` int(10) unsigned NOT NULL,
  `URI` varchar(1000) NOT NULL,
  PRIMARY KEY (`sig`),
  KEY `k1` (`ctime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wfReverseCache`
--

CREATE TABLE IF NOT EXISTS `wp_wfReverseCache` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `host` varchar(255) NOT NULL,
  `lastUpdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wfScanners`
--

CREATE TABLE IF NOT EXISTS `wp_wfScanners` (
  `eMin` int(10) unsigned NOT NULL,
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `hits` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`eMin`,`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wfStatus`
--

CREATE TABLE IF NOT EXISTS `wp_wfStatus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ctime` double(17,6) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `type` char(5) NOT NULL,
  `msg` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `k1` (`ctime`),
  KEY `k2` (`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=171 ;

--
-- Contenu de la table `wp_wfStatus`
--

INSERT INTO `wp_wfStatus` (`id`, `ctime`, `level`, `type`, `msg`) VALUES
(1, 1464611857.364722, 10, 'info', 'SUM_PREP:Preparing a new scan.'),
(2, 1464611857.376163, 10, 'info', 'SUM_PAIDONLY:Remote scan of public facing site only available to paid members'),
(3, 1464611859.378434, 10, 'info', 'SUM_PAIDONLY:Check if your site is being Spamvertized is for paid members only'),
(4, 1464611861.380626, 10, 'info', 'SUM_PAIDONLY:Checking if your IP is generating spam is for paid members only'),
(5, 1464611863.387212, 10, 'info', 'SUM_START:Scanning your site for the HeartBleed vulnerability'),
(6, 1464611864.444773, 10, 'info', 'SUM_ENDOK:Scanning your site for the HeartBleed vulnerability'),
(7, 1464611864.449566, 1, 'info', 'Contacting Wordfence to initiate scan'),
(8, 1464611866.379531, 2, 'info', 'Getting plugin list from WordPress'),
(9, 1464611866.391708, 2, 'info', 'Found 2 plugins'),
(10, 1464611866.395922, 2, 'info', 'Getting theme list from WordPress'),
(11, 1464611866.407163, 2, 'info', 'Found 3 themes'),
(12, 1464611866.417627, 10, 'info', 'SUM_START:Fetching core, theme and plugin file signatures from Wordfence'),
(13, 1464611868.073603, 10, 'info', 'SUM_ENDSUCCESS:Fetching core, theme and plugin file signatures from Wordfence'),
(14, 1464611868.080598, 10, 'info', 'SUM_START:Fetching list of known malware files from Wordfence'),
(15, 1464611870.015904, 10, 'info', 'SUM_ENDSUCCESS:Fetching list of known malware files from Wordfence'),
(16, 1464611870.023447, 10, 'info', 'SUM_START:Comparing core WordPress files against originals in repository'),
(17, 1464611870.024821, 10, 'info', 'SUM_DISABLED:Skipping theme scan'),
(18, 1464611870.026377, 10, 'info', 'SUM_DISABLED:Skipping plugin scan'),
(19, 1464611870.032468, 10, 'info', 'SUM_START:Scanning for known malware files'),
(20, 1464611871.059885, 2, 'info', 'Analyzed 100 files containing 1.25 MB of data so far'),
(21, 1464611872.229227, 2, 'info', 'Analyzed 200 files containing 2.32 MB of data so far'),
(22, 1464611873.488041, 2, 'info', 'Analyzed 300 files containing 3.99 MB of data so far'),
(23, 1464611874.876841, 2, 'info', 'Analyzed 400 files containing 5.42 MB of data so far'),
(24, 1464611877.158554, 2, 'info', 'Analyzed 500 files containing 6.35 MB of data so far'),
(25, 1464611878.517223, 2, 'info', 'Analyzed 600 files containing 7.76 MB of data so far'),
(26, 1464611879.600697, 2, 'info', 'Analyzed 700 files containing 7.81 MB of data so far'),
(27, 1464611880.869367, 2, 'info', 'Analyzed 800 files containing 7.95 MB of data so far'),
(28, 1464611887.099605, 2, 'info', 'Analyzed 900 files containing 9.27 MB of data so far'),
(29, 1464611888.360467, 2, 'info', 'Analyzed 1000 files containing 10.93 MB of data so far'),
(30, 1464611890.035497, 2, 'info', 'Analyzed 1100 files containing 12.39 MB of data so far'),
(31, 1464611892.946695, 2, 'info', 'Analyzed 1200 files containing 13.72 MB of data so far'),
(32, 1464611894.627121, 2, 'info', 'Analyzed 1300 files containing 16.67 MB of data so far'),
(33, 1464611895.819200, 2, 'info', 'Analyzed 1400 files containing 19.11 MB of data so far'),
(34, 1464611897.121262, 2, 'info', 'Analyzed 1500 files containing 20.71 MB of data so far'),
(35, 1464611898.569880, 2, 'info', 'Analyzed 1600 files containing 21.12 MB of data so far'),
(36, 1464611900.115476, 2, 'info', 'Analyzed 1700 files containing 22.7 MB of data so far'),
(37, 1464611904.759228, 2, 'info', 'Analyzed 1800 files containing 23.69 MB of data so far'),
(38, 1464611905.845939, 2, 'info', 'Analyzed 1900 files containing 26.5 MB of data so far'),
(39, 1464611906.355331, 2, 'info', 'Analyzed 1946 files containing 27.27 MB of data.'),
(40, 1464611906.357580, 10, 'info', 'SUM_ENDBAD:Comparing core WordPress files against originals in repository'),
(41, 1464611906.361144, 10, 'info', 'SUM_ENDOK:Scanning for known malware files'),
(42, 1464611906.389804, 10, 'info', 'SUM_START:Check for publicly accessible configuration files, backup files and logs'),
(43, 1464611906.397632, 10, 'info', 'SUM_ENDOK:Check for publicly accessible configuration files, backup files and logs'),
(44, 1464611906.404791, 10, 'info', 'SUM_START:Scanning file contents for infections and vulnerabilities'),
(45, 1464611906.409130, 10, 'info', 'SUM_START:Scanning files for URLs in Google''s Safe Browsing List'),
(46, 1464611907.411135, 2, 'info', 'Starting scan of file contents'),
(47, 1464611908.095586, 2, 'info', 'Scanned contents of 33 additional files at 48.32 per second'),
(48, 1464611908.096874, 2, 'info', 'Asking Wordfence to check URL''s against malware list.'),
(49, 1464611908.099883, 2, 'info', 'Checking 36 host keys against Wordfence scanning servers.'),
(50, 1464611909.033191, 2, 'info', 'Done host key check.'),
(51, 1464611909.036452, 2, 'info', 'Checking 3 URLs from 1 sources.'),
(52, 1464611909.959067, 2, 'info', 'Done URL check.'),
(53, 1464611909.967857, 2, 'info', 'Done file contents scan'),
(54, 1464611909.969563, 10, 'info', 'SUM_ENDOK:Scanning file contents for infections and vulnerabilities'),
(55, 1464611909.972755, 10, 'info', 'SUM_ENDOK:Scanning files for URLs in Google''s Safe Browsing List'),
(56, 1464611909.979717, 10, 'info', 'SUM_START:Scanning posts for URL''s in Google''s Safe Browsing List'),
(57, 1464611909.990219, 2, 'info', 'Examining URLs found in posts we scanned for dangerous websites'),
(58, 1464611909.992310, 2, 'info', 'Done examining URLs'),
(59, 1464611910.004962, 10, 'info', 'SUM_ENDOK:Scanning posts for URL''s in Google''s Safe Browsing List'),
(60, 1464611910.012104, 10, 'info', 'SUM_START:Scanning comments for URL''s in Google''s Safe Browsing List'),
(61, 1464611910.022618, 2, 'info', 'Checking 1 host keys against Wordfence scanning servers.'),
(62, 1464611912.095013, 2, 'info', 'Done host key check.'),
(63, 1464611912.103248, 10, 'info', 'SUM_ENDOK:Scanning comments for URL''s in Google''s Safe Browsing List'),
(64, 1464611912.109998, 10, 'info', 'SUM_START:Scanning for weak passwords'),
(65, 1464611912.111511, 2, 'info', 'Starting password strength check on 2 users.'),
(66, 1464611912.121515, 2, 'info', 'Adding issue User "Abonne" with ''subscriber'' access has a very easy password.'),
(67, 1464611912.622887, 10, 'info', 'SUM_ENDBAD:Scanning for weak passwords'),
(68, 1464611912.629003, 10, 'info', 'SUM_START:Scanning DNS for unauthorized changes'),
(69, 1464611912.630856, 2, 'info', 'Starting DNS scan for www.project.dev'),
(70, 1464611912.641629, 2, 'info', 'Scanning DNS A record for www.project.dev'),
(71, 1464611912.646541, 2, 'info', 'Scanning DNS MX record for www.project.dev'),
(72, 1464611912.651070, 10, 'info', 'SUM_ENDOK:Scanning DNS for unauthorized changes'),
(73, 1464611912.657556, 10, 'info', 'SUM_START:Scanning to check available disk space'),
(74, 1464611912.659536, 2, 'info', 'Total disk space: 930.3790GB -- Free disk space: 889.9874GB'),
(75, 1464611912.660857, 2, 'info', 'The disk has 911347.12 MB space available'),
(76, 1464611912.662514, 10, 'info', 'SUM_ENDOK:Scanning to check available disk space'),
(77, 1464611912.667320, 10, 'info', 'SUM_START:Scanning for old themes, plugins and core files'),
(78, 1464611913.622096, 10, 'info', 'SUM_ENDOK:Scanning for old themes, plugins and core files'),
(79, 1464611913.630376, 10, 'info', 'SUM_START:Scanning for admin users not created through WordPress'),
(80, 1464611913.642150, 10, 'info', 'SUM_ENDOK:Scanning for admin users not created through WordPress'),
(81, 1464611913.659411, 1, 'info', '-------------------'),
(82, 1464611913.661604, 1, 'info', 'Scan Complete. Scanned 1946 files, 2 plugins, 3 themes, 2 pages, 1 comments and 2342 records in 56 seconds.'),
(83, 1464611913.666682, 10, 'info', 'SUM_FINAL:Scan complete. You have 2 new issues to fix. See below.'),
(84, 1464611913.686825, 2, 'info', 'Wordfence used 37.96MB of memory for scan. Server peak memory usage was: 75.93MB'),
(85, 1464678743.150935, 1, 'info', 'Scheduled Wordfence scan starting at Tuesday 31st of May 2016 09:12:23 AM'),
(86, 1464678745.217519, 10, 'info', 'SUM_PREP:Preparing a new scan.'),
(87, 1464678745.227314, 10, 'info', 'SUM_PAIDONLY:Remote scan of public facing site only available to paid members'),
(88, 1464678747.229029, 10, 'info', 'SUM_PAIDONLY:Check if your site is being Spamvertized is for paid members only'),
(89, 1464678749.233725, 10, 'info', 'SUM_PAIDONLY:Checking if your IP is generating spam is for paid members only'),
(90, 1464678751.241998, 10, 'info', 'SUM_START:Scanning your site for the HeartBleed vulnerability'),
(91, 1464678752.796152, 10, 'info', 'SUM_ENDOK:Scanning your site for the HeartBleed vulnerability'),
(92, 1464678752.800612, 1, 'info', 'Contacting Wordfence to initiate scan'),
(93, 1464678753.895494, 2, 'info', 'Getting plugin list from WordPress'),
(94, 1464678753.943730, 2, 'info', 'Found 3 plugins'),
(95, 1464678753.948356, 2, 'info', 'Getting theme list from WordPress'),
(96, 1464678753.982542, 2, 'info', 'Found 3 themes'),
(97, 1464678753.993550, 10, 'info', 'SUM_START:Fetching core, theme and plugin file signatures from Wordfence'),
(98, 1464678755.861494, 10, 'info', 'SUM_ENDSUCCESS:Fetching core, theme and plugin file signatures from Wordfence'),
(99, 1464678755.868219, 10, 'info', 'SUM_START:Fetching list of known malware files from Wordfence'),
(100, 1464678759.143048, 10, 'info', 'SUM_ENDSUCCESS:Fetching list of known malware files from Wordfence'),
(101, 1464678759.149701, 10, 'info', 'SUM_START:Comparing core WordPress files against originals in repository'),
(102, 1464678759.150948, 10, 'info', 'SUM_DISABLED:Skipping theme scan'),
(103, 1464678759.152631, 10, 'info', 'SUM_DISABLED:Skipping plugin scan'),
(104, 1464678759.157585, 10, 'info', 'SUM_START:Scanning for known malware files'),
(105, 1464678760.032308, 2, 'info', 'Analyzed 100 files containing 1.25 MB of data so far'),
(106, 1464678760.910915, 2, 'info', 'Analyzed 200 files containing 2.32 MB of data so far'),
(107, 1464678761.900254, 2, 'info', 'Analyzed 300 files containing 3.99 MB of data so far'),
(108, 1464678762.933578, 2, 'info', 'Analyzed 400 files containing 5.42 MB of data so far'),
(109, 1464678765.842780, 2, 'info', 'Analyzed 500 files containing 6.35 MB of data so far'),
(110, 1464678767.157987, 2, 'info', 'Analyzed 600 files containing 9.62 MB of data so far'),
(111, 1464678768.289445, 2, 'info', 'Analyzed 700 files containing 10.17 MB of data so far'),
(112, 1464678771.896324, 2, 'info', 'Analyzed 800 files containing 10.22 MB of data so far'),
(113, 1464678772.674368, 2, 'info', 'Analyzed 900 files containing 10.27 MB of data so far'),
(114, 1464678773.745149, 2, 'info', 'Analyzed 1000 files containing 11.14 MB of data so far'),
(115, 1464678774.912388, 2, 'info', 'Analyzed 1100 files containing 12.07 MB of data so far'),
(116, 1464678776.041266, 2, 'info', 'Analyzed 1200 files containing 14.5 MB of data so far'),
(117, 1464678777.461187, 2, 'info', 'Analyzed 1300 files containing 16.05 MB of data so far'),
(118, 1464678778.931786, 2, 'info', 'Analyzed 1400 files containing 18.83 MB of data so far'),
(119, 1464678780.000324, 2, 'info', 'Analyzed 1500 files containing 20.95 MB of data so far'),
(120, 1464678781.050908, 2, 'info', 'Analyzed 1600 files containing 22.5 MB of data so far'),
(121, 1464678785.396462, 2, 'info', 'Analyzed 1700 files containing 23.38 MB of data so far'),
(122, 1464678789.614275, 2, 'info', 'Analyzed 1800 files containing 24.74 MB of data so far'),
(123, 1464678790.629907, 2, 'info', 'Analyzed 1900 files containing 26 MB of data so far'),
(124, 1464678791.655239, 2, 'info', 'Analyzed 2000 files containing 28.77 MB of data so far'),
(125, 1464678792.242788, 2, 'info', 'Analyzed 2064 files containing 29.69 MB of data.'),
(126, 1464678792.244303, 10, 'info', 'SUM_ENDBAD:Comparing core WordPress files against originals in repository'),
(127, 1464678792.248012, 10, 'info', 'SUM_ENDOK:Scanning for known malware files'),
(128, 1464678792.271980, 10, 'info', 'SUM_START:Check for publicly accessible configuration files, backup files and logs'),
(129, 1464678792.278292, 10, 'info', 'SUM_ENDOK:Check for publicly accessible configuration files, backup files and logs'),
(130, 1464678792.283240, 10, 'info', 'SUM_START:Scanning file contents for infections and vulnerabilities'),
(131, 1464678792.286522, 10, 'info', 'SUM_START:Scanning files for URLs in Google''s Safe Browsing List'),
(132, 1464678793.874412, 2, 'info', 'Starting scan of file contents'),
(133, 1464678794.473408, 2, 'info', 'Scanned contents of 32 additional files at 53.62 per second'),
(134, 1464678794.475020, 2, 'info', 'Asking Wordfence to check URL''s against malware list.'),
(135, 1464678794.478102, 2, 'info', 'Checking 36 host keys against Wordfence scanning servers.'),
(136, 1464678795.879492, 2, 'info', 'Done host key check.'),
(137, 1464678795.882041, 2, 'info', 'Checking 3 URLs from 1 sources.'),
(138, 1464678798.171706, 2, 'info', 'Done URL check.'),
(139, 1464678798.181387, 2, 'info', 'Done file contents scan'),
(140, 1464678798.183399, 10, 'info', 'SUM_ENDOK:Scanning file contents for infections and vulnerabilities'),
(141, 1464678798.187052, 10, 'info', 'SUM_ENDOK:Scanning files for URLs in Google''s Safe Browsing List'),
(142, 1464678798.193171, 10, 'info', 'SUM_START:Scanning posts for URL''s in Google''s Safe Browsing List'),
(143, 1464678798.200391, 2, 'info', 'Examining URLs found in posts we scanned for dangerous websites'),
(144, 1464678798.201686, 2, 'info', 'Done examining URLs'),
(145, 1464678798.209136, 10, 'info', 'SUM_ENDOK:Scanning posts for URL''s in Google''s Safe Browsing List'),
(146, 1464678798.215050, 10, 'info', 'SUM_START:Scanning comments for URL''s in Google''s Safe Browsing List'),
(147, 1464678798.224016, 2, 'info', 'Checking 1 host keys against Wordfence scanning servers.'),
(148, 1464678799.588319, 2, 'info', 'Done host key check.'),
(149, 1464678799.596329, 10, 'info', 'SUM_ENDOK:Scanning comments for URL''s in Google''s Safe Browsing List'),
(150, 1464678799.601363, 10, 'info', 'SUM_START:Scanning for weak passwords'),
(151, 1464678799.602716, 2, 'info', 'Starting password strength check on 2 users.'),
(152, 1464678799.614046, 2, 'info', 'Adding issue User "Abonne" with ''subscriber'' access has a very easy password.'),
(153, 1464678800.113202, 10, 'info', 'SUM_ENDBAD:Scanning for weak passwords'),
(154, 1464678800.120163, 10, 'info', 'SUM_START:Scanning DNS for unauthorized changes'),
(155, 1464678800.121726, 2, 'info', 'Starting DNS scan for www.project.dev'),
(156, 1464678800.214122, 2, 'info', 'Scanning DNS A record for www.project.dev'),
(157, 1464678800.296249, 2, 'info', 'Scanning DNS MX record for www.project.dev'),
(158, 1464678800.300523, 10, 'info', 'SUM_ENDOK:Scanning DNS for unauthorized changes'),
(159, 1464678800.305963, 10, 'info', 'SUM_START:Scanning to check available disk space'),
(160, 1464678800.307413, 2, 'info', 'Total disk space: 930.3790GB -- Free disk space: 889.7991GB'),
(161, 1464678800.308644, 2, 'info', 'The disk has 911154.29 MB space available'),
(162, 1464678800.310428, 10, 'info', 'SUM_ENDOK:Scanning to check available disk space'),
(163, 1464678800.316235, 10, 'info', 'SUM_START:Scanning for old themes, plugins and core files'),
(164, 1464678801.678763, 10, 'info', 'SUM_ENDOK:Scanning for old themes, plugins and core files'),
(165, 1464678801.685725, 10, 'info', 'SUM_START:Scanning for admin users not created through WordPress'),
(166, 1464678801.689228, 10, 'info', 'SUM_ENDOK:Scanning for admin users not created through WordPress'),
(167, 1464678801.700052, 1, 'info', '-------------------'),
(168, 1464678801.701624, 1, 'info', 'Scan Complete. Scanned 2064 files, 3 plugins, 3 themes, 2 pages, 1 comments and 2553 records in 56 seconds.'),
(169, 1464678801.702937, 10, 'info', 'SUM_FINAL:Scan complete. You have 2 new issues to fix. See below.'),
(170, 1464678801.713635, 2, 'info', 'Wordfence used 39.73MB of memory for scan. Server peak memory usage was: 78.93MB');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wfThrottleLog`
--

CREATE TABLE IF NOT EXISTS `wp_wfThrottleLog` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `startTime` int(10) unsigned NOT NULL,
  `endTime` int(10) unsigned NOT NULL,
  `timesThrottled` int(10) unsigned NOT NULL,
  `lastReason` varchar(255) NOT NULL,
  PRIMARY KEY (`IP`),
  KEY `k2` (`endTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wfVulnScanners`
--

CREATE TABLE IF NOT EXISTS `wp_wfVulnScanners` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `ctime` int(10) unsigned NOT NULL,
  `hits` int(10) unsigned NOT NULL,
  PRIMARY KEY (`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wr_contactform_fields`
--

CREATE TABLE IF NOT EXISTS `wp_wr_contactform_fields` (
  `field_id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `field_type` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_instructions` text COLLATE utf8mb4_unicode_ci,
  `field_position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_ordering` int(10) unsigned NOT NULL DEFAULT '0',
  `field_settings` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wr_contactform_form_pages`
--

CREATE TABLE IF NOT EXISTS `wp_wr_contactform_form_pages` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_id` int(11) NOT NULL,
  `page_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_template` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_container` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wr_contactform_submission_data`
--

CREATE TABLE IF NOT EXISTS `wp_wr_contactform_submission_data` (
  `submission_data_id` int(11) NOT NULL AUTO_INCREMENT,
  `submission_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `field_type` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submission_data_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`submission_data_id`),
  KEY `submission_data_id` (`submission_data_id`),
  KEY `submission_id` (`submission_id`),
  KEY `form_id` (`form_id`),
  KEY `field_id` (`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

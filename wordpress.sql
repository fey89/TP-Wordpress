-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- GÃ©nÃ©rÃ© le: Jeu 02 Juin 2016 Ã  14:14
-- Version du serveur: 5.5.37
-- Version de PHP: 5.4.4-14+deb7u10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de donnÃ©es: `wordpress`
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
(3, 'blogname', 'Cabinet BarthÃ©lÃ©my', 'yes'),
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
(266, '_transient_ecf_lite_whats_new', '<div style="" class="ecf-container-cnt">\n				<h3 class="customh3">Hurry up! Get Contact Form Pro with just $21</h3>\n				<div class="feature-section">\n				<div class="content-wrap"><p><img class="alignleft" src="http://cdn.ghozylab.netdna-cdn.com/images/feeds/limited-time-offer.png" alt="" width="150" height="150" /><em><strong>Hurry up!</strong></em> Get Contact Form Pro with just $21. This Special Offer available until <span class="mark_important">June 05, 2016</span> and will goes up to normal price $29.</p>\n<p>Just click button below to purchase :</p>\n<p>&nbsp;</p>\n<p><a class="ecf-button-blue" title="Click here to Order" href="https://secure.ghozylab.com/checkout/?edd_action=add_to_cart&amp;download_id=25435&amp;edd_options[price_id]=2&amp;discount=FORM-PROMO" target="_blank">GET IT NOW !</a>Â Â Â <a class="ecf-button-orange" title="Click here to Order" href="http://demo.ghozylab.com/plugins/easy-contact-form-plugin/" target="_blank">VIEW DEMO</a></p>\n</div>\n				</div>\n				<p class="date-news">Published on 2015-09-15</p>\n			</div><div style="" class="ecf-container-cnt">\n				<h3 class="customh3">Amazing Pro Version</h3>\n				<div class="feature-section">\n				<div class="content-wrap"><p><a href="http://demo.ghozylab.com/plugins/easy-contact-form-plugin/" target="_blank"><img class="alignnone" src="http://cdn.ghozylab.netdna-cdn.com/images/feeds/form_next_level_banner.png" alt="" width="877" height="264" /></a></p>\n</div>\n				</div>\n				<p class="date-news">Published on 2016-01-06</p>\n			</div><div style="" class="ecf-container-cnt">\n				<h3 class="customh3">Earn EXTRA MONEY!</h3>\n				<div class="feature-section">\n				<div class="content-wrap"><p><img class="alignleft size-full wp-image-47" src="http://cdn.ghozylab.netdna-cdn.com/images/feeds/earn-dollar.png" alt="earn-dollar" width="150" height="150" />The GhozyLab Partner Program is the perfect opportunity for existing customers to earn credit towards their account by simply referring friends, family or others to GhozyLab. This quickly adds up to hundreds or even thousands of dollars!</p>\n<p>Once you sign up to the GhozyLab Partner Program, you will receive a special username and password to login to the secure affiliate area of our Web site. This area will provide you with a custom referral link that you can provide to friends, family and Web site visitors.</p>\n<p>To get started, simply register for the partner program. You may choose to add a banner or button to your Web site that directs visitors to your custom affiliate link, or you may choose to spread the link to friends and family via email. Either way, every validated sale generated from your link will result in a payout directly to you. GhozyLab will of course completely manage the client â€“ all you have to do is send them to us!</p>\n<p>&nbsp;</p>\n<p><a class="ecf-button-blue" href="https://secure.ghozylab.com/affiliate-area/" target="_blank">JOIN GHOZYLAB AFFILIATE PROGRAM</a></p>\n</div>\n				</div>\n				<p class="date-news">Published on 2015-06-29</p>\n			</div><div style="" class="ecf-container-cnt">\n				<h3 class="customh3">New Addon Released ( Campaign Monitor )</h3>\n				<div class="feature-section">\n				<div class="content-wrap"><p><img class="alignleft size-full wp-image-71" src="http://cdn.ghozylab.netdna-cdn.com/images/feeds/campaignmonitor-addon.png" alt="campaignmonitor-addon" width="150" height="150" />The Campaign Monitor addon allows you to quickly create newsletter signup forms for your Campaign Monitor account using the power and flexibility that Easy Contact Form Lite provides :</p>\n<ul style="margin-left: 190px; list-style-type: circle;">\n<li>Unlimited signup forms</li>\n<li>Multiple Getresponse subscriptions per form</li>\n<li>Each form can subscribe users to a different list</li>\n<li>Sends Email, First Name, &amp; Last Name fields to your list</li>\n</ul>\n<p>This addon using API integration with mailing services so it will ensure all your client data will delivered faster and safer. Enjoy :)</p>\n</div>\n				</div>\n				<p class="date-news">Published on 2015-07-04</p>\n			</div><div style="" class="ecf-container-cnt">\n				<h3 class="customh3">New Addon Released ( Getresponse )</h3>\n				<div class="feature-section">\n				<div class="content-wrap"><p><img class="alignleft size-full wp-image-71" src="http://cdn.ghozylab.netdna-cdn.com/images/feeds/getresponse-addon.png" alt="getresponse-addon" width="150" height="150" />The Getresponse addon allows you to quickly create newsletter signup forms for your Getresponse account using the power and flexibility that Easy Contact Form Lite provides :</p>\n<ul style="margin-left: 190px; list-style-type: circle;">\n<li>Unlimited signup forms</li>\n<li>Multiple Getresponse subscriptions per form</li>\n<li>Each form can subscribe users to a different list</li>\n</ul>\n<p>This addon using API integration with mailing services so it will ensure all your client data will delivered faster and safer. Enjoy :)</p>\n</div>\n				</div>\n				<p class="date-news">Published on 2015-07-04</p>\n			</div><div style="" class="ecf-container-cnt">\n				<h3 class="customh3">New Addon Released ( Mad MiMi )</h3>\n				<div class="feature-section">\n				<div class="content-wrap"><p><img class="alignleft size-full wp-image-71" src="http://cdn.ghozylab.netdna-cdn.com/images/feeds/madmimi-addon.png" alt="madmimi-addon" width="150" height="150" />The Mad Mimi addon allows you to quickly create newsletter signup forms for your Mad Mimi account using the power and flexibility that Easy Contact Form Lite provides :</p>\n<ul style="margin-left: 190px; list-style-type: circle;">\n<li>Unlimited signup forms</li>\n<li>Multiple Mad Mimi subscriptions per form</li>\n<li>Each form can subscribe users to a different list</li>\n</ul>\n<p>This addon using API integration with mailing services so it will ensure all your client data will delivered faster and safer. Enjoy :)</p>\n</div>\n				</div>\n				<p class="date-news">Published on 2015-07-03</p>\n			</div><div style="" class="ecf-container-cnt">\n				<h3 class="customh3">New Addon Released ( Aweber )</h3>\n				<div class="feature-section">\n				<div class="content-wrap"><p><img class="alignleft size-full wp-image-71" src="http://cdn.ghozylab.netdna-cdn.com/images/feeds/aweber-addon1.png" alt="aweber-addon" width="150" height="150" />The AWeber addon allows you to quickly create newsletter signup forms for your AWeber account using the power and flexibility that Easy Contact Form Pro providesÂ :</p>\n<ul style="margin-left: 190px; list-style-type: circle;">\n<li>Unlimited signup forms</li>\n<li>Multiple AWeber subscriptions per form</li>\n<li>Add subscribers to Lists in AWeber</li>\n</ul>\n<p>This addon using API integration with mailing services so it will ensure all your client data will delivered faster and safer. Enjoy :)</p>\n</div>\n				</div>\n				<p class="date-news">Published on 2015-07-03</p>\n			</div><div style="" class="ecf-container-cnt">\n				<h3 class="customh3">New Addon Released ( MailChimp )</h3>\n				<div class="feature-section">\n				<div class="content-wrap"><p><em><img class="alignleft size-full wp-image-65" src="http://cdn.ghozylab.netdna-cdn.com/images/feeds/mailchimp-logo.png" alt="mailchimp-logo" width="150" height="150" /></em></p>\n<p>The MailChimp addon allows you to quickly create newsletter signup forms for your MailChimp account using the power and flexibility that Easy Contact Form Lite provides :</p>\n<ul style="margin-left: 190px; list-style-type: circle;">\n<li>Unlimited signup forms</li>\n<li>Multiple MailChimp subscriptions per form</li>\n<li>Enable/disable double opt-in per form</li>\n<li>Add subscribers to Lists in MailChimp</li>\n</ul>\n<p>This addon using API integration with mailing services so it will ensure all your client data will delivered faster and safer. Enjoy :)</p>\n</div>\n				</div>\n				<p class="date-news">Published on 2015-07-03</p>\n			</div><div style="" class="ecf-container-cnt">\n				<h3 class="customh3">New Addon Released ( Form Captcha )</h3>\n				<div class="feature-section">\n				<div class="content-wrap"><p><img class="alignleft size-full wp-image-59" src="http://cdn.ghozylab.netdna-cdn.com/images/feeds/no-spam-addon.png" alt="no-spam-addon" width="150" height="150" /><em>Form Captcha</em> is a addon that protects your form against bots by generating and grading tests that humans can pass but current computer programs cannot.</p>\n<p>The purpose of the <em>Form Captcha</em> addon is to block form submissions by spam-bots, which are automated scripts that post spam content everywhere they can.Â <em>Form Captcha</em> addon includes several options which allow you to add a challenge to virtually every form on the website.</p>\n<p>With this addon you can select the following Captcha type :</p>\n<ul style="margin-left: 30px; list-style-type: circle;">\n<li><em>New reCAPTCHA</em> : To use this type you need to register first <a href="https://www.google.com/recaptcha/admin" target="_blank">here</a></li>\n<li><em>Old reCAPTCHA</em> : To use this type you need to register first <a href="https://www.google.com/recaptcha/admin" target="_blank">here</a></li>\n<li><em>Simple CAPTCHA</em></li>\n</ul>\n<p><span style="text-decoration: underline;">This addon requires Contact Form Lite version <em>1.0.15</em> and above.</span></p>\n</div>\n				</div>\n				<p class="date-news">Published on 2015-07-01</p>\n			</div><style>.content-wrap img{ padding: 0 10px 10px 0; } .ecf-button-blue {\n  background: #3498db;\n  background-image: -webkit-linear-gradient(top, #3498db, #2b8ecc);\n  background-image: -moz-linear-gradient(top, #3498db, #2b8ecc);\n  background-image: -ms-linear-gradient(top, #3498db, #2b8ecc);\n  background-image: -o-linear-gradient(top, #3498db, #2b8ecc);\n  background-image: linear-gradient(to bottom, #3498db, #2b8ecc);\n  -webkit-border-radius: 2;\n  -moz-border-radius: 2;\n  border-radius: 2px;\n  font-family: Arial;\n  color: #ffffff;\n  font-size: 20px;\n  padding: 10px 20px 10px 20px;\n  text-decoration: none;\n}\n\n.ecf-button-blue:hover {\n  background: #3aa4e6;\n  background-image: -webkit-linear-gradient(top, #3aa4e6, #2c8ecf);\n  background-image: -moz-linear-gradient(top, #3aa4e6, #2c8ecf);\n  background-image: -ms-linear-gradient(top, #3aa4e6, #2c8ecf);\n  background-image: -o-linear-gradient(top, #3aa4e6, #2c8ecf);\n  background-image: linear-gradient(to bottom, #3aa4e6, #2c8ecf);\n  text-decoration: none;\n  color: #ffffff !important;\n}\n\n.ecf-button-red {\n    background: #F65751 linear-gradient(to bottom, #FF7373, #B43232) repeat scroll 0% 0%;\n    border-radius: 2px;\n    font-family: Arial;\n    color: #FFF;\n    font-size: 20px;\n    padding: 10px 20px;\n    text-decoration: none;\n}\n\n.ecf-button-red:hover {\n  background: #B43232;\n  background-image: -webkit-linear-gradient(top, #B43232, #FF7373);\n  background-image: -moz-linear-gradient(top, #B43232, #FF7373);\n  background-image: -ms-linear-gradient(top, #B43232, #FF7373);\n  background-image: -o-linear-gradient(top, #B43232, #FF7373);\n  background-image: linear-gradient(to bottom, #B43232, #FF7373);\n  text-decoration: none;\n  color: #ffffff !important;\n}\n\n.ecf-button-orange {\n  background: #e39332;\n  background-image: -webkit-linear-gradient(top, #e39332, #c9802c);\n  background-image: -moz-linear-gradient(top, #e39332, #c9802c);\n  background-image: -ms-linear-gradient(top, #e39332, #c9802c);\n  background-image: -o-linear-gradient(top, #e39332, #c9802c);\n  background-image: linear-gradient(to bottom, #e39332, #c9802c);\n  -webkit-border-radius: 2;\n  -moz-border-radius: 2;\n  border-radius: 2px;\n  font-family: Arial;\n  color: #ffffff;\n  font-size: 20px;\n  padding: 10px 20px 10px 20px;\n  text-decoration: none;\n  color: #ffffff !important;\n}\n\n.ecf-button-orange:hover {\n  background: #e69a43;\n  background-image: -webkit-linear-gradient(top, #e69a43, #db8b30);\n  background-image: -moz-linear-gradient(top, #e69a43, #db8b30);\n  background-image: -ms-linear-gradient(top, #e69a43, #db8b30);\n  background-image: -o-linear-gradient(top, #e69a43, #db8b30);\n  background-image: linear-gradient(to bottom, #e69a43, #db8b30);\n  text-decoration: none;\n}\n\n.ghozy-blink {\n    outline:none;\n    text-decoration: none;\n    -webkit-animation: blink .75s linear infinite;\n    -moz-animation: blink .75s linear infinite;\n    -ms-animation: blink .75s linear infinite;\n    -o-animation: blink .75s linear infinite;\n    animation: blink .75s linear infinite;\n}\n@-webkit-keyframes blink {\n    0% {\n        opacity: 1;\n    }\n    50% {\n        opacity: 1;\n    }\n    50.01% {\n        opacity: 0;\n    }\n    100% {\n\n        opacity: 0;\n    }\n}\n\n@-moz-keyframes blink {\n    0% {\n        opacity: 1;\n    }\n    50% {\n        opacity: 1;\n    }\n    50.01% {\n        opacity: 0;\n    }\n    100% {\n        opacity: 0;\n    }\n}\n@keyframes blink {\n    0% {\n        opacity: 1;\n    }\n    50% {\n        opacity: 1;\n    }\n    50.01% {\n        opacity: 0;\n    }\n    100% {\n        opacity: 0;\n    }\n}\n\n.ghozy-blink:hover {\n    -webkit-animation:none;\n    -moz-animation: none;\n    animation: none;\n}\n\n.date-news {font-size: 12px !important; font-style: italic; color: #969595 !important;margin-bottom: 30px;padding-bottom: 7px;border-bottom: 1px dashed #CCC;}\n\n.mark_important {padding:2px 9px 2px 9px;background-color: #E74C3C;margin-left:1px;color:#fff;font-size:14px !important;border-radius:9px;-moz-border-radius: 9px;-webkit-border-radius: 9px;}\n\n</style>', 'no'),
(272, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:64:"http://downloads.wordpress.org/release/fr_FR/wordpress-4.5.2.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:64:"http://downloads.wordpress.org/release/fr_FR/wordpress-4.5.2.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.5.2";s:7:"version";s:5:"4.5.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1464876764;s:15:"version_checked";s:5:"4.5.2";s:12:"translations";a:0:{}}', 'yes'),
(276, 'theme_mods_responsiveboat', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:13:"zerif_address";s:40:"6 Place Charles Hernu\n69100 Villeurbanne";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1464860312;s:4:"data";a:9:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:15:"sidebar-aboutus";a:0:{}s:20:"zerif-sidebar-footer";a:0:{}s:22:"zerif-sidebar-footer-2";N;s:22:"zerif-sidebar-footer-3";N;s:16:"sidebar-ourfocus";a:4:{i:0;s:17:"ctup-ads-widget-1";i:1;s:17:"ctup-ads-widget-2";i:2;s:17:"ctup-ads-widget-3";i:3;s:17:"ctup-ads-widget-4";}s:20:"sidebar-testimonials";a:3:{i:0;s:21:"zerif_testim-widget-1";i:1;s:21:"zerif_testim-widget-2";i:2;s:21:"zerif_testim-widget-3";}s:15:"sidebar-ourteam";a:4:{i:0;s:19:"zerif_team-widget-1";i:1;s:19:"zerif_team-widget-2";i:2;s:19:"zerif_team-widget-3";i:3;s:19:"zerif_team-widget-4";}}}}', 'yes'),
(277, 'widget_ctup-ads-widget', 'a:5:{i:1;a:4:{s:5:"title";s:15:"PARALLAX EFFECT";s:4:"text";s:163:"Create memorable pages with smooth parallax effects that everyone loves. Also, use our lightweight content slider offering you smooth and great-looking animations.";s:4:"link";s:1:"#";s:9:"image_uri";s:71:"http://www.project.dev/wp-content/themes/zerif-lite/images/parallax.png";}i:2;a:4:{s:5:"title";s:11:"WOOCOMMERCE";s:4:"text";s:166:"Build a front page for your WooCommerce store in a matter of minutes. The neat and clean presentation will help your sales and make your store accessible to everyone.";s:4:"link";s:1:"#";s:9:"image_uri";s:66:"http://www.project.dev/wp-content/themes/zerif-lite/images/woo.png";}i:3;a:4:{s:5:"title";s:21:"CUSTOM CONTENT BLOCKS";s:4:"text";s:164:"Showcase your team, products, clients, about info, testimonials, latest posts from the blog, contact form, additional calls to action. Everything translation ready.";s:4:"link";s:1:"#";s:9:"image_uri";s:66:"http://www.project.dev/wp-content/themes/zerif-lite/images/ccc.png";}i:4;a:4:{s:5:"title";s:24:"GO PRO FOR MORE FEATURES";s:4:"text";s:186:"Get new content blocks: pricing table, Google Maps, and more. Change the sections order, display each block exactly where you need it, customize the blocks with whatever colors you wish.";s:4:"link";s:1:"#";s:9:"image_uri";s:70:"http://www.project.dev/wp-content/themes/zerif-lite/images/ti-logo.png";}s:12:"_multiwidget";i:1;}', 'yes'),
(278, 'widget_zerif_testim-widget', 'a:4:{i:1;a:3:{s:5:"title";s:10:"Dana Lorem";s:4:"text";s:242:"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur nec sem vel sapien venenatis mattis non vitae augue. Nullam congue commodo lorem vitae facilisis. Suspendisse malesuada id turpis interdum dictum.";s:9:"image_uri";s:75:"http://www.project.dev/wp-content/themes/zerif-lite/images/testimonial1.jpg";}i:2;a:3:{s:5:"title";s:13:"Linda Guthrie";s:4:"text";s:242:"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur nec sem vel sapien venenatis mattis non vitae augue. Nullam congue commodo lorem vitae facilisis. Suspendisse malesuada id turpis interdum dictum.";s:9:"image_uri";s:75:"http://www.project.dev/wp-content/themes/zerif-lite/images/testimonial2.jpg";}i:3;a:3:{s:5:"title";s:13:"Cynthia Henry";s:4:"text";s:242:"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur nec sem vel sapien venenatis mattis non vitae augue. Nullam congue commodo lorem vitae facilisis. Suspendisse malesuada id turpis interdum dictum.";s:9:"image_uri";s:75:"http://www.project.dev/wp-content/themes/zerif-lite/images/testimonial3.jpg";}s:12:"_multiwidget";i:1;}', 'yes'),
(279, 'widget_zerif_clients-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(280, 'widget_zerif_team-widget', 'a:5:{i:1;a:9:{s:4:"name";s:14:"ASHLEY SIMMONS";s:8:"position";s:15:"Project Manager";s:11:"description";s:157:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc dapibus, eros at accumsan auctor, felis eros condimentum quam, non porttitor est urna vel neque";s:7:"fb_link";s:1:"#";s:7:"tw_link";s:1:"#";s:7:"bh_link";s:1:"#";s:7:"db_link";s:1:"#";s:7:"ln_link";s:1:"#";s:9:"image_uri";s:68:"http://www.project.dev/wp-content/themes/zerif-lite/images/team1.png";}i:2;a:9:{s:4:"name";s:13:"TIMOTHY SPRAY";s:8:"position";s:12:"Art Director";s:11:"description";s:157:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc dapibus, eros at accumsan auctor, felis eros condimentum quam, non porttitor est urna vel neque";s:7:"fb_link";s:1:"#";s:7:"tw_link";s:1:"#";s:7:"bh_link";s:1:"#";s:7:"db_link";s:1:"#";s:7:"ln_link";s:1:"#";s:9:"image_uri";s:68:"http://www.project.dev/wp-content/themes/zerif-lite/images/team2.png";}i:3;a:9:{s:4:"name";s:12:"TONYA GARCIA";s:8:"position";s:15:"Account Manager";s:11:"description";s:157:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc dapibus, eros at accumsan auctor, felis eros condimentum quam, non porttitor est urna vel neque";s:7:"fb_link";s:1:"#";s:7:"tw_link";s:1:"#";s:7:"bh_link";s:1:"#";s:7:"db_link";s:1:"#";s:7:"ln_link";s:1:"#";s:9:"image_uri";s:68:"http://www.project.dev/wp-content/themes/zerif-lite/images/team3.png";}i:4;a:9:{s:4:"name";s:10:"JASON LANE";s:8:"position";s:20:"Business Development";s:11:"description";s:157:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc dapibus, eros at accumsan auctor, felis eros condimentum quam, non porttitor est urna vel neque";s:7:"fb_link";s:1:"#";s:7:"tw_link";s:1:"#";s:7:"bh_link";s:1:"#";s:7:"db_link";s:1:"#";s:7:"ln_link";s:1:"#";s:9:"image_uri";s:68:"http://www.project.dev/wp-content/themes/zerif-lite/images/team4.png";}s:12:"_multiwidget";i:1;}', 'yes'),
(288, '_transient_timeout_feed_66a70e9599b658d5cc038e8074597e7c', '1464901788', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(289, '_transient_feed_66a70e9599b658d5cc038e8074597e7c', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"WordPress Francophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:27:"http://www.wordpress-fr.net";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:70:"La communautÃ© francophone autour du CMS WordPress et son Ã©cosystÃ¨me";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 01 Jun 2016 13:13:20 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"fr-FR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:27:"http://wordpress.org/?v=4.3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:31:"En route vers le nouveau site !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/jnTdGpX49Y0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:81:"http://www.wordpress-fr.net/2016/06/01/volontaires-chantiers-site-forum/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 01 Jun 2016 13:13:20 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.wordpress-fr.net/?p=7579";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:329:"Lors de lâ€™article du 23 mai, nous avons proposÃ© Ã  celles et ceux qui le souhaitaient de participer Ã  la refonte du site et du forum de wordpress-fr.net. Une quinzaine de volontaires ont rÃ©pondu Ã  notre appel, nous les en remercions ! Les participants ont reÃ§u les indications pour nous rejoindre sur le slack de [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Willy Bahuaud";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1637:"<p>Lors de lâ€™article du 23 mai, nous avons proposÃ© Ã  celles et ceux qui le souhaitaient de participer Ã  la refonte du site et du forum de wordpress-fr.net. Une quinzaine de volontaires ont rÃ©pondu Ã  notre appel, nous les en remercions !</p>\n<p>Les participants ont reÃ§u les indications pour nous rejoindre sur le slack de lâ€™association et deux groupes de travail ont donc Ã©tÃ© constituÃ©s : un pour le forum, et lâ€™autre pour le site web.</p>\n<p>Lâ€™objectif est maintenant de mener Ã  bien la rÃ©alisation de ces deux projets. Nous vous donnerons des nouvelles de leurs progressions vers fin juin.</p>\n<p>Ã€ trÃ¨s bientÃ´t alors !</p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=jnTdGpX49Y0:EzCr7RZps1k:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=jnTdGpX49Y0:EzCr7RZps1k:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=jnTdGpX49Y0:EzCr7RZps1k:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=jnTdGpX49Y0:EzCr7RZps1k:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=jnTdGpX49Y0:EzCr7RZps1k:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=jnTdGpX49Y0:EzCr7RZps1k:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/jnTdGpX49Y0" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:77:"http://www.wordpress-fr.net/2016/06/01/volontaires-chantiers-site-forum/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:72:"http://www.wordpress-fr.net/2016/06/01/volontaires-chantiers-site-forum/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Des nouvelles de WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/83d0IWEmxkM/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:70:"http://www.wordpress-fr.net/2016/05/23/des-nouvelles-de-wpfr/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 May 2016 10:43:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.wordpress-fr.net/?p=7561";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:375:"Le 21 dÃ©cembre dernier nous avions le plaisir de vous faire partager des informations Ã  propos du renouveau de l&#8217;association WordPress Francophone. Ces derniers mois ont Ã©tÃ© l&#8217;occasion de tout remettre Ã  plat et nous souhaitions vous donner des nouvelles sur les diffÃ©rents chantiers en cours. C&#8217;est Ã©galement le moment de faire appel Ã  la [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"AurÃ©lien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:6880:"<p>Le 21 dÃ©cembre dernier nous avions le plaisir de vous faire partager des informations Ã  propos du renouveau de l&rsquo;association WordPress Francophone. Ces derniers mois ont Ã©tÃ© l&rsquo;occasion de tout remettre Ã  plat et nous souhaitions vous donner des nouvelles sur les diffÃ©rents chantiers en cours. C&rsquo;est Ã©galement le moment de faire appel Ã  la communautÃ© pour constituer des groupes de travail sur les deux chantiers prioritaires : la refonte du site et l&rsquo;avenir du forum.</p>\n<p><span id="more-7561"></span></p>\n<h2>Refonte du site</h2>\n<p>Comme vous le savez tous, le site actuel de l&rsquo;association est dÃ©passÃ©,Â tant en terme d&rsquo;aspect, qu&rsquo;en terme de fonctionnalitÃ©s. Au fil du temps le site est devenu compliquÃ© Ã  maintenir &#8211; pour ne pas dire impossible, et les fonctionnalitÃ©s qu&rsquo;ils proposent ne rÃ©pondent plus aux besoins rÃ©els de la communautÃ©. Il Ã©tait donc plus que temps d&rsquo;entamer la refonte !</p>\n<p>Nous avons d&rsquo;ores et dÃ©jÃ  dÃ©finis les objectifs du futur site, dÃ©veloppÃ© de nouvelles fonctionnalitÃ©s, et Ã©bauchÃ©Â l&rsquo;arborescence.</p>\n<p>Le site enÂ cours de dÃ©veloppement :</p>\n<ul>\n<li>Permettra aux membres de gÃ©rer leurs adhÃ©sions en ligne ;</li>\n<li>Proposera un annuaire des communautÃ©s et des Ã©vÃ©nements ;</li>\n<li>Donnera la possibilitÃ© de poster / rÃ©pondre Ã  des offres d&#8217;emploi ;</li>\n<li>Indiquera de maniÃ¨re claire comment trouver de l&rsquo;aide et commentÂ contribuer Ã  l&rsquo;Ã©cosystÃ¨me WordPress.</li>\n</ul>\n<p>Le site va aussi changer de nom et d&rsquo;URL afin de respecter <a href="https://wordpress.org/about/domains/" target="_blank">les rÃ¨gles de la fondation WordPress concernant la trademark</a>. Vous nous retrouverez bientÃ´t sur <a href="http://wpfr.net" target="_blank">wpfr.net</a> !</p>\n<p>Le chantier est maintenant assez avancÃ©Â pour proposer Ã  ceux qui le souhaitent de s&rsquo;investir au sein d&rsquo;un groupe de travail dont l&rsquo;objectif est la finalisationÂ de ce nouveau site. Nous cherchons des volontaires :</p>\n<ul>\n<li>3 personnes pour la rÃ©daction des contenus du futur site (les contenus existants sont dÃ©jÃ  rÃ©importÃ©s sur le site de dÃ©veloppement) ;</li>\n<li>2 web-designersÂ pour intervenir sur la charte graphique de l&rsquo;association, et sur la maquette du site.</li>\n</ul>\n<p>Si vous Ãªtes tentÃ©s par l&rsquo;aventure, <strong>Ã©crivez-nous Ã  contact[at]wpfr.net</strong>.</p>\n<h2>L&rsquo;avenir du forum</h2>\n<p>Le forum d&rsquo;entraide est la section du site destinÃ©e Ã  l&rsquo;accompagnement des utilisateurs francophone du CMS. Si vousÂ rencontrez un soucis dans l&rsquo;utilisation de WordPress, c&rsquo;est un des endroits ou vous trouverez le plus facilement de l&rsquo;aide. Les modÃ©rateurs bÃ©nÃ©voles y font d&rsquo;ailleurs un travail formidable qu&rsquo;il convient de remercier !</p>\n<p>Malheureusement, l&rsquo;outil qui fait tourner ce forum est lui aussi vieillissant &#8211; il s&rsquo;agit de PunBB.Â Lors de la refonte <strong>nous devons basculer vers une solution plus moderne</strong>. Le forum existant sera mis en Â« lecture seule Â» afin de toujours pouvoir relire les anciens sujets, mais vous ne pourrez plus dÃ©poser, ni rÃ©pondre aux sujets existants.</p>\n<p>Pour le choix, la mise en place et le suivi de cette nouvelle solution, nous souhaitons Ã©galementÂ constituer un groupe de travail. <strong>Nous invitons celles et ceux qui souhaitent s&rsquo;investir sur la refonte duÂ forum d&rsquo;entraide Ã  nous Ã©crire sur contact[at]wpfr.net</strong>.</p>\n<p>Concernant le dÃ©bat sur les diffÃ©rents outils disponibles Ã  ce jour pour obtenir du support (forum, Facebook, Twitter, Slack, etc.), nous considÃ©rons qu&rsquo;il n&rsquo;a pas lieu d&rsquo;Ãªtre. C&rsquo;est Ã  chacun d&rsquo;opter pour l&rsquo;outil qui lui convient le mieux avec ses avantages et ses inconvÃ©nients.</p>\n<h2>Changement de trÃ©sorier</h2>\n<p>Ã‰milie Lebrun a rÃ©cemment souhaitÃ© dÃ©missionner du bureau de l&rsquo;association ; c&rsquo;est donc Willy Bahuaud qui a pris la place de trÃ©sorier. Le bureau est donc maintenant constituÃ© de BenoÃ®t Catherineau (secrÃ©taire), Willy Bahuaud (trÃ©sorier) et AurÃ©lien Denis (prÃ©sident).</p>\n<p>Les objectifs de cette Ã©quipe reste inchangÃ©s <strong>: mettre en place les outils permettantÂ Ã  tous ceux qui le souhaitent, particuliers et entreprises, d&rsquo;adhÃ©rer Ã  l&rsquo;association</strong>.</p>\n<p>Nous sommes dans une annÃ©e de transition tant sur le plan administratif que technique, cela prend du temps mais nous y travaillons.</p>\n<h2>Coup d&rsquo;Å“il sur leÂ planning</h2>\n<p>Au niveau de la progressionÂ desÂ diffÃ©rentes actions, il est important de bien comprendre l&rsquo;imbrication des actions Ã  mener :</p>\n<ul>\n<li>Les changements de statuts et de siÃ¨ge social sont quasiment finalisÃ©s, nous attendons la validation officielle de la prÃ©fecture ;</li>\n<li>Le transfert du compte bancaire sera effectif sous peu, cela dÃ©pendait des statuts ;</li>\n<li>Le nom de domaine et surtout l&rsquo;activation du certificat SSL dÃ©pendent de l&rsquo;officialisation du nouveau siÃ¨ge ;</li>\n<li>L&rsquo;ouverture de l&rsquo;association Ã  tous dÃ©pend de la mise en ligne d&rsquo;un systÃ¨me pour gÃ©rer de maniÃ¨re efficace les adhÃ©sions / renouvellements d&rsquo;oÃ¹ la mise en place du groupe de travail pour le site Internet ;</li>\n</ul>\n<p>La <strong>date limite pour postuler est fixÃ©e au 31 mai 2016</strong>. Un chef de chantier sera choisi pour tenir informÃ© le bureau des Ã©volutions menÃ©es et ainsi communiquer de l&rsquo;Ã©tat d&rsquo;avancement par l&rsquo;intermÃ©diaire de ce blog.</p>\n<p>Nous sommes Ã  votre disposition pour rÃ©pondre Ã  toutes vos interrogations et nous comptons sur vous pour que demain WPFR soit votre association aux services de chacun d&rsquo;entre vous !</p>\n<p>&nbsp;</p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=83d0IWEmxkM:sWCGB30URXc:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=83d0IWEmxkM:sWCGB30URXc:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=83d0IWEmxkM:sWCGB30URXc:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=83d0IWEmxkM:sWCGB30URXc:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=83d0IWEmxkM:sWCGB30URXc:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=83d0IWEmxkM:sWCGB30URXc:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/83d0IWEmxkM" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:66:"http://www.wordpress-fr.net/2016/05/23/des-nouvelles-de-wpfr/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"28";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:61:"http://www.wordpress-fr.net/2016/05/23/des-nouvelles-de-wpfr/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:8:"WPFR 2.0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/jHn6JESKG5o/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:57:"http://www.wordpress-fr.net/2015/12/21/wpfr-2-0/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 21 Dec 2015 11:00:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.wordpress-fr.net/?p=7516";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:422:"Une nouvelle Ã¨re sâ€™ouvre pour lâ€™association WordPress Francophone. Un nouveau bureau est en place avec Ã  sa tÃªte : Ã‰milie Lebrun (trÃ©soriÃ¨re), BenoÃ®t Catherineau (secrÃ©taire) et moi-mÃªme, AurÃ©lien Denis (prÃ©sident). Cette nouvelle aventure sera marquÃ©e par la &#171;&#160;professionnalisation&#160;&#187; de la communautÃ© Ã  tous les niveaux : refonte du site communautaire, mise Ã  jour du site [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"AurÃ©lien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:7431:"<div class="page" title="Page 1">\n<div class="section">\n<div class="layoutArea">\n<div class="column">\n<p>Une nouvelle Ã¨re sâ€™ouvre pour lâ€™association WordPress Francophone. Un nouveau bureau est en place avec Ã  sa tÃªte : Ã‰milie Lebrun (trÃ©soriÃ¨re), BenoÃ®t Catherineau (secrÃ©taire) et moi-mÃªme, AurÃ©lien Denis (prÃ©sident).</p>\n<p>Cette nouvelle aventure sera marquÃ©e par la &laquo;&nbsp;professionnalisation&nbsp;&raquo; de la communautÃ© Ã  tous les niveaux : refonte du site communautaire, mise Ã  jour du site localisÃ© de WordPress.org, rÃ©flexion sur la crÃ©ation de certifications et autres formations diplÃ´mantes, ouverture de lâ€™association aux membres&#8230; sont autant de chantiers que nous avons dâ€™ores et dÃ©jÃ  lancÃ©s en interne.</p>\n<p>Nous avons fait le choix dâ€™adopter une approche par projets qui devront Ãªtre menÃ©s de front pour donner un nouveau visage Ã  la communautÃ© francophone dans les 6 prochains mois. La masse de travail est consÃ©quente, nous en avons conscience et câ€™est pour cela que toutes les bonnes volontÃ©s seront les bienvenues pour nous Ã©pauler dans cette mission. Soyez acteur de votre communautÃ© !</p>\n<p>Comment agir ? Cette question revient souvent lors des nombreux Ã©changes que chacun dâ€™entre nous peuvent avoir, aussi bien de maniÃ¨re virtuelle que rÃ©elle. Il me semble opportun de dÃ©cliner les diffÃ©rents chantiers afin que chacun puisse se positionner sur lâ€™un dâ€™eux.</p>\n<h2>La refonte du site WPFR</h2>\n<p>Disons le clairement : les attentes sont fortes, trÃ¨s fortes ! Contenus dÃ©passÃ©s, forum obsolÃ¨te, absence de services communautaires&#8230; Parmi les changements Ã  venir, nous pouvons retenir :</p>\n<ul>\n<li>Changement du nom de domaine pour se mettre en conformitÃ© avec les rÃ¨gles Ã©tablies par Automattic ;</li>\n<li>Changement de serveur pour de meilleures performances ;</li>\n<li>Bascule progressive du blog, de la vitrine et du forum vers le site fr.wordpress.org ;</li>\n<li>CrÃ©ation dâ€™une nouvelle charte graphique ;</li>\n<li>Refonte technique (responsive design, prise en charge des Ã©crans HDPI, etc.) ;</li>\n<li>Remise Ã  plat fonctionnelle pour rÃ©pondre Ã  la rÃ©alitÃ© des besoins de la communautÃ© ;</li>\n<li>Nouvelle stratÃ©gie de rÃ©fÃ©rencement ;</li>\n</ul>\n<p>Lâ€™objectif majeur de cette nouvelle version est le suivant : faire en sorte que chaque membre de la communautÃ© puisse accÃ©der Ã  des services qui le concerne : utilisateurs occasionnels ou passionnÃ©s, contributeurs actifs ou en quÃªte de contribution, dÃ©veloppeurs de thÃ¨mes ou d&rsquo;extensions WordPress, animateurs dâ€™associations locales&#8230; ce site sera le vÃ´tre !</p>\n<h2>La mise Ã  jour du site localisÃ© fr.wordpress.org</h2>\n<p>Il sâ€™agit du site officiel sur lequel vous tÃ©lÃ©chargez lâ€™archive WordPress avec ses packs de traduction franÃ§aise. Pour les connaisseurs, on parle du site Â« Rosetta Â» qui fait rÃ©fÃ©rence au nom du thÃ¨me installÃ© sur ce dernier.</p>\n<p>WPFR a en charge la gestion de ce site et dispose dâ€™une certaine latitude dans lâ€™activation de nouvelles fonctionnalitÃ©s. Vous aurez sans doute remarquÃ© lâ€™apparition des rubriques ThÃ¨mes et Extensions ou encore de contenus rÃ©Ã©crits sur les diffÃ©rentes pages de prÃ©sentation.</p>\n<p>Ce travail est en cours de rÃ©alisation par lâ€™Ã©quipe de traducteurs bÃ©nÃ©voles que sont FranÃ§ois-Xavier BÃ©nard, Xavier Borderie et Didier Demory.</p>\n</div>\n</div>\n</div>\n</div>\n<div class="page" title="Page 2">\n<div class="section">\n<div class="layoutArea">\n<div class="column">\n<p>A terme, le blog WPFR rejoindra ce site pour vous tenir informÃ© sur les actualitÃ©s en lien avec WordPress. De mÃªme, il est envisagÃ© de migrer le forum sur cet outil pour se positionner au mÃªme niveau que le site WordPress.org dans sa version anglophone. Il sera donc possible dâ€™utiliser votre compte WordPress.org sur les 2 sites. Câ€™est lÃ  un chantier immense pour lequel il nous faut prendre des dÃ©cisions qui auront un impact fort tant pour lâ€™utilisateur que pour les administrateurs.</p>\n<h2>La dÃ©livrance de certifications / formations diplÃ´mantes</h2>\n<p>Un vaste sujet auquel la communautÃ© francophone de WordPress peut rÃ©pondre. A lâ€™instar de ce que propose dÃ©jÃ  dâ€™autres communautÃ©s (SEO Camp) ou des acteurs majeurs du Web (Google, Microsoft, etc.), nous pensons quâ€™il nous faut dÃ©livrer des certifications pour les professionnels WordPress.</p>\n<p>Le but est lÃ  encore de professionnaliser les acteurs du Web en France afin de permettre une identification simple et efficace des entreprises compÃ©tentes sur le marchÃ© par les clients. Câ€™est une demande rÃ©currente de par le monde Ã  laquelle Automattic ne peut rÃ©pondre : le projet WordPress nâ€™appartient pas Ã  cette multinationale, elle ne fait que le soutenir et nâ€™est donc pas lÃ©gitime pour Ã©tablir des certifications comme pourrait le faire Google pour ses services.</p>\n<p>En outre, comme le savent les formateurs WordPress, les rÃ©formes successives sur la formation professionnelle nÃ©cessitent quâ€™une formation dÃ©livre un diplÃ´me. Maxime Bernard-Jacquet est volontaire pour porter les dÃ©marches et des synergies avec <a href="http://www.wp-next.fr/" target="_blank">lâ€™association WP-Next</a> sont Ã  Ã©laborer.</p>\n<h2>Lâ€™ouverture des adhÃ©sions</h2>\n<p>Jusquâ€™Ã  aujourdâ€™hui lâ€™association WPFR Ã©tait fermÃ©e et non ouverte aux adhÃ©sions. Certains dâ€™entre vous ont rempli un formulaire lors des WordCamps Paris et Lyon cette annÃ©e. Rassurez-vous nous les avons bien conservÃ©s et vous serez contactÃ©s en prioritÃ© pour adhÃ©rer en ligne dÃ¨s lors que le nouveau site sera disponible. Si vous ne l&rsquo;avez pas encore fait, contactez-nous via notre formulaire de contact.</p>\n<p>Ouvrir une association nÃ©cessite de savoir oÃ¹ lâ€™on va tous ensemble, de proposer des services&#8230; autant dâ€™aspects qui restent encore Ã  dÃ©finir prÃ©cisÃ©ment.</p>\n<p>Vous lâ€™aurez compris, les 6 prochains mois seront dÃ©cisifs ! Vous avez dÃ©sormais la parole dans les commentaires pour nous faire part de vos remarques, vous positionner sur un chantier pour nous aider ou suggÃ©rer de nouvelles idÃ©es.</p>\n<p>Enfin, je terminerai par remercier chaleureusement tous ceux qui ont portÃ© l&rsquo;association WPFR durant plus d&rsquo;une dÃ©cennie. Ils se reconnaÃ®tront sans doute : merci !</p>\n<p>Amicalement,<br />\nLe PrÃ©sident.</p>\n</div>\n</div>\n</div>\n</div>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=jHn6JESKG5o:rN9c88LUGi4:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=jHn6JESKG5o:rN9c88LUGi4:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=jHn6JESKG5o:rN9c88LUGi4:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=jHn6JESKG5o:rN9c88LUGi4:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=jHn6JESKG5o:rN9c88LUGi4:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=jHn6JESKG5o:rN9c88LUGi4:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/jHn6JESKG5o" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:53:"http://www.wordpress-fr.net/2015/12/21/wpfr-2-0/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"55";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:48:"http://www.wordpress-fr.net/2015/12/21/wpfr-2-0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:40:"Sortie de WordPress 4.4 Â«Â CliffordÂ Â»";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/tgW8c7dvWys/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:81:"http://www.wordpress-fr.net/2015/12/09/sortie-de-wordpress-4-4-clifford/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 09 Dec 2015 19:22:21 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.wordpress-fr.net/?p=7508";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:401:"La version 4.4 de WordPress, baptisÃ©eÂ â€œCliffordâ€ en honneur au trompettiste de jazz Clifford Brown, est disponible en tÃ©lÃ©chargement ou en mise Ã  jour via votre tableau de bord WordPress. Les nouvelles fonctionnalitÃ©s de la 4.4 vous donnentÂ un site plus connectÃ© et au design adaptatif. Clifford introduit Ã©galement un nouveau thÃ¨me par dÃ©faut :Â Twenty Sixteen. PrÃ©sentation [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Xavier";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:6445:"<p>La version 4.4 de WordPress, baptisÃ©eÂ â€œCliffordâ€ en honneur au trompettiste de jazz Clifford Brown, est disponible en tÃ©lÃ©chargement ou en mise Ã  jour via votre tableau de bord WordPress.</p>\n<p>Les nouvelles fonctionnalitÃ©s de la 4.4 vous donnentÂ un site plus connectÃ© et au design adaptatif. Clifford introduit Ã©galement un nouveau thÃ¨me par dÃ©faut :Â Twenty Sixteen.</p>\n<p><iframe src="https://videopress.com/embed/J44FHXvg?hd=0" width="632" height="354.35838150289015" frameborder="0" allowfullscreen="allowfullscreen"></iframe></p>\n<hr />\n<h2>PrÃ©sentation deÂ Â Twenty Sixteen</h2>\n<p><img class="aligncenter size-large wp-image-7512" src="http://www.wordpress-fr.net/wp-content/uploads/2015/12/ipad-white-desktop-2x-1024x6941-500x339.png" alt="ipad-white-desktop-2x-1024x694" width="500" height="339" /></p>\n<p>Le nouveau thÃ¨me par dÃ©faut, Twenty Sixteen, est une modernisation dâ€™un thÃ¨me de blog classique.</p>\n<p>Twenty Sixteen a Ã©tÃ© conÃ§u pour Ãªtre superbe sur tous les appareils. Avec son design en grille fluide, son en-tÃªte flexible et ses jeux de couleurs joyeux, elle mettre en valeur votre contenu.</p>\n<hr />\n<h2>Images adaptatives</h2>\n<p><img class="aligncenter size-large wp-image-7511" src="http://www.wordpress-fr.net/wp-content/uploads/2015/12/responsive-devices-ipad-2x-500x229.png" alt="responsive-devices-ipad-2x" width="500" height="229" /></p>\n<p>WordPress approche dÃ©sormais lâ€™affichage des images de maniÃ¨res plus intelligente, utilisant Ã  chaque fois la taille dâ€™image la plus pertinente en fonction de lâ€™appareil utilisÃ©. Vous nâ€™avez rien a changer Ã  votre thÃ¨meÂ : Ã§a fonctionne, câ€™est tout.</p>\n<hr />\n<h2>IntÃ©grez votre contenu WordPress</h2>\n<div class="embed-container">\n<p>https://make.wordpress.org/core/2015/10/28/new-embeds-feature-in-wordpress-4-4/</p>\n<p>Vous pouvez dÃ©sormais insÃ©rer vos articles dans dâ€™autres sites, et mÃªme dans dâ€™autres sites WordPress. Collez simplement lâ€™adresse du contenu dans lâ€™Ã©diteur, et une prÃ©visualisation sâ€™affichera instantanÃ©ment, avec titre, extrait, et lâ€™image de Une si vous avez mise une. Vous y trouverez mÃªme lâ€™icÃ´ne de votre site et les liens pour commenter et partager.</p>\n</div>\n<p>En plus de lâ€™insertion de contenu, WordPress 4.4 apporte la reconnaissance de cinq nouveaux fournisseurs oEmbedÂ : Cloudup, RedditÂ Comments, ReverbNation, SpeakerÂ Deck et VideoPress.</p>\n<hr />\n<h2>Sous le capot</h2>\n<p><img class="aligncenter size-large wp-image-7513" src="http://www.wordpress-fr.net/wp-content/uploads/2015/12/banner-1544x500-500x162.jpg" alt="banner-1544x500" width="500" height="162" /></p>\n<h3>Infrastructure de lâ€™API REST</h3>\n<p>Lâ€™infrastructure de lâ€™API REST a Ã©tÃ© intÃ©grÃ©e au coeur de WordPress, ouvrant ainsi une nouvelle Ã¨re pour le dÃ©veloppement avec le logiciel. Lâ€™API REST a Ã©tÃ© conÃ§ue pour offrir aux dÃ©veloppeurs une maniÃ¨re central de construire et Ã©tendre des API RESTful basÃ©es sur le socle WordPress.</p>\n<p>Lâ€™infrastructure est la premiÃ¨re partie dâ€™une mise en place en plusieurs Ã©tapes de lâ€™API REST. Lâ€™inclusion des points dâ€™accÃ¨s est prÃ©vue pour une prochaine version. Pour avoir un aperÃ§u des principaux points dâ€™accÃ¨s, et pour obtenir plus dâ€™information sur la maniÃ¨re dâ€™Ã©tendre lâ€™API REST, dÃ©couvrez lâ€™extension officielle <a class="thickbox" href="http://xavier.borderie.net/blog/wp-admin/plugin-install.php?tab=plugin-information&amp;plugin=rest-api&amp;TB_iframe=1&amp;width=600&amp;height=550">WordPress REST API</a>.</p>\n<h3>MÃ©ta des termes</h3>\n<p>Les termes disposent dÃ©sormais de mÃ©tadonnÃ©es, tout comme les articles. Lisez la documentation de <a href="https://developer.wordpress.org/reference/functions/add_term_meta"><code>add_term_meta()</code></a>,<a href="https://developer.wordpress.org/reference/functions/get_term_meta"><code>get_term_meta()</code></a> et <a href="https://developer.wordpress.org/reference/functions/update_term_meta"><code>update_term_meta()</code></a>pour plus d&rsquo;information.</p>\n<h3>AmÃ©lioration des requÃªtes de commentaires</h3>\n<p>Les requÃªtes de commentaires disposent dÃ©sormais dâ€™un gestionnaire de cache pour amÃ©liorer les performances. Les nouveaux arguments de <code>WP_Comment_Query</code> simplifient la mise en place de requÃªtes de commentaires robustes.</p>\n<div class="feature-section under-the-hood three-col">\n<div class="col">\n<h3>Objets pour les termes, commentaires et rÃ©seaux</h3>\n<p>Les nouveaux objets <code>WP_Term</code>, <code>WP_Comment</code>et <code>WP_Network</code> rendent la gestion par le code des termes, commentaires et rÃ©seaux plus prÃ©visible et intuitive.</p>\n<h2>L&rsquo;Ã©quipe</h2>\n<p><a class="alignleft" href="https://profiles.wordpress.org/wonderboymusic"><img id="grav-ed0f881acb9dc96bee53e4dc61b5558f-0" class="grav-hashed" src="https://www.gravatar.com/avatar/ed0f881acb9dc96bee53e4dc61b5558f?d=mm&amp;s=180&amp;r=G" alt="Scott Taylor" width="80" height="80" /></a>Cette version a Ã©tÃ© menÃ©e parÂ <a href="http://scotty-t.com/">Scott Taylor</a>, avec l&rsquo;aide de plus deÂ 471 contributeurs &#8212; le plus grand nombre jamais vu pour une nouvelle version de WordPress. Parmi eux, on trouve quelques franÃ§ais : Mathieu Viet, Julio Potier, Nicolas Juen, et tous les traducteurs qui ont donnÃ© de leur temps pour s&rsquo;assurer que cette version serait traduite dans les temps. Merci Ã  tous !</p>\n</div>\n</div>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=tgW8c7dvWys:O5SMFkejhIY:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=tgW8c7dvWys:O5SMFkejhIY:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=tgW8c7dvWys:O5SMFkejhIY:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=tgW8c7dvWys:O5SMFkejhIY:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=tgW8c7dvWys:O5SMFkejhIY:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=tgW8c7dvWys:O5SMFkejhIY:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/tgW8c7dvWys" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:77:"http://www.wordpress-fr.net/2015/12/09/sortie-de-wordpress-4-4-clifford/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:72:"http://www.wordpress-fr.net/2015/12/09/sortie-de-wordpress-4-4-clifford/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"WordPress fait tourner 25% du web";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/WIL51xhSWSw/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:81:"http://www.wordpress-fr.net/2015/11/09/wordpress-fait-tourner-25-du-web/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 09 Nov 2015 12:15:20 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.wordpress-fr.net/?p=7491";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:341:"Le nombre tant attendu a Ã©tÃ© atteint ce week-end : selon le site W3Techs, qui prÃ©sente de nombreuses statistiques et Ã©tudes chiffrÃ©es sur les technologies du web, WordPress est aujourd&#8217;hui utilisÃ© par 25% des sites web &#8212; et pas seulement 1/4 des sites qui ont utilisent un outil de gestion de contenu (CMS), non : [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Xavier";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:5162:"<p>Le nombre tant attendu a Ã©tÃ© atteint ce week-end : selon le site <a href="http://w3techs.com/">W3Techs</a>, qui prÃ©sente de nombreuses statistiques et Ã©tudes chiffrÃ©es sur les technologies du web, <a href="http://w3techs.com/technologies/history_overview/content_management/all/y">WordPress est aujourd&rsquo;hui utilisÃ© par 25% des sites web</a> &#8212; et pas seulement 1/4 des sites qui ont utilisent un outil de gestion de contenu (CMS), non : 25% de TOUS les sites actuellement en ligne.</p>\n<p><img class="aligncenter wp-image-7492 size-full" src="http://www.wordpress-fr.net/wp-content/uploads/2015/11/wordpress-25pourcent-w3techs-tableau1.png" alt="wordpress-25pourcent-w3techs-tableau1" width="521" height="188" />Le site indique par ailleurs que WordPress a 58,7% de part de marchÃ© parmi les sites qui utilisent un CMS, avec l&rsquo;ajout de plus de 1100 sites par jour (dans le top 10 millions des sites).</p>\n<p><img class="aligncenter wp-image-7493 size-full" src="http://www.wordpress-fr.net/wp-content/uploads/2015/11/wordpress-25pourcent-w3techs-tableau2.png" alt="wordpress-25pourcent-w3techs-tableau2" width="509" height="146" /></p>\n<p>C&rsquo;est colossal, et c&rsquo;est le rÃ©sultat de plusieurs annÃ©es d&rsquo;amÃ©lioration d&rsquo;un projet qui, <a href="http://ma.tt/2015/11/seventy-five-to-go/">comme le rappelle Matt Mullenweg</a>, a commencÃ© <a href="http://zengun.org/weblog/archives/2001/06/post1958/">en juin 2001</a>Â sous le nom de <a href="http://cafelog.com/">b2/cafelog</a>, dans la chambre du franÃ§ais Michel Valdrighi, alors Ã©tudiant sur sa Corse natale (voir <a href="https://wordpress.tv/2012/02/27/les-origines-de-wordpress-la-naissance-de-b2cafelog/">sa confÃ©rence sur le sujet au WordCamp Paris 2011</a>).</p>\n<p><img class="aligncenter wp-image-7495 size-full" src="http://www.wordpress-fr.net/wp-content/uploads/2015/11/wordpress-25pourcent-w3techs-graphique1.png" alt="wordpress-25pourcent-w3techs-graphique1" width="765" height="506" /></p>\n<p>Ce qui a commencÃ© comme un script blog personnel utilisÃ© par quelques 3000 personnes au faÃ®te de sa popularitÃ©, est aujourd&rsquo;hui l&rsquo;outil choisi par la grande majoritÃ© des individus et sociÃ©tÃ©s quand il s&rsquo;agit de mettre leurs idÃ©es et contenus en ligne.</p>\n<p><img class="aligncenter wp-image-7494 size-full" src="http://www.wordpress-fr.net/wp-content/uploads/2015/11/wordpress-25pourcent-w3techs-tableau4.png" alt="wordpress-25pourcent-w3techs-tableau4" width="534" height="228" /></p>\n<p>Matt reprend ensuite : &laquo;&nbsp;Il reste une grosse opportunitÃ© Ã  saisir avec les 57% de sites qui n&rsquo;utilisent aucun CMS&nbsp;&raquo;, ou en tout cas aucun d&rsquo;identifiable &#8212; qui pourraient tout aussi bien Ãªtre des WordPress ou Drupal dont le propriÃ©taire a choisi de cacher son outil. &laquo;&nbsp;Je pense que c&rsquo;est lÃ  oÃ¹ nous pouvons avoir une Ã©norme croissance (et je soutiens Ã©galement tous les autres CMS open-source).&nbsp;&raquo;</p>\n<p><img class="aligncenter size-full wp-image-7496" src="http://www.wordpress-fr.net/wp-content/uploads/2015/11/wordpress-25pourcent-w3techs-tableau3.png" alt="wordpress-25pourcent-w3techs-tableau3" width="469" height="321" /></p>\n<p>Ã€ suivre Ã©galement, <a href="http://trends.builtwith.com/cms/WordPress">les statistiques proposÃ©es par Builtwith</a>.</p>\n<p>Ce 25% est un beau nouveau chiffre Ã  ajouter Ã  notre communautÃ© en 2015, avec les 20 ans de PHP&#8230; et les 10 ans de l&rsquo;association WordPress-Francophone (dont vous aurez bientÃ´t des nouvelles, promis !).</p>\n<p>Merci Ã  toutes la communautÃ© de dÃ©veloppeurs, de traducteurs, de crÃ©ateurs d&rsquo;extensions et de thÃ¨mes, d&rsquo;accompagnateurs sur les forums, et tant d&rsquo;autres !</p>\n<p>Rendez-vous aux prochains Ã©vÃ¨nements WordPress franÃ§ais afin de fÃªter cela dignement, Ã  commencer par le <a href="http://2015.wptech.fr/">WP Tech</a> Ã  Nantes le 5 dÃ©cembre, et le <a href="https://paris.wordcamp.org/2016/">WordCamp Paris</a> les 5 et 6 fÃ©vrier 2016, ainsi que tous les autres Ã©vÃ¨nements locaux, petits et grands, organisÃ©s par les membres de la grande famille WordPress !</p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=WIL51xhSWSw:f1vr0WZxhp4:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=WIL51xhSWSw:f1vr0WZxhp4:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=WIL51xhSWSw:f1vr0WZxhp4:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=WIL51xhSWSw:f1vr0WZxhp4:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=WIL51xhSWSw:f1vr0WZxhp4:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=WIL51xhSWSw:f1vr0WZxhp4:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/WIL51xhSWSw" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:77:"http://www.wordpress-fr.net/2015/11/09/wordpress-fait-tourner-25-du-web/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:72:"http://www.wordpress-fr.net/2015/11/09/wordpress-fait-tourner-25-du-web/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:54:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"Lâ€™Hebdo WordPress nÂ°263 du 10e anniversaire";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/ayO_P6QzZyY/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:90:"http://www.wordpress-fr.net/2015/08/28/lhebdo-wordpress-n263-du-10e-anniversaire/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 28 Aug 2015 18:15:50 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:5:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:21:"WordPress Francophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:12:"anniversaire";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:5:"Hebdo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.wordpress-fr.net/?p=7471";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:348:"WPFR a 10 ans ! Il Ã©tait une fois WordPress Francophone&#8230; Cette histoire a commencÃ© il y a 10 ans par la volontÃ© de quelques utilisateurs qui voulaient avoir un espace d&#8217;Ã©change en franÃ§ais pour ne plus se faire rejeter des forums officiels allergiques aux non anglophones. Et un nouveau site wordpress-fr.net Ã©tait nÃ© ! [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"BenoÃ®t";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:12074:"<h3>WPFR a 10 ans !</h3>\n<p>Il Ã©tait une fois WordPress Francophone&#8230; <a href="http://www.wordpress-fr.net/2005/08/24/le-depart/">Cette histoire a commencÃ© il y a 10 ans</a> par la volontÃ© de quelques utilisateurs qui voulaient avoir un espace d&rsquo;Ã©change en franÃ§ais pour ne plus se faire rejeter des forums officiels allergiques aux non anglophones. <a href="http://www.wordpress-fr.net/2005/08/25/wordpress-frnet/">Et un nouveau site wordpress-fr.net Ã©tait nÃ© </a>!</p>\n<p>10 ans dÃ©jÃ  de support en franÃ§ais avec <a href="http://www.wordpress-fr.net/support/">un forum</a> qui est aujourd&rsquo;hui la pierre angulaire de notre communautÃ©. Il reprÃ©sente 7 6741 inscrits pour prÃ¨s de 110 000 discussions ouvertes reprÃ©sentant 560 000 messages.</p>\n<p>WordPress Francophone et son site portail wordpress-fr.net c&rsquo;est aujourd&rsquo;hui une moyenne de prÃ¨s de 200 000 visites par mois pour environ 400 000 pages vues mensuelles.</p>\n<p>WPFR c&rsquo;est aussi une prÃ©sence sur <a href="https://twitter.com/wordpress_fr">Facebook</a>,<a href="https://twitter.com/wordpress_fr"> sur Twitter</a> et sur <a href="https://plus.google.com/u/0/b/112387028272126355329/112387028272126355329">Google+.</a></p>\n<p>Comme vous l&rsquo;aurez constatÃ©, notre site en gÃ©nÃ©ral et le forum en particulier sont vieillissants&#8230; cela fait des annÃ©es qu&rsquo;une refonte est prÃ©vue. L&rsquo;Ã©volution de notre association en cours nous donne de bons espoirs pour cette fin d&rsquo;annÃ©e et le dÃ©but de la suivante. Des annonces officielles vont suivre. Restez connectÃ©s !</p>\n<p>Des projets dans les cartons depuis longtemps devraient pouvoir se concrÃ©tiser enfin dans les mois Ã  venir.</p>\n<p>Merci Ã  toutes et tous pour votre fidÃ©litÃ©, votre soutien, vos encouragements ou mÃªme parfois vos remarques et critiques&#8230; Rien n&rsquo;est vain et WPFR avance, doucement mais surement et cela grÃ¢ce Ã  vous tous, grÃ¢ce Ã  la communautÃ© !</p>\n<p><strong>Joyeux anniversaire WPFR</strong> ! 10 ans, c&rsquo;est dÃ©jÃ  presque l&rsquo;adolescence ! Longue vie !</p>\n<hr />\n<p>&nbsp;</p>\n<p><span style="text-decoration: underline;"><strong>Place Ã  l&rsquo;hebdo WordPress nÂ°263 :</strong></span></p>\n<h3>La roadmap pour WordPress 4.4</h3>\n<p>Le chantier se poursuit, pas de repos. <a href="https://make.wordpress.org/core/2015/08/27/taxonomy-roadmap-for-4-4-and-beyond/">Voici la feuille de route pour 4.4</a>. (en) &#8230; et on vous demande mÃªme votre avis sur <a href="https://make.wordpress.org/core/2015/08/19/wordpress-4-4-whats-on-your-wishlist/">ce que vous voulez voir arriver dans cette future version</a>. (en)</p>\n<h3>Le sondage WordPress 2015</h3>\n<p>Le sondage annuel de WordPress pour recueillir votre avis sur vos habitudes avec WordPress est disponible. <a href="http://wp-survey.polldaddy.com/s/wp-2015">N&rsquo;hÃ©sitez pas Ã  le remplir</a>. (en)</p>\n<h3>2016, le prochain thÃ¨me par dÃ©faut</h3>\n<p><a href="https://make.wordpress.org/core/2015/08/25/introducing-twenty-sixteen/">2016 est d&rsquo;ores et dÃ©jÃ  mis en chantier</a>. (en)</p>\n<h3>BuddyPress 2.3.3</h3>\n<p>BuddyPress arrive dans sa <a href="https://buddypress.org/2015/08/buddypress-2-3-3/">version 2.3.3</a>. (en)</p>\n<h3>Les mots de passe sous WordPress 4.3</h3>\n<p>La derniÃ¨re version en date de WordPress introduit <a href="https://make.wordpress.org/core/2015/07/28/passwords-strong-by-default/">une nouvelle gestion des mots de passe</a> (en).</p>\n<h3>Les nouveautÃ©s de WordPress 4.3</h3>\n<p>Si vous n&rsquo;Ãªtes pas encore <a href="http://wptavern.com/wordpress-4-3-billie-named-after-jazz-singer-billie-holiday-is-available-for-download">passÃ©s (en) </a>Ã  <a href="https://poststatus.com/wordpress-4-3-billie-released/">WordPress 4.3 (en)</a>, <a href="http://www.lumieredelune.com/encrelune/nouveautes-wordpress-4-3,2015,08">voici ce que vous ratez</a> &#8230; quelques <a href="http://wptavern.com/text-patterns-and-the-quick-link-toolbar-in-wordpress-4-3">autres explications</a> (en) ! Mais attention&#8230; <a href="http://www.layerswp.com/2015/08/are-you-ready-for-wordpress-4-3/">soyez sÃ»rs d&rsquo;Ãªtre prÃªts (en) </a>! Certains <a href="http://www.lumieredelune.com/encrelune/avertissement-widget-obsolete,2015,08">Widgets peuvent Ãªtre obsolÃ¨tes</a> notamment.</p>\n<h3>La check list essentielle pour la mise en place dâ€™un site sous WordPress</h3>\n<p><a href="http://www.vingthuitzerotrois.fr/wordpress/la-check-list-essentielle-pour-la-mise-en-place-dun-site-sous-wordpress-15947/">LA checklist pour le moment fatidique (en) </a>oÃ¹ l&rsquo;on doit mettre en place un site sous WordPress. Pour ne rien oublier !</p>\n<h3>Le BuddyCamp Brighton de iMath</h3>\n<p>Notre iMath national a participÃ© au BuddyCamp de Brighton, <a href="http://imathi.eu/2015/08/10/buddycamp-brighton/">voici son compte rendu</a>.</p>\n<h3>Automattic recrute</h3>\n<p>Automattic <a href="http://ma.tt/2015/08/automattic-is-hiring-2/">recrute diffÃ©rents profils</a>. (en)</p>\n<h3>DÃ©sactiver les notifications de YOAST SEO</h3>\n<p>Les notifications intempestives de cette extension pour dÃ©rangent ? <a href="http://wpchannel.com/desactiver-notifications-yoast-seo/">voici la solution</a>.</p>\n<h3>Un nouvel Ã©vÃ©nement dÃ©diÃ© Ã  REST API</h3>\n<p><a href="http://feelingrestful.com/">A day of Rest est le prochain Ã©vÃ©nement (en) </a>dÃ©diÃ© Ã  cette API de WordPress.</p>\n<h3>Inclure l&rsquo;extension REST API dans les thÃ¨mes du rÃ©pertoire officiel ?</h3>\n<p>L&rsquo;Ã©quipe en charge des thÃ¨mes du rÃ©pertoire officiel ont votÃ© l&rsquo;autorisation d&rsquo;<a href="http://wptavern.com/wordpress-theme-review-team-votes-to-allow-themes-to-use-the-rest-api-plugin">inclure l&rsquo;extension REST API (en)</a> dans les thÃ¨mes du rÃ©pertoire officiel.</p>\n<h3>Faciliter les invitations Slack</h3>\n<p>Slack est en constante augmentation de popularitÃ©. <a href="http://wptavern.com/new-wordpress-plugin-automates-slack-team-invitations">Voici une extension pour simplifier les invitations</a>. (en)</p>\n<h3>WordPress, on a un problÃ¨me !</h3>\n<p>Ici ce n&rsquo;est pas Houston, mais quand on a un problÃ¨me avec WordPress que fait-on ? <a href="http://wpformation.com/wordpress-probleme/">Voici des conseils par WPFormation</a>.</p>\n<h3>Les nouveautÃ©s de WooCommerce 2.4</h3>\n<p><a href="http://www.absoluteweb.net/woocommerce-2-4-nouveautes/">DÃ©couvrez les nouveautÃ©s de WooCommerce 2.4 (en).</a></p>\n<h3>Interview de Sara Rosso</h3>\n<p>Sara Rosso de chez Automattic <a href="http://mymorningroutine.com/sara-rosso/">est interviewÃ©e par mymorningroutine.com</a>. Interview forcÃ©ment dÃ©calÃ©e. â˜•</p>\n<h3>Vous n&rsquo;aimez pas les emojis ?</h3>\n<p><a href="http://www.hongkiat.com/blog/disable-wordpress-emoticons/">DÃ©sactivez-les !</a> (en)</p>\n<h3>Interview de Miriam Schwab de Illuminea.com</h3>\n<p>Retour d&rsquo;expÃ©rience de <a href="http://wptavern.com/wpweekly-episode-205-interview-with-miriam-schwab">Miriam Schwab</a>. (en)</p>\n<h3>WooCommerce : Synchroniser adresses de livraison et de facturation</h3>\n<p>Absolute Web explique <a href="http://www.absoluteweb.net/woocommerce-synchroniser-pays-livraison-facturation/">comment synchroniser les adresses de facturation et de livraison </a>dans WooCommerce.</p>\n<h3>Comment optimiser WordPress ?</h3>\n<p>Korben donne des <a href="http://korben.info/comment-optimiser-un-vieux-wordpress-obese.html">conseils pour allÃ©ger et optimiser </a>un vieux WordPress obÃ¨se !</p>\n<h3>Quel futur pour WordPress ?</h3>\n<p>Quelques hypothÃ¨ses pour <a href="http://torquemag.io/where-do-you-see-the-future-of-wordpress/">l&rsquo;avenir de WordPress</a> (en).</p>\n<h3>Ajouter un portfolio</h3>\n<p>Comment ajouter un portflolio dans WordPress ? <a href="http://www.wpbeginner.com/plugins/how-to-add-a-portfolio-to-your-wordpress-site/">Suivez le guide</a>. (en)</p>\n<h3>Retours d&rsquo;expÃ©rience</h3>\n<p><a href="http://www.wpelevation.com/2015/08/starting-a-wordpress-consulting-business/">Troy Dean raconte son expÃ©rience</a> (en) en tant que consultant WordPress depuis 8 ans. Et Becky Davis nous <a href="http://heropress.com/essays/doing-what-i-want/">raconte son parcours</a>. (en)</p>\n<h3>Interview de Nikolay Bachiyski, chez de la sÃ©curitÃ© de WordPress.org</h3>\n<p><a href="http://wptavern.com/short-interview-with-nikolay-bachiyski-wordpress-security-czar">Nikolay est chef de la sÃ©curitÃ©</a> de WorPress.org (en).</p>\n<h3>Comment installer une extension ?</h3>\n<p>Il est parfois intÃ©ressant de revenir aux bases, c&rsquo;est pourquoi cet article devrait intÃ©ressant les <a href="http://yesweblog.fr/wordpress/comment-installer-extension-plugin-wordpress/">dÃ©butants qui souhaitent installer des extensions</a>.</p>\n<h3>PrÃ©sentation de Elegant Themes</h3>\n<p>WP Marmite nous fait dÃ©couvrir <a href="http://wpmarmite.com/elegant-themes/">Elegant Themes</a>.</p>\n<h3>La hiÃ©rarchie des templates</h3>\n<p>La hiÃ©rarchie des templates est trÃ¨s importantes dans WordPress. <a href="http://wphierarchy.com/">Voici comment s&rsquo;en imprÃ©gner</a>. (en)</p>\n<h3>API personnalisÃ© pour base de donnÃ©es</h3>\n<p>Voici le premier numÃ©ro d&rsquo;<a href="https://pippinsplugins.com/custom-database-api-reasons-for-custom-tables-and-an-api/">un tuto sur la gestion des bases de donnÃ©es</a>.</p>\n<h3>Un glossaire pour dÃ©butants</h3>\n<p>WordPress vous parle en chinois, et ce malgrÃ© la langue sÃ©lectionnÃ©e avec soin ? Alors <a href="http://www.wpexplorer.com/wordpress-glossary-beginners/">ce guide peut Ãªtre pour vous</a> ! (en)</p>\n<h3>Un guide pour crÃ©er son site e-commerce</h3>\n<p>Si vous voulez quelques idÃ©es pour crÃ©er votre site e-commerce avec WordPress, <a href="https://selfstartr.com/wordpress-ecommerce/">ce guide pourra vous donner des pistes</a>. (en)</p>\n<h3>25 raisons de passer Ã  WordPress</h3>\n<p>Nelio donne <a href="http://neliosoftware.com/25-reasons-to-switch-to-wordpress/">25 raisons de migrer vers WordPress</a>. (en)</p>\n<h3>Au revoir ThÃ¨mes de France</h3>\n<p>ThÃ¨mes de France, la plateforme de thÃ¨mes WordPress lancÃ©es par Alex Bortolotti vient de <a href="https://www.themesdefrance.fr/">fermer dÃ©finitivement ses portes</a>. Alex nous <a href="http://alexbortolotti.com/pourquoi-arret-themes-de-france/">explique les raisons</a>.</p>\n<h3>Ajouter un retour en haut</h3>\n<p>Thierry propose un bouton pour revenir en <a href="https://gist.github.com/thierrypigot/46a1f71af58c2c83a9a7">haut de page dans Genesis</a>.</p>\n<h3>Il Ã©tait une fois Automattic&#8230;</h3>\n<p>Automattic c&rsquo;est quoi ? <a href="http://www.elegantthemes.com/blog/editorial/a-history-of-automattics-acquisitions-from-gravatar-to-woothemes">voici une partie de la rÃ©ponse</a>. (en)</p>\n<h3>Afficher le profil Facebook dans WordPress</h3>\n<p>Si vous souhaitez <a href="http://www.hongkiat.com/blog/facebook-author-tag-wordpress/">afficher le profil Facebook</a> de vos auteurs par exemple, voici comment faire.</p>\n<h3>Top 99 des influenceurs WordPress</h3>\n<p>Les <a href="http://99robots.com/top-99-wordpress-influencers-2015/">99 personnes</a> qui font WordPress ! (en)</p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ayO_P6QzZyY:xNb17R3nBDQ:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ayO_P6QzZyY:xNb17R3nBDQ:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=ayO_P6QzZyY:xNb17R3nBDQ:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ayO_P6QzZyY:xNb17R3nBDQ:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ayO_P6QzZyY:xNb17R3nBDQ:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=ayO_P6QzZyY:xNb17R3nBDQ:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/ayO_P6QzZyY" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:86:"http://www.wordpress-fr.net/2015/08/28/lhebdo-wordpress-n263-du-10e-anniversaire/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"8";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:81:"http://www.wordpress-fr.net/2015/08/28/lhebdo-wordpress-n263-du-10e-anniversaire/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n\n\n\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:8:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:37:"Sortie de  WordPress 4.3 Â« Billie Â»";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/KD2NWiu1sHU/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:79:"http://www.wordpress-fr.net/2015/08/19/sortie-de-wordpress-4-3-billie/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 19 Aug 2015 06:35:23 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:14:"DÃ©veloppement";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.wordpress-fr.net/?p=7463";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:391:"La version 4.3 de WordPress, baptisÃ©eÂ &#171;&#160;Billie&#160;&#187; en l&#8217;honneur de la chanteuse de jazz Billie Holiday, est disponible en tÃ©lÃ©chargementÂ ou en mise Ã  jour via le tableau de bord de votre WordPress. Les nouvelles fonctionnalitÃ©s de la version 4.3 simplifient grandement la mise en forme de votre contenu et la personnalisation de votre site. Les menus [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"enclosure";a:3:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"url";s:45:"http://s.w.org/images/core/4.3/formatting.mp4";s:6:"length";s:7:"1574782";s:4:"type";s:9:"video/mp4";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"url";s:45:"http://s.w.org/images/core/4.3/formatting.ogv";s:6:"length";s:7:"1939540";s:4:"type";s:9:"video/ogg";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"url";s:46:"http://s.w.org/images/core/4.3/formatting.webm";s:6:"length";s:6:"686435";s:4:"type";s:10:"video/webm";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Xavier";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:5597:"<p>La version 4.3 de WordPress, baptisÃ©eÂ &laquo;&nbsp;Billie&nbsp;&raquo; en l&rsquo;honneur de la chanteuse de jazz <a href="https://fr.wikipedia.org/wiki/Billie_Holiday">Billie Holiday</a>, est disponible en <a href="http://fr.wordpress.org/">tÃ©lÃ©chargement</a>Â ou en mise Ã  jour via le tableau de bord de votre WordPress. Les nouvelles fonctionnalitÃ©s de la version 4.3 simplifient grandement la mise en forme de votre contenu et la personnalisation de votre site.</p>\n<p><iframe width=''555'' height=''312'' src=''https://videopress.com/embed/T54Iy7Tw?hd=1'' frameborder=''0'' allowfullscreen></iframe><script src=''https://v0.wordpress.com/js/next/videopress-iframe.js?m=1435166243''></script></p>\n<h3>Les menus dans lâ€™outil de personnalisation</h3>\n<p><img class="size-large wp-image-7464 alignnone" src="http://www.wordpress-fr.net/wp-content/uploads/2015/08/menu-customizer-500x281.png" alt="menu-customizer" width="500" height="281" /></p>\n<p>CrÃ©ez votre menu, mettez-le Ã  jour et placez-le, le tout en mÃªme temps que vous prÃ©visualisez son apparence dans lâ€™outil de personnalisation. Le design Ã©purÃ© de lâ€™outil de personnalisation offre une interface accessible tant pour les appareils mobiles que pour les utilisateurs en situation de handicap. De version en version, il devient de plus en plus facile de donner Ã  votre lâ€™apparence que vous souhaitez.</p>\n<h3>Les raccourcis de mise en forme</h3>\n\n<p>Votre flux dâ€™Ã©criture va sâ€™accÃ©lÃ©rer grÃ¢ce aux nouveaux raccourcis de WordPress 4.3. Utilisez lâ€™astÃ©risque pour crÃ©er des listes, et le croisillon pour mettre en place un titre. Votre flux nâ€™est plus ralenti par le mouvement de sourisÂ ; votre texte est plus clair grÃ¢ce aux <code>*</code> et aux <code>#</code>.</p>\n<h3>Des icÃ´nes pour votre site</h3>\n<p><img class="size-large wp-image-7465 alignnone" src="http://www.wordpress-fr.net/wp-content/uploads/2015/08/site-icon-customizer-500x281.png" alt="site-icon-customizer" width="500" height="281" /></p>\n<p>Les icÃ´nes du site reprÃ©sentent votre site dans les onglets des navigateurs, dans les menus de favoris, et dans la page dâ€™accueil des appareils mobiles. Ajoutez votre propre icÃ´ne de site dans lâ€™outil de personnalisationÂ ;Â il restera mÃªme en place quand vous changerez de thÃ¨me. Faites en sorte que tout votre site soit le reflet de votre marque.</p>\n<h3>De meilleurs mots de passe</h3>\n<p><img class="alignnone size-large wp-image-7466" src="http://www.wordpress-fr.net/wp-content/uploads/2015/08/better-passwords-500x281.png" alt="better-passwords" width="500" height="281" /></p>\n<p>AmÃ©liorez la sÃ©curitÃ© de votre site grÃ¢ce Ã  la nouvelle gestion des mots de passe de WordPress. Au lieu de recevoir un mot de passe dans votre messagerie, vous recevrez un lien de rÃ©initialisation. Et lorsque vous ajouterez de nouveaux utilisateurs Ã  votre site, ou que vous modifierez le profil dâ€™un utilisateur, WordPress gÃ©nÃ¨rera automatiquement un mot de passe sÃ©curisÃ©.</p>\n<h3>D&rsquo;autres amÃ©liorations</h3>\n<ul>\n<li><strong>Une utilisation de lâ€™administration plus agrÃ©able </strong>&#8212; Des amÃ©liorations Ã  lâ€™affichage des listes sur lâ€™ensemble des pages dâ€™administration rendent WordPress plus accessible et plus facile Ã  utiliser sur nâ€™importe quel appareil.</li>\n<li><strong>Les commentaires sont dÃ©sactivÃ©s sur les pagesÂ </strong>&#8212; Toutes les nouvelles pages que vous crÃ©erez auront les commentaires dÃ©sactivÃ©s par dÃ©faut. Cela permet de limiter les conversations Ã  votre blog, lÃ  oÃ¹ elle sont censÃ©es se dÃ©rouler.</li>\n<li><strong>Une personnalisation rapide de votre siteÂ </strong>&#8212; OÃ¹ que vous soyez sur lâ€™interface du site, vous pouvez cliquer sur le lien de personnalisation dans la barre dâ€™outils pour apporter une modification rapide Ã  votre site.</li>\n<li><strong>Feuille de route de la taxinomieÂ </strong>&#8212; Les termes partagÃ©s par plusieurs taxinomies sont maintenant sÃ©parÃ©s en plusieurs termes distincts.</li>\n<li><strong>HiÃ©rarchie des fichiers du thÃ¨meÂ </strong>&#8212; Le fichier <code>singular.php</code> a Ã©tÃ© ajoutÃ© en tant quâ€™alternative Ã  <code>single.php</code> et <code>page.php</code>.</li>\n<li><strong><code>WP_List_Table</code></strong>Â &#8212; Les tableaux de listes peuvent et doivent dÃ©signer une colonne principale.</li>\n</ul>\n<p>Cette version a Ã©tÃ© menÃ©e par <a href="http://konstantin.obenland.it/">Konstantin Obenland</a>, avec l&rsquo;aide 246 contributeurs, parmi lesquels on retrouve quelques franÃ§ais :Â Clement Biron,Â Julio Potier,Â Fabien Quatravaux et Mathieu Viet.</p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KD2NWiu1sHU:oBCnwZX5Yj8:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KD2NWiu1sHU:oBCnwZX5Yj8:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KD2NWiu1sHU:oBCnwZX5Yj8:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KD2NWiu1sHU:oBCnwZX5Yj8:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KD2NWiu1sHU:oBCnwZX5Yj8:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KD2NWiu1sHU:oBCnwZX5Yj8:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/KD2NWiu1sHU" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:75:"http://www.wordpress-fr.net/2015/08/19/sortie-de-wordpress-4-3-billie/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"11";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:70:"http://www.wordpress-fr.net/2015/08/19/sortie-de-wordpress-4-3-billie/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:51:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:81:"Lâ€™Hebdo WordPress nÂ°262 : CommunautÃ©s â€“ Retours dâ€™expÃ©rience â€“ Astuces";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/NRscrl4Ddlw/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:110:"http://www.wordpress-fr.net/2015/07/24/lhebdo-wordpress-n262-communautes-retours-dexperience-astuces/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 24 Jul 2015 17:56:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:4:{i:0;a:5:{s:4:"data";s:7:"Astuces";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:7:"BrÃ¨ves";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:12:"communautÃ©s";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:5:"Hebdo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.wordpress-fr.net/?p=7456";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:368:"WordPress 4.2.3 : mise Ã  jour de sÃ©curitÃ© Une 3e mise Ã  jour mineure vient corriger une faille de sÃ©curitÃ© dÃ©tectÃ©e plus tÃ´t. La communautÃ© franÃ§aise grandie Jenny Beaumont a fait un rÃ©sumÃ© de l&#8217;histoire (en) de la communautÃ© franÃ§aise de WordPress&#8230; et Ã‰milie vous dit pourquoi en faire partie. 14e Podcast VFT : l&#8217;animation [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"BenoÃ®t";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:8365:"<h3>WordPress 4.2.3 : mise Ã  jour de sÃ©curitÃ©</h3>\n<p>Une <a href="http://wptavern.com/wordpress-4-2-3-is-a-critical-security-release-fixes-an-xss-vulnerability">3e mise Ã  jour mineure </a>vient <a href="https://wordpress.org/news/2015/07/wordpress-4-2-3/">corriger </a>une faille de sÃ©curitÃ© dÃ©tectÃ©e plus tÃ´t.</p>\n<h3>La communautÃ© franÃ§aise grandie</h3>\n<p>Jenny Beaumont a fait <a href="https://poststatus.com/growth-in-the-french-community/">un rÃ©sumÃ© de l&rsquo;histoire (en)</a> de la communautÃ© franÃ§aise de WordPress&#8230; et <a href="http://www.wp-pro.fr/pourquoi-rejoindre-la-communaute-wordpress/">Ã‰milie vous dit pourquoi en faire partie</a>.</p>\n<h3>14e Podcast VFT : l&rsquo;animation d&rsquo;une communautÃ© locale</h3>\n<p>EntourÃ©s de ValÃ©rie et Nicolas, l&rsquo;Ã©quipe de VFT <a href="http://veryfrenchtrip.com/podcast/podcast-14-animation-locale-wordpress/">nous donne des pistes pour animer une communautÃ© locale</a>.</p>\n<h3>Le WP Tech 2015 a une salle !</h3>\n<p>Le lieu du prochain WP Tech <a href="http://2015.wptech.fr/lieu/">est connu</a>, ce sera la facultÃ© de Pharmacie en plein centre de Nantes.</p>\n<h3>Des retours du WPMX Day, des vrais (cette fois !)</h3>\n<p>J&rsquo;avais fait une erreur dans mon dernier hebdo et confondu des liens&#8230; et je n&rsquo;a pas fait la mise Ã  jour&#8230; dont acte !</p>\n<ul>\n<li><a href="http://www.myleneb.fr/wpmx-day-2015-mes-impressions/">MylÃ¨ne Boyrie</a></li>\n<li><a href="http://www.ohmyweb.fr/retour-sur-le-wpmx-day-du-6-juin-2/">Oh My Web</a></li>\n<li><a href="http://www.goodness.fr/2015/06/13/referencement-wordpress-wpmx-2015/">Goodness</a></li>\n<li><a href="http://www.inpixelitrust.fr/blog/faites-rentrer-votre-elephant-dans-une-smart-bonnes-pratiques-sur-mobiles-ma-conference-au-wpmx-day-2015/">StÃ©phanie Walter</a></li>\n</ul>\n<h3>Quelques nouvelles des WordCamps dans le monde</h3>\n<p>Les WordCamps franÃ§ais n&rsquo;Ã©tant pas les seuls au monde, <a href="https://wordpress.org/news/2015/07/wordcamps-update/">voici du nouveau sur le reste du Monde</a> ! (en) &#8230; avec un clin dâ€™Å“il Ã  Fabrice Ducarme, bien connu de notre communautÃ©&#8230; et le premier <a href="http://ma.tt/2015/07/wcus-philadelphia/">WordCamp US</a> aura lieu Ã  Philadelphie&#8230;</p>\n<h3>WordPress 4.3 : revue de travaux</h3>\n<ul>\n<li><a href="http://wptavern.com/wordpress-4-3-adds-new-site-icons-feature-and-a-text-editor-to-press-this">Favicon et Press This</a> (en)</li>\n<li><a href="http://wptavern.com/wordpress-4-3-improves-user-search-and-turns-comments-off-on-pages-by-default">Fermeture de commentaire et recherche amÃ©liorÃ©e</a> (en)</li>\n</ul>\n<h3>Jetpack 3.6 dÃ©barque</h3>\n<p>Cette <a href="http://wptavern.com/jetpack-3-6-adds-the-ability-to-manage-your-connections-to-jetpack">nouvelle version</a> peut dÃ©sormais gÃ©rer vos connexions aux rÃ©seaux sociaux. (en)</p>\n<h3>Focus sur le rÃ©pertoire de thÃ¨me officiel</h3>\n<p>L&rsquo;Ã©quipe en charge du rÃ©pertoire officiel de thÃ¨me de WordPress se concentre sur l&rsquo;amÃ©lioration du rÃ©pertoire officiel de thÃ¨mes. <a href="http://wptavern.com/wordpress-theme-review-team-unanimously-approves-roadmap-to-improve-directory-and-review-process">Une rÃ©organisation de l&rsquo;Ã©quipe est en cours</a>. (en)</p>\n<h3>Le fichier htaccess avec WordPress</h3>\n<p>MaintPress explique le <a href="http://www.maintpress.com/blog/htaccess-wordpress/">fonctionnement et l&rsquo;optimisation du fichier .htaccess</a> avec WordPress.</p>\n<h3>Rappel sur l&rsquo;utilisation d&rsquo;un domaine avec &laquo;&nbsp;wordpress&nbsp;&raquo;</h3>\n<p><a href="http://chrislema.com/this-is-why-you-dont-put-wordpress-in-a-domain-name/">Chris Lema rappelle quelques Ã©lÃ©ments</a> concernant lâ€™utilisation du terme WordPress&#8230; et un <a href="http://thewordpresshelpers.com/wordpress-trademark-lawsuit">exemple d&rsquo;un cas concret</a> (en).</p>\n<h3>Retour sur le WordCamp Europe 2015</h3>\n<p><a href="http://www.kirstencassidy.com/wordcamp-europe-2015-in-review-day-one/">Kirsten Cassidy</a> (en)</p>\n<h3>Des shortcodes gÃ©nÃ©rÃ©s par ACF</h3>\n<p>Si vous avez des shortcodes Ã  gÃ©rer dans votre site web, ou si vous souhaitez vos y mettre, l&rsquo;<a href="http://www.absoluteweb.net/generateur-shortcodes-acf/">extension ACF pourrait vous faciliter les choses</a>.</p>\n<h3>We are WP</h3>\n<p><a href="http://www.wearewp.pro/">We are WP</a>, c&rsquo;est la nouvelle agence de conseils et d&rsquo;expertise WordPress crÃ©Ã©e par Emilie Lebrun et Thierry Pigot, membres Ã©minents de la communautÃ© franÃ§aise.</p>\n<h3>Les parts de marchÃ© de WordPress dans le monde</h3>\n<p>Daniel prÃ©sente les parts de marchÃ© mondiale de WordPress. <a href="http://www.seomix.fr/parts-de-marche-wordpress/">Un article trÃ¨s intÃ©ressant et instructif</a>.</p>\n<h3>Du nouveau avec REST API</h3>\n<p>Une <a href="http://wptavern.com/explore-the-wordpress-rest-api-with-the-new-interactive-console-plugin">console REST API </a>est maintenant disponible. (en)</p>\n<h3>WP Rocket, 2 ans aprÃ¨s</h3>\n<p>Voici dÃ©jÃ  2 ans que la fusÃ©e WP Rocket a dÃ©collÃ©. <a href="http://blog.wp-rocket.me/fr/2-ans-bilan-retour-experience/">A l&rsquo;heure du bilan</a>, autant dire que l&rsquo;optimisme est de rigueur. Une <a href="http://wptavern.com/wp-rocket-reports-355k-in-annual-revenue-after-2-years-in-business">belle aventure de startup Ã  la franÃ§aise (en)</a>. (<a href="http://blog.wp-rocket.me/2-years-reports-feedbacks/">English version here</a>)</p>\n<h3>Puisqu&rsquo;on vous dit d&rsquo;utiliser un thÃ¨me enfant !</h3>\n<p>On ne le rÃ©pÃ©tera jamais assez&#8230; <a href="http://webdesignerhut.com/wordpress-child-themes/">utilisez un thÃ¨me enfant</a> ! (en)</p>\n<h3>Gestion complÃ¨te des menus</h3>\n<p>GrÃ©goire propose un <a href="http://www.gregoirenoyelle.com/gestion-des-menus-depuis-wordpress-3/">tutoriel pour tout savoir des menus</a> dans WordPress.</p>\n<h3>L&rsquo;extension pour les surveiller toutes</h3>\n<p>L&rsquo;extension qui surveille les autres pour vous indiquer les failles de sÃ©curitÃ© existe, il s&rsquo;agit de<a href="http://wpformation.com/plugin-failles-securite/"> Plugin Security Scanner</a>.</p>\n<h3>Automattic, Matt Mullenweg et Thesis&#8230; histoire d&rsquo;un conflit</h3>\n<p>La <a href="https://poststatus.com/thesis-automattic-and-wordpress/">longue histoire du conflit</a> qui oppose le thÃ¨me Thesis Ã  Automattic et Matt Mullenweg depuis 2010. (en)</p>\n<h3>Comment styliser les formulaires de Gravity Forms</h3>\n<p>La Marmite propose dans son menu de <a href="http://wpmarmite.com/gravity-forms-css/">styliser vos formulaires de Gravity Forms</a>.</p>\n<h3>Polylang et WooCommerce</h3>\n<p>Retour d&rsquo;expÃ©rience de l&rsquo;utilisation de <a href="http://www.absoluteweb.net/polylang-grosse-deception/">Polylang avec WooCommerce</a>.</p>\n<h3>Mise Ã  jour du livre &laquo;&nbsp;optimiser son rÃ©fÃ©rencement WordPress&nbsp;&raquo;</h3>\n<p>Daniel Roch <a href="http://www.wp-referencement.fr/">indique la mise Ã  jour du livre</a> qu&rsquo;il a Ã©crit concernant le rÃ©fÃ©rencement avec WordPress.</p>\n<h3>Chrome 44 et WordPress</h3>\n<p>Cette semaine, la <a href="http://www.imadarchid.com/un-bug-sur-chrome-44-beta-detruit-wordpress-et-dautres-logiciels/">mise Ã  jour 44 de Chrome</a> a entrainÃ© un <a href="https://github.com/IshYoBoy/aaa-ishyoboy-google-chrome-44-ssl-fix">problÃ¨me avec WordPress</a>.</p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=NRscrl4Ddlw:tH6Ix9sW9-g:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=NRscrl4Ddlw:tH6Ix9sW9-g:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=NRscrl4Ddlw:tH6Ix9sW9-g:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=NRscrl4Ddlw:tH6Ix9sW9-g:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=NRscrl4Ddlw:tH6Ix9sW9-g:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=NRscrl4Ddlw:tH6Ix9sW9-g:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/NRscrl4Ddlw" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:106:"http://www.wordpress-fr.net/2015/07/24/lhebdo-wordpress-n262-communautes-retours-dexperience-astuces/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"6";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:101:"http://www.wordpress-fr.net/2015/07/24/lhebdo-wordpress-n262-communautes-retours-dexperience-astuces/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:66:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n		\n		\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:80:"Lâ€™Hebdo WordPress nÂ°261 : WordCamp et WPMX Day â€“ e-barcamp â€“ CommunautÃ©s";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/ZSQgxX9WNpE/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:113:"http://www.wordpress-fr.net/2015/06/23/lhebdo-wordpress-n261-wordcamp-et-wpmx-day-e-barcamp-communautes/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 23 Jun 2015 05:26:52 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:9:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:7:"BrÃ¨ves";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:14:"DÃ©veloppement";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:11:"EvÃ¨nements";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:10:"Podcasting";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:8:"WordCamp";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:21:"WordPress Francophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:7;a:5:{s:4:"data";s:12:"communautÃ©s";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:8;a:5:{s:4:"data";s:8:"wordcamp";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.wordpress-fr.net/?p=7448";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:336:"WordCamp Lyon 2015 J&#8217;ai eu la chance de participer au 1er WordCamp Lyon. Il s&#8217;est dÃ©roulÃ© le 5 juin dernier sous le soleil du RhÃ´ne. Autant le dire tout de suite, c&#8217;Ã©tait un grand Ã©vÃ©nement ! UN belle rÃ©ussite. Bravo aux organisateurs ! Voici quelques liens qui en parlent en des termes au moins aussi [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"BenoÃ®t";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:6530:"<h3>WordCamp Lyon 2015</h3>\n<p>J&rsquo;ai eu la chance de participer au 1er WordCamp Lyon. Il s&rsquo;est dÃ©roulÃ© le 5 juin dernier sous le soleil du RhÃ´ne. Autant le dire tout de suite, c&rsquo;Ã©tait un grand Ã©vÃ©nement ! UN belle rÃ©ussite. Bravo aux organisateurs !</p>\n<p>Voici quelques liens qui en parlent en des termes au moins aussi Ã©logieux que moi si ce n&rsquo;est plus :</p>\n<ul>\n<li><a href="http://eclozion360.com/wordcamp-lyon-2015/">Des photos</a></li>\n<li><a href="http://www.wp-spread.com/comment-travailler-en-equipe-autour-dun-projet-wordpress-wordcamp-lyon-2015/">Le retour de Maxime BJ</a></li>\n<li><a href="https://www.flickr.com/search/?text=WPLyon">D&rsquo;autres photos</a></li>\n<li><a href="http://wordpress.tv/event/wordcamp-lyon-2015/">DÃ©jÃ  les confÃ©rences et ateliers sur WordPress.tv</a></li>\n<li><a href="http://wpmarmite.com/wordcamp-lyon-2015/">Une marmite qui dÃ©borde de retours</a></li>\n<li><a href="http://www.jennybeaumont.com/results-2015-wordpress-maintenance-survey/">Le sondage pre-WordCamp Lyon de Jenny</a></li>\n<li><a href="https://lyon.wordcamp.org/2015/les-photos/">Le site officiel dit merci !</a></li>\n<li><a href="https://twitter.com/search?q=%23wplyon&amp;mode=news&amp;src=tyah">#wplyon</a></li>\n</ul>\n<h3>WPMX Day 2015</h3>\n<p>Le lendemain du WordCamp Lyon se dÃ©roulait Ã  quelques centaines de km de Lyon, plus prÃ¨s de la cÃ´te Atlantique, le <a href="http://wpmx.org/retour-wpmx-day-2015/">WPMX Day</a>.</p>\n<ul>\n<li><a href="http://www.lameleeadour.com/wpmx-day-6-juin-2015-a-biarritz-2/">Un retour de cette journÃ©e.</a></li>\n</ul>\n<h3>Le premier e-barcamp de France</h3>\n<p>L&rsquo;Ã©quipe de VFT a mis en placeÂ  fin mai un e-barcamp. L&rsquo;objectif Ã©tait d&rsquo;appliquer le mode barcamp Ã  un podcast. <a href="http://veryfrenchtrip.com/podcast/podcast-13-e-barcamp-1/">Le rÃ©sultat est en ligne ici</a>. En attendant la prochaine Ã©dition, VFT revient bientÃ´t pour son traditionnel podcast <a href="http://veryfrenchtrip.com/annonce-podcast-14-organiser-des-meetups-wordpress/">consacrÃ© cette fois aux meetups</a>. Restez connectÃ©s.</p>\n<h3>La communautÃ© WPFR sur Slack</h3>\n<p>La communautÃ© WordPress Francophone est sur Slack depuis un mois environ et ne cesse de grandir. <a href="http://boiteaweb.fr/wordpressfr-on-slack-8588.html">Si ce n&rsquo;est pas encore faire venez nous rejoindre</a>.</p>\n<h3>Des meetups partout&#8230; encore et toujours !</h3>\n<p>La communautÃ© est vivante et de plus en plus riche et active. Un nouveau groupe s&rsquo;est <a href="http://www.meetup.com/fr/WordPress-Lorraine/">crÃ©Ã© en Lorraine</a>.</p>\n<p>Et le prochain et dernier meetup niÃ§ois avant les vacances, <a href="http://www.meetup.com/wordpress-in-nice/events/223309511/?a=ra1_te">c&rsquo;est le 30 juin</a> !</p>\n<h3>Glossaire des traductions franÃ§aises</h3>\n<p>FX, bien connu des traducteurs en franÃ§ais, a rÃ©alisÃ© <a href="https://fxbenard.com/glossaire-des-traductions-francaises-de-wordpress/">un glossaire des traductions en franÃ§ais</a>. Un &laquo;&nbsp;<em>must have</em>&laquo;&nbsp;.</p>\n<h3>La mode est au Wapuu</h3>\n<p><a href="http://wptavern.com/introducing-the-wp-tavern-wapuu#comment-69209">WP Tavern a son wapuu</a>&#8230; et maintenant la <a href="http://boiteaweb.fr/welcome-to-marcel-le-wapuu-de-la-communaute-francaise-8598.html">France Ã  le sien aussi</a> ! &#8230; Le<a href="http://wapuu.jp/about/"> Wapuu c&rsquo;est Ã§a au fait</a> !</p>\n<h3>Un sondage sur WordPress</h3>\n<p>Jenny Wong souhaite recueillir vos avis sur WordPress, <a href="https://docs.google.com/forms/d/1dkF1nbVCTawp7vq8pZd2SB8FIV2iwny01EtfbadnfoA/viewform?c=0&amp;w=1">aidez-la (en)</a>.</p>\n<h3>ArrÃªter de s&rsquo;arracher les cheveux en cherchant un thÃ¨me</h3>\n<p>Un article qui vous donne<a href="http://www.webmarketing-com.com/2015/03/25/36361-comment-arreter-de-sarracher-les-cheveux-en-recherchant-un-theme-wordpress"> des pistes pour vos recherches de thÃ¨mes</a> !</p>\n<h3>Un guide pour les Custom Page Template</h3>\n<p>Apprenez Ã <a href="http://www.smashingmagazine.com/2015/06/19/wordpress-custom-page-templates/"> personnaliser vos pages dans WordPress</a> (en).</p>\n<h3>Theme Juice : Une configuration Vagrant pour les dÃ©veloppeurs</h3>\n<p>Vous Ãªtes dÃ©veloppeurs et souhaitez une nouvelle plateforme de dÃ©veloppement, <a href="http://wptavern.com/theme-juice-a-new-vagrant-configuration-for-wordpress-development">c&rsquo;est ici que Ã§a passe</a> (en).</p>\n<h3>Pas (que) du WordPress mais du PHP</h3>\n<p>PHP et WordPress sont Ã©troitement liÃ©s, c&rsquo;est pourquoi cet article peut vous intÃ©resser : <a href="https://kinsta.com/blog/hhvm-vs-php-7/">HHVM vs PHP7 (en)</a>.</p>\n<h3>&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;-</h3>\n<h3>Appel Ã  la communautÃ© francophone</h3>\n<p>Vous avez dÃ©jÃ  participÃ© au dÃ©veloppement du core de WordPress (vous savez, vous avez eu votre heure de gloire avec votre nom dans les crÃ©dits de WordPress ! :p ) ? Signalez-vous ici (ou sur le Slack), un recensement est en cours par Jenny Beaumont <img src="http://s.w.org/images/core/emoji/72x72/1f609.png" alt="&#x1f609;" class="wp-smiley" style="height: 1em; max-height: 1em;" /></p>\n<h3>Association WPFR nouvelle gÃ©nÃ©ration</h3>\n<p>J&rsquo;ai ouÃ¯e dire que <span style="text-decoration: underline;"><strong>les nouveaux statuts sont dÃ©posÃ©s en prÃ©fecture</strong></span> et validÃ©s ! <em>WPFR next gen, </em>c&rsquo;est parti ! On vous en dit plus trÃ¨s trÃ¨s trÃ¨s trÃ¨s bientÃ´t ! #wpfrstatuts</p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ZSQgxX9WNpE:Tg583M62sFc:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ZSQgxX9WNpE:Tg583M62sFc:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=ZSQgxX9WNpE:Tg583M62sFc:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ZSQgxX9WNpE:Tg583M62sFc:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ZSQgxX9WNpE:Tg583M62sFc:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=ZSQgxX9WNpE:Tg583M62sFc:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/ZSQgxX9WNpE" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:109:"http://www.wordpress-fr.net/2015/06/23/lhebdo-wordpress-n261-wordcamp-et-wpmx-day-e-barcamp-communautes/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:104:"http://www.wordpress-fr.net/2015/06/23/lhebdo-wordpress-n261-wordcamp-et-wpmx-day-e-barcamp-communautes/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:61:"Lâ€™Hebdo WordPress nÂ°260 : WooThemes â€“ Slack â€“ Insights";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/XyIbHAGFLdw/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:95:"http://www.wordpress-fr.net/2015/06/03/lhebdo-wordpress-n260-woothemes-slack-insights/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 03 Jun 2015 05:27:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:7:"Astuces";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:10:"automattic";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.wordpress-fr.net/?p=7445";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:359:"Automattic acquiert WooThemes L&#8217;info de cette derniÃ¨re quinzaine est sans aucun doute le rachat (en) de WooThemes (en) par Automattic (en). Le plus gros marchand de thÃ¨mes et le crÃ©ateur du plus cÃ©lÃ¨bre outil de e-commerce pour WordPress rejoint donc le giron de l&#8217;outil le plus puissant du web. 12e anniversaire de WordPress Que le [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"BenoÃ®t";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:3694:"<h3>Automattic acquiert WooThemes</h3>\n<p>L&rsquo;info de cette derniÃ¨re quinzaine est sans aucun doute le <a href="https://poststatus.com/automattic-acquired-woocommerce-woothemes/">rachat (en) </a>de <a href="http://www.woothemes.com/2015/05/woothemes-joins-automattic/">WooThemes (en) </a>par <a href="http://ma.tt/2015/05/woomattic/">Automattic (en)</a>. Le plus gros marchand de thÃ¨mes et le crÃ©ateur du plus cÃ©lÃ¨bre outil de e-commerce pour WordPress <a href="http://wpchannel.com/woothemes-automattic-acquisition-e-commerce/">rejoint donc le giron</a> de l&rsquo;outil le plus puissant du web.</p>\n<h3>12e anniversaire de WordPress</h3>\n<p>Que le temps passe vite ! <a href="https://matt.wordpress.com/2015/05/27/wordpress-12th-birthday-cake/">DÃ©jÃ  12 ans </a>depuis le dÃ©but du projet. (en) !</p>\n<h3>WordPress.com lance Insights</h3>\n<p>Il s&rsquo;agit d&rsquo;un <a href="http://wptavern.com/wordpress-com-launches-insights-better-stats-for-visualizing-publishing-trends">meilleur outil de statistiques</a> qui apporte un certain nombres de changement Ã  l&rsquo;interface actuelle.</p>\n<h3>Une communautÃ© WordPress en franÃ§ais sur Slack</h3>\n<p>Un nouveau groupe a Ã©tÃ© crÃ©Ã© sur la <a href="http://www.wp-spread.com/invitez-vous-sur-le-chat-wordpress-francophone-sur-slack/">plateforme Slack</a>. Rejoignez le groupe dÃ¨s que vous pouvez !</p>\n<h3>Des tutos et ressources pour apprendre</h3>\n<p><a href="https://matt.wordpress.com/2015/05/27/wordpress-12th-birthday-cake/">Quelques tutoriels et ressources</a> diverses pour apprendre WordPress</p>\n<h3>Renommer automatiquement les fichiers accentuÃ©s sous WordPress</h3>\n<p>Si vous avez des fichiers nommÃ©s <a href="http://wpchannel.com/renommer-automatiquement-fichiers-accentues-wordpress/">avec des accents et que vous en avez assez de les renommer sans cesse</a>, cette extension est pour vous.</p>\n<h3>La hiÃ©rarchie des templates</h3>\n<p>Avec WordPress il est souvent utile de connaitre<a href="http://4design.xyz/wordpress-visualisez-la-hierarchie-des-templates"> la hiÃ©rarchie des templates</a> pour travailler dans un thÃ¨me notamment.</p>\n<h3>11 exemples de sites WordPress</h3>\n<p><a href="http://www.maintpress.com/blog/exemple-site-wordpress-bien-reussi/">Voici 11 sites WordPress</a> qui semblent intÃ©ressants selon MaintPress.</p>\n<h3>Connecter WordPress Ã  OneNote de Microsoft</h3>\n<p>Voici la solution pour connecter <a href="http://blogs.office.com/2015/05/22/onenote-welcomes-three-new-partners-cloudhq-equil-and-wordpress/">un site WordPress avec un compte Microsoft OneNote (en)</a>.</p>\n<p><em>NB : A celles et ceux qui vont au WordCamp Lyon, je leur dit : &laquo;&nbsp;A vendredi !&nbsp;&raquo;</em></p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=XyIbHAGFLdw:abkmUGnIo1g:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=XyIbHAGFLdw:abkmUGnIo1g:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=XyIbHAGFLdw:abkmUGnIo1g:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=XyIbHAGFLdw:abkmUGnIo1g:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=XyIbHAGFLdw:abkmUGnIo1g:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=XyIbHAGFLdw:abkmUGnIo1g:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/XyIbHAGFLdw" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:91:"http://www.wordpress-fr.net/2015/06/03/lhebdo-wordpress-n260-woothemes-slack-insights/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"6";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:86:"http://www.wordpress-fr.net/2015/06/03/lhebdo-wordpress-n260-woothemes-slack-insights/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:2:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";s:4:"href";s:48:"http://feeds.feedburner.com/WordpressFrancophone";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:3:"hub";s:4:"href";s:32:"http://pubsubhubbub.appspot.com/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:4:{s:4:"info";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:3:"uri";s:20:"wordpressfrancophone";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:14:"emailServiceId";a:1:{i:0;a:5:{s:4:"data";s:20:"WordpressFrancophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:18:"feedburnerHostname";a:1:{i:0;a:5:{s:4:"data";s:29:"https://feedburner.google.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"feedFlare";a:9:{i:0;a:5:{s:4:"data";s:24:"Subscribe with NewsGator";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:112:"http://www.newsgator.com/ngs/subscriber/subext.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:42:"http://www.newsgator.com/images/ngsub1.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:24:"Subscribe with Bloglines";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:77:"http://www.bloglines.com/sub/http://feeds.feedburner.com/WordpressFrancophone";s:3:"src";s:48:"http://www.bloglines.com/images/sub_modern11.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:23:"Subscribe with Netvibes";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:98:"http://www.netvibes.com/subscribe.php?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:39:"//www.netvibes.com/img/add2netvibes.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:21:"Subscribe with Google";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:93:"http://fusion.google.com/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:51:"http://buttons.googlesyndication.com/fusion/add.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:25:"Subscribe with Pageflakes";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:101:"http://www.pageflakes.com/subscribe.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:87:"http://www.pageflakes.com/ImageFile.ashx?instanceId=Static_4&fileName=ATP_blu_91x17.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:21:"Subscribe with Plusmo";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:86:"http://www.plusmo.com/add?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:43:"http://plusmo.com/res/graphics/fbplusmo.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:23:"Subscribe with Live.com";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:81:"http://www.live.com/?add=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:141:"http://tkfiles.storage.msn.com/x1piYkpqHC_35nIp1gLE68-wvzLZO8iXl_JMledmJQXP-XTBOLfmQv4zhj4MhcWEJh_GtoBIiAl1Mjh-ndp9k47If7hTaFno0mxW9_i3p_5qQw";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:7;a:5:{s:4:"data";s:25:"Subscribe with Mon Yahoo!";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:99:"https://add.my.yahoo.com/content?lg=fr&url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:60:"http://us.i1.yimg.com/us.yimg.com/i/us/my/bn/intatm_fr_1.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:8;a:5:{s:4:"data";s:25:"Subscribe with Excite MIX";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:89:"http://mix.excite.eu/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:42:"http://image.excite.co.uk/mix/addtomix.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:52:"http://backend.userland.com/creativeCommonsRssModule";a:1:{s:7:"license";a:1:{i:0;a:5:{s:4:"data";s:49:"http://creativecommons.org/licenses/by-nc-sa/3.0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:10:{s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:4:"etag";s:27:"KhyWj+jMif4b5sWiO6yXKH+8SQU";s:13:"last-modified";s:29:"Thu, 02 Jun 2016 08:59:13 GMT";s:16:"content-encoding";s:4:"gzip";s:4:"date";s:29:"Thu, 02 Jun 2016 09:09:48 GMT";s:7:"expires";s:29:"Thu, 02 Jun 2016 09:09:48 GMT";s:13:"cache-control";s:18:"private, max-age=0";s:22:"x-content-type-options";s:7:"nosniff";s:16:"x-xss-protection";s:13:"1; mode=block";s:6:"server";s:3:"GSE";}s:5:"build";s:14:"20130911020210";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(290, '_transient_timeout_feed_mod_66a70e9599b658d5cc038e8074597e7c', '1464901788', 'no'),
(291, '_transient_feed_mod_66a70e9599b658d5cc038e8074597e7c', '1464858588', 'no'),
(292, '_transient_timeout_feed_925a96b1918580ab3893979ca7a4a994', '1464901790', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(293, '_transient_feed_925a96b1918580ab3893979ca7a4a994', 'a:4:{s:5:"child";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:3:"RDF";a:1:{i:0;a:6:{s:4:"data";s:281:"\n\n    \n    \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n        \n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:24:"http://purl.org/rss/1.0/";a:2:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:91:"\n        \n        \n        \n        \n        \n        \n        \n        \n    \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:35:"http://www.wordpress-fr.net/planet/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:24:"http://purl.org/rss/1.0/";a:4:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"WordPress Francophone : Planet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.wordpress-fr.net/planet/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"items";a:1:{i:0;a:6:{s:4:"data";s:18:"\n        \n        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:3:"Seq";a:1:{i:0;a:6:{s:4:"data";s:749:"\n                        \n                                    \n                                    \n                                    \n                                    \n                                    \n                                    \n                                    \n                                    \n                                    \n                                    \n                                    \n                                    \n                                    \n                                    \n                                    \n                                    \n                                    \n                                    \n                                    \n                    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:2:"li";a:20:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:85:"https://www.gregoirenoyelle.com/wordpress-gestion-multilingue-avec-multilingualpress/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/jnTdGpX49Y0/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:53:"http://www.echodesplugins.li-an.fr/plugins/lazy-load/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:35:"http://www.geekeries.fr/gerer-page/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:51:"http://wpformation.com/connaitre-serveur-wordpress/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:66:"http://www.geekpress.fr/tutoriel-advanced-custom-fields-debutants/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/83d0IWEmxkM/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:7;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:61:"https://wpchannel.com/masquer-labels-champs-de-gravity-forms/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:8;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:50:"http://www.echodesplugins.li-an.fr/news/wp-fr-net/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:9;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:79:"https://fr.wordpress.org/2016/05/18/retour-du-global-wordpress-translation-day/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:10;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:67:"http://wpformation.com/comment-importer-vos-contenus-sur-wordpress/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:11;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:54:"http://www.geekpress.fr/weglot-mulitilingue-wordpress/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:12;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:65:"http://www.echodesplugins.li-an.fr/plugins/harrys-gravatar-cache/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:13;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:49:"http://wpformation.com/gerer-plusieurs-wordpress/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:14;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:40:"http://www.geekpress.fr/wordpress-4-5-2/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:15;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:51:"http://www.echodesplugins.li-an.fr/plugins/folders/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:16;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:65:"http://www.geekpress.fr/geekpress-wp-spread-wp-pro-grande-fusion/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:17;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:57:"http://www.echodesplugins.li-an.fr/plugins/client-portal/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:18;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:66:"https://wpchannel.com/afficher-categories-enfants-article-parents/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:19;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:66:"http://www.echodesplugins.li-an.fr/plugins/wp-notification-center/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}s:32:"http://purl.org/dc/elements/1.1/";a:4:{s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:6:"rights";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-06-02T10:54:14+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:22:"http://webns.net/mvcb/";a:1:{s:14:"generatorAgent";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:8:"resource";s:28:"http://moonmoon.inertie.org/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:2:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rdf+xml";s:4:"href";s:45:"http://feeds.feedburner.com/wordpress-fr/RaoY";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:3:"hub";s:4:"href";s:32:"http://pubsubhubbub.appspot.com/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:4:"info";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:3:"uri";s:17:"wordpress-fr/raoy";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}s:4:"item";a:20:{i:0;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:85:"https://www.gregoirenoyelle.com/wordpress-gestion-multilingue-avec-multilingualpress/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:78:"GrÃ©goire Noyelle : WordPress :: Gestion du multilingue avec MultilingualPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/Ofz99Y7xNYA/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:854:"<div>Dans ce tutoriel nous verrons comment cr&eacute;er un site multilingue p&eacute;renne qui marche toujours quand l&rsquo;extension est d&eacute;sactiv&eacute;e :). Pourquoi MultilingualPress? Les plus C&rsquo;est &agrave; mon sens la meilleure solution dans cet &eacute;cosyst&egrave;me. MultitingualPress est d&eacute;velopp&eacute; par la fameuse agence allemande Insypde. C&rsquo;est d&eacute;j&agrave; un gage de qualit&eacute;. L&rsquo;outil se greffe sur la fonctionnalit&eacute; multilingue ...<p>Cet article a &eacute;t&eacute; publi&eacute; le 2 juin 2016 par <a href="https://www.gregoirenoyelle.com/">Gr&eacute;goire Noyelle</a>. Pour le lire en ligne, suivre le lien: <a href="https://www.gregoirenoyelle.com/wordpress-gestion-multilingue-avec-multilingualpress/">WordPress :: Gestion du multilingue avec MultilingualPress</a>.</p>\n</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-06-02T05:10:41+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"GrÃ©goire Noyelle";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:958:"<div>Dans ce tutoriel nous verrons comment cr&eacute;er un site multilingue p&eacute;renne qui marche toujours quand l&rsquo;extension est d&eacute;sactiv&eacute;e :). Pourquoi MultilingualPress? Les plus C&rsquo;est &agrave; mon sens la meilleure solution dans cet &eacute;cosyst&egrave;me. MultitingualPress est d&eacute;velopp&eacute; par la fameuse agence allemande Insypde. C&rsquo;est d&eacute;j&agrave; un gage de qualit&eacute;. L&rsquo;outil se greffe sur la fonctionnalit&eacute; multilingue ...<p>Cet article a &eacute;t&eacute; publi&eacute; le 2 juin 2016 par <a href="https://www.gregoirenoyelle.com/">Gr&eacute;goire Noyelle</a>. Pour le lire en ligne, suivre le lien: <a href="https://www.gregoirenoyelle.com/wordpress-gestion-multilingue-avec-multilingualpress/">WordPress :: Gestion du multilingue avec MultilingualPress</a>.</p>\n</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/Ofz99Y7xNYA" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:85:"https://www.gregoirenoyelle.com/wordpress-gestion-multilingue-avec-multilingualpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/jnTdGpX49Y0/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:55:"WordPress Francophone : En route vers le nouveau site !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/vCWMs-_IXug/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1725:"<div>\n<p>Lors de l&rsquo;article du 23 mai, nous avons propos&eacute; &agrave; celles et ceux qui le souhaitaient de participer &agrave; la refonte du site et du forum de wordpress-fr.net. Une quinzaine de volontaires ont r&eacute;pondu &agrave; notre appel, nous les en remercions !</p>\n<p>Les participants ont re&ccedil;u les indications pour nous rejoindre sur le slack de l&rsquo;association et deux groupes de travail ont donc &eacute;t&eacute; constitu&eacute;s : un pour le forum, et l&rsquo;autre pour le site web.</p>\n<p>L&rsquo;objectif est maintenant de mener &agrave; bien la r&eacute;alisation de ces deux projets. Nous vous donnerons des nouvelles de leurs progressions vers fin juin.</p>\n<p>&Agrave; tr&egrave;s bient&ocirc;t alors !</p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=jnTdGpX49Y0:EzCr7RZps1k:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=jnTdGpX49Y0:EzCr7RZps1k:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=jnTdGpX49Y0:EzCr7RZps1k:V_sGLiPBpWU" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=jnTdGpX49Y0:EzCr7RZps1k:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=jnTdGpX49Y0:EzCr7RZps1k:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=jnTdGpX49Y0:EzCr7RZps1k:gIN9vFwOqvQ" border="0"></a>\n</div>\n<img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/jnTdGpX49Y0" height="1" width="1" alt="">\n</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-06-01T15:13:20+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Willy Bahuaud";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1829:"<div>\n<p>Lors de l&rsquo;article du 23 mai, nous avons propos&eacute; &agrave; celles et ceux qui le souhaitaient de participer &agrave; la refonte du site et du forum de wordpress-fr.net. Une quinzaine de volontaires ont r&eacute;pondu &agrave; notre appel, nous les en remercions !</p>\n<p>Les participants ont re&ccedil;u les indications pour nous rejoindre sur le slack de l&rsquo;association et deux groupes de travail ont donc &eacute;t&eacute; constitu&eacute;s : un pour le forum, et l&rsquo;autre pour le site web.</p>\n<p>L&rsquo;objectif est maintenant de mener &agrave; bien la r&eacute;alisation de ces deux projets. Nous vous donnerons des nouvelles de leurs progressions vers fin juin.</p>\n<p>&Agrave; tr&egrave;s bient&ocirc;t alors !</p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=jnTdGpX49Y0:EzCr7RZps1k:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=jnTdGpX49Y0:EzCr7RZps1k:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=jnTdGpX49Y0:EzCr7RZps1k:V_sGLiPBpWU" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=jnTdGpX49Y0:EzCr7RZps1k:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=jnTdGpX49Y0:EzCr7RZps1k:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=jnTdGpX49Y0:EzCr7RZps1k:gIN9vFwOqvQ" border="0"></a>\n</div>\n<img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/jnTdGpX49Y0" height="1" width="1" alt="">\n</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/vCWMs-_IXug" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/jnTdGpX49Y0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:53:"http://www.echodesplugins.li-an.fr/plugins/lazy-load/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:103:"L&#039;Ã©cho des plugins WordPress : Lazy Load, pour un chargement moins lourd de vos nombreuses images";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/ml0yh7H3qhQ/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:86:"<div>&Eacute;vitez de charger toutes vos images d''un coup avec l''effet Lazy Load</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-05-30T12:16:07+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"Li-An";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:190:"<div>&Eacute;vitez de charger toutes vos images d''un coup avec l''effet Lazy Load</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/ml0yh7H3qhQ" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:53:"http://www.echodesplugins.li-an.fr/plugins/lazy-load/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:35:"http://www.geekeries.fr/gerer-page/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:44:"Geekeries : GÃ©rer plus Facilement vos Pages";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/fa7gilqv5zE/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:323:"<div>\n<p>Advanced Page Manager est une puissante extension WordPress capable de g&eacute;rer vos dizaines de pages WordPress.</p>\n<p>Cet article <a href="http://www.geekeries.fr/gerer-page/">G&eacute;rer plus Facilement vos Pages</a> est apparu en premier sur <a href="http://www.geekeries.fr/">Geekeries.fr</a>.</p>\n</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-05-28T21:30:12+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Benjamin Lupu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:427:"<div>\n<p>Advanced Page Manager est une puissante extension WordPress capable de g&eacute;rer vos dizaines de pages WordPress.</p>\n<p>Cet article <a href="http://www.geekeries.fr/gerer-page/">G&eacute;rer plus Facilement vos Pages</a> est apparu en premier sur <a href="http://www.geekeries.fr/">Geekeries.fr</a>.</p>\n</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/fa7gilqv5zE" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.geekeries.fr/gerer-page/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:51:"http://wpformation.com/connaitre-serveur-wordpress/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:59:"WP Formation : Tout connaitre du serveur de votre WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/vYbu3WBs3_0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1966:"<div>\n<p><img width="849" height="566" src="http://wpformation.com/wp-content/uploads/2016/05/infos-serveur-wordpress.jpg" class="attachment-Large size-Large wp-post-image" alt="informations-serveur-wordpress" style="display: block; margin-left: 0px; margin-right: auto; margin-top:10px; margin-bottom:10px; max-width: 640px; max-height: 400px; " srcset="http://wpformation.com/wp-content/uploads/2016/05/infos-serveur-wordpress.jpg 849w, http://wpformation.com/wp-content/uploads/2016/05/infos-serveur-wordpress-300x200.jpg 300w, http://wpformation.com/wp-content/uploads/2016/05/infos-serveur-wordpress-768x512.jpg 768w, http://wpformation.com/wp-content/uploads/2016/05/infos-serveur-wordpress-600x400.jpg 600w, http://wpformation.com/wp-content/uploads/2016/05/infos-serveur-wordpress-610x407.jpg 610w, http://wpformation.com/wp-content/uploads/2016/05/infos-serveur-wordpress-810x540.jpg 810w" sizes="(max-width: 849px) 100vw, 849px">Il est parfois utile de conna&icirc;tre les caract&eacute;ristiques du serveur qui h&eacute;berge votre WordPress. Que ce soit pour d&eacute;bugger ou pour v&eacute;rifier la compatibilit&eacute;/pr&eacute; requis d''un plugin, bien connaitre les limites de votre h&eacute;bergement peut s''av&eacute;rer tr&egrave;s utile... &nbsp; Pr&eacute; requis serveur pour votre WordPress Pour rappel, voici les pr&eacute; requis que recommande WordPress pour [&hellip;]</p>\n<p>\n</p>\n<hr>\n<a rel="nofollow" href="http://wpformation.com/connaitre-serveur-wordpress/">Tout connaitre du serveur de votre WordPress</a> est un article de <a title="Formation WordPress Ecommerce" href="http://wpformation.com/">WP Formation</a>\n<p><a href="http://wpformation.com/formation-wordpress/">Formation WordPress</a> &amp; <a href="http://wpformation.com/formation-woocommerce-e-commerce/">WooCommerce</a> - Pour ne rien manquer : <a href="http://wpformation.com/abonnement-newsletter-wpf/">Abonnez-vous &agrave; la newsletter</a> !<br></p>\n<hr>\n</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-05-25T09:20:22+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"WPFormation";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2070:"<div>\n<p><img width="849" height="566" src="http://wpformation.com/wp-content/uploads/2016/05/infos-serveur-wordpress.jpg" class="attachment-Large size-Large wp-post-image" alt="informations-serveur-wordpress" style="display: block; margin-left: 0px; margin-right: auto; margin-top:10px; margin-bottom:10px; max-width: 640px; max-height: 400px; " srcset="http://wpformation.com/wp-content/uploads/2016/05/infos-serveur-wordpress.jpg 849w, http://wpformation.com/wp-content/uploads/2016/05/infos-serveur-wordpress-300x200.jpg 300w, http://wpformation.com/wp-content/uploads/2016/05/infos-serveur-wordpress-768x512.jpg 768w, http://wpformation.com/wp-content/uploads/2016/05/infos-serveur-wordpress-600x400.jpg 600w, http://wpformation.com/wp-content/uploads/2016/05/infos-serveur-wordpress-610x407.jpg 610w, http://wpformation.com/wp-content/uploads/2016/05/infos-serveur-wordpress-810x540.jpg 810w" sizes="(max-width: 849px) 100vw, 849px">Il est parfois utile de conna&icirc;tre les caract&eacute;ristiques du serveur qui h&eacute;berge votre WordPress. Que ce soit pour d&eacute;bugger ou pour v&eacute;rifier la compatibilit&eacute;/pr&eacute; requis d''un plugin, bien connaitre les limites de votre h&eacute;bergement peut s''av&eacute;rer tr&egrave;s utile... &nbsp; Pr&eacute; requis serveur pour votre WordPress Pour rappel, voici les pr&eacute; requis que recommande WordPress pour [&hellip;]</p>\n<p>\n</p>\n<hr>\n<a rel="nofollow" href="http://wpformation.com/connaitre-serveur-wordpress/">Tout connaitre du serveur de votre WordPress</a> est un article de <a title="Formation WordPress Ecommerce" href="http://wpformation.com/">WP Formation</a>\n<p><a href="http://wpformation.com/formation-wordpress/">Formation WordPress</a> &amp; <a href="http://wpformation.com/formation-woocommerce-e-commerce/">WooCommerce</a> - Pour ne rien manquer : <a href="http://wpformation.com/abonnement-newsletter-wpf/">Abonnez-vous &agrave; la newsletter</a> !<br></p>\n<hr>\n</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/vYbu3WBs3_0" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:51:"http://wpformation.com/connaitre-serveur-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:66:"http://www.geekpress.fr/tutoriel-advanced-custom-fields-debutants/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:54:"GeekPress : Advanced Custom Fields pour les dÃ©butants";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/cZNrTh7vX1w/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:727:"<div>\n<p>ACF est devenu une extension incontournable ces derni&egrave;res ann&eacute;es pour le d&eacute;veloppement de sites WordPress. Utilis&eacute; par les particuliers comme par les professionnels, elle vous offre la possibilit&eacute; d&rsquo;ajouter des champs personnalis&eacute;s dans vos articles et pages. Voyons aujourd&rsquo;hui comment cr&eacute;er votre premier groupe de champs ! Cet article est le premier d&rsquo;une s&eacute;rie de [&hellip;]</p>\n<p>Cet article <a rel="nofollow" href="http://www.geekpress.fr/tutoriel-advanced-custom-fields-debutants/">Advanced Custom Fields pour les d&eacute;butants</a> est apparu en premier sur <a rel="nofollow" href="http://www.geekpress.fr/">GeekPress</a>.</p>\n</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-05-24T12:02:43+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Maxime BJ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:831:"<div>\n<p>ACF est devenu une extension incontournable ces derni&egrave;res ann&eacute;es pour le d&eacute;veloppement de sites WordPress. Utilis&eacute; par les particuliers comme par les professionnels, elle vous offre la possibilit&eacute; d&rsquo;ajouter des champs personnalis&eacute;s dans vos articles et pages. Voyons aujourd&rsquo;hui comment cr&eacute;er votre premier groupe de champs ! Cet article est le premier d&rsquo;une s&eacute;rie de [&hellip;]</p>\n<p>Cet article <a rel="nofollow" href="http://www.geekpress.fr/tutoriel-advanced-custom-fields-debutants/">Advanced Custom Fields pour les d&eacute;butants</a> est apparu en premier sur <a rel="nofollow" href="http://www.geekpress.fr/">GeekPress</a>.</p>\n</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/cZNrTh7vX1w" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:66:"http://www.geekpress.fr/tutoriel-advanced-custom-fields-debutants/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/83d0IWEmxkM/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:45:"WordPress Francophone : Des nouvelles de WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/DhFErLRjsP8/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:7619:"<div>\n<p>Le 21 d&eacute;cembre dernier nous avions le plaisir de vous faire partager des informations &agrave; propos du renouveau de l&rsquo;association WordPress Francophone. Ces derniers mois ont &eacute;t&eacute; l&rsquo;occasion de tout remettre &agrave; plat et nous souhaitions vous donner des nouvelles sur les diff&eacute;rents chantiers en cours. C&rsquo;est &eacute;galement le moment de faire appel &agrave; la communaut&eacute; pour constituer des groupes de travail sur les deux chantiers prioritaires : la refonte du site et l&rsquo;avenir du forum.</p>\n<p><span id="more-7561"></span></p>\n<h2>Refonte du site</h2>\n<p>Comme vous le savez tous, le site actuel de l&rsquo;association est d&eacute;pass&eacute;,&nbsp;tant en terme d&rsquo;aspect, qu&rsquo;en terme de fonctionnalit&eacute;s. Au fil du temps le site est devenu compliqu&eacute; &agrave; maintenir &ndash; pour ne pas dire impossible, et les fonctionnalit&eacute;s qu&rsquo;ils proposent ne r&eacute;pondent plus aux besoins r&eacute;els de la communaut&eacute;. Il &eacute;tait donc plus que temps d&rsquo;entamer la refonte !</p>\n<p>Nous avons d&rsquo;ores et d&eacute;j&agrave; d&eacute;finis les objectifs du futur site, d&eacute;velopp&eacute; de nouvelles fonctionnalit&eacute;s, et &eacute;bauch&eacute;&nbsp;l&rsquo;arborescence.</p>\n<p>Le site en&nbsp;cours de d&eacute;veloppement :</p>\n<ul>\n<li>Permettra aux membres de g&eacute;rer leurs adh&eacute;sions en ligne ;</li>\n<li>Proposera un annuaire des communaut&eacute;s et des &eacute;v&eacute;nements ;</li>\n<li>Donnera la possibilit&eacute; de poster / r&eacute;pondre &agrave; des offres d&rsquo;emploi ;</li>\n<li>Indiquera de mani&egrave;re claire comment trouver de l&rsquo;aide et comment&nbsp;contribuer &agrave; l&rsquo;&eacute;cosyst&egrave;me WordPress.</li>\n</ul>\n<p>Le site va aussi changer de nom et d&rsquo;URL afin de respecter <a href="https://wordpress.org/about/domains/" target="_blank">les r&egrave;gles de la fondation WordPress concernant la trademark</a>. Vous nous retrouverez bient&ocirc;t sur <a href="http://wpfr.net/" target="_blank">wpfr.net</a> !</p>\n<p>Le chantier est maintenant assez avanc&eacute;&nbsp;pour proposer &agrave; ceux qui le souhaitent de s&rsquo;investir au sein d&rsquo;un groupe de travail dont l&rsquo;objectif est la finalisation&nbsp;de ce nouveau site. Nous cherchons des volontaires :</p>\n<ul>\n<li>3 personnes pour la r&eacute;daction des contenus du futur site (les contenus existants sont d&eacute;j&agrave; r&eacute;import&eacute;s sur le site de d&eacute;veloppement) ;</li>\n<li>2 web-designers&nbsp;pour intervenir sur la charte graphique de l&rsquo;association, et sur la maquette du site.</li>\n</ul>\n<p>Si vous &ecirc;tes tent&eacute;s par l&rsquo;aventure, <strong>&eacute;crivez-nous &agrave; contact[at]wpfr.net</strong>.</p>\n<h2>L&rsquo;avenir du forum</h2>\n<p>Le forum d&rsquo;entraide est la section du site destin&eacute;e &agrave; l&rsquo;accompagnement des utilisateurs francophone du CMS. Si vous&nbsp;rencontrez un soucis dans l&rsquo;utilisation de WordPress, c&rsquo;est un des endroits ou vous trouverez le plus facilement de l&rsquo;aide. Les mod&eacute;rateurs b&eacute;n&eacute;voles y font d&rsquo;ailleurs un travail formidable qu&rsquo;il convient de remercier !</p>\n<p>Malheureusement, l&rsquo;outil qui fait tourner ce forum est lui aussi vieillissant &ndash; il s&rsquo;agit de PunBB.&nbsp;Lors de la refonte <strong>nous devons basculer vers une solution plus moderne</strong>. Le forum existant sera mis en &laquo; lecture seule &raquo; afin de toujours pouvoir relire les anciens sujets, mais vous ne pourrez plus d&eacute;poser, ni r&eacute;pondre aux sujets existants.</p>\n<p>Pour le choix, la mise en place et le suivi de cette nouvelle solution, nous souhaitons &eacute;galement&nbsp;constituer un groupe de travail. <strong>Nous invitons celles et ceux qui souhaitent s&rsquo;investir sur la refonte du&nbsp;forum d&rsquo;entraide &agrave; nous &eacute;crire sur contact[at]wpfr.net</strong>.</p>\n<p>Concernant le d&eacute;bat sur les diff&eacute;rents outils disponibles &agrave; ce jour pour obtenir du support (forum, Facebook, Twitter, Slack, etc.), nous consid&eacute;rons qu&rsquo;il n&rsquo;a pas lieu d&rsquo;&ecirc;tre. C&rsquo;est &agrave; chacun d&rsquo;opter pour l&rsquo;outil qui lui convient le mieux avec ses avantages et ses inconv&eacute;nients.</p>\n<h2>Changement de tr&eacute;sorier</h2>\n<p>&Eacute;milie Lebrun a r&eacute;cemment souhait&eacute; d&eacute;missionner du bureau de l&rsquo;association ; c&rsquo;est donc Willy Bahuaud qui a pris la place de tr&eacute;sorier. Le bureau est donc maintenant constitu&eacute; de Beno&icirc;t Catherineau (secr&eacute;taire), Willy Bahuaud (tr&eacute;sorier) et Aur&eacute;lien Denis (pr&eacute;sident).</p>\n<p>Les objectifs de cette &eacute;quipe reste inchang&eacute;s <strong>: mettre en place les outils permettant&nbsp;&agrave; tous ceux qui le souhaitent, particuliers et entreprises, d&rsquo;adh&eacute;rer &agrave; l&rsquo;association</strong>.</p>\n<p>Nous sommes dans une ann&eacute;e de transition tant sur le plan administratif que technique, cela prend du temps mais nous y travaillons.</p>\n<h2>Coup d&rsquo;&oelig;il sur le&nbsp;planning</h2>\n<p>Au niveau de la progression&nbsp;des&nbsp;diff&eacute;rentes actions, il est important de bien comprendre l&rsquo;imbrication des actions &agrave; mener :</p>\n<ul>\n<li>Les changements de statuts et de si&egrave;ge social sont quasiment finalis&eacute;s, nous attendons la validation officielle de la pr&eacute;fecture ;</li>\n<li>Le transfert du compte bancaire sera effectif sous peu, cela d&eacute;pendait des statuts ;</li>\n<li>Le nom de domaine et surtout l&rsquo;activation du certificat SSL d&eacute;pendent de l&rsquo;officialisation du nouveau si&egrave;ge ;</li>\n<li>L&rsquo;ouverture de l&rsquo;association &agrave; tous d&eacute;pend de la mise en ligne d&rsquo;un syst&egrave;me pour g&eacute;rer de mani&egrave;re efficace les adh&eacute;sions / renouvellements d&rsquo;o&ugrave; la mise en place du groupe de travail pour le site Internet ;</li>\n</ul>\n<p>La <strong>date limite pour postuler est fix&eacute;e au 31 mai 2016</strong>. Un chef de chantier sera choisi pour tenir inform&eacute; le bureau des &eacute;volutions men&eacute;es et ainsi communiquer de l&rsquo;&eacute;tat d&rsquo;avancement par l&rsquo;interm&eacute;diaire de ce blog.</p>\n<p>Nous sommes &agrave; votre disposition pour r&eacute;pondre &agrave; toutes vos interrogations et nous comptons sur vous pour que demain WPFR soit votre association aux services de chacun d&rsquo;entre vous !</p>\n<p>&nbsp;</p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=83d0IWEmxkM:sWCGB30URXc:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=83d0IWEmxkM:sWCGB30URXc:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=83d0IWEmxkM:sWCGB30URXc:V_sGLiPBpWU" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=83d0IWEmxkM:sWCGB30URXc:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=83d0IWEmxkM:sWCGB30URXc:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=83d0IWEmxkM:sWCGB30URXc:gIN9vFwOqvQ" border="0"></a>\n</div>\n<img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/83d0IWEmxkM" height="1" width="1" alt="">\n</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-05-23T12:43:36+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"AurÃ©lien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:7723:"<div>\n<p>Le 21 d&eacute;cembre dernier nous avions le plaisir de vous faire partager des informations &agrave; propos du renouveau de l&rsquo;association WordPress Francophone. Ces derniers mois ont &eacute;t&eacute; l&rsquo;occasion de tout remettre &agrave; plat et nous souhaitions vous donner des nouvelles sur les diff&eacute;rents chantiers en cours. C&rsquo;est &eacute;galement le moment de faire appel &agrave; la communaut&eacute; pour constituer des groupes de travail sur les deux chantiers prioritaires : la refonte du site et l&rsquo;avenir du forum.</p>\n<p><span id="more-7561"></span></p>\n<h2>Refonte du site</h2>\n<p>Comme vous le savez tous, le site actuel de l&rsquo;association est d&eacute;pass&eacute;,&nbsp;tant en terme d&rsquo;aspect, qu&rsquo;en terme de fonctionnalit&eacute;s. Au fil du temps le site est devenu compliqu&eacute; &agrave; maintenir &ndash; pour ne pas dire impossible, et les fonctionnalit&eacute;s qu&rsquo;ils proposent ne r&eacute;pondent plus aux besoins r&eacute;els de la communaut&eacute;. Il &eacute;tait donc plus que temps d&rsquo;entamer la refonte !</p>\n<p>Nous avons d&rsquo;ores et d&eacute;j&agrave; d&eacute;finis les objectifs du futur site, d&eacute;velopp&eacute; de nouvelles fonctionnalit&eacute;s, et &eacute;bauch&eacute;&nbsp;l&rsquo;arborescence.</p>\n<p>Le site en&nbsp;cours de d&eacute;veloppement :</p>\n<ul>\n<li>Permettra aux membres de g&eacute;rer leurs adh&eacute;sions en ligne ;</li>\n<li>Proposera un annuaire des communaut&eacute;s et des &eacute;v&eacute;nements ;</li>\n<li>Donnera la possibilit&eacute; de poster / r&eacute;pondre &agrave; des offres d&rsquo;emploi ;</li>\n<li>Indiquera de mani&egrave;re claire comment trouver de l&rsquo;aide et comment&nbsp;contribuer &agrave; l&rsquo;&eacute;cosyst&egrave;me WordPress.</li>\n</ul>\n<p>Le site va aussi changer de nom et d&rsquo;URL afin de respecter <a href="https://wordpress.org/about/domains/" target="_blank">les r&egrave;gles de la fondation WordPress concernant la trademark</a>. Vous nous retrouverez bient&ocirc;t sur <a href="http://wpfr.net/" target="_blank">wpfr.net</a> !</p>\n<p>Le chantier est maintenant assez avanc&eacute;&nbsp;pour proposer &agrave; ceux qui le souhaitent de s&rsquo;investir au sein d&rsquo;un groupe de travail dont l&rsquo;objectif est la finalisation&nbsp;de ce nouveau site. Nous cherchons des volontaires :</p>\n<ul>\n<li>3 personnes pour la r&eacute;daction des contenus du futur site (les contenus existants sont d&eacute;j&agrave; r&eacute;import&eacute;s sur le site de d&eacute;veloppement) ;</li>\n<li>2 web-designers&nbsp;pour intervenir sur la charte graphique de l&rsquo;association, et sur la maquette du site.</li>\n</ul>\n<p>Si vous &ecirc;tes tent&eacute;s par l&rsquo;aventure, <strong>&eacute;crivez-nous &agrave; contact[at]wpfr.net</strong>.</p>\n<h2>L&rsquo;avenir du forum</h2>\n<p>Le forum d&rsquo;entraide est la section du site destin&eacute;e &agrave; l&rsquo;accompagnement des utilisateurs francophone du CMS. Si vous&nbsp;rencontrez un soucis dans l&rsquo;utilisation de WordPress, c&rsquo;est un des endroits ou vous trouverez le plus facilement de l&rsquo;aide. Les mod&eacute;rateurs b&eacute;n&eacute;voles y font d&rsquo;ailleurs un travail formidable qu&rsquo;il convient de remercier !</p>\n<p>Malheureusement, l&rsquo;outil qui fait tourner ce forum est lui aussi vieillissant &ndash; il s&rsquo;agit de PunBB.&nbsp;Lors de la refonte <strong>nous devons basculer vers une solution plus moderne</strong>. Le forum existant sera mis en &laquo; lecture seule &raquo; afin de toujours pouvoir relire les anciens sujets, mais vous ne pourrez plus d&eacute;poser, ni r&eacute;pondre aux sujets existants.</p>\n<p>Pour le choix, la mise en place et le suivi de cette nouvelle solution, nous souhaitons &eacute;galement&nbsp;constituer un groupe de travail. <strong>Nous invitons celles et ceux qui souhaitent s&rsquo;investir sur la refonte du&nbsp;forum d&rsquo;entraide &agrave; nous &eacute;crire sur contact[at]wpfr.net</strong>.</p>\n<p>Concernant le d&eacute;bat sur les diff&eacute;rents outils disponibles &agrave; ce jour pour obtenir du support (forum, Facebook, Twitter, Slack, etc.), nous consid&eacute;rons qu&rsquo;il n&rsquo;a pas lieu d&rsquo;&ecirc;tre. C&rsquo;est &agrave; chacun d&rsquo;opter pour l&rsquo;outil qui lui convient le mieux avec ses avantages et ses inconv&eacute;nients.</p>\n<h2>Changement de tr&eacute;sorier</h2>\n<p>&Eacute;milie Lebrun a r&eacute;cemment souhait&eacute; d&eacute;missionner du bureau de l&rsquo;association ; c&rsquo;est donc Willy Bahuaud qui a pris la place de tr&eacute;sorier. Le bureau est donc maintenant constitu&eacute; de Beno&icirc;t Catherineau (secr&eacute;taire), Willy Bahuaud (tr&eacute;sorier) et Aur&eacute;lien Denis (pr&eacute;sident).</p>\n<p>Les objectifs de cette &eacute;quipe reste inchang&eacute;s <strong>: mettre en place les outils permettant&nbsp;&agrave; tous ceux qui le souhaitent, particuliers et entreprises, d&rsquo;adh&eacute;rer &agrave; l&rsquo;association</strong>.</p>\n<p>Nous sommes dans une ann&eacute;e de transition tant sur le plan administratif que technique, cela prend du temps mais nous y travaillons.</p>\n<h2>Coup d&rsquo;&oelig;il sur le&nbsp;planning</h2>\n<p>Au niveau de la progression&nbsp;des&nbsp;diff&eacute;rentes actions, il est important de bien comprendre l&rsquo;imbrication des actions &agrave; mener :</p>\n<ul>\n<li>Les changements de statuts et de si&egrave;ge social sont quasiment finalis&eacute;s, nous attendons la validation officielle de la pr&eacute;fecture ;</li>\n<li>Le transfert du compte bancaire sera effectif sous peu, cela d&eacute;pendait des statuts ;</li>\n<li>Le nom de domaine et surtout l&rsquo;activation du certificat SSL d&eacute;pendent de l&rsquo;officialisation du nouveau si&egrave;ge ;</li>\n<li>L&rsquo;ouverture de l&rsquo;association &agrave; tous d&eacute;pend de la mise en ligne d&rsquo;un syst&egrave;me pour g&eacute;rer de mani&egrave;re efficace les adh&eacute;sions / renouvellements d&rsquo;o&ugrave; la mise en place du groupe de travail pour le site Internet ;</li>\n</ul>\n<p>La <strong>date limite pour postuler est fix&eacute;e au 31 mai 2016</strong>. Un chef de chantier sera choisi pour tenir inform&eacute; le bureau des &eacute;volutions men&eacute;es et ainsi communiquer de l&rsquo;&eacute;tat d&rsquo;avancement par l&rsquo;interm&eacute;diaire de ce blog.</p>\n<p>Nous sommes &agrave; votre disposition pour r&eacute;pondre &agrave; toutes vos interrogations et nous comptons sur vous pour que demain WPFR soit votre association aux services de chacun d&rsquo;entre vous !</p>\n<p>&nbsp;</p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=83d0IWEmxkM:sWCGB30URXc:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=83d0IWEmxkM:sWCGB30URXc:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=83d0IWEmxkM:sWCGB30URXc:V_sGLiPBpWU" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=83d0IWEmxkM:sWCGB30URXc:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=83d0IWEmxkM:sWCGB30URXc:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=83d0IWEmxkM:sWCGB30URXc:gIN9vFwOqvQ" border="0"></a>\n</div>\n<img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/83d0IWEmxkM" height="1" width="1" alt="">\n</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/DhFErLRjsP8" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/83d0IWEmxkM/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:61:"https://wpchannel.com/masquer-labels-champs-de-gravity-forms/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:66:"WordPress Channel : Masquer les labels des champs de Gravity Forms";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/jVZ7x9M97nA/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:819:"<div>\n<p>Depuis la version 1.9 de Gravity Forms, il n&rsquo;est plus possible de masquer les labels pour les champs d&rsquo;un formulaire. Cette d&eacute;cision a &eacute;t&eacute; prise afin d&rsquo;am&eacute;liorer l&rsquo;accessibilit&eacute;, notamment pour les personnes malvoyantes. Toutefois, cette option peut nous faire d&eacute;faut dans certains cas. Une ligne de code permet de la r&eacute;tablir, voici donc une astuce [&hellip;]</p>\n<p><a rel="nofollow" href="https://wpchannel.com/author/aurelien-denis/">Aur&eacute;lien Denis</a> - <a rel="nofollow" href="https://wpchannel.com/">WordPress Channel - Tutoriels, th&egrave;mes &amp; plugins WordPress</a> - <a rel="nofollow" href="https://wpchannel.com/masquer-labels-champs-de-gravity-forms/">Masquer les labels des champs de Gravity Forms</a></p>\n</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-05-23T07:50:19+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"AurÃ©lien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:923:"<div>\n<p>Depuis la version 1.9 de Gravity Forms, il n&rsquo;est plus possible de masquer les labels pour les champs d&rsquo;un formulaire. Cette d&eacute;cision a &eacute;t&eacute; prise afin d&rsquo;am&eacute;liorer l&rsquo;accessibilit&eacute;, notamment pour les personnes malvoyantes. Toutefois, cette option peut nous faire d&eacute;faut dans certains cas. Une ligne de code permet de la r&eacute;tablir, voici donc une astuce [&hellip;]</p>\n<p><a rel="nofollow" href="https://wpchannel.com/author/aurelien-denis/">Aur&eacute;lien Denis</a> - <a rel="nofollow" href="https://wpchannel.com/">WordPress Channel - Tutoriels, th&egrave;mes &amp; plugins WordPress</a> - <a rel="nofollow" href="https://wpchannel.com/masquer-labels-champs-de-gravity-forms/">Masquer les labels des champs de Gravity Forms</a></p>\n</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/jVZ7x9M97nA" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wpchannel.com/masquer-labels-champs-de-gravity-forms/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:50:"http://www.echodesplugins.li-an.fr/news/wp-fr-net/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:85:"L&#039;Ã©cho des plugins WordPress : WP-fr.net: yâ€™a-t-il un pilote dans lâ€™avion ?";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/dP6MD47rHeE/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:104:"<div>R&eacute;flexion diverses sur la communaut&eacute; francophone Wordpress et son site officiel</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-05-21T16:44:32+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"Li-An";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:208:"<div>R&eacute;flexion diverses sur la communaut&eacute; francophone Wordpress et son site officiel</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/dP6MD47rHeE" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:50:"http://www.echodesplugins.li-an.fr/news/wp-fr-net/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:79:"https://fr.wordpress.org/2016/05/18/retour-du-global-wordpress-translation-day/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:54:"FranÃ§ais : Retour du Global WordPress Translation Day";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/zymro15RRsU/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4206:"<div>\n<p>Le GWTD s&rsquo;est tenu le 24 avril dernier. Cette premi&egrave;re &eacute;dition a &eacute;t&eacute; un v&eacute;ritable succ&egrave;s si l&rsquo;on se r&eacute;f&egrave;re aux chiffres du document ci-dessous :<br><a href="https://fr.wordpress.org/files/2016/05/WPGTD-EN-FR.jpg"><img class="aligncenter wp-image-479 size-large" src="https://fr.wordpress.org/files/2016/05/WPGTD-EN-FR-770x1024.jpg" alt="WPGTD-EN-FR" width="692" height="920" srcset="https://fr.wordpress.org/files/2016/05/WPGTD-EN-FR-770x1024.jpg 770w, https://fr.wordpress.org/files/2016/05/WPGTD-EN-FR-226x300.jpg 226w, https://fr.wordpress.org/files/2016/05/WPGTD-EN-FR-768x1021.jpg 768w, https://fr.wordpress.org/files/2016/05/WPGTD-EN-FR.jpg 1000w" sizes="(max-width: 692px) 100vw, 692px"></a></p>\n<h2>Pour ce qui est de la communaut&eacute; fran&ccedil;aise&nbsp;:</h2>\n<p>Cette journ&eacute;e a &eacute;t&eacute; un v&eacute;ritable plaisir &agrave; organiser et &agrave; animer, riche en rencontres, en adaptations aux attentes et besoins de toutes les personnes pr&eacute;sentes au Node de Bordeaux.</p>\n<ul>\n<li>22 extensions et th&egrave;mes ont &eacute;t&eacute; traduits et valid&eacute;s.</li>\n<li>3 traducteurs ont rejoint l&rsquo;&eacute;quipe des responsables de traduction en tant que PTE.</li>\n<li>Le glossaire a &eacute;t&eacute; actualis&eacute;.</li>\n<li>Une &eacute;bauche de travail sur les termes &eacute;pic&egrave;nes a &eacute;t&eacute; lanc&eacute;e.</li>\n<li>Un <a href="https://docs.google.com/spreadsheets/d/1NjmkCg7qHuTALBC3DES6mQLIq6xsq6xr9Bq4JOa4Wlk/edit#gid=0">Google doc</a> a &eacute;t&eacute; cr&eacute;&eacute; &agrave; l&rsquo;occasion pour regrouper les termes qui n&eacute;cessitent d&rsquo;&ecirc;tre int&eacute;gr&eacute;s au glossaire ou dans la r&eacute;flexion sur les termes &eacute;pic&egrave;nes.</li>\n</ul>\n<p>Mais au final, c&rsquo;est surtout une Communaut&eacute; de traducteurs et de traductrices que j&rsquo;ai vu travailler ensemble, curieuse et motiv&eacute;e pour <strong>vous</strong> fournir les meilleures trads possibles. Et &ccedil;a, cela ne se chiffre pas et cela vaut toutes les statistiques que vous voulez.</p>\n<p>Alors encore merci @sharebordeaux, @alysko (et &agrave; toute sa famille), @<span class="message_body">juliefrance33, @crash_47 (et &agrave; toute sa famille), @nicolasricher, @bastienho, @Geronimo (et &agrave; Abi), @css31, * </span></p>\n<p>Une sp&eacute;ciale d&eacute;dicace @rashely pour nous avoir donn&eacute; acc&egrave;s au Node et @wolforg (wolfrog pour l&rsquo;occasion) qui a tenu le rythme des validations tout au long de la journ&eacute;e via le Slack de la communaut&eacute;.</p>\n<p>Je vous donne rendez-vous l&rsquo;ann&eacute;e prochaine pour un nouveau GWTD et pr&eacute;parez-vous &agrave; des changements dans les traductions dans les prochaines versions de WordPress <img src="https://s.w.org/images/core/emoji/72x72/1f642.png" alt="&#128578;" class="wp-smiley" style="height: 1em; max-height: 1em;"></p>\n<p>Et en attendant si vous voulez revoir la session consacr&eacute;e &agrave; la traduction fran&ccedil;aise, la vid&eacute;o est disponible <a href="https://www.crowdcast.io/e/wptranslationday/register">ici</a> et les slides <a href="https://fxbenard.com/traduire-wordpress-francais/">ici</a>.</p>\n<p><a href="https://fr.wordpress.org/files/2016/05/WPGTD-FR.jpg"><img class="aligncenter wp-image-480 size-large" src="https://fr.wordpress.org/files/2016/05/WPGTD-FR-770x1024.jpg" alt="WPGTD-FR" width="692" height="920" srcset="https://fr.wordpress.org/files/2016/05/WPGTD-FR-770x1024.jpg 770w, https://fr.wordpress.org/files/2016/05/WPGTD-FR-226x300.jpg 226w, https://fr.wordpress.org/files/2016/05/WPGTD-FR-768x1021.jpg 768w, https://fr.wordpress.org/files/2016/05/WPGTD-FR.jpg 1000w" sizes="(max-width: 692px) 100vw, 692px"></a>** Je tenais &agrave; m&rsquo;excuser aupr&egrave;s des personnes que j&rsquo;aurais pu oublier de nommer et qui &eacute;taient pr&eacute;sentes lors de cette journ&eacute;e. N&rsquo;h&eacute;sitez pas &agrave; m&rsquo;indiquer vos pseudos sur le Slack #gtd, je les ajouterais dans l&rsquo;article. Big up &agrave; notre am&eacute;ricain de passage et &agrave; notre typographe.</p>\n</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-05-18T08:57:05+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"fxbenard";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4310:"<div>\n<p>Le GWTD s&rsquo;est tenu le 24 avril dernier. Cette premi&egrave;re &eacute;dition a &eacute;t&eacute; un v&eacute;ritable succ&egrave;s si l&rsquo;on se r&eacute;f&egrave;re aux chiffres du document ci-dessous :<br><a href="https://fr.wordpress.org/files/2016/05/WPGTD-EN-FR.jpg"><img class="aligncenter wp-image-479 size-large" src="https://fr.wordpress.org/files/2016/05/WPGTD-EN-FR-770x1024.jpg" alt="WPGTD-EN-FR" width="692" height="920" srcset="https://fr.wordpress.org/files/2016/05/WPGTD-EN-FR-770x1024.jpg 770w, https://fr.wordpress.org/files/2016/05/WPGTD-EN-FR-226x300.jpg 226w, https://fr.wordpress.org/files/2016/05/WPGTD-EN-FR-768x1021.jpg 768w, https://fr.wordpress.org/files/2016/05/WPGTD-EN-FR.jpg 1000w" sizes="(max-width: 692px) 100vw, 692px"></a></p>\n<h2>Pour ce qui est de la communaut&eacute; fran&ccedil;aise&nbsp;:</h2>\n<p>Cette journ&eacute;e a &eacute;t&eacute; un v&eacute;ritable plaisir &agrave; organiser et &agrave; animer, riche en rencontres, en adaptations aux attentes et besoins de toutes les personnes pr&eacute;sentes au Node de Bordeaux.</p>\n<ul>\n<li>22 extensions et th&egrave;mes ont &eacute;t&eacute; traduits et valid&eacute;s.</li>\n<li>3 traducteurs ont rejoint l&rsquo;&eacute;quipe des responsables de traduction en tant que PTE.</li>\n<li>Le glossaire a &eacute;t&eacute; actualis&eacute;.</li>\n<li>Une &eacute;bauche de travail sur les termes &eacute;pic&egrave;nes a &eacute;t&eacute; lanc&eacute;e.</li>\n<li>Un <a href="https://docs.google.com/spreadsheets/d/1NjmkCg7qHuTALBC3DES6mQLIq6xsq6xr9Bq4JOa4Wlk/edit#gid=0">Google doc</a> a &eacute;t&eacute; cr&eacute;&eacute; &agrave; l&rsquo;occasion pour regrouper les termes qui n&eacute;cessitent d&rsquo;&ecirc;tre int&eacute;gr&eacute;s au glossaire ou dans la r&eacute;flexion sur les termes &eacute;pic&egrave;nes.</li>\n</ul>\n<p>Mais au final, c&rsquo;est surtout une Communaut&eacute; de traducteurs et de traductrices que j&rsquo;ai vu travailler ensemble, curieuse et motiv&eacute;e pour <strong>vous</strong> fournir les meilleures trads possibles. Et &ccedil;a, cela ne se chiffre pas et cela vaut toutes les statistiques que vous voulez.</p>\n<p>Alors encore merci @sharebordeaux, @alysko (et &agrave; toute sa famille), @<span class="message_body">juliefrance33, @crash_47 (et &agrave; toute sa famille), @nicolasricher, @bastienho, @Geronimo (et &agrave; Abi), @css31, * </span></p>\n<p>Une sp&eacute;ciale d&eacute;dicace @rashely pour nous avoir donn&eacute; acc&egrave;s au Node et @wolforg (wolfrog pour l&rsquo;occasion) qui a tenu le rythme des validations tout au long de la journ&eacute;e via le Slack de la communaut&eacute;.</p>\n<p>Je vous donne rendez-vous l&rsquo;ann&eacute;e prochaine pour un nouveau GWTD et pr&eacute;parez-vous &agrave; des changements dans les traductions dans les prochaines versions de WordPress <img src="https://s.w.org/images/core/emoji/72x72/1f642.png" alt="&#128578;" class="wp-smiley" style="height: 1em; max-height: 1em;"></p>\n<p>Et en attendant si vous voulez revoir la session consacr&eacute;e &agrave; la traduction fran&ccedil;aise, la vid&eacute;o est disponible <a href="https://www.crowdcast.io/e/wptranslationday/register">ici</a> et les slides <a href="https://fxbenard.com/traduire-wordpress-francais/">ici</a>.</p>\n<p><a href="https://fr.wordpress.org/files/2016/05/WPGTD-FR.jpg"><img class="aligncenter wp-image-480 size-large" src="https://fr.wordpress.org/files/2016/05/WPGTD-FR-770x1024.jpg" alt="WPGTD-FR" width="692" height="920" srcset="https://fr.wordpress.org/files/2016/05/WPGTD-FR-770x1024.jpg 770w, https://fr.wordpress.org/files/2016/05/WPGTD-FR-226x300.jpg 226w, https://fr.wordpress.org/files/2016/05/WPGTD-FR-768x1021.jpg 768w, https://fr.wordpress.org/files/2016/05/WPGTD-FR.jpg 1000w" sizes="(max-width: 692px) 100vw, 692px"></a>** Je tenais &agrave; m&rsquo;excuser aupr&egrave;s des personnes que j&rsquo;aurais pu oublier de nommer et qui &eacute;taient pr&eacute;sentes lors de cette journ&eacute;e. N&rsquo;h&eacute;sitez pas &agrave; m&rsquo;indiquer vos pseudos sur le Slack #gtd, je les ajouterais dans l&rsquo;article. Big up &agrave; notre am&eacute;ricain de passage et &agrave; notre typographe.</p>\n</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/zymro15RRsU" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:79:"https://fr.wordpress.org/2016/05/18/retour-du-global-wordpress-translation-day/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:67:"http://wpformation.com/comment-importer-vos-contenus-sur-wordpress/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:60:"WP Formation : Comment importer vos contenus sur WordPress ?";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/W4AFClK1zSU/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1675:"<div>\n<p><img width="764" height="419" src="http://wpformation.com/wp-content/uploads/2016/05/export-wordpress-1.jpg" class="attachment-Large size-Large wp-post-image" alt="export-wordpress" style="display: block; margin-left: 0px; margin-right: auto; margin-top:10px; margin-bottom:10px; max-width: 640px; max-height: 400px; " srcset="http://wpformation.com/wp-content/uploads/2016/05/export-wordpress-1.jpg 764w, http://wpformation.com/wp-content/uploads/2016/05/export-wordpress-1-300x165.jpg 300w, http://wpformation.com/wp-content/uploads/2016/05/export-wordpress-1-600x329.jpg 600w, http://wpformation.com/wp-content/uploads/2016/05/export-wordpress-1-610x335.jpg 610w" sizes="(max-width: 764px) 100vw, 764px">Une refonte de site, un transfert de contenu depuis une autre plateforme que WordPress : il y a beaucoup de raisons qui peuvent vous pousser &agrave; utiliser l''importation de contenu. Vous avez des articles, des pages et des m&eacute;dias &agrave; transf&eacute;rer vers une installation WordPress ? Nous allons voir quelles solutions peuvent &ecirc;tre mises en [&hellip;]</p>\n<p>\n</p>\n<hr>\n<a rel="nofollow" href="http://wpformation.com/comment-importer-vos-contenus-sur-wordpress/">Comment importer vos contenus sur WordPress ?</a> est un article de <a title="Formation WordPress Ecommerce" href="http://wpformation.com/">WP Formation</a>\n<p><a href="http://wpformation.com/formation-wordpress/">Formation WordPress</a> &amp; <a href="http://wpformation.com/formation-woocommerce-e-commerce/">WooCommerce</a> - Pour ne rien manquer : <a href="http://wpformation.com/abonnement-newsletter-wpf/">Abonnez-vous &agrave; la newsletter</a> !<br></p>\n<hr>\n</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-05-18T08:40:50+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Alexandre";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1779:"<div>\n<p><img width="764" height="419" src="http://wpformation.com/wp-content/uploads/2016/05/export-wordpress-1.jpg" class="attachment-Large size-Large wp-post-image" alt="export-wordpress" style="display: block; margin-left: 0px; margin-right: auto; margin-top:10px; margin-bottom:10px; max-width: 640px; max-height: 400px; " srcset="http://wpformation.com/wp-content/uploads/2016/05/export-wordpress-1.jpg 764w, http://wpformation.com/wp-content/uploads/2016/05/export-wordpress-1-300x165.jpg 300w, http://wpformation.com/wp-content/uploads/2016/05/export-wordpress-1-600x329.jpg 600w, http://wpformation.com/wp-content/uploads/2016/05/export-wordpress-1-610x335.jpg 610w" sizes="(max-width: 764px) 100vw, 764px">Une refonte de site, un transfert de contenu depuis une autre plateforme que WordPress : il y a beaucoup de raisons qui peuvent vous pousser &agrave; utiliser l''importation de contenu. Vous avez des articles, des pages et des m&eacute;dias &agrave; transf&eacute;rer vers une installation WordPress ? Nous allons voir quelles solutions peuvent &ecirc;tre mises en [&hellip;]</p>\n<p>\n</p>\n<hr>\n<a rel="nofollow" href="http://wpformation.com/comment-importer-vos-contenus-sur-wordpress/">Comment importer vos contenus sur WordPress ?</a> est un article de <a title="Formation WordPress Ecommerce" href="http://wpformation.com/">WP Formation</a>\n<p><a href="http://wpformation.com/formation-wordpress/">Formation WordPress</a> &amp; <a href="http://wpformation.com/formation-woocommerce-e-commerce/">WooCommerce</a> - Pour ne rien manquer : <a href="http://wpformation.com/abonnement-newsletter-wpf/">Abonnez-vous &agrave; la newsletter</a> !<br></p>\n<hr>\n</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/W4AFClK1zSU" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:67:"http://wpformation.com/comment-importer-vos-contenus-sur-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:54:"http://www.geekpress.fr/weglot-mulitilingue-wordpress/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:83:"GeekPress : Pitch A Plugin â€“ Weglot : Le plugin de multilingue WordPress ultime ?";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/zDDvi6D_kMY/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:485:"<div>\n<p>&Agrave; l''occasion de ce 1er podcast "Pitch A Plugin", nous avons le plaisir de vous pr&eacute;senter les auteurs de Weglot et une d&eacute;monstration de leur plugin multilingue pour WordPress.</p>\n<p>Cet article <a rel="nofollow" href="http://www.geekpress.fr/weglot-mulitilingue-wordpress/">Pitch A Plugin &ndash; Weglot : Le plugin de multilingue WordPress ultime ?</a> est apparu en premier sur <a rel="nofollow" href="http://www.geekpress.fr/">GeekPress</a>.</p>\n</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-05-16T21:34:54+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Jonathan B.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:589:"<div>\n<p>&Agrave; l''occasion de ce 1er podcast "Pitch A Plugin", nous avons le plaisir de vous pr&eacute;senter les auteurs de Weglot et une d&eacute;monstration de leur plugin multilingue pour WordPress.</p>\n<p>Cet article <a rel="nofollow" href="http://www.geekpress.fr/weglot-mulitilingue-wordpress/">Pitch A Plugin &ndash; Weglot : Le plugin de multilingue WordPress ultime ?</a> est apparu en premier sur <a rel="nofollow" href="http://www.geekpress.fr/">GeekPress</a>.</p>\n</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/zDDvi6D_kMY" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:54:"http://www.geekpress.fr/weglot-mulitilingue-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:65:"http://www.echodesplugins.li-an.fr/plugins/harrys-gravatar-cache/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:61:"L&#039;Ã©cho des plugins WordPress : Harryâ€™s Gravatar Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/Gmk038qi6vs/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:40:"<div>Mettre les Gravatars en cache</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-05-12T10:35:05+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"Li-An";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:144:"<div>Mettre les Gravatars en cache</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/Gmk038qi6vs" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:65:"http://www.echodesplugins.li-an.fr/plugins/harrys-gravatar-cache/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:49:"http://wpformation.com/gerer-plusieurs-wordpress/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:62:"WP Formation : Comment gÃ©rer plusieurs WordPress facilement ?";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/4TOmPUkTq7Q/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1984:"<div>\n<p><img width="1198" height="637" src="http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress.jpg" class="attachment-Large size-Large wp-post-image" alt="gerer-plusieurs-wordpress" style="display: block; margin-left: 0px; margin-right: auto; margin-top:10px; margin-bottom:10px; max-width: 640px; max-height: 400px; " srcset="http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress.jpg 1198w, http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress-300x160.jpg 300w, http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress-768x408.jpg 768w, http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress-1024x544.jpg 1024w, http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress-600x319.jpg 600w, http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress-610x324.jpg 610w, http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress-810x431.jpg 810w, http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress-1140x606.jpg 1140w" sizes="(max-width: 1198px) 100vw, 1198px">Vous avez plusieurs sites WordPress &agrave; g&eacute;rer ? Il existe des solutions tr&egrave;s efficaces con&ccedil;ues pour automatiser et simplifier la plupart de vos t&acirc;ches quotidiennes dans la gestion de plusieurs sites. D&eacute;couvrez comment faire...</p>\n<p>\n</p>\n<hr>\n<a rel="nofollow" href="http://wpformation.com/gerer-plusieurs-wordpress/">Comment g&eacute;rer plusieurs WordPress facilement ?</a> est un article de <a title="Formation WordPress Ecommerce" href="http://wpformation.com/">WP Formation</a>\n<p><a href="http://wpformation.com/formation-wordpress/">Formation WordPress</a> &amp; <a href="http://wpformation.com/formation-woocommerce-e-commerce/">WooCommerce</a> - Pour ne rien manquer : <a href="http://wpformation.com/abonnement-newsletter-wpf/">Abonnez-vous &agrave; la newsletter</a> !<br></p>\n<hr>\n</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-05-09T08:55:28+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"WPFormation";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2088:"<div>\n<p><img width="1198" height="637" src="http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress.jpg" class="attachment-Large size-Large wp-post-image" alt="gerer-plusieurs-wordpress" style="display: block; margin-left: 0px; margin-right: auto; margin-top:10px; margin-bottom:10px; max-width: 640px; max-height: 400px; " srcset="http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress.jpg 1198w, http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress-300x160.jpg 300w, http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress-768x408.jpg 768w, http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress-1024x544.jpg 1024w, http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress-600x319.jpg 600w, http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress-610x324.jpg 610w, http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress-810x431.jpg 810w, http://wpformation.com/wp-content/uploads/2016/05/gerer-plusieurs-wordpress-1140x606.jpg 1140w" sizes="(max-width: 1198px) 100vw, 1198px">Vous avez plusieurs sites WordPress &agrave; g&eacute;rer ? Il existe des solutions tr&egrave;s efficaces con&ccedil;ues pour automatiser et simplifier la plupart de vos t&acirc;ches quotidiennes dans la gestion de plusieurs sites. D&eacute;couvrez comment faire...</p>\n<p>\n</p>\n<hr>\n<a rel="nofollow" href="http://wpformation.com/gerer-plusieurs-wordpress/">Comment g&eacute;rer plusieurs WordPress facilement ?</a> est un article de <a title="Formation WordPress Ecommerce" href="http://wpformation.com/">WP Formation</a>\n<p><a href="http://wpformation.com/formation-wordpress/">Formation WordPress</a> &amp; <a href="http://wpformation.com/formation-woocommerce-e-commerce/">WooCommerce</a> - Pour ne rien manquer : <a href="http://wpformation.com/abonnement-newsletter-wpf/">Abonnez-vous &agrave; la newsletter</a> !<br></p>\n<hr>\n</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/4TOmPUkTq7Q" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:49:"http://wpformation.com/gerer-plusieurs-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:40:"http://www.geekpress.fr/wordpress-4-5-2/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:67:"GeekPress : WordPress 4.5.2 : Mise Ã  jour de sÃ©curitÃ© critique !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/XlG2iS6i2zw/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:738:"<div>\n<p>L&rsquo;&eacute;quipe de WordPress vient de mettre &agrave; disposition la version 4.5.2. C&rsquo;est une mise &agrave; jour de s&eacute;curit&eacute; qui concerne les versions 4.5.1 et inf&eacute;rieures. WordPress 4.5.2 corrige deux failles de s&eacute;curit&eacute; critique. La librairie Pupload utilis&eacute;e pour l&rsquo;upload des images comportait une faille de type SOME (Same-Origin Method Execution), tandis que la librairie MediaElement.js [&hellip;]</p>\n<p>Cet article <a rel="nofollow" href="http://www.geekpress.fr/wordpress-4-5-2/">WordPress 4.5.2 : Mise &agrave; jour de s&eacute;curit&eacute; critique !</a> est apparu en premier sur <a rel="nofollow" href="http://www.geekpress.fr/">GeekPress</a>.</p>\n</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-05-06T23:38:07+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Jonathan B.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:842:"<div>\n<p>L&rsquo;&eacute;quipe de WordPress vient de mettre &agrave; disposition la version 4.5.2. C&rsquo;est une mise &agrave; jour de s&eacute;curit&eacute; qui concerne les versions 4.5.1 et inf&eacute;rieures. WordPress 4.5.2 corrige deux failles de s&eacute;curit&eacute; critique. La librairie Pupload utilis&eacute;e pour l&rsquo;upload des images comportait une faille de type SOME (Same-Origin Method Execution), tandis que la librairie MediaElement.js [&hellip;]</p>\n<p>Cet article <a rel="nofollow" href="http://www.geekpress.fr/wordpress-4-5-2/">WordPress 4.5.2 : Mise &agrave; jour de s&eacute;curit&eacute; critique !</a> est apparu en premier sur <a rel="nofollow" href="http://www.geekpress.fr/">GeekPress</a>.</p>\n</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/XlG2iS6i2zw" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:40:"http://www.geekpress.fr/wordpress-4-5-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:51:"http://www.echodesplugins.li-an.fr/plugins/folders/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:44:"L&#039;Ã©cho des plugins WordPress : Folders";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/rz5BkpJvkiM/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"<div>Rangez vos billets, pages et m&eacute;dias dans des r&eacute;pertoires c&ocirc;t&eacute; admin</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-05-06T18:07:31+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"Li-An";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:209:"<div>Rangez vos billets, pages et m&eacute;dias dans des r&eacute;pertoires c&ocirc;t&eacute; admin</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/rz5BkpJvkiM" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:51:"http://www.echodesplugins.li-an.fr/plugins/folders/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:65:"http://www.geekpress.fr/geekpress-wp-spread-wp-pro-grande-fusion/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:61:"GeekPress : GeekPress, WP-Spread, WP Pro : La grande fusion !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/nw2Kkhhgkus/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:674:"<div>\n<p>3 sources d&rsquo;informations WordPress fusionnent aujourd&rsquo;hui ! Afin de vous proposer un contenu plus complet nous avons d&eacute;cid&eacute; de joindre nos forces. Jonathan, de WP Media, tenait auparavant le blog GeekPress, proposant de nombreux tutoriels techniques autour de WordPress. Mais quand il a lanc&eacute; WP Rocket, il y a quelques ann&eacute;es de cela, il n&rsquo;a [&hellip;]</p>\n<p>Cet article <a rel="nofollow" href="http://www.geekpress.fr/geekpress-wp-spread-wp-pro-grande-fusion/">GeekPress, WP-Spread, WP Pro : La grande fusion !</a> est apparu en premier sur <a rel="nofollow" href="http://www.geekpress.fr/">GeekPress</a>.</p>\n</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-05-04T09:19:15+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Maxime BJ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:778:"<div>\n<p>3 sources d&rsquo;informations WordPress fusionnent aujourd&rsquo;hui ! Afin de vous proposer un contenu plus complet nous avons d&eacute;cid&eacute; de joindre nos forces. Jonathan, de WP Media, tenait auparavant le blog GeekPress, proposant de nombreux tutoriels techniques autour de WordPress. Mais quand il a lanc&eacute; WP Rocket, il y a quelques ann&eacute;es de cela, il n&rsquo;a [&hellip;]</p>\n<p>Cet article <a rel="nofollow" href="http://www.geekpress.fr/geekpress-wp-spread-wp-pro-grande-fusion/">GeekPress, WP-Spread, WP Pro : La grande fusion !</a> est apparu en premier sur <a rel="nofollow" href="http://www.geekpress.fr/">GeekPress</a>.</p>\n</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/nw2Kkhhgkus" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:65:"http://www.geekpress.fr/geekpress-wp-spread-wp-pro-grande-fusion/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:57:"http://www.echodesplugins.li-an.fr/plugins/client-portal/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:50:"L&#039;Ã©cho des plugins WordPress : Client Portal";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/rHf74t2f0Oo/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:77:"<div>Une page personnelle pour chacun de vos membres - nouvelle formule</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-05-03T06:29:39+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"Li-An";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:181:"<div>Une page personnelle pour chacun de vos membres - nouvelle formule</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/rHf74t2f0Oo" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:57:"http://www.echodesplugins.li-an.fr/plugins/client-portal/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:66:"https://wpchannel.com/afficher-categories-enfants-article-parents/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:84:"WordPress Channel : Afficher les catÃ©gories enfants dâ€™un article sans les parents";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/GBAePwxQflc/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:958:"<div>\n<p>Les cat&eacute;gories d&rsquo;articles sous WordPress constituent le moyen principal pour classer vos contenus. &Agrave;&nbsp;la diff&eacute;rence des &eacute;tiquettes &ndash; anciennement d&eacute;nomm&eacute;es les mots-cl&eacute;s, les cat&eacute;gories sont compos&eacute;es de termes hi&eacute;rarchiques. Comprenez par l&agrave; que vous pouvez cr&eacute;er des cat&eacute;gories et des sous-cat&eacute;gories, des parents et des enfants. Le cas d&rsquo;&eacute;cole pos&eacute; ici consiste &agrave; n&rsquo;afficher que [&hellip;]</p>\n<p><a rel="nofollow" href="https://wpchannel.com/author/aurelien-denis/">Aur&eacute;lien Denis</a> - <a rel="nofollow" href="https://wpchannel.com/">WordPress Channel - Tutoriels, th&egrave;mes &amp; plugins WordPress</a> - <a rel="nofollow" href="https://wpchannel.com/afficher-categories-enfants-article-parents/">Afficher les cat&eacute;gories enfants d&rsquo;un article sans les parents</a></p>\n</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-05-02T08:00:30+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"AurÃ©lien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1062:"<div>\n<p>Les cat&eacute;gories d&rsquo;articles sous WordPress constituent le moyen principal pour classer vos contenus. &Agrave;&nbsp;la diff&eacute;rence des &eacute;tiquettes &ndash; anciennement d&eacute;nomm&eacute;es les mots-cl&eacute;s, les cat&eacute;gories sont compos&eacute;es de termes hi&eacute;rarchiques. Comprenez par l&agrave; que vous pouvez cr&eacute;er des cat&eacute;gories et des sous-cat&eacute;gories, des parents et des enfants. Le cas d&rsquo;&eacute;cole pos&eacute; ici consiste &agrave; n&rsquo;afficher que [&hellip;]</p>\n<p><a rel="nofollow" href="https://wpchannel.com/author/aurelien-denis/">Aur&eacute;lien Denis</a> - <a rel="nofollow" href="https://wpchannel.com/">WordPress Channel - Tutoriels, th&egrave;mes &amp; plugins WordPress</a> - <a rel="nofollow" href="https://wpchannel.com/afficher-categories-enfants-article-parents/">Afficher les cat&eacute;gories enfants d&rsquo;un article sans les parents</a></p>\n</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/GBAePwxQflc" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:66:"https://wpchannel.com/afficher-categories-enfants-article-parents/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:59:"\n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:1:{s:43:"http://www.w3.org/1999/02/22-rdf-syntax-ns#";a:1:{s:5:"about";s:66:"http://www.echodesplugins.li-an.fr/plugins/wp-notification-center/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:24:"http://purl.org/rss/1.0/";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:59:"L&#039;Ã©cho des plugins WordPress : WP Notification Center";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/xEHlPreNJm8/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:82:"<div>Contenez l''avalanche de notifications dues aux plugins et th&egrave;mes</div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:2:{s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:25:"2016-04-27T22:15:39+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"Li-An";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:186:"<div>Contenez l''avalanche de notifications dues aux plugins et th&egrave;mes</div><img src="http://feeds.feedburner.com/~r/wordpress-fr/RaoY/~4/xEHlPreNJm8" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:66:"http://www.echodesplugins.li-an.fr/plugins/wp-notification-center/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:64;s:7:"headers";a:10:{s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:4:"etag";s:27:"yPx/GjoOK00DmIhpAdeYpQ+LYIE";s:13:"last-modified";s:29:"Thu, 02 Jun 2016 08:54:16 GMT";s:16:"content-encoding";s:4:"gzip";s:4:"date";s:29:"Thu, 02 Jun 2016 09:09:48 GMT";s:7:"expires";s:29:"Thu, 02 Jun 2016 09:09:48 GMT";s:13:"cache-control";s:18:"private, max-age=0";s:22:"x-content-type-options";s:7:"nosniff";s:16:"x-xss-protection";s:13:"1; mode=block";s:6:"server";s:3:"GSE";}s:5:"build";s:14:"20130911020210";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(294, '_transient_timeout_feed_mod_925a96b1918580ab3893979ca7a4a994', '1464901790', 'no'),
(295, '_transient_feed_mod_925a96b1918580ab3893979ca7a4a994', '1464858590', 'no'),
(296, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1464901791', 'no'),
(297, '_transient_feed_b9388c83948825c1edaef0d856b7b109', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n	\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:117:"\n		\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins Â» View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wordpress.org/plugins/browse/popular/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins Â» View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Jun 2016 08:58:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:30:{i:0;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Hello Dolly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/hello-dolly/#post-5790";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 29 May 2008 22:11:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"5790@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"This is not just a plugin, it symbolizes the hope and enthusiasm of an entire generation summed up in two words sung most famously by Louis Armstrong.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google XML Sitemaps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/google-sitemap-generator/#post-132";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:31:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"132@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"This plugin will generate a special XML sitemap which will help search engines to better index your blog.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Arne Brachhold";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"W3 Total Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/w3-total-cache/#post-12073";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 29 Jul 2009 18:46:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"12073@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:132:"Easy Web Performance Optimization (WPO) using caching: browser, page, object, database, minify and content delivery network support.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Frederick Townes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"TinyMCE Advanced";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wordpress.org/plugins/tinymce-advanced/#post-2082";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Jun 2007 15:00:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2082@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Enables the advanced features of TinyMCE, the WordPress WYSIWYG editor.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Andrew Ozz";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Akismet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:46:"https://wordpress.org/plugins/akismet/#post-15";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"15@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:98:"Akismet checks your comments against the Akismet Web service to see if they look like spam or not.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:9:"Yoast SEO";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wordpress.org/plugins/wordpress-seo/#post-8321";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Jan 2009 20:34:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"8321@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:114:"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using Yoast SEO plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"Google Analytics by MonsterInsights";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/plugins/google-analytics-for-wordpress/#post-2316";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Sep 2007 12:15:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2316@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:113:"Connect Google Analytics with WordPress by adding your Google Analytics tracking code. Get the stats that matter.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Syed Balkhi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"Advanced Custom Fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/advanced-custom-fields/#post-25254";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Mar 2011 04:07:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"25254@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:68:"Customise WordPress with powerful, professional and intuitive fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"elliotcondon";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Jetpack by WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wordpress.org/plugins/jetpack/#post-23862";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jan 2011 02:21:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"23862@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:107:"Increase your traffic, view your stats, speed up your site, and protect yourself from hackers with Jetpack.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Automattic";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Regenerate Thumbnails";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/regenerate-thumbnails/#post-6743";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 23 Aug 2008 14:38:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"6743@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:76:"Allows you to regenerate your thumbnails after changing the thumbnail sizes.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:25:"Alex Mills (Viper007Bond)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WP-PageNavi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wp-pagenavi/#post-363";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 23:17:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"363@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:49:"Adds a more advanced paging navigation interface.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Lester Chan";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/woocommerce/#post-29860";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Sep 2011 08:13:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"29860@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:97:"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"WooThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/contact-form-7/#post-2141";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2007 12:45:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2141@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:54:"Just another contact form plugin. Simple but flexible.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Really Simple CAPTCHA";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/really-simple-captcha/#post-9542";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 09 Mar 2009 02:17:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"9542@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"Really Simple CAPTCHA is a CAPTCHA module intended to be called from other plugins. It is originally created for my Contact Form 7 plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress Importer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wordpress-importer/#post-18101";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 May 2010 17:42:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"18101@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Brian Colinger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Wordfence Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wordfence/#post-29832";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 04 Sep 2011 03:13:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"29832@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"The Wordfence WordPress security plugin provides free enterprise-class WordPress security, protecting your website from hacks and malware.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Wordfence";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"NextGEN Gallery";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/nextgen-gallery/#post-1169";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Apr 2007 20:08:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"1169@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:121:"The most popular WordPress gallery plugin and one of the most popular plugins of all time with over 14 million downloads.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Alex Rabe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WP Super Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/wp-super-cache/#post-2572";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Nov 2007 11:40:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2572@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:73:"A very fast caching engine for WordPress that produces static html files.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Donncha O Caoimh";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"All in One SEO Pack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/all-in-one-seo-pack/#post-753";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Mar 2007 20:08:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"753@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"The most downloaded plugin for WordPress (almost 30 million downloads). Use All in One SEO Pack to automatically optimize your site for Search Engines";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"uberdose";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Duplicate Post";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/duplicate-post/#post-2646";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 05 Dec 2007 17:40:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2646@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:22:"Clone posts and pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Lopo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Page Builder by SiteOrigin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/siteorigin-panels/#post-51888";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Apr 2013 10:36:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"51888@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:111:"Build responsive page layouts using the widgets you know and love using this simple drag and drop page builder.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Greg Priday";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"Disable Comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wordpress.org/plugins/disable-comments/#post-26907";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 27 May 2011 04:42:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"26907@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:134:"Allows administrators to globally disable comments on their site. Comments can be disabled according to post type. Multisite friendly.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Samir Shah";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WP Multibyte Patch";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wp-multibyte-patch/#post-28395";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Jul 2011 12:22:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"28395@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Multibyte functionality enhancement for the WordPress Japanese package.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"plugin-master";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Google Analytics Dashboard for WP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wordpress.org/plugins/google-analytics-dashboard-for-wp/#post-50539";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 10 Mar 2013 17:07:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"50539@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:127:"Displays Google Analytics reports in your WordPress Dashboard. Inserts the latest Google Analytics tracking code in your pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Alin Marcu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"Black Studio TinyMCE Widget";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wordpress.org/plugins/black-studio-tinymce-widget/#post-31973";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 10 Nov 2011 15:06:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"31973@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:39:"The visual editor widget for Wordpress.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Marco Chiesi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"UpdraftPlus WordPress Backup Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/updraftplus/#post-38058";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 21 May 2012 15:14:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"38058@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:148:"Backup and restoration made easy. Complete backups; manual or scheduled (backup to S3, Dropbox, Google Drive, Rackspace, FTP, SFTP, email + others).";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"David Anderson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"iThemes Security (formerly Better WP Security)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/better-wp-security/#post-21738";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 22 Oct 2010 22:06:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"21738@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:146:"Take the guesswork out of WordPress security. iThemes Security offers 30+ ways to lock down WordPress in an easy-to-use WordPress security plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"iThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Clef Two-Factor Authentication";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wordpress.org/plugins/wpclef/#post-47509";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 27 Dec 2012 01:25:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"47509@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"Modern two-factor that people love to use: strong authentication without passwords or tokens; single sign on/off; magical user experience.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Dave Ross";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:10:"Duplicator";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/duplicator/#post-26607";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 16 May 2011 12:15:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"26607@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:88:"Duplicate, clone, backup, move and transfer an entire site from one location to another.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Cory Lamle";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Meta Slider";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/ml-slider/#post-49521";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Feb 2013 16:56:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"49521@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"Easy to use WordPress Slider plugin. Create responsive slideshows with Nivo Slider, Flex Slider, Coin Slider and Responsive Slides.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Matcha Labs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:46:"https://wordpress.org/plugins/rss/view/popular";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:12:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Thu, 02 Jun 2016 09:09:51 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:25:"strict-transport-security";s:11:"max-age=360";s:7:"expires";s:29:"Thu, 02 Jun 2016 09:33:05 GMT";s:13:"cache-control";s:0:"";s:6:"pragma";s:0:"";s:13:"last-modified";s:31:"Thu, 02 Jun 2016 08:58:05 +0000";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 250";}s:5:"build";s:14:"20130911020210";}', 'no'),
(298, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1464901791', 'no'),
(299, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1464858591', 'no'),
(300, '_transient_timeout_dash_bd94b8f41e74bae2f4dc72e9bd8379af', '1464901791', 'no'),
(301, '_transient_dash_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''http://feedproxy.google.com/~r/WordpressFrancophone/~3/jnTdGpX49Y0/''>En route vers le nouveau site !</a> <span class="rss-date">1 juin 2016</span><div class="rssSummary">Lors de lâ€™article du 23 mai, nous avons proposÃ© Ã  celles et ceux qui le souhaitaient de participer Ã  la refonte du site et du forum de wordpress-fr.net. Une quinzaine de volontaires ont rÃ©pondu Ã  notre appel, nous les en remercions ! Les participants ont reÃ§u les indications pour nous rejoindre sur le slack de [&hellip;]</div></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/Ofz99Y7xNYA/''>GrÃ©goire Noyelle : WordPress :: Gestion du multilingue avec MultilingualPress</a></li><li><a class=''rsswidget'' href=''http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/vCWMs-_IXug/''>WordPress Francophone : En route vers le nouveau site !</a></li><li><a class=''rsswidget'' href=''http://feedproxy.google.com/~r/wordpress-fr/RaoY/~3/ml0yh7H3qhQ/''>L&#039;Ã©cho des plugins WordPress : Lazy Load, pour un chargement moins lourd de vos nombreuses images</a></li></ul></div><div class="rss-widget"><ul><li class="dashboard-news-plugin"><span>Extensions populaires:</span> Page Builder by SiteOrigin&nbsp;<a href="plugin-install.php?tab=plugin-information&amp;plugin=siteorigin-panels&amp;_wpnonce=ad069b1825&amp;TB_iframe=true&amp;width=600&amp;height=800" class="thickbox open-plugin-details-modal" aria-label="Installer Page Builder by SiteOrigin">(Installer)</a></li></ul></div>', 'no'),
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
(354, '_site_transient_available_translations', 'a:81:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-10 15:55:55";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"Ø§Ù„Ø¹Ø±Ø¨ÙŠØ©";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"Ø§Ù„Ù…ØªØ§Ø¨Ø¹Ø©";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 14:44:00";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"Ø§Ù„Ø¹Ø±Ø¨ÙŠØ© Ø§Ù„Ù…ØºØ±Ø¨ÙŠØ©";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.5.2/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"Ø§Ù„Ù…ØªØ§Ø¨Ø¹Ø©";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 22:48:01";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"AzÉ™rbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-11 22:42:10";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"Ú¯Ø¤Ù†Ø¦ÛŒ Ø¢Ø°Ø±Ø¨Ø§ÛŒØ¬Ø§Ù†";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-03 14:05:41";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Ð‘ÑŠÐ»Ð³Ð°Ñ€ÑÐºÐ¸";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"ÐÐ°Ð¿Ñ€ÐµÐ´";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-01 06:39:12";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"à¦¬à¦¾à¦‚à¦²à¦¾";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"à¦à¦—à¦¿à§Ÿà§‡ à¦šà¦².";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-19 23:16:37";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 06:38:51";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"CatalÃ ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-02-16 15:34:57";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.3/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-11 18:32:36";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"ÄŒeÅ¡tinaâ€Ž";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"PokraÄovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 14:21:06";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 15:42:12";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 20:03:25";s:12:"english_name";s:23:"(Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/4.5.2/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-02 08:22:25";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.5.2/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-01 09:24:14";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 19:26:41";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-25 18:37:03";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Î•Î»Î»Î·Î½Î¹ÎºÎ¬";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Î£Ï…Î½Î­Ï‡ÎµÎ¹Î±";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 06:26:11";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-28 11:29:02";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-10 05:23:57";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-26 02:00:05";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 12:51:07";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 10:58:49";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"DaÅ­rigi";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-28 13:08:25";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"EspaÃ±ol de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-16 17:35:43";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"EspaÃ±ol de PerÃº";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 21:06:55";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"EspaÃ±ol de MÃ©xico";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 12:43:00";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"EspaÃ±ol de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-19 16:39:25";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"EspaÃ±ol de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-04 06:10:33";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"EspaÃ±ol de Colombia";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-28 13:34:35";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"EspaÃ±ol";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-19 21:32:12";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"EspaÃ±ol de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 11:11:25";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"JÃ¤tka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-23 22:05:23";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-27 18:29:46";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"ÙØ§Ø±Ø³ÛŒ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"Ø§Ø¯Ø§Ù…Ù‡";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-10 18:44:50";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 07:33:47";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"FranÃ§ais de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-29 19:30:46";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"FranÃ§ais du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-01 09:16:29";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"FranÃ§ais";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-09-24 15:25:30";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"GÃ idhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.4/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-22 23:06:30";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"Ù‡Ø²Ø§Ø±Ù‡ Ú¯ÛŒ";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"Ø§Ø¯Ø§Ù…Ù‡";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-16 13:14:11";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"×¢Ö´×‘Ö°×¨Ö´×™×ª";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"×”×ž×©×š";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-13 11:24:52";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"à¤¹à¤¿à¤¨à¥à¤¦à¥€";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"à¤œà¤¾à¤°à¥€";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-07 12:13:44";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-03 06:34:38";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"FolytatÃ¡s";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-04 07:13:54";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Õ€Õ¡ÕµÕ¥Ö€Õ¥Õ¶";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Õ‡Õ¡Ö€Õ¸Ö‚Õ¶Õ¡Õ¯Õ¥Õ¬";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-06 12:11:53";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-30 15:18:26";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Ãslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Ãfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-31 08:01:17";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-27 00:36:15";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"æ—¥æœ¬èªž";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"ç¶šã‘ã‚‹";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 09:29:35";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"áƒ¥áƒáƒ áƒ—áƒ£áƒšáƒ˜";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"áƒ’áƒáƒ’áƒ áƒ«áƒ”áƒšáƒ”áƒ‘áƒ";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-08 02:07:38";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"í•œêµ­ì–´";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"ê³„ì†";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-10 06:34:16";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"LietuviÅ³ kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"TÄ™sti";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-12 13:55:28";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"ÐœÐ°ÐºÐµÐ´Ð¾Ð½ÑÐºÐ¸ Ñ˜Ð°Ð·Ð¸Ðº";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"ÐŸÑ€Ð¾Ð´Ð¾Ð»Ð¶Ð¸";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-16 06:42:31";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"à¤®à¤°à¤¾à¤ à¥€";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"à¤¸à¥à¤°à¥ à¤ à¥‡à¤µà¤¾";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-01-28 05:41:39";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.11";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"á€—á€™á€¬á€…á€¬";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.11/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"á€†á€€á€ºá€œá€€á€ºá€œá€¯á€•á€ºá€†á€±á€¬á€„á€ºá€•á€«á‹";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 12:35:50";s:12:"english_name";s:19:"Norwegian (BokmÃ¥l)";s:11:"native_name";s:13:"Norsk bokmÃ¥l";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-13 08:12:50";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-01-20 13:35:50";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.4.3/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 07:36:04";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-25 06:38:00";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.5.2/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-18 16:39:27";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.11";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"Ù¾ÚšØªÙˆ";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.11/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"Ø¯ÙˆØ§Ù… ÙˆØ±Ú©Ú“Ù‡";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-17 23:58:57";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"PortuguÃªs";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-27 18:35:51";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"PortuguÃªs do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-01 05:36:12";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"RomÃ¢nÄƒ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"ContinuÄƒ";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 18:04:14";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Ð ÑƒÑÑÐºÐ¸Ð¹";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"ÐŸÑ€Ð¾Ð´Ð¾Ð»Ð¶Ð¸Ñ‚ÑŒ";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-29 09:53:12";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"SlovenÄina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"PokraÄovaÅ¥";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-11-26 00:00:18";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"SlovenÅ¡Äina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-09 09:01:28";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-10 08:00:57";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Ð¡Ñ€Ð¿ÑÐºÐ¸ Ñ˜ÐµÐ·Ð¸Ðº";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"ÐÐ°ÑÑ‚Ð°Ð²Ð¸";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-14 14:47:49";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"FortsÃ¤tt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-22 14:05:41";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"à¹„à¸—à¸¢";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"à¸•à¹ˆà¸­à¹„à¸›";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-11-27 15:51:36";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-21 01:31:12";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"TÃ¼rkÃ§e";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-31 09:50:18";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"UyÆ£urqÉ™";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"Ø¯Ø§Û‹Ø§Ù…Ù„Ø§Ø´ØªÛ‡Ø±Û‡Ø´";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-23 09:33:59";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Ð£ÐºÑ€Ð°Ñ—Ð½ÑÑŒÐºÐ°";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"ÐŸÑ€Ð¾Ð´Ð¾Ð²Ð¶Ð¸Ñ‚Ð¸";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-09 01:01:25";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiáº¿ng Viá»‡t";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiáº¿p tá»¥c";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-17 03:29:01";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"ç®€ä½“ä¸­æ–‡";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"ç»§ç»­";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 09:08:07";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"ç¹é«”ä¸­æ–‡";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"ç¹¼çºŒ";}}}', 'yes'),
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
(2, 1, '2016-05-30 11:00:09', '2016-05-30 09:00:09', '<h1></h1>\r\n<img class="size-full wp-image-58 alignleft" src="http://www.project.dev/wp-content/uploads/2016/05/visu_492x334.jpg" alt="visu_492x334" width="492" height="334" />\r\n<h1><strong>Expertises</strong></h1>\r\n<h2>Partenaire en stratÃ©gie sociale</h2>\r\nBarthÃ©lÃ©my Avocats, câ€™est 50 ans dâ€™une relation de partenariat avec plus de 5000 entreprises en matiÃ¨re de droit social, en conseil comme en contentieux.\r\n<h2>Formations</h2>\r\n<h3>Pour gÃ©rer au mieux\r\nvos relations sociales</h3>\r\nDÃ©couvrez une offre complÃ¨te de formations liÃ©es aux derniÃ¨res actualitÃ©s sociales, pouvant rÃ©pondre aux objectifs dâ€™un large public.\r\n\r\n&nbsp;', 'Home', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2016-06-02 14:59:46', '2016-06-02 12:59:46', '', 0, 'http://www.project.dev/?page_id=2', 0, 'page', '', 0),
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
(21, 1, '2016-06-02 11:53:24', '2016-06-02 09:53:24', '<h2>Expertises</h2>\r\n<h3>Partenaire en\r\nstratÃ©gie sociale</h3>\r\nBarthÃ©lÃ©my Avocats, câ€™est 50 ans dâ€™une relation de partenariat avec plus de 5000 entreprises en matiÃ¨re de droit social, en conseil comme en contentieux.', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-06-02 11:53:24', '2016-06-02 09:53:24', '', 2, 'http://www.project.dev/index.php/2016/06/02/2-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2016-06-02 12:22:25', '2016-06-02 10:22:25', '<h2>Expertises</h2>\r\n<h3>Partenaire en\r\nstratÃ©gie sociale</h3>\r\nBarthÃ©lÃ©my Avocats, câ€™est 50 ans dâ€™une relation de <br> partenariat avec plus de 5000 entreprises en matiÃ¨re de <br>droit social, en conseil comme en contentieux.', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-06-02 12:22:25', '2016-06-02 10:22:25', '', 2, 'http://www.project.dev/index.php/2016/06/02/2-revision-v1/', 0, 'revision', '', 0),
(26, 0, '2016-06-02 12:26:49', '2016-06-02 10:26:49', '<div style="position: relative;" id="PlugNeditFluxEditor" data-pneversion="Flux" data-hguides="" data-vguides="" data-pnekey="" data-pnebackgroundcolor="" data-fluxadjustsize="true" data-fluxautoposition="true"><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="PlugNeditFluxEditorS-Spacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer468" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer480" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer568" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer667" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer736" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer414" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer375" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer800" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer598" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer359" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer640" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="PlugNeditFluxEditorS-SpacerMobile" class="fluxspacer"></div><div id="PNEcanvasI" style="position: absolute; width: 0px; top: 0px; z-index: 10; left: 50%; overflow: visible;"><div id="FluxFullCanvas" data-canvas="FluxFullCanvas" style=""></div><div id="FluxMobileCanvas" data-canvas="FluxMobileCanvas" style="" data-fluxresonsive="*IsFluxResponsive*" class="FluxResponsiveCanvas"></div></div><div style="position:absolute;top:0px;left:0px;width:100%;" id="PNEFixedWidthI"></div><div style="position:absolute;top:0px;left:0px;width:100%;" id="PNEFixedMobileWidthI"></div></div>', '', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2016-06-02 12:29:15', '2016-06-02 10:29:15', '', 0, 'http://www.project.dev/?page_id=26', 0, 'page', '', 0),
(27, 1, '2016-06-02 12:26:49', '2016-06-02 10:26:49', '<div style="position: relative;" id="PlugNeditFluxEditor" data-pneversion="Flux" data-hguides="" data-vguides="" data-pnekey="" data-pnebackgroundcolor="" data-fluxadjustsize="true" data-fluxautoposition="true"><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="PlugNeditFluxEditorS-Spacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer468" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer480" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer568" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer667" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer736" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer414" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer375" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer800" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer598" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer359" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="FluxMobileSpacer640" class="fluxspacer"></div><div style="position: static; height: 0px; width: 100%; overflow: visible; background-color: transparent;" id="PlugNeditFluxEditorS-SpacerMobile" class="fluxspacer"></div><div id="PNEcanvasI" style="position: absolute; width: 0px; top: 0px; z-index: 10; left: 50%; overflow: visible;"><div id="FluxFullCanvas" data-canvas="FluxFullCanvas" style=""></div><div id="FluxMobileCanvas" data-canvas="FluxMobileCanvas" style="" data-fluxresonsive="*IsFluxResponsive*" class="FluxResponsiveCanvas"></div></div><div style="position:absolute;top:0px;left:0px;width:100%;" id="PNEFixedWidthI"></div><div style="position:absolute;top:0px;left:0px;width:100%;" id="PNEFixedMobileWidthI"></div></div>', '', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2016-06-02 12:26:49', '2016-06-02 10:26:49', '', 26, 'http://www.project.dev/index.php/2016/06/02/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2016-06-02 12:31:08', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-06-02 12:31:08', '0000-00-00 00:00:00', '', 0, 'http://www.project.dev/?page_id=28', 0, 'page', '', 0),
(29, 1, '2016-06-02 14:23:02', '2016-06-02 12:23:02', '<h4>Les avocats BarthÃ©lÃ©my vous accompagnent au quotidien dans la construction de votre stratÃ©gie sociale.</h4>\r\n<p style="margin-bottom: 20px;">Cabinet expert en droit social, BarthÃ©lÃ©my Avocats met Ã  votre service tout son savoir-faire dans la rÃ©alisation de missions dâ€™audit, de prestations de conseil ou de dÃ©fense des intÃ©rÃªts devant les juridictions sociales, rÃ©pressives, spÃ©cialisÃ©es ou administratives.</p>\r\n<p style="margin-bottom: 20px;"></p>\r\n\r\n<h2>ÃŠtre Ã  vos cÃ´tÃ©s</h2>\r\n<div class="alignLeft abonnement-social">\r\n<h3>Lâ€™abonnement social annuel*</h3>\r\n<div class="accompagnement">\r\n<ul>\r\n 	<li>Un interlocuteur dÃ©diÃ©</li>\r\n 	<li>Des services sur mesure</li>\r\n 	<li>Un traitement prioritaire de vos demandes</li>\r\n 	<li>Une offre personnalisÃ©e</li>\r\n</ul>\r\n*Hors prestations judiciaires\r\n\r\n</div>\r\n</div>\r\n<div class="alignLeft ou-separe">\r\n<h3>ou</h3>\r\n</div>\r\n<div class="alignRight assistance-ponctuelle">\r\n<h3>Lâ€™assistance ponctuelle**</h3>\r\n<div class="accompagnement">\r\n<ul>\r\n 	<li>Prestations de conseil en droit social sur demande</li>\r\n 	<li>DÃ©fense des intÃ©rÃªts devant les juridictions compÃ©tentes\r\n(Conseil de Prudâ€™hommes, Tribunal des Affaires de SÃ©curitÃ© Sociale...)</li>\r\n</ul>\r\n**FacturÃ©e Ã  la vacation selon un taux horaire dÃ©fini.\r\n\r\n</div>\r\n</div>\r\n<div class="clear"></div>', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2016-06-02 15:01:50', '2016-06-02 13:01:50', '', 0, 'http://www.project.dev/?page_id=29', 0, 'page', '', 0),
(30, 1, '2016-06-02 14:15:32', '2016-06-02 12:15:32', '<h1>Les avocats BarthÃ©lÃ©my vous accompagnent au quotidien dans la construction de votre stratÃ©gie sociale.</h1>', 'Services', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2016-06-02 14:15:32', '2016-06-02 12:15:32', '', 29, 'http://www.project.dev/index.php/2016/06/02/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2016-06-02 14:16:06', '2016-06-02 12:16:06', '<h2>Les avocats BarthÃ©lÃ©my vous accompagnent au quotidien dans la construction de votre stratÃ©gie sociale.</h2>', 'Services', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2016-06-02 14:16:06', '2016-06-02 12:16:06', '', 29, 'http://www.project.dev/index.php/2016/06/02/29-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2016-06-02 14:16:23', '2016-06-02 12:16:23', '<h3>Les avocats BarthÃ©lÃ©my vous accompagnent au quotidien dans la construction de votre stratÃ©gie sociale.</h3>', 'Services', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2016-06-02 14:16:23', '2016-06-02 12:16:23', '', 29, 'http://www.project.dev/index.php/2016/06/02/29-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2016-06-02 14:16:39', '2016-06-02 12:16:39', '<h4>Les avocats BarthÃ©lÃ©my vous accompagnent au quotidien dans la construction de votre stratÃ©gie sociale.</h4>', 'Services', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2016-06-02 14:16:39', '2016-06-02 12:16:39', '', 29, 'http://www.project.dev/index.php/2016/06/02/29-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2016-06-02 14:17:15', '2016-06-02 12:17:15', '<h4>Les avocats BarthÃ©lÃ©my vous accompagnent au quotidien dans la construction de votre stratÃ©gie sociale.</h4>\r\n<p>Cabinet expert en droit social, BarthÃ©lÃ©my Avocats met Ã  votre service tout son savoir-faire dans la rÃ©alisation de missions dâ€™audit, de prestations de conseil ou de dÃ©fense des intÃ©rÃªts devant les juridictions sociales, rÃ©pressives, spÃ©cialisÃ©es ou administratives.</p>', 'Services', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2016-06-02 14:17:15', '2016-06-02 12:17:15', '', 29, 'http://www.project.dev/index.php/2016/06/02/29-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2016-06-02 14:22:17', '2016-06-02 12:22:17', '<h4>  Les avocats BarthÃ©lÃ©my vous accompagnent au quotidien dans la construction de votre stratÃ©gie sociale.  </h4>  <p style="margin-bottom: 20px;">Cabinet expert en droit social, BarthÃ©lÃ©my Avocats met Ã  votre service tout son savoir-faire dans la rÃ©alisation de missions dâ€™audit, de prestations de conseil ou de dÃ©fense des intÃ©rÃªts devant les juridictions sociales, rÃ©pressives, spÃ©cialisÃ©es ou administratives.</p>', 'Services', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2016-06-02 14:22:17', '2016-06-02 12:22:17', '', 29, 'http://www.project.dev/index.php/2016/06/02/29-revision-v1/', 0, 'revision', '', 0),
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
(57, 1, '2016-06-02 14:53:37', '2016-06-02 12:53:37', '<h1>Expertises</h1>\r\n<h2>Partenaire en stratÃ©gie sociale</h2>\r\nBarthÃ©lÃ©my Avocats, câ€™est 50 ans dâ€™une relation de <br> partenariat avec plus de 5000 entreprises en matiÃ¨re de <br>droit social, en conseil comme en contentieux.', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-06-02 14:53:37', '2016-06-02 12:53:37', '', 2, 'http://www.project.dev/?p=57', 0, 'revision', '', 0),
(58, 1, '2016-06-02 14:55:31', '2016-06-02 12:55:31', '', 'visu_492x334', '', 'inherit', 'closed', 'closed', '', 'visu_492x334', '', '', '2016-06-02 14:55:31', '2016-06-02 12:55:31', '', 2, 'http://www.project.dev/wp-content/uploads/2016/05/visu_492x334.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2016-06-02 14:56:19', '2016-06-02 12:56:19', '<h1><strong>Expertises</strong></h1>\r\n<h2>Partenaire en stratÃ©gie sociale</h2>\r\n<img class="size-full wp-image-58 alignright" src="http://www.project.dev/wp-content/uploads/2016/05/visu_492x334.jpg" alt="visu_492x334" width="492" height="334" />BarthÃ©lÃ©my Avocats, câ€™est 50 ans dâ€™une relation de partenariat avec plus de 5000 entreprises en matiÃ¨re de droit social, en conseil comme en contentieux.\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2016-06-02 14:56:19', '2016-06-02 12:56:19', '', 2, 'http://www.project.dev/?p=59', 0, 'revision', '', 0),
(60, 1, '2016-06-02 14:56:14', '2016-06-02 12:56:14', '<h1><strong>Expertises</strong></h1>\r\n<h2>Partenaire en stratÃ©gie sociale</h2>\r\n<img class="size-full wp-image-58 alignright" src="http://www.project.dev/wp-content/uploads/2016/05/visu_492x334.jpg" alt="visu_492x334" width="492" height="334" />BarthÃ©lÃ©my Avocats, câ€™est 50 ans dâ€™une relation de partenariat avec plus de 5000 entreprises en matiÃ¨re de droit social, en conseil comme en contentieux.\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-06-02 14:56:14', '2016-06-02 12:56:14', '', 2, 'http://www.project.dev/?p=60', 0, 'revision', '', 0),
(61, 1, '2016-06-02 14:56:55', '2016-06-02 12:56:55', '<h1><strong>Expertises</strong></h1>\r\n<h2>Partenaire en stratÃ©gie sociale</h2>\r\n<img class="size-full wp-image-58 alignleft" src="http://www.project.dev/wp-content/uploads/2016/05/visu_492x334.jpg" alt="visu_492x334" width="492" height="334" />BarthÃ©lÃ©my Avocats, câ€™est 50 ans dâ€™une relation de partenariat avec plus de 5000 entreprises en matiÃ¨re de droit social, en conseil comme en contentieux.\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-06-02 14:56:55', '2016-06-02 12:56:55', '', 2, 'http://www.project.dev/?p=61', 0, 'revision', '', 0),
(62, 1, '2016-06-02 14:59:46', '2016-06-02 12:59:46', '<h1></h1>\r\n<img class="size-full wp-image-58 alignleft" src="http://www.project.dev/wp-content/uploads/2016/05/visu_492x334.jpg" alt="visu_492x334" width="492" height="334" />\r\n<h1><strong>Expertises</strong></h1>\r\n<h2>Partenaire en stratÃ©gie sociale</h2>\r\nBarthÃ©lÃ©my Avocats, câ€™est 50 ans dâ€™une relation de partenariat avec plus de 5000 entreprises en matiÃ¨re de droit social, en conseil comme en contentieux.\r\n<h2>Formations</h2>\r\n<h3>Pour gÃ©rer au mieux\r\nvos relations sociales</h3>\r\nDÃ©couvrez une offre complÃ¨te de formations liÃ©es aux derniÃ¨res actualitÃ©s sociales, pouvant rÃ©pondre aux objectifs dâ€™un large public.\r\n\r\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-06-02 14:59:46', '2016-06-02 12:59:46', '', 2, 'http://www.project.dev/?p=62', 0, 'revision', '', 0),
(63, 1, '2016-06-02 15:01:50', '2016-06-02 13:01:50', '<h4>Les avocats BarthÃ©lÃ©my vous accompagnent au quotidien dans la construction de votre stratÃ©gie sociale.</h4>\r\n<p style="margin-bottom: 20px;">Cabinet expert en droit social, BarthÃ©lÃ©my Avocats met Ã  votre service tout son savoir-faire dans la rÃ©alisation de missions dâ€™audit, de prestations de conseil ou de dÃ©fense des intÃ©rÃªts devant les juridictions sociales, rÃ©pressives, spÃ©cialisÃ©es ou administratives.</p>\r\n<p style="margin-bottom: 20px;"></p>\r\n\r\n<h2>ÃŠtre Ã  vos cÃ´tÃ©s</h2>\r\n<div class="alignLeft abonnement-social">\r\n<h3>Lâ€™abonnement social annuel*</h3>\r\n<div class="accompagnement">\r\n<ul>\r\n 	<li>Un interlocuteur dÃ©diÃ©</li>\r\n 	<li>Des services sur mesure</li>\r\n 	<li>Un traitement prioritaire de vos demandes</li>\r\n 	<li>Une offre personnalisÃ©e</li>\r\n</ul>\r\n*Hors prestations judiciaires\r\n\r\n</div>\r\n</div>\r\n<div class="alignLeft ou-separe">\r\n<h3>ou</h3>\r\n</div>\r\n<div class="alignRight assistance-ponctuelle">\r\n<h3>Lâ€™assistance ponctuelle**</h3>\r\n<div class="accompagnement">\r\n<ul>\r\n 	<li>Prestations de conseil en droit social sur demande</li>\r\n 	<li>DÃ©fense des intÃ©rÃªts devant les juridictions compÃ©tentes\r\n(Conseil de Prudâ€™hommes, Tribunal des Affaires de SÃ©curitÃ© Sociale...)</li>\r\n</ul>\r\n**FacturÃ©e Ã  la vacation selon un taux horaire dÃ©fini.\r\n\r\n</div>\r\n</div>\r\n<div class="clear"></div>', 'Services', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2016-06-02 15:01:50', '2016-06-02 13:01:50', '', 29, 'http://www.project.dev/?p=63', 0, 'revision', '', 0),
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
(1, 'Non classÃ©', 'non-classe', 0),
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
('\00öñ#Š9ýœ¬Z4Îj$', 'wp-admin/network/user-edit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1s¶Ì¶>Ø£Ð…cÃÿ'),
('\05gÀËÏê«”c‹0‰"D', 'wp-includes/css/media-views-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ú\\“uMš®ù~V¸õ0•?'),
('\0C_\nìÂjD¨é@k', 'wp-admin/network/index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '³©y¯5æ¬SQ`yÐ¶è'),
('\0`Y±Ï­rG¦¦”„', 'wp-includes/SimplePie/Restriction.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*qhdsˆ;Õy'),
('\0‰^9Nt"tu²ùì', 'wp-content/plugins/wordfence/lib/menu_diagnostic.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '©F¥G$ÖnGÆØ/+Æú^'),
('\0Œþæ;fóúQî=*Ç•Ã', 'wp-includes/js/wp-emoji.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ï¬ß¸`z-_\0Î¬Z'),
('\0Ç|9è×u…eäñá–@ƒµ', 'wp-admin/includes/image.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Êpo	«* ˆO”Í?\\Æ$'),
('\0ûÛŽx%™d\ZÎkK](', 'wp-content/themes/twentyfifteen/footer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'hYÓ ¨&é„ß6Ó	Œý‡N'),
('’¤È„˜7Ùgäb^I5', 'wp-content/themes/twentyfourteen/header.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'WŸú±¡‡i?T œíÁ'),
('M~êYØ\n³!¼qãWò+', 'wp-includes/.DS_Store', 0, '¦›Dœ·Ð²¼þÆf1,Ü', '¦›Dœ·Ð²¼þÆf1,Ü'),
('NQž"*hzªrÃw|\Zø', 'wp-admin/images/media-button-other.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‹Æ´kÇ|Üæ,Oã"œ'),
('R¼œ£ì\ZD•¡‰òlÊÕ¥', 'wp-content/plugins/polylang/frontend/frontend-filters-links.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'eï¼xb±8öø&d OñÍ'),
('™TêhËÔìzPŸùré', 'wp-admin/widgets.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'j2#Oè)ùmIïMÿÍ}'),
('¤™RŽd›0ŠÇZ‹Ö–', 'wp-content/plugins/polylang/flags/dj.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~oÂWžì‹Ís9=èAº'),
('½èž%y`{Væ''™³™ù', 'wp-content/plugins/polylang/flags/li.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‚ 4³›F«ª‘ƒB	*2'),
('ßâ`È½¶c †)dœ¸', 'wp-content/themes/twentyfourteen/content-image.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ky#¨$~ä£ p³éÇ'),
('t]•ÙŸuÃÕuÛüåjû', 'wp-admin/images/menu-vs.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'q™€òLð,_¥;1/ïE¬'),
('¨‘~¸w`²5;Fã®®', 'wp-includes/js/jquery/ui/effect-size.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':Ižk•CÍ*…¾™]«'),
('ô=üðq¯\rljA+', 'wp-admin/user/user-edit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*zu£c°øm	J‘ïeê'),
('*lXóª±ÌKPqU', 'wp-content/themes/twentyfifteen/inc/customizer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '†%øE¿4G	ðÓÃñHé'),
('<)8T*.SuSÒÄºŸ', 'wp-includes/SimplePie/Cache/MySQL.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'è‘ÎßBÊC™\ZHÕxV‡'),
('FK\n=(¬ë=7^ß  ', 'wp-content/plugins/polylang/modules/share-slug/settings-share-slug.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÍK3ë‰í»(lx[cÊ$'),
('HCƒìÜ!ó«ª"(ˆ', 'wp-includes/js/tinymce/plugins/compat3x/css/dialog.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '–³£rpšÔ‚åà±K+ÿ‰'),
('Jó\rÓ·G>û‚„õ', 'wp-includes/class-walker-page-dropdown.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ezCê<XÙŸ6ã!ƒªm'),
('uÞÇs¶›y6''v,ªÞ=', 'wp-includes/js/tinymce/plugins/wordpress/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '''³±YÑXBþ…p‹¹üþæw'),
('ô^Ÿz¹,‹€³œYð', 'wp-content/plugins/polylang/flags/fo.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ðæ°£ý´â''[PW½–™f'),
('ŸÃš5™Ç¸DÃÿžéõ', 'wp-content/plugins/duplicator/views/help/about.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ó2½h­*n)Òs¿ÿ>jV—'),
('Þ”ä¥ê7™&‡òÈ€', 'wp-includes/js/tinymce/skins/lightgray/content.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¡ {C!''ÝÀÃƒ¬ûqZx'),
('à¼—!>#’@×ð7WÜ''', 'wp-content/themes/twentyfourteen/genericons/genericons.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '†ÂÊ4b‰Ø-¯+l‘ö'),
('á;Îœpne‚šÃ^@´', 'wp-content/themes/twentyfourteen/rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Å¬cÜ5u„1ö2\\ëÛ'),
('÷­0rãˆH"áYK]T·', 'wp-admin/css/site-icon-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'þÜ¼ÇŠk°¯¶ùiQ'),
('øsÍ\ZÓøZtãcú	é', 'wp-content/themes/twentyfourteen/sidebar-content.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¿£üÈƒ$ÑÒ\0DO¦±K'),
('(¿€—Ñ™—ÉÚ\0H<_', 'wp-admin/includes/nav-menu.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '£#½¢”Æ]Øýt''âÍs'),
('iô¢PÃ™û–ld\0ú‘', 'wp-includes/css/jquery-ui-dialog.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' 4{¦GjÆ¶FÑEiypè'),
('¨[¤]€!‚õ°®ÐYô', 'wp-content/plugins/duplicator/views/packages/new1.base.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'a#Ð\rPû•ÝËè;ëõË'),
('æ_r¯É‚hœ¶5mëÎ', 'wp-content/plugins/polylang/languages/polylang-af.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ïG“¡ mˆ4®aPŽóŠá'),
('!›”È@|˜4«°n­ô', 'wp-includes/class-http.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'NY]úd^™Zæ“4%qq'),
('''Úž\0;¾¿?Ã+VÒªÎ', 'wp-admin/network/edit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\rë^ YÂ&Œ—;^ üÒ\Z'),
(';pR9²¶+óqpÕ®', 'wp-admin/includes/options.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N1;¯ä:]ä*ZÙà`'),
('Eø&¯ÑVN®³‘"N', 'wp-admin/css/ie.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ';îÊ2\ZãåäP+»eS€'),
('H•†P:M²q–<<½ƒù', 'wp-content/plugins/polylang/languages/polylang-zh_CN.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'óæÖƒ@×bN¨Ê—¼t'),
('xàó‘mü€¥\0Þ~¶Â', 'wp-includes/customize/class-wp-customize-nav-menus-panel.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¼šuì:Q&“‚„ŸÂ’S„'),
('°Ãš2â±ûdÍ=', 'wp-includes/rest-api.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'å²ªÈ•3£Ìã‡m#ýŒ'),
('·P\0''Ø0l§Ÿ¯vÈ#J<', 'wp-includes/js/jquery/ui/effect-fold.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6^Á³§î‚ù<šýDEl'),
('È„”ÎÓxy¨åõ‹Ö', 'wp-includes/js/tinymce/skins/wordpress/images/embedded.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'õª pÝN¢Öy~Ãn"'),
('Î°HÃüå0®U¬&ƒ`…', 'wp-content/plugins/duplicator/installer/build/assets/inc.libs.css.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'æ=3‘öQ£>‹Ïêy~'),
('Ï´ 3P`#8^ÝÖZ', 'wp-admin/css/colors/coffee/colors.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ð2ä+ÆË 3¿Þe|t”3~'),
('\ZÓc¨ÿÖ¡–¹Ïñö', 'wp-content/plugins/polylang/flags/ki.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'p<í’¹|Âq08ðÕå ð'),
('"’ŸNß¬jj)…Ÿ\0Œ•N', 'wp-admin/images/menu-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'jGÿõþâù{¿>¯^;$‚Ó'),
('Hƒ“ÊcåÁ¤I²J%µH', 'wp-content/plugins/wordfence/views/reports/activity-report-email.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¸Ø›ïvcy2;í¥9Í'),
('N¥öÞ´\\<¹Ýïç¿', 'wp-content/plugins/polylang/flags/ru.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\r1ïu­ï"sðË“¨Jt"'),
('tZQ¥Yz0…ú½ßè·«', 'wp-admin/images/wordpress-logo.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Æ°ùy¹æoÃ8ôË8S¥`Š'),
('•Ñ¼RíKd›âåþäP', 'wp-content/themes/twentysixteen/image.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '²‡Ñi%8¡W÷’ÕO'),
('œý—k’5SHåÐçÐ«', 'wp-includes/SimplePie/Author.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4€qí_ðA‹%–Nw£1'),
('¢ØÀeßbWüA0Ïd', 'wp-admin/images/comment-grey-bubble.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Y*''´‰°©tÀ¶²F'),
('º¥¡™ •Â\0u~Ù3', 'wp-content/plugins/polylang/flags/ml.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÙQËC¨qg·1¡®§l'),
('Û)7’q™Ú¯Oÿqèt', 'wp-content/plugins/duplicator/assets/img/logo-menu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}ÆU§áJ(2\n<µhóˆ'),
(' û,eO¢šËz‚Ã‘•', 'wp-includes/customize/class-wp-customize-site-icon-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'è®††Ï’»sÑïç[ž¤JA'),
('"Ñ}­%ù•xðR:F·Ûî', 'wp-content/themes/twentyfourteen/featured-content.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'õQû qÏžî2V«üüw'),
('Q¡ ·Ô(;Ø |~R8¿b', 'wp-admin/includes/user.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '#Y»\rPžÅ¤Ð¤p='),
('T´]\\gø¯ö4ÅºuP²;', 'wp-admin/css/admin-menu-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'æÍ¡ºFè\0yŒ¤éW'),
('zÏS²úÍ¬€\\Ó/ùêŠ', 'wp-content/themes/twentyfourteen/js/keyboard-image-navigation.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'žÀž?ft3üÂK%«´Ù\0'),
('“—¬%bQñ£“bM<Öx', 'wp-includes/js/imgareaselect/border-anim-h.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ZÃÄ,ÈntZ^6¶{Lp¡4'),
('—ÅŠë`ö7§þTê³a', 'wp-content/plugins/wordfence/lib/menu_whois.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '&–:©„ÿouì)/n6'),
('mLÔh¦7ÁhŠž Ç6', 'wp-content/plugins/polylang/flags/gr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ý›2€¾1À''X\\‰’ñyŸ'),
('Ñ§›_ƒ4a!¢F¤ñ', 'wp-admin/css/ie.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Z¬Iû…÷Q ±9\ZÎ›,'),
('ü«i)33Ü¥ÑÇsÚ*', 'wp-admin/includes/class-wp-ms-users-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-a÷om•‚QJ‚\Z£˜vb'),
('j«æo¤+ˆ±sÛ7Û8', 'wp-content/plugins/wordfence/css/iptraf.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+	Îæë<¼dq…7^³'),
('hCœ®3¿ä¼w:Ï©Ô', 'wp-content/plugins/polylang/flags/pa.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'dyP	Ö›6¶¤FYÜóV'),
('ª5¤gã1ébC¸Éf¾', 'wp-content/plugins/polylang/settings/settings-url.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ý[ªf{”þïPv+gŠ½\Z'),
('½½“#­ùÛ	>û7', 'wp-includes/js/tinymce/skins/wordpress/images/pagebreak.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'äIãÚmÅ…üLWyÝ“H'),
('¾Ý–@ºŒ¨N”¦ _n', 'wp-content/themes/twentyfifteen/js/color-scheme-control.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'g½¤O:Ë]ÉÁ¼ÆX„Û'),
('»Cç~gI/¯‘Éi_D', 'wp-content/themes/twentysixteen/header.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '«QFBN›á!U¬aî†ìÆå'),
('-Ç}Yoc0Š=Gù´ä', 'wp-content/plugins/polylang/flags/tz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÈFx„’ïˆö1;ØÌí\\'),
(':ë­²cà‡×RPe(', 'wp-includes/rest-api/class-wp-rest-server.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Òðñ²%1ðÄ7>L¡˜æ^'),
('k˜‘²Ðb…ÉgSˆ', 'wp-includes/js/tinymce/plugins/wplink/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ä\\wwûtë^èœÏ¨V…T'),
('¦±–ëg„~Òw\ZÐhh', 'wp-admin/css/themes-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	-¹nm¾ñ%-?¯KùU­'),
('	QW¯ïŒˆ~-Ê\0dÅ', 'wp-includes/class-phpass.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z!ËêTËÞßí·ÌB'),
('	?±Ïä†æÛ™q™uM', 'wp-includes/js/mediaelement/mediaelementplayer.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'U4Îw’å®{fÀì.M'),
('	,¹©/Õ•‹!ç›gyþd', 'wp-includes/js/media-editor.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¥YQg’I6®-_–Œ«ú'),
('	IóÎÚ*éeo²)y/Ä', 'wp-content/plugins/polylang/frontend/frontend-auto-translate.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'œz§`¨Sy‡ª¡‚Wëá'),
('	P=N>Œ¨b"j:~[Q{á', 'wp-includes/js/tinymce/plugins/wpdialogs/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '÷®Ë[ß¢‡9î ¤˜ÑZ'),
('	XÎt\\4vNI5‚ØjËÂ', 'wp-admin/async-upload.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~d4hÊ¥ÚÂhïÆN°'),
('	»ò),¿înÆ¸LÊj@', 'wp-content/plugins/polylang/admin/admin-static-pages.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Tn_*•°MÏ@ÃBÒ:'),
('	Ö9„ƒfÞˆUœfòþæœ', 'wp-includes/js/tinymce/tinymce.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¢ì#J)‰ò§sÖZÑ½ó}'),
('	éñÏÛ09÷-b±…Í©W', 'wp-admin/network/users.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ã\r‘…\roîo NófƒA	è'),
('\n4f7ß]Ï¹¡w²ÿù{~', 'wp-content/plugins/polylang/modules/wpml/wpml-config.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Àè;Ú2 ù$ïÛ>¦\0'),
('\nT•¦/\\9$Y¤U\nÛÊÍŒ', 'wp-includes/customize/class-wp-widget-form-customize-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ˆÐÔë¢ÐìÄ\r\0}ˆ©'),
('\nf†‰Y¡·4&üLð¦', 'wp-admin/images/se.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÖÈ”BÃ`½Ú.}''7:'),
('\nŠÌófÉÓ…;{»tõ‡', 'wp-includes/class-wp-role.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N©òÔûÝ´…c\n€ÀJE1{'),
('\n“µ‘b-ÓVø:ˆƒ|mµÿ', 'wp-admin/edit-link-form.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|’ÓÎA]ˆtÈ_Ï4ý['),
('\n£ÜNNM¼ÔÛ‘4;úpÐ4', 'wp-includes/js/customize-models.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'OK….†q;ŸtçNè‚\n'),
('\nô\r£Bƒä®pÌ­', 'wp-admin/theme-install.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‹¶¦]Â©ä²Ú÷ÜÓÛå'),
('\nýGÆ™nåð\Z@1+U]£', 'wp-admin/css/revisions.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '•Ï7¤[¥zÎ¢`\n°N P'),
('\nÿ…½’UYYÙÈÄ†õ', 'wp-content/plugins/polylang/languages/polylang-ar.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ãCV»IÓ''º ˆ¯ÀØ'),
('"w%â_ƒ„K\\ áuË', 'wp-admin/images/wpspin_light.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÝNmÒh§äÁÅ;\Z@’Ý'),
('&cµYDØ#èP{+¢', 'wp-includes/js/jquery/ui/effect-blind.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '­ÛàŸ<OØmA¬_;OL'),
(')¬Ø“yažv,ÀSáW(', 'wp-content/plugins/polylang/modules/sync/admin-sync.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'kôä)æQÍ“t71É+'),
('F-îrˆ>ÖÇ/52é', 'wp-content/plugins/polylang/flags/al.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|[Ç ²Ï0GÉú¸\0âqîÉ'),
('ýÃÞäYÆîðëqï„', 'wp-includes/customize/class-wp-customize-partial.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%‡w¢Y¹$º‘\náëu'),
('”ˆ¦,H(bæ_F”O', 'wp-admin/admin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'œ;QGzKÄkÀTËq'),
('œ«HVÕ¥½dà³pÕVp', 'wp-includes/images/media/spreadsheet.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ñÀ 4äñÖ\0TüÞÌ‡?²'),
('¼Ç¨•`Ér÷]›ª²h', 'wp-content/themes/twentyfourteen/genericons/LICENSE.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '²4îMiõüäHj€ý¯JBc'),
('éD>ŒGÌJñgñ„À4´', 'wp-content/plugins/polylang/languages/polylang-lv.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ßzŽÀzq_°¶DFUy'),
('òc"ml ÿÇž>o', 'wp-admin/images/wordpress-logo.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'óNö%“d÷ïÏgÍÝÉp'),
(')©L³Ö¤•DÔEpŠÉ€', 'wp-content/plugins/polylang/flags/ec.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'RD!â‘=Žl’'),
('*úOÄ‘Ìâê·åi', 'wp-includes/customize/class-wp-customize-media-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'º6ïñ¸’M}jø8µÛN'),
('Dƒ¬ š2û”K|&å', 'wp-admin/css/nav-menus-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ï<[ås¾ðŽ¬Â\0Uc¼'),
('WR€SÁ¿ÁÀêç\0.\\Ii', 'wp-content/plugins/duplicator/lang/duplicator-fa_IR.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'î7±Þ>lý*kéÌt²'),
('{çMŒ“i»i2n•Ã6Ü', 'wp-includes/js/jquery/ui/effect-highlight.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '•èëæ*ß´Ã¸Nµ¾ø!'),
('’B\r£a3K“µã]¿ëõ', 'wp-content/plugins/polylang/flags/sb.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^Ktø¦t+Ü:bž‡´'),
('™‘ÑAY¦Ôœ+gKª#ô‰', 'wp-content/plugins/polylang/flags/mw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+Ž6›-C„Ñ«K$1_¡9'),
('¬9Ìã@eõKÒFÂ4ª¯', 'wp-content/plugins/polylang/flags/tt.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ž­GáÔ†''±€lÙ’¶,Œ+'),
('È‰¹B“Ã·ŽÅÑìÖcP', 'wp-content/plugins/duplicator/assets/img/create.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '»EÈÌóŒ¸huÏ54R›'),
('\rrÇµi§ó\r2u¼1Í“$', 'wp-content/plugins/duplicator/assets/css/images/ui-bg_flat_0_aaaaaa_40x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*DûÛs`Æ"¼öÜï‡Ø'),
('\rxÝ^´§¿\Z ƒ½<;', 'wp-admin/my-sites.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'öP:š)=ÏÆÞ‹W•'),
('\rƒvNõÌ[BáÓ&êØSL', 'wp-admin/css/common.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¸õïDÊ^.þ{‚¢ã^\Z'),
('\r˜Ò§xOzäâ†÷z‚¾h', 'wp-includes/class-wp-customize-panel.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '©ç,	3ÂÜüáñ˜Äšß'),
('\rœ:‰:‰ìõHHù:d', 'wp-admin/css/edit.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '!i†Åh6!''ŠÜtRv''Y'),
('\rÃ%ÛáãÏ%¼ySý`ð', 'wp-includes/js/crop/cropper.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '—²–ÙH.sÅo¿ö¨â'),
('\rÑª1s1=¬¡`(˜y', 'wp-admin/options-head.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ºÖ•`^m°N@\nTof~·'),
('\rÙ¡åóŒ™éHü$èÉ5', 'wp-content/plugins/polylang/flags/ne.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'òìÍe`]‹«ÍÓ¯K!^Ì'),
('#ç–­Û­ªv"þ—M¼', 'wp-content/plugins/wordfence/lib/wfAction.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '@â’Ó_Ïí­…òµÉ>js'),
('9ÂÇÞ.¤-Oã(01÷\Z', 'wp-content/plugins/polylang/flags/kp.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ª>ÈK®’ƒ©–Ÿ.6\0€'),
('XÿæHå¥¥(»:ÈZí©', 'wp-admin/admin-ajax.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'öBÚ]àOñ|Z¾\\ eŽ•'),
('go¬sœVã£;íÇÿ…\n$', 'wp-includes/js/tinymce/plugins/compat3x/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'RÌ‘54mÌÉ%Ž®U†Š'),
('qôºnBhª+‘Ê“ôÅŒ', 'wp-content/plugins/polylang/flags/bo.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'TÿazD‰J7µ¾sôc'),
('Ì ‡ì¡CªY–Žñ', 'wp-includes/pomo/entry.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'íðË½Àú`¸1La'),
('Í>ÿMÒ8¸ Ùµ­Ñ|', 'wp-includes/images/crystal/archive.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '–SÊúðŽœÌI0Anë'),
('ÏËKRò<Ã‚ñ¨…RŽB', 'wp-content/plugins/duplicator/assets/css/images/ui-bg_glass_75_e6e6e6_1x400.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ô%CVÂ¨É£ƒ ^òÄÞ"Ä'),
('éOòljO*]\Z’­O_~', 'wp-content/plugins/polylang/languages/polylang-zh_TW.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}Ø~s¯²^5Z’q9=³'),
('ëå"\rJ\04°¹''i´', 'wp-admin/js/password-strength-meter.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'M‘(F—VpÉâ#*ï{´'),
('õÜFåøx(4¼_E²õ‡', 'wp-content/languages/admin-fr_FR.po', 0, 'Œó¬8¯´‚Éáä_ñIô', 'Œó¬8¯´‚Éáä_ñIô'),
(';ˆ&œnb±ËiÞÙ·©', 'wp-includes/js/mediaelement/silverlightmediaelement.xap', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¨:¸:=C".K§|ùn\0tª'),
('\\Üàã”·ðAV*ç±¿', 'wp-includes/js/jquery/ui/slider.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}	1l4ß&†áQW•ïLÈ'),
('‘à‰G‡6}éÐ›’÷', 'wp-content/plugins/polylang/flags/si.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÙN§šZŽi\0”\ZqÅ‘'),
('•c­ÛnxÀÔº|È', 'wp-includes/class-walker-category.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'M‚{3bk?KK]Qõdj'),
('Ç~N¿p½÷v7Â.ôQ', 'wp-content/plugins/polylang/flags/ye.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ')	²ïBº)¤Yë'),
('ÇÝ¡=½½Nx¼‡KÔ`*', 'wp-content/plugins/wordfence/lib/wordfenceClass.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'p\nßŸ™ÞEÝ+¾oÒxÐœ‚'),
('\0õª]Àaðv•”¾CY', 'wp-includes/class-wp-walker.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Œ^ZP»¯£æÀáÀåX}'),
('“¢þNVÔ±³æˆzÃZ', 'wp-includes/js/jquery/ui/effect-shake.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' ''JgVêÌ¯\0@p•'),
(')x¿]“[ÔÆ_*X¯', 'wp-content/plugins/polylang/js/user.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'v¾Å1ÿšU»úCRF¦'),
(')Ÿ_æö’J¯‡×™Ô', 'wp-includes/js/media-models.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '˜ú3a(óÀÚqõh ÌÓ'),
('H¢j’y‚\\¯8ã£½ªN', 'wp-content/plugins/duplicator/assets/img/hdivider.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ù=|éQ¦]µÝüÖè'),
('`™&­¸é”¥~K3/d', 'wp-admin/css/login.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>"ý´ÁP§Ff6¬õ»‰'),
('#eRÐæÇ~[ùâÎ	)', 'wp-content/plugins/duplicator/views/tools/logging.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¸ÚÈBeÌ8õõ¼š¬ŽŸ'),
('¸œÒ‘-èÌôŠ\rŠ{,ï', 'wp-content/plugins/wordfence/lib/wfCache.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\nH/±=mcÍÚJ1šŠû-'),
('“~˜âLÉÎ*Ä,Ä<:¥', 'wp-admin/includes/theme-install.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ']‡t\r„ÕIPSkÓ†ƒ±'),
('®SxÃß4®@oÁwïN', 'wp-admin/js/widgets.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'IäG© Û>XcÖr&Çmh'),
('Éèë:m¡°[Ý¢¯:#', 'wp-includes/l10n.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':–›W£AÃ­X5•4lœ'),
('ÏI¢Ø\\j¶¬ÑxÌÍËg', 'wp-admin/images/date-button-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ')R“,$kù‚„)6C¨»c'),
('éáæj7r[¼,”ÌüZÖè', 'wp-admin/upgrade.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '²ïÝ\0:êÍIêƒ%ü’0\0Ã'),
('D©8hFÞ›BViRî¨', 'wp-admin/css/colors/blue/colors-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'T¹C9‚¬4Ä€q;ÀP'),
('J9?Å+‹æQÓé´µÃ', 'wp-content/themes/twentyfifteen/genericons/Genericons.ttf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '½&twØ4·Ð‰”pc$'),
('j×»ý‚óq.»*;§á2', 'wp-admin/css/colors/sunrise/colors-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2æÉ³ª	t\0óÒ\\¾“ø'),
('™I³yêú^Á‚r‹8Þc', 'wp-content/plugins/duplicator/views/packages/new2.base.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'tÜfñ-ØÏ…°åmf39JR'),
('œZß1h¦Šý–‘ŒN3Æ', 'wp-content/themes/twentyfifteen/js/customize-preview.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'àÙtµñ?\rÍJ4¼ÅaÃ)'),
('ÒrˆWê®3¨™ãá¥¾V', 'wp-admin/css/color-picker-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'æé%û(±‡Õ*5O½µo'),
(':²Xæ2ìMÓþÖ~ûÈ', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce-small.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ß¾\\H„]øð9‹Z©¦'),
('LÖÄüý8àï€õ\\¨Ý¼+', 'wp-admin/images/imgedit-icons-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',ãî''ƒ£6U¦½ýÃÌát'),
('pÛžÔ2N<:Z¥7»r‚', 'wp-includes/js/tw-sack.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¹‰¥½„öëËÁ9>Àæé‘'),
('uŒ)8FG9¡C°(¶š', 'wp-includes/js/wp-ajax-response.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^Œ­·«òïû¹ÀO%õ'),
('¸·áClo¦¶±–¯éÒ', 'wp-admin/nav-menus.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '_ž«ý	Lý9ñ)-ž6öQß'),
('½Í»Üñeˆ"\Z`g\\Ržï', 'wp-content/plugins/polylang/languages/polylang-hu_HU.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '=¯¯à„,IØ¦tV2G©É'),
('ÿ´-¹†i>bsŒ›1é', 'wp-includes/js/jquery/ui/resizable.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '?²*êâW“iÅXã¶Õ¿'),
('‚&êÎŠ·Å¸\ZÈ.‚Å', 'wp-content/plugins/polylang/settings/flags.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÎÎÞ[ùÕ)†¶ÀöKÞ'),
('ƒ¶4rèˆ%ÞãÓÉj¸ž—', 'wp-includes/SimplePie/File.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '®º­kU‡6ê\n¯+ë)%·'),
('ˆÞKS+¡e×ŽA†@“Š', 'wp-admin/css/colors/light/colors.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H›ÖGå³#ïˆÖ<å^o'),
('›» ÆíFe±	57[é', 'wp-content/plugins/wordfence/lib/email_newIssues.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¨âÖª–jÇ|HÙºÎ­'),
('¢ýñçUNEAÈgït', 'wp-includes/js/customize-selective-refresh.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '›š''6ž®÷åžöBMLßR'),
('ÄòwÁ/@Cí*b­Ö¼—', 'wp-content/plugins/duplicator/views/packages/new1.inc.form.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'MÇVàß>›ÒYÚ(X¾jÝ-'),
('ÌAÂoÚ!ÌVáêÅ³`v', 'wp-content/wflogs/ips.php', 0, 'lC¤dbï.§Ë´ëƒv', 'lC¤dbï.§Ë´ëƒv'),
('Ü0æ½å5Ì·mkäí', 'wp-includes/js/wp-a11y.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '€r#»ôUûiç¥TÆ:M'),
('.µ\Z¸d4aÇÚñûÑ', 'wp-content/plugins/polylang/flags/ni.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ô:_5H…ÞXâåûÚš˜Û'),
('ŸoÕp‚–ÄpÉ\rˆ¥5Ý', 'wp-content/plugins/polylang/languages/polylang-he_IL.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ª{%qTd„ê…Ä%–ó?¨\n'),
('¥-ƒèBññ|tS^¼', 'wp-includes/customize/class-wp-customize-nav-menu-section.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ö]~âÁîFÒøc9*'),
('¦TfP¬%,5HäÄ4Œ¸', 'wp-content/themes/twentysixteen/genericons/LICENSE.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '²4îMiõüäHj€ý¯JBc'),
('Î¢ƒSËªÄ\n´–BáV"', 'wp-includes/fonts/dashicons.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'xihÍ7‹w#ØŸ¥šµ'),
('˜¯Ü¡9îu_\\\nÃ9Á''', 'wp-admin/css/color-picker.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÑV¥Õ¢Ø\Z¤]U³‰#nŒá'),
('ÈKUõg0MU¿/šöÊ‡', 'wp-admin/admin-functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ãóga¢ÍÎc3­aq½'),
('4;VÏô''Œ/¶òæ¨fº', 'wp-includes/js/jquery/ui/effect-scale.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Õ}0e,)Ãàã°+m·T'),
('<éýí$qØh	žæ‹ÿÙ', 'wp-content/plugins/polylang/flags/fm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Óv~©TfWÇåcÔV×T'),
('Ceû¼¸v&¾þººbúÇ', 'wp-content/plugins/polylang/include/model.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '8/Ô¾×ñôQ¢±YHÿt'),
('ÛÞC\nŽ—äU¾„ü', 'wp-admin/js/custom-header.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2³\0X‡¤Ë`oìÀœuf»'),
('¤Ê0l±ÝjÆ0+%ò', 'wp-includes/SimplePie/Source.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Žƒ»ãàðS{³*Œ–ÿ'),
('û÷Þçª’·u£¡\rZJW+', 'wp-content/plugins/wordfence/images/help.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$NÇü;''ý‡MÏÏùò Y'),
('ü)§£™Št\rî,½JÚ¼', 'wp-admin/options-permalink.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\€õ5Å*é12zDVäKÑ'),
('ö?Ç„£ù€ë:\nÞÖX', 'wp-includes/customize/class-wp-customize-theme-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'à-Øõ6üq±üÕ KËßï'),
('Õ(âÕí¾ÓÙ@—', 'wp-admin/js/press-this.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÇÄ\ruùs—\0¬k½Ø:'),
('Wl…Øy:Ï\0Vn`„d\0–', 'wp-includes/js/tinymce/plugins/wpview/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'sóÑ{3T''¢TäŸÍÜQœ'),
('Œ,4#¢…(ç#', 'wp-signup.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Èù´¨LÜÔë„ØôG3'),
('ýÕ’ôùLÁùìži', 'wp-content/plugins/polylang/settings/view-about.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '<©ÔoBaI(y8L'),
('œÕl\0''Æ¾DCÂ/©', 'wp-content/plugins/polylang/flags/np.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'RÁdE=ñ:»ÎÛè/('),
('y7¯ÐMAä@ š…', 'wp-includes/widgets/class-wp-widget-rss.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '™\\çYÞ­ã+PØ`Iž'''),
('FÒ’+#9\r¼0œÀ³°Ñ', 'wp-content/plugins/polylang/include/widget-calendar.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '²¡Ì±Ò84«Ïµì¿ÜF'),
('wËAÉ/	¢ÿþ»Ä‰\\q', 'wp-content/plugins/wordfence/js/jquery.colorbox-min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4?JÇƒ³Gý`’\nÖNÊxl'),
('xÙ,Â¨þ¶N2DñµË±', 'wp-content/themes/twentysixteen/screenshot.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Þþn\\#J³/<WÍ'),
('ÚR¾ N+`gVOŽ¦Z', 'wp-content/themes/twentyfourteen/single.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'NþOG(v!$ŠuLùšâa'),
('©:8ÏIaö¹Ã¸lÕm', 'wp-admin/includes/class-ftp-pure.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '°ä6é-KwˆypV-Ò§'),
('²þ£²KqMÃä{ƒ±»', 'wp-admin/css/dashboard.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'µºÀ©ÝˆñKT€@'),
('ÂTB›¤O>ßv2íî}Ea', 'wp-includes/SimplePie/Locator.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '€s¤ÆÚ³;‡uvf^õêµ'),
('Ç5@ÝšôìL ‡gzW', 'wp-content/plugins/polylang/flags/bf.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ìeï§L×6y3ìÕ! K-'),
('Ómò‰ÜjgÝ.ØåP±Ø', 'wp-content/themes/twentyfourteen/content-page.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'fÚÓ2"ÙzYlú/œ¶ƒ'),
('U€?bëcÇƒq!Žþ›', 'wp-content/plugins/polylang/languages/polylang-my_MM.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÿÜ\rËZØE‰^uä}ý!ë'),
('¤8ª$å]›8¾EÙ9', 'wp-content/plugins/duplicator/assets/css/images/ui-icons_888888_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'œF×Ê´>"¡K­&ÒÔ€m€'),
('FbÙ‰®«QÕl¯š¼¢C', 'wp-content/themes/twentysixteen/searchform.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‚ÛÔ›h¥u%Ð>¼×\0#^'),
('F«ÒeÀûÖ}í(·å¿', 'wp-includes/js/jquery/ui/dialog.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$aVõ{Ô„™õ,•0'),
('{SàôbŸ3	·?kix', 'wp-content/plugins/duplicator/views/packages/details/detail.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Y»U=²nšüªb°˜«'),
('ŠÈàý×X/÷Û\0þƒ	', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/parser/sqli.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2Hs£=Fûá­\nnH'),
('›YÕ@:wò-×wŽi³N', 'wp-content/plugins/polylang/languages/polylang-pl_PL.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.iÈ°Ã†ÅÓg÷Þ'),
('ø3Æ¹Ü•jçbišÎ¥î¶', 'wp-includes/customize/class-wp-customize-nav-menu-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¸oôW‘ÁdH‚zmc÷I	³'),
('}êœ›Ÿ9LÓ{ÞX\Z', 'wp-content/plugins/polylang/languages/polylang-hu_HU.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'X&•‘ðÒ+‹µ17èA'),
('dØÇéŒ©Ö<Õ5kw\0PŒ', 'wp-content/plugins/polylang/frontend/frontend-filters-search.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Äåâ/Å K>@~âƒ)'),
('å¼`1¡ž¤Ü÷oãëx', 'wp-content/themes/twentyfourteen/functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÕÙzŠÐ‚¤×\nEi¾+=+'),
('óSH6¥éŽo×\n»Y', 'wp-content/plugins/polylang/include/pointer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ŠRò1”DúÚ—Ú(¼°'),
('û³>Ù/á¡‡_ó³éÃÀ', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce-small.eot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Òl([q×ô°ÉD#ï™'),
('ü&UX\rèL4{šâÑÔ', 'wp-includes/js/utils.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ôÁ¿ÁNxÅÌÜ½ÿ7ÍF73'),
('\ZWÁk»¿ý{¶_XøäÀ_á', 'wp-content/plugins/polylang/languages/polylang-he_IL.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'n1)ˆHtA(ßÆü€Uz'),
('\Z±e\rÖóäj!^²¸	ã÷', 'wp-includes/js/mediaelement/bigplay.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'qd6û=ðÒžk7ÝbÙRgj'),
('\ZÚµ|-Ã!é >ÈpÎaO{', 'wp-content/plugins/polylang/frontend/choose-lang-domain.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ž"¥I|ýå%˜¦P6C'),
('\ZëãèÁ¡•)qtsCI9', 'wp-includes/functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '`FŽèuñ \0ŽÚ¥sÏW;'),
('\Zïy‚„8R#O¬yÎÆ', 'wp-admin/css/nav-menus-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '—r§Ö2N›½`ssU¡'),
('\ZúÃ\Z:\\®RfùPÛ~3', 'wp-includes/class-wp-metadata-lazyloader.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÆZæX!àÐ í7Å-¼¾å'),
('\ZýUEäs(î±÷ž#Eöp', 'wp-includes/images/smilies/icon_mrgreen.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ýéäJŠ®‰½Rw’´wšÊ'),
('Ówäiøhg$¢•óÒ', 'wp-content/themes/twentyfourteen/languages/twentyfourteen.pot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ë/œÙq…A‚»!62ýv'),
('A”ZÊå“–Ì…Lƒ›(', 'wp-includes/js/mediaelement/skipback.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÍmÈ0ëE³¥©k¼“oõHF'),
('L''•ä#TQ­šQÌ~×ó', 'wp-content/plugins/duplicator/readme.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'î{Ž¼$¦9ó›Âˆlp'),
('§y´ÝÚ!¡\0pZèˆ[A', 'wp-includes/js/mediaelement/mediaelement-and-player.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '…e{½äË:ÒWªŽ'),
('Ö»E\n»<¥B„[ì,', 'wp-includes/class-wp-ajax-response.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÂHnö/3=¦œ	ÜÀ‡³#'),
('”mÇn9ÆF±6·', 'wp-admin/css/admin-menu-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'l5å9cï5YŒ¿;/™G'),
(')úMæÈ^ð¶Ã»ozð©', 'wp-admin/images/loading.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-[’¶tÈP¿ðì¯dì'),
('4%·IHÄO‘‹Ê°ÒL', 'wp-includes/css/media-views.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¶ÎTÑËn=(ªÜ8'),
('Cð/ù;)ŸªÙ‘î°o', 'wp-admin/js/comment.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÙãÛ\0ÜÆïMLÿE]ËœU'),
('Lo¦SX÷‘ó9!rÀ4‚', 'wp-content/themes/twentyfourteen/genericons/COPYING.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¹B;–ëa`GÔ¢·Þ‰'),
('TËgslFí¢æÊžàõLy', 'wp-admin/js/set-post-thumbnail.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‹ÅÊú8¦Õ¯!1z['),
('vs%Âz¡ï´úø¾FÓ', 'wp-admin/css/ie-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-vWMç31®š®•\Z¼T'),
('z˜|*6žS\\5·ã¯3', 'wp-content/plugins/wordfence/lib/wordfenceScanner.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '€ª–I¯þæÿÑd»ÑAi¦'),
('Sm¥¢Àq”™=ð', 'wp-content/languages/admin-fr_FR.mo', 0, '=6VjºÔáèípú', '=6VjºÔáèípú'),
('œ\n$zßX£`Î1Bw', 'wp-includes/js/tinymce/plugins/charmap/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Šy15ü‚h&[2(Æ'),
('´=b¤6šÞhs€ªæt', 'wp-admin/ms-themes.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R¹K•Ê$¼IZ1Æi%Ø'),
('Ÿ¸''úFEŸA–vQMv', 'wp-content/plugins/wordfence/lib/Diff/Renderer/Abstract.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>\r°Ã5]xVIÖ''Œiµ'),
('Ík0Bßâa÷î¬`Ë', 'wp-includes/customize/class-wp-customize-nav-menu-setting.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¼FÐv\ZÒ¨xkéàbè¦'),
('ÙFÊhJÍ6B±Òé^›', 'wp-content/plugins/polylang/flags/mm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '5›ò°(èÿñqö„üZÜh'),
('ê-=Q°CwàtnLà¡#', 'wp-content/plugins/wordfence/lib/wfBrowscap.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '€äQ?SXl†µ4¶Zõ>'),
('øc=|uŸér´', 'wp-content/plugins/polylang/flags/ve.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':î$ú_j…õÎE /ÜÌ'),
('\nœßO‚_˜«;]/^™ç', 'wp-includes/images/down_arrow.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'eÜÈ]:uÿWvûãß"·â'),
('G_bc©.,]&Åè', 'wp-admin/js/image-edit.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'lMÑŠŒ.ª¹ìµ*Ã¨\\'),
('fMx’íª¹®	é+9•U§', 'wp-admin/js/customize-widgets.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '™âãPÔ±04Œ‰Sv'),
('o0ô7>—NÎXrë\\@', 'wp-content/plugins/polylang/include/nav-menu.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ñÍ2æ}ç€.m¿!]÷Ç'),
('‹%„ä\\ùÂMA‚íÒïÿ', 'wp-admin/images/wordpress-logo-white.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '½ÙqPûCª†-SPDæ÷'),
('Žšƒ¬JÌ}F·ßE\0Þ9³', 'wp-content/themes/index.php', 0, 'gD,Vë§=\\ÆbP', 'gD,Vë§=\\ÆbP'),
('¶ÊÛÁÛÐ„=£½)&H¦', 'wp-content/plugins/polylang/flags/lb.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÚÕØo\rÌ ÿJµ3-×ü'),
('À"j¨Ç§`’ÕÀ¿ç1¸', 'wp-admin/css/press-this-editor.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ô#¨ù-` ÐYžU'),
('Æ=Å}CðãîiðÜHT', 'wp-admin/network/profile.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Øi&§Q\\Ó¢ð¥ç¶¨'),
('Óg¹›I†!Ù­ÑÇÖ_Æ', 'wp-includes/ms-blogs.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '’ø¨ \rRCT-Ø6Ô—‘¤'),
('Üå]/~ÿøÕq¡¥XÅŽE', 'wp-includes/js/jquery/ui/button.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'n]?ävk¡Í:åƒS'),
('ì’³\0<ÉWÂ]îæÕP±', 'wp-content/plugins/polylang/frontend/frontend-static-pages.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ï=™?I&±êßªV¢Tê'),
('<Qà4›¾,‘ZhÊ¨„|', 'wp-content/themes/twentysixteen/functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\r,RÁô<înÆhk¾¶Ùõ­'),
('Rñˆ\\µ&ˆ†T	À|`', 'wp-includes/class-wp-user.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'y¡¹Ÿ¨qxÎì$ÓQÈÙµ'),
('ynmÀ;˜/ÐUsK	»¿', 'wp-includes/css/wp-embed-template-ie.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Zì<¬wVé´¼¿\nÓœwr'),
('|Ú&;Œr¢Ls5ùŠ', 'wp-admin/includes/comment.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ')ë\n kä¬6àðYÉ>ò+'),
('‹öÂYe¸.ð0s–‚', 'wp-admin/includes/class-wp-comments-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ë`pã¿3vœÛ¡éT¶»\Z'),
(':¿¹q×ÆBƒ÷îâ', 'wp-content/plugins/duplicator/views/settings/general.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' æ7ÂjÅ[rcì»«1¢‘'),
('¡Ð''-ôpÚ-Ïûñf¢', 'wp-admin/css/l10n-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ó›÷P¹^¶i¬&»ö§Ò'),
('ë‰¶oîÇ¼«á\Z€¤@ã¿', 'wp-content/plugins/polylang/flags/ar.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/£W†Žfñ®ÉÄÄ#ªE³'),
('/)s\\;R?V7oó3', 'wp-content/plugins/duplicator/assets/css/jquery-ui.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¤g%Õ:=³Ê¹BB]'),
('LäåbPÞ-I×­1f€', 'wp-includes/theme-compat/header.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'oWqOGÑç -Ô{a=ÐÝ'),
('N¡d#R­‡+«Ár\0s[', 'wp-content/plugins/wordfence/views/reports/activity-report.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Æ\rýÿD³7p=;Ê£à'),
('t‰Ž®‘Äô!æ\Z‡%\n', 'wp-content/plugins/wordfence/vendor/composer/autoload_namespaces.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '5á,}vÄ¨3¼õGÀâ)©'),
('˜{…éYÂ\\ÀzéŒ¿°}c', 'wp-includes/images/smilies/rolleyes.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' ¾¾ðO…2ßOfÝ£i'),
('¦€ÊÜj¨nèŠZ‡u÷I-', 'wp-content/plugins/polylang/flags/gb.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '”™›ˆ0¯Às>ç¶àƒ'),
('»;‘@;w=ÈÐd}°', 'wp-content/plugins/polylang/languages/polylang-uk.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¥°)ŽÜF(\0àSh6ƒ%'),
('»(ˆ!UM‚ÈÑž', 'wp-content/plugins/polylang/flags/eh.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}Õ¤j4¾âñ2ñ!:”{'),
(' *@ADÒ“ˆ=pu°˜ÓE', 'wp-admin/user-new.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'P½)üYNàÑdÙÏ‡¾X\Z'),
(' àôcÌ«)IŒ\np,Í‘«ƒ', 'wp-includes/css/jquery-ui-dialog-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '“Ÿö£bŸº€ã.|Ri'),
(' âp(?Qníˆ¬ÕaÛZ', 'wp-includes/js/plupload/plupload.silverlight.xap', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'tq\0Á…Ï3öX‰0¥”b÷'),
('!Ú|H`gÚí¥K:~è¸i', 'wp-content/plugins/polylang/flags/at.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'b¿\ZVSi+4²îsJY°b'),
('!o\r¿ÍAˆŽv7àÜe', 'wp-admin/update.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÕÌ»y‰R¥¨ÝI™U¼,&'),
('!1bÝ…9 ª*ãÀÿ\\áÆ', 'wp-admin/admin-footer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¥_¡ÞŠxÀ¥0À|,Ý'),
('!_Ÿè¼µp3p™n×ÓL', 'wp-includes/images/smilies/icon_eek.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¦Æ_¦ÿsŽöÄjN€¦_z '),
('!ÕR•á›pûnLÑwâm7', 'wp-includes/js/tinymce/plugins/lists/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‰ÚªQ.ÆF…ä:{À''æ¶'),
('!ñOŠ4ÖbCRR›fO²', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/storage/file.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%0`~l>óm@=x-Ì?'),
('!ôÿ·íY0-z1àdm>‡', 'wp-admin/js/plugin-install.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2)éÇ7ÂÉ 5Iµ}øÚ'),
('"EtÉyˆsŸÃíÞ\Z|g', 'wp-includes/js/tinymce/plugins/wptextpattern/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ò·ì©¨®Š¶nW''9M#k'),
('"(}GÅÅrç	0—ŽV(', 'wp-admin/ms-options.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¢''Ž\0Ê}Ìþ:Ôã†¯©'),
('"0ÂrN1M•áä#ž áÀ', 'wp-content/plugins/wordfence/vendor/composer/autoload_classmap.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '†EÓ¤ã­‡çÏMˆ¤gª´'),
('"8A\n=ò®á‡¼fp5', 'wp-includes/theme-compat/embed-404.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '«%\0¯îiŸ´çhqíô'),
('"IFnº§­¸@÷aÂ}’9', 'wp-admin/includes/class-wp-themes-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^me}A*\0ï&ßvµÒa'),
('"¡žŽ¾b9®‹eÑ|®_Ë', 'wp-includes/feed-atom-comments.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '€©!I¨áË=j#ŠÎßB'),
('"µòÉàÉu>1Ð7þŽŸ', 'wp-includes/class-pop3.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¥µþ\ZSœ9¿aÔa©‡¨'),
('"ÂáûÂ†²c„¬Ì9Ð&', 'wp-includes/js/plupload/plupload.full.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'JC´›$Vm''Á.''“Ø'),
('"ÓÄ6\r+K{×\Z!a', 'wp-admin/comment.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ƒ¿ ‹MñPV©ägaÀ6Ö'),
('#	®½ê£9—ø$‡Ý¸', 'wp-content/plugins/duplicator/installer/dtoken.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Æ®VÞ{iû¨ÊXŸ~•H'),
('#\nÁô/†ÛPZ~h„Îø', 'wp-content/plugins/wordfence/lib/email_genericAlert.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÇX6^ü)ö¿ÝCUCúÜ6'),
('#d@Kv¡Oî?>>œ', 'wp-content/plugins/polylang/languages/polylang-lv.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1×R¿U†Eí¹8²¸'),
('#­\0ªïw˜Â-ƒw½=èÀ', 'wp-content/plugins/polylang/flags/ke.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '5qRí7ìâ¤Z}WÅ¿0«<'),
('#¿æ<{=Âƒ…ˆÐŽñÁ', 'wp-content/plugins/polylang/languages/polylang-bel.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ºÉ1|$ô.2¨ÔÔè'),
('$’„õ³0S\r˜rþ®©', 'wp-includes/images/smilies/icon_redface.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'm‹‚AùƒR!4a'),
('$¥†µæçþ®/†²4Ï', 'wp-content/themes/twentyfourteen/tag.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¹‹a,„’''VÉ±ëJÛE'),
('$¸[S#t¤ÜÃƒ=å/', 'wp-content/plugins/polylang/flags/cx.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ŽüU¡KGô¹ ÄQ/'),
('$¹Á¼CÁ®Àó/¼9¹¸', 'wp-includes/class-wp.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' ÏÆÙ`fÕàÎWž\0Ä'),
('%û¢Ã›7Òáå¨³Ì', 'wp-content/plugins/wordfence/waf/wfWAFUserIPRange.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'á´æ¶ßŸµg^L„™Ë'),
('%*&ËzEüâW‘KÅ’túÞ', 'wp-content/plugins/polylang/flags/gy.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ø	gÆz˜ÛsÍ‰Å`ý'),
('%oþ?<²‹ èÈ0¤½oÙ', 'wp-content/plugins/polylang/flags/mp.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '’›˜ç¿µ‹«0¤Æ’U•'),
('%yîôÝ^AJ§ŒQ¥q', 'wp-content/plugins/polylang/flags/uy.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'œ¨óÙ±±0¤U\\™~‡'),
('%‡Xr“´ârÒò‰õ9+¾', 'wp-content/plugins/polylang/flags/fi.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ãÒI=çŒ™\ZÆÂ- k'),
('%ºÒàë8^œV<ÑtË', 'wp-admin/edit-tag-form.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '_ì^È9Ç‰Ò9Â?\n°¼'),
('%Çû¯rRRÛ‹’RËr8', 'wp-content/plugins/polylang/admin/admin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ú/£µj-˜–d¯ÍèÐ'),
('%ÐPb.Îÿº8ºGdÎtÍ', 'wp-admin/css/media.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '×âX†U2\0–R&ÝÉ\r'),
('&*ƒÊÄdÄ†Ö¸	ÖH5', 'wp-admin/images/align-center.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	Ù\ZÝ¶µ4yæŒdY1ÙeŽ'),
('&0—^®Û GY”-', 'wp-content/plugins/duplicator/duplicator.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'AGÕÉùH¤ß’#‡ñqE'),
('&=\Z½+tí’"¢/k''\n', 'wp-includes/js/jquery/jquery.form.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÛÃ€„sÞðÎEþVMÇ-Ë'),
('&D²·²6¦º¹š’à³àP', 'wp-content/plugins/duplicator/lang/wpduplicator-fr_FR.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ú]dúvâ¼µ„÷®´K'),
('&SäH1ûS`zuÍp³', 'wp-content/plugins/polylang/admin/admin-filters-columns.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\q÷?iX%¶à¤7ŠÑ'),
('&eeî\n3KèÔãvZ¦•', 'wp-admin/ms-delete-site.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Æògæð›ûkÕ;ºÒÒ›'),
('&t!0^g‡ÛbJˆc,>3', 'wp-admin/upload.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¢1Vü{æ¼¥ê^+çy.5'),
('&…«¼XÉB`]"?×°²\Z', 'wp-admin/css/press-this-editor-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Áz?o«„×õÍ¯¹¡ä	'),
('&‰Þz{—($¿ú“²H{¢', 'wp-content/plugins/duplicator/views/packages/main/new1.inc.form.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ô•wryÐ˜¯	H&žÈ'),
('&¥2{\Z{>å­ø~E×ŒåE', 'wp-content/plugins/polylang/flags/af.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '®|X''*älÞ”\\ÌKí\0þž'),
('&¬‘•Rw?~„j­hJ¤D', 'wp-includes/Text/Diff/Renderer/inline.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ˆ\nån5±P´²ÇéÙB''è'),
('&¼‹]0Wñì\n)ÿ=’¿', 'wp-includes/js/tinymce/plugins/directionality/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '`ÞW%<©:oJÿü9Ò'),
('&É`×OËQ5‘QÕ43¿', 'wp-admin/theme-editor.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ë-í®T4Ëâ””\0³ÈÜ}'),
('&Éßë	PðshcusS', 'wp-content/wflogs/attack-data.php', 0, '#Ø­\n¾îÅyIb½\rÛ\r', '#Ø­\n¾îÅyIb½\rÛ\r'),
('&ÎvA¹öQÍôc‰Úqw8,', 'wp-includes/theme-compat/header-embed.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'º@œ8ZŒYÎ2WUu¾M'),
('&é¥±†˜ñòW‘³Ø€Ó|¡', 'wp-includes/widgets/class-wp-widget-links.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',-‰ŽTÅ.Ý ~ðÑM'),
('''=!Za„ÍaâÛæjUÑQ', 'wp-admin/css/site-icon.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Qï.]d¹·»L+ˆÏÒU'),
('''Mþøwˆñ‘·ƒãÇ\rKj', 'wp-admin/includes/class-wp-site-icon.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '§õ\r«8\nõÜ”Ñýwƒ'),
('''‹ü»ž ˜oÈÍSŠ', 'wp-content/plugins/wordfence/images/icons/ajax3.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'mwßß´tê“''\n¤ñís'),
('''§Ùù‡R*å¥öäñO', 'wp-content/plugins/duplicator/classes/package.database.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ˆX„ô©¥€U†Ò‹ÇÁ'),
('''­GL¡qÐ®Œ%¬¦H', 'wp-content/plugins/polylang/languages/polylang-bel.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'üŸ’ÿW®ÕWlÉ‚T.Á'),
('''²¥Tëð*<œ=`²Ó¿', 'wp-content/themes/twentyfourteen/image.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ð«p	šDŠ•ÆÆ.r.'),
('''»â?·hÏ	}úY\0IG', 'wp-content/plugins/wordfence/lib/email_pleaseChangePasswd.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'è*œGs£WcÈâ3'),
('''¼ûHéBÃ/Ÿ,|¬i¿', 'wp-content/plugins/duplicator/views/inc.header.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ªqˆÈ§tP¯¦æœc«i'),
('''ó! 2‚“SÎÊíLÄV6€', 'wp-content/languages/fr_FR.mo', 0, '²7Ìá²>l\0ÉdI¦L', '²7Ìá²>l\0ÉdI¦L'),
('(ˆÔg%\0ÏÃ4ÝÛl>œ', 'wp-includes/js/jquery/jquery.schedule.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '&³—TªkÇfØž¤Ä½'),
('(?ËÜ×>¹ôS©Næšœ&', 'wp-includes/images/media/default.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-¶©æÍIÒB–hÎ@àÞçb'),
('(Yv^ÔGî:Òÿ<GÂv', 'wp-content/plugins/polylang/flags/ee.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ßª¡ñpÎíF3žþ:ö'),
('([d‰˜ùº±¡×ïBQµ‹', 'wp-admin/js/updates.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÃÓyÐVaV§òÕ#™¸¾b‚'),
('(x*J û…,…LÃ›nç<K', 'wp-content/plugins/wordfence/images/icons/arrow_refresh.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'k•w„`ö`ª|ô}$G€§'),
('(~6vqVì0ô{†"', 'wp-includes/ID3/readme.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '“–ßáÆœ“Ž±VLN[«'),
('( ïv|Tâ€” Â¥Ô', 'wp-admin/includes/screen.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'à¢Š_Ø9™óSùÐ\n_Y '),
('(Þ¦¶³èµ/²»¤6`ü', 'wp-content/plugins/polylang/flags/ss.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z¾VòûÜf/êÙÎí&@@'),
('(ï^¦3N½š©“‘¢3', 'wp-includes/wp-diff.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '=YÖP`6NÒÓ‹§qAö'),
('(õÀÙmáÜ¨Éâ®', 'wp-content/plugins/polylang/flags/fr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÁÏtÃ0^VcTzHö­-Œ'),
(')\rM5×:¢™OD<~—W1', 'wp-content/plugins/polylang/include/translated-term.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'íñ|\0©¡r¬°ßÁ9Ü~¥J'),
(')/$˜ûƒ"µ‰ÅÅS6´''', 'wp-content/plugins/polylang/flags/km.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ì”$†™ !À³X#ø4'),
('){ôjW-_€Q=?íGlÒ¢', 'wp-includes/media.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¢tC‹ô"ú*³Í]üœ“x'),
(')¾Oz=œu©‡î£ÄË·', 'wp-includes/rewrite.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‚…‹Îw\nÕºÓà³I¢:'),
(')ÝÛø]ïÝÕZ$ÙP%', 'wp-includes/embed-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ë°K?FþD}d,˜xù]u'),
(')è¹f><z0-AUi', 'wp-admin/js/wp-fullscreen-stub.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ã‘2çò86’%OšÅ†'),
('* aØF²Ìð4Ÿ°uÛvU', 'wp-admin/images/menu-vs-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'J¨ZY<÷iÇY®„bø'),
('*t$ªß‹vÃÑnåÝsñ', 'wp-includes/js/swfupload/swfupload.swf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '½Z%ò5‰e,¤rÔáHO'),
('*®ä-3öu¬EÂ[ÕO#', 'wp-includes/images/down_arrow-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' s¸¡î›$‚6(Ú@¨a'),
('*ÑþLím&&2ýÕ\nb', 'wp-includes/js/tinymce/utils/form_utils.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ùÆT8?ZP©§{-ý®'),
('*ç\Z07Ñ¥1OÓÓÙŽ8', 'wp-includes/js/json2.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 's¡×{N‚|EO«0©'),
('+9…£Œ[BUûE–e', 'wp-admin/js/updates.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '…\n%—m9RžÕr"ÛÍ4'),
('+ŠæZè\r9“"±Ìä=v', 'wp-content/plugins/duplicator/assets/js/javascript.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ôÈo\0D­iÃ”¦˜±F'),
('+³§G*#ô±íô¦”ýf´', 'wp-admin/network/site-info.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\0š‡á\Zú	?l:|=6âC'),
('+Äãøt¨%R?ÒÛõø Ì', 'wp-admin/network/credits.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '8,Þ4,ÇìõXõŽôuð'),
(',<“ª ß?C]á0AŒ', 'wp-includes/js/tinymce/plugins/colorpicker/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '»(oT´ûÎRÒïaÇ'),
(',BÚcÅÝÖÔ›Zù4Y', 'wp-includes/js/swfupload/plugins/swfupload.speed.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'AZ7‡„k¶Â×E`,*ûs¬'),
(',†áÔ@µšhjäqrÞ’ÿ', 'wp-includes/ID3/module.tag.id3v2.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'òc£…ŠÔFyÙO*î­N'),
(',ŠhÉƒs?4B[Ë^Õ', 'wp-includes/SimplePie/Cache/DB.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Y¿OU£õ’.Üb¼ûö'),
(',åýÎ1`Ð¦ô…šq;ÒR|', 'wp-content/themes/twentyfourteen/inc/back-compat.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '²šÇ]z4©Íñ«žfß®'),
('-	fÄxµdÇ`GpW', 'wp-content/plugins/polylang/flags/sa.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '`X„ÎÆôFÔ ’À”\ZÊÕ'),
('->ûê]ÔÍµ2j´·Õ', 'wp-content/plugins/wordfence/lib/menu_rangeBlocking.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'åÓçý½o¶Ó`!ÝŒÖ$\r'),
('-_sEdUI¨ÞÄ&PÛ¹|', 'wp-content/plugins/polylang/frontend/choose-lang-url.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'cë''ñ_ðb·Ðÿ¼—Ñ)'),
('-c¨D—÷K~aÄW¡¿J', 'wp-content/plugins/polylang/js/admin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'xcÜ+¢×ƒ ˜ÝînÎ '),
('-kdÏ¯‘ªXßw\\7ŸÀ¯', 'wp-includes/admin-bar.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÖÞN¶ïÕÝò1;yà?'),
('-²êÑáÇ¸†%w=õâ', 'wp-admin/css/colors/ocean/colors.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z|[ýŸ¯lÇ|Ù±f%h'),
('-‡º)7¦5y°8cÚâWvØ', 'wp-admin/about.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'áýlK/[’â’²Ò-ú'),
('-Š_º×+ÍÔYn¨ÙS', 'wp-includes/js/jquery/ui/tooltip.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '·]GÒƒ‘‹ï¸ÍÌ@EQ'),
('-ŽfâÈ4]Û#"u¸³l', 'wp-admin/css/colors/light/colors-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '"¨ôþhÝ>Ñ''Ð‰˜^'),
('-œçŸè—‚ ‡Y{]nsƒ', 'wp-includes/css/wp-pointer.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~Ÿ×‚`.­\rÝ‘ì¾`°x'),
('._IõWóˆSãÁ’êòo', 'wp-content/plugins/polylang/flags/dk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'þ’l‚q³_ëô¦Ë\nA±ë'),
('. Ó\0_oEÿ]Aµ_Ô0PJ', 'wp-includes/js/tinymce/plugins/wpautoresize/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'd¼\0XcŒO°@pÛÏ%£'),
('.IhUœŽâ3Ž¿+B\Z„¼', 'wp-includes/images/admin-bar-sprite-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ëQ¬ë›Æ8þôo€Ê'),
('.Z{=U¼uß©AJ«‡*', 'wp-admin/css/press-this.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'iÒ\Z÷ðkG£;B‘n{Ò'),
('.ˆu±¯Æä@ÇÎIosœH', 'wp-content/plugins/polylang/flags/arab.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÔaÖ\\ƒ3Ç½ÕÑ=''åÐ'),
('.¦EÇ[JõÏlžxßã', 'wp-content/plugins/wordfence/images/forward_disabled.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'M_ÚÖZ?ÚN)ºÒŠê:Ü5'),
('/<Ø§^É¼f}–"×øû$¸', 'wp-includes/images/media/document.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'vå4™8öÎ‘y“6Þd£'),
('/»s»µC4Œ˜àÖÀ€ž', 'wp-admin/network/setup.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'îÏBm>n9z]‰Ñšâ'),
('/áñ''†p•i20ŒÜ÷ï	R', 'wp-content/themes/twentyfourteen/sidebar-footer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'à«`éÜktÖ™óÌ|,6'),
('/é¹ ìÄïÎ°1Êiw‡§', 'wp-includes/images/uploader-icons-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '­Áç°&-€äO¢‡Ã•Ë~'),
('/ùNí/Ô¿ô’äèùÿøÊ', 'wp-content/plugins/polylang/languages/polylang-sr_RS.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'AyçI[jR‹ÐÓ¬ú'),
('0\r“*#ò˜ýûE¿Ë`È½ö', 'wp-content/plugins/polylang/flags/wales.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'BÇÊƒr2$™ÉMò®&'),
('0<’ÎÅÈÿlÚ¿þöJ­â', 'wp-includes/js/wp-backbone.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¹xÓÂ\n%Ê6ÁhŒ)Œ‚9'),
('0]qK''ûf˜xÁ»Ïã¨', 'wp-includes/js/tinymce/plugins/compat3x/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'W˜ãÒû€©›‹×ÏrŽ®'),
('0jïVÆ½Éf:Š5†ç`•\\', 'wp-includes/js/customize-selective-refresh.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4ì—o†iùçqØp¸ '),
('0¤ç€ÅE\00Œ‚XÏH', 'wp-includes/js/colorpicker.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'X«/ºa°’°ôïèª£²†N'),
('0½ÒÔÁ|¢L=¼AB´', 'wp-content/plugins/duplicator/assets/img/google_drive_64px.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '},”¤>3Ê+üÿ\\{b¼'),
('1s¸)6ªÓ¶™•¯C§…Î—', 'wp-admin/user/admin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'è…''ù$´Uûm»xòZ'),
('1ÜEfQ¤v#)ó\nÙ0EkQ', 'wp-admin/images/media-button-image.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~¢ÉÁWÃŽÛ@±ÎbÕrÕ³'),
('1ùÎXŠ/²t60^Ò€!Ü7', 'wp-includes/js/comment-reply.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'V¼''&Ø) {ú€/•z¬‘'),
('2@Üjåj\0¡kÓ²”¡Ó˜', 'wp-admin/includes/template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÊG²¥—=d¿åé)ûk\r'),
('2jÿL,ÃÙÞW\rº®W$›é', 'wp-admin/css/colors/sunrise/colors-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¼RÇ–}Æ8çXg÷¸¨³/'),
('2¯åãº¨a|F–l3]ö', 'wp-includes/customize/class-wp-customize-new-menu-section.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'œH¶â›±08¦¼Ã\n…'),
('2í’Úë-‚0gõ‰(]', 'wp-content/plugins/polylang/flags/tm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '³lç&úÔÚgvN¸\0)+'),
('2ðì^(ÁúÊ­à-^x½¯', 'wp-includes/SimplePie/Enclosure.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.†BënÎKûs]');
INSERT INTO `wp_wfFileMods` (`filenameMD5`, `filename`, `knownFile`, `oldMD5`, `newMD5`) VALUES
('3ÏkMfâ9jæäž]“', 'wp-content/themes/twentyfifteen/languages/twentyfifteen.pot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÅÕy-‡{×zÉ«ÙÿIãš'),
('3I\r“ûz%!<7så', 'wp-content/plugins/polylang/flags/va.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'I6B­kó£D`/àçÔO¢'),
('3''!øé9ê×IDôèL$', 'wp-content/themes/twentyfourteen/readme.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'i9“×æsàB>ƒŠ¶»äk'),
('3+zÀÿ.†±‚6Q~]y[', 'wp-includes/js/tinymce/plugins/wptextpattern/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Bˆ,§ÍùnzóáÕV‘Ò'),
('3-ŠÈE>·ƒAßœì×·µ', 'wp-content/languages/admin-network-fr_FR.po', 0, '¥šëž¹‰í„ûcVµ…Œ', '¥šëž¹‰í„ûcVµ…Œ'),
('3^ÓšWÆy¡sôW%b=©', 'wp-content/plugins/polylang/flags/md.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ä˜U¯8glS½3\rk¹'),
('3bÅ»Ó6¯>ÆÛ·¸£ø®', 'wp-content/plugins/polylang/frontend/frontend-filters.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'žÊØ0ÚZÌ™~°Ð•'),
('3k­¨oW‘5	k[mq', 'wp-admin/includes/continents-cities.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Zç(~ÈÄ ™.û”[¥}'),
('3ÛÕé''º°ÁRKšBfý', 'wp-includes/js/tinymce/plugins/wpdialogs/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'êû±G‰ã7˜(ttâ@¸'),
('3âÉfQ3àhð5[À£W¹<', 'wp-includes/Text/Diff/Renderer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ü‡ ßC0µY7OÜ@ÙGS'),
('3ó\ZmU(†>Ÿ–Õõ£‰', 'wp-content/plugins/polylang/flags/ht.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'µ6Õt3;;ú''ÃÜèV'),
('4<7ñ(=Á®Û7<hòs', 'wp-content/plugins/polylang/lingotek/lingotek.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'òGßy•!HbÙÀÀ×õ ßt'),
('4"^uïYu­DØæÛ—CA#', 'wp-content/themes/twentyfourteen/style.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'zµL³Wù-\ZIepäF`'),
('48²VtÔºš+^Xô', 'wp-includes/pomo/mo.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Å¯Î0lƒD¹¸Š/i[ž'),
('4AIŽn09ˆ†7c`', 'wp-includes/js/tinymce/utils/validate.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ä+Q`½¾ý“×k0RWô'),
('4U_ß¯Ã”mNÈkàeœË', 'wp-content/plugins/polylang/flags/ky.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ú,VÌ%hÕ0‚q?Ù'),
('4aäþ[Iº}çØÜHÿm)', 'wp-admin/css/deprecated-media.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'U?ÅÜÚÑ©P–ÓˆÐyŠ'),
('4€ì!"ú#‹ÑÙo0\r', 'wp-content/plugins/polylang/admin/view-translations-media.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '—9/d§©Qèø?J'),
('4ÕªmªÅ˜+‰Þz+r', 'wp-content/plugins/duplicator/assets/img/logo-dpro-300x50.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‹ïX§Ðív£Áˆ…û[þT'),
('4Ú‚œÙL$¼,K[œuÌâ„', 'xmlrpc.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ü‡ñ:ŽBqÐ…4du¼'),
('4õBr8Xùs)­“‰í', 'wp-content/themes/twentysixteen/template-parts/content-none.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'x YB©·jŸ¸¾„yö¥'),
('5ê?‰y˜Ä<Ù2Ì', 'wp-admin/css/dashboard-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'èþ+¨û}\rlþQË%k0ç'),
('58çdá`S61K>Û®†v', 'wp-admin/css/colors/blue/colors-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '€áqˆ0¹IÒÐ»()Â'),
('5C‚)\nWu¾ê½/FÒcK', 'wp-includes/js/plupload/wp-plupload.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ó¬kâ=&œÓ[íþMW…6'),
('5L-t©ˆX\0F1´Dò', 'wp-content/plugins/polylang/flags/us.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '–…‘à	¾Ÿ©KÒYzûH'),
('5S{ïTÆ–®Îe½/Ë', 'wp-includes/class-walker-page.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¾vYû=g€£¡mÒqºè³?'),
('5Z¬ÌäàSÎ¼ãvÙ`6—9', 'wp-includes/version.php', 0, 'Š *j"Ó#\r³	l\0¤p\r®', 'Š *j"Ó#\r³	l\0¤p\r®'),
('5\\h>óÎw	—‡NË', 'wp-includes/registration.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'q˜ÏH^Ü²³»I¦ÐiÚ'),
('5]ÿôÃ/€„„õ\rÐ', 'wp-content/themes/twentyfifteen/rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ó´š{î ·«¦µñÐeh'),
('5`TcžÃ	w=µ9\rn1`', 'wp-content/plugins/duplicator/assets/js/jquery.qtip/jquery.qtip.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'M}@öj¦jŸ‡gÉ˜¿'),
('5`à]\\Í­i\0¥ßí\ZJT', 'wp-includes/class-wp-embed.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ñû]²Ðë­:èÊ^!ðÞ'),
('5kÖ§îf]Q~B‰Æ“B''‡', 'wp-content/plugins/polylang/install/upgrade.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*s‹·üØ•œ9K2'),
('5¢Ãg”–èÁŸˆ''È[', 'wp-content/plugins/duplicator/assets/img/logo-box.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ý\nUîvÀQmØ¿'),
('5ºÇWB¦®$£“î“l€', 'wp-content/themes/twentyfourteen/content-link.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'g%VÒ”ÑêêøŽÔªc¢'),
('5Éæ&VL¦×Ø–ŠÚ', 'wp-content/plugins/polylang/include/language.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'âÛÍ‡GeI’¦h³³Ì'),
('5Òñ2[ÒJ8îêêv7¿Ó', 'wp-content/plugins/duplicator/installer/build/view.help.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'u³G½w>žv$a’»Øš'),
('5ÿ\Z9&âFMoNÛVØ°ìŒ', 'wp-content/plugins/polylang/flags/io.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '8¯å ép''áñaP(¬¥!'),
('6ÛÚß¨X/€¿HL', 'wp-includes/js/mediaelement/wp-playlist.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ª÷tôõøÄjã8‚C'),
('6îž]rä\\\n°éÂ', 'wp-content/plugins/polylang/js/post.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'q|•Ì¦ÛêV6'),
('6;I(ÖH²mÉ%¬Ãfº', 'wp-admin/css/farbtastic-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‰ÿ»qà@!!µEkÂ'),
('6[fÀ9¸?†“ _Ç', 'wp-content/plugins/wordfence/images/icons/bullet_yellow.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'J&ûÞÓÉŒŠýìîÔ”Q<'),
('6‚]jàvÙW¹k\r3-ç', 'wp-admin/load-scripts.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¸!±!»D½Ds?ž¯Ê'),
('6•,bÂ-„ü¢.‚\\¾', 'wp-content/plugins/polylang/flags/ax.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '''pƒxüÀ%ãuý<0?ÁËÖ'),
('6±ÝàùßtiyÑxÙ¿', 'wp-content/themes/twentysixteen/readme.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/ÎFD§È¨3zé‡Cò'),
('6Ì ,õø_‹ìqòêùu…', 'wp-admin/includes/class-wp-filesystem-ftpext.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'HíÞ]\rÐx2Ùé”+íši'),
('6Ù¨	Îÿ:{”^Dá‰', 'wp-includes/js/jquery/ui/accordion.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'asyœÆ6Û=ò(ÕwÚ'),
('6û©ù>¯hÅþxÚõX¦™ê', 'wp-content/plugins/polylang/flags/scotland.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ì¥¾¾nM¼ž¸XÔõŽ£ùÞ'),
('7<L¾U3„9­TUµ3Æs', 'wp-content/plugins/wordfence/js/admin.ajaxWatcher.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ú_”2·BBtÐÄ¸è}`%'),
('7|oOU›’ùz\0Ef»œä', 'wp-admin/network/update-core.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¡"?}R2{8\\¬ƒ?Rê'),
('7«%Wy~×¹P?«xòç', 'wp-includes/js/tinymce/skins/wordpress/images/playlist-video.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¥lzV6`wmZBsÏÖ'),
('7µØO+²»¾—ŠÇ‹''n', 'wp-includes/js/mediaelement/bigplay.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'tl:÷¡E ’9£n^öþ '),
('7ÀcîÂ¢)ÜæSóebµ', 'wp-includes/js/jquery/ui/menu.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '''›YÿÓæí-¡9|°lá>À'),
('7Àc÷.$P!×"Œò¹š†', 'wp-content/plugins/wordfence/images/sort_desc.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '©<„®ÕjÿŒ_³ËŠR2'),
('8\rmsì]O²™7"õ`ãŸ', 'wp-content/plugins/polylang/flags/sy.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' ˆnÊ>ø}djñQMWRö'),
('82NGô@|ÍMâŸ8|\n', 'wp-content/themes/twentyfourteen/404.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¹±*<ƒSÆ"‹£\nä‚÷s'),
('8=ÀIå¯ôa÷%œƒkÒ~¯', 'wp-admin/js/editor.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¸è‘¤;ÇTAöûÎÇŸŒG“'),
('8f(!Öè˜¹\r’äãù[', 'wp-content/plugins/polylang/flags/vi.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'É[‘u,Ò‘w©²^Ãü9'),
('8žR6ÚDH°Šq£-{Ž:`', 'wp-admin/includes/translation-install.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'j¨ÓUñ+9Ð\0“.vµ$Õ'),
('8©@)ý±6yg[yåsQR', 'wp-admin/css/deprecated-media-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ýßD£]óJ¨Ô\nºdmzo'),
('8Ã›ZE‘Q$}UPöT£à', 'wp-content/plugins/wordfence/lib/wfCrawl.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'L…ãäU/å¸m`A\Z'),
('8Õ‹íŠú+_°Ö÷P•m', 'wp-content/plugins/polylang/flags/fk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '–''1é¥u~èÀm÷Øè¨‡'),
('8ÜžtÆî»\Zw„Nxa°ä©', 'wp-includes/class-wp-network.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Eš{ây›iZ''¼ö#g'),
('8ûõø®g]€pFp', 'wp-content/plugins/polylang/admin/admin-filters-media.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÚÑ\nÕ¹Žžƒ_ø^b+'),
('9¨a¨µñÁ‹mEl“¬', 'wp-content/plugins/polylang/flags/se.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Lðm²3$&~(Ü­ãW/'),
('9º\r5''XùýÆ>?’', 'wp-includes/js/customize-preview-widgets.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'vÓ2öâ–ÐŽ8àÚD„'),
('9FD£ôÀ¯õ@êá–b', 'wp-content/plugins/polylang/flags/bw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Õ’pû%ÙägÕ§0h,VD'),
('9Ïˆ[Ÿ1d{Äôî@', 'wp-includes/class.wp-styles.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ê¤ ly„½õÁ«k§(\r|'),
('9:ù—d¯o\n‘ðp`Ry¨¢', 'wp-includes/js/tinymce/langs/wp-langs-en.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'øfŸtS±uc¦.k»7a7'),
('9—} B^¿²?	ë"ë', 'wp-includes/script-loader.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '(Ú#ˆ!Ž=ªYÎšøÇâ'),
('9°ÁCÎ¦§?\0ï}Q°Ò', 'wp-content/plugins/duplicator/views/packages/list-nodata.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'SoÐŒ)DX<”út¦'),
('9ÕÒ¢Õì9ñëd\rëŠY', 'wp-includes/ID3/license.commercial.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\n;g–üJ€g­²ÆÙxAŽ'),
('9í‰æs´3ÙSZ,pé8g', 'wp-includes/images/media/text.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'z¹‡sæä0÷ÈŸQ€K'),
('9î‰LF¢·\\U2ßÓ³Tc', 'wp-content/plugins/polylang/include/widget-languages.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¡ÆiC4×Hô2#Yœ'),
(':{Ãâì{7Ê9°‰Ÿð', 'wp-admin/link.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'c­ý×Naàbá¡äÓd'),
(':®|LûH6(Îßcµg‚Ö', 'wp-includes/ID3/module.audio.ogg.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '{Ü:©_ìîÔöÔ³}<—'),
(':6¥ÎMäOYkxUN;ì', 'wp-content/plugins/polylang/flags/za.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '˜áMý¯Æzyógk©z'),
(':<·$ŽÍ0,w"&e({', 'wp-includes/class-feed.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Eâ¾è/^EMVÛƒ'),
(':DéJ$í¥h»†Ç…\rÙ', 'wp-admin/js/customize-nav-menus.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '…/çMädìžbå$(è'),
(':mwvK\rÿž”‘‚Z‰Œ~', 'wp-content/plugins/wordfence/images/wordfence-logo-16x16.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Yé~F,¢N8zÐÔ¨úO2'),
(':ŒŠå%H`!¬ûá\rè€Z', 'wp-admin/js/media-gallery.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2–Ñú Ò’°»¡ñºn'),
(':¿¨Xï&eÜÓÍ£–§À', 'wp-content/themes/twentyfifteen/genericons/genericons.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ä¥ñÂUÆSáÿt¯+¯'),
(':ïXqÝ¯J\\¦5Pò¶4', 'wp-includes/images/spinner.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '°£Ýã1c~''ªdvÔvHq'),
(':ùnÌ£RMëti#šõ=', 'wp-includes/images/media/audio.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '†taCAñ¾Åþ².·çZßÀ'),
(';Þb­fÈ–0ÿ–¦­x', 'wp-admin/css/colors/midnight/colors.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÕVdøöSfLâô£`§ª¿~'),
(';*óÀÿòö®Î,~`Ä)', 'wp-content/plugins/polylang/flags/gi.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¥¤Û*ÁŠ\\µw±‹€ˆ'),
(';1Ñ‹#ÁY_N„¥t÷', 'wp-settings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÍY=‘¬[Jš·ômR'),
(';RÞyh›ëŸÐRxK\r', 'wp-admin/js/farbtastic.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '§:óT 2Aq]†˜þê4’'),
(';±k¨5“¦''êwÚ\rµµè', 'wp-content/plugins/polylang/flags/be.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$¸Š½·®öRîÀöüâ‡'),
(';µp}µ	DEýqé—', 'wp-content/plugins/polylang/flags/au.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/ºIÈˆ€éÿÏùG\\·«œ'),
(';Á"ÂCèÁØ˜Ü³ƒ hc\Z', 'wp-content/themes/twentyfifteen/content-page.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ú$zxâÄø6Þ““M#'),
(';Ðd°“iP¯:Q\\–Ë™''', 'wp-content/languages/themes/twentysixteen-fr_FR.po', 0, '×<1wËÖ+ý¯íÕ~‹ù¸', '×<1wËÖ+ý¯íÕ~‹ù¸'),
(';ñWctÔÓç*+÷¬BrÊ', 'wp-includes/images/smilies/icon_surprised.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ')™rµÍÑñài\rÙ^@8½‡'),
(';üíÙâ*1\Zn½Ã4Ó', 'wp-includes/js/wp-emoji-loader.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'â‚÷ýÂ‚Wb›Æ|0'),
('<çAÞàj{çajD,\\', 'wp-content/plugins/polylang/flags/catalonia.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'v™=¤·ÞÂ`?øo—$'),
('<ú×ÿB›-çf¸õkûK´', 'wp-content/plugins/polylang/languages/polylang-ary.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'F@?ÉÔÎÿ¼ëäá'),
('<FéëïPzÌ22£‡~', 'wp-includes/js/imgareaselect/imgareaselect.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}(ÊÙ()³Ö3 ‡µóµ•¯'),
('<‰9þuþj³®ÿ„!Á$', 'wp-admin/css/install.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'AÀ¥?•b5<\0µ¿Ÿv»­'),
('<ØAØo˜•îÔ¾LzÚ½', 'wp-content/plugins/polylang/include/filters-links.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\rýyJÿ‚î‘–T)ßu\0'),
('<â1F|ÊÒËW—ZýÖ!', 'wp-content/plugins/wordfence/.DS_Store', 0, '°¤¦@,ö/ÿsÍ¢}dÆÐš', '°¤¦@,ö/ÿsÍ¢}dÆÐš'),
('<æhjØ	Ž4½»˜4aÐ2ö', 'wp-includes/js/utils.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'µžOªÛŽ/ª™ñ–n¤'),
('<ëjY!Oü„šƒI‚Ç×!-', 'wp-content/plugins/polylang/include/links-model.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¨¸z¸å*èóÕ0\0\\‹Y@Î'),
('<ïÎuê¿–\ZÜœµÇYÔ^', 'wp-includes/js/tinymce/plugins/wpeditimage/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'úÆàaòv‘–N4º_ßÿ*'),
('=9)œ‘­)Â\\Õ–', 'wp-content/plugins/wordfence/lib/wfGeoIP.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Itîh \\5¬¦ŸqáxdU'),
('=*¬Ë¨ÿŽ)+›A´9¿d¡', 'wp-content/plugins/polylang/flags/england.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'sòò öÕ$žE MšÚ‘'),
('=S–6Èa°ŸXo°,”2', 'wp-content/plugins/wordfence/vendor/autoload.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'fê\\oÅâ	Êèjk_'),
('=féuñ¥A><Th–ÉÏ@', 'wp-includes/js/jquery/ui/progressbar.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¥éCŽ{¬ŠËšqÌôt	Í'),
('=gÝßä<;ý¡3ŒÎwˆ', 'wp-content/themes/twentyfourteen/genericons/font/genericons-regular-webfont.eot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '­ð“±ìr9À8e¨zæÖ`'),
('=˜Ó;Ô8‘N×.‚’Eó3ø', 'wp-content/plugins/wordfence/images/wordfenceFalconEngineSmall.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '–sŸ*ífð&@7…=J'),
('=°Šk˜[4œ“¢ ¼=Î', 'wp-includes/comment-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ŽêÀ—±\rA³''¤¦™'),
('=éÝ²d >Sm[0Áø·', 'wp-content/plugins/duplicator/assets/fonts/fontawesome-webfont.ttf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '£Þ!päéßw¥Óó&h'),
('>#×Öøª §Ñwt ’Eº7', 'wp-content/themes/twentysixteen/js/keyboard-image-navigation.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ']çí''''Á“éó/W—¥ˆž'),
('>hÐ©ìXX*ÿv1•©¹', 'wp-includes/theme-compat/comments.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'JînÅ$º³h†Um,+;'),
('>qlî+ªmÈ\05Ä¦"†^', 'wp-includes/js/customize-preview.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' ^ŒÖù=.r2¬òTM†'),
('>©ÆX¹\rýbõßÚŸ®$W', 'wp-includes/class-wp-image-editor-gd.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¡ôZmSÈ6éÁŽÑwÎµ'),
('>â9ïâ\0ÒëA\\PcL]Ã', 'wp-content/plugins/polylang/languages/polylang-cs_CZ.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÍGïnôÄÐÈròü9Q'),
('>é§î¡!Ù[CI9Áo', 'wp-content/plugins/polylang/include/links-domain.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[—è€tš.JVÊEwÄl§~'),
('?2yT!s|À¨t°æˆ÷u}', 'wp-includes/random_compat/random_bytes_dev_urandom.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'P<!Ë=°-ífàøaDh¼'),
('?YvŽq_ê—ÿ³Û®XO', 'wp-content/plugins/wordfence/images/sort_both.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Åá%ÙB¬QxÁSV.D'),
('?]ýPû.£˜1ÿ´ƒÌ2b', 'wp-includes/js/tinymce/plugins/textcolor/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Rr©•Ägwód"¾±'),
('?°$ O™ŒÍ;Ñ>Õ¥å', 'wp-content/plugins/wordfence/css/jquery-ui-timepicker-addon.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ')eíôfÕ#¡`Pž~7Än'),
('?ÇfˆÈ	=ªOWéGT"fx', 'wp-content/plugins/polylang/flags/kr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÏcÁ[ùUåJþØ—Ç÷ê'),
('@Vó$õKÆçò<Þ1*à¬À', 'wp-includes/css/jquery-ui-dialog.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÚáˆEÏÃÂÅÆÞ’@*Õ'),
('@bâHfóQá"$„S', 'wp-admin/js/press-this.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'òHó\nŠ}x-N8–,c)'),
('@k/ Á¡ŒæI‰?T,', 'wp-includes/js/jquery/ui/datepicker.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‚âŠ®4 zÎ`M'),
('@€žÌ˜9Š#¯LÃy(ÐÚ', 'wp-includes/images/arrow-pointer-blue.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'wŸübãÎ‡*L«²Ã[»ù'),
('@‹>^3y9„„˜SÞúÞ', 'wp-content/plugins/polylang/settings/table-languages.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '—ÊÃ½Ý€ô×çq†9îÃ'),
('@ºXD\nÃ\nRN†tëÍÓ', 'wp-admin/images/menu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'á\r9#‹dóY`	Œÿ'),
('@Þ;5‹XõñV¨”OÆZ', 'wp-admin/images/mask.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'üö“g~¨"æÒJ÷²ä©Ž™'),
('@èm¾·ëÅOÅÝW', 'wp-admin/admin-header.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'å”÷ld¦º`ÿäŠ%8/'),
('@êtÜR>GœHhÄí×¡', 'wp-admin/css/revisions-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%gÃœw‹äpó{ZÙ•+'),
('@ñ¸ öéx¸v]J²s', 'wp-content/plugins/polylang/flags/ir.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*À™áTupM0Yƒ+'),
('@÷sZö”^™¥Óèqv', 'wp-admin/images/media-button-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '#ÛWIå…\\¸Ð?ÈÉ'),
('@ø‘+âTÎ„''··¥Ù¤', 'wp-includes/ID3/module.audio.flac.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Pê|ˆýsqÓí;Ã'),
('A­lA~i^˜‚›éuÓÃ˜', 'wp-admin/css/customize-nav-menus.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':„°®õÇ:cÛtÇÇÅ/\rã'),
('AE¶ûô[€`Œ·•', 'wp-includes/js/thickbox/thickbox.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ŸçcUÇ\0šMÌ±Óé4wu'),
('Aa÷@J§÷óñÂ×Å·', 'wp-includes/js/tinymce/plugins/colorpicker/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '"SŒIõ$Ø0DRj¼*'),
('A{&Ï Š¢V>ì²Îs', 'wp-admin/css/login-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ïˆå}6\0„#ÖéÖ?\\'),
('AØ»#¨²¹"óàÅj­', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/views/403-roadblock.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Zooñ>ïæ ÅUwÙñ(™ä'),
('AâÁZcT\rŽê`ï(Œ¤Ø', 'wp-content/plugins/duplicator/views/packages/details/transfer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ŠB¹×´!Ç;÷•¯Pµ:ù'),
('BJ’„O¢žä¯ü†zD±', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/config.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ';îû\0wzkÐBe·Ó<#ï©'),
('B†¡j„)ßÐq¼DŠS', 'wp-admin/install-helper.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'dV²`ªìé³1&Û\Zl'),
('C2}	¶ù2ƒï†-¸c‰¹', 'wp-content/themes/twentyfourteen/js/slider.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'û)–CÛ¤\0G(à,´í'),
('Cb&Ò«Š›ÎÎ-5¥È.L', 'wp-content/plugins/polylang/flags/sh.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'çªË	†­zJ`«‚Ï	='),
('Cz0vüq5r»*è-ã¨á', 'wp-content/plugins/duplicator/views/help/gopro.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'zwl0]¸)•SÑ[JZÿ'),
('C²ØšÖT¼Rª!vF{', 'wp-includes/customize/class-wp-customize-nav-menu-item-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N''„°óI±% ê£9§}'),
('Cï–—¸ÿ|D£¢7û’ð', 'wp-content/plugins/polylang/flags/sl.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'sNÁÏOâ‚i<N•NX!'),
('CðL¯›àîãL°JÖ@×Í', 'wp-content/themes/twentysixteen/template-parts/content-page.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'sEÕ€EË*¸Æ×È·'),
('Dm·\n»½z—H‚ÃS”ïï', 'wp-includes/images/crystal/document.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‰''^cšsÀùÄD‹ù3T\\'),
('D.÷îˆö:•\0¾¥SÔR8', 'wp-includes/ID3/module.audio-video.asf.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '(k™ÁQ·ºÏÕ|$á4Ï'),
('D6mËeŽr{pKèO’', 'wp-includes/locale.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '—1Ö%´ñ¨‹÷ó¢pû'),
('D’Éñ¾Õ)baëkÚÅ{ËË', 'wp-admin/includes/admin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '„VbÊZ^%‰–5–žÞ…'),
('DÕ¹ïÚø»åØ$Oaª£éô', 'wp-admin/css/colors/ectoplasm/colors-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÿ–BQùÞ,•ÑfúŸ‘\r'),
('Dï²Ö5\n''å\\¥Ã~W“‰', 'wp-includes/category.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'FXB†+:¼j9tŒPT'),
('E#ÍÕç-v37Ù6ëÅ¤', 'wp-content/plugins/wordfence/wordfence.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6¼P‚¦Æ9ÃÙ-àþ¡'),
('E4í×fu\r#R:k!jgh', 'wp-includes/js/wp-list-revisions.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '´ÏOBy¾†MKØ/Äl'),
('Ehû¡°Ëýí¹ìÐ@aq»Œ', 'wp-includes/session.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¿öÀzŽƒÌôˆƒý…Ìó'),
('EpÈCxh¼B£Q\0é¼2’', 'wp-content/plugins/polylang/flags/ae.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 's‘æ¶ß{Qÿë*Zm{Ô'),
('Ex"‹ŒGC~2J°ÞÅ•s¤', 'wp-content/themes/twentysixteen/genericons/Genericons.ttf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\0ˆ'' üNê¹›óÌþV'),
('E„»(ýzRA1;eNÇqD3', 'wp-content/plugins/wordfence/index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2ÁèeØÂÂª­ë\\ÆÁog'),
('Eœ}¾~î¥MÊÅ-Û]ˆa', 'wp-admin/css/widgets.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'JšO~W ”•N…ç'),
('E¸Vàó÷,Õ%¦×,SM=', 'wp-admin/ms-edit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ô/öÄ¦Ã½”º:E‚'),
('Eõ0fÛ¿oÀiã\rç"‡’&', 'wp-content/plugins/wordfence/css/images/ui-icons_cd0a0a_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ýÅŒé»o•8Å%§î'),
('F–HÈlëe“É#Ý', 'wp-includes/js/tinymce/skins/wordpress/images/more-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'l,×‰rÏ%¸^x¥%'),
('FàèOÛ£ ÿÔÿçëg', 'wp-content/plugins/wordfence/images/wordfence-logo-32x32.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¿Ì@Û¯IëØíßuUÐ'),
('F\rºxÓw~Û\rÜ±´ç\n¦', 'wp-includes/widgets/class-wp-widget-search.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'àV¦ë~£Ðfåãçû’2'),
('F./VÌ)%<''k’ùëëÈ', 'wp-content/plugins/polylang/flags/vu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ã{‚¥,ß€I.éMÇôbVÏ'),
('FFvŒ‘V;vð8/ž\rµ', 'wp-includes/SimplePie/Misc.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÎÍæyÆ-ÕØÒ^Î\ZK‰'),
('FHŒŽ¼30m:½¸s›¶', 'wp-includes/js/tinymce/skins/wordpress/images/dashicon-edit.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'xRÞ	¬YµXžÔÛÝ¤äÞæ'),
('FYn’Az\0ûšöÌ>QM', 'wp-content/plugins/duplicator/installer/build/classes/class.serializer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1¹(¬6r)«=p±ð£¸Ü'),
('FÁô¬Ãƒ\\ŸOç¡fgî', 'wp-includes/js/tinymce/skins/wordpress/images/gallery-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Êî1ìíõv•ŠR'),
('FÐ''£B¤/í4{JÍ{w', 'wp-admin/js/edit-comments.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '<¿©ßˆä,Í7V¾Ã/é7'),
('FäïÁìCÐ™¼L-xgY¸', 'wp-content/plugins/polylang/flags/bj.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'g½.™ÇãÜ[ºè!ý8ò'),
('FóÂï?æ‰C;$ŒéH\r\r', 'wp-admin/css/color-picker.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9ptd\Z`j\n-V÷=b'),
('G6Uæ2\01Rü¸“¢ÏJ', 'wp-admin/js/theme.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'gsÚGl5¯…#‡$»e#}'),
('Gm¹™:†MÄ¾VÀ‘LÐ‰', 'wp-includes/js/tinymce/utils/editable_selects.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ëd*\nºz†f§±G"0ü³t'),
('GqÜ@¯üÝÓgmå±ª', 'wp-includes/js/mediaelement/controls.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '@õoZsm¤ïþ·ÎÛŠRð'),
('Gu¹¢ØèþÒÒÒÊ­ò', 'wp-includes/class-wp-meta-query.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':Rì*Æ:\ZF^>Ž}ƒ$ž'),
('Guµ^¨/1ÆÔÕSñŽ7', 'wp-includes/atomlib.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'oñ.ƒBòo¶§@*ÈU''‰'),
('G€9qóñë=Ê¥[3?aè', 'wp-admin/images/bubble_bg-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R=[ùïØÊ;’çcßÅ'),
('G–7\Zžæ²I&:íx', 'wp-admin/edit-form-comment.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '²¯â>ñß³°Èp4ÕµÜaB'),
('H+€E~™}§1QÛð½®Ù', 'wp-includes/js/wp-util.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ð™ÔÖ±E3OÃ!_õW‘'),
('H7É®\Z$.þÐ´ˆ1Ê8', 'wp-content/plugins/polylang/flags/cg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'µ¾ÖÇZrÜVøëŒUCY'),
('HA„¸þf¾,Áõä$F-î', 'wp-admin/css/customize-nav-menus-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'IÖ%ô«þÝ0úP»†Ê³Ø'),
('HGh''ßÁxúR‡¼Ž~\n', 'wp-admin/js/customize-nav-menus.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '»ôsJ38Ï‡R5¥­ ,A´'),
('He0|òñÔóF0$Ø•ý', 'wp-content/plugins/wordfence/js/knockout-3.3.0.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¢Ö_ñÁƒB8lc^é„Ò'),
('H‡`HÇ›ïO.ºëViC', 'wp-content/plugins/wordfence/lib/menu_countryBlocking.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'õB ªhOÆÞmÆHÅïB'),
('H¸·©•ZóxñobÈá/', 'wp-content/plugins/polylang/flags/occitania.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ß¿‰ƒÕ\ZJ…óä\\xY£t'),
('HÃ½ÍñiíZ¾U,H»L', 'wp-admin/includes/meta-boxes.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Î5sÖHdww?š\Z÷Ê3Ä'),
('I0Åó¹Sþ$2£TÐüB*', 'wp-includes/widgets/class-wp-widget-calendar.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ö1þŽÍ„¨EW&oö:Ý'),
('I•Ä:BsÞ#×çÿÞ@×', 'wp-blog-header.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'í­taMm?¢%,=tÿzÇ'),
('Içl•Ÿ¬!pá¤…Ãn¥À', 'wp-content/plugins/polylang/flags/mc.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'cÆý1È°ës6ÙÁ–S¢'),
('IêK;H…:€Œ.‚oÂ!', 'wp-content/plugins/duplicator/installer/build/view.step2.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Óš¡"]Ž½4«èñî¨	Ø'),
('IñV/’ðµ6¤sãÃø', 'wp-admin/js/editor-expand.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ëZ.Ë+·á·Y6CÈ‹'),
('Jf¸3?ö“‡_rÛC‘', 'wp-admin/images/w-logo-white.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'n¦ÌîJvÛ¢~»y¬\\…'),
('Jþ‰E[¥7UÒÓ\Zï~', 'wp-includes/js/plupload/handlers.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÉØWPIÊ¿©ÅFðUg)'),
('J><rF´<òA?¥Ð9³', 'wp-content/plugins/polylang/admin/view-translations-post.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '(blvFm¸vZ\\µi'),
('J{£Ö¹Zi^Ã¹x•I', 'wp-admin/media-new.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÂÚ¥y/Ôÿy[võÜ)Ôš'),
('J”\n»ÐøÞŠ‚ouÞ', 'wp-content/plugins/polylang/flags/bd.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ð-ëâqÍ$fF‡''˜¯'),
('J¸+D‘m·+¸±æ·5›—', 'wp-content/plugins/polylang/flags/et.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'sv>FÚ‰o>•T­G;JK'),
('JßÍ‡?ÞÉ\r]œåã’Ù', 'wp-content/plugins/polylang/flags/nr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/°Ktxv˜ƒ[c¤l½ïo«'),
('JàhUú`|\0Gÿ)~''ðÄ', 'wp-content/plugins/duplicator/classes/package.archive.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¡dâ_ÛžÔú¦q`ËÄØ'),
('Jìˆ¨úø0ãÆ\0ÉÂÂ;', 'wp-content/themes/twentyfifteen/css/editor-style.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÅBH\r¥%£Ü%^ÙfÉ\rÌ'),
('Jò¾¬´ÊOhÓýÐsDØ¾', 'wp-includes/js/zxcvbn.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¡LÕ;ÐÕucÁ©¶<®ø'),
('J÷	4ÎÖ/«ÜÊ|¨ý	Ò', 'wp-content/plugins/wordfence/css/select2.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‚Xª«N|7Z¾ò(Cï'),
('K¾ä÷ßºá†b¤', 'wp-content/plugins/wordfence/lib/compat.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ãú?HÄYø…/2™¦?T'),
('K4¼Q£Y@eš:þÈ2Ž,Ž', 'wp-content/plugins/polylang/include/class-polylang.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¹pá\\Fh§}¿¡3—_©À'),
('KH~®<1½{Ù€òz†''o', 'wp-content/plugins/polylang/flags/jm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¥‚É^ _v''zúq”!Í'),
('KnÒ‹D&sRôWU(‹', 'wp-admin/css/farbtastic.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '0™iÁ)½3\\Û¸Š/¢;'),
('K‰Ç¯ýy6Lq©uŸlm', 'wp-content/languages/themes/twentyfifteen-fr_FR.po', 0, 'ÆÖÍúq³ßú>¢^N~', 'ÆÖÍúq³ßú>¢^N~'),
('KŽ!âôð4‡\\‘åo%', 'wp-content/plugins/polylang/flags/me.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'z.å×ñ¼^ôxj†ÒÁÌ	'),
('K¯cŽŠ#2s’/(…"Ž', 'wp-includes/widgets/class-wp-widget-pages.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¿µW&ÚKzO\rïW¾µ'),
('KÐXÂmŒ­Ì”äs¢r5', 'wp-content/plugins/.DS_Store', 0, '¶å^ú½xW±„ß¥œÎOc', '¶å^ú½xW±„ß¥œÎOc'),
('Kîß¢©ØÉ,¯ÞSÈóÁG¯', 'wp-content/themes/twentyfourteen/search.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'WfsˆCu‡šÎÚï`}£ôà'),
('KúÚWÿ&\0\0Kµ\06‚Gô', 'wp-admin/js/set-post-thumbnail.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+QSWmî@û~ÙåƒQ'),
('KýK+ì†À2¤	aeZ“e', 'wp-includes/class-walker-comment.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'æ9"I`Iá¢Zõ	Èï¢'),
('L<#³ó†\ZÒá¼ÓÜ}', 'wp-includes/js/tinymce/skins/lightgray/img/loader.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9K¯ÃÌMû:äŒTf•9'),
('L#Ö¬/Û°*Ìø3òÒì\r', 'wp-admin/includes/class-wp-terms-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Yí:8ÿ“Z	6KlÁ¸"‘E'),
('L(Êý¢nø9[2ÀC6åš', 'wp-includes/js/zxcvbn-async.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1–é¶p9	á9Î~šý'),
('LR7Q¼äToG|Ä{', 'wp-content/plugins/wordfence/lib/viewFullActivityLog.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÙìžÝ‰\0¦w‡ÚaY¨%P'),
('LW]êä=ŒàôÅ\0;ð:', 'wp-content/plugins/wordfence/css/images/ui-bg_flat_100_1997c7_40x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'jè\ZKÈš-"ÉÖa{*0'),
('LsÐ‡Å›\n²c}>ÿK—‡', 'wp-includes/css/editor.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'sëC·tì5	èÐØ´±'),
('L{¦MKx>í˜>˜X6l<\Z', 'wp-content/plugins/polylang/flags/ms.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¿Ý¼*®Ž\n¨3÷„á…&'),
('L€N9°2Âœ–\Zhÿy‹è', 'wp-content/plugins/duplicator/classes/package.archive.zip.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'tÑÆµ.8#LøÁŽ9›î…'),
('L»’×g_4À>(¿÷''¡F', 'wp-content/plugins/polylang/flags/nz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'œÃšXã$ßš¥êéÜ '),
('LÂŠe¡t"pc(	’eÇ', 'wp-includes/wp-db.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‹NœQõÍ(¦O¢-Iè–\0'),
('Lñ>t™õšNÿˆ†‹Ý', 'wp-admin/css/colors/blue/colors.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÙÐ5I×”„g,)Z­YM³'),
('L÷…)ÑÙa$­D-ïÓ®ªJ', 'wp-includes/js/tinymce/plugins/wplink/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6“çÙ•§ß¼Æí‰ªÁ_œ'),
('M(yÌƒ|\\=D&\nô', 'wp-content/plugins/duplicator/assets/fonts/FontAwesome.otf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‡ØÊ=ÜWçÒÚb&ä€ùW'),
('M?,5Ø*îóÉúÜK*Åf', 'wp-admin/js/post.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'É’¶^ë'' ¹Þ¢Lgß'),
('MW€	å¦¾:Éä˜ÙŠ', 'wp-admin/images/align-none.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ñ­eqd2 ¡Úu‘¥Âñ\r'),
('MYŒñGˆ°\\tXû„’/', 'wp-includes/customize/class-wp-customize-color-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'p./ì§ŠO“nBkrtŠ'),
('MÐ \0šAŸª»9QÞ+ Í', 'wp-includes/js/admin-bar.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[ÔßÓGàY*kÈ¥¹Ö°pü'),
('MßàÍ!H*âÆ}a§', 'wp-content/plugins/polylang/languages/polylang-bg_BG.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ä~È6Wáš÷®ì[Ð5'),
('Må;CåÌÏÕÕ8Yyï²', 'wp-includes/js/twemoji.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'nïÔ‡ÎkóÕ_ƒÊàÓ'),
('MüÁI‚MÔïüÀrDõ-', 'wp-includes/post-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'À®Ð²3š¾~“<7'),
('N|þÂ‡JÐ²ªzn×ösw', 'wp-includes/pluggable-deprecated.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[nkÈQÜª»‡ù\Z­Ú'),
('N3Ýj@pu5“«¶¿^›†', 'wp-includes/js/tinymce/skins/wordpress/images/more.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ü·¼Ô\n¼\nm\0;üË«æz'),
('NñãþHVû®Õõ}¶4G', 'wp-admin/css/customize-widgets-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'éë1¶·Ñwågü['),
('O	‡ÒS ý•Ç#ÅÿYiòv', 'wp-admin/includes/class-wp-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'éª“µzZþøÈ<âmií'),
('OIÜÔ\n¬ëøÍ3!GZã“', 'wp-content/plugins/polylang/flags/quebec.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'NØì‰«§y/4^:7'),
('O]te¡ˆ¥ËÒîUñ©÷éu', 'wp-content/plugins/polylang/flags/vc.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '`îÈÕyÕ^ òìbØ7ÁÒ'),
('OlqCcÛŽÐïÖÊãÏÌÐÍ', 'wp-admin/css/forms-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|Ý•Vnï\n+½ÖùùI›'),
('Oû\\©¢µP5ÑÓÿ{¾R®', 'wp-admin/plugins.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ž;Aì$Ãþ@àRòø¬ü	'),
('O§ƒµà&Ârè“•ê ', 'wp-admin/freedoms.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'dNaÕ„à2÷T¹¾'),
('O¬¬ú³R¯r¾©£èD•?—', 'wp-admin/js/postbox.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[ßúÊ:¢¨2ë®&;·øË'),
('OáûÆÕÞy ®ýk	b±', 'wp-admin/css/customize-nav-menus-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Þ»´P O‹€—ë]/I„'),
('Oãec*´	½â;(xS', 'wp-content/plugins/polylang/flags/tv.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'oìUmØ½“l§°×Ì†I“'),
('Oþhu²G¯ýá²&\0ïLÿ', 'wp-includes/Text/Diff/Engine/native.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'å­''*‚¾ãÃß*èx'),
('PEÛ«½7r|oI±6ÿð>', 'wp-includes/js/backbone.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¡˜zkîVC}[ÃÉÁv'),
('P''ƒ(µôë?+‹z´“$¡', 'wp-admin/js/postbox.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '†^Oö“p[@LEýÜÖ_'),
('P73oè©	§ë\0æ=áŠÒ', 'wp-admin/js/word-count.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '@…]\\ëécÝª’ñõ®ë¹'),
('Pƒ†ßìëäô¤’›7šØ', 'wp-content/plugins/polylang/flags/gm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '§×…úAæj^m‚0ˆho '),
('PŠÅiz¡tîaé}Ôa', 'wp-admin/users.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '» }23Z¯zé·ÀúÒ'),
('P£â©£-Æ…‹ÅÀúiƒ', 'wp-content/plugins/wordfence/css/images/ui-bg_highlight-soft_75_a5a5a5_1x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '…ým8O@“üd8§<QÅ¾'),
('PÃÿ@¡„É;b<\n¸cá', 'wp-includes/class-wp-oembed-controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ú ¿jZ$y“MÝÔœÇ›àý'),
('PÆMî\ZÖIÌ¸Ý­Y`r', 'wp-content/plugins/wordfence/lib/wfHelperString.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¡OVˆFaDŽVÞ4˜4Üª'),
('PÞ1$¶‰ó\\*åC', 'wp-admin/images/stars-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'õêA”§œ#æS²Me.^'),
('Pã…ñ0¹a‹¼RÓz= ', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce.ttf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '²PÃ¹¼4ýSÍˆ0pãßý'),
('Q.®ÅEXyúÿ<‹É€\\°', 'wp-content/plugins/duplicator/assets/css/images/ui-bg_highlight-soft_75_cccccc_1x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'rÅ“Ñn™‰RÍyî3Æó'),
('QB‡ŒQP6*JÌ¿éíŒc;', 'wp-content/themes/twentyfourteen/content-video.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ø_ã9NvtÐ(Ü¶À.'),
('QT«ñò*f×P„å¥.¿', 'wp-admin/includes/file.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'y¾x±¡ioù¿U/¡'),
('QY—ê1ðTl’¹Vr<', 'wp-includes/js/customize-views.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Z¾§¶Ù¢Uo¸ËüÓøÑÀÿ'),
('Q[„JÃg?´åã¹,ãÖ', 'wp-content/plugins/polylang/flags/az.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ö?\\™â^Êâ©c8æ'),
('Qq_1¶¾FÉEôAÇ2', 'wp-content/plugins/polylang/flags/td.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'l?l–¼ÕÓJ®I}Ê'),
('QuoPXØØ\0«¸SÚž', 'wp-admin/images/bubble_bg.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '=,³÷º¦(Éå\Z2cVç 8'),
('Q§Û÷6K4öÊ¨€ÒðH', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/views/403.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¾áë±ŸR„|¬$ùÚd'),
('Q·`ºöä8þM¸8', 'wp-admin/press-this.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ù À¤ìò¹In’†ñ”ùaý'),
('Qý©ƒÏÛÁlêg´-Äó', 'wp-admin/js/comment.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6í\rwÄ¡®‚ÛÓžÙ'),
('R3ð¸Usë3ÃÈ}TêœÛÁ', 'wp-includes/js/autosave.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '?œÅf_ôþHˆ”‹ˆ\rt'),
('RB‹·ÜòeL ˜Â±«{Ý', 'wp-content/themes/twentyfourteen/archive.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÔïZ„C¿—J+W'),
('RQ÷b7f§È |~Û“†(', 'wp-admin/js/widgets.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '®«|¹\røÝä,÷Àd9w'),
('RW>0»à»¼`”x·zp', 'wp-content/plugins/duplicator/assets/fonts/fontawesome-webfont.woff', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '£W ÂþÒÇðC¼~OûEàs'),
('RŽµú1?™ûˆYÓVDt»', 'wp-content/plugins/wordfence/lib/.htaccess', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '·I z~Òi¶,Lžÿè'),
('R–x®4Mp@°9u\nÖŠ p', 'wp-includes/images/wpspin.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÝNmÒh§äÁÅ;\Z@’Ý'),
('R—§|Rx/ãbzn9\0*ÑJ', 'wp-admin/includes/plugin-install.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'DÄ›%$I¯ FIQ†B;K'),
('R¯\\SC¯|juÓ9µ¿A', 'wp-includes/js/media-grid.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'sH_OžÌIÎ’¼lÁÁÖx'),
('RÂ¥ø²®ÍÊLeýq	ð&Ô', 'wp-admin/js/user-suggest.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3)ú‹()Ý°4}\n“'),
('RÐ!Z½+L“®¨L½G5', 'wp-content/plugins/polylang/flags/ad.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÌuD!Zí ²°\\Ö+\r'),
('RÞöèY#:&·‡%Õ²ü…', 'wp-content/plugins/polylang/include/filters.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'I›ÅV£-Ž>Såv3Gèo'),
('RãH\r0ü!„d‘?c&', 'wp-includes/widgets/class-wp-widget-categories.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6ÜìiMòßÛèËó>×B8p'),
('Ré6OU²^súYT5Í™Ö', 'wp-content/plugins/polylang/languages/polylang-lt_LT.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'BúÒ¤ü‹Èè!ïéøŒ¢¼'),
('Ró€WßÆúh•ÄºÄV/1', 'wp-content/plugins/polylang/flags/mg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Zê$¡Œ§è¶WpÜò§8Ý'),
('S$<ql.ÿ”=yHŽ®', 'wp-content/plugins/polylang/flags/br.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'TÄŠš×ßGƒÑšÌ‘Ž'),
('S.FÈ«A¾j®ÿä( :', 'wp-includes/js/hoverIntent.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÊP\nÞ…L1A¯Wbã\0'),
('S0ôÖ¾â×K/17uüŽì”', 'wp-includes/js/jquery/ui/selectmenu.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ë}´Ëª2Ž9Zhxi"6ð'),
('SX+7Êû1?ÅõÏî-', 'wp-includes/js/jcrop/Jcrop.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Z‹ý7e½¯¼òÍQ°%K'),
('Sˆÿ÷ÜpØ>ÙÝWr½YE', 'wp-comments-post.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '„:Ÿ@µr½¯Õó_°s'),
('SÛÊ&ëaz8öJØ¶9§', 'wp-includes/widgets.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '8ÆžK–WÎ]RÎ;M‹Ÿ'),
('Så².«š²×0ò…èbe9', 'wp-content/plugins/polylang/flags/la.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3u×S]i$\n²>øhÈ'),
('Sè\Zu¨Ó°Í‡šž‡Qá', 'wp-content/plugins/duplicator/installer/build/assets/inc.libs.js.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Âh{ÙmûªA=”93ë'),
('TÑrñÂå~ÏW]ï', 'wp-includes/class-wp-comment.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',gÅÕF×Ä;œ`BgšŒ²'),
('T6K?†”´sÓ ‚7(ù', 'wp-includes/customize/class-wp-customize-sidebar-section.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '!T+caÎ²F¯¸¤±ìÄÒë'),
('T?„?:q×®PÃóah''««', 'wp-content/plugins/wordfence/views/reports/activity-report-email-inline.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '=\\­uj³¬tÑQ³×;z'),
('TMò¢ÆüÊÝlòþÕôºß', 'wp-admin/includes/class-wp-screen.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',ÒCÅgµÀš%éåÕ¯àÔ'),
('T‡.o@Î¨2ÿwõvŽŸX¹', 'wp-includes/js/jcrop/jquery.Jcrop.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/a«˜LruÇ4ÿ\ZÁ'),
('TŒŠ³vm?,³aÞéãT4ê', 'wp-includes/ID3/module.audio-video.quicktime.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '''-ýnL9 a\ZÙ!ænë'),
('Uð\\p{Jþ˜OÃQË&', 'wp-includes/SimplePie/Cache/Base.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '”Cí¡‰»Ù2]œ]#|j'),
('U¬nÉ“b4lZ,I', 'wp-admin/css/about-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'a3"*šNÄpY~+­à'),
('UÃåà$i"uÂÊ&Ëô¸9', 'wp-includes/images/crystal/video.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '”ÛýŽl¥‰Ú¤¸;õ='),
('U×H\r}š\rª×‹3=¨', 'wp-content/plugins/polylang/flags/pt.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[Š¶šÅ!)½2£’”Ñp'),
('V\nÕÉU`½_š5ú˜­8', 'wp-includes/js/customize-base.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Èr¦û9Ñâ9''#³(q1Ë'),
('VÙ‘)šxq-ÚOÒ', 'wp-content/plugins/polylang/js/term.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '·*Z£%´Œ\nrØ!Þ‡'),
('V<:¶±%–ç´{úy–Þš', 'wp-content/plugins/polylang/lingotek/image01.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'íÎ)oÄÐäŒ«Ûr%‰»·™'),
('VL6Ý7G^l%D5z3Èè', 'wp-includes/default-widgets.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '©OiT¸0ü*\0Úhú)g»'),
('Vne!Êz0u1?¬¿', 'wp-includes/shortcodes.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '=?=$Æÿ…MXwÆÉ2'),
('Vrm‘KE§p¼j×ä6—', 'wp-admin/images/w-logo-blue.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ý[N°W¢ð_pàw®0'),
('Vž…ï‚™ëŒ$ØïŒŠx', 'wp-admin/js/post.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '!¸B°L·pðŸ€·5½A'),
('V¢¼©ÊxJ:f:²Ä€NŸ9', 'wp-content/plugins/duplicator/classes/package.installer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÉB±ß²G¡îí’ÃS—y'''),
('VÇ—Ù=éèå£Ut¸°ŠZÈ', 'wp-content/plugins/polylang/flags/nf.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Æ$¢!ÚéY%j>:QGø%'),
('V×€ãÄ''hý—Äˆ+:ŸÀ', 'wp-admin/includes/network.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'MôM iÅA·ÈÖ–rê'),
('VæUØµVr‚~¿¢êv', 'wp-content/plugins/polylang/flags/zw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ç®~<I¥§u©Ö…Iâ\Z'),
('WNä	b%Õ9pY&Ø‘íí', 'wp-content/plugins/wordfence/css/jquery-ui.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N3(Â- M‰²å¡\ràÙ'),
('WVÊ›š5Œµ…Ã¹\r¿', 'wp-content/plugins/polylang/flags/mh.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '”ÑX!¦þE°ß†g¶`­'),
('W{°g- Xòéû''=n8', 'wp-admin/moderation.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'TB¢“€YR â"4ðo©'),
('W})Ó–7£Œêeç}5æ9,', 'wp-admin/load-styles.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'QÓs««~WI&”âs7S_'),
('W°ú¾ÅòÑƒâo»¾Õ', 'wp-content/plugins/polylang/languages/polylang-nb_NO.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'õ7¤ÊQÆ%!(þOÚŠlj'),
('X,çEõCj$_ƒ¬8I§‚0', 'wp-includes/images/smilies/icon_cool.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '–F~µ®ß¢.¡Àú>t8'),
('XJìôUØêkýÎ"³', 'wp-content/plugins/polylang/flags/in.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'PÖ,º4ÈÀ—ÐsdlÚ›'),
('X—:8+Ë“2>V]¬Ë8à', 'wp-admin/images/sort-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'nQ&Ê] ²0Ç-š‰ƒî'),
('X›9È%˜ñ,QË|', 'wp-content/plugins/polylang/flags/cz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[m+ö\n1yÀe/h•¼»'),
('X {%ü>V"ªý½Ÿz', 'wp-content/plugins/polylang/flags/tn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '®™GÙœH‰M$Ö$6¹'),
('XÂ×ßG°¦“ö•åz„X', 'wp-admin/includes/class-wp-upgrader.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'êáÚúþ©Ö6ÿ™Ö¨)Í6Ú'),
('Xæ|¢t|Òtœ3c®²', 'wp-content/plugins/polylang/flags/tw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'A¯+< =^veÐ‚1ú'),
('X÷{½¶?íùASHï±', 'wp-content/plugins/polylang/flags/cy.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ò—AÖ"þu›·¢©µâà'),
('Y,Qpêgmu#—eŸ±¼~', 'wp-includes/widgets/class-wp-nav-menu-widget.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¿ï6»B9U(ãbG,*µªe'),
('Y?9##1D‡§aßÈ£ôo:', 'wp-content/plugins/duplicator/assets/img/paypal.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'â~ËÕ´ùâ¨Í²ð­Ò'),
('Y…LaØ€µhÐ(', 'wp-admin/edit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ñ‹Ó$„Áòd5ÒÑy~Í'),
('Yˆ,eêAõ¼wÀ`áÄ', 'wp-includes/images/media/archive.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9Òîßòhû\0ÚÓÃ¬‘u'),
('Y 68ÔH;%,¹_c\n€', 'wp-includes/css/wp-auth-check.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÑùOš“ø;}ÄÙ$ðHBÒ”'),
('YÔäÖí]¦®ÅžI†•¨', 'wp-includes/js/jquery/ui/effect-slide.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ú#G_°MVÚ˜Êyµ'),
('YÖ»Uª€ÕÏ}Ãr/', 'wp-includes/SimplePie/Cache.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'yü¢:ƒoMh÷vL§4'),
('Z2ˆGÄ,™+\nóó+', 'wp-content/plugins/polylang/js/admin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 's[JZBòæþ’¡mß/ô'),
('Z4<n?e˜ñ²', 'wp-content/plugins/wordfence/lib/wfConfig.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '£Ë&”!‚¶ÜÄèI.'),
('Z@ñxX0Ùê±ÒX"r½', 'wp-content/plugins/polylang/flags/gd.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '•¸·Ÿ¯Æ±Q	x—{È{F'),
('Zxˆÿ1¡2KÓZ¤,¸ì', 'wp-includes/customize/class-wp-customize-header-image-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '›óDÉqÉÄ0ß]Ó1û'),
('ZÒŒ£[¼ø\nvâËâ	F', 'wp-includes/SimplePie/gzdecode.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Å8â¼†a—Ûal„4Ô'),
('Z£\Zù"H{•B¿Í ‡ÍS', 'wp-content/plugins/polylang/js/user.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'vw°}ðþ]k¨ÑëBrn'''),
('Z¬ÊèÄ %/»Z¿z9ýì', 'wp-admin/includes/taxonomy.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '…m«^u¤ŽÛÍË@ÂzŒ,Ç'),
('Z±\0ƒœYˆ³’³ Ã¦fg', 'wp-includes/js/crop/marqueeVert.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '®šÌñ\0¤¹“9­ÿRÔÜÇ'),
('[#ñ.v:ä<†%T', 'wp-content/plugins/duplicator/installer/build/view.step3.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6QGôºªÜÁl®!P'),
('[5ùš×YÙNh¦«ŠKˆMè', 'wp-includes/customize/class-wp-widget-area-customize-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'WÖoV[šãÐ~þôTQ¤…'),
('[Q"ABb.QÐÈÌç„:', 'wp-content/plugins/wordfence/js/jquery-ui-timepicker-addon.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ø\\í#þkz›œª—¼ìI]'),
('[ŒÃ#Ü§\Z>]¿<¦', 'wp-admin/css/colors/ectoplasm/colors.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'CZ\r“îÊˆ²×Y1Ó\\+'),
('[Eª*ÝB ’-\\öm', 'wp-content/plugins/polylang/settings/languages.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '›ôöEëÛ2\\µñEºú'),
('[ÎÅuPEŒ¢´òx{¾', 'wp-content/themes/twentyfourteen/screenshot.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '} ýk1?.9oAcQBE'),
('[’>•x‚;òwn/tH', 'wp-includes/js/wp-emoji.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¬ôSV èÒ˜SrÆAšç'),
('[±€à1¶YAdkö,', 'wp-includes/SimplePie/Sanitize.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'BØ¸ÀÏFµØ¥à®H¸u'),
('[ê æ|KòoÊÛŒb7ð', 'wp-admin/user/index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Èý˜÷ýÕ-x½­÷Nb‰ú'),
('\\ÜÜ…•Œ9‡ƒ·ÈÌ÷', 'wp-admin/ms-upgrade-network.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|´’&"îSm–¾8h¾m'),
('\\[æíi%Í°<ú˜e“>©', 'wp-includes/css/wp-pointer-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‹°¾ùLQONÿŸÆ8@'),
('\\šÑ‚’?$€Í„8À’¡æ', 'wp-admin/includes/dashboard.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'RŸÃhöw0™ÿßGBC'),
('\\Ìç+5®éÂ¦DW"ï˜', 'wp-content/themes/twentyfifteen/search.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>·Ä"7Ñž×‰!ðT\nª}ò'),
('\\Î­Éepê5æ=:E‹RÒ', 'wp-content/plugins/polylang/languages/polylang-id_ID.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Û4·''Ð×1Ám(hJ´¢'),
('\\Ó\0õ£>¦+¢³ÁFbÐí', 'wp-admin/revision.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '`¿ .íªˆú+ó!ÞˆæÓ'),
('\\ÔJh''ò{­áàaÓ`_Ó', 'wp-content/themes/twentyfifteen/comments.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R÷Ú¢dý½É“¨GHÕñ'),
('](Rª&!âÆ1;™3˜ê', 'wp-includes/js/wp-ajax-response.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'x''‡ðÏ†Ÿ[#XÛ+'),
(']B#Í2èzÚìúbUœÉ/', 'wp-includes/Text/Diff.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'lpÕžžšn›Ñ7q“ã*'),
(']¥‚P·¿îTkvtŠº8A', 'wp-admin/network/menu.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÞÁ‚0+\Z=lÚ.¦‡W@ƒ'),
(']¥¤Ê*…¤…ÿJ–', 'wp-content/plugins/wordfence/images/icons/email_go.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ºªjÌÙEü´H)«.½í'),
(']§Ÿ‹âù"}[’YÜRÚ', 'wp-admin/css/edit-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'a}_™ÁYA.\Z4!×÷'),
('^9(-(Å²Åy ‰÷Ê0q*', 'wp-admin/user/about.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '™ì\0Ú‘KNý ˜£äN¾-'),
('^@Õ²{''«©_èâ›92', 'wp-admin/upgrade-functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^ößØìuPàqX\\eŽü'),
('^yG=ÚœFg;3‘Ã¡©', 'wp-content/plugins/wordfence/images/button-grad-grey.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '•ÄRCì¿ÊTyÕý?Þ'),
('^åƒÃ¯ðˆ¯+…y|Ð', 'wp-includes/images/crystal/spreadsheet.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '5†9øÐ¢1€TËÇn¤ê'),
('^ÁrAÌŒ½„-ö¶õÅi0Å', 'wp-content/plugins/polylang/flags/pw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ò¿÷ÍØïö@=æ¯O'),
('_°\0ßÅd •MP~ÛëD', 'wp-includes/revision.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '€R1\rš´m,<j\ZÂ_ª'),
('_£k4é÷·!*}ˆ‚Ý„ ', 'wp-content/plugins/wordfence/vendor/composer/ClassLoader.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>B¿‹ÃÅaXãÜÒwa;'),
('_*Äâ½žLÿ0â>\r', 'wp-includes/feed-rss2.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¾(i¥Kt¬,UrúsÊïH'),
('_WlÆÊfÃ8gP«ÕÅÇc', 'wp-content/plugins/duplicator/assets/img/logo-pro-32.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Õ¥ŽShš¦£æz\ZàOß'),
('_jõð‡_±¨/ÔÌÖyÓ±', 'wp-includes/load.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'èiV·MÓ¨b- ¡w)X'),
('_„» …ŠÇéÓpªd:`', 'wp-content/plugins/polylang/modules/plugins/plugins-compat.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.Š¹sboÊ~ÚvÏ§ÌÉ\Z'),
('_Ö|œ¯T¢M^î½õÄJ', 'wp-includes/css/editor.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+g‹	0U–©n>*­'),
('_Öà4ä3“ÍË=Ž“', 'wp-includes/images/uploader-icons.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '´“\\MÏÿÀùm–€'),
('_î‘(íC˜ŒÂM6˜9É', 'wp-admin/includes/class-wp-links-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'rÎZ…ZI¯L’Ï:ÍÀ'),
('_õ´ïýá8}Ìßœ?åŽ', 'wp-includes/css/media-views-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÃgP£«ÂË„XÕžµ~'),
('_üæŸ£³‘­CKé™œë[0', 'wp-content/plugins/duplicator/installer/build/assets/inc.css.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',õ[¨;¾^q÷w„²Y'),
('`ÎþÇS”`NI‹^Gï', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce-small.ttf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '(€i@ÆGÏgëô®0åp'),
('`%­Ö½áj®±''‡ÒPù´', 'wp-admin/js/edit-comments.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ôÑHúâäñ¾P“LOåÃ'),
('`£BÔ®ÏàŠ´3àÞ8Ðù\\', 'wp-content/plugins/polylang/flags/bg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'w²:±ÒnäçŸßÁ+†!'),
('`»c0¯žÙ\\ùâë•3æ', 'wp-content/plugins/wordfence/lib/Diff/SequenceMatcher.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‰OÒ"%Ã©¾O²DZÞj'),
('`ÏñïýôvLWßUÄÒ', 'wp-content/plugins/polylang/languages/polylang-vec.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ËñNÕ5Éa¢à:³Åç'),
('`ò å*(öæR£)ÌûÛ_', 'wp-content/plugins/polylang/include/walker-list.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'wáZââéjº”e.2Z'),
('`ö¦”; "­-¹ÿÈ+~;', 'wp-includes/js/tinymce/plugins/media/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '§WÓR&€Ì-@‡6ÎîÄ'),
('`þU®2‘šmdW', 'wp-includes/class-wp-customize-nav-menus.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H·þá¶ÜÀ êÑ Êb'),
('a\nü~wËSKŒÂ\Z‚éê', 'wp-content/plugins/polylang/flags/hu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'loÎŠoÐœ4	d°^‚¨Ã'),
('a\ZÈcŸ³ür•2äô¬', 'wp-content/plugins/wordfence/js/jquery.tmpl.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '€\\}Ã"£†‹7Ú·’•DZ'),
('a&?ÕAÔÛõÏâ¨Ö(~(', 'wp-content/plugins/duplicator/installer/build/main.installer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Q­ÏîÜ(„ô	¨7bõÄ'),
('a)žTMWá¸Ooˆ¸Q”|Ü', 'wp-admin/images/media-button.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '²¶Ãã6@pè’z^yeóÎ'),
('a\\c,I"5TÍ±#Ì‹þ', 'wp-admin/images/media-button-music.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ïõ]ó2\\Z®/äÙÞ•'),
('a\\ºfÜŸíš1NUô¼', 'wp-content/plugins/polylang/languages/polylang-ru_RU.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'øü<zÙ£Ò¨Ýê÷s<ÅÐe'),
('an–Ü¨«5MÂ“gU{Ä', 'wp-content/themes/twentyfourteen/content-audio.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ýgdØèL#\\öÞ¢¬|'),
('a™–EM¿MZÝ þ\nA\\', 'wp-content/plugins/duplicator/assets/img/ftp-64.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Öé}LÜªAU»º×Pî_'),
('aÆÅƒÉû(màEBýlÉ', 'wp-includes/media-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ZÂ-çö´Áªy1Ä7_a•)'),
('aÉcµCH\r…‘=l@Ä¸', 'wp-admin/plugin-editor.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'jâ€^àUD¾>…Æs1Å'),
('aå|\n‚ü|@X\n¶œfM\r§', 'wp-content/plugins/wordfence/css/dt_table.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¢[¡fþæ\Z™ª}ÁI+o'),
('b¢AèIk™mòºªP', 'wp-content/plugins/polylang/flags/lr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ';mr!öŒëFRIªÓ+'''),
('bYÆ,¥°Ï¥YªrÛÑ;¾', 'wp-includes/js/crop/cropper.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ky5ôni*M(í™'),
('bˆÊ¡F1t–=ªÇâÞ	v', 'wp-content/themes/twentysixteen/js/color-scheme-control.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Z•ÉpáíÍö2/ù>)~Oz'),
('bžËNcäþ™VX“Ê­-', 'wp-content/plugins/polylang/settings/settings-tools.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Lò‰ÐÉ=®Â0gKÓkµ');
INSERT INTO `wp_wfFileMods` (`filenameMD5`, `filename`, `knownFile`, `oldMD5`, `newMD5`) VALUES
('bÊ¥ñHzfW˜ …­gw›', 'wp-content/plugins/wordfence/lib/wfSchema.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '­¡O÷GrËã¦U—´Ö\n©'),
('bà”û¿”ÒŒ &é?¬{', 'wp-includes/js/customize-loader.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '’’Àø<´Ü½L-‰Im'),
('bâ÷+Æ´ÝŸó´3ï†', 'wp-includes/customize/class-wp-customize-nav-menu-location-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÛG4"¶w„k:ø''Ïþï'),
('c§4L]ôËž®·Mc', 'wp-admin/includes/class-wp-post-comments-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\4øZîãêÂeN]%åD'),
('c,½…°[xÞ«ô3¥\nù@', 'wp-includes/js/jquery/jquery.masonry.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '’ŠÜíÍR¸(åžÂ‘e^'),
('crahKÔì[³¥ž½2ßZ', 'wp-content/plugins/polylang/flags/st.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '«''*PêeeÀ6Àü¬¦'),
('c¨‹rªhÿ¾:;ÒÎæ\\[', 'wp-content/plugins/duplicator/assets/img/5star.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ŠH˜ŒŽ¥Ö`|ã—Rá*('),
('cÏ6áÏÊç9S½Û½éä…', 'wp-content/plugins/polylang/flags/ck.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ç	([r¬.½ná„ž@ƒ'),
('cü¿˜ënu•\\>}KFÞ', 'wp-content/plugins/polylang/admin/admin-filters-post.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'gµ4ºXï®FZ‘ÅíùED#'),
('cþ†[b]ËÀþÝ½‡JF', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/storage.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'vcõ`''ýOA[Ï™˜UÂ'),
('dõå:w¤îÐOÍÐ†', 'wp-includes/ID3/getid3.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '—¼ÖVßzúe=IuïÚ\\'),
('dãì­1íìµ“-…;O˜ö', 'wp-admin/js/custom-background.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'òj÷)Nà¹ ËˆÂ¨iv#'),
('d#»u=k§fî›''ð\0²Ö', 'wp-content/themes/twentyfourteen/js/customizer.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Âbp—_–‡[„rã$/ºÍ'),
('dPy±,;[.‹BZgç<!', 'wp-content/plugins/polylang/languages/polylang-uk.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'bA4ºY#%ÎÊG7êÕ'),
('d®on¦W>aÌ§™Àóì', 'wp-content/themes/twentyfifteen/genericons/Genericons.woff', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 's/ðýn]d²ÈÈzÈ?'),
('dÕ(ÄÈ%JéùÞ@õG†', 'wp-admin/options.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'u ðŸƒyIèùÅr|ãë'),
('dâºhÄ§{q4‡2÷K"ß', 'wp-includes/SimplePie/Rating.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '=p¤m	ÇKãØ¯atû'),
('dè4jà2UÂVŽ·$öP', 'wp-admin/css/wp-admin.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¿ä½5\0«ÇÉ!û*['),
('e.PÈ´NB‡Sx[Û&Á¼', 'wp-admin/includes/class-wp-plugin-install-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '@¾@^ä2©@Ašä³Zù'),
('e®ä__ó%÷è®xˆÀÛ', 'wp-includes/class-snoopy.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¦Ôä5ã<$#mÈ'),
('e²ù‘ûÊ÷*ói!ÅeÍZ', 'wp-content/plugins/duplicator/assets/css/images/ui-icons_2e83ff_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'nz‡íñ×T@XŸ‚‘çR'),
('e½^#|Û¢TÐ©’ˆz', 'wp-includes/Text/Diff/Engine/xdiff.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ö¹ÈbŠt­X8šGX'),
('f…u3\n¸M\\Á}6*0íž', 'wp-includes/class-wp-customize-setting.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'çktR€òÞkì³èz"'),
('f™yÄ²ŒÆ¼vhKŠ', 'wp-content/themes/twentysixteen/inc/customizer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Â%:°—Ñˆ_Èn^–\\'),
('f éœ°fØŸ|hû¹U’L', 'wp-admin/includes/ms.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'e~èO*fâ‹´at˜+'),
('fÎä ÙýÂe«ªR¹)Ú', 'wp-includes/SimplePie/Item.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Eâ!úCzì\0Žc<Ü§'),
('fÖˆó½ù¦¼VíÔ¹)ä9', 'wp-includes/theme-compat/embed-content.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 's©yûÏnãÏFæ…'),
('g	UÄB[Ý&JnFUç>', 'wp-content/plugins/polylang/languages/polylang-cs_CZ.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '† $ª,;¸±€Ä¬þŠ'),
('g#é,vM‘ÿŽ‹—ß:õä', 'wp-includes/js/jquery/jquery.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÒÓœ§›>«÷ÊX""ûÝÓ'),
('g+yr‰äÐq„€ö€D©´/', 'wp-includes/vars.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ls¥††è"–Bó\Z€è'),
('gF2Šúåø‘H1ö›”Ù', 'wp-content/plugins/polylang/flags/fj.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|>xã³K¯»es6'),
('gl?sD*ŠâUÀÈG1ÆÏa', 'wp-content/plugins/polylang/flags/ls.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Â(x:…¨T–ÕQZ*Ï'),
('g|y_“o4"‰©X†Nšù', 'wp-includes/images/smilies/mrgreen.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-5Áà^±”‘ÓJÝjÚ'),
('g”$G\\¾ë±;©rÄÄÏ1X', 'wp-includes/images/wpicons.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'dSüøuq‘V_®Üãaô'),
('g±fö1ûÛ¶òyä;´_', 'wp-includes/class-wp-http-proxy.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'q6®÷Ò»W:ä¬§†–±_'),
('g¸}\ZnÉ\\›¾Ç6ªä4', 'wp-content/plugins/polylang/flags/mx.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Gš†_ƒŒpÖT©ø¢?š}'),
('gõä]bR%ˆ ZÛEº', 'wp-includes/js/shortcode.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‚­O¿NµòFëÍV[f î'),
('gþEdÉã1¢ÒD}ÂÂü‘Š', 'wp-includes/js/jquery/ui/autocomplete.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‡„‹PØµC¶þ\Z8©zjê\\'),
('h\ZOhløç_øÍLm/å·', 'wp-includes/class-wp-customize-manager.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '•ˆÃðÝ„»¬%ËY÷ÆÊ²'),
('h dÑ’ê»…2öÃ_Àr', 'wp-includes/functions.wp-styles.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'éËü`¯ÇŒb‚ÍYR²ßxy'),
('h0X-Èiÿ»Õá^ÌG`8', 'wp-includes/pluggable.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'k(ðUhÆsÏÍÓ'),
('h4¬‹ò#3Ç`Ž-Ýˆ¨"¢', 'wp-admin/profile.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‘„å?–ºÞ>zçÍ©íßz&'),
('h@ZÉ%Rë•Fß;ti\\m', 'wp-admin/css/login-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Z,ÒA¥ýöBz{v'),
('h{°Þìt¥Â0Ká:9/', 'wp-content/plugins/duplicator/lang/duplicator-fr_FR.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Whz*¦UªçP…ŒÄE'),
('h|hEˆˆf:Æ±2š‚~', 'wp-admin/network/theme-install.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '&Õ·Í1UpÐ%àž1=$ä'),
('h»<²]“”ìOpNCÆ´æ', 'wp-content/plugins/wordfence/lib/wordfenceURLHoover.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'vÍ#Aq''I‰bOµòv¸D'),
('hæÕ¸ÜAQÚx¥AÔž', 'wp-content/plugins/polylang/flags/tk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‰o±£F8§caÔ0vhÍT'),
('i3.´b)f¾ìNZ?Ð', 'wp-content/plugins/polylang/flags/mq.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¾_²Í3èßà²òþÿ¹7?'),
('i%bëyR›Ø¡oŽµ"÷Nü', 'wp-content/plugins/polylang/flags/ps.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'hÕù™$Æ~÷Ó³ª2ÿ"¸'),
('i|™FÂ\\QE‰¯Øv×', 'wp-content/plugins/polylang/include/links-directory.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¬>''©µîÊˆ\Z/ZTŒ¿X'),
('i²-ÿÐX±8V[~Eû', 'wp-admin/css/install-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'J´Ÿ5¨M''Ü+zrÆÑ]'),
('iÀ\\´¯›=Xïh$', 'wp-admin/js/language-chooser.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	âPÇV0×tJ»J'),
('iákìñ­½CñíT,ì', 'wp-content/plugins/wordfence/lib/wfIPWhitelist.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'À´Có\rä»ïÞì?NÍ•¾'),
('j&ºV1™¬®6“4ª¯ëâ', 'wp-content/plugins/wordfence/images/icons/ajaxWhite32x32.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¾íér‰Á9 #Ó{…'),
('jQûõ—e÷Šø;âe', 'wp-includes/css/wp-pointer-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'EnòVeò·l…¶WëÛ'),
('jmE¤ÑAXÝuw›>Ü†', 'wp-admin/css/colors/ectoplasm/colors-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',{~£Ð‰‘/Š!ÊõU'),
('jä±‹¹¿áð%ˆÝÃ]€', 'wp-includes/class-wp-xmlrpc-server.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '…½íËõAn¬ÅÇŒðIÔ'),
('j—£Éÿ5F+¸¯ío', 'wp-includes/images/crystal/interactive.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¯RÏm`òíº`™9§æ'),
('j›^‰ã£Ûhñ8•®çŸ', 'wp-includes/js/tinymce/plugins/wpembed/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ï8*õR/© »?’%Þï'),
('j ¥÷"×…´åÜªdižR', 'wp-content/plugins/duplicator/installer/build/classes/class.config.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '½ˆ.Je}ˆ¢è³¯UúÍ®'),
('jÚ¿´tØÁ1u©¬†}£§¾', 'wp-content/plugins/wordfence/images/wordfence-logo-64x64.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'v^¼IêN/©Èg@ö\\u'),
('jÜî™ªÜ\n#Vÿ	„-', 'wp-content/plugins/polylang/settings/settings-module.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ŸtBÍs	Û¿Ø9\n©†'),
('jà>?)ÒAÚY§AšDb', 'wp-content/plugins/duplicator/assets/img/logo-menu.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'm_ò46\ZYf.”Vù+'),
('k‚ˆ¸$6O³Ò-N…x ', 'wp-includes/js/tinymce/plugins/charmap/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '21çíÔQñ•*…nh•™'),
('kMÏü–œ¦šîÌ™Ysp', 'wp-admin/credits.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'çhë\r*Q«-Óý)ò'),
('kk„ «œGj)J‚ß€Æê', 'wp-content/plugins/polylang/lingotek/image04.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'd5‘{åhx_ßáÕƒ\n'),
('k‘À;ª•(‚h÷¾Ø\\ÇÐ', 'wp-content/plugins/polylang/languages/polylang-af.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/„üœ³R/"hÑÉ¸Eé'),
('k½úBËžãb=y†Ú', 'wp-includes/user.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Kih\n€}:Éí[E3ò}'),
('k¿=8ÌÒÆ­‹¹çé‡uö', 'wp-content/plugins/polylang/flags/kw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.…Í¹Ê‚@Éü7.Lï·'),
('l/\nÑÔ€°WÁÍ±-cÏ', 'wp-includes/widgets/class-wp-widget-recent-posts.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',ñcb\Z‰‚:5X}Ôz'),
('l9é¹=¯ühÇ,>ÙÃç&', 'wp-content/plugins/wordfence/lib/wfDiagnostic.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ä˜®¢W>\r\nñ	ëÏñ}ï'),
('l…â´šfÖsöãóæëaÎ', 'wp-content/plugins/polylang/include/walker-dropdown.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Íy¶ýTuûàƒRTª¬@'),
('l‰iÇ‘ˆê/Nz&ƒ¨Ú‚‘', 'wp-content/plugins/polylang/flags/jp.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '•ƒ—¼|%ÇFæá"6\\\0<'),
('lÀWÿ÷\rv¿\0,ÿÛãc/', 'wp-content/plugins/polylang/include/widget-recent-posts.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'rUIÃ"ÅÙ£®ÝÍ…+ñ›f'),
('lî â\0Íis†óîW8‰o', 'wp-content/plugins/polylang/modules/translate-slugs/settings-translate-slugs.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'T^‡rx¹ÃY)<DÍ³M['),
('mD’ÆTŽms‘·òA©}', 'wp-includes/certificates/ca-bundle.crt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÃÑ•hÖf;ÖÊQ)ÂlU'),
('mAçðY·àÊÀ®Rb|ÞSŽ', 'wp-includes/ms-default-constants.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '×êP@ÄÑb\rß«âxH·b'),
('mEš¯ñö¾º\\ç)ÞØoÔ', 'wp-includes/js/jquery/ui/spinner.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '²×©ß/k&HQúó;jÇÖ'),
('mY·Á“š}É½ë…?', 'wp-includes/js/jquery/jquery.ui.touch-punch.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'LÈmÄQ4Öƒãˆ]±'),
('mˆº-\Zm1½¥Èû£wÇï', 'wp-includes/js/jquery/ui/sortable.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÓÎXw—·ƒk^”'),
('mŒQÄÓ‹ø¸†\Z½ã!\0‹', 'wp-content/plugins/polylang/languages/polylang-nb_NO.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‹ÎžcaNœŒ	Í@„-àõ'),
('mœÿ¥Æ\Z•/·®‘„Â', 'wp-content/themes/twentyfifteen/screenshot.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[£tÕ®1”Oér²H^\r'),
('m¬èä-®s½\ZéE³', 'wp-content/plugins/polylang/flags/bm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ï[ñ’Y ,ø®‰ž‘qÐ'),
('n]ûj7<3ISsQß', 'wp-admin/images/post-formats32-vs.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '·t.E¶­ê5G¥N\Zóþv'),
('n#©t=•''…’ÁÞõb]{ñ', 'wp-includes/js/tinymce/themes/modern/theme.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÐxëƒV“â¹ªU"Ì€~Á'),
('nZ/1T:{&^„/n¿ý†', 'wp-admin/js/media-gallery.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|ò¸f’§„ö8÷}+&'),
('nef¾³°A@´ÿ¹R‡?¤ý', 'wp-includes/js/jquery/ui/position.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '“–×¤êÝâx–Î02z:‰'),
('nzql9kõÆ:›T…×ÄLZ', 'wp-content/plugins/polylang/flags/sz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'évu¢R€¹ËLÉš«\0O'),
('n“ÆíÄ@’§AŽùF´', 'wp-admin/network/sites.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‚¹ ¶¡ `8æQ3ib€'),
('nóÊó09j®v8õ"', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/request.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '£œ™U;,ïƒÇ6‚P'),
('oMwY|ÛÄSºuÃX"½', 'wp-content/plugins/duplicator/assets/img/logo-dpro-300x50-nosnap.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\0°€V½ã\Z0[GS/"'),
('oPZ\nÉ%ão2X!á''^', 'wp-content/themes/twentyfourteen/page-templates/contributors.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*¢ðx/>7ÿe‡‹éCµ'),
('oPðûc™‡ìo©.är', 'wp-includes/js/tinymce/skins/lightgray/img/object.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'órdP×E}u\n/M”AÇî '),
('oZ0†š÷ùÑØÔ<cÍ0', 'wp-includes/SimplePie/IRI.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'nÿ Óæ†’Ï;a{‡_6õ'),
('o¯‰VnNã*5OÕó7', 'wp-content/plugins/polylang/flags/co.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'KÒ#²„ Úh&îelS3'),
('oÐåaÈæw5hÞ@+w\r¼', 'wp-content/plugins/wordfence/css/main.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.Ìjœ_Ñâ™P¯cfà)?~'),
('oã®š-×;?X:ûpÒ¡', 'wp-trackback.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ìñ.Ž¡dº˜Ø#kµl'),
('oåŒ“ßá±%œ×]\Z', 'wp-content/wflogs/wafRules.rules', 0, 'Øq²UÌ?œµ}ÆjXA†F', 'Øq²UÌ?œµ}ÆjXA†F'),
('oí“[¬Ðn3u‚ÈÊ¹ŸP5', 'wp-admin/options-general.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÄPQå;%5¸o-°Î'),
('pôô7uÌLÍ_{2Ã›–', 'wp-includes/js/jquery/ui/draggable.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'PVñd™­@ÆËY ÷'),
('pUyüa	êb¯àva„;¡8', 'wp-includes/js/comment-reply.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'êÇN¤Ø®ÊèïTÔ&\0'),
('p€tªñ2Ž‰\r£†ô¬n¨', 'wp-content/plugins/polylang/flags/aw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'n‚''œëG4_ê×ÿ>5'),
('p•ð´.Ð°”ó[ÃD¡', 'wp-includes/deprecated.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ªH‹bsn.¦sÚÇGFÌ'),
('p¦äzæ–í hæÝ ¡íà', 'wp-content/plugins/polylang/flags/hk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '8QÅÂÿ@èŠ“XËÖñ'),
('pÐ%}¢ª28Ô~Á÷.', 'wp-content/plugins/polylang/flags/bi.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'B|rÍ4(¯bð5†Çº'),
('q\0^ômvBsfC~Ì', 'wp-content/themes/twentyfifteen/index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '„É²b®ZK“ž“K­WØî:'),
('q"coëÞ£>«2Rhé]', 'wp-admin/includes/plugin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'öîš2ÁÓ¬wh-”u=ïú±'),
('qhÿ665—y|ò=ï?S	', 'wp-includes/js/jquery/jquery.serialize-object.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ñ\\)¡Ÿú‹›Jèl<ú"'),
('q¾†5@£*=õ&´æ\\Xá', 'wp-content/plugins/wordfence/lib/wfHelperBin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ';ï×!·ÈËÉ4QÕÞX#'),
('qÏ®\0ö[\n\\\ZXð ž·”', 'wp-content/plugins/polylang/flags/th.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¯…(kñÊÚéÂÆ6þƒRQ'),
('r”®h’Åv†ÏLk/…ö', 'wp-admin/network/upgrade.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|îÕèf*Üéô(ý‡¯'),
('r+zk;» 4¯æWI', 'wp-includes/js/tinymce/themes/modern/theme.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\réZT³†|©uÉñ¿ø"\\'),
('r7æKl¾ø+6ósrQ÷¸', 'wp-content/plugins/polylang/admin/admin-model.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'v ^Z»(ÏÿZqW''Ífª¸'),
('rtŸi˜. ¿:vÞV&Ó', 'wp-content/plugins/wordfence/css/jquery-ui.theme.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '’Åò{_®ØÎå¯#ÆÔS'),
('r‰(nÕž¨ójç—ßb"', 'wp-admin/js/media.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ï…×^p0LB÷uSî›žÅ…'),
('ré_è/™ÍHG=Í%—<º', 'wp-includes/images/arrow-pointer-blue-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%mârÞŒ]4¸9cÏ'),
('réör‡(J¯g÷(¨y­t', 'wp-includes/js/mce-view.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '˜_—-Nïk6e Îã\\['),
('rùÎ\n—Ûb°•#ð©é', 'wp-admin/css/media-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 's"Uë Ÿâ)ù9Ø=7'),
('s¬‘y- –AæX¦Qäg', 'wp-content/themes/twentysixteen/genericons/Genericons.woff', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ó÷;(Hîí-Jht¬x†'),
('s²E¸ÎžqÈp°BíÚÖ', 'wp-admin/css/widgets-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '#v¿#|WöèÙ‡µí?·'),
('sÞÅU''÷ìÀe@¡d‹', 'wp-includes/js/tinymce/plugins/fullscreen/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '@Ç•BÈFüi¤€â»‡÷"'),
('sìÃË±ŒY*u¿©áO„', 'wp-content/plugins/wordfence/vendor/composer/autoload_psr4.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ý:\0ðÑ>²—íØÇ}LQ\0'),
('sÿC4M¾*µ¾*B«)µ', 'wp-includes/css/wp-pointer.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‚î®Lh((È€žùûÃê'),
('t6·îžO¬\raŒÈ†ëf', 'wp-admin/js/plugin-install.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '•pCzb“CZ’©•ü±'),
('t8ŒÀÐïp¯Ì‹Õz{jDp', 'wp-includes/css/buttons-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ýªû@í:[ëêô^­'),
('t?WÃL®;Vn%œBì}/ë', 'wp-content/plugins/polylang/flags/cr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Í( ‘èŸ¢¸D…vBý_·'),
('tUÒ/Ds¤IÚ¤Üstã', 'wp-includes/js/wp-auth-check.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '™Éz}jÙáº»×o)ìªÖ'),
('tm6Û—ÀqºÿŽ.£=j', 'wp-admin/css/colors/blue/colors.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ûM>/éU®§ì¬Fø'),
('t¨€û‘.¨Ã••81½', 'wp-includes/random_compat/random_bytes_com_dotnet.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'er½ãLVËÄstrážÞ'),
('tÓÄx”*ÖnÝ˜&Ø’õ‚', 'wp-content/plugins/duplicator/assets/css/images/ui-icons_454545_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÐÂéJÖ‰Þ‡>óŸÔ>n'),
('tÜ¨S9&&Á‰—Î×+', 'wp-content/plugins/polylang/flags/vg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'yïWQIòf=õóŸïò'),
('ueö,"\n	îh¸g.', 'wp-admin/css/colors/_mixins.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'E"mÉzî2„Jå²Ç•<Pø'),
('uvúÕž(S5ä‡¹í›¨', 'wp-content/themes/twentyfifteen/style.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4ò$ÜìIï§h÷;aRœ'),
('u¿Ü3!pA³f…)R¯MÛ', 'wp-includes/js/tinymce/plugins/wpgallery/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H4PDæ¾¹ÒûDM\\I'),
('u×M	ª\Z¦ëÌD!aQ,Ä', 'wp-content/plugins/duplicator/lang/wpduplicator.pot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9¬šhÁþëMîu9ãòŠí['),
('uáqg\Z\0‡8‰hÔ­û\0ð', 'wp-admin/custom-header.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¹z_uñí	œ¸ÑBDë'),
('uþìQ"±å~W¨ö¬™Ã°', 'wp-content/themes/twentyfifteen/genericons/LICENSE.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '²4îMiõüäHj€ý¯JBc'),
('vÚ´¡åÇÖV¹½ØKµúP', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce.eot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$zû3ß`cÑú.'),
('vK9(ò•Ò<äaÄÔÅS', 'wp-content/plugins/duplicator/assets/img/logo.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ýDÎì\\e#©ÿ¸E‹ìþ'),
('vK;@ÑsºaU1;©	^©', 'wp-config.php', 0, '¹Ëg¢±æçó­§êgõ*', '¹Ëg¢±æçó­§êgõ*'),
('vj/‡3ÝOy|üàÄÕ', 'wp-content/plugins/polylang/modules/plugins/wp-import.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '³Ýlb ^WíõÁÓR›('),
('vlBT›èª[6ÇÕBÂJù', 'wp-content/themes/twentyfifteen/genericons/README.md', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'uö9\nJ“ýLa7Q·©ç„‘'),
('vwÙÑ@ˆHÊÉz–F¦', 'wp-admin/ms-admin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'š´—@ßÍ¯E…b6ä'),
('v]¿z‹ðÔåšÃ3»tB', 'wp-admin/includes/class-wp-importer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Þ^Þ)¥êñ=¢½òÏAô@'),
('v¡–Þ£ãûRï', 'wp-includes/js/jquery/jquery-migrate.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\0—ðî­÷FÓwê'),
('vÃ¢,\\­+Q¹åÕÛñÖ§', 'wp-admin/css/l10n-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'éØ\0‚YêžýI]¡'),
('vâG‚.Âg·AõÆ#õré', 'wp-admin/images/align-right-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'hƒl½>rº]£lWÆÀx'),
('væüáâ4Ý|>í<´ÿÀ¨', 'wp-admin/js/xfn.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'âÖîË×t¯+±¡nÁ(k'),
('vð{#¿¹lš“b\0}ÓãB', 'wp-admin/css/colors/light/colors.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '…äz%M…ù’d;Üuóñ0¼'),
('vúÒ¸);D°~J"àq', 'wp-includes/js/jquery/jquery.form.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'å¯Øä.Â,“+ŒÙ\nq'),
('wuèšl|åõp˜ÊQ', 'wp-includes/js/autosave.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ÿl¿’ýh/	¾&XÉ«g'),
('wúi ''ûc¬êÎÃ»ãqz', 'wp-content/plugins/polylang/flags/ch.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'æ{§vqŒÚ+<‡J]['),
('w-¬íI\\¨7ÛÃ=Çv', 'wp-content/plugins/polylang/languages/polylang-ary.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÂG9³é–øp¢—ÍdD”·Ì'),
('w‹ÙC¸‡OÊx·ß#›)n', 'wp-content/plugins/duplicator/views/tools/controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ið$•''e]„EH„%'),
('w£¤ïLýê£0œïð]r.', 'wp-includes/images/crystal/code.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '`ï1²Ïúï°õ1®9'),
('w®ô`MËá>Ç{Ôƒ´', 'wp-admin/includes/noop.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÕKÐ˜édòÔ°­¦‹Á/´­'),
('wýúÚòáÊ:}V¹¼P', 'wp-admin/js/common.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ZQ­0¡(ñ|&ÚX¢'),
('wþi×ÏþÉXg”eq.5', 'wp-content/plugins/polylang/flags/ws.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'h?d2\Zžçz’1›¿Í'),
('x	G!Nä·$¥.šdŽTbï', 'wp-includes/ID3/module.audio-video.flv.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'kƒHi¶,Wþ©Q±FÜãÓ'),
('xÊÁúbšÈê(ÿÚ´r/±', 'wp-content/plugins/polylang/flags/cd.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4â§*œ¹èsÛA;\rE'),
('x.o\Z0L³u Ï³äÚ', 'wp-content/themes/twentyfifteen/header.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6EâÖ´³ÁJö¦ÆM'),
('x7¡¾ÂöM¿J^Aá;', 'wp-content/plugins/polylang/include/api.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¬òHÀ}8ÍÜB3/Õ’ªô'),
('x9@^6œÅß‘¬óŸo·è', 'wp-includes/images/w-logo-blue.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ý[N°W¢ð_pàw®0'),
('x<˜Ï™çDœ^YÞW2%', 'wp-content/plugins/polylang/flags/hm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/ºIÈˆ€éÿÏùG\\·«œ'),
('xIHÞ.”9”YÃàBO', 'wp-admin/css/colors/coffee/colors.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9~8 ²z#C0É^%aÎ'),
('xy—!àøôqÁ)ö.Ë‰"', 'wp-content/plugins/wordfence/images/sort_desc_disabled.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÎmŽ„†•ÍŸÊärÑÖ 9'),
('xŽs¥2éõ³‚"ZÑUãÂ®', 'wp-content/themes/twentyfifteen/404.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¬óÂ š’2ÕMD€$‘²'),
('x–^mÝ]Ì²š/õÅL4vU', 'wp-admin/includes/revision.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '_ µnfÊÚ1êíìðk?'),
('x¡jš	‘æë&ÓÁ»±', 'wp-content/.DS_Store', 0, 'Ób/ÕÌFÒ7;)?ú­', 'Ób/ÕÌFÒ7;)?ú­'),
('xÕËÄñ˜rm%ˆób³8¬', 'wp-content/plugins/polylang/flags/kz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'mQk¡R±_Ð]vE315'),
('xÛk©€ñM‹^îÞ£O', 'wp-content/themes/twentysixteen/inc/template-tags.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Lf¹çy÷''ï•²^€ô\0'),
('xë‚‚Ÿ@}YÇŒiË+', 'wp-includes/js/tinymce/plugins/tabfocus/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'j]xL*ÂÎ_dà–Œ5I/'),
('yŠ­1‰â-è†/fI× ', 'wp-content/plugins/wordfence/lib/Diff/Renderer/Html/Array.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '†Â±ˆâÝt‹T2¦y%p¼'),
('y×\n–,\nCç|[i', 'wp-includes/customize/class-wp-customize-selective-refresh.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'üQ·êóåi^ÐÖg*×‰%'),
('y´íÝEaÌó:[\0', 'wp-includes/class.wp-dependencies.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÄÑÍËØ.¿¤ðÍ7ƒÃh'),
('y·C[öPŒ,Ø†ñ´Õ9µv', 'wp-content/plugins/polylang/flags/pn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'äÜÈWõ4´Žƒwî6ö;à'),
('yßóC(ýîà¸â#Tp', 'wp-content/plugins/duplicator/installer/build/ajax.step1.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '!Køór¥€•U:^ä‰Ü¤'),
('yç±Þ„¹[$P‹méGÁá', 'wp-content/plugins/polylang/flags/bb.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'GÈ®¤f_N‹ZzsòË'),
('yêŽäG•\\`˜áù¢MR”', 'wp-admin/network/site-new.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ì\nÅV&ŸÑ§eGÖêÈT'),
('z;j2WDº6²Œ[¡V', 'wp-admin/js/accordion.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ï?ã=Lá/å%NZñ\\ç\n'),
('z¢5·*\ZADZCk¬áj®’', 'wp-content/plugins/wordfence/images/icons/magnifier.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¨§uO®{:qcVãî'''),
('z¨¯Q<’˜''š€U~ÔR\\', 'wp-includes/css/wp-embed-template.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ã0àqõ<Š¢TÀ/kÿ'),
('z¬öÕïJXÔw{!\rF«Àº', 'wp-admin/includes/class-wp-upgrader-skins.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',Å„Ù?S"ÿNfÏÐe'),
('zúÜ7,D\Z2Ü¤ã­‰M', 'wp-content/themes/twentysixteen/comments.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'nïD>D—Wê%ô_]~–'),
('{Ãê™aétÑ\n">ªÇS', 'wp-includes/js/mediaelement/flashmediaelement.swf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'æ\0FÎ\\ÈU£²«>‰`-'),
('{rDËìªÜmxüôÊx', 'wp-content/plugins/polylang/languages/polylang-ka_GE.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'A¶Ñõ[Àï$.€xÂ'),
('{N¤ˆÈ2íQ®uÔÞ=	œ', 'wp-admin/network/theme-editor.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '€OšF©ãdmƒùÅÓj'),
('{PzËÒ¹ùþa§eÒÓ§Ò9', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/bootstrap-sample.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'K!š¿à³šR‚lúq`'),
('{tÈE~ªÌPÛA´1ø ', 'wp-admin/js/tags.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'LÆBfñ³Z†Æ<Á²Ä/s'),
('{y"¶ÒµµÐÝ©¶{­', 'wp-admin/includes/class-walker-category-checklist.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÅJ_ú“e´qó„¨_5'),
('{Ÿ)×4e4p:±fW‡', 'wp-includes/js/jquery/jquery.query.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ';ÌXzòÇ°ÆûÉÀwC'),
('{ïRC¼Ú\Z.*"¢Q', 'wp-includes/feed.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\ö}ñ1ú‘LØÿâÎ“'),
('{ñ\rÞ-äÜ} ^éÆ', 'wp-includes/images/smilies/frownie.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Q›óÐ„°Äôƒí'),
('{õ‡?ìÑÕü\r’Ú\n''', 'wp-admin/images/imgedit-icons.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'KÕ\\2ŸÙØ}©G‰i;O'),
('|jª•x7Ç(Q}Ž0À''ð', 'wp-admin/css/list-tables.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '?ò£À•Y„ágž6‡ì€'),
('|/Ú’ë\0[*4“ÿxüã', 'wp-includes/js/admin-bar.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ùz™§öAæ“’ZGÃ=ä'),
('|1éâQAÎäÏè·ÉEá`1', 'wp-admin/css/press-this-editor.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',	nJ´ÇÇ—òòzÁû} '),
('|;?çìë 1×ö2', 'wp-content/themes/twentyfourteen/css/ie.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÚÇŽ?ÂnžôOjÜãeA'),
('|t|“Ay¥ƒ\rAÎëû’', 'wp-content/themes/twentyfourteen/content-none.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‡	ã]X&2çþ_'),
('| š„å,^Õjö€$n', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce-small.json', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'àAû\r2_s:’ÐSV·'),
('|þ»YŒ>à€Ð	ùÆ†Ä', 'wp-admin/link-add.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'u—GïDÅ/­Ï¥ÄWóòƒ'),
('}Ä‰=•t©­ò‘»¤¹', 'wp-includes/images/toggle-arrow-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'FÊáÊ\\øƒôÉCDrï'),
('}*"Ãð«\0y„aš=H½m—', 'wp-content/plugins/polylang/flags/veneto.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2	4žm}(;˜‘k«M'),
('}`ÆÒg"PÉ2®ÂV½‡', 'wp-includes/images/spinner-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\q¼´9)hdxR©Éß]l'),
('}®™4ç´	é-M°q{ÓO°', 'wp-content/plugins/polylang/flags/mz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'œ…A¾¦½<h¶º)×'),
('}Á7 Þ˜æDHDÚPl', 'wp-includes/SimplePie/Registry.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'È¢æÀµÝ1v9d\0ðÙ¸'),
('}ïÈæŠ\\Lü¯`Š§äi)', 'wp-includes/ID3/license.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '5ÙŠ­ø÷ÌhQ3fQ÷¦k˜'),
('}ó0·¢5°ŸþM¦ZŸîŠ', 'wp-content/plugins/wordfence/js/select2.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' bGÞ.iþÊTRòU°'),
('}ýÖË{RÒ¢Ôà¢"', 'wp-includes/default-constants.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¬ývñyãÑpƒ±ÿÏÛ'),
('~ ¯5¿nX¢''Ùuñteî', 'wp-content/plugins/duplicator/classes/logging.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'G».\r¼ìnü^›’%è'),
('~79­hÂg$+Ñ=” Ý\\0', 'wp-admin/js/bookmarklet.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '·î–éaù®þÝ¬%T<E'),
('~?¡J¼IÖb*×ºêeèC', 'wp-admin/images/resize.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '?ºDß$ô\rÞXvÈÀ®Äa'),
('~F£Ìã«Ž>dyìÐj‹', 'wp-includes/css/jquery-ui-dialog-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Þ.„R™Ç8ô°)¤òI'),
('~‘¡ReOX‡f2”ñ`€', 'wp-includes/class-wp-post.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ð©x¢^X¤žSoããYj&'),
('~Å¥Ïs\0Ì1yì$‘L}h', 'wp-config-sample.php', 0, '¿xñ\n£éð7ÙVÙw§ó', '¿xñ\n£éð7ÙVÙw§ó'),
('~ÅÓ¸bcöÝ\Z$@$©ò*', 'wp-content/plugins/wordfence/vendor/composer/autoload_real.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ùc»@éqôãûxy=`„ù'),
('~Ó¤ÃwìJÌ¼„¿¡.ù', 'wp-content/plugins/wordfence/lib/schedWeekEntry.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'DÔ1¿D1ŸŸÅæ¹ä .V'),
('`^àX¸þ_dØ¾–#³\r', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce.json', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‰žþ"×ÐÖuÁ¢BáˆX'),
('^k¿ÖªDv6—R', 'wp-content/plugins/wordfence/lib/wfRate.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|\\XƒE±Ÿà\n´Wî\0'),
('j&†Â^ûÌøŒb³ôŒ˜', 'wp-includes/ms-settings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'cá»[Wñ±¤·Ãä:#î'),
('ØÐ¡qDÖš?ÓižX', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/utils.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '€„“¹­, Ø§\Z.8‹e´Ü'),
('ÛKûQð}U&;&˜ïØQ', 'wp-includes/meta.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'F.o^Ý''°é«7u^nV'),
('ætr³ÎµF_î ÃÇ×', 'wp-includes/js/wp-emoji-loader.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-''1°6îyK’YÙJ.'),
('é•ªžc–Bòw!÷ÄW', 'wp-content/themes/twentyfifteen/readme.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':))³“mÈ©à¶Ô¤JáŸ'),
('€.G&ì“<mïb´ˆü,®', 'wp-content/plugins/duplicator/assets/img/cpanel-48.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ã5/X%aƒÎ·Ó¢i'),
('€R9‡Ò…ãíI;^™', 'wp-content/plugins/polylang/flags/il.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¡5üÞþŠ9AkÛ$vá+'),
('€RÄ*³¸ª£õ÷ˆ¤ÝÌÂ', '.htaccess', 0, '	<ÂÐÝÿA!PNÈl2”:(', '	<ÂÐÝÿA!PNÈl2”:('),
('€©òSPÓ;^Æ­zßI', 'wp-content/plugins/wordfence/lib/conntest.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‘j˜Ï"‚è¦¬¼êr\r'),
('€ÓÚºèu¶¿M—É÷[\r', 'wp-admin/images/wpspin_light-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}ï3ªÙYÍ(IÝò¤m'),
('€ÖsSkÜi«<4''cì-6', 'wp-includes/js/wp-embed.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'W|û;·¿sof2CàMÂö'),
('€æñ+Âã¨0¦±ÇØÆ1', 'wp-content/plugins/wordfence/lib/menu_blockedIPs.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ª}…¡Žõ”õÙ…³(ë·'),
('€÷êÿeØæ97ãaJS', 'wp-includes/images/smilies/icon_smile.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '²˜G)Ã¶ÍÀu¸‹\\\nM'),
('ùXQûád9r×Ú¼–Û', 'wp-includes/customize/class-wp-customize-themes-section.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.ï¨¦œÿÈÕî1"AV'),
('el÷5s˜˜EïÃºQâ', 'wp-admin/js/media-upload.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'é/Ãú³ÆÚ%þ—Ùf€'),
('…,CUUîèœú9i-', 'wp-includes/css/wp-auth-check.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '…u,¨È™®ã)~‡GŸÕ”'),
('È‰V?	ÝÞ]Æ)A', 'wp-includes/js/media-views.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Âûæïñ4NKB¬!¿ïö2<'),
('ÕXùâÏà-Ÿ4¤Jü_ƒ3', 'wp-content/plugins/wordfence/lib/wordfenceHash.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'LRh¯ônç¼aÈ;¼'),
('Öð„Ë''>á[½žÎ‡÷', 'wp-admin/js/user-profile.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Åúïë´zÝA¼k#åÏ'),
('ì¶Pdºµ“ý’íc3', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/http.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'sÃ[''êèûÔ÷h7˜3;,‰'),
('‚OÍXëÁg]<f@˜', 'wp-admin/css/farbtastic-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\ZˆL	czG¯0~l0WÝÂ'),
('‚3¤–Æ‡eÇ(Ãº9ù', 'wp-includes/js/jquery/suggest.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 's\\+A)œ”ãn.;«‰'),
('‚ý\\Ï(åÙwBêÄIã', 'wp-admin/network/update.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ºE ^Ì!Œ«u´Õ)ÿu÷'),
('‚"Ý·	f0«&‰9 ¸ŠY', 'wp-content/plugins/polylang/flags/gt.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '8N8B\ZhSùÃ]HØÄš…'),
('‚(tTlDÎ¬7&‡³MP.À', 'wp-includes/js/tinymce/tiny_mce_popup.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ûæ ‚B+uØžË˜4	ì–m'),
('‚BÒóÙ‡Èv<Svç¨³', 'wp-includes/SimplePie/Parse/Date.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'î‚Òç\rÈ¯Æ¹eÒ¹Ïô^'),
('‚F‰ åGJÎÖBìˆs7µ', 'wp-includes/js/media-models.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¼ÁÞÛvx2Gè§T¦'),
('‚w€·5»ÿïÁ¡)ºûž', 'wp-includes/css/wp-embed-template-ie.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'î·)6žó	ØžÐ¼q ªÊß'),
('‚Ž\0¸ó¼²+OW+', 'index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¶%0;àõs¦¹Dm\\¾:['),
('‚§¬ãíA¼ÎòŒ1\Z…;¤', 'wp-includes/rss.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ïâ“‘F(|µñÜ¢¡in'),
('‚ìœý®v¿A\nGrÏ3C9`', 'wp-admin/includes/class-wp-internal-pointers.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ã¾I‡žNt˜#Sž#AÖÎ'),
('‚üç]]Sˆx»^ö6Ö', 'wp-content/themes/twentysixteen/inc/back-compat.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '››Ë€^†lê®tñßŒ'),
('ƒ` áùQ¨49öÙèß£', 'wp-content/plugins/polylang/css/selectmenu.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '!ÿK‘Ã¡(^»FQÔ*'),
('ƒ•>žÄÎSÏ`Øy7Ã¬ÿ@', 'wp-content/plugins/polylang/frontend/choose-lang-content.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '—å''k«Én7Ãu6F'),
('ƒ¨?ç¬Úz6¤—ÛaDz', 'wp-content/plugins/wordfence/images/loading.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'K:û„²·õmð™—£P½'),
('ƒâèÊ†×én¥Dã®–Ë(', 'wp-admin/css/install.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'c¹-Éw€te=—Ç-b'),
('ƒ÷f NÊdš©´Lúþ', 'wp-content/plugins/wordfence/lib/cronview.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ïWjÛš»æ¢þÖÁÙ…O'),
('„)Å©¶ê…2[¤	Ó4¨_a', 'wp-includes/class-walker-category-dropdown.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	‘ß¶æÿyv„Ý%`,­Ém'),
('„9Ö¡T}Ð_d$æÂ=', 'wp-content/plugins/duplicator/assets/img/amazon-64.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'zÈáÔ}pï·Ä0Ï‡¢'),
('„:+[õ¹g¾¦CZÝØó’', 'wp-includes/template-loader.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '­Gù\rwt¤æ\0«ûÌ8Ë“'),
('„~¹òH ™|“®ìe$»Ö', 'wp-content/plugins/duplicator/views/packages/details/controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Jöëjµ÷W¬Fce):[\n'),
('„¡˜¦Uve¨.¥Í9³u', 'wp-content/plugins/polylang/flags/hn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¬’BÂV¯x\0¢#½ËðyW'),
('„ÄYE	È†Î$ŠÓ', 'wp-content/themes/twentyfourteen/taxonomy-post_format.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¸.ü±\\+6íÞÎ!¦„'),
('„ÖnvûŸZùYVßûÉþ', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/init.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ªé$ú*(î\03îéÅ'),
('…g´1›¬Ü ³%l“î', 'wp-content/plugins/polylang/flags/id.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'þÕ8ùÈÍ\0¦¦UµT&tL'),
('…8ûth€®[gÏN¹Ìø', 'wp-content/plugins/polylang/flags/dz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Å<	Qº%³5ŸÀ¬¿Ö±'),
('…B%v6ÍI"Jb½Ç4Ó¡T', 'wp-admin/link-manager.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'n,{C·Ù½ /Íp¸Q™'),
('…pÂ¾²Œ?/[ã´€*Ã', 'wp-content/plugins/polylang/include/license.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'qÑ%þƒ†HzÛ!Ðª×'),
('…¹>ÁAäBÇ7åSz!ˆe', 'wp-admin/includes/export.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ó–m]4¯''\r|j/Ÿ)'),
('…Çæ.DtR;Å€JúY¤õ', 'wp-content/plugins/duplicator/lang/duplicator-de_DE.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'óÓ(bƒœ8·Iý}³ëôá'),
('†1äˆeUüMVý¸^š™', 'wp-admin/includes/misc.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ª(mr•2˜æ%V«MçÔ'),
('†5GzA`GüFÁÊùV	U', 'wp-content/plugins/polylang/settings/table-settings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¦ç†ŒPb\Z„«ÿF×ÊÓ'),
('†@GBWí%ï4''pædQ', 'wp-content/plugins/polylang/flags/ug.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'á4ª„ v¿UAõÑan]'),
('†Ÿ\0¦>#ŠÑ›á­z(', 'wp-includes/bookmark.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^Ï}ÙKä~<·F|ìFruS'),
('†³¬ºÃê‚âë}•Í', 'wp-admin/media-upload.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'êPŠ„a\n''"¤OeÝõ1J£'),
('‡òP“wª©0âhÿ9', 'wp-includes/js/tinymce/plugins/fullscreen/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ˆ¡7 Tr_Ç0ä»µ‹‰'),
('‡J¼&_#¹ñ3SÔq ­', 'wp-admin/images/spinner-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\q¼´9)hdxR©Éß]l'),
('‡V+@ÿ0ñüp¸Éhi', 'wp-includes/rest-api/class-wp-rest-response.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¢<lªtý6Gê''†Ü.Xí'),
('‡b~5Ãaùš I@)*ñ', 'wp-includes/class-wp-site.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'kÄ@úJD;aç÷²Åêã­'),
('‡u6Ø/LQ—nWßžH', 'wp-content/plugins/polylang/flags/ng.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Pa1á„îx.O¯\\ì‰©'),
('‡Ž\\:âÃÚˆÕê)g,\\', 'wp-includes/images/smilies/icon_twisted.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'b«Õ©.²8\Z|`ãQöLF'),
('‡ž!¿ÞEª©S7x–ƒÈæ', 'wp-content/wflogs/rules.php', 0, 'zïOKPŒ ªü;òë@', 'zïOKPŒ ªü;òë@'),
('‡¢¨3v´U€\Z3˜PÅ^O ', 'wp-admin/css/widgets-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ì[\0v÷ýu•Ç žûÝöÙ'),
('‡«L UÿÕÀ¹f¯àuâ<', 'wp-admin/images/icons32-vs.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',ÖP*çÓñ{>v¥±Uf'),
('‡ÂÙoÔw¬ÛåÐŽ×696I', 'wp-includes/random_compat/cast_to_int.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ú_vtZÂÖ;”fñ0Ó\\±'),
('‡Úy’ø/ëödzƒQg”µ', 'wp-content/plugins/wordfence/js/tourTip.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÆKÝï$g†MÃ{å¥w'),
('ˆ\0ë~%?Á›Q¿\ZiVz', 'wp-content/plugins/polylang/flags/mr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'lÈ¡º¾‘B\Z8ÝÅsî|´'),
('ˆ!è88ð¤^»¡eÊÚ', 'wp-content/plugins/duplicator/views/packages/main/new2.base.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' ÉKÓòa¢ZdHÎ|õ'),
('ˆ:=%ÆÌâ¾ù MÔÛµ', 'wp-includes/template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\rÂaê»@xi Üáažƒ«'),
('ˆIÝ{‹?»†rô]¯ 7', 'wp-admin/images/resize-rtl.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Û’cÉZYÔ6ÚÅ'),
('ˆmÁmÌ\\¾T÷_÷on3', 'wp-content/plugins/duplicator/classes/package.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ˆgÚåv˜''B˜÷Ç'),
('ˆp{w$KªBòè4>ƒ', 'wp-content/plugins/polylang/flags/pk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ';Ñ‰qìnœF&…Ú'),
('ˆu#]z*î|Ì?ÆrÂO', 'wp-content/plugins/polylang/include/olt-manager.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2õ¸7ÑR¯XïóUÅÓg'),
('‰7*ûø"{ìóƒ\nK<', 'wp-admin/includes/ms-deprecated.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Oaê@¸Ø…ÚóÓ¯’€A'),
('‰? 8”÷˜ÑÉZÏÐNÁ', 'wp-includes/ID3/module.tag.lyrics3.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Uùû3€º“Ý"9²2í'),
('‰j®ÃIîÔÓ<êŸŸ³†iU', 'wp-includes/category-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '˜&fÅ©UX0¿1Hl\0'),
('‰t¾g}OŠH¾£7ˆÂ’', 'wp-content/plugins/polylang/flags/wf.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '†Ì\Z£7ë¶Ët¢Ãgp§õ'),
('‰‘ÞQã£WsñA7d\n', 'wp-admin/css/site-icon-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '·¿çÙ®ûNh}bëpÖX¬'),
('‰ªeÄ\\«Ô1átÆ‹Ü<	„', 'wp-content/plugins/wordfence/lib/wfUpdateCheck.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '§\rŒÜì“^,lµ8!l'),
('‰¼B]nÈ„¨8Ú7g˜ó', 'wp-includes/images/smilies/icon_rolleyes.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¯È»Æ_ËÒ¸*>,\Z´\Z!j'),
('‰õÉÚÍ	&ï(ÿ¤!W÷', 'wp-content/plugins/duplicator/views/tools/cleanup.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '×{šq‰&í\0Ý:€Cíox'),
('Šw-\Z/L·«áÃÿ', 'wp-content/plugins/polylang/flags/mv.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$Éûˆ?02vÃ°iç'),
('Š\Z%ÀÅÜ¢åï4YÚ8', 'wp-content/plugins/polylang/flags/yt.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ôl|×²GL¼ö[ §U'),
('Š%ŸæûÆ,¨èôífS…', 'wp-content/plugins/polylang/flags/lc.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'À_,yøwK» “²\nâ'),
('Š4Bi\01´šËÙøÄ>/Á', 'wp-content/themes/twentyfourteen/content-aside.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '«‘ª‡ªyÇ*sÓ$œuR'),
('ŠMj÷AÕM™ñOÞ"If', 'wp-includes/SimplePie/Net/IPv6.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¥Fy!j½Ù€•”Ÿ¶´'),
('ŠÁ$¡ÖxM1>è²_8P\0', 'wp-includes/js/swfupload/swfupload.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ï:éE%Ïzú¦Ês~'),
('ŠÞpúq\nCÈ[»]™†L/', 'wp-content/plugins/polylang/flags/sd.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¹rùê3iÀ ÒXÑ¸`¦à'),
('Šñì6’dõ¢xÇDÉÑ', 'wp-includes/js/mediaelement/background.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'p<ežKõc \\c8¡r~\0l'),
('ŠøQs|âc·LØœVH³)', 'wp-admin/includes/class-walker-nav-menu-checklist.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¼«Õõ“´ðËÄn¿'),
('‹n97I.OúÒÞ¿ð°', 'wp-includes/js/heartbeat.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z0Òóô?.?¸g)ŽSÊÑ¡'),
('‹Æãqð·žŠøDùª`', 'wp-content/themes/twentyfifteen/js/skip-link-focus-fix.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '×t¿ââ>:{»šú’ôð¶'),
('‹º°Åh+¹«BÌÆòÐ', 'wp-includes/js/tw-sack.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¼D‡NˆkŠP\nÔ~h‰'),
('‹ºFè"÷èvhâ¡$LbŽ', 'wp-includes/js/imgareaselect/border-anim-v.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' Éz!™<ñ7êÙý¾ËÄ*¨'),
('‹óycâ0O°g)Ï­Mf¸', 'wp-admin/network/site-settings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ã=»ÎÿÇaÊ¡Ø’£'),
('Œ-c£­3ïyœLçÒí€Í', 'wp-content/plugins/duplicator/lang/wpduplicator-de_DE.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '²¥‚àÇ)wýˆ¹@–™\0/s'),
('Œ?š\n5ü´Hã?âàÁÀàè', 'wp-admin/css/customize-controls.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'šÄŠø^˜ðxÇ1š‰ '),
('ŒM$!©‚ð\\Íz´ôÚ', 'wp-content/plugins/wordfence/css/images/ui-icons_fbe569_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '˜ÐÂuÝ3À<½•É…Òj'),
('ŒON5…šdºêÝ¹×ú ÒÉ', 'wp-content/plugins/duplicator/assets/css/images/ui-bg_glass_95_fef1ec_1x400.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'û™°ÔÒð¸*o¦]îïc'),
('Œ”˜i?‡ ¯0²› IÓÅ', 'wp-content/plugins/polylang/languages/polylang-pl_PL.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' mœ° Ý­±¤­™µ'),
('Œ½´†juGCtOÆþØâ', 'wp-admin/css/colors/coffee/colors-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'zjÛo“ëä{²¤›¬þ$'),
('Œ­l«.H|S„³Ö{°†', 'wp-includes/js/jquery/ui/effect-transfer.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'å°Þ¨\0w}Ò‡ˆµnù'),
('Œ¼u“‘d*øoZ>âé', 'wp-content/themes/twentyfourteen/inc/widgets.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ì£×}O%™Ïà[ß~X†8'),
('•ÒanµöV=Ty Xä', 'wp-includes/SimplePie/Copyright.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '½¿h¹T©Õ	UÌ€·Ëj'),
('9„ô}ÜùëªŸù©!\Z\r´', 'wp-content/themes/twentysixteen/genericons/Genericons.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ')ld*ªZŒ”ôÒÚbÏ'),
('M…ã“2öÎ­Ý"Ò@á8', 'wp-content/themes/twentysixteen/search.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ø¯veF@ ·1aÂ'),
('} yTŽìZÝH„cDJ', 'wp-admin/js/custom-background.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‚Ð#Y>Wˆ ±ŸÉú­e '),
('€†k„`’^;‘DÔù,gü', 'wp-content/plugins/polylang/flags/na.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'å‚1¶ û8È6ª¹ '),
('¬{ß0l(Æ²u9,wSØu', 'wp-includes/js/media-audiovideo.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'òVP<ªkÂ;DÈ.?F¶²;'),
('é„žŽï‹T‹ì7©±¢', 'wp-content/plugins/polylang/flags/sv.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÆÈSvmû«-Ý"Y€Ó/\\'),
('Ž éA$Û¤fCNö™37', 'wp-includes/query.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'a(û†ÑzËÁ[âçDâP'),
('Ž(¢û×”ïWåh@=a', 'wp-includes/images/smilies/icon_mad.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '×¾¶ie\Zcþ{Ó0'),
('Ž+qOÄ\\›A·a½\Z×¸', 'wp-content/plugins/polylang/include/static-pages.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'uøk]a;4íÕëÐ‰Ï÷.'),
('ŽRLS’f,ý@•ˆL=ì.', 'wp-content/plugins/wordfence/lib/menu_activity.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ó^2q0\rì»AW2žs×Ê'),
('Ž„ƒùvü´ŠÏŒéŒY9Ó', 'wp-includes/ID3/getid3.lib.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Å-çdr"þK$âêu_™¸'),
('ŽŒáÕÉœ¼GŠÂ&', 'wp-content/plugins/duplicator/assets/css/images/ui-icons_222222_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ëæ¶*@¿œ¬cy¡Gu%'),
('ŽŸ…X’‚˜HöovË', 'wp-admin/css/common-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'âä@÷æ°Lzžïš½’'),
('Ž«Å\0¥=jå™‚¹š–', 'wp-content/plugins/polylang/flags/ba.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ë¶ÎFÆž»ØÒÈý‘h\r3'),
('Ž°Ö—]NR¼ïS{qv?…', 'wp-admin/css/wp-admin-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'tùÜõ«Œ’öfoõ,i˜sÈ'),
('Žå¡çÄ¬+¹¹¬Ù0', 'wp-content/themes/twentyfifteen/css/ie.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ølßgò¤öINŽ6Á·ü'),
('ŽêLe•$ThèYŸªÜŸÌ', 'wp-content/plugins/duplicator/views/packages/controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '<r=	\0%2^)ƒÛ%1Ó<'),
('Žö+—Í¿›#FtþEÇ7', 'wp-includes/js/mediaelement/froogaloop.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*‡BÀ¬Ûì#¾D§Ôé£É'),
('$»Àªj¶Xž])D:', 'wp-load.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'U³‰nÕ]î§ú@)"'),
('V˜VrÅŒjþƒ¢ÛTW', 'wp-content/plugins/polylang/flags/pg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'HöŠ®ïª;ŽçÎaæÁ'),
('j%M»ÉòÑp)Z‰Ä', 'wp-admin/images/generic.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'øŽ•ÿ''Š[#98!Ð'),
('{Ì•]ÝŠä3Ÿ£', 'wp-content/plugins/polylang/flags/nc.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '­‹÷éÛ_¤#µÚ<‘Cx'),
('·_@l@±øˆ¾ÿ\ršc¶·', 'wp-content/plugins/polylang/flags/tf.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '÷Ìº¥¢N³ÜLx`«€î'),
('Ü;(Xp`Ò™Öì‘pÝ·', 'wp-includes/js/plupload/handlers.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '<ë`a*6Y$ÒqpMÙ\\'),
('÷1þ{—aÊÿÑ,¹ ', 'wp-content/plugins/duplicator/assets/css/font-awesome.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'O½Ë`G¯“7?O‰V9È¿'),
('ût÷0Ãgñ»a†/Åýž', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce-small.woff', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~ˆð-Êò÷Œ´Üx''·	'),
('\n™qoãqZVyXœ¿9', 'wp-admin/includes/menu.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\åã!5F¨Fº+@	)'),
('eÑ\\]f#Ò†<¯K', 'wp-content/plugins/polylang/include/links-default.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+rOéŒ>KÞypP×RD'),
('§UÌ›	''CÔ»ñºÏÚ«\Z', 'wp-includes/images/admin-bar-sprite.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'SÏ¤—:€WÊÅÓþ^'),
('Á"êZ0\0Ø¿e…Ô¦pß', 'wp-admin/css/admin-menu.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Éúh%C÷\04b_º'),
('Ýò®–x8[!>ñX', 'wp-admin/includes/class-wp-users-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¡6ò„H„jÕêçÈ‹Øg'),
('éXñ/7áæ–ŽÈ!.', 'wp-content/plugins/polylang/install/install-base.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'á2ŸL]~¶bD æáž'),
('‘S–Æ÷ŠKK2iÉˆ', 'wp-includes/comment.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¬N7"K,¤¦ åB…¥¤'),
('‘yßg‹ízaU"ƒ	XKG', 'wp-includes/js/hoverIntent.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ê³Y‹CŠžc˜On×›'),
('‘ÈDBEÕÚÎ„°]H\nðAº', 'wp-content/plugins/polylang/flags/kurdistan.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'yÄ[HU5Ðæ¿¿:«ª'),
('’¶Š˜Ø®FÁŒ€Ì8šà', 'wp-content/plugins/polylang/admin/admin-filters-term.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ó­·›Ø\0ýÒ¦´é±o©J'),
('’/»É˜ü]ô^¤W\\ƒq', 'wp-includes/css/wp-embed-template.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '{Ÿ¼wºSÚÁ—4~ýÛq'),
('’`mˆ€‡H¼6ÒOÐÊ ', 'wp-content/plugins/polylang/flags/galicia.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ôºt-É¥f´Iæìk'),
('’s¥yF±%Bß\\ó"`aj', 'wp-content/plugins/polylang/flags/gh.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ú…rMåÿw•r»Ûíq'),
('’v{LöJlÅ€YzÕ`°(', 'wp-includes/js/thickbox/thickbox.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'm˜¦`ƒ¡›mò-ã/%†'),
('’•”‘è{ã9I¨ôîuè', 'wp-content/plugins/polylang/include/translated-object.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ñ}.ÁÈ÷,!$¼^Le'),
('’þ5*ÂW„HíPôœBZ', 'wp-content/plugins/polylang/uninstall.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Î°«‚“.¾Š›‰TÉ'),
('“XèV×˜O|8}š€‚', 'wp-includes/theme.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ëºš¤½32^{Á3®º\\À'),
('“8™xzCE©ÃÉ*âq', 'wp-content/plugins/polylang/settings/table-string.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '7Õ81Q á˜Ÿ+“…'),
('“@ƒmÉ)séü¿4©L', 'wp-content/plugins/polylang/js/term.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'éëÙçßJplo?Ã_ì^k’'),
('“AçA”Äv\\,_¾…E', 'wp-content/plugins/polylang/flags/ci.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'èÕ,!Qv»·E;„æúC'),
('“BÝH*mz—ÍN83üî', 'wp-admin/css/edit-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H0­k>:@²bU‘ U'),
('“V}»P”œ±m•/¯|I*Ù', 'wp-includes/js/customize-loader.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ì<$DB)œmöÏÈCåŠ'),
('“ˆ.™v8-rJÅ•íqQ', 'wp-includes/js/wp-auth-check.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '™P\rÕJÜvvž\ZyŠ—%×e'),
('“Šnàªî4±Û†Äxò€Î', 'wp-content/plugins/wordfence/lib/menu_twoFactor.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ðâ\\™«÷„âoLsû‰o'),
('“«7‹ÖE#¾wÅ§j¯²²', 'wp-admin/includes/image-edit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':ü&øÊÐ‡®×\ro[¤9'),
('“¶Q³c$2Û6.¾i…­', 'wp-content/plugins/wordfence/css/images/ui-bg_flat_75_ffffff_40x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ');7/EÊûwâ¯Açßg'),
('“Ü\0i[V³Qÿ\nà1Îa', 'wp-content/plugins/polylang/include/switcher.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¾â7ø¹ OœcWr7=fT'),
('“ð«vî­ùÃ|ß-ðÉ', 'wp-includes/js/tinymce/plugins/tabfocus/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ñ—Í“²‚’>5ÄCŽ¸–'),
('”!HUN&ï"‹¨ÓŒz÷ô', 'wp-admin/css/widgets.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '…òO•øÚ$,L¦Þá„'),
('”a±tUÚq¶^!ä0Æ£l', 'wp-includes/post-formats.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‚JâRñÖ“L*Q)>ÏÝ'),
('”k‹¥—zß£óÔì×boÓR', 'wp-admin/post-new.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ã÷…~Lmœøã0\räuË—'),
('”˜@†»{÷J¤á«5ä·´X', 'wp-includes/js/tinymce/skins/wordpress/images/playlist-audio.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'U,û:)¬ Ø‹"ÅQqY'),
('”±¦®LØâ6	ØÀè×³', 'wp-includes/ID3/module.audio.ac3.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'èE\0ûL;"OÒù§‹¦d'''),
('”ÉT²¢V¨íôª“\\˜—', 'wp-admin/import.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>_Èû‹sJÚ8žó*`S '),
('”Ö«=9«jVÜíocy2å', 'wp-content/plugins/duplicator/classes/server.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ']ó.BŠø‡o©­\Zk*B¥'),
('”Ú™žÒ;ÝAv''œ‘—', 'wp-content/plugins/polylang/flags/uz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '7ä½¶B)ôbL¬ì}B—!M'),
('”Üµ[Ò²m%‰6òS8:D', 'wp-includes/images/toggle-arrow.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÜßÎ‡—aýæ;ëdÎÏ*ò'),
('”ô¨–!Þ¬©Äß³ÂÁ«p', 'wp-includes/images/crystal/default.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Aò>)*/¾Ü!ì®-ò›º'),
('”ôçªÍÂª•0Žì”µI', 'wp-content/plugins/polylang/flags/is.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÿÔñ¬«ÂÌÈžHX~Š'),
('•?à>\0%lD[T‰“', 'wp-content/plugins/wordfence/css/images/ui-bg_flat_100_222_40x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¿^×F•"ÖI~ó\0‹GÍ²'),
('•h—‰§‘FuQeñª î', 'wp-includes/images/wlw/wp-comments.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'LÂ6]PÞÞÃì.s¨¡Ô'),
('•¹sK—‡¦ CÂ·ô\\G/', 'wp-content/themes/twentysixteen/template-parts/content-search.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}A9 ÐÎlüc\nOW'),
('•Ç€3å‹<¬²&³ªYÄ†', 'wp-includes/class-wp-roles.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}ßkOm¡ÑYS=È ™ôÚ'),
('•Ìf0ÙËÍ­¡Ú~·)', 'wp-includes/fonts/dashicons.woff', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\ZÔ_rY+Ê‚;ì'),
('•èMO,ÌãsæÒÔ\rçâ', 'wp-includes/class-wp-http-encoding.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'å3Œ*j(Ê€\n&úåó'),
('–6¶|;¾;8ÅQ¹4™k…ö', 'wp-admin/install.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¾w…ÈxktôQ©fóµ…¸'),
('–9µeÝEø€bÝ¾l´3¢', 'wp-includes/js/wp-lists.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¢UñÐ0`®^_ob8Ç·'),
('–Ž\Z5oÖÝ#R''/¤¬l', 'wp-includes/fonts/dashicons.eot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '0äÇÆ!_§ú¡Éy¶H'),
('–Á¼™E˜?ÆŒÐ®á¾ ', 'wp-includes/js/media-views.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'î©ˆ\0¸$¼ðˆ[ˆ  ©*á'),
('–âCg¿¸ñ‹}|ÇE÷ý', 'wp-admin/js/word-count.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '™P_ÉÒJ''ä“–AE–¤'),
('—	v¾O.„|ß¤Òµ‚', 'wp-includes/js/tinymce/license.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ']át"Ùž3§[œt›|');
INSERT INTO `wp_wfFileMods` (`filenameMD5`, `filename`, `knownFile`, `oldMD5`, `newMD5`) VALUES
('—S\n´ý(XÎ0]Ÿï~*Ã', 'wp-content/plugins/polylang/flags/kn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ð–rzvÀe%œc4¶\Z‹j'),
('—Z‡µ°k€K™Cr\\²', 'wp-content/plugins/polylang/flags/ca.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '†pšEØÑÄÙÒTÆß)¸'),
('—ñb¦ü’Áÿ£º|e~ë', 'wp-admin/css/customize-widgets.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '—¯¹1‹ªëï"@Ÿ	'),
('˜\0hî”Kf•\0ðø', 'wp-content/plugins/wordfence/images/forward_enabled.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'U\0/3e4e™Ï×ƒÞö'),
('˜›¯ÐÂŽÙêHË06²', 'wp-admin/images/browser.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Á²ùÂžµK\\„b•$þF'),
('˜‹µï†8(\Z¹jèZ]}', 'wp-includes/js/jquery/ui/effect-pulsate.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ó&`…Ñ×ôŽáfñé'),
('˜X¸ÔÍìg5ûôŸ¼(=c', 'wp-includes/js/tinymce/skins/lightgray/img/trans.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¿ž7I Þ1F¦Guôj^'),
('˜pt_ Y‡ÁŒÊ7LãKt', 'wp-admin/css/deprecated-media-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'öW	ÔG‰Ðu	\ZL'),
('˜£ýT¹D‰ÀFÒK1Ç', 'wp-admin/css/media.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'mËE%\0ä\\\n×Ô7ÀØ'),
('˜Ä/GÎžÓ¶[­ÇœîÙC', 'wp-admin/js/gallery.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'xÏ©e¿9eÁŠúmåµ«¶'),
('˜ÍÉ[²/9} `:wÙP', 'license.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¢³e¡1£ª¥x¼Î®š'),
('™\0£ùµè Ò.}¥fwA', 'wp-includes/date.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '§O[½þáZß\n:Â ÍPA˜'),
('™zþi˜ÀøûÏg9&× ½', 'wp-content/plugins/polylang/flags/gn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¬ºœŒ)ÛŠ¨¶¢e¬"'),
('™[‚Ÿ®QH"pS1Èªëc', 'wp-admin/images/arrows-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '— Qð†}Îñydb#6„'),
('™˜[ixTºqÔÃ~Wv¡e', 'wp-admin/network/plugin-editor.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '?µÍš¹GM„XZ\ri=Ì'),
('™žF~…‘Ÿyµc7v-', 'wp-includes/js/customize-preview-nav-menus.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'I\ZwCü¢0è+„˜*õ”'),
('™áEN0Ï¡•Ü6', 'wp-content/plugins/wordfence/js/jquery.dataTables.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'aGÌîzïÀÆëØ×³ù'),
('š’6žÀKFJZÛ;í\nÆ', 'wp-content/languages/fr_FR.po', 0, '#K,Ïaà¶N—ÚÉ¼ñÜìü', '#K,Ïaà¶N—ÚÉ¼ñÜìü'),
('š\Z-®”x7Ãù(AÄ4ù»ç', 'wp-includes/js/swfupload/license.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ëà[°`È^ˆ-Ào÷QWz'),
('š1W;cŸ¶š¸°NñÀ"ïu', 'wp-includes/pomo/streams.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¾¬s¡|Ä-<iñ–p€'),
('šJž‹B¾GT²;,l£ÀT', 'wp-includes/images/smilies/icon_exclaim.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\ãqEŒ\Z!HY__=¯{_È'),
('šVŸ^æ‚3±çm6‡._P', 'wp-includes/customize/class-wp-customize-background-image-setting.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ')Ù@‡t”þj23´ãW'),
('šž”óß[‰ôD?_…[Ÿ', 'wp-includes/random_compat/random_bytes_libsodium.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Œˆ¤øfÔúÛ}÷«>'),
('š¥7¸M3Âšã$ËôŒ', 'wp-includes/images/smilies/icon_question.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ò''u²ã&EqA÷ˆÃmN'),
('šª™‘2@ïkä¬w>K”2', 'wp-includes/feed-atom.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\°ì€FÏx9;'),
('šªô¢ìH\0Û™À®h™CÁú', 'wp-admin/css/colors/ectoplasm/colors.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Jíû:Ò8¢H´bŒ‚ì¶'),
('š°wtòH©ëá-s“\0Ân', 'wp-includes/js/wplink.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '§æ{~\\2)YÜf³_Ú['),
('šÄþÚ=Ö¬H–@-i˜ï', 'wp-includes/css/admin-bar-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3Ä ßHºª‡¤ú–>÷õ'),
('šÞ,’(+„ØQá9©r–', 'wp-content/plugins/duplicator/views/tools/diagnostics.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Eö´aŠGª«	¨™á!$È6'),
('šêŠh‹L¼²JHÿX#0', 'wp-content/plugins/wordfence/lib/wfUnlockMsg.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'h\r>Á[»æ?Rgû©íTe'),
('šÿ™^''½qˆÂî0…ê', 'wp-links-opml.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÄcÉÇþvžIlÚmf—'),
('›%n©ÍTß’	^ÇgXÎ°', 'wp-admin/js/inline-edit-post.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ãuáGÎ9ï™ïpõ˜å'),
('›''-j''kI³þ4TÊ—', 'wp-content/plugins/polylang/languages/polylang-vec.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'yP"W^ì›FÖa™q$'),
('›†h2ÜºaÁöuY‹v6¥S', 'wp-content/plugins/polylang/frontend/frontend.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‘ì`dß‰+T7!’4áêO'),
('›šn&¢âðn¼!å´¬î', 'wp-admin/css/site-icon.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¶XÈÖ½OÉÅµÕ£öxß'),
('œ\ZÛŒ«˜ø|…QPÈ$,Žn', 'wp-content/themes/twentysixteen/languages/twentysixteen.pot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Æ†ÇÛGÓ,î?œ÷®Ô'),
('œ5ô‡¬ƒÜ\r¿ËkÔÄ', 'wp-admin/js/color-picker.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '…µÂ§Ñ:_W-ZNÖj'),
('œ8ƒ©Ž…¦¬ãP5aÄ¨	', 'wp-includes/images/smilies/icon_wink.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ð\ZO‡ZÀüè¦g9Ø4º'),
('œd÷—[þ¨ÿ8Æù4 ky', 'wp-content/plugins/wordfence/images/wordfenceFalconSmall.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>œÊhjµK¸wó~º…'),
('œl1]HG¼Ü!ÜÃ+N¯Î£', 'wp-content/plugins/polylang/flags/to.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Î†Þ-wxŠf™_Ksß'),
('œl£d¸ÕŸˆL«1u0', 'wp-content/themes/twentyfifteen/css/ie7.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'dhù‚=ƒ[KM7ÕÅ,ˆ¬'),
('œ|yPVÎô¥(ëÍœãñ', 'wp-content/plugins/polylang/languages/polylang-tr_TR.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'û¼i^=Ô^\Zq»ñ\0µ£'),
('œ…‰Šþy85õÜÃ¦bÖ', 'wp-admin/css/colors/sunrise/colors.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Pž_˜Õ7jüA5ý6y'),
('œÕ‹€PQ‹E|E}7+', 'wp-admin/includes/class-wp-filesystem-ftpsockets.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Â£†,ÎÜÈWæ?ÎÂÛ¯\n'),
('œåU‰±ó$ì\\*Ý1^œSý', 'wp-includes/js/jquery/ui/effect-clip.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ç“”Wè«#•GZas'),
('œþP\ZÅ/é¢¯l%¡', 'wp-includes/js/jquery/jquery.hotkeys.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'â”ƒ¨Ê& Ý‹\rFÆ°¦é'),
('\0É ‰Ÿk~‚£U5T', 'wp-includes/widgets/class-wp-widget-text.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¬M„z«ØÌd[$v(?w'),
('\n%f[!aE«rÒtg€i', 'wp-includes/images/media/video.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'àéñuêh›ÝÛq ÷'),
('#õô>ä«í‘Ò†ÃKl', 'wp-content/plugins/wordfence/lib/pageTitle.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'åHh’I¯æ!SÙ??k'),
('&‡Sì§¿o¸$æ÷0øn', 'wp-includes/author-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'õáP~›]†/ãÀ˜ó0¦'),
('G¨|$pÖ +(ª', 'wp-admin/js/tags-box.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '˜\râaÛRLáw¶Þ‘¬¡d'),
('Q ²ÁÌÔï2Š7uí L', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'íèöðFh%øCãy'),
('’ÑºŸ"ÌP5ìÓ^U\Zi', 'wp-admin/index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'çhñÖáPì<R%,F²'),
('§mÌœýz4èLä¯úK', 'wp-admin/images/xit.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'å)£Xû¹`1¬ÜðH×Ê'),
('´ÇAóG,‡Ã<Œ¸¸', 'wp-includes/js/jquery/ui/effect-fade.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ŸoÖOO_õ‰;{r¢5$m'),
('àå<§ï±p\Zo@Sþq¨á', 'wp-admin/includes/class-wp-press-this.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '·®m/£rj¶&''|´r±‹'),
('åpX”I}·ÝÝ¾y«', 'wp-content/themes/twentyfourteen/footer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'q·ÀJå¿ænj9šTñÈ'),
('ž Án€$›‡qˆï^qf´§', 'wp-includes/images/smilies/icon_lol.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÔðMÆZ8|©¸Àò,¨ÀìŒ'),
('ž*Tñu\r¢íÓÖ ~ªm', 'wp-admin/css/colors/ocean/colors.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ëfQ‚+¦º}0ü|zµ'),
('žE-jàÊ1jì£Ê\rÏE“', 'wp-includes/registration-functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '_?<·ÆÑ&TxHÝX“CL'),
('ž…¶»½î¢è†<ïxÍBŒ', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/waf.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'p¾n]ç·9Ò@ŒÕ!ê7'),
('žÒ"Œ¸på"-Cšý¥•w', 'wp-admin/js/wp-fullscreen-stub.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'p\n”é“L{Aúg±ÜJ5'),
('žîp?E^¢@·''ŒãPEÅ', 'wp-admin/edit-comments.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'göÈÚKoô¿Û´\0Xx'),
('ŸO‚\\²okc)/J~ \Z', 'wp-content/plugins/duplicator/classes/ui.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'd¡ôôSšÌ9/ê!¦&À'),
('Ÿ<„ (ÈêÀ‰*A]ŽOí ', 'wp-admin/css/colors/ocean/colors-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ø´“`Û{l)U5ÞW]'),
('Ÿbv¾ÉE’ì´HÕÇãÎ„', 'wp-includes/js/wp-lists.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '™„š Á‚»ÆíŒj£ü$Œ'),
('ŸhSÑÀ:°öÓ`', 'wp-includes/customize/class-wp-customize-nav-menu-auto-add-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '–Œ[É]zÆ@ÁQ)Í`ãk'),
('ŸÎ–&¿¢NÂ,õ¥ïŒ6P', 'wp-admin/images/icons32-vs-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¡*04ÿG4F—	&Zƒi}"'),
('Ÿôx[Çe„ò¶¾>M', 'wp-admin/includes/edit-tag-messages.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ø]"d%æô¯Ñ\0c4¢j['),
(' qò¬h¢ö¾Bcø92’î', 'wp-admin/network/site-themes.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¹óªâÁææÐ×´k4ÒC'),
(' ¥d]\0FÖmÅ²p²D', 'wp-includes/js/tinymce/plugins/media/moxieplayer.swf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'NYÓNû- ¹ 3Yj…ä±ï'),
(' ¸‹‡`%ú’{ÍüÒ+›ó', 'wp-content/plugins/wordfence/images/icons/error128.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'É:Þ%7÷!Á´.Ñ'),
(' ¾Žv†’\\Qœ¥À-¼Ê', 'wp-includes/js/tinymce/plugins/hr/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\#%ZÒÑ³÷,3¶Iñ8š'),
(' àÑ–ÝqÝäSGKy(þ', 'wp-includes/kses.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¿º6´x¦£®]U\rÆ¦m'),
('¡9ÔlÂ×Ÿ? ríèqÀ', 'wp-includes/class-wp-user-query.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '»©¸ÍÚ óEÿ:Ì­\\þU'),
('¡ÉX¢T›R!®•£üÇ ', 'wp-content/plugins/polylang/flags/lv.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'oúäÌem=àR¥Ž-×'),
('¡,1x,Ûçœ¿$\nAk]', 'wp-content/plugins/polylang/flags/lu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ';à³¦	nwÙ×¹—Ôdæ'),
('¡[öHn[PÖ.~½ðßFU|', 'wp-includes/nav-menu.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-¿òŠÄNi™/“"úßŒÉé'),
('¡»«Z€\Zxcy•dó''', 'wp-admin/js/language-chooser.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'h"8Jq	t­ÑäF…'),
('¡²¨æ€Ë:xÙý=á}ˆ', 'wp-includes/js/jquery/ui/mouse.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ä¡8'']¨í!¿ŽIÙ²¸„'),
('¡Êëñ_¢ìV¾‚Ù†Àb', 'wp-content/themes/twentysixteen/css/ie7.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '°Åÿ\Z^½Õ†&ˆëtImÝ'),
('¡ØHéaŒ+õ§­­Ì°I±', 'wp-content/plugins/wordfence/waf/bootstrap.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Aï½`0!¯‡«°mØ×¦³'),
('¡êyî&a’A 7Â]Dm', 'wp-content/plugins/wordfence/images/icons/ajaxRed16.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '´Ïà%º»©B\ng 2…‰;'),
('¢¥ƒ@Vª¬[o_\0Ç{', 'wp-content/plugins/polylang/flags/pm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ºA¸ÃIPø€€Â¨è'),
('¢ƒ|La·ÇÖË\Z†g<$ð', 'wp-content/plugins/polylang/admin/admin-links.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*twøG*úp:ðÆ;4NÈ'),
('¢ a"KwTÕbc1S', 'wp-admin/css/revisions.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Éy{=‚~	ÚSÀq1‡'),
('¢!©œ“HàM1¿‚<í', 'wp-content/plugins/duplicator/assets/css/images/ui-icons_cd0a0a_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>E*,f2”˜ç\0\Z×|'),
('¢#që[\nhK+êµ8íémx', 'wp-content/themes/twentysixteen/genericons/README.md', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Äí6 ×ÙñV\0×ëÕè'),
('¢-‰[ipùœ\\^˜ØóÁ]', 'wp-includes/widgets/class-wp-widget-tag-cloud.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '5og®_ÃT-nÄe„'),
('¢0áÁ&¥Y©îÕ ÕÁ¡', 'wp-content/plugins/wordfence/vendor/composer/LICENSE', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'JJË­9FN=öÆÜO'),
('¢4gŒeÊØé>©óÓß', 'wp-admin/images/list-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'hÕ»ISÂ2ýÓi‚gš'),
('¢fkj’ÂN‰Uei4=%Ã', 'wp-admin/js/tags.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/I@Ô!{¿hLÕR\ZË'),
('¢hj¬ïÌŸØ‚p‚uè', 'wp-content/plugins/duplicator/views/settings/controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'òK,‰ðór¸”[_'),
('¢y%…ËÆÇº~¹ne"V', 'wp-admin/css/list-tables-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ç«*Bõ×f.¢Ûy'),
('¢Ó?K½öŽ%Q6$Öû3', 'wp-content/themes/twentysixteen/archive.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ol½¹9¤îüi­~ee\n\0'),
('¢Öm_iâFklþþ‹Ÿ{Q', 'wp-content/plugins/polylang/flags/bt.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/è|h°;GÍ¶7Õ'),
('¢ÝÁóòµ ,{HöìÄ¬q', 'wp-content/plugins/wordfence/js/admin.liveTraffic.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'AýŠOZòý±»¿¢4ºU'),
('£''(K3¼Sð{8!€B', 'wp-content/plugins/polylang/flags/pr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '@·û\ZL»m@ðß\\oÕš'),
('£1ào%¨ÀqÅAµ€', 'wp-admin/js/inline-edit-post.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '†Pü;¨ìo¨œ/²Ù'),
('£zR²u½˜÷ŸïÁ	;', 'wp-content/plugins/wordfence/images/wordfenceFalcon.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'd''m_0òxZb-ÕîÄ%'),
('£ÜF¦²™˜{ì´ýA', 'wp-content/plugins/wordfence/lib/sysinfo.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ZiïT´T2kUú}åŠÙ¤'),
('£áñå€½·¶ŠÚŠtÕ%œ', 'wp-content/themes/twentyfourteen/genericons/font/genericons-regular-webfont.woff', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ûz³gäÃ…‘¾m~—˜v'),
('£í‘Eââí•ÀQ?èÞ	(Ä', 'wp-includes/class-oembed.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ù½o†ò-î<Ã%E“òsã'),
('¤.ÝB¾ÀxK‘YŒ', 'wp-includes/ms-default-filters.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Åfµr.óLÛç\\°è’€Ài'),
('¤Ì6†èó~eª{Ð".w', 'wp-includes/widgets/class-wp-widget-recent-comments.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‘.ÓS\Z²Žã¥‘fÓ}¦'),
('¤*O-¡LÏ„ªÂâ\r[Ûu', 'wp-admin/css/about-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '”ZÛ\n	”¸‹8¡C[¡V²'),
('¤??n¿ëæåýå_2g·j', 'wp-includes/js/wp-util.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'pQ™Ú)<§ÏÆéŽ µ''tË'),
('¤•±ráì˜SXiÓñ', 'wp-content/themes/twentyfourteen/inc/customizer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '€Î»õfrZì*žWZ‡jñ'),
('¤¿î"\\ÄéD¦-\\gc£', 'wp-content/themes/twentyfifteen/sidebar.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ì¦À*³pz.9ô{ˆ¥áS'),
('¤üY¤\0)\r/jñ©)ôAr', 'wp-includes/customize/class-wp-customize-filter-setting.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÈÂ`Vvý>A³¢ â$±÷'),
('¥R;lzOé8m<3”Nie', 'wp-admin/user/freedoms.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¦Ë¹â©ÓÞ³H™t’íi.'),
('¥afh=F¯ÕÞTÒ:þ“6¶', 'wp-admin/includes/class-ftp-sockets.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ê sÌÒõÌšº¥;®y*'),
('¥Ùëñ§;~Ó·R·>ž£', 'wp-includes/class.wp-scripts.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÉÚe—{ñÖ¯qÈ6³0e'),
('¥ünvp¬e„íÆÐîÊ}è', 'wp-admin/js/customize-controls.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '8ÜÓýoJžEën®zé/'),
('¥ÒÃ‡¬~«OžhÇés=', 'wp-content/plugins/polylang/flags/gl.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ';kónïàqEÙÝ‰¼ž}'),
('¥ÜK	óZV‡-ÏÙU-v', 'wp-content/plugins/polylang/languages/polylang-ar.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\áØ CD!¹ttžè'),
('¦(¼|nä•Á´sARFä+', 'wp-includes/js/crop/marqueeHoriz.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ŒÌ®œºý¸;æäÔLo\n'),
('¦’¯üž:[&bú[®hY©¸', 'wp-includes/images/smilies/icon_razz.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ËåË­â´ì=…¾JÉ@šÝ'),
('¦½ðH•ÉêR©øË>½¤¡¥', 'wp-content/plugins/polylang/include/translated-post.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'à¶„ßªÿõ]Ï¢XÍ/ã•‘'),
('¦Õ¹3Ñõ”ë/®È,~wu', 'wp-content/plugins/polylang/flags/sg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ŠöQYÁ7¦§í=ÉÂîÑ‹'),
('¦ü­ó8`9ù×?Bb“Ð‘', 'wp-includes/js/jquery/ui/effect-puff.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'þImlc¼G…@„È³ü Ö'),
('§(¾—šùÜº”‘Y,ò2<', 'wp-content/plugins/polylang/flags/cl.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ü{;âxúëEMµ[y¹ã'),
('§cã†ÌŽ´ˆ$\n''@›\ròè', 'wp-admin/setup-config.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'FÐKï)Ç4eÜñ°`d'),
('§œŸJ1€«MßF°†<þ', 'wp-admin/js/tags-box.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¤F*àÏ™GÛt§-ý'),
('§«;Sœ¡&ÇÌpúCíÏÄj', 'wp-content/plugins/duplicator/lang/wpduplicator-fa_IR.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '•0.9óÑ1ÂGÒ”~s'),
('§ÇÜ`Üäƒ½¿eWîY¼¿', 'wp-content/themes/twentyfifteen/content-none.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '€éî›–Vä½X+Õ1™'),
('§Ó’?ÚŸ£E¿Î¶$PF', 'wp-includes/pomo/translations.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Tø~tŽ:{ü»>È4V†Í'),
('§èáú°6‘bg·>_ª', 'wp-includes/images/wlw/wp-watermark.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ';š‡uMmÜ­D|‰wŽ“ÅD'),
('§ð`[Áî*ŽÉë‡©ýèØõ', 'wp-content/plugins/polylang/flags/vn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'c6±¦õÚ·¾lì„üÂÍS'),
('¨°ÌœÀ''K…zŽfŒå', 'wp-includes/customize/class-wp-customize-header-image-setting.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '{v¿VaÉÚå²51û1t¡'),
('¨‘¢v9…bÔ$‘L', 'wp-includes/random_compat/error_polyfill.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÂYTå~\Zã''"úl„\nUeŒ'),
('¨ «(T5!ñá€hÂu', 'wp-admin/css/press-this-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'µêû''&4 ÜXqT˜~ïÙÜ'),
('¨#×?€™ïGc	Â¯l1e', 'wp-includes/class-wp-theme.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '×â\r&p“:hÙ?—ÇÛ£Çœ'),
('¨2[„ªsÃ$ªÎtÕX[', 'wp-content/themes/twentyfifteen/content-link.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '³™àF''iÕVú1¼ó'),
('¨HŠ£õÁœPwàð%8–À', 'wp-includes/images/smilies/icon_sad.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z''=³ÃOjû?íuA|¥ç¶'),
('¨Q49ãóLzÓJµ', 'wp-content/plugins/wordfence/lib/wfUtils.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'FÜ²>LiÑ”°%sæŠ<'),
('¨[ÂnÅG{Ãù''¾¢q:›', 'wp-includes/ms-deprecated.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.ËD,=ó»‘y•Â±'),
('¨¬ÌÈ€ç~_qÚI¶ÄS¡', 'wp-admin/js/password-strength-meter.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1…ò|¤=·šmàUÉ×'),
('¨¯ß\\àD ü>üF,µ‡ç', 'wp-admin/menu.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '­KUl¼jâdÉsxt'''),
('¨ì¤ã\Z‹ NwVlŸð/Ì¸', 'wp-content/themes/twentyfourteen/index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^—«×*1ºx÷¢Ó¶#'),
('©–ä#‘ÖýŸçGªÛ', 'wp-content/plugins/duplicator/assets/css/images/ui-bg_glass_75_dadada_1x400.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Á,eÚÓëúdÈ£•š$i'),
('©+€òà„ ¯É†IW…{', 'wp-content/plugins/duplicator/views/actions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '•2µ€!\Z®x¾åA3Žª¼'),
('©V;Å6\\áÌ†=Æ¾', 'wp-content/themes/twentysixteen/css/ie.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ä¾þÀ¦áƒ×ôÁˆj'),
('©¢=CÑ Ôæ*TXô¹´4', 'wp-admin/css/colors/_variables.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':µ	k\Z	rØL…²„Z'),
('©ÊÚ·tìg—Z·gEò', 'wp-includes/class-wp-http-response.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'v±¿ÐÞp{Ê•Ó‘,%ýSœ'),
('©Ü ÍçIt13&', 'wp-admin/js/nav-menu.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' \ZZJŠŒV÷“ÄäÁ'),
('©òÚPÌþòx®ªŸ¢_', 'wp-content/plugins/duplicator/assets/css/images/ui-bg_glass_65_ffffff_1x400.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'å¨ó.(ý\\''¿í3È¨¹µ'),
('ª;?2èáˆSýã§\0ûšp', 'wp-admin/customize.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'P1ŽSÁb¿;™¡ÒÚ#ÈY'),
('ªMlØ/AÉóÏqÛ·Þ-', 'wp-content/themes/twentysixteen/js/customize-preview.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2A¨Àóp$Õ£±JTÐ'),
('ªXàá@ÁÔ%½1C„Ái', 'wp-content/plugins/wordfence/images/lightbox-controls.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'm]¼a’¬•\\$É'),
('ª]Ú.Ç1\rPXL©', 'wp-admin/includes/update.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'íJ$»ýÄÎ¢Ó¦W»OîáZ'),
('ªªõÙ†˜|† ²½', 'wp-includes/js/masonry.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'iq}Eigo@—ÜìTñ¼'),
('ªËÙv{C«ÀºÎÒ§€Ž4I', 'wp-content/plugins/wordfence/lib/wfViewResult.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	qNÁìºK80ÁO«·'),
('ªÚpº$^†ôµdZ', 'wp-admin/network/plugin-install.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'k½€Oy_¥©4õ)¥\Z˜†¿'),
('ªæ[KºîæbŽÄÚ28·', 'wp-includes/pomo/po.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\nØ;ü#VáV›—|oÆ'),
('«ÐèX’°ØJ üp', 'wp-content/plugins/wordfence/lib/wfBrowscapCache.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¤ÆÁÞ)˜)…šKÏ»íÔ'),
('«nÖ¢¡ù\r’V5‘‹,Ù', 'wp-includes/widgets/class-wp-widget-meta.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¹ÒN„d¨<Ž¦}\Zz¹'),
('«o¢ù ´l>¼âx~I° Â', 'wp-admin/network/about.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'éã=ùÚ©SVæÚVˆŸì'),
('«ƒ€¢ÂU¡<ê5:)r‚', 'wp-content/plugins/duplicator/lang/wpduplicator-fr_FR.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'çí§³Bï¦›Kt#¥Õ¿'),
('«ˆ°0jˆlµSÓýKò', 'wp-includes/post.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ú,ÖÉ:ÝH¾©«˜Ê”›RU'),
('«˜µÕXi×>{•«eìMò', 'wp-content/plugins/polylang/flags/tl.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	>vÚgYd|3§^ñº '),
('«Â«¬ä—-j=´u¶N\\q''', 'wp-admin/css/farbtastic.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ùã8)¸úí}{¾øCûh2U'),
('«ÉÃ¼Ú<3®Z¬‚Q¬I\n', 'wp-content/plugins/polylang/js/media.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '€ù…×æƒêH Ò|äN½'),
('«ô÷á—Ø3…-ƒ«4°', 'wp-admin/css/colors/midnight/colors-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'k½âìfÑT¸ÎgàQ“È'),
('¬ˆ±ø''ÄþpGøœ°', 'wp-content/plugins/polylang/flags/ag.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9\nôÃmF+¿&''¡)F‚Z'),
('¬"Ú•K[@‰GÇûáá9‘', 'wp-admin/includes/class-wp-theme-install-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-‹£O¥ò,rT}7ô¬‰'),
('¬3!9ä=è6Ý¡', 'wp-admin/images/resize-rtl-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '÷Éžç@þ’T0:ªÜ}'),
('¬{¶ÓçuêŽûG\0_Ø+', 'wp-content/plugins/polylang/flags/ao.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'A¨ª÷m$ØÙ§wh'),
('¬ºÆEMaL)‡ö˜#19', 'wp-content/plugins/polylang/flags/gq.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'pöK+8¸¢RçDj>3'),
('¬Ó}‹*öxxäô\r‡*', 'wp-content/languages/themes/twentyfifteen-fr_FR.mo', 0, '®JëCa¦v†qýÝ6g.¹¥', '®JëCa¦v†qýÝ6g.¹¥'),
('­z ËŽ:BÌ~…øÑã¥', 'wp-content/plugins/duplicator/installer/build/classes/class.logging.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ž÷ƒ×¯-º«¡„V‹'),
('­)["J¹H”î|çjkŠû$', 'wp-admin/js/customize-widgets.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'íSÕºæ©¶ÍZMC¿x©'),
('­,¤Š¬ß¹1U¡q\ZVT9…', 'wp-content/plugins/duplicator/views/packages/main/new3.base.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'û£‚Û#5:¯èW''N'),
('­JTV0D·îoTAï¼»@¡', 'wp-admin/options-discussion.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'U€hVàñ¡ŠQiöÉ$ƒ'),
('­†¡ö[&°Éà}ïƒVüE', 'wp-content/plugins/duplicator/views/packages/main/packages.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3nÑd÷4è\r­C%­ný(F'),
('­š•SÇhÞëáSÐ%Tzø', 'wp-includes/js/mediaelement/wp-mediaelement.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\0øë7Ô‡:ÿ3U›á«:] '),
('­ÌÝ"Ü’³÷ÓÃnzD', 'wp-includes/SimplePie/Caption.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '½º¼ÜÊBjM­ög[ÄÄëé'),
('­âZ\nuÕoK° ¯¶T;e', 'wp-admin/images/list.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>–½*âÀÓ³ÑSñÃ'),
('­ø¦KV*<Ô¡ñ&)e¬÷', 'wp-content/plugins/polylang/flags/om.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '{\0+ÈÄ«\Z…ÂÈì,DBÒ'),
('®ÌäUy/ÿ*%þåý;', 'wp-admin/includes/update-core.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'â6ˆ†*yÏ:ÀUàHyI'),
('®\rEöÈUÏœøÍ„ÞÙ', 'wp-includes/images/wpspin-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}ï3ªÙYÍ(IÝò¤m'),
('®xˆWº‰2eöuvÔL', 'wp-includes/customize/class-wp-customize-background-image-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'PK„†a¥ìÔ''sÄù1È©'),
('®€ú‚¶˜Ðlûúü‘Þ­', 'wp-content/themes/twentysixteen/sidebar-content-bottom.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+$ñVD—<ªž:tø*A2'),
('®ëþ§ªêâsp›Ðäeü', 'wp-admin/includes/class-wp-ms-sites-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '([fŠ³°ÿÂ&r_ö®Ü#P'),
('¯-1ð8ü;§Tö/Xâ©]', 'wp-admin/ms-sites.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ']b$ëôÝÐñqœžô¸h'),
('¯jÐ<M½Dd±—þî4m³', 'wp-admin/includes/ms-admin-filters.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Q7À9Íá‡l;€'),
('¯Î¡~×ß“þ:ýèàÂøeo', 'wp-content/plugins/wordfence/images/icons/tick128.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'åÄŸ‹øc·h4"èÝ«'),
('¯ð‹(5ìaH­yo,Xþ', 'wp-includes/js/jquery/ui/tabs.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ErÆðÚæl•nùwGV€’'),
('°$åÍ“™bHn®€,\0-', 'wp-includes/images/smilies/icon_confused.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ï¤sYFPZ6¹ã,š‘'),
('°þü+¢ƒy1F¥›´T3', 'wp-content/plugins/polylang/js/post.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'OšîôòÌ¦&©ØmÉ&Qb'),
('±\0» MÄ\\Û5Ì¿…éc\0', 'wp-content/themes/twentyfourteen/js/featured-content-admin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ê\0êìÿPÙwp"£LK6ÛØ'),
('±,:\ZÖäž’š¿tB$ô\Z', 'wp-content/plugins/polylang/languages/polylang-lt_LT.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ŸÅ$ÉƒŒ[ù¥~B›`UG'),
('±Lƒ’…yEõ{¦øf“', 'wp-includes/css/dashicons.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ï<&þ % ò!8ÿã\rS'),
('±kÊULŸíÇ¡¹$Á˜ú', 'wp-admin/ms-users.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H#Èf{#Êƒ³ù	6Gå¢'),
('±‹=·-XÔn{]·pf', 'wp-includes/js/wp-embed-template.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'íT¼tèå»‹r\r3]Ü'),
('±šÄfSu¹BìÍ¥?^yO', 'wp-admin/css/themes.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÕÝÙâõ#ümš )<‹Ò9'),
('±§©Ù{^Ž†WÈíèóC±', 'wp-admin/css/colors/ocean/colors-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'NEÁŒûÐÑÆ»nl¼½r'),
('±ú³•Ë„˜vïØ+¹nGÓ', 'wp-content/plugins/wordfence/js/jquery.tools.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ñ:-·áEÕ x¡$à¸B'),
('²ü&B°5VëAUU,“ì', 'wp-includes/class-wp-http-cookie.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '£%Ûp(¸=<«\r`+'),
('²_fôç²;wÐaËÙÚ±', 'wp-includes/js/tinymce/skins/wordpress/images/gallery.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¡_±ŸŒPwù´PUÛ4'),
('²h{n¼V"ó¹á0—‰Ï', 'wp-content/plugins/wordfence/css/jquery-ui.structure.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Þí\\@¯1D«é?ÏÒ™'),
('²uæØ<eçx›®@ÖˆÂˆ>', 'wp-includes/js/underscore.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'j:CJ`ÌtCAé}é{Æ'),
('²‹q?%Íõrpþø0÷7ïq', 'wp-admin/css/colors/coffee/colors-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'f:ÉÆ3¼Rv»«''$'),
('²ŸèSƒWÑM#a·!ö%4’', 'wp-content/themes/twentysixteen/css/ie8.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '"‡v?ŠPþ.üT<WÐ'),
('²ýB¹6[s–M÷', 'wp-content/plugins/wordfence/lib/wfCountryMap.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ']hF“3ÇÐ¬kÝ;´u'),
('²ÿþ­xÄÐ™Ò)DC‡Ì<', 'wp-includes/js/customize-models.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':y›t}ÉŸDÄc\n2à@'),
('³~£š¹­U÷"Ð&Ð', 'wp-includes/images/wpicons-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ãçn×VÄo©$š”Of~7'),
('³ÌW2ÝØDñG‡7‡V', 'wp-admin/css/common-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ôú÷Ä}SdtÏ¾%ˆ’º'),
('³èMŸé~\nÏT|·', 'wp-includes/js/mediaelement/wp-mediaelement.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'tÊOg‘¯ER{äµ1•'),
('³6cIû	@ÛžoŽîóä', 'wp-content/plugins/wordfence/lib/menu_scan.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'nhuœÛõÎ6×ÓQeüKß'),
('³Vb(ktˆW"í6(;Æ´ ', 'wp-admin/includes/class-wp-media-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'úziûwìuùiEs¤ÁŒ'),
('³b|LvãÙ_«7ŽðE‡', 'wp-content/themes/twentyfourteen/content.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ûšïCª–ÅKZ¡—Ë³?À'),
('³tfF	Ör{™Ü‡ _I²x', 'wp-includes/SimplePie/Parser.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R».äbçä§~ýÇëõ+Ì'),
('³Õð9ä8Í¤«ëõFú$w', 'wp-content/plugins/duplicator/assets/css/images/ui-bg_glass_55_fbf9ee_1x400.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'øôUŽ’ÿ,ÖgS9ì'),
('´\nÙëgHSXd$ö”£', 'wp-content/plugins/polylang/settings/view-tab-strings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¤„HdÓEÃ«JPÖ6¨x¦'),
('´µß²;ø›0ÿ‚ÙË', 'wp-includes/feed-rss2-comments.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Õf¸?j—7ä¤gg‰'),
('´^+„w7b=»ö;—E°{', 'wp-content/themes/twentysixteen/genericons/COPYING.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¹B;–ëa`GÔ¢·Þ‰'),
('´^‰˜18btt‚*øÍ¯!', 'wp-content/plugins/polylang/flags/nl.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'a†U¼w±ÅÓ®7çŒ3Á'),
('´h³0šso´ÚPôm)Ù', 'wp-content/themes/twentysixteen/css/editor-style.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'úŒqÕôm÷Hº^Ä'),
('´xå‹tö7ïÆIãD77L', 'wp-content/plugins/polylang/flags/by.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ž¬FLI©êñ\ZÒWé'),
('´ƒ3 T.^Æ™<Þ÷ø', 'wp-mail.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '?ÄJÔ„Ä³Ì¿aŽ¤Ýâ'),
('´“''çíJÞ-axÀ?’Ô', 'wp-content/plugins/duplicator/define.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '²4?\rú9±B$õP?Õž'),
('´·*ê´¶†Z†3°\\þfÂ', 'wp-content/themes/twentyfourteen/genericons/font/genericons-regular-webfont.ttf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ø?''ûý ÖK¢®>ªô±Ê'),
('´ÒK´ççOÈ–9×3|<', 'wp-admin/maint/repair.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '•Ãr0“QN‡iï¾ª'),
('´ðIÇåØû.$U0]''ˆS_', 'wp-admin/includes/widgets.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'TIÜ-1otpi><õ\n“i$'),
('´úü¤Ø«\Z8vr“à\\RÃ', 'wp-content/plugins/polylang/flags/lk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'NÅSñ†Éwivµ±ºN¤'),
('µåµ+DžFÜ¿TZ[H7', 'wp-admin/images/post-formats-vs.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¦S¦l“ôH\\©¬¯¯üæ'),
('µ•¶ÊCQõ‰(¯;½U=4', 'wp-content/plugins/polylang/flags/ly.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '?nŒº_×ËŒ \ZÏé·¼'),
('µGV\\z²…#°ÿƒ!;¢Ä', 'wp-includes/js/media-audiovideo.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ð“\rSŸµÑÓt›D'),
('µMŸésá;'',¼ÞÚ-E', 'wp-admin/css/dashboard-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '…ÕK³C£b\n\ZòÔ)üT6'),
('µO—r#½ÔýTºG‡¿!', 'wp-includes/js/swfobject.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ÿýº,ÿI}p„e~2˜qõ'),
('µl&ö*‡©õñßõÈ&', 'wp-includes/SimplePie/Content/Type/Sniffer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|rÃói…UbÙlwìáÇÛ3'),
('µ†»$(­g‹(Á®ÔPÚç/', 'wp-admin/css/wp-admin-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ýš®¢*ØÁ7"G–Åª´'),
('µø§„¡ÉkMÔÕ?ÊuX', 'wp-admin/css/ie-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ãµó¸üíA?»¥	˜Ž²'),
('µœ5ŽAtß‚–m0iŽz®', 'wp-admin/css/themes-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ßK$ýì9	u *vúü5¹'),
('µ±ã·q†KÑUÔjí¤', 'wp-includes/SimplePie/Category.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'º~ÈÌ?Ôò.\nÜ¯d»*'),
('µ½·?™­7,²t©ßÑÂÓ', 'wp-content/plugins/polylang/css/admin.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'eœÂÛ\Zn''}sÚßðj¿ê'),
('µã-Z¼³€:E¾:', 'wp-admin/js/image-edit.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÍU’…x;auKxrù	?Q'),
('µô9ó¯ö[ˆcêö7ž”<¶', 'wp-content/plugins/polylang/settings/settings-cpt.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'â+š"8rg.^ö^uR6–'),
('¶º¤|jX–ù©ß|êfb', 'wp-admin/css/login.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '?’c-”"š/•¯Y:€1'),
('¶MR²ælÄBœF¥u', 'wp-includes/option.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '…æ_ÃëGñ€Ø‡Ä¤1'),
('¶r\\Ùj”´¨òáA$', 'wp-includes/js/customize-base.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Zawª5ž+ÇŽƒšÖîQ'),
('¶˜ÀãŽÆ"SÎ­`t@', 'wp-admin/network/plugins.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'A“ˆ|¹ËMM0\0½ó¿'),
('¶¦â\\äÆ.1°Û-œ¾:', 'wp-admin/options-media.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ìA,x‰ìÅà÷’ýl¨¬‘'),
('¶°ÎHº*¶á*.ÚS', 'wp-admin/includes/bookmark.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ã¿8¼´Ü®E\\½Mß˜N'),
('¶î¤Ul1ÀÈ•Dübmgñ¯', 'wp-includes/css/buttons-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' =!¼Â<0‘Fâ-¹#2'),
('¶úI¡FØ_†¹5k"º'')', 'wp-content/plugins/polylang/flags/tr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1êpXT­WÄ2„Ph½Ó'),
('·\nfv 8¦÷á1·“™-I', 'wp-includes/SimplePie/Exception.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	Kýv&œŸÌ<\\ÚÐS5'),
('·G/—G¡3	¸ó(N°”É', 'wp-content/plugins/polylang/include/links.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'µ*85Íè/â^ü}G\\'),
('·yu¬åhjýpÕ´m¬Qøã', 'wp-content/plugins/polylang/languages/polylang-zh_CN.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'PY‡hMaH¼1ï¢z‹'),
('·›œZQ4ÇØ\\(‚Ü‡', 'wp-admin/network/admin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N…Ô5CsÌ¹	›'),
('¸\Zä¡¯lîÎÞù3ÈŠÂ', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce.woff', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'k7T±ÍVn@˜úèø'),
('¸*,î…L÷8()K¿õ', 'wp-content/languages/themes/twentyfourteen-fr_FR.po', 0, '¸Úž˜ ÜýõÀy\Zk', '¸Úž˜ ÜýõÀy\Zk'),
('¸J|6}ËPß,\rÙ›', 'wp-admin/css/colors/_admin.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3}÷ŠK`fœ#Ä°4=r¨'),
('¸_ŠÓÆßBa¼²¦»PG;Ï', 'wp-content/themes/twentysixteen/sidebar.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'êÂ˜¯¶&·£úIë~r'),
('¸Ž”§œ[®:°—„…q', 'wp-admin/includes/class-wp-plugins-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ß/Ü‚:ê(ÁgbŽ³'),
('¸š…P¿Of;ö™Í/ó×', 'wp-includes/SimplePie/Decode/HTML/Entities.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'E—^/Ï\rB†‘¥Z#”%/a'),
('¸ÝÒlëIàÿ!5†ÐçêO', 'wp-content/plugins/polylang/include/mo.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'djF6Cº„´·¤~Kx¨%'),
('¸è«\\ ¯”IÑ»Á»è,', 'wp-includes/class-simplepie.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ù5WÕÜ,l«~ýÁ4è'),
('¹çbÒ©~8}‘ÈôR…', 'wp-content/plugins/polylang/flags/pl.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'úÐél òá–I&¦ÇLÑ'),
('¹/&¼ŽÖûá2®Ñ¡\rgDs', 'wp-includes/http.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\0ºÌt“C8óâˆ$õ€R'),
('¹6°\0	„@”»åˆ×õ', 'wp-content/plugins/polylang/flags/mk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ay—ËÊ¯® ZLt®Ý'),
('¹IºÞ q\ZóüðmCÝ', 'wp-content/plugins/polylang/flags/qa.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÁÜ6:''õµÑž$''G×¾ß'),
('¹Œ?ƒ0|Ãöà5uÆ¡ƒ¾', 'wp-admin/custom-background.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'GVlp¿OÂ.ìa8Úÿ@'),
('¹ dšã›Ÿðø[•÷ŸE#', 'wp-content/plugins/polylang/flags/ge.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ª@rzŸlœfjd7g'),
('¹«ð¨gÄ0;”\0a', 'wp-content/plugins/polylang/flags/sc.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9e’(Qá·!e×°Ü;D'),
('¹®ƒqhÌn›Jýj¯', 'wp-admin/css/nav-menus.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '_#kØ&ÄŽ‘ÿ%3‚ÅÃz¡'),
('¹¹Î<ÿ	Ïf%ÕnŸO³', 'wp-admin/includes/credits.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¢"_ƒMèÐj]QþË$Áo'),
('¹ÃuLç,îŸ&Ç‘‹\r1', 'wp-admin/media.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ß_¬v)ÁÚK}ßŽÈ6_'),
('¹Ô%I…‰ç}ŒPözW­É', 'wp-includes/random_compat/random_bytes_mcrypt.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%lôé1/sÅ€l‹)wÒi'),
('¹ù$Ë<@ã™Å˜aô«Õc"', 'wp-includes/js/swfupload/plugins/swfupload.swfobject.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ìµq§V7ÛT\\ªòížs'),
('ºWMíŠË{h©øÚÀ(ž', 'wp-content/plugins/wordfence/lib/menu_options.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '€‰t/5ñQÄ(%àK'),
('ºaÉ@o›ÿ''¿Ékbíþù', 'wp-includes/js/jquery/jquery-migrate.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ä‰½™iø›¡ÊG7˜„þ'),
('º©Âã^[X’æŽi³	í', 'wp-admin/themes.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '•;a]R¸Øð0útbä'),
('º¼4T¸(â\\9''Œä3±)', 'wp-admin/css/customize-widgets-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'G ¥sF\r£Ð–6Q½®ÆŒ'),
('ºÍk{šä&òó»x\n¶ø', 'wp-includes/class-wp-error.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'KAøSJD”®Oa9‚=h'),
('ºíÌA0fŽýf`Â KÇ}', 'wp-content/plugins/wordfence/lib/wfDirectoryIterator.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ì¼˜~d[µ!L•¸A¾/½9'),
('ºüæ†sáYXÍš¬ãž—', 'wp-content/plugins/wordfence/css/phpinfo.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '£<`Ì,7‘ÜJu\0Ÿ'),
('»\0²×%3[$x\0èâ.°Ž(', 'wp-admin/images/marker.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3Ü*O2/Ô3I2œýè'),
('»ÒÉ4þ™õ‰ù=Ž¸', 'wp-content/plugins/wordfence/images/icons/ajaxScan.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‘Ê–´Ñ´­÷~fúúžiÁ'),
('»	æããEm[¥¬³ÇØlÅ<', 'wp-includes/js/tinymce/plugins/image/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'U[M’Ô0—çš #'),
('»nBý¹L²*€íD~ÝwUt', 'wp-content/plugins/polylang/flags/ua.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~÷¦õÞó¤}\\/ãpÿ'),
('»œ5Z´‘ÿüÌo—ŽÒ®<', 'wp-content/plugins/wordfence/css/fullLog.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+·ÝòòW‰jwË„}šä'),
('»Ê{ü]\\Öµ­	ôèdó»Ú', 'wp-admin/css/forms-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ŽÕ½JCÊeuÒß0»ˆÏû‘'),
('¼¬ðàÄÍï"¦RÑÅœ', 'wp-includes/images/crystal/text.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ì Ñ²ªü#¾dÿ%ã[µ'),
('¼ xsá‡áÈ*>Áî', 'wp-content/plugins/polylang/languages/polylang-my_MM.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'gZ¿/ÇëcÝ÷5ßdM'),
('¼v%Ÿ”ŒS´[¿Ìª£Ñ¾', 'wp-includes/ms-functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'šˆäb`¢Äýp\n¯#I&Ý'),
('¼–‹Pl¬TÙãÍF¯íY', 'wp-content/plugins/duplicator/classes/settings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '«C5Eç4Œë‡)'),
('¼é58R•¦«yx‰Ÿ‘„*', 'wp-content/themes/twentysixteen/js/html5.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^é{1P''Ú`î®âàK'),
('¼ð›ÂX"¯-{ãÊ$48sx', 'wp-admin/css/deprecated-media.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '@s½“&Y*tñM°QÒF¤'),
('½Òb''Íø‹š¼ù¹ðÅ', 'wp-content/plugins/polylang/settings/settings-media.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\n‘M¿àdIgkü\0>‘Äç'),
('½ÔÆøÍ3ã38;ï@', 'wp-content/plugins/polylang/admin/admin-strings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ú‰''¹n{|ìwiF{nI9'),
('½ZžÀWtÇp¥NŒh', 'wp-admin/css/nav-menus.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[ÆMkJô$«ŸHGbr”'),
('½}€%Jþ¼ãýgŠåzª', 'wp-content/themes/twentyfifteen/archive.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[kù"x‡E7@s}l¥'),
('½Z øOg\nW‹W’2', 'wp-includes/js/wp-embed-template.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ü9GxDNÒÅèŽ„öT.'),
('½šÏ¯ÐÕþšç,‹®“û0', 'wp-content/plugins/polylang/languages/polylang-zh_TW.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '´ü©98ÿGæÀM™¡ "õv'),
('½¬ÈWWÕƒoømÚËÐée', 'wp-content/themes/twentyfifteen/js/html5.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'é\\¡"‡È¶ˆ›jÈ“·P'),
('½²¼\\†“9ºÑ•F wí', 'wp-admin/js/revisions.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N¸$·]>Mb½È\nm*y£w'),
('½¾·$LçŠüI²C’&', 'wp-content/plugins/polylang/flags/do.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9IXEáŠ:Lw‹=ã'),
('½ñß{¶ôk`÷N', 'wp-content/plugins/polylang/modules/wpml/settings-wpml.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.åíB²XfrsBúOwBd'),
('¾\0ñb!½=8hO€‰8á€P', 'wp-content/plugins/duplicator/assets/fonts/fontawesome-webfont.woff2', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Û-Šp¤èŽˆ‡DÁÉ¢~‰'),
('¾¥Dõ‹=Ú¬aœ	Ñ¡U', 'wp-content/plugins/polylang/flags/cu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Sfé°\\Ô(Bž`„3Õó'),
('¾ƒ—ñNéÄõþ@½(º3—', 'wp-includes/ID3/module.audio.mp3.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ë‡%{/ô¬U‘Ô"mü†'),
('¾‰&ÊôKGû‰)–', 'wp-content/themes/twentyfifteen/js/functions.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '§kf-ÊuÙ-¶m.·Å'),
('¾Šh¢Ýß)UG@Èx–Ìv	', 'wp-admin/edit-tags.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$×MX)a•áë.þ\n<‹'),
('¾’(Ž[3?ÓH/‡[°e]', 'wp-includes/js/tinymce/skins/lightgray/fonts/readme.md', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'zd€ó‹+èÓÜE@ì1Ý'),
('¾àymªÉºÃBü6ÏŽ±', 'wp-content/plugins/duplicator/views/packages/main/new1.base.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'kÆkþÆ3¥.	©˜F,ji'),
('¾á2]hqu:ÞT6EÑU¶', 'wp-content/plugins/wordfence/lib/wfAPI.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¡quc …jÄ§Ã''³|æÁ'),
('¿ÒY²û©Ž1—ØŽ$É§', 'wp-content/themes/twentyfourteen/genericons/README.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'I#''yµ£F¤@¹ÀÇd"'),
('¿#²AuI.Fªù/ö Ç', 'wp-includes/js/wp-pointer.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '5Ë‹8½.ªr:Ä›¥óð'),
('¿<{‘Á»‡,-Ì![M€ú', 'wp-includes/js/tinymce/skins/lightgray/skin.ie7.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ô.zóMx€±.j@×K\n‰'),
('¿@êÉ,Ðn\\–€+k·', 'wp-includes/js/tinymce/plugins/wpemoji/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '»u\0¸Þó­ e»ùÅ;'),
('¿vé—FI—Ë2h´Ïø¤nÁ', 'wp-content/plugins/wordfence/readme.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '·K`oJÔl\ZÏú3®¸'),
('¿{‰1ðú"¸¦^ëÒÈ.', 'wp-includes/class-wp-widget-factory.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÿ‚‡žÅ+‘ð—®çÞ'),
('¿‚\nXù{Ù¾j’“Ü½š\\¬', 'wp-content/plugins/polylang/include/links-subdomain.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'IoPK<Gy\ZËMÜ»…už;'),
('¿™¸=V;¢‹ííÂN.K', 'wp-includes/js/wp-list-revisions.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'GQ\ru`Ò*—LŒìn$¼½'),
('¿·\n…Ó›IQED	æüê‰', 'wp-includes/class-wp-comment-query.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'T£çò£²¬+ÓWøþÉ½'),
('¿¼­Ç·®•¬µúµ\n‚H¹', 'wp-content/plugins/wordfence/lib/dashboard.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '&Ãð‰à]æmôÛâ+\Z%'),
('¿àÎš,ÌQ˜a»gl·Ä\Z¯', 'wp-includes/class-smtp.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'É.+Ýª7–/>"Zøß*Û'),
('¿ÿdA#…öÍ*ç‚Å¹o7', 'wp-admin/js/customize-controls.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'tš¿VŠ#f¼{j2¬'),
('ÀY¯j"yÅ‰Ð}@šÇíx', 'wp-content/plugins/polylang/flags/pe.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ñíbí¸ËÃ"zÊ%7'),
('À±3"ü(zÙa€4î8Œ', 'wp-includes/images/media/code.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-o–­UÊ“îÕU©U_'),
('À¸^MhÓ ™^8´¿’', 'wp-content/plugins/polylang/flags/ph.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'òÐ…Óá"M4F^$üÂ'),
('Á²ê|™«UÖCD…¹h', 'wp-content/themes/twentyfourteen/genericons/font/genericons-regular-webfont.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Úf÷¦lõÏÃÌG{'),
('ÁkHmå1Óó`0Ñ¹¯–_', 'wp-content/plugins/wordfence/lib/wordfenceConstants.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3;…¾s,ŒxØ˜ìÉ²1¥'),
('ÁzÝ¿ä¯&Xâ™6¤˜Ìs', 'wp-admin/css/media-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '–BxYÛ~rWCéu¬'),
('ÁÙµ\nh¶ÍJxµdvÏÔƒ]', 'wp-content/plugins/wordfence/lib/wf503.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ð-^ÕÁŠ¨K§D h$á'),
('Áê5•ì[,	jÄ(êÆª¶', 'wp-includes/js/mediaelement/controls.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$ "½Ó¬ý†ÿü?ÆÈ¤'),
('ÁôÂ†‹Lca\\¢¦Y†', 'wp-content/plugins/polylang/css/selectmenu.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'åÚÃñ*í&VW‹Ô›Š'),
('ÁùÁ2zsñŽú4xÎEB', 'wp-includes/ID3/module.tag.id3v1.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+6‹éáQÐ¬g4'),
('ÂObc®³" ÎÇÛ|J(', 'wp-includes/images/smilies/icon_evil.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'c¿ÓÔ÷VM<ó"!.'),
('Â1¨ŒWV(2Ÿ˜6²„³”', 'wp-admin/images/icons32.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÑÛ¬[çm9…çJ¡4Ì\Zê'),
('Âii­–BÜe8.¼­8', 'wp-content/themes/twentyfourteen/author.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'â ö}zá½÷½£õ¼Y'),
('ÂÀ1Œ’Á|¸}š”âdQ', 'wp-admin/export.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '™Ûò–vŒ:K^È-ó'),
('ÂÈ2”\\¡(ò{náV¹', 'wp-content/plugins/polylang/frontend/frontend-nav-menu.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'É/|VüE”ëîVÞN2½'),
('ÂÚ/Ø9ªôCZ¾¢U‘U0', 'wp-content/plugins/polylang/flags/sr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'šÊsv{ŽxvÇ*ÝCŠ`'),
('Âý	1ªõÐã€…S:(', 'wp-includes/js/thickbox/loadingAnimation.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Î"h\rÒcÍôÿÂö&º'),
('Ã^ÀêCÁOïÏP>ô', 'wp-content/themes/twentyfifteen/image.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ø{ùI»÷<ÿ<$§°~'),
('Ã.ÖBâ|xÓ³â‰×E±', 'wp-admin/css/press-this-editor-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'œgã^€]—Ú‡Öß[€ùÂ'),
('ÃC¶3!0Qòo•J¿e `', 'wp-includes/js/plupload/plupload.flash.swf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '7\rvŽEROGûÒ˜‰tÓ×l'),
('Ã_´—§jSXà2ÎQQ=', 'wp-includes/ms-load.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'wÅYw«îþ3éõ\\¿ö_Q'),
('Ã¡@Ú.ÆÃ·.¥©Œ±ñá', 'wp-content/plugins/polylang/js/media.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z %%>þ!ô®ì–2:'),
('Ã»v…ÊnõåAö“¥·ï»', 'wp-content/plugins/polylang/languages/polylang-ru_RU.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '×ÝŽÏ¥Ìklh‹k¬'),
('ÃÍtnRŸØ”Àá¯ÎÆ%^', 'wp-admin/images/align-right.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'BØóâ‡Oe#Ól@:P+"v'),
('ÃÕÅ5ÛV"ó°$$î_ý', 'wp-admin/includes/post.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'xpÞà¢¸ý«óÝ§é±'),
('ÃáiY–†…\0\nR)–„', 'wp-includes/post-thumbnail-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'È³+ÖèàÉ\\~¯åaë/'),
('ÃåuÿXÛÝ¼#‚-ÆÂøª', 'wp-includes/class-wp-http-ixr-client.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'æ|IN6”>GÃ{‰¦A'),
('Ä—UåF Öýö•Ôž', 'wp-content/themes/twentyfourteen/genericons/Genericons-Regular.otf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ñ1k¶\ZNØØ+ˆ>„'),
('Ä8\0Kb—ùYéS‹™¯úžË', 'wp-content/languages/admin-network-fr_FR.mo', 0, '™‡=ò`e·Ž¥%c+', '™‡=ò`e·Ž¥%c+'),
('Ä|¬·\Z›òîÄ:sÇ~š', 'wp-content/themes/twentyfifteen/author-bio.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4ÜÔ¡R$)úÇëûwZOõ'),
('Äˆ^Aõš+l†®¬oød‰Ò', 'wp-includes/js/tinymce/skins/wordpress/images/audio.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '7~!æßà\0Ž÷ÆÔý"w'),
('Ä”Ô¼üÝÕpPˆZ	H´', 'wp-includes/images/smilies/icon_cry.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'E>z?‹»ApðmWlAÐ`'),
('Ä³Jõ\n`|Æ5,HTõ»', 'wp-admin/includes/admin-filters.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'uc6œj‘†d¼Vßr±'),
('ÄàÊ™\0}ôßç” K›ö.ÿ', 'wp-includes/js/jquery/jquery.color.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÿ-¸ÛñEÎGóîó>vJ'),
('Åª{A¸êmmùß*K', 'wp-includes/nav-menu-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '„‰\nç4x&…äq®Îg{C'),
('Å`#ãØG–b¯CÐåÖŠÎ', 'wp-includes/js/swfupload/handlers.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '–Y,k?­XàN¼0Gï;'),
('Åk¤Hà¼-cS]\0`çµÎ', 'wp-content/plugins/polylang/frontend/frontend-links.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¶\0Û@·\0Ý\nˆÝ†ª'),
('Å‚j¨Dß‹¿.¥Ë–D¥‰', 'wp-admin/css/forms.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¶’frW~c¯é·Ð´ª¤X*'),
('ÅˆÔf+­0|“Ê?''L•', 'wp-content/plugins/polylang/changelog.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'êc¼ç–`#g{ÆùNœh«'),
('Å–ä/PIƒ£¯«c­D=Y', 'wp-content/plugins/wordfence/css/images/ui-icons_222222_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':<Thô„ðzÄ£ Ùâ*ËŒ'),
('ÅÍ-†p“lEÆóØk†/ö', 'wp-includes/js/jquery/jquery.hotkeys.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ãS!}EU«\\b³g¾h‰='),
('Æ+’ ÍgÔ¾Âq6¥^\0è', 'wp-admin/images/wheel.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'E0½ q0m»Æ\ZY%V¹X '),
('Æ…Ž‹‡|_Ëi/y¡Ò	', 'wp-includes/js/tinymce/plugins/media/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' õ61V]Q€Ä‹d˜'),
('Æ¬+\Z–¼ÊIód^i <\0', 'wp-includes/js/jquery/suggest.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':$tV‘EÕÊ¿Äû‰‚'),
('ÆÛÍëÀ,H½ç„Å•ô', 'wp-content/plugins/duplicator/lang/duplicator-fa_IR.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '•0.9óÑ1ÂGÒ”~s'),
('Æív\\*ûeà]äíÙø', 'wp-content/plugins/polylang/js/nav-menu.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'i+{)Â>Îúü°‘õ('),
('Ç‚-i)ö.ø\\Îèæz„^a', 'wp-includes/Text/Diff/Engine/shell.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'u«AÜ‘Í~Jª^t¥ùæîº'),
('Ç…ú9 Ù9: ÷¤\Zþ', 'wp-includes/cache.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '—ŸôÝ™![™Ü¢®Í®E'),
('Ç¤>z±Ô„Ÿ!J]>', 'wp-includes/css/wp-auth-check-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ìîú–œ¿ô¼¬ú:9ÿH!L'),
('Ç«É=Åèm‘/àÁœ^', 'wp-admin/includes/schema.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'à‘…QÎ¹lÁÏYC`;ä'),
('Ç³\\ªÝ_L-Y€ÅŒ%$', 'wp-includes/ID3/module.audio.dts.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'óêV`ÉL7.¶ôl] '),
('ÇÉDæ…&ÔMê­EÖ*Þ©S', 'wp-content/themes/twentysixteen/js/functions.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Aê*”g\ràáƒÄ&+gxC™'),
('È\Z{gÝü?Ñ3gÚ¢\Z½', 'wp-admin/images/icons32-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'µ%¤*ùúüøÌgš´ú»'),
('ÈB^æ´«GÖHÚ±Ý', 'wp-content/plugins/polylang/flags/gs.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ';Q\r6ÜpíÕ³Ú€–É·'),
('È"u@ž³T¬…S›ñ5ò', 'wp-includes/images/smilies/icon_idea.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '½³"m%h¸ÁíøôS±èræ'),
('ÈY$''«»¾šo‘ãì', 'wp-includes/css/wp-auth-check-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[¾L.ËTRÊ@†ƒçŸ»'),
('ÈPžÃ é3ÄïÑ€\n”Í', 'wp-includes/class-wp-customize-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '•nÖí÷FÑ&ÓJùjÛ'),
('É¥ƒÛÐ~\r\ZK4(#ãÅ', 'wp-admin/user/credits.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ù ´ûâÂÇ€[K}åZ'),
('É*â}%f/DÂ´ï¡‚i²€', 'wp-content/plugins/polylang/flags/tj.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\ÅHÑ…ó6Ês³­'),
('ÉA7¨''áC#žwŠSûsŽ', 'wp-admin/css/about.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '•Û^ìéG(}jþnÇÊ„'),
('ÉD·—ÂUG8·hÕK°×', 'wp-content/plugins/polylang/flags/es.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Öi<â¦4k-¨œí£5UN\n'),
('ÉlX”wÁóBõ*X§Wñ', 'wp-content/plugins/wordfence/images/sort_asc_disabled.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'OÉ§ÅþÍ*ÒXÿ²Û9e'),
('Élì©ŽüÔ±hÛ#³¹á&', 'wp-content/plugins/polylang/flags/eg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	Ä5bðÜQâùPwöC'),
('É†8¨ÂÖÀpÅ»ÑµVý', 'wp-content/plugins/wordfence/lib/wfActivityReport.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ÿ,7ñÌ°b€³w0'''),
('ÉÒ°†“2D´iÜe½', 'wp-admin/css/l10n.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¦®èÿP+^.(êzÒ¤Â'),
('Ê!&øiÆ)^þW­²ôRœ', 'wp-includes/js/jquery/ui/widget.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '°¯i4Ê6º™Ôê	/'),
('Ê(†q‚4Pè}ý5Ozük', 'wp-admin/js/inline-edit-tax.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¿ó¦¡üÈ"Y‡gC†_rÔ8'),
('Ê0BË#[wIu©Î•·äÓ', 'wp-content/plugins/duplicator/assets/css/style.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¿öÿÀ\n,†åYø“bN'),
('ÊR±­ÙÑˆé°Þ¿¾0', 'wp-admin/css/themes.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¦kXpõ«ùRäýäSW~§'),
('ÊhFM<@`%q-ãæ', 'wp-admin/includes/class-wp-filesystem-direct.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Tx(ô>êàŒ\0ÛÿéŒý'),
('ÊxjPÕö¼¨Ù!cÈx', 'wp-admin/plugin-install.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Õø|¹×K•º:|&12­é'),
('ÊÃ”~,V	‡4ÝEOçÆs', 'wp-content/plugins/polylang/languages/polylang-tr_TR.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ð~ˆð\nj÷µDkáÊè\r'),
('ÊÝ	b¢·–8Î[¿¶¥y', 'wp-includes/js/wp-emoji-release.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'óx‘çÄCÜfY\0Zóä'),
('ÊÝ_>³JŸÚñEÂ3\r', 'wp-content/plugins/polylang/include/base.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ðÞY¯£Ý§xí¨‡î•	¼M'),
('ÊèMËaNîšù`´:¸,Ö', 'wp-content/themes/twentyfifteen/functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '€ÆÒýÌäÜ’õBURóä”'),
('Ë!¢#ò°ÕI|‚ÛFé', 'wp-includes/js/tinymce/plugins/directionality/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '_!8[EVaYP@ÑA'),
('Ë-ÙÌ^]pwžÔìwÁ', 'wp-content/plugins/duplicator/views/packages/new3.base.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\rÏƒa\rq©Øjï¦'),
('Ë6 <¥ÊCêï®¿¹V:(r', 'wp-includes/js/tinymce/plugins/wpeditimage/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+Q¿=Õ´n¬þÆ¹’•Y'),
('ËS‰®~ “ GxU~Ã)', 'wp-content/plugins/polylang/flags/dm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '…„]¨®(éO(…ÎëQ]Ð'),
('ËU<Ý?Y,õÏ§Ø»(', 'wp-admin/js/svg-painter.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Šó¤ûÜ¥Ci™„ÙŒù]'),
('ËåGä¯€oe·ÿïoœ', 'wp-includes/js/shortcode.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 's_K\r3Èå\ZÊh»€V');
INSERT INTO `wp_wfFileMods` (`filenameMD5`, `filename`, `knownFile`, `oldMD5`, `newMD5`) VALUES
('Ë¤Ô’{%kò¥Ž#¶fÛ', 'wp-includes/js/mediaelement/wp-playlist.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '÷ö3p2K—N“ØÿÆÓWe'),
('Ë­¼êÀ‡ayAùním´š', 'wp-content/plugins/duplicator/lang/wpduplicator-de_DE.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'óTx4òEHÁ(Æpø,iw'),
('Ëá\\Å`üÐÄ^''î÷ø	Q', 'wp-content/plugins/polylang/flags/kh.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '†XÀfëOlï³\Z‚H,'),
('ËïvíE,¿-Oä{Ïº–', 'wp-includes/link-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '<WH½›FS‘Ô*(Š¹å'),
('Ì]é^^n‡<›³<Ñ…„[', 'wp-content/plugins/polylang/flags/tc.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ps<Ìg\0Xé§7¶R’‡Ê'),
('Ì!éLTá3•ŸiÙêxÅ', 'wp-admin/update-core.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'T-_€ó½úQÆÕ©M,m'),
('ÌMÏTq&[?ýù>ì¹Šå\n', 'wp-admin/css/colors/ectoplasm/colors.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '”qÑ9+Ø"©Ñ+‘•'),
('ÌVÚ®™œÆêM¯éjÓ', 'wp-includes/js/plupload/license.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'u&\n©TIŸzº«ªˆ+¾'),
('ÌÃŠ5ffÍ;,G!''öó''-', 'wp-admin/css/colors/ocean/colors.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÐMº\nƒÑ\Z¯äõ =Ér'),
('ÌÇŠ·EÁv–c,îØµyS^', 'wp-includes/images/crystal/license.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ð]µLcãiG›fQ“\rÏç'),
('Ìä¥t+Œ»‰N-¨Ì’°ˆ', 'wp-content/plugins/wordfence/lib/email_passwdChanged.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'õIwKý·mKa{Ä¯â;¨'),
('Í©ÿá‡p÷jÖ›`’Èw', 'wp-admin/css/customize-controls-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÐŠH´ºG''ÿ]–W*'),
('ÍdÝêãlP‘Oê’ùI„', 'wp-admin/network.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¼¹\rè_æ2ßPd.…+à–'),
('ÍÀ¬c¨å†''6z³ÉI', 'wp-content/themes/twentyfourteen/page-templates/full-width.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ce"õÆmºü¶\0o‚sã'),
('Í)ÄÅäò\0Ÿe‡_Ô5=«', 'wp-content/plugins/wordfence/lib/diffResult.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'IYÁ…Y8†\\@·6d''r#'),
('Ía¢‚qbþOaIÂ-ó\r*', 'wp-content/themes/twentyfifteen/inc/template-tags.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '®[q`#<ú^ÁZ'),
('Ím¥L0N"ÈT~ìbÜ', 'wp-includes/theme-compat/footer-embed.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ãÖ\0<[ÆÍÈ\\FYŒ{Þ]'),
('Íwÿ9=Ÿ_"h%’×v', 'wp-admin/css/install-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\r\\íKçN¼-\r3\0vé¹'),
('Í“ßYá36¾élç€Y«°', 'wp-includes/js/tinymce/plugins/textcolor/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'hÉ›œêÏ‘´ãÃ´qº4œò'),
('Í½3Âè=£¡OÁGÄ|~§', 'wp-includes/SimplePie/Credit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '…ä¡MçŒ‹*>\nê|'),
('ÍÅx<¤©Üç»‹Óž%yŠ', 'wp-content/plugins/polylang/settings/view-languages.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'WÚJ_VÇe€,Œ[¿hc9'),
('Íø‰»j(gù€~jU#·Ö', 'wp-admin/includes/class-wp-filesystem-ssh2.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ù½ÜD[-Ä^¨)7ëœ'),
('Íû^4è`‡c:Ï¬Ž£', 'wp-content/plugins/polylang/modules/sync/settings-sync.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Î½b“m\r5äØ¸*´Ð'),
('ÎSÖÑ^b•*	q-˜N', 'wp-content/plugins/polylang/flags/tg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\bruùÿÿŸàn+œ•'),
('Î_)-ª]íËŒkO	Ã÷Ã', 'wp-includes/ID3/module.tag.apetag.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4lŒ—ÊìºU’©Rú9I'),
('Î|žÏf÷€îèÉ,2­T	', 'wp-admin/term.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~O¿QÐ½;»”ÍŠC…l'),
('ÎŠÃYƒ(eŠ¤_bÅWj_°', 'wp-includes/js/tinymce/plugins/wpembed/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~Ä[Ëé’ÇL	Zu»-,ðÿ'),
('Î§¦DœÑÞÎC¨¨e', 'wp-content/plugins/polylang/flags/sk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Z~Ü~D’bž¥Î$¸0ƒ2'),
('ÎÅ“þúúÏ”ò=Ÿº#6', 'wp-admin/images/post-formats32.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'WY~O’ø{ð+_L‰kE;'),
('ÎÏ,ÀŸ G¶ ±:Å0 /', 'wp-content/themes/twentyfifteen/inc/custom-header.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4_ìNÞG^Fý}[å“F'),
('ÎåÂÝñ2ÇxÚY­#', 'wp-content/plugins/duplicator/lang/wpduplicator.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'k¦S	ƒòÎ3Ø›ì8½F'),
('ÏÅî/ß¡ÑÅÆ>âÇ;Ò', 'wp-content/plugins/polylang/lingotek/image02.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'º¯l£õDû¯Ž(y¨t'),
('Ï-Ó+ŽeÆáÔmñu"¶Ãx', 'wp-admin/css/colors/sunrise/colors.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|6j…9¶U"Ñùµ7£Ûý'),
('Ï=ÿjü¨ÊYØ±Ñag=', 'wp-content/plugins/polylang/flags/ga.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '—-¨KÞ¡5iÇ£}‰Ò'),
('ÏuFóâ‘^Gú¥E+ˆ¶c', 'wp-admin/network/freedoms.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'žú“Àp‰O~+¢~œ1'),
('Ï€¼3¦ËÓ°ÆÛ!Â&', 'wp-content/themes/twentysixteen/page.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¹éoÊájtÌmúJp; ZÑ'),
('Ï€tGÈ©ÈÀ‹¤D', 'wp-includes/js/tinymce/plugins/image/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'E„¯›¨Ä9`NA™v§·'),
('Ï†K	´Õ¨LŠH:dgÅ<6', 'wp-content/themes/twentysixteen/template-parts/biography.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '<]_×¨´€ËoƒuNB’'),
('ÏŠ=÷ÆX®¬÷bBz'' Œ', 'wp-includes/js/jquery/ui/effect-explode.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '`YU¢ÿ›½Q}XÙQ÷0Ø'),
('ÏÂÈ­ÁHÔ¹òÜfëká', 'wp-includes/js/tinymce/wp-tinymce.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Šb\n¸Ç0pr±Ó’Hv'),
('ÏÝ™ªP(™ƒÉO''E‘ùe', 'wp-includes/js/jquery/ui/effect.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'AÖ¢ŒpiÁâu+`‚'),
('Ïé‹­¡‚{^ªMU*ô_', 'wp-includes/js/twemoji.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'g¼ÍÇCLtZ¨üÕÙðZÍó'),
('Ð¬]mÙ²§	â–­ì', 'wp-content/plugins/wordfence/vendor/composer/installed.json', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'O»ófIü—8¥x¾E\Z'),
('Ð>›sËl›WD7õM°', 'wp-includes/bookmark-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\\Z±`˜^@‹"\\H“~'),
('ÐLàòë¸û®D52‹_±', 'wp-content/plugins/duplicator/views/javascript.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Åœ·:_ú¶%ŒQÞ16ÿ'),
('Ð|ø¬°Ä¹§“‚ä"˜M5', 'wp-content/plugins/polylang/flags/lt.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '•ïì¹ÒtÒ_»˜ëS©Ã„'),
('Ð„qÃUìÔ]Õ’›I', 'wp-content/languages/continents-cities-fr_FR.po', 0, 'ƒ¢êq è?,£}º‘’½Õd', 'ƒ¢êq è?,£}º‘’½Õd'),
('Ð¢’íŽ¹‚|áŽÑäØ@', 'wp-includes/images/smilies/icon_arrow.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¿Êµ	€»ä•ÛêÔÒ('),
('ÐÖ"ü”ÿ»yœ©N(D', 'wp-content/languages/themes/twentyfourteen-fr_FR.mo', 0, '¿ð>´±[™o5J= +¡ðP', '¿ð>´±[™o5J= +¡ðP'),
('ÐØ^º\\¶XèPvS¬\\÷{', 'wp-admin/js/media-upload.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '”´dé´ìkTT†¯y_$m'),
('Ðâ¬ä×n„º,[¶ÿh‚é', 'wp-content/plugins/polylang/languages/polylang-sr_RS.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'EÆ\rÔ’ôúÑ€õ{Io'),
('ÑœQ^S7¹õÌÉÙ', 'wp-content/plugins/polylang/flags/mo.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'c9½ðâL‡Ñüâh_'),
('Ñ/¸‡0€Þ\n*7¸f(›¶', 'wp-includes/js/wp-a11y.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '†»ìÎk\n_Ë°Àú©V\Z'),
('Ñ_\\c9mLŠvéè£1‰Ñü', 'wp-includes/compat.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '8¼Z¿©"	^2LhÈÚ\\q'),
('Ña~lÂ§Ÿ£\n2', 'wp-content/plugins/polylang/flags/basque.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÌXÄè]Ë2ã’é…'),
('Ñßëz…@ë«Ê%†´', 'wp-content/themes/twentysixteen/footer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '&IX­oôÌÏOq'),
('Ñò*\ZåñCbÑ¸(ë–3E', 'wp-content/plugins/duplicator/installer/build/view.step0.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$çüV\\Ñ‚âIlìº?½V4'),
('ÒJh|±”0çƒ`Zp˜E', 'wp-admin/user-edit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¼’Z†J×(wšÞœî'),
('Ò+qK(¿e–$kœ\\²£´', 'wp-content/themes/twentyfourteen/content-gallery.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'óä&ÎœQWÆ—`¤žw'),
('Òž³åúìÇŸö	KsÍ×Ð', 'wp-includes/images/icon-pointer-flag-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '©åá¦2ñ³¹bäÄ&ÕZÌr'),
('Òª*ãÔHšª¨\n;t²û', 'wp-admin/includes/ajax-actions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Êå%½h•ªÁ¤ Táð}'),
('Ò­ó_VlKøg°!p†1', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/rules.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '?\0`¶»‘qzg¼š÷¼zœ'),
('Ò²E5|ÒÑµ‰C‚dé—¼', 'wp-admin/options-reading.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ì²Á	é³šMCYµ“'),
('ÒÕLt593–u^˜ëä)ÙÔ', 'wp-admin/images/comment-grey-bubble-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'TYÓÅ2¶s,\rõmƒ¿'),
('Òõ]u÷s£Ž—r|è±:v', 'wp-content/plugins/polylang/flags/hr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'hÄ\0²SÙ´òG˜Éa'),
('Ó&)-Ã¢«\ZÎ™•p', 'wp-content/plugins/wordfence/lib/GeoIP.dat', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'É²\nºŒá*ÉêÓK@Œ'),
('Ó57©Æ\0uºTã´¬}ï¯', 'wp-content/languages/continents-cities-fr_FR.mo', 0, '‡Miã@Ü¶/B»“:2Ž¥', '‡Miã@Ü¶/B»“:2Ž¥'),
('Ó@ÔÔú¤Å”ìAD9Yz', 'wp-content/plugins/polylang/flags/cm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'õÍÈe¿6”…2p|BçáJ'),
('ÓE#lðÂLþæ_&Üª³Âï', 'wp-admin/images/arrows.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Úv’$ð>ˆÑßÙ>¿Y'),
('ÓU÷€nÐ/|r@Úªò×Á', 'wp-content/wflogs/config.php', 0, 'ìØåã†µ3Ô°wÝ[+ <ž', 'ìØåã†µ3Ô°wÝ[+ <ž'),
('Ójs¤žw2ùìp®ýqS', 'wp-content/plugins/wordfence/lib/wfIssues.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'P¡gì8W/,,\nMW;'),
('Ó{Ú­d3TúXy½‘ñÐ7;', 'wp-includes/css/admin-bar-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'l>¤szá øŠ¹_Íy…'),
('Ó‹âÄ‹JÂÞªùŽ7', 'wp-content/plugins/polylang/flags/rw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¾ù#Hãê8ÜF#&áº/ö"'),
('ÓÂ»c½ÞÜ&)¦lÔš@', 'wp-content/plugins/polylang/flags/cf.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%-_LG7J>Â»Šà¿'),
('ÔèòÿåÍ0*îWÇÔ', 'wp-content/plugins/index.php', 0, 'gD,Vë§=\\ÆbP', 'gD,Vë§=\\ÆbP'),
('Ô€†ªÀ}×vÏ£þGÀ', 'wp-content/themes/twentyfifteen/genericons/Genericons.eot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'â†’–ç(íÈ7k¤j'),
('Ô].õooðÈ¦M-n	‡', 'wp-admin/images/align-none-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'øXC™)[×°›-º4½'),
('ÔÈ†pŸþÑ]4ÌÐLñÄq¦', 'wp-includes/css/admin-bar.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '÷Ju‚ŸÂ/5''ÔñV5='),
('ÔÊpÿýS•š`ß]T]DÈ', 'wp-includes/css/dashicons.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ë×ƒð«™¼ôGu°ø§ê'),
('ÔÌÁ¦â:ªØÃ÷}Þº³R»', 'wp-content/plugins/polylang/modules/wpml/wpml-compat.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‘yqªª3)tå©èÝÇ\\'),
('Ôú›&U°ŒÿäÊåkü', 'wp-content/themes/twentysixteen/single.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' ú>°W;o]³U£ol~P'),
('ÕXéð¯—$„a²ÔBÈÒ^', 'wp-admin/js/user-suggest.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'à‰T\\×üÞ\\|×\rã§9á'),
('Õö¼úÍ¤6é\0/ý“kúÀô', 'wp-includes/js/imgareaselect/jquery.imgareaselect.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%ô.žeîÔBy—Ur@%'),
('Ö>›³ßuÏ½™S™4Á“Öä', 'wp-content/plugins/polylang/js/nav-menu.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-_!y8Ó?pL†?³kÑÌ'),
('ÖZ×ö	r!ÞfÕÑ¾	Þ', 'wp-includes/images/icon-pointer-flag.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '°Ó,‡ò­‹ÂE^¿j`'''),
('ÖoÒ¨*Kîêo˜7{ƒ <', 'wp-includes/ID3/module.audio-video.matroska.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'cš¥®‰K9j\0ûSü€içJ'),
('ÖrYŸS¯xwDYËšJ™[', 'wp-includes/images/media/interactive.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R×¬Ë‚®ñÂÃ´Å‰hÜH'),
('Ö‹Ë8“[½À¦‰˜0½ÊŠ', 'wp-content/plugins/wordfence/views/waf/debug.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3àãTÉ¤‚Ëæ>M2ÈÁi'),
('Ö¶Ëå9Øžføpo3t', 'wp-includes/class-wp-admin-bar.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÅT/üÌ²\Z‘l]ª§'),
('ÖÏJØûï!¬[W6Ý§éý', 'wp-content/plugins/wordfence/lib/IPTraf.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÚÚ0t^JÒËÜÃÖF­-\n'),
('Öçãv#ï9÷Ðò)?Ip×', 'wp-content/themes/twentyfifteen/content.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '?<hžšÖ>C½¥BqÐÎp'),
('Öò©—¡â¼‘Bœï—W', 'wp-content/themes/twentysixteen/genericons/genericons.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¦P\rß6ÆÝXw®üxÓM'),
('×\rn8#Ã”úØ9’ú¿ö|', 'wp-content/themes/twentyfourteen/images/pattern-light.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÿi¦ý¿Gp³jˆ€¿SÝ¨'),
('×GÈ©õï¿6”¤³È\0Y', 'wp-admin/includes/class-wp-posts-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¬c¸çA ôQ|WpÂ	ó'),
('×ž”y„7mE5ƒ…O_Á', 'wp-admin/js/media.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.Žýƒ$!&ð¿ý^$‘Y'),
('×²2€D¡É»&-uóõ	', 'wp-content/themes/twentyfifteen/page.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'B–5ÕäŒ^›\0™`Cþ'),
('×Çj0–©ÞwþE}Â®RŸ', 'wp-admin/css/wp-admin.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¢âöv&ío›ì¥0l\Z«º'),
('×ä^Ëu©­âË}G»Ô', 'wp-content/plugins/wordfence/lib/email_unlockRequest.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¶ ÚEÛ28.63Rºí¸'),
('ØÀ\ZvŒI:wmä²''~K-', 'wp-includes/ID3/module.audio-video.riff.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'î‚TfbpGOÙ-â'),
('Ø šH\Zí×òÆªo¶yÎ', 'wp-content/plugins/polylang/flags/esperanto.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ðÝª†V Ðd?¹¶XÉkg'),
('Ø&ãZhÍ$›Ã‰o‚', 'wp-includes/class-json.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '€ŠB{ vCÔÞ¯MýÏAŽm'),
('Ø8/B±$8ˆÏ`mœ', 'wp-includes/js/imgareaselect/jquery.imgareaselect.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'züB’RSûƒõ:Y†'),
('ØA¯h)Iˆ\Z]GrÞöƒE', 'wp-admin/includes/import.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\0±:“ö­Íb\n—Þhy'),
('ØM&3\rÜÁ3CMaQ{', 'wp-admin/images/yes.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ä+ø¢7Ü‰—\rqZèQk'),
('ØVÈð²ñÛœéø‘}A', 'wp-content/themes/twentysixteen/template-parts/content.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‚‹$çŽó/s=N°œž°æ'),
('Ø]ÁÖôA¡‚nBêñ£ê(d', 'wp-content/plugins/polylang/flags/my.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'áÀòbÁAèa_›Ñƒ“Ó'),
('ØoÅÇ£ž	×£áŸf0¿Y', 'wp-includes/SimplePie/Core.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¤®©#¸òÜ÷âÔý\ZÒ'),
('ØvõýãÆ\rêû´&X‰', 'wp-includes/js/jquery/ui/selectable.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Qñœ"û{¿B‹MäðÎ'),
('Øx¼øÎ²Ð¦¬à¨A	Š<ê', 'wp-content/plugins/wordfence/lib/wfCrypt.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'œ©ÁW´ík|¸Ó)þÁ’4+'),
('Ø{ÂÕTqçMüÊ}ò£[f', 'wp-content/plugins/polylang/flags/gp.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÂÜ\n b²Od13q†ˆ'),
('ØV\\=lS©‹l¿Jš&', 'wp-content/plugins/wordfence/lib/menuHeader.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'vB©¾p_0*«k8¿oG'),
('Ø±¥-¤_}Z‘hûì\n±\Z', 'wp-admin/includes/class-walker-nav-menu-edit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\n''€Õ¶×‹¡BÝw•°'),
('ØæÒDo½Ð=(á¹Sð{f', 'wp-content/plugins/duplicator/assets/css/images/ui-bg_flat_75_ffffff_40x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '†’æïÝø‚¬¿ñDÃŽ§ßß'),
('ØöÉAj^£ 3Úz\nt.ô', 'wp-content/plugins/polylang/admin/admin-filters-post-base.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¨3]W ’;j§€…Š–¤·v'),
('Ù,(¡i7:^Ì^ç‰#', 'wp-includes/js/tinymce/plugins/paste/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 's>…¿™†ä‰-uuž®'),
('Ù<”ì`…ï×¢A›zqø', 'wp-content/plugins/polylang/languages/polylang-et.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'KÖ¨Qž¶‘_‚v.ë'),
('ÙJàïš^\Z7ü•uG–k+', 'wp-content/plugins/wordfence/lib/wfDB.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'C›ç?8]N\n:}MQâ‚œ'),
('ÙkïÛ/yž³©ý›&‰ŸG', 'wp-includes/images/rss-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÇYa[ QÁæõ—ýrj'),
('Ù˜Ý"P´Üž÷Æ,ƒ©Ø', 'wp-content/plugins/wordfence/images/icons/ajax24.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'K:û„²·õmð™—£P½'),
('Ù¹Óƒ2HAYêfMœ#ŽmÊ', 'wp-content/themes/twentysixteen/404.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '8È—G@=/6¼(É\rà'),
('ÙÆÖ¨¢°úéýêî5', 'wp-content/plugins/duplicator/classes/utility.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'G&¯?>ï\0„`ßå8g9S'),
('ÙÖ3›ÏIê98\\ÙÖ›Ì[t', 'wp-includes/random_compat/random_int.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'æÚø]m\riVi+Ô3í8'),
('Ùë¼!}ñ=ö`*„gZ=', 'wp-admin/network/themes.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÔéMžsž~z+ ¤—`8'),
('ÙøŽÀaj‰äö2l7ð3', 'wp-content/plugins/polylang/flags/bs.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‹EøL±@ì$Hi!‡¨*¿Ç'),
('Ùþ>Ï~ä!ðªgÅq‹˜', 'wp-includes/js/tinymce/skins/lightgray/skin.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ùvøAßÉ!‘j¯+'),
('Úkãº-	š”Ô¬ß', 'wp-content/plugins/polylang/admin/admin-base.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ƒ¦Aw¹¿.ûQ½Sç¼'),
('Ú†wú=Å¢ÄOú&¹FÊ', 'wp-admin/css/colors/midnight/colors.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '&ÜªðÄ|DW¸¼!Eô†4'),
('Ú|À#éÔ°#{•ÄþŸá', 'wp-admin/js/link.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ùÿF”“0“;ÞÂÁ3²%-'),
('ÚÐ LÈjQ¥D—Äž', 'wp-content/plugins/duplicator/installer/build/ajax.step2.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'b9°óýY\0ÛEt¬ö¶'),
('Úý!§(t”ò‰<Ô¹', 'wp-includes/js/heartbeat.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'v}ªPè‰*ÊBv'),
('ÛãŽ_\r¬JLè#®@BÌÖ', 'wp-admin/css/colors/midnight/colors.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '—WÊ	Ýß¥©ƒâ²_‚j–Ê'),
('Û æIÙ_X²Óš¼¨?', 'wp-admin/js/gallery.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N{%é¼3tÏ9Ze&Q¢w'),
('Û;®°” -ÿF{Ž¡þ', 'wp-content/plugins/duplicator/lang/duplicator-fr_FR.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ù¥Î°³¡ðÕ\r)|<àÏ'),
('Û–JBw…C˜¡|Môv', 'wp-content/plugins/wordfence/lib/Diff.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R|Ð$¹Èìç©V;Pà“âÙ'),
('Û™ú¢²âÌ±@£Æ^1ÀL', 'wp-content/plugins/duplicator/views/help/help.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ð(I-³o‹uí$ùÑBû'),
('ÛŸObéÚiÜýÔ…Î-(kn', 'wp-content/plugins/polylang/flags/de.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ý«®h~Êåíªë€DCæ'),
('Ûªòê÷	.æÕ¸ß\\¾ò¯', 'wp-includes/js/tinymce/skins/wordpress/wp-content.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'øU''` ó\\%A¹¢ò'),
('ÛÈrš¼ÁµØ=ÔÔ’é', 'wp-includes/images/rss.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¥°[¿(ò”°.ý”*NZ¸'),
('Ûß\np¡ñÓGnu:¢¸Ó', 'wp-includes/js/colorpicker.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ðÊV gô„²¶ùŸ-¯'),
('ÛävPiZÞ´8Wù°ü°', 'wp-content/themes/twentyfourteen/js/html5.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Z˜¨k\\´Œó8F2YÎA'),
('ÜÈ¼‘ØŸÜ''\r`ùôÊÎ', 'wp-includes/feed-rdf.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*üIÌ³¤‰œ¸7B°¦'),
('Ü2Gý?¦_æü\\èÆú-B', 'wp-includes/canonical.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Pèïô<ÏÜ«Þ†Ï;p¼'),
('Ü:}Y»¬c®›?7x€Š', 'wp-content/plugins/polylang/flags/am.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ý]†N§d¯ì^òc/'),
('ÜF|\nµMN,8‡Ýªª''é', 'wp-admin/css/press-this.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '=É„3üú^ÉBútŸ8'),
('ÜMÞ,TÉvó\Z\0¶\0(ÕU', 'wp-content/themes/twentysixteen/js/skip-link-focus-fix.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ñ"B!åîËH1­æ¶­/Ps'),
('Üa\0và£·Üy6§xo', 'wp-content/plugins/polylang/flags/sn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'P\Z_«f-zÕˆ‚\\ÐÍIT'),
('ÜéÕ»Zml•î4ôË®U', 'wp-includes/images/smilies/simple-smile.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'éK²Ï{Â…Ž±f²w—h'),
('Ýº\r\0FJÈä–BáÞeç', 'wp-login.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '€OFg¸ÈÖbëšì„†Fd'),
('Ý)\0ý2gŸ~¼²Ì_0ˆ', 'wp-content/plugins/polylang/flags/py.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¹ÓÑZ1Dâ\ZE)…xp'),
('Ý8W€ó´žL ÉV•­¿µB', 'wp-content/plugins/polylang/flags/ie.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Hä-\rQç±›{yÖ1£©\\'),
('ÝJ0Ïõ§Éj YgÚh£', 'wp-includes/js/tinymce/plugins/lists/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ã$,ˆe+_+¶M½2g.ñ'),
('Ý[6»5€„+È	án9ä', 'wp-admin/images/sort.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.ŠËî™¿¼¶ÔlHj™]'),
('Ýf…ãyŽü¬Ä§—*!', 'wp-admin/js/nav-menu.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/¤…a¾´*Q—ÇäÛ¸Ù¸'),
('Ý{fZ¿µüß¥›—¿	äKQ', 'wp-content/themes/twentyfourteen/images/pattern-dark.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ºE½¾[ý.Æt5Õá­\0k'),
('Ý–¼''Ö"|3â_™t|©ö', 'wp-includes/class-wp-term.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÍØû¸rçYý6Sl$ayšš'),
('Þ3^ëËPMŸY˜æíHˆDØ', 'wp-includes/js/tinymce/skins/wordpress/images/video.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÐÂ¶÷ B©=\rz»ƒ3jÁ'),
('Þ<Æßå86Ko…ŒX', 'wp-content/plugins/wordfence/css/activity-report-widget.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¶Òå\rÜmE²dÿb¨'),
('ÞNÄ\\ü|ó`*·,)@4', 'wp-includes/images/xit-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '°rœT½Ä`Ÿ¯?JÐ/Ç'),
('Þ^ÏK^»8vÙ8ã§ëÐ', 'wp-content/themes/twentyfifteen/content-search.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ì¥<CUyûQ’OßÄÌbÏ'),
('Þoã`ï¹û¤N\0pÚWWÇÒ', 'wp-content/plugins/polylang/settings/settings-browser.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¶GàitC''	:¬;¸\\^'),
('Þ Š®÷±—@wÂˆçc!‘', 'wp-content/themes/twentyfourteen/inc/custom-header.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'c\0ù<E6	µ©;æ.*+'),
('ÞÞ‹³­”1FóøëÛa“', 'wp-content/plugins/wordfence/lib/wfArray.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'úÚe¦my¸†VôM¼\Z¬º'),
('Þé''g!Ž:–H™î),¾', 'wp-includes/SimplePie/XML/Declaration/Parser.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '±Úp(Ã…»BÉös#b'),
('Þ÷Xî5^ä§z­#6ìI8', 'wp-content/plugins/polylang/flags/no.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Uœåº®ãsÛ¡P¥lb'),
('ß÷‡×Óø9t7tD%Y', 'wp-content/plugins/duplicator/lang/wpduplicator.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3Ô0ÈeÈ§®½^JR,â'),
('ßàÒÁ"‰»–¾Íc)jÛ"', 'wp-includes/js/wplink.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '!š|OÞì\nïfU“D¥¥‡'),
('ß=Fh3{DW}çû!b“Þ', 'wp-content/themes/twentyfourteen/content-quote.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ždÔëÛkñûI9<ª'),
('ßPd¶­ÂXŒhøU"‰Ár', 'wp-content/plugins/polylang/flags/mn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'JÛšƒAˆu71­Õ''ªOgð'),
('ßq‚ùœŠ%Å±“ m+', 'wp-admin/css/colors/light/colors-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‡SñQ­*¹Ö¥8%˜lE'),
('ßŒò‘(ƒ©©‰ÕÛ2áè', 'wp-includes/js/quicktags.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ú]—¤‘h·EJú_ÎM'),
('ß–/ý2¥Z¢{¬6»à', 'wp-content/themes/twentyfourteen/category.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÆÃÈ†ÃÕ@9{ß€¯%='),
('ß—ÏQµ¦uâ!Ù¶x•[', 'wp-includes/js/wpdialog.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ò-Ÿ¥»\0ºg\r¨FÄ¡¾'),
('ß°S‚³ˆ±h[üÛ³Ì', 'wp-includes/class-wp-http-streams.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Q—t×Ù5œÍ÷ô}4`âÖÐ'),
('ß¹VÌ=¿£»"à#n§	¹', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/parser/lexer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Iõð	=Ä~ÌôiÍø'),
('ßÃ»¼Ã"s·ÖÀ«aêu', 'wp-content/plugins/polylang/languages/polylang-et.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'j*ãjëçò°]ÍQ|\r.G'),
('àÔÈ6®´9&“µÍøÅRï', 'wp-content/themes/twentyfourteen/css/editor-style.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'š#¡é`YÃ0rÜãýŸ‰?n'),
('à!ý×0Ç°tTµ(— §‹', 'wp-content/plugins/wordfence/css/images/ui-bg_flat_0_aaaaaa_40x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'f\\KùK‘G’Ð»SAÀ'),
('à%çf\\+,…æÍ\0\\Y', 'wp-admin/includes/class-wp-filesystem-base.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'm8±—¿ÖØMÆ¹Œ!Ž¥,'),
('ào¬§ÎÓ±AL±\nîçÖë', 'wp-content/plugins/polylang/css/admin.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ïè”©õâhxñŸ)h–”'),
('às³-v²TSÅb ¬z¦', 'wp-content/plugins/polylang/readme.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '›e×Ç¸ºQKŽÞxý=z3£'),
('à|¤óB¿ýÇéã5Y“è', 'wp-content/plugins/wordfence/lib/menu_sitePerf.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Í¿"Žãx<ó%ùâ“+õ4'),
('à–ÊrªÖMÓÜ´-\nSƒ„', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/parser/parser.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'éð\rcmmÄæjøíik›'),
('àØ×›Ç/`¢ùfü¢×$', 'wp-content/plugins/polylang/flags/pf.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'åäŒð’F‡a‹¿`êOî'),
('á©^ºûbR–åSIá!Ó?', 'wp-includes/class-wp-image-editor-imagick.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '÷Ì÷Ýqp.‘f¬xÿ/ò'),
('áA	!fYëj=	qQ|H', 'wp-content/plugins/wordfence/lib/menu_sitePerfStats.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'B9›>Ìùq›Ì‰-·æŠ¼'),
('áZ±Ž®(>(ª1bÞ«”Zê', 'wp-includes/js/tinymce/skins/lightgray/content.inline.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '–QÁ8§´Ì©\0´}3'),
('áq@/»¹ê¦‘Ùž-MË', 'wp-admin/network/site-users.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'x\nI¬Ü9ñm(*z²Wù'),
('átè†?á?åu-ÅÙùŒSJ', 'wp-content/plugins/polylang/flags/rs.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[g.>æ3aBˆa[ wK÷'),
('á™>Â“êÆÌ\nô5´ëäZ', 'wp-includes/customize/class-wp-customize-image-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ui´h-ÉÀ „öîKó'),
('áñ\\9Ã£>œŸ„Iz4“c', 'wp-includes/js/tinymce/plugins/hr/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'BŒŸ´z{ƒú@¡X†Ð±\Z'),
('â *ñs\\áO“éilê', 'wp-content/plugins/wordfence/lib/menu_scanSchedule.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÙCd…Nr”,"''\0g"S›'),
('â%Z_''”~LJ¸õâ’‰', 'wp-content/plugins/polylang/flags/it.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'xO~³3ðYX¼Î–£Á'),
('â42\rõ‰Z§»¡Àjñ', 'wp-content/plugins/duplicator/views/packages/main/controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '†c~~0÷ÃRú€þˆS\ZH'),
('âL¶>ÙŸ‰#{6p}YãÎ', 'wp-admin/options-writing.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9i¨KÝ(èrçë‹þ'),
('âäÄ¸:ß,p´1¿ÛHr', 'wp-admin/js/dashboard.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'æ®áZçËÃœAàÊ¢é>ö5'),
('ã\0¼•×•oxi3%\r+]kg', 'wp-admin/images/post-formats.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÜKÿáÑ\0“äÙ%3¨Öº'),
('ã\Z%î²¼e4w¾oƒŽ', 'wp-content/plugins/polylang/flags/ai.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ïˆ¥‚q\0biˆs\0ü'),
('ã.”ˆaZžø—èÅjø¨¾a', 'wp-content/themes/twentysixteen/template-parts/content-single.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ßcYžÄoèLxâíú–wF'),
('ã0—;ê-,ÓAÞEyæ', 'wp-includes/theme-compat/sidebar.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'HÐÎ]š!pê˜G#Ï­˜éP'),
('ãL$@ª³]½½š%+X', 'wp-content/themes/twentyfifteen/inc/back-compat.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'a¿ÈÈÀÄ× š[Ü`z'),
('ãaÝOj''÷Å»D*ÖV4', 'wp-cron.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ò‚Bõvme%¹Ióv26Ó'),
('ãsâFñwÔ¬Ÿ›Trƒ@', 'wp-content/plugins/polylang/flags/iq.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9Ïävb\ZÖ0Ï4Ã#O”'),
('ã eÆ\\ÛkîcçßXf', 'wp-includes/customize/class-wp-customize-upload-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Jë§ØÃF÷yÅ¾©r@“{'),
('ãªF<û¶d 8…<\\=ô°', 'wp-content/plugins/polylang/flags/ro.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ð8ÉÁRÅáO‡\\{¯ÍG'),
('ãáqÕ82½úvÂ&#M', 'wp-includes/js/tinymce/plugins/wpview/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '''¦Ö¥ôê:A{£"<‰’à'),
('ãìó<kUJv%ò1‚‡', 'wp-includes/fonts/dashicons.ttf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'êÎFºþF›¢ñýÅƒâ'),
('äÑç#ÿiJå®H·?ö@¸', 'wp-includes/class-wp-http-curl.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ËRoUÐAU ·dá™L\r'),
('äw¢ÍÓÖV¥Ðë¼!Ü', 'wp-admin/includes/class-wp-ms-themes-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ðô¿ìXC[!CÒ­ðìy…'),
('ä¡NÙ`õõrHn0£©Í', 'wp-includes/js/mediaelement/jumpforward.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'á¬ŒºÌ.ýñ¬&wÞH¢S'),
('ä~$ª=RvÚºÐfÔÄÿ°ç', 'wp-content/plugins/duplicator/lib/forceutf8/README.md', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¥0“''PK@	.µtét'),
('äßæ¨ÞzpKC²{\\>‚ó', 'wp-admin/js/dashboard.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¹\0&,\n*ÊWvÜüâ¾Ä¹'),
('äê¿1þ]ÃM|®KÔFZ', 'wp-content/plugins/wordfence/lib/wfBulkCountries.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}ÚÃìMìŠ±¢³ò_#9'),
('äö\00‡ùqŸÄŠNy)”Ô', 'wp-includes/plugin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ð~—ªühWnÿÚÌëŸ'),
('å''Ò`FÌ”Ì~ÙÄ–“œ', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/view.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}›‘J–gÛ!fy”áLú'),
('åHÆÌ4….\\ã:‰ç#àî', 'wp-admin/css/l10n.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H"n®ŒCÀÈ,•¨U\\@'),
('åN²6kd}ñnoÁ', 'readme.3b9e06d146e8215c4dde6285061ba1d8.html', 0, 'Zvü^#¸PÅºê·z.%•', 'Zvü^#¸PÅºê·z.%•'),
('åRËä5?’- S£^H—ý', 'wp-admin/js/editor-expand.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¨?˜.\\_xG®€–Ñy‚Æ'),
('åeÅÂúôüýn·…ŸAÛ', 'wp-content/plugins/wordfence/lib/wfView.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'â‡²*¸!üPÓ''|ú%\ZØ'),
('å˜¤´(!$db F	`', 'wp-content/plugins/polylang/settings/settings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'r®µÇœæ½»Ö7íW—¤Y'),
('å£›èÎw¶…¿?¤•<', 'wp-content/plugins/polylang/admin/admin-filters.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Œû:êåâµ)äñÎ½ÓR'),
('æ\ròb\\ñ™‰ÄÉ²\ZÄë', 'wp-admin/edit-form-advanced.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ìG¸Aƒ«,ÞüEˆ*ƒ'),
('æ+‚ù«.âøÇeF«È', 'wp-admin/css/dashboard.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'þ˜þÏ0=ÝQ"ŠÆóÐ'),
('æ9eºòÐkköRÊo—†þS', 'wp-includes/embed.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%*œÛy‡èÊ"Êˆ?rù'),
('æGÄÅ5Ø@æèÙÚ07•Ç', 'wp-includes/images/blank.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H»+ªô51	÷Âf]–ª9'),
('æJ~_o¸f™k³¨öóºÏ', 'wp-includes/js/wp-embed.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ø´ÙÐ/jVœ@¤}{'),
('æjIù!WØÏùŠŒì*:G„', 'wp-content/themes/twentyfourteen/comments.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.ÿûºù™ê_Ý‡ëXì'),
('ærû6É4¿>n>ÆlZMÛ', 'wp-content/plugins/polylang/flags/mt.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'z~äù…ìûn§Sªo!'),
('æ§˜ºî7Ý^ô»b³"³', 'wp-content/plugins/wordfence/images/back_disabled.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'hÙÂÔgØúïiîã†>'),
('æ¿y§lš€só§U>Â<òá', 'wp-includes/css/customize-preview.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'v¿MïuUŒßmÏÁžYKw¦'),
('æÎWûêÃ"úÚêSk:Í', 'wp-admin/images/align-center-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ž¾²-ór‡5*J7¡If'),
('æÝàÅ¥æXÙ¯çÔQÚÇ', 'wp-content/themes/twentyfourteen/js/functions.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '’+˜4»<\\>[ÎÉÒrš'),
('æâ££ôMåO×ºîïƒU®', 'wp-admin/js/editor.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'nÉ‰$&ƒ¦¡ðÿãFn'),
('ç"ÕÆ¡üŸ7vs+ö', 'wp-admin/includes/class-pclzip.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ƒM"ø¶Š,\\†jCë$ïÄ'),
('çDj×žå8]fÐ”_Ú', 'wp-includes/class-wp-widget.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':^^¤éÀÎ{ÖbÕA)ˆû'),
('çb`K¬''×Šì»œçâK', 'wp-includes/functions.wp-scripts.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÜOÏï¤[¶°èí=1<&Û'),
('ç’ÅÿxšÞAgm%¶æž»', 'wp-content/themes/twentyfifteen/single.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÈlC•n¼×ï±/ôÚï'),
('ç”Jú¡Ñ‘e÷\rXd”Ô$Ý', 'wp-includes/class-wp-customize-widgets.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'vFüÓÓƒ–u²ùŸÅÒQø'),
('ç©lÚXNEMÊCgVsA:', 'wp-includes/js/swfupload/plugins/swfupload.queue.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '™SR/½J»ö5©-vÍ'),
('ç»Çd÷JgP"\rÞ§"J', 'wp-content/plugins/polylang/settings/view-tab-settings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ð9„œfÈÃõ2!è*'),
('çÃÕKÿg›Ðå‡o#ç0', 'wp-activate.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'V…IõWëžØfíÊÜ\\[&'),
('çÅ‰û	iàö¿/Ð­', 'wp-includes/formatting.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'éÏd!þjü{rKð7&—áÄ'),
('çÏHâ¶ÇÍlö±{!D#¯!', 'wp-admin/js/color-picker.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ï''¯rlBÿ‚ùj¦µÖÅ	6'),
('çàFüZY¿ÑC8À3E', 'wp-admin/css/colors/blue/colors.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '“8 É{x~å¡vµÍ~ƒ\0a'),
('è%y>}HÃoÚæú(6', 'wp-includes/js/jquery/ui/core.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' Msåù­\r›a½ÿä£{'),
('èfõi¿`¸=@TµçoÙ', 'wp-admin/images/spinner.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '°£Ýã1c~''ªdvÔvHq'),
('èpqE/Á©cù/™2Ø1', 'wp-content/plugins/polylang/flags/bz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'nª¯æ2þ6t	AUEÂ~s'),
('èJ‰Ùåy”ž0mì`ä¨/', 'wp-includes/class-IXR.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¾gŠ7‡&ÁáS=+fG°A'),
('èŒ\0…]¨pÝÒÞ‘ê–	\rG', 'wp-admin/css/customize-nav-menus.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\|Ác÷8"36—§?Nàx'),
('èå\0óÖ²›$$¤Jë', 'wp-content/plugins/wordfence/lib/menu_waf.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '’‰rhùP…®7?tAq'),
('èò‡òQËoµH*¹‚À(ï', 'wp-content/plugins/wordfence/images/sort_asc.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',¸»I§Å+Æ¾ êú=€ü'),
('é"ð¢Ó[Q	ØÃÂð', 'wp-content/plugins/wordfence/js/admin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' Û½\Z°LÐ"¾¿±ü†ã]'),
('éFÎj!Yé{.J=,µ®', 'wp-admin/images/stars.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[¬à™><õk²{Òì(‘'),
('éSEyQ\\;¢øf	Ã)', 'wp-content/plugins/polylang/flags/cv.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/NßÜºLÛ?©z#_2–'),
('é]÷W/>ï}<8è VFã', 'wp-admin/includes/theme.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Eº.¥ä²s¸D/þölÑ'),
('é^.—jT}ù<ÞŒI¾™', 'wp-admin/js/accordion.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'éý $t8)!ioZ~¾'),
('é_êÞð\0ò¹i÷l¯¢', 'wp-content/plugins/polylang/polylang.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'lÄª¨“jª¬Ô6u¥ùš'),
('éœ'' ­Æ#sˆþß¾U|', 'wp-includes/js/mediaelement/loading.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'v³&ôÔB"oî!e•¾õ'),
('é »ÀyN<Ž €9€o\Z<', 'wp-admin/js/xfn.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'f²''Ê(ô.°J9\r^'),
('éªÊm¬Mt¨†ÛW³B', 'wp-admin/images/align-left.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\ýy0Ïúd÷Zòo.hžÔ'),
('éÔÞât“þ˜ZÑO''ƒ \n', 'wp-includes/js/thickbox/macFFBgHack.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '’È°gï†­×W’,/u´'),
('éÖçÙöV,E@†X‚šy', 'wp-includes/SimplePie/Cache/File.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '£=»@ìÂœÆB[	SÑ'),
('êkLN\0ôç»x6@', 'wp-admin/css/list-tables.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*`¼lí`Õ_»\rÈ0§“'),
('ê%N{kPüRÈgI0ªl\r', 'wp-content/plugins/duplicator/installer/build/classes/class.utils.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'j÷ƒÁB–Pc«sZ4'),
('ê&þ(¬yf“\rÜÐ*KcA', 'wp-content/themes/twentyfourteen/page.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'M©;DjRï?©ú'),
('ê4Ê×çº2‘)A.;4Ñ', 'wp-includes/js/customize-preview.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%Ù‰D}LÂ“Ýôf&®¡Ó'),
('ênmq\0³½Í@pF‚d*', 'wp-content/plugins/wordfence/css/images/ui-bg_glass_95_fef1ec_1x400.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Àž0ìÈà(5Ö&3lhê)W'),
('ê¥²«2jEbgØˆW²xÛ', 'wp-includes/css/editor-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ØÙÜŽ·Þ-“u=/!H!'),
('ê¤ûy}p~Î¡!\Z’º»Y', 'wp-content/plugins/polylang/include/cache.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'V¡ÿÌ6Ìú[«lC}O‘'),
('ê¯Ç‡¾ÆÛ4Ë“T`¡k', 'wp-includes/js/wp-pointer.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6˜|dMpX\0—ä€fÉ‚'),
('ë-nê$.ÿ#g%Ä}Ý÷', 'wp-content/plugins/wordfence/lib/Diff/Renderer/Html/SideBySide.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'p´þ€uQø„¬: Ì*'),
('ë0žŠRðJ³{yíË£÷ï', 'wp-includes/general-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\¤œÙèî8(g¦1ð„'),
('ëF ó8Ç+²)ÐØrÝPè', 'wp-admin/images/no.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Èk¿dÉ$ùŸÜŸV7ðÀ‹'),
('ëM\Z¥Õü—H³?Í²Z', 'wp-includes/class-wp-rewrite.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ê“Ú[ª­þr{äcc]¢'),
('ëOÓ¿ú;¤=\\J¼zy', 'wp-includes/js/tinymce/plugins/wpgallery/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'û7`ŽùOšty²ù‹OÎ'),
('ë­·\rç!z}MLKE', 'wp-includes/ms-files.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ñ³oJ0‰90A¾hÂav'),
('ë²ÔSÚ°p—GMÇ¯¨lí', 'wp-includes/css/media-views.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'û­»7Bó‡ìdI¤i¥'),
('ëÈÄ×®FîêpÞs¥Ø4£', 'wp-content/plugins/wordfence/images/back_enabled.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¡¡ñø]È÷£”ÒHŽÃ'),
('ëÝvAÀds½ƒ—µ®Kµ]', 'wp-admin/post.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'óÏ1ë¼ßHÕPR<¬n—d¦'),
('ëãYCàÞoƒoRÔäºž”', 'wp-includes/capabilities.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '²MàÜbû‡Ct-d²sîð4'),
('ëüq;:\0zÍê×sð¶ÊV%', 'wp-content/plugins/duplicator/lib/forceutf8/Encoding.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'h…dûp«IúuåmÄQ‚ÞM'),
('ì8·Ú§™ºs}ï÷Õ¶àNi', 'wp-includes/class-phpmailer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Èá|#vdÈÚBhGàp§ˆ'),
('ì?ØÔÞý·h›±ÒÎ;', 'wp-includes/js/quicktags.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '!:¨C¾’>›<Ôè#QÐ'),
('ìD\rh}¼è¯¶‚!\n', 'wp-includes/js/jquery/ui/effect-drop.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'WþV‡ÊÇ¥²YˆF2è'),
('ìPØ·úŒæ‚‡ÌºÆ´$@Ø', 'wp-includes/SimplePie/HTTP/Parser.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'W%ÇÐû4ß6¥6	'),
('ììE\0dÎ<&­¾ôº', 'wp-content/plugins/duplicator/assets/fonts/fontawesome-webfont.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '÷uùÌ¨Ž!Ô[ëá…²|['),
('ì¡çcÚÆ.DÂr¿ |öî', 'wp-includes/js/tinymce/skins/wordpress/images/dashicon-no.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'RÐÀäZÊ?f.Ç8õâ	'),
('ì¸ƒúvÈÛ6àš;˜~', 'wp-includes/js/tinymce/utils/mctabs.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¹µ\rÛà|uJkekÚÚ5\0'),
('ìÀ-xÇ(ÅE¶oI„=Ý', 'wp-includes/class-wp-customize-section.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'íB•¿x®\Zû~ù{Ök†Úw'),
('í\\áSƒÕ‡–€8¸–;2', 'wp-includes/class-wp-tax-query.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'øx¡…°&Zõ\Zd0/.p`'),
('í\Zpr5> ö#Eö´Ä•', 'wp-content/themes/twentyfourteen/inc/template-tags.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 't%d&¶žæŒH,e\ZO'),
('í]š§@ƒ\n—«>ÄºîYn', 'wp-admin/admin-post.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>Ì[s´à+¤£íî,h'),
('ížÇhêÐdgøîP­', 'wp-content/plugins/duplicator/assets/img/dropbox-64.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '("a€Ãò1HÝËz\n=N\r'),
('í°QR"æÃ@3ªövàS', 'wp-admin/js/link.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '†uÜÐ5Ï³tö{ü¿zŒ'),
('í²tØÅ”B›ŒÌhMy×qö', '.DS_Store', 0, '‡;ÜŽÙ\nãrf&’‡°§Ë', '‡;ÜŽÙ\nãrf&’‡°§Ë'),
('íºG® “Ø~ªÐÿô`ø', 'wp-includes/customize/class-wp-customize-nav-menu-name-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '{è`Ù–Ó_“7T¨”È¥3'),
('íé\Za˜]]ãA‰ê''hŽ¤€', 'wp-admin/network/settings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ù§›y¢ÜÊÌOà€a¯ÿ'),
('íñ²ƒ=ÃúcäÙ‡œæý', 'wp-admin/includes/upgrade.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Õ†wöI|)¢VX?3'),
('íùëeC˜¾„ðDi!×ç', 'wp-admin/css/colors/coffee/colors.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '˜û–ÿ‡ö”‚uâ¬ØCÛ(­'),
('î‰•fÙ%ußPûÊñ„', 'wp-includes/js/mce-view.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'žá2‹®îš…Ÿhy$ìŠ'),
('î\Z½‡å{:\ZªŠå4f', 'wp-includes/js/customize-preview-nav-menus.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '"MðKÃŸØóñÎ;À´(ø'),
('î—Hû²=”ßcbŠËHp', 'wp-content/plugins/polylang/flags/nu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'š/h-¶@ñÃnä)ocÜ‡'),
('î×˜n `UMÒµ¥ÐÞØÛ', 'wp-content/plugins/duplicator/installer/build/view.step1.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'kG~žÿ±ÅMx~ì»çp×'),
('îìˆœ$#Nœp¡Ñ£³¿?;', 'wp-content/plugins/polylang/include/links-permalinks.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ç»}~ÕhA>Í•ß4ÎŸ'),
('ï@}&£J~ÏÂ¾&óè\0', 'wp-includes/customize/class-wp-customize-new-menu-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[‹Æ!‚õ¶A[¬\rZL´Í'),
('ï&t±G1oµU¹N¦š{\n', 'wp-content/plugins/polylang/admin/admin-nav-menu.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '—BKa]~#wv²åiJå%'),
('ï7¾œ0c[OH|–z•', 'wp-content/plugins/polylang/flags/mu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'HÕËÂ?íû·{í›R/'),
('ï;Lát‰×¬C°ƒ”É£', 'wp-content/plugins/wordfence/tmp/.htaccess', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '·I z~Òi¶,Lžÿè'),
('ïD=JÇ…/	6Þƒa…', 'wp-includes/js/swfupload/plugins/swfupload.cookies.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¥~À\rÚˆÝk\\ 7Ì´ÕÏ'),
('ïY^~5~‘¨pŸG-ŠŒŠ', 'wp-includes/js/customize-views.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Åð«·>h®¼›ò%¡à‚N'),
('ïzúÀœØö×ò|”zûxv', 'wp-includes/js/jquery/ui/droppable.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\ZK"qýHÌd”¼”–~A±P'),
('ïŠt›«J®šÑE§™ÝC', 'wp-content/plugins/polylang/flags/cn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¨/ð9ïõ@b2‹DtÃ=¼'),
('ïÀûP†‰a`Xuî¥¡', 'wp-admin/css/color-picker-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '<£’­çJÃØÂŽpH(D'),
('ïÑX=U¡pfp¾€ÁZ', 'wp-includes/taxonomy.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'yÞ¿>õnµ©ÚÈ¹Ô:†'),
('ïÞŒt+é\\õ+ÆXa†ZU', 'wp-content/plugins/wordfence/lib/wfScan.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'V‚€¼Õþî*÷üš3A¢Ý'),
('ïã¯©è	''¯æ¶Þ¨‹÷V', 'wp-includes/images/smilies/icon_biggrin.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÇYpRþ+Û0}kÑN{Œk'),
('ïï6X‡Ôª4ñã[_‡=t', 'wp-content/plugins/wordfence/lib/wfScanEngine.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'á¬‡å''÷^qôË¦”'),
('ïÿ€É9‡ÊrÀMÔ§Äè', 'wp-includes/js/customize-preview-widgets.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¹¹ŸàeìG6P|i¾ƒ\Z''\\'),
('ð"â¼¶¬ÆÍîƒ/Ðÿ¿1', 'wp-content/plugins/polylang/flags/cc.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ë¿±y—R‰ç©Ë±,¯\n#'),
('ð$ŸÄ«¥Iˆ^ý“3·”Ñ', 'wp-admin/menu-header.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'mÞ	T¥”‡â5#†ƒÈÔº'),
('ðBõÈ°º.ºã\0¥7ÆþÕ', 'wp-content/themes/twentysixteen/rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ŽÂõtl.YÎZ8~XÏ§'),
('ðeIßÔõTyK†mò1¶?A', 'wp-content/plugins/polylang/flags/bh.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[¿a–‹%Ù$ºÄÙ›A½'),
('ð€¡öe‹}°r×''ÌíÐ', 'wp-content/plugins/polylang/languages/polylang-ka_GE.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ªjÎ‰Búöþí19?^'),
('ðŸæUÙÉeà]µG×Çv-', 'wp-content/plugins/polylang/flags/er.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H9JÉ¤O0@÷ÄWü#¦'),
('ð¡N ¶¢ûiiÚ­ù', 'wp-includes/random_compat/random_bytes_libsodium_legacy.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ô~Fšœ-Þå&Ê6,‡á…Q'),
('ð¶!A´ªþ\rÚ–\r>Î', 'wp-content/themes/twentyfourteen/content-featured-post.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '`ÃÌX°'' gT\\d)Ø'),
('ðº˜H8*ÊäAÝò½5þb', 'wp-content/plugins/polylang/flags/sm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'VãÁ´ƒ¿''ækPîQ¼'),
('ðÐ·&§LÛ½Â¨ãVNŠ', 'wp-includes/css/buttons.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'úQfc±¹eJôæ€ÌÄ+'),
('ðÕ£mÒìpÂüé©÷9\n', 'wp-content/themes/twentyfourteen/inc/featured-content.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'òSj’Äh÷(2·š£‘Ò'),
('ðö´øü•ø6$[£ª®OÀ', 'wp-admin/css/customize-widgets.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¡8ÖéØé³ÔÒ©êÿð^å'),
('ðýî÷n>Ï­5J‰qN/X,', 'wp-content/plugins/polylang/flags/an.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}}h*Éò¢jmêÛ‡3O'),
('ñøå“rp.u…3zx€', 'wp-admin/includes/class-ftp.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '!©œ|´*àú¨•Â¥d'),
('ñ7sþ\\]Ô}ˆAAùwe1·', 'wp-admin/tools.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'àz¯ ßð_P†þOç"”'),
('ñZ/¥¼û{LtåÕ®F$€', 'wp-admin/js/svg-painter.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‡Üûé/§|Ä©ˆœ‚zü'),
('ñ±TYÛPpEñw†“', 'wp-includes/widgets/class-wp-widget-archives.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Áà/Ín¸<‹5±YËO'),
('ñÂJ]ú‚±°;o*©±P', 'wp-content/themes/twentyfifteen/genericons/Genericons.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/¿=Â³zeX*¹|Óê¤b'),
('ñÅ¿9‘>‚2BOPæ¥/IÊ', 'wp-content/plugins/polylang/flags/as.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '–ä’çX''{g XLM„NÌ'),
('òÝ0è©1IrBF¸HÅ2', 'wp-content/plugins/duplicator/uninstall.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Z)QšîÀñeÿ*n\\Ôè'),
('ò\nB¨Ã2v?YX\nÍ+', 'wp-content/languages/themes/twentysixteen-fr_FR.mo', 0, ':ÛðC4*äz G5>¦', ':ÛðC4*äz G5>¦'),
('ò+)+–j^á;#ËÂÞ', 'wp-content/plugins/polylang/install/install.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'nFÃ¨á‚­{AÍb½4f'),
('ò4%Væ©¼gûãÊÞ1×', 'wp-content/plugins/duplicator/lang/duplicator-de_DE.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'l©·€Ý“À¸Ò¿èŒ`'),
('ò?²âE_Ï)ŠxÚ…$ž', 'wp-admin/includes/deprecated.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¹Ð¢S\0xÖ¹ÂY'''),
('òpo‚´X0%÷¢ÇíÏë', 'wp-includes/css/editor-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '×¢Xª<Î­‹Uª±¶qàeå'),
('ò°–üMÂÙ¦MÆ/`¼', 'wp-includes/js/swfupload/handlers.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '²ÐOÛ…¼óß²˜}Ê'),
('ò± ­ü²BÉRÔz‡‡Y', 'wp-includes/js/jquery/jquery.table-hotkeys.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'åogo·¿“~i¦I	ú'),
('ò¶?{o_±°µ''»nÖ', 'wp-admin/images/resize-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'õáe?‰&h.éÅ\nº™'),
('òÂÌ_fÂ $ÁO<o', 'wp-admin/js/common.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ú\Z5Ø×4/¼ý%[EdàÃ'),
('òÒ%¯\0úÊz”fÀNÈpS', 'wp-includes/js/tinymce/plugins/wpemoji/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '÷za1ÁPe=ß¡zVŠbÐ'),
('òÒ­º’äÐÍÞ]\Zÿ‰yÉv', 'wp-content/plugins/polylang/flags/zm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ìiÞùç}#DhgÊëJR#±'),
('òÚwÎ+"+ú$ã¬^¸', 'wp-content/plugins/wordfence/lib/wfLog.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '•ÒÃÄwH®ªÓL"ã\n^'),
('ó#\\ú·â¨/‡vXR', 'wp-admin/js/theme.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'D5T˜ò‰FÎÙþÞýxÔ†'),
('óK£’z²™=»Gêáøø8i', 'wp-content/plugins/wordfence/lib/menu_passwd.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Áˆÿ‚Ù®&ðU%•Èuy]'),
('ólF‘®¾Ücë’•ÒLÁ€ø', 'wp-admin/js/iris.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'uÆ5`Æ@Ä¦ÃUeß°è©'),
('ó‡ç,·oÙ!Âz¾j"ó', 'wp-admin/css/edit.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'pÂÔãï\Z©w;W¦àñ†ˆ'),
('óŠØ ]Ôf•ˆðPô¢†ƒ', 'wp-content/plugins/wordfence/lib/wfLockedOut.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÝÛWÑ±ÔXñ²e D£Àš'),
('óû¯Qëš°33x¦}£F', 'wp-content/plugins/polylang/include/widget-recent-comments.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¹ó¨bWE¥(»Ã\ZË'),
('óÿV¬“k9Û´îs¿»€Ö¿', 'wp-admin/css/customize-controls-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ˆL+hGF_moÅÉ5·;¶Z'),
('ô+Í,ñÃð›ýµŠçÏ\0£', 'wp-content/plugins/duplicator/views/packages/list.base.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '#GV8Ù!Ñ ÙÙ,Ô¯‹'),
('ô‚Ž;ê¢^ð©¸´8c„', 'wp-includes/css/buttons.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ð^õ]¯Uíc¡r\\ä'),
('ôJ''#‰‚rN„0a\rÈ', 'wp-includes/images/crystal/audio.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '™nVñ:ÉÏ‰óGØÔ-#k'),
('ôY´ªR‰Yi/µ·l@HXÓ', 'wp-includes/js/media-grid.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ljt8åjµŸÝ·W[@Ää'),
('ô­jå8úœÈÄÃ\Z¬±ó', 'wp-includes/js/wp-backbone.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÿ©ºO¹[çÕëJ-v'),
('ôÿ®ˆ0`Þôç_3qÁ', 'wp-content/plugins/polylang/settings/settings-licenses.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ÿzb–ilÜüµq­jÙû'),
('õ-"DíÊÊ¹D²5aÐ/', 'wp-includes/cron.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'zKr^åÇEÿë_‹fdà¤'),
('õ<ÌõlÚ\0¯u\nˆƒL]ˆ', 'wp-content/plugins/polylang/flags/so.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'KâÿÄÐmäCJ‡}À?ø‹'),
('õA4eøêÇ{¹^š†ÒZ', 'wp-includes/js/wpdialog.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'rè9_ÔM@9\0œS–ˆ¦º'),
('õF¤ë\ZÁ“ç®Cüì1®P', 'wp-content/plugins/wordfence/lib/wfDict.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*î6Attëæ#Ã'),
('õuôNâƒ.A_Ù_Ï', 'wp-includes/js/media-editor.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.¥Êt»+~6Ò£8L¥N'),
('õ¥†ÂØÞ>+ÜžL[îm', 'wp-includes/js/tinymce/skins/lightgray/img/anchor.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '«Óa5q€ÜÈ‘_4ø@'),
('õ¥Ûý(ëÅø%ž#€9yn', 'wp-admin/css/forms.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'á×]†ªIjZî¼y¤&àš'),
('õæØõ£y ø\0º"¬îQ', 'wp-admin/user/menu.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¥)ãÓÂ»†g¹ÌEÏpî'),
('ö€~¡‘äâ»âr„C›ž', 'wp-admin/link-parse-opml.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'J£#ê/’¸—â|Ú¾Ië'),
('öjØæ²Z·;\nlÐ“¼', 'wp-includes/random_compat/random.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‡…•éñG|Œ1[_s1š'),
('öKF\nOòiñ},íö‘wÇ', 'wp-includes/random_compat/byte_safe_strings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'üuÁŒ•Ùt©ý±±öoyi'),
('öV9´ÔK±áÄgoX±¹7Ó', 'wp-admin/images/align-left-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'i…8±O¹ƒšìÐ^—Æc'),
('ö¨£’ÂþH©S!;ø ó–', 'wp-admin/js/user-profile.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '»°€³AÌ<k°G_¡^'),
('ö«ã]k\rWÕó±#¥¯t', 'wp-content/plugins/polylang/admin/view-translations-term.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'štø³™vã½-LÏ˜3ÖÑ'),
('ö¸·,P­Ò9:´2æô“', 'wp-content/plugins/polylang/flags/ma.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'É6¹÷”Þ÷Ø_»L\rhhN'),
('öÊí†+¢šÇqÉpW£Ã', 'wp-includes/update.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6Ös‰(Ó½{y¶9y_^'),
('öÓã­`×&X<ÄaQŸVh\\', 'wp-admin/user/profile.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¹ú©•€\0yÝ¤±&-'),
('öýåÀPq-³tó¹@lÊ', 'wp-includes/images/wlw/wp-icon.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1	ŽÊš‰7w3K™*'),
('÷ @ï;€ú*ÏÁ|¨°', 'wp-includes/Text/Diff/Engine/string.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':±“=üM©Ã\0¬ïi)'),
('÷í/Ñ,[´mïýÄ‘?Ý', 'wp-content/plugins/polylang/languages/polylang-id_ID.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÀäÂÜ2¼ìQûŽ“óß¢'),
('ø>€v¤L½#þîIZ—', 'wp-content/plugins/polylang/flags/bn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'IÍ*®HØ/œá$Ù¾<'),
('ø@¨ÒêsB0<€{l¶3ŸÑ', 'wp-includes/wlwmanifest.xml', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ßÔ¶óƒê¢ið^ˆ–'),
('økoZýö¨z!/½Ìf', 'wp-content/themes/twentyfifteen/js/keyboard-image-navigation.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¸/â80r‹\roº®©'),
('økæÞº”e<FêÚ4', 'wp-admin/js/revisions.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'b¹^Om]Ã''—¹ðƒ9Dn'),
('ø —ÏsYÀQeÙ•~\0\Z5', 'wp-content/wflogs/.htaccess', 0, ':RV§×ã–*«´bLQõõ', ':RV§×ã–*«´bLQõõ'),
('øÂ6K1ýþ›(îöÝ}/AX', 'wp-admin/network/user-new.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'æ;ž¡1èŠÂ`ëûn!El'),
('øÏÝíz˜/Þu70O=y', 'wp-content/plugins/duplicator/lang/wpduplicator-fa_IR.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-² Äs’rN|;xCA¥Þ'),
('ù-3g<¡`cÁ™B\0\n\n', 'wp-content/plugins/duplicator/lang/duplicator.pot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Äòi?ò¨ÿ2š×øQžV7'),
('ù^Q6l„ÏJ! 	âÍ¦', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/json.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÓJéaD5Húrúªñ½'),
('ùHûMz»@õAé†é', 'wp-admin/css/press-this-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ð¬5~óV6t)5ÓLj€^'),
('ù„É±%›¹a{Z¼j	%¿', 'wp-includes/class-wp-editor.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '(?K¨ŒãR¼êq%çªHu'),
('ù‡†óI™:4PúUÒÙÀ', 'wp-includes/SimplePie/Cache/Memcache.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'öJU²¡…1SQ«„?¶'),
('ù—8K°ç ?O]Ê¹Y', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/rules.key', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'º§\ZlY^[F\rÈ2xÊ»'),
('ù¢¸pöl4[²þ°e›Ûû', 'wp-admin/js/inline-edit-tax.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'uÆÆL…‚¯?ÕP\ZßŠpß'),
('ù©€XiU1`Ž²]‚“ë“', 'wp-content/plugins/wordfence/js/perf.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'uQ÷"ÊwF÷ÜáR@p'),
('ùÑÿšôßÐ3ø>#¼.û', 'wp-includes/rest-api/class-wp-rest-request.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÅÖ~jŒÄP~Ã7@V}'),
('úRœÞ=úÝ*ÉdòÕn', 'wp-admin/includes/media.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‹Âk+1ŸÚHºÅ''{I)'),
('ú-^gÿˆÌº@\0/÷“†', 'wp-content/index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'gD,Vë§=\\ÆbP'),
('ú.Õ¶»ÕñZg{Ú=ñšÌ', 'wp-admin/css/customize-controls.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'dg8\rgbô¼Z†Gz·ÜK');
INSERT INTO `wp_wfFileMods` (`filenameMD5`, `filename`, `knownFile`, `oldMD5`, `newMD5`) VALUES
('úWa‡çr÷^QÍ¤$qù5', 'wp-content/plugins/duplicator/assets/js/parsley-standalone.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '…tÌŒðUç·PTD’'),
('ú`«èXé¹Ž7‰ìDU', 'wp-content/plugins/polylang/frontend/choose-lang.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '<ýñ\0Ô#r~û‘c)¬Zr'),
('úc%Xã~5â\\âá\\e¤', 'wp-content/plugins/duplicator/assets/fonts/fontawesome-webfont.eot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2@N“*”Ø¿ÒB''ÄF'),
('újþg ÊÏåÔqÜ]Å¡', 'wp-content/plugins/polylang/settings/view-tab-lang.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‰dYW„7<Ã§ý.Ê?é'),
('úŠ''_G·˜þ>âr-gÊ¯', 'wp-content/themes/twentyfifteen/genericons/COPYING.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¹B;–ëa`GÔ¢·Þ‰'),
('úŠ­~…‹a%¡ë!»P', 'wp-includes/js/tinymce/skins/wordpress/images/pagebreak-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '{Î6¿#UQ:÷‘|>#ëÖ'),
('ú˜”çÙL?@§š.~O¯', 'wp-admin/css/colors/midnight/colors-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '™¬Z7UíZÍx6Xžˆ\rÏ'),
('ú³¬»T\nšˆô­e.(¼±', 'wp-includes/class-wp-image-editor.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'šˆ+QŒ?N~<ú¬\r±RÁê'),
('úâ}‡Ûá³PÃ›™P\\©\Z', 'wp-includes/js/tinymce/plugins/wpautoresize/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'VLÕÑ	ÔgS''¶÷ ’i'),
('úèRŠ,žA§Àý\ZñGJ''-', 'wp-includes/default-filters.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H0ƒ>ó„¹Þô/ÂüLv'),
('úðÇêpœq÷=ÌsDŒ™ôa', 'wp-content/plugins/polylang/languages/polylang-bg_BG.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '·î•¥tÎá7»êÑ”\0['),
('úýÊ\n\\ÔûÉ¶.5úŽš', 'wp-includes/images/xit.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'å)£Xû¹`1¬ÜðH×Ê'),
('û:Ö;:-s¦Øç5''’', 'wp-content/themes/twentysixteen/style.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'rš§X»3\rÅkê)÷—“˜'),
('ûDÏáê]æŸ|ß¼ª$™', 'wp-includes/js/mediaelement/wp-mediaelement.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ˆœ™ðJ9W=Kå³FÆ''/'),
('ûPhÜÈ³·¤rVâ', 'wp-admin/css/revisions-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '«\\ô:˜MÏL¢#Üm'),
('û¹¦,¶ôx÷|arL}©', 'wp-content/plugins/duplicator/assets/js/jquery.qtip/jquery.qtip.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '½:áÿ!•éÂÕ—ý.Ù„#'),
('ûÉŒ.à4õf;D«£é•', 'wp-content/plugins/polylang/flags/jo.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ñž£‚²¿¹µ ÑÅ‹'),
('ûÌÃö6Ri*5ŽðÁÄÃ¦', 'wp-content/plugins/wordfence/lib/dbview.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¦À®(D˜eƒŽd«:¡]'),
('ü''ñú™ƒæ³×}µ0', 'wp-includes/js/tinymce/wp-tinymce.js.gz', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'þIÖâµföÃä…ÓúÕk‹'),
('ü])éé	¹ƒó{—?R}', 'wp-includes/feed-rss.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'r-šV^îœ|° ‘'),
('ü0<PsÉñ×žH—ÑÁ22', 'wp-includes/js/jquery/jquery.table-hotkeys.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '§êÖ”#týgP±g€¥'),
('ü9(FŒRj2¹n6]Š', 'wp-admin/css/colors/light/colors.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‡“ÓÞùyû) ”ôwÎÌ2'),
('üJ’§ó!2 ¨Ü\0­€Áü', 'wp-admin/css/about.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ð“5ÕÝ{¬=þF]íÂ„'),
('ü^|ãå\r™-´ÝÈˆµ', 'wp-content/plugins/polylang/flags/kg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' 3Î›}Äª»c\\'),
('ü^Öºãñ“S^±cÓüÊ', 'wp-includes/random_compat/random_bytes_openssl.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '³iVKÿÇm‚D•''“cº'),
('üg"š}_¿7¸½¦ÜJ5', 'wp-includes/js/jcrop/jquery.Jcrop.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'VÌž¢Ü/K‘x¿¬¬’'),
('ü‰p·Š9½6Ã¨åRæ', 'wp-admin/css/common.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'roõaÂÿŽ¡µ!wNúkä'),
('ü˜•ŒµÆªq¥æ‚³‹Ð', 'wp-includes/js/tinymce/plugins/paste/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '±¶3Á³™[ÖÛTã|'),
('ü»<læa¬€,›bX,³²', 'wp-admin/images/xit-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '°rœT½Ä`Ÿ¯?JÐ/Ç'),
('üÍ‹¸$í§‹ûÑ³±Ò¥h', 'wp-content/plugins/polylang/install/plugin-updater.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'bf´Ï,u{I8)1€‘é'),
('üÕÅ·N	\0ùÛf\ZT²Š', 'wp-content/plugins/wordfence/css/diff.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ä"¨‰“ôÕy1…÷4ZÆ'),
('üìM¯J¢ðdB.€™î£*', 'wp-content/plugins/wordfence/css/images/ui-icons_fff_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Aa+JD$ø2Ÿ‚J”Ú'),
('ý„²SÀ`vß¬^7@ñ', 'wp-content/plugins/duplicator/installer/build/assets/inc.js.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ªí·ÿ‹˜’~uåô>‡Ô'),
('ý!@A‚;1)SJ—Èb·Ì', 'wp-content/plugins/wordfence/css/colorbox.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'jR èÁSþü7½‹¾•M‡'),
('ý+q^e·•éãguÏF6\n', 'wp-includes/theme-compat/embed.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'r¶L‰¿Eòva3÷£Ý6I'),
('ýGþ²!#hÔ9	„ò&', 'wp-includes/js/tinymce/plugins/wordpress/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^~…Y;»¤äñ¶7I'),
('ýKjòâªhº‘èù', 'wp-content/plugins/wordfence/images/loading_background.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¬ô''é2û”p\nK‹X´ì'),
('ýfw@ÅÊæÁ½Jš¾F•Ô', 'wp-content/themes/twentysixteen/genericons/Genericons.eot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¾»S¥Ó©\n¹/;]s>'),
('ýŠwŸ@Äå§9JÉ\Z/GÄ', 'wp-content/plugins/polylang/lingotek/image03.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'È£:¬±	H¾`ÜJh–¹€'),
('ýŸÒ¦À¿¤$2¡bL¥$', 'wp-content/themes/twentyfourteen/sidebar.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ORná]&d—ûçþŽœn'),
('ý©Õ''æ€BâŠ­7SÂ', 'wp-includes/js/zxcvbn-async.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '—§ž–¨²\0“V]u#3'),
('ý­{ 	\n|p£Ù¤', 'wp-includes/customize/class-wp-customize-nav-menu-item-setting.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Âû ²	úƒÙÜ(y:åígÐ'),
('ý´ö×øõ)Ý(¤Ð<ÙÝ', 'wp-includes/js/json2.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'É…BúŸ\rõæ/ý©Ä´‘'),
('ýÍa„í''@Tç‘“‰õÖÊ', 'wp-admin/images/date-button.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '—Ž.ªÚI•V•Äö'),
('þsw­fòPrÙÓu¹;', 'wp-content/themes/twentysixteen/index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'è’Ç\n,¿Êª% ÜNƒ*'),
('þ''TúŸåôÌ­éY²Ç™', 'wp-includes/customize/class-wp-customize-cropped-image-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ž[W''"ñfìöIÞ™©Ÿt'),
('þýþœ)z]!?»±aÀ', 'wp-admin/images/media-button-video.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '«ªÃßØ¿råxñ4QêçÐ'),
('þFÏ%­³CÂÔ0»£¡,', 'wp-admin/css/list-tables-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}fÆ¼(´É6`¥\r¸'),
('þI"íp¢ÐtÊQ¹É[Z6x', 'wp-includes/css/admin-bar.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '§«!êã5ÎXWf(`81'),
('þcµÔwk(”‘ø43Ã', 'wp-admin/includes/list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'aH"&§2áo8ç-º'),
('þgVÜàÖHIwžÓ!µ’À', 'wp-includes/css/customize-preview.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\n³@;úæ{ã‚À_'),
('þQÖ¿6“Èyqä¢88', 'wp-includes/theme-compat/footer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'æ	¶yW+(–a0òŸÄ”'),
('þË¨e]ÿ!°-Q…»ñIÚF', 'wp-content/plugins/polylang/flags/gw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '5ë›ˆ!Ìì_XÍwƒd¿'),
('þà¢¿w›ñ''¢6)', 'wp-includes/rss-functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'g³¸»²Ôl]¥4j0l='),
('þêÆöÕNº·9¥{®;', 'wp-includes/js/mediaelement/wp-mediaelement.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ŽzDÓQ9ö(q¥9Qfy¡'),
('ÿ;`º$rçŸËÑ$³ž¦=', 'wp-content/plugins/wordfence/images/icons/warning128.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'pÏGÀI×t*ö“ÆÊNp='),
('ÿE58¾ùyªäÔWsÖOºÕ', 'wp-admin/css/admin-menu.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¦ð¸×ãÖúhëBŽk=;W'),
('ÿLÙóêóe5x?e=æˆ&', 'wp-includes/js/plupload/wp-plupload.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ŽµSôyÈ,lf@­@'),
('ÿ‡·ÖM~ë^xù¼;‡ð', 'wp-content/plugins/wordfence/lib/unknownFiles.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'AÑ{ÑÉîUÀêÐz¤[ŠØ'),
('ÿ¨a5[4ü5¼MepC', 'wp-includes/js/jquery/ui/effect-bounce.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ø–à0TQÞ5’ÔûáS'),
('ÿ´Tƒ–¾ŠÃ‡=w›±', 'wp-admin/js/bookmarklet.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '•Éï5·jò¬êùÖÅ•ŽC'),
('ÿµS©CRCþül¸Å', 'wp-admin/css/colors/sunrise/colors.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'V’‡\ZŠzî	hÝù’=ì'),
('ÿÄêkµËiîÐ.¼¥¸\\¥“', 'wp-includes/images/smilies/icon_neutral.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Š•Ûú©˜	°‡®´Zí'),
('ÿët@‡sæ—Ý‘ÆN', 'wp-content/plugins/polylang/flags/gu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-|ê6M$î[µ?ç');

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
(1, 0.000000, 1464679747.038346, '\0\0\0\0\0\0\0\0\0\0ÿÿ\0\0', 0, 200, 0, 0, 0, 'http://', '', '', '', NULL, NULL),
(2, 0.000000, 1464679809.013020, '\0\0\0\0\0\0\0\0\0\0ÿÿ\0\0', 0, 200, 0, 0, 0, 'http://', '', '', '', NULL, NULL),
(3, 0.000000, 1464680403.555034, '\0\0\0\0\0\0\0\0\0\0ÿÿ\0\0', 0, 200, 0, 0, 0, 'http://', '', '', '', NULL, NULL),
(4, 0.000000, 1464686021.002597, '\0\0\0\0\0\0\0\0\0\0ÿÿÀ¨8', 0, 200, 0, 1, 0, 'http://www.project.dev/wp-login.php?action=logout&_wpnonce=561dd0a109', 'http://www.project.dev/wp-admin/index.php', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56', 'logout', NULL, NULL),
(5, 0.000000, 1464686021.569678, '\0\0\0\0\0\0\0\0\0\0ÿÿÀ¨8', 1, 200, 0, 0, 0, 'http://www.project.dev/wp-login.php?loggedout=true', 'http://www.project.dev/wp-admin/index.php', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56', '', NULL, NULL),
(6, 0.000000, 1464686031.839283, '\0\0\0\0\0\0\0\0\0\0ÿÿÀ¨8', 1, 200, 0, 0, 0, 'http://www.project.dev/wp-login.php', 'http://www.project.dev/wp-login.php?loggedout=true', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56', '', NULL, NULL),
(7, 0.000000, 1464686039.145738, '\0\0\0\0\0\0\0\0\0\0ÿÿÀ¨8', 1, 200, 0, 1, 0, 'http://www.project.dev/wp-login.php', 'http://www.project.dev/wp-login.php', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56', 'loginOK', NULL, NULL),
(8, 0.000000, 1464858846.828585, '\0\0\0\0\0\0\0\0\0\0ÿÿÀ¨8', 1, 200, 0, 0, 0, 'http://www.project.dev/wp-login.php?interim-login=1', 'http://www.project.dev/wp-admin/index.php', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56', '', NULL, NULL),
(9, 0.000000, 1464858847.619116, '\0\0\0\0\0\0\0\0\0\0ÿÿÀ¨8', 1, 200, 0, 0, 0, 'http://www.project.dev/wp-login.php?interim-login=1', 'http://www.project.dev/wp-admin/index.php', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56', '', NULL, NULL),
(10, 0.000000, 1464858852.038555, '\0\0\0\0\0\0\0\0\0\0ÿÿÀ¨8', 1, 200, 0, 0, 0, 'http://www.project.dev/wp-login.php', 'http://www.project.dev/wp-login.php?interim-login=1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56', '', NULL, NULL),
(11, 0.000000, 1464858857.113224, '\0\0\0\0\0\0\0\0\0\0ÿÿÀ¨8', 1, 200, 0, 0, 0, 'http://www.project.dev/wp-login.php', 'http://www.project.dev/wp-login.php', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56', '', NULL, NULL),
(12, 0.000000, 1464858863.289141, '\0\0\0\0\0\0\0\0\0\0ÿÿÀ¨8', 1, 200, 0, 1, 0, 'http://www.project.dev/wp-login.php', 'http://www.project.dev/wp-login.php', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56', 'loginOK', NULL, NULL),
(13, 0.000000, 1464870420.415059, '\0\0\0\0\0\0\0\0\0\0ÿÿÀ¨8', 1, 200, 0, 1, 0, 'http://www.project.dev/wp-login.php?action=logout&_wpnonce=8fc3279c45', 'http://www.project.dev/index.php/contactez-nous/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56', 'logout', NULL, NULL),
(14, 0.000000, 1464870421.152403, '\0\0\0\0\0\0\0\0\0\0ÿÿÀ¨8', 1, 200, 0, 0, 0, 'http://www.project.dev/wp-login.php?loggedout=true', 'http://www.project.dev/index.php/contactez-nous/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56', '', NULL, NULL),
(15, 0.000000, 1464870425.290055, '\0\0\0\0\0\0\0\0\0\0ÿÿÀ¨8', 1, 200, 0, 1, 0, 'http://www.project.dev/wp-login.php', 'http://www.project.dev/wp-login.php?loggedout=true', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56', 'loginOK', NULL, NULL);

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
(1, 4, 1464686021.160100, 0, 'logout', 'fey89', 1, '\0\0\0\0\0\0\0\0\0\0ÿÿÀ¨8', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56'),
(2, 7, 1464686039.306395, 0, 'loginOK', 'fey89', 1, '\0\0\0\0\0\0\0\0\0\0ÿÿÀ¨8', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56'),
(3, 12, 1464858863.615042, 0, 'loginOK', 'fey89', 1, '\0\0\0\0\0\0\0\0\0\0ÿÿÀ¨8', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56'),
(4, 13, 1464870420.600131, 0, 'logout', 'fey89', 1, '\0\0\0\0\0\0\0\0\0\0ÿÿÀ¨8', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56'),
(5, 15, 1464870425.564942, 0, 'loginOK', 'fey89', 1, '\0\0\0\0\0\0\0\0\0\0ÿÿÀ¨8', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56');

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

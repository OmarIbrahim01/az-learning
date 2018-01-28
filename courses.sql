-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2018 at 12:31 AM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `courses`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Category 1', '<p>This is category 1</p>', '2018-01-18 00:36:48', '2018-01-18 00:36:48'),
(2, 'Category 2', '<p>Category 2Category 2Category 2Category 2Category 2Category 2Category 2Category 2</p>', '2018-01-18 00:37:16', '2018-01-18 00:37:16'),
(3, 'Category 3', '<p>Category 3Category 3Category 3Category 3Category 3Category 3Category 3Category 3Category 3Category 3Category 3Category 3</p>', '2018-01-18 00:37:33', '2018-01-18 00:37:33'),
(4, 'Category 4', '<p>Category 4Category 4Category 4Category 4Category 4Category 4Category 4Category 4Category 4Category 4Category 4Category 4Category 4</p>', '2018-01-18 00:37:48', '2018-01-18 00:37:48'),
(5, 'Category 5', '<p>Category 5Category 5Category 5Category 5Category 5Category 5Category 5Category 5Category 5Category 5</p>', '2018-01-18 00:38:05', '2018-01-18 00:38:05');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `trailer_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `description`, `image_url`, `created_at`, `updated_at`, `category_id`, `trailer_url`) VALUES
(2, 'Course 1', '<p>Course 1Course 1Course 1Course 1Course 1Course 1Course 1Course 1Course 1Course 1Course 1Course 1Course 1Course 1Course 1Course 1Course 1Course 1Course 1Course 1Course 1Course 1Course 1Course 1Course 1Course 1Course 1Course 1Course 1Course 1</p>', 'image.jpg', '2018-01-18 00:39:00', '2018-01-18 04:25:20', 1, 'trailer.mp4'),
(3, 'Course 2', '<p>Course 2Course 2Course 2Course 2Course 2Course 2Course 2Course 2Course 2Course 2Course 2Course 2Course 2Course 2Course 2Course 2Course 2Course 2Course 2Course 2Course 2Course 2Course 2Course 2Course 2Course 2Course 2Course 2Course 2Course 2Course 2Course 2Course 2Course 2Course 2Course 2Course 2Course 2Course 2</p>', 'image.jpg', '2018-01-18 00:40:00', '2018-01-18 04:25:34', 2, 'trailer.mp4'),
(4, 'Course 3', '<p>Course 3Course 3Course 3Course 3Course 3Course 3Course 3Course 3Course 3Course 3Course 3Course 3Course 3Course 3Course 3Course 3Course 3Course 3Course 3Course 3Course 3Course 3Course 3Course 3Course 3Course 3Course 3</p>', 'image.jpg', '2018-01-18 00:40:00', '2018-01-18 04:26:32', 3, 'trailer.mp4'),
(5, 'Course 4', '<p>Course 4Course 4Course 4Course 4Course 4Course 4Course 4Course 4Course 4Course 4Course 4Course 4Course 4Course 4Course 4Course 4Course 4Course 4Course 4Course 4Course 4Course 4Course 4Course 4Course 4Course 4Course 4Course 4Course 4Course 4Course 4Course 4Course 4Course 4Course 4Course 4</p>', 'image.jpg', '2018-01-18 00:40:00', '2018-01-18 04:26:47', 1, 'trailer.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '', 2),
(3, 1, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, '', 3),
(4, 1, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 4),
(5, 1, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 5),
(6, 1, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 6),
(7, 1, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 7),
(8, 1, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{"slugify":{"origin":"title","forceUpdate":true}}', 8),
(9, 1, 'meta_description', 'text_area', 'meta_description', 1, 0, 1, 1, 1, 1, '', 9),
(10, 1, 'meta_keywords', 'text_area', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 10),
(11, 1, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{"default":"DRAFT","options":{"PUBLISHED":"published","DRAFT":"draft","PENDING":"pending"}}', 11),
(12, 1, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 12),
(13, 1, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 13),
(14, 2, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(15, 2, 'author_id', 'text', 'author_id', 1, 0, 0, 0, 0, 0, '', 2),
(16, 2, 'title', 'text', 'title', 1, 1, 1, 1, 1, 1, '', 3),
(17, 2, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(18, 2, 'body', 'rich_text_box', 'body', 1, 0, 1, 1, 1, 1, '', 5),
(19, 2, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{"slugify":{"origin":"title"}}', 6),
(20, 2, 'meta_description', 'text', 'meta_description', 1, 0, 1, 1, 1, 1, '', 7),
(21, 2, 'meta_keywords', 'text', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 8),
(22, 2, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{"default":"INACTIVE","options":{"INACTIVE":"INACTIVE","ACTIVE":"ACTIVE"}}', 9),
(23, 2, 'created_at', 'timestamp', 'created_at', 1, 1, 1, 0, 0, 0, '', 10),
(24, 2, 'updated_at', 'timestamp', 'updated_at', 1, 0, 0, 0, 0, 0, '', 11),
(25, 2, 'image', 'image', 'image', 0, 1, 1, 1, 1, 1, '', 12),
(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, '', 3),
(29, 3, 'password', 'password', 'password', 0, 0, 0, 1, 1, 0, '', 4),
(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsTo","column":"role_id","key":"id","label":"name","pivot_table":"roles","pivot":"0"}', 10),
(31, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, '', 5),
(32, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 6),
(33, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(34, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, '', 8),
(35, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(36, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(37, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(38, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(46, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(47, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(48, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(49, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(50, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(51, 1, 'seo_title', 'text', 'seo_title', 0, 1, 1, 1, 1, 1, '', 14),
(52, 1, 'featured', 'checkbox', 'featured', 1, 1, 1, 1, 1, 1, '', 15),
(53, 3, 'role_id', 'text', 'role_id', 1, 1, 1, 1, 1, 1, '', 9),
(54, 7, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(55, 7, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, NULL, 2),
(56, 7, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, NULL, 3),
(57, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 4),
(58, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(59, 8, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(60, 8, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, NULL, 2),
(61, 8, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, NULL, 3),
(62, 8, 'image_url', 'text', 'Image Url', 0, 1, 1, 1, 1, 1, NULL, 5),
(63, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 6),
(64, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(65, 9, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(66, 9, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, NULL, 3),
(67, 9, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, NULL, 4),
(68, 9, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, NULL, 5),
(69, 9, 'thumbnail_url', 'text', 'Thumbnail Url', 0, 1, 1, 1, 1, 1, NULL, 6),
(70, 9, 'course_id', 'number', 'Course Id', 0, 0, 0, 0, 0, 0, NULL, 7),
(71, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 8),
(72, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 9),
(73, 8, 'category_id', 'number', 'Category Id', 0, 0, 0, 0, 0, 0, NULL, 8),
(74, 9, 'video_belongsto_course_relationship', 'relationship', 'courses', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Course","table":"courses","type":"belongsTo","column":"course_id","key":"id","label":"name","pivot_table":"categories","pivot":"0"}', 10),
(75, 8, 'course_hasmany_video_relationship', 'relationship', 'videos', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Video","table":"videos","type":"hasMany","column":"course_id","key":"id","label":"name","pivot_table":"categories","pivot":"0"}', 9),
(76, 8, 'course_belongsto_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Category","table":"categories","type":"belongsTo","column":"category_id","key":"id","label":"name","pivot_table":"categories","pivot":"0"}', 10),
(77, 7, 'category_hasmany_course_relationship', 'relationship', 'courses', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Course","table":"courses","type":"hasMany","column":"category_id","key":"id","label":"name","pivot_table":"categories","pivot":"0"}', 6),
(78, 9, 'order', 'number', 'Order', 0, 1, 1, 1, 1, 1, NULL, 2),
(79, 8, 'trailer_url', 'text', 'Trailer Url', 0, 1, 1, 1, 1, 1, NULL, 4),
(80, 10, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(81, 10, 'user_id', 'checkbox', 'User Id', 1, 0, 0, 0, 0, 0, NULL, 2),
(82, 10, 'plan_id', 'checkbox', 'Plan Id', 1, 0, 0, 0, 0, 0, NULL, 3),
(83, 10, 'activated_at', 'timestamp', 'Activated At', 0, 1, 1, 1, 1, 1, NULL, 4),
(84, 10, 'active', 'checkbox', 'Active', 0, 1, 1, 1, 1, 1, NULL, 5),
(85, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 6),
(86, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(87, 11, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(88, 11, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(89, 11, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, NULL, 3),
(90, 11, 'duration', 'number', 'Duration', 1, 1, 1, 1, 1, 1, NULL, 4),
(91, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 5),
(92, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(93, 11, 'plan_hasmany_subscription_relationship', 'relationship', 'subscriptions', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Subscription","table":"subscriptions","type":"hasMany","column":"plan_id","key":"id","label":"id","pivot_table":"categories","pivot":"0"}', 7),
(94, 10, 'subscription_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\User","table":"users","type":"belongsTo","column":"user_id","key":"id","label":"name","pivot_table":"categories","pivot":"0"}', 8),
(95, 10, 'subscription_belongsto_plan_relationship', 'relationship', 'plans', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Plan","table":"plans","type":"belongsTo","column":"plan_id","key":"id","label":"name","pivot_table":"categories","pivot":"0"}', 9),
(96, 10, 'mobile', 'text', 'Mobile', 1, 1, 1, 1, 1, 1, NULL, 8),
(97, 10, 'end_date', 'timestamp', 'End Date', 0, 1, 1, 1, 1, 1, NULL, 9);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, '2018-01-13 21:48:42', '2018-01-13 21:48:42'),
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, '2018-01-13 21:48:42', '2018-01-13 21:48:42'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, '2018-01-13 21:48:42', '2018-01-13 21:48:42'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, '2018-01-13 21:48:42', '2018-01-13 21:48:42'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, '2018-01-13 21:48:42', '2018-01-13 21:48:42'),
(7, 'categories', 'categories', 'Category', 'Categories', NULL, 'App\\Category', NULL, NULL, NULL, 1, 0, '2018-01-17 22:58:58', '2018-01-17 22:58:58'),
(8, 'courses', 'courses', 'Course', 'Courses', NULL, 'App\\Course', NULL, NULL, NULL, 1, 0, '2018-01-17 23:00:06', '2018-01-17 23:00:06'),
(9, 'videos', 'videos', 'Video', 'Videos', NULL, 'App\\Video', NULL, NULL, NULL, 1, 0, '2018-01-17 23:13:27', '2018-01-17 23:13:27'),
(10, 'subscriptions', 'subscriptions', 'Subscription', 'Subscriptions', NULL, 'App\\Subscription', NULL, NULL, NULL, 1, 0, '2018-01-26 14:34:16', '2018-01-26 14:34:16'),
(11, 'plans', 'plans', 'Plan', 'Plans', NULL, 'App\\Plan', NULL, NULL, NULL, 1, 0, '2018-01-26 14:34:52', '2018-01-26 14:34:52');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-01-13 21:48:44', '2018-01-13 21:48:44');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-01-13 21:48:44', '2018-01-13 21:48:44', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2018-01-13 21:48:44', '2018-01-13 21:48:44', 'voyager.media.index', NULL),
(3, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2018-01-13 21:48:44', '2018-01-13 21:48:44', 'voyager.posts.index', NULL),
(4, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2018-01-13 21:48:44', '2018-01-13 21:48:44', 'voyager.users.index', NULL),
(5, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2018-01-13 21:48:44', '2018-01-13 21:48:44', 'voyager.categories.index', NULL),
(6, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2018-01-13 21:48:44', '2018-01-13 21:48:44', 'voyager.pages.index', NULL),
(7, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-01-13 21:48:44', '2018-01-13 21:48:44', 'voyager.roles.index', NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2018-01-13 21:48:44', '2018-01-13 21:48:44', NULL, NULL),
(9, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 8, 10, '2018-01-13 21:48:44', '2018-01-13 21:48:44', 'voyager.menus.index', NULL),
(10, 1, 'Database', '', '_self', 'voyager-data', NULL, 8, 11, '2018-01-13 21:48:44', '2018-01-13 21:48:44', 'voyager.database.index', NULL),
(11, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 8, 12, '2018-01-13 21:48:44', '2018-01-13 21:48:44', 'voyager.compass.index', NULL),
(12, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 8, 13, '2018-01-13 21:48:44', '2018-01-13 21:48:44', 'voyager.hooks', NULL),
(13, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2018-01-13 21:48:44', '2018-01-13 21:48:44', 'voyager.settings.index', NULL),
(14, 1, 'Categories', '/admin/categories', '_self', NULL, NULL, NULL, 15, '2018-01-17 22:58:58', '2018-01-17 22:58:58', NULL, NULL),
(15, 1, 'Courses', '/admin/courses', '_self', NULL, NULL, NULL, 16, '2018-01-17 23:00:06', '2018-01-17 23:00:06', NULL, NULL),
(16, 1, 'Videos', '/admin/videos', '_self', NULL, NULL, NULL, 17, '2018-01-17 23:13:28', '2018-01-17 23:13:28', NULL, NULL),
(17, 1, 'Subscriptions', '/admin/subscriptions', '_self', NULL, NULL, NULL, 18, '2018-01-26 14:34:17', '2018-01-26 14:34:17', NULL, NULL),
(18, 1, 'Plans', '/admin/plans', '_self', NULL, NULL, NULL, 19, '2018-01-26 14:34:53', '2018-01-26 14:34:53', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(17, '2017_01_15_000000_create_permission_groups_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(21, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(22, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(23, '2017_08_05_000000_add_group_to_settings_table', 1),
(24, '2018_01_26_161653_create_subscriptions_table', 2),
(25, '2018_01_26_162429_create_plans_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2018-01-13 21:48:48', '2018-01-13 21:48:48');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2018-01-13 21:48:45', '2018-01-13 21:48:45', NULL),
(2, 'browse_database', NULL, '2018-01-13 21:48:45', '2018-01-13 21:48:45', NULL),
(3, 'browse_media', NULL, '2018-01-13 21:48:45', '2018-01-13 21:48:45', NULL),
(4, 'browse_compass', NULL, '2018-01-13 21:48:45', '2018-01-13 21:48:45', NULL),
(5, 'browse_menus', 'menus', '2018-01-13 21:48:45', '2018-01-13 21:48:45', NULL),
(6, 'read_menus', 'menus', '2018-01-13 21:48:45', '2018-01-13 21:48:45', NULL),
(7, 'edit_menus', 'menus', '2018-01-13 21:48:45', '2018-01-13 21:48:45', NULL),
(8, 'add_menus', 'menus', '2018-01-13 21:48:45', '2018-01-13 21:48:45', NULL),
(9, 'delete_menus', 'menus', '2018-01-13 21:48:45', '2018-01-13 21:48:45', NULL),
(10, 'browse_pages', 'pages', '2018-01-13 21:48:45', '2018-01-13 21:48:45', NULL),
(11, 'read_pages', 'pages', '2018-01-13 21:48:45', '2018-01-13 21:48:45', NULL),
(12, 'edit_pages', 'pages', '2018-01-13 21:48:45', '2018-01-13 21:48:45', NULL),
(13, 'add_pages', 'pages', '2018-01-13 21:48:45', '2018-01-13 21:48:45', NULL),
(14, 'delete_pages', 'pages', '2018-01-13 21:48:45', '2018-01-13 21:48:45', NULL),
(15, 'browse_roles', 'roles', '2018-01-13 21:48:45', '2018-01-13 21:48:45', NULL),
(16, 'read_roles', 'roles', '2018-01-13 21:48:45', '2018-01-13 21:48:45', NULL),
(17, 'edit_roles', 'roles', '2018-01-13 21:48:45', '2018-01-13 21:48:45', NULL),
(18, 'add_roles', 'roles', '2018-01-13 21:48:45', '2018-01-13 21:48:45', NULL),
(19, 'delete_roles', 'roles', '2018-01-13 21:48:45', '2018-01-13 21:48:45', NULL),
(20, 'browse_users', 'users', '2018-01-13 21:48:45', '2018-01-13 21:48:45', NULL),
(21, 'read_users', 'users', '2018-01-13 21:48:45', '2018-01-13 21:48:45', NULL),
(22, 'edit_users', 'users', '2018-01-13 21:48:45', '2018-01-13 21:48:45', NULL),
(23, 'add_users', 'users', '2018-01-13 21:48:46', '2018-01-13 21:48:46', NULL),
(24, 'delete_users', 'users', '2018-01-13 21:48:46', '2018-01-13 21:48:46', NULL),
(25, 'browse_posts', 'posts', '2018-01-13 21:48:46', '2018-01-13 21:48:46', NULL),
(26, 'read_posts', 'posts', '2018-01-13 21:48:46', '2018-01-13 21:48:46', NULL),
(27, 'edit_posts', 'posts', '2018-01-13 21:48:46', '2018-01-13 21:48:46', NULL),
(28, 'add_posts', 'posts', '2018-01-13 21:48:46', '2018-01-13 21:48:46', NULL),
(29, 'delete_posts', 'posts', '2018-01-13 21:48:46', '2018-01-13 21:48:46', NULL),
(35, 'browse_settings', 'settings', '2018-01-13 21:48:46', '2018-01-13 21:48:46', NULL),
(36, 'read_settings', 'settings', '2018-01-13 21:48:46', '2018-01-13 21:48:46', NULL),
(37, 'edit_settings', 'settings', '2018-01-13 21:48:46', '2018-01-13 21:48:46', NULL),
(38, 'add_settings', 'settings', '2018-01-13 21:48:46', '2018-01-13 21:48:46', NULL),
(39, 'delete_settings', 'settings', '2018-01-13 21:48:46', '2018-01-13 21:48:46', NULL),
(40, 'browse_categories', 'categories', '2018-01-17 22:58:58', '2018-01-17 22:58:58', NULL),
(41, 'read_categories', 'categories', '2018-01-17 22:58:58', '2018-01-17 22:58:58', NULL),
(42, 'edit_categories', 'categories', '2018-01-17 22:58:58', '2018-01-17 22:58:58', NULL),
(43, 'add_categories', 'categories', '2018-01-17 22:58:58', '2018-01-17 22:58:58', NULL),
(44, 'delete_categories', 'categories', '2018-01-17 22:58:58', '2018-01-17 22:58:58', NULL),
(45, 'browse_courses', 'courses', '2018-01-17 23:00:06', '2018-01-17 23:00:06', NULL),
(46, 'read_courses', 'courses', '2018-01-17 23:00:06', '2018-01-17 23:00:06', NULL),
(47, 'edit_courses', 'courses', '2018-01-17 23:00:06', '2018-01-17 23:00:06', NULL),
(48, 'add_courses', 'courses', '2018-01-17 23:00:06', '2018-01-17 23:00:06', NULL),
(49, 'delete_courses', 'courses', '2018-01-17 23:00:06', '2018-01-17 23:00:06', NULL),
(50, 'browse_videos', 'videos', '2018-01-17 23:13:28', '2018-01-17 23:13:28', NULL),
(51, 'read_videos', 'videos', '2018-01-17 23:13:28', '2018-01-17 23:13:28', NULL),
(52, 'edit_videos', 'videos', '2018-01-17 23:13:28', '2018-01-17 23:13:28', NULL),
(53, 'add_videos', 'videos', '2018-01-17 23:13:28', '2018-01-17 23:13:28', NULL),
(54, 'delete_videos', 'videos', '2018-01-17 23:13:28', '2018-01-17 23:13:28', NULL),
(55, 'browse_subscriptions', 'subscriptions', '2018-01-26 14:34:17', '2018-01-26 14:34:17', NULL),
(56, 'read_subscriptions', 'subscriptions', '2018-01-26 14:34:17', '2018-01-26 14:34:17', NULL),
(57, 'edit_subscriptions', 'subscriptions', '2018-01-26 14:34:17', '2018-01-26 14:34:17', NULL),
(58, 'add_subscriptions', 'subscriptions', '2018-01-26 14:34:17', '2018-01-26 14:34:17', NULL),
(59, 'delete_subscriptions', 'subscriptions', '2018-01-26 14:34:17', '2018-01-26 14:34:17', NULL),
(60, 'browse_plans', 'plans', '2018-01-26 14:34:53', '2018-01-26 14:34:53', NULL),
(61, 'read_plans', 'plans', '2018-01-26 14:34:53', '2018-01-26 14:34:53', NULL),
(62, 'edit_plans', 'plans', '2018-01-26 14:34:53', '2018-01-26 14:34:53', NULL),
(63, 'add_plans', 'plans', '2018-01-26 14:34:53', '2018-01-26 14:34:53', NULL),
(64, 'delete_plans', 'plans', '2018-01-26 14:34:53', '2018-01-26 14:34:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1);

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `duration` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `price`, `duration`, `created_at`, `updated_at`) VALUES
(1, '1 Month', 300.00, 1, '2018-01-26 14:39:59', '2018-01-26 14:39:59'),
(2, '3 Months', 500.00, 3, '2018-01-26 14:40:22', '2018-01-26 14:40:22'),
(3, '6 Month', 1000.00, 6, '2018-01-26 14:40:47', '2018-01-26 14:40:47'),
(4, '1 Year', 2000.00, 12, '2018-01-26 14:41:06', '2018-01-26 14:41:06');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-01-13 21:48:48', '2018-01-13 21:48:48'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-01-13 21:48:48', '2018-01-13 21:48:48'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-01-13 21:48:48', '2018-01-13 21:48:48'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-01-13 21:48:48', '2018-01-13 21:48:48');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-01-13 21:48:44', '2018-01-13 21:48:44'),
(2, 'user', 'Normal User', '2018-01-13 21:48:45', '2018-01-13 21:48:45');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mobile` int(11) NOT NULL,
  `end_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `user_id`, `plan_id`, `activated_at`, `active`, `created_at`, `updated_at`, `mobile`, `end_date`) VALUES
(1, 1, 4, '2018-01-20 21:48:48', 1, '2018-01-26 14:45:00', '2018-01-27 15:29:49', 555555, '2020-01-13 21:48:00'),
(2, 2, 1, '2017-12-26 21:48:48', 0, '2018-01-27 15:22:00', '2018-01-27 21:48:56', 5555555, '2018-01-26 21:48:48');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 1, 'pt', 'Post', '2018-01-13 21:48:49', '2018-01-13 21:48:49'),
(2, 'data_types', 'display_name_singular', 2, 'pt', 'Página', '2018-01-13 21:48:49', '2018-01-13 21:48:49'),
(3, 'data_types', 'display_name_singular', 3, 'pt', 'Utilizador', '2018-01-13 21:48:49', '2018-01-13 21:48:49'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2018-01-13 21:48:49', '2018-01-13 21:48:49'),
(5, 'data_types', 'display_name_singular', 5, 'pt', 'Menu', '2018-01-13 21:48:49', '2018-01-13 21:48:49'),
(6, 'data_types', 'display_name_singular', 6, 'pt', 'Função', '2018-01-13 21:48:49', '2018-01-13 21:48:49'),
(7, 'data_types', 'display_name_plural', 1, 'pt', 'Posts', '2018-01-13 21:48:49', '2018-01-13 21:48:49'),
(8, 'data_types', 'display_name_plural', 2, 'pt', 'Páginas', '2018-01-13 21:48:49', '2018-01-13 21:48:49'),
(9, 'data_types', 'display_name_plural', 3, 'pt', 'Utilizadores', '2018-01-13 21:48:49', '2018-01-13 21:48:49'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2018-01-13 21:48:49', '2018-01-13 21:48:49'),
(11, 'data_types', 'display_name_plural', 5, 'pt', 'Menus', '2018-01-13 21:48:49', '2018-01-13 21:48:49'),
(12, 'data_types', 'display_name_plural', 6, 'pt', 'Funções', '2018-01-13 21:48:49', '2018-01-13 21:48:49'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2018-01-13 21:48:49', '2018-01-13 21:48:49'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2018-01-13 21:48:49', '2018-01-13 21:48:49'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2018-01-13 21:48:49', '2018-01-13 21:48:49'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2018-01-13 21:48:49', '2018-01-13 21:48:49'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2018-01-13 21:48:49', '2018-01-13 21:48:49'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2018-01-13 21:48:49', '2018-01-13 21:48:49'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-01-13 21:48:49', '2018-01-13 21:48:49'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2018-01-13 21:48:49', '2018-01-13 21:48:49'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2018-01-13 21:48:49', '2018-01-13 21:48:49'),
(22, 'menu_items', 'title', 3, 'pt', 'Publicações', '2018-01-13 21:48:49', '2018-01-13 21:48:49'),
(23, 'menu_items', 'title', 4, 'pt', 'Utilizadores', '2018-01-13 21:48:49', '2018-01-13 21:48:49'),
(24, 'menu_items', 'title', 5, 'pt', 'Categorias', '2018-01-13 21:48:49', '2018-01-13 21:48:49'),
(25, 'menu_items', 'title', 6, 'pt', 'Páginas', '2018-01-13 21:48:49', '2018-01-13 21:48:49'),
(26, 'menu_items', 'title', 7, 'pt', 'Funções', '2018-01-13 21:48:49', '2018-01-13 21:48:49'),
(27, 'menu_items', 'title', 8, 'pt', 'Ferramentas', '2018-01-13 21:48:50', '2018-01-13 21:48:50'),
(28, 'menu_items', 'title', 9, 'pt', 'Menus', '2018-01-13 21:48:50', '2018-01-13 21:48:50'),
(29, 'menu_items', 'title', 10, 'pt', 'Base de dados', '2018-01-13 21:48:50', '2018-01-13 21:48:50'),
(30, 'menu_items', 'title', 13, 'pt', 'Configurações', '2018-01-13 21:48:50', '2018-01-13 21:48:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$9BNEA56Ppf64BaE2rjIwPuCEIGnIONlEqYDymNbrPj4yxa9qF8xZ2', 'HlCL9SvcGY2vsm3zJDIFg8zCvGoEiwaBGwqcnAvRP3drWJksOalcKdeLgqZz', '2018-01-13 21:48:48', '2018-01-13 21:48:48'),
(2, 2, 'omar', 'omar@live.com', 'users/default.png', '$2y$10$ZCZEtRXbtUEnjlY.572qXOH8giJwaNqVzARqRVtKumN6xp1PQKxyu', 'nRROzyQpaZ4dP2gdUw5c7mg2wG3sZAp061p69TLXCRcvvD1eYoU5GqATGZac', '2018-01-27 15:13:42', '2018-01-27 15:13:42');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `name`, `description`, `url`, `thumbnail_url`, `course_id`, `created_at`, `updated_at`, `order`) VALUES
(1, 'Video 1', '<p>Video 1Video 1Video 1Video 1Video 1Video 1Video 1Video 1Video 1Video 1Video 1Video 1Video 1Video 1Video 1Video 1Video 1Video 1Video 1Video 1Video 1</p>', 'video_1.mp4', 'Video_1.jpg', 2, '2018-01-18 00:45:00', '2018-01-18 04:05:40', 1),
(2, 'Video 2', '<p>Video 2Video 2Video 2Video 2Video 2Video 2Video 2Video 2Video 2Video 2Video 2Video 2Video 2Video 2Video 2Video 2Video 2Video 2Video 2Video 2Video 2Video 2Video 2Video 2Video 2Video 2Video 2</p>', 'video_1.mp4', 'video_1.jpg', 3, '2018-01-18 00:46:00', '2018-01-18 04:04:48', 2),
(3, 'video 3', '<p>video 3video 3video 3video 3video 3video 3video 3video 3video 3video 3video 3video 3video 3video 3video 3video 3video 3video 3video 3video 3video 3video 3video 3</p>', NULL, NULL, 2, '2018-01-18 04:09:41', '2018-01-18 04:09:41', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

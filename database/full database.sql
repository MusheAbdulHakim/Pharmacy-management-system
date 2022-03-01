-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 01, 2022 at 01:12 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy-dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'possimus', '2022-02-11 12:40:13', '2022-02-11 12:40:13'),
(3, 'consequatur', '2022-02-11 12:40:13', '2022-02-11 12:40:13'),
(4, 'enim', '2022-02-11 12:40:13', '2022-02-11 12:40:13'),
(5, 'voluptas', '2022-02-11 12:40:13', '2022-02-11 12:40:13'),
(6, 'ut', '2022-02-11 12:40:13', '2022-02-11 12:40:13'),
(7, 'ad', '2022-02-11 12:40:13', '2022-02-11 12:40:13'),
(8, 'accusantium', '2022-02-11 12:40:13', '2022-02-11 12:40:13'),
(9, 'autem', '2022-02-11 12:40:13', '2022-02-11 12:40:13'),
(10, 'id', '2022-02-11 12:40:13', '2022-02-11 12:40:13'),
(11, 'perferendis', '2022-02-11 12:40:13', '2022-02-11 12:40:13'),
(12, 'sunt', '2022-02-11 14:16:59', '2022-02-11 14:16:59'),
(13, 'et', '2022-02-11 14:16:59', '2022-02-11 14:16:59'),
(14, 'repellat', '2022-02-11 14:16:59', '2022-02-11 14:16:59'),
(15, 'molestiae', '2022-02-11 14:16:59', '2022-02-11 14:16:59'),
(16, 'exercitationem', '2022-02-11 14:16:59', '2022-02-11 14:16:59'),
(17, 'aut', '2022-02-11 14:16:59', '2022-02-11 14:16:59'),
(18, 'praesentium', '2022-02-11 14:16:59', '2022-02-11 14:16:59'),
(19, 'asperiores', '2022-02-11 14:16:59', '2022-02-11 14:16:59'),
(20, 'tempore', '2022-02-11 14:16:59', '2022-02-11 14:16:59'),
(21, 'exercitationem', '2022-02-11 14:16:59', '2022-02-11 14:16:59'),
(22, 'velit', '2022-02-11 14:17:18', '2022-02-11 14:17:18'),
(23, 'aperiam', '2022-02-11 14:17:18', '2022-02-11 14:17:18'),
(24, 'autem', '2022-02-11 14:17:18', '2022-02-11 14:17:18'),
(25, 'quia', '2022-02-11 14:17:18', '2022-02-11 14:17:18'),
(26, 'nesciunt', '2022-02-11 14:17:18', '2022-02-11 14:17:18'),
(27, 'est', '2022-02-11 14:17:18', '2022-02-11 14:17:18'),
(28, 'nobis', '2022-02-11 14:17:18', '2022-02-11 14:17:18'),
(29, 'iste', '2022-02-11 14:17:18', '2022-02-11 14:17:18'),
(30, 'rerum', '2022-02-11 14:17:18', '2022-02-11 14:17:18'),
(31, 'qui', '2022-02-11 14:17:18', '2022-02-11 14:17:18'),
(32, 'inventore', '2022-02-11 14:18:06', '2022-02-11 14:18:06'),
(33, 'harum', '2022-02-11 14:18:06', '2022-02-11 14:18:06'),
(34, 'qui', '2022-02-11 14:18:06', '2022-02-11 14:18:06'),
(35, 'commodi', '2022-02-11 14:18:06', '2022-02-11 14:18:06'),
(36, 'deserunt', '2022-02-11 14:18:06', '2022-02-11 14:18:06'),
(37, 'eveniet', '2022-02-11 14:18:06', '2022-02-11 14:18:06'),
(38, 'atque', '2022-02-11 14:18:06', '2022-02-11 14:18:06'),
(39, 'itaque', '2022-02-11 14:18:06', '2022-02-11 14:18:06'),
(40, 'quaerat', '2022-02-11 14:18:06', '2022-02-11 14:18:06'),
(41, 'aut', '2022-02-11 14:18:06', '2022-02-11 14:18:06'),
(42, 'eaque', '2022-02-11 14:18:41', '2022-02-11 14:18:41'),
(43, 'tempora', '2022-02-11 14:18:41', '2022-02-11 14:18:41'),
(44, 'ratione', '2022-02-11 14:18:41', '2022-02-11 14:18:41'),
(45, 'harum', '2022-02-11 14:18:41', '2022-02-11 14:18:41'),
(46, 'dolorem', '2022-02-11 14:18:41', '2022-02-11 14:18:41'),
(47, 'odit', '2022-02-11 14:18:41', '2022-02-11 14:18:41'),
(48, 'molestiae', '2022-02-11 14:18:41', '2022-02-11 14:18:41'),
(49, 'facere', '2022-02-11 14:18:41', '2022-02-11 14:18:41'),
(50, 'ea', '2022-02-11 14:18:41', '2022-02-11 14:18:41'),
(51, 'necessitatibus', '2022-02-11 14:18:41', '2022-02-11 14:18:41'),
(52, 'necessitatibus', '2022-02-11 14:19:47', '2022-02-11 14:19:47'),
(53, 'accusantium', '2022-02-11 14:19:47', '2022-02-11 14:19:47'),
(54, 'maiores', '2022-02-11 14:19:47', '2022-02-11 14:19:47'),
(55, 'eligendi', '2022-02-11 14:19:47', '2022-02-11 14:19:47'),
(56, 'nulla', '2022-02-11 14:19:47', '2022-02-11 14:19:47'),
(57, 'ducimus', '2022-02-11 14:19:47', '2022-02-11 14:19:47'),
(58, 'aut', '2022-02-11 14:19:47', '2022-02-11 14:19:47'),
(59, 'deserunt', '2022-02-11 14:19:47', '2022-02-11 14:19:47'),
(60, 'tenetur', '2022-02-11 14:19:47', '2022-02-11 14:19:47'),
(61, 'veniam', '2022-02-11 14:19:47', '2022-02-11 14:19:47'),
(62, 'veniam', '2022-02-11 14:23:23', '2022-02-11 14:23:23'),
(63, 'molestiae', '2022-02-11 14:23:23', '2022-02-11 14:23:23'),
(64, 'similique', '2022-02-11 14:23:23', '2022-02-11 14:23:23'),
(65, 'culpa', '2022-02-11 14:23:23', '2022-02-11 14:23:23'),
(66, 'nulla', '2022-02-11 14:23:23', '2022-02-11 14:23:23'),
(67, 'et', '2022-02-11 14:23:23', '2022-02-11 14:23:23'),
(68, 'ullam', '2022-02-11 14:23:23', '2022-02-11 14:23:23'),
(69, 'quia', '2022-02-11 14:23:24', '2022-02-11 14:23:24'),
(70, 'odio', '2022-02-11 14:23:24', '2022-02-11 14:23:24'),
(71, 'animi', '2022-02-11 14:23:24', '2022-02-11 14:23:24'),
(72, 'sed', '2022-02-11 14:23:32', '2022-02-11 14:23:32'),
(73, 'suscipit', '2022-02-11 14:23:32', '2022-02-11 14:23:32'),
(74, 'hic', '2022-02-11 14:23:32', '2022-02-11 14:23:32'),
(75, 'quos', '2022-02-11 14:23:32', '2022-02-11 14:23:32'),
(76, 'sint', '2022-02-11 14:23:32', '2022-02-11 14:23:32'),
(77, 'in', '2022-02-11 14:23:32', '2022-02-11 14:23:32'),
(78, 'soluta', '2022-02-11 14:23:32', '2022-02-11 14:23:32'),
(79, 'qui', '2022-02-11 14:23:32', '2022-02-11 14:23:32'),
(80, 'placeat', '2022-02-11 14:23:32', '2022-02-11 14:23:32'),
(81, 'rem', '2022-02-11 14:23:32', '2022-02-11 14:23:32'),
(82, 'sint', '2022-02-11 14:24:21', '2022-02-11 14:24:21'),
(83, 'ea', '2022-02-11 14:24:21', '2022-02-11 14:24:21'),
(84, 'neque', '2022-02-11 14:24:21', '2022-02-11 14:24:21'),
(85, 'vitae', '2022-02-11 14:24:21', '2022-02-11 14:24:21'),
(86, 'quidem', '2022-02-11 14:24:21', '2022-02-11 14:24:21'),
(87, 'soluta', '2022-02-11 14:24:21', '2022-02-11 14:24:21'),
(88, 'assumenda', '2022-02-11 14:24:21', '2022-02-11 14:24:21'),
(89, 'nemo', '2022-02-11 14:24:21', '2022-02-11 14:24:21'),
(90, 'temporibus', '2022-02-11 14:24:21', '2022-02-11 14:24:21'),
(91, 'et', '2022-02-11 14:24:21', '2022-02-11 14:24:21'),
(92, 'placeat', '2022-02-11 14:24:50', '2022-02-11 14:24:50'),
(93, 'qui', '2022-02-11 14:24:50', '2022-02-11 14:24:50'),
(94, 'ullam', '2022-02-11 14:24:50', '2022-02-11 14:24:50'),
(95, 'atque', '2022-02-11 14:24:50', '2022-02-11 14:24:50'),
(96, 'consequatur', '2022-02-11 14:24:50', '2022-02-11 14:24:50'),
(97, 'repudiandae', '2022-02-11 14:24:50', '2022-02-11 14:24:50'),
(98, 'temporibus', '2022-02-11 14:24:50', '2022-02-11 14:24:50'),
(99, 'repellat', '2022-02-11 14:24:50', '2022-02-11 14:24:50'),
(100, 'consequatur', '2022-02-11 14:24:50', '2022-02-11 14:24:50'),
(101, 'inventore', '2022-02-11 14:24:50', '2022-02-11 14:24:50'),
(102, 'repellendus', '2022-02-11 14:27:37', '2022-02-11 14:27:37'),
(103, 'vero', '2022-02-11 14:27:37', '2022-02-11 14:27:37'),
(104, 'aut', '2022-02-11 14:27:37', '2022-02-11 14:27:37'),
(105, 'sed', '2022-02-11 14:27:37', '2022-02-11 14:27:37'),
(106, 'autem', '2022-02-11 14:27:37', '2022-02-11 14:27:37'),
(107, 'architecto', '2022-02-11 14:27:37', '2022-02-11 14:27:37'),
(108, 'ad', '2022-02-11 14:27:37', '2022-02-11 14:27:37'),
(109, 'consequatur', '2022-02-11 14:27:37', '2022-02-11 14:27:37'),
(110, 'quo', '2022-02-11 14:27:37', '2022-02-11 14:27:37'),
(111, 'qui', '2022-02-11 14:27:37', '2022-02-11 14:27:37'),
(112, 'sint', '2022-02-15 14:04:35', '2022-02-15 14:04:35'),
(113, 'est', '2022-02-15 14:04:35', '2022-02-15 14:04:35'),
(114, 'voluptas', '2022-02-15 14:04:35', '2022-02-15 14:04:35'),
(115, 'aut', '2022-02-15 14:04:35', '2022-02-15 14:04:35'),
(116, 'quidem', '2022-02-15 14:04:35', '2022-02-15 14:04:35'),
(117, 'veritatis', '2022-02-15 14:04:35', '2022-02-15 14:04:35'),
(118, 'natus', '2022-02-15 14:04:35', '2022-02-15 14:04:35'),
(119, 'quia', '2022-02-15 14:04:35', '2022-02-15 14:04:35'),
(120, 'minus', '2022-02-15 14:04:35', '2022-02-15 14:04:35'),
(121, 'quaerat', '2022-02-15 14:04:35', '2022-02-15 14:04:35'),
(122, 'et', '2022-02-17 15:31:06', '2022-02-17 15:31:06'),
(123, 'aliquid', '2022-02-17 15:31:06', '2022-02-17 15:31:06'),
(124, 'odit', '2022-02-17 15:31:06', '2022-02-17 15:31:06'),
(125, 'ullam', '2022-02-17 15:31:06', '2022-02-17 15:31:06'),
(126, 'consequatur', '2022-02-17 15:31:06', '2022-02-17 15:31:06'),
(127, 'ut', '2022-02-17 15:31:06', '2022-02-17 15:31:06'),
(128, 'ipsa', '2022-02-17 15:31:06', '2022-02-17 15:31:06'),
(129, 'consectetur', '2022-02-17 15:31:06', '2022-02-17 15:31:06'),
(130, 'est', '2022-02-17 15:31:06', '2022-02-17 15:31:06'),
(131, 'et', '2022-02-17 15:31:06', '2022-02-17 15:31:06'),
(132, 'ipsum', '2022-02-17 15:42:14', '2022-02-17 15:42:14'),
(133, 'voluptatum', '2022-02-17 15:42:14', '2022-02-17 15:42:14'),
(134, 'assumenda', '2022-02-17 15:42:14', '2022-02-17 15:42:14'),
(135, 'odio', '2022-02-17 15:42:14', '2022-02-17 15:42:14'),
(136, 'delectus', '2022-02-17 15:42:14', '2022-02-17 15:42:14'),
(137, 'dolor', '2022-02-17 15:42:14', '2022-02-17 15:42:14'),
(138, 'velit', '2022-02-17 15:42:14', '2022-02-17 15:42:14'),
(139, 'ut', '2022-02-17 15:42:14', '2022-02-17 15:42:14'),
(140, 'exercitationem', '2022-02-17 15:42:14', '2022-02-17 15:42:14'),
(141, 'repudiandae', '2022-02-17 15:42:14', '2022-02-17 15:42:14'),
(142, 'voluptatum', '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(143, 'corrupti', '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(144, 'et', '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(145, 'aperiam', '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(146, 'ratione', '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(147, 'cum', '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(148, 'est', '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(149, 'nihil', '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(150, 'saepe', '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(151, 'voluptas', '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(152, 'illum', '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(153, 'voluptatum', '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(154, 'earum', '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(155, 'enim', '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(156, 'odio', '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(157, 'temporibus', '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(158, 'et', '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(159, 'error', '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(160, 'neque', '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(161, 'architecto', '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(162, 'qui', '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(163, 'quae', '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(164, 'qui', '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(165, 'est', '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(166, 'quisquam', '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(167, 'quis', '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(168, 'maiores', '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(169, 'accusantium', '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(170, 'id', '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(171, 'consequuntur', '2022-02-18 16:37:15', '2022-02-18 16:37:15');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_00_000000_create_settings_table', 1),
(2, '2014_10_00_000001_add_group_column_on_settings_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2022_02_08_163417_create_notifications_table', 1),
(8, '2022_02_08_164147_create_permission_tables', 1),
(9, '2022_02_09_140912_add_avatar_column_to_users_table', 2),
(10, '2022_02_09_150108_create_suppliers_table', 3),
(13, '2022_02_11_121758_create_categories_table', 4),
(14, '2022_02_11_124140_create_purchases_table', 5),
(17, '2022_02_17_150256_create_products_table', 6),
(18, '2022_02_18_153409_create_sales_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view-sales', 'web', NULL, NULL),
(2, 'create-sale', 'web', NULL, '2022-02-18 16:06:55'),
(3, 'destroy-sale', 'web', NULL, NULL),
(4, 'edit-sale', 'web', NULL, '2022-02-18 16:07:04'),
(5, 'view-reports', 'web', NULL, NULL),
(6, 'view-category', 'web', NULL, NULL),
(7, 'create-category', 'web', NULL, NULL),
(8, 'destroy-category', 'web', NULL, NULL),
(9, 'edit-category', 'web', NULL, NULL),
(10, 'view-products', 'web', NULL, NULL),
(11, 'create-product', 'web', NULL, NULL),
(12, 'edit-product', 'web', NULL, NULL),
(13, 'destroy-product', 'web', NULL, NULL),
(14, 'view-purchase', 'web', NULL, NULL),
(15, 'create-purchase', 'web', NULL, NULL),
(16, 'edit-purchase', 'web', NULL, NULL),
(17, 'destroy-purchase', 'web', NULL, NULL),
(18, 'view-supplier', 'web', NULL, NULL),
(19, 'create-supplier', 'web', NULL, NULL),
(20, 'edit-supplier', 'web', NULL, NULL),
(21, 'destroy-supplier', 'web', NULL, NULL),
(22, 'view-users', 'web', NULL, NULL),
(23, 'create-user', 'web', NULL, NULL),
(24, 'edit-user', 'web', NULL, NULL),
(25, 'destroy-user', 'web', NULL, NULL),
(26, 'view-access-control', 'web', NULL, NULL),
(27, 'view-role', 'web', NULL, NULL),
(28, 'edit-role', 'web', NULL, NULL),
(29, 'destroy-role', 'web', NULL, NULL),
(30, 'create-role', 'web', NULL, NULL),
(31, 'view-permission', 'web', NULL, NULL),
(32, 'create-permission', 'web', NULL, NULL),
(33, 'edit-permission', 'web', NULL, NULL),
(34, 'destroy-permission', 'web', NULL, NULL),
(35, 'view-expired-products', 'web', NULL, NULL),
(36, 'view-outstock-products', 'web', NULL, NULL),
(37, 'backup-app', 'web', NULL, NULL),
(38, 'backup-db', 'web', NULL, NULL),
(39, 'view-settings', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `purchase_id`, `price`, `discount`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 30, '77.00', '0.00', 'Quae odit excepturi in non. Eum facilis voluptates debitis facilis facilis minima beatae.', NULL, '2022-02-17 15:42:14', '2022-02-17 15:42:14'),
(2, 31, '111.00', '0.00', 'Velit dolores expedita enim provident. Est eaque tenetur quia. Hic nobis quo voluptatum perferendis magnam. Enim error nostrum ex vel aut esse.', NULL, '2022-02-17 15:42:14', '2022-02-17 15:42:14'),
(3, 32, '140.00', '0.00', 'Aspernatur hic qui nam ullam facere illum. Sed itaque eaque voluptatem debitis. Assumenda sed saepe delectus totam asperiores quia voluptatum.', NULL, '2022-02-17 15:42:14', '2022-02-17 15:42:14'),
(4, 33, '68.00', '0.00', 'Rerum consectetur veritatis quo rerum. Repellendus minima voluptatem molestiae nulla temporibus aut et. Eligendi ab libero accusantium aut quo repellat. Ut voluptatibus cumque nihil tempore non corporis et.', '2022-02-17 15:49:34', '2022-02-17 15:42:14', '2022-02-17 15:49:34'),
(5, 34, '127.00', '0.00', 'Delectus corporis voluptatem odio modi saepe animi omnis. Non natus numquam quam facere non.', NULL, '2022-02-17 15:42:14', '2022-02-17 15:42:14'),
(6, 35, '12.00', '0.00', 'Enim laboriosam quo quo exercitationem voluptate. Quam ut recusandae officiis iure. Rerum saepe aspernatur enim nostrum. Vitae explicabo ratione distinctio aut dignissimos.', '2022-02-17 15:43:56', '2022-02-17 15:42:14', '2022-02-17 15:43:56'),
(7, 36, '61.00', '0.00', 'Cum itaque veniam aut tempore et cum. Aut reiciendis aut vel autem veniam id qui.', NULL, '2022-02-17 15:42:14', '2022-02-17 15:42:14'),
(8, 37, '29.00', '0.00', 'Nihil perferendis voluptas aut ab tempora ipsa molestiae. Quisquam expedita beatae non beatae voluptatibus officiis. Natus minima est minima excepturi eum et accusantium. Dignissimos et ex illo.', NULL, '2022-02-17 15:42:14', '2022-02-17 15:42:14'),
(9, 38, '105.00', '0.00', 'Asperiores officiis non omnis corrupti aut est aperiam enim. Architecto quos blanditiis qui accusamus ratione. Odio consectetur omnis est ipsum assumenda aut.', NULL, '2022-02-17 15:42:14', '2022-02-17 15:42:14'),
(10, 39, '35.00', '0.00', 'Ut vel id aut inventore. Aperiam odio sed quidem est dolor.', '2022-02-17 15:48:56', '2022-02-17 15:42:14', '2022-02-17 15:48:56'),
(11, 4, '4.00', '1.00', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid voluptatibus ullam unde aliquam voluptatem inventore. Laborum nobis itaque est culpa, dolores inventore esse voluptatibus debitis neque aperiam, iusto consequuntur.Updated', NULL, '2022-02-17 16:00:13', '2022-02-17 16:18:16'),
(12, 40, '179.00', '0.00', 'Aut dolorum dolores nihil at nobis mollitia. Quasi consequatur et officiis nesciunt. In quam in et sed suscipit.', NULL, '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(13, 41, '188.00', '0.00', 'Autem non sit libero. Quod exercitationem sunt itaque necessitatibus. Commodi quis excepturi nam. Laboriosam assumenda et et officia. Aut ut veniam et recusandae corrupti sit minus.', NULL, '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(14, 42, '145.00', '0.00', 'Ex reprehenderit a recusandae fuga culpa. Sint sequi et dignissimos id autem alias magni est. Possimus porro consectetur eligendi non totam animi.', NULL, '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(15, 43, '43.00', '0.00', 'Animi sit quas facilis minima. Est earum qui amet. Sunt quis iste doloremque quia cumque assumenda vel corrupti. Est natus nam provident deleniti suscipit quia recusandae.', NULL, '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(16, 44, '118.00', '0.00', 'Quis sit dignissimos nemo. Aliquid explicabo magni omnis. Sequi corrupti totam non aut necessitatibus.', NULL, '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(17, 45, '109.00', '0.00', 'Dolorum ut ut soluta fuga ut consequatur expedita. Vitae et ratione hic a excepturi consectetur. Quas ducimus veritatis et nemo. Quas quidem soluta et non facere et quos qui.', NULL, '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(18, 46, '164.00', '0.00', 'Ratione repellendus eveniet fugiat et laudantium cum praesentium. Ab qui ut ut. Odio consectetur necessitatibus velit vitae odio nesciunt laborum. Vel nam voluptate ut.', NULL, '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(19, 47, '199.00', '0.00', 'Et quia ipsam quisquam adipisci. Qui at facere nostrum et expedita rerum corrupti. Ut temporibus dolorem ipsum sit voluptates rerum recusandae. Suscipit itaque et ut.', NULL, '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(20, 48, '195.00', '0.00', 'Ea sequi et est repellat excepturi rerum qui. Officiis fuga corrupti minus ex libero in fugiat. Molestiae aut aut qui possimus maxime.', NULL, '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(21, 49, '146.00', '0.00', 'Ut quisquam laudantium voluptate nihil ratione sunt ea. Et sequi perferendis officia beatae. Aperiam laborum consequatur sunt et rerum.', NULL, '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(22, 50, '136.00', '0.00', 'Voluptates ducimus natus dolorem. Et voluptas quaerat asperiores soluta. Id aut quis ut et animi ad aut qui. Qui distinctio architecto quia quos aliquid dolorum quo. Delectus et doloremque accusamus beatae ipsa accusantium voluptatem.', NULL, '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(23, 51, '44.00', '0.00', 'Sunt aliquam et repellat consequuntur impedit quae. Officiis maiores eaque aut dolorum. Suscipit quis beatae esse et doloribus id eius.', NULL, '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(24, 52, '50.00', '0.00', 'Optio suscipit sit unde qui et sunt sequi. Excepturi eum consequuntur tenetur excepturi in est aperiam necessitatibus. Consequatur a ut cum ratione qui dolorem. Et quaerat debitis perspiciatis at.', NULL, '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(25, 53, '97.00', '0.00', 'Debitis culpa sapiente porro officia deserunt quae. Est aliquid et excepturi et autem sint. Sapiente numquam est deleniti reprehenderit voluptates qui. Corrupti ut labore est molestiae ipsam.', NULL, '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(26, 54, '63.00', '0.00', 'Modi asperiores culpa est dolores et aut velit eaque. Rerum omnis maxime qui quae doloremque ut aliquid. Facere illum quisquam culpa amet. Recusandae et tenetur dignissimos debitis.', NULL, '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(27, 55, '127.00', '0.00', 'Omnis pariatur dolores dolore numquam. Qui vero aut ut soluta a. Vel enim quam tempora. Molestiae necessitatibus et repellendus nobis et. Hic tenetur eum est aspernatur a occaecati.', NULL, '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(28, 56, '83.00', '0.00', 'Voluptates qui qui accusamus odit minus et iste. Sit qui tempora ipsum iure natus vel ut. Ut blanditiis expedita eum voluptatem assumenda voluptatem hic. Vel sint sint autem ad minus.', NULL, '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(29, 57, '110.00', '0.00', 'Odio animi ut quis est quo sint animi. Aut qui ratione beatae porro. Totam odio commodi debitis aliquid eius dolorem.', NULL, '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(30, 58, '153.00', '0.00', 'Dolorem illo in molestiae quia odio voluptate. Necessitatibus dignissimos eveniet ex ut asperiores non officiis est. Vitae ut in et ut et.', NULL, '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(31, 59, '21.00', '0.00', 'Molestiae veritatis accusamus quia laboriosam cupiditate. Delectus vel velit corporis blanditiis at. Mollitia quibusdam consequatur ipsum nesciunt et.', NULL, '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(32, 60, '195.00', '0.00', 'Nihil quos expedita ad voluptatem alias doloremque aperiam. Vero doloribus quo sit quos nihil non voluptatem. Officiis eaque sapiente eligendi sit quasi ut.', NULL, '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(33, 61, '49.00', '0.00', 'Officia placeat sed error modi omnis veritatis atque delectus. Omnis ut quam consequatur.', NULL, '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(34, 62, '25.00', '0.00', 'Ut amet tempora voluptate sint ab dolor omnis. Possimus consequatur adipisci ad ab rerum provident. Error sit numquam assumenda nesciunt aut omnis.', NULL, '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(35, 63, '178.00', '0.00', 'Dolore autem itaque labore quam aliquid saepe. Et alias hic dolorem ratione. Eaque eum excepturi laborum eaque nulla odio quia. Qui quo est rerum doloremque.', NULL, '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(36, 64, '101.00', '0.00', 'Molestiae sint eligendi qui est suscipit sunt iusto. Porro vero ut deserunt voluptas vero explicabo aperiam. Eius neque dolor accusantium asperiores dolorum harum sint.', NULL, '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(37, 65, '63.00', '0.00', 'Distinctio laborum quia facilis. Et et enim aspernatur omnis. Ut alias qui minus veritatis ullam.', NULL, '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(38, 66, '183.00', '0.00', 'Esse impedit autem similique. Omnis hic quod dolorem et velit ea. Neque consequatur molestiae et est. Et est unde facere sunt impedit.', NULL, '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(39, 67, '191.00', '0.00', 'Quo accusantium dolores voluptas suscipit. Dicta laboriosam placeat mollitia. Temporibus voluptatem provident harum nam. Quasi ab necessitatibus qui qui.', NULL, '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(40, 68, '81.00', '0.00', 'Ipsum est architecto ratione ut. Aliquam vitae autem omnis totam veniam. Ut autem harum est est quo quod. Ad dolor molestiae commodi labore.', NULL, '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(41, 69, '65.00', '0.00', 'Tempora perferendis quis itaque dolor dolorem eos non. Maxime est dolor beatae ullam sed sequi dolor. Nihil adipisci fuga et qui itaque. Possimus odio voluptatem quia id error aut.', NULL, '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(42, 35, '10.00', '0.00', 'This is the description of the product.', NULL, '2022-02-20 23:57:21', '2022-02-21 00:01:18');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `supplier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cost_price` decimal(8,2) DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `product`, `category_id`, `supplier_id`, `cost_price`, `quantity`, `expiry_date`, `image`, `created_at`, `updated_at`) VALUES
(1, 'voluptas', 12, 12, '8636.99', '171', '2001-07-15', NULL, '2022-02-11 14:16:59', '2022-02-11 14:16:59'),
(2, 'culpa', 42, 42, '47.06', '87', '1978-05-20', NULL, '2022-02-11 14:18:41', '2022-02-11 14:18:41'),
(3, 'quis', 43, 43, '131.59', '170', '2004-06-10', NULL, '2022-02-11 14:18:41', '2022-02-11 14:18:41'),
(4, 'dolore', 44, 44, '18.39', '131', '2016-08-01', NULL, '2022-02-11 14:18:41', '2022-02-11 14:18:41'),
(5, 'quis', 45, 45, '3.43', '122', '1993-04-05', NULL, '2022-02-11 14:18:41', '2022-02-11 14:18:41'),
(6, 'odio', 46, 46, '12.77', '63', '2019-01-17', NULL, '2022-02-11 14:18:41', '2022-02-11 14:18:41'),
(8, 'officiis', 62, 62, '3.00', '132', '1973-07-18', NULL, '2022-02-11 14:23:24', '2022-02-11 14:23:24'),
(9, 'vero', 102, 102, '36.30', '156', '2016-07-06', NULL, '2022-02-11 14:27:37', '2022-02-11 14:27:37'),
(10, 'doloribus', 103, 103, '2.99', '182', '1980-12-24', NULL, '2022-02-11 14:27:37', '2022-02-11 14:27:37'),
(11, 'ut', 104, 104, '359.34', '30', '2004-08-29', NULL, '2022-02-11 14:27:37', '2022-02-11 14:27:37'),
(12, 'porro', 105, 105, '12.77', '63', '1999-11-05', NULL, '2022-02-11 14:27:37', '2022-02-11 14:27:37'),
(14, 'unde', 107, 107, '1.30', '163', '1989-10-28', NULL, '2022-02-11 14:27:37', '2022-02-11 14:27:37'),
(15, 'sequi', 108, 108, '2.00', '168', '1978-11-05', NULL, '2022-02-11 14:27:37', '2022-02-11 14:27:37'),
(16, 'sed', 109, 109, '156.96', '98', '2005-06-06', NULL, '2022-02-11 14:27:37', '2022-02-11 14:27:37'),
(17, 'magnam', 110, 110, '49.39', '187', '2020-09-14', NULL, '2022-02-11 14:27:37', '2022-02-11 14:27:37'),
(18, 'facere', 111, 111, '813040.79', '187', '2008-12-27', NULL, '2022-02-11 14:27:37', '2022-02-11 14:27:37'),
(19, 'Paracetamol', 3, 3, '100.00', '30', '2022-08-23', '1644946898.png', '2022-02-15 17:41:38', '2022-02-15 17:54:12'),
(20, 'molestiae', 122, 113, '10.00', '106', '2012-10-13', NULL, '2022-02-17 15:31:06', '2022-02-17 15:31:06'),
(21, 'laborum', 123, 114, '10.00', '101', '1990-10-10', NULL, '2022-02-17 15:31:06', '2022-02-17 15:31:06'),
(22, 'doloremque', 124, 115, '10.00', '66', '1987-07-01', NULL, '2022-02-17 15:31:06', '2022-02-17 15:31:06'),
(23, 'et', 125, 116, '10.00', '139', '2019-07-24', NULL, '2022-02-17 15:31:06', '2022-02-17 15:31:06'),
(24, 'vero', 126, 117, '10.00', '32', '2009-04-10', NULL, '2022-02-17 15:31:06', '2022-02-17 15:31:06'),
(25, 'minima', 127, 118, '10.00', '118', '1970-06-27', NULL, '2022-02-17 15:31:06', '2022-02-17 15:31:06'),
(26, 'molestiae', 128, 119, '10.00', '153', '1980-01-31', NULL, '2022-02-17 15:31:06', '2022-02-17 15:31:06'),
(27, 'et', 129, 120, '10.00', '163', '2019-02-03', NULL, '2022-02-17 15:31:06', '2022-02-17 15:31:06'),
(28, 'quis', 130, 121, '10.00', '174', '2021-12-26', NULL, '2022-02-17 15:31:06', '2022-02-17 15:31:06'),
(29, 'et', 131, 122, '10.00', '195', '1979-08-16', NULL, '2022-02-17 15:31:06', '2022-02-17 15:31:06'),
(30, 'quis', 132, 123, '10.00', '42', '2019-01-15', NULL, '2022-02-17 15:42:14', '2022-02-17 15:42:14'),
(31, 'nostrum', 133, 124, '10.00', '116', '1997-09-03', NULL, '2022-02-17 15:42:14', '2022-02-18 17:51:54'),
(32, 'rem', 134, 125, '10.00', '47', '2007-08-28', NULL, '2022-02-17 15:42:14', '2022-02-20 23:49:59'),
(33, 'et', 135, 126, '10.00', '192', '1978-04-23', NULL, '2022-02-17 15:42:14', '2022-02-17 15:42:14'),
(34, 'consequatur', 136, 127, '10.00', '36', '1970-01-07', NULL, '2022-02-17 15:42:14', '2022-02-17 15:42:14'),
(35, 'amet', 137, 128, '10.00', '78', '1991-01-25', NULL, '2022-02-17 15:42:14', '2022-02-21 00:01:52'),
(36, 'quisquam', 138, 129, '10.00', '182', '1987-03-23', NULL, '2022-02-17 15:42:14', '2022-02-17 15:42:14'),
(37, 'soluta', 139, 130, '10.00', '12', '2011-01-25', NULL, '2022-02-17 15:42:14', '2022-02-17 15:42:14'),
(38, 'repellat', 140, 131, '10.00', '158', '1982-12-10', NULL, '2022-02-17 15:42:14', '2022-02-17 15:42:14'),
(39, 'aut', 141, 132, '10.00', '112', '2012-08-24', NULL, '2022-02-17 15:42:14', '2022-02-17 15:42:14'),
(40, 'dolores', 142, 133, '10.00', '59', '1977-09-27', NULL, '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(41, 'voluptatum', 143, 134, '10.00', '56', '2002-11-21', NULL, '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(42, 'ut', 144, 135, '10.00', '88', '2003-09-10', NULL, '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(43, 'dolorum', 145, 136, '10.00', '56', '2006-06-27', NULL, '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(44, 'eos', 146, 137, '10.00', '130', '1996-02-05', NULL, '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(45, 'necessitatibus', 147, 138, '10.00', '133', '1994-11-26', NULL, '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(46, 'eum', 148, 139, '10.00', '141', '2021-07-05', NULL, '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(47, 'dignissimos', 149, 140, '10.00', '122', '2001-08-10', NULL, '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(48, 'nihil', 150, 141, '10.00', '43', '2018-01-21', NULL, '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(49, 'necessitatibus', 151, 142, '10.00', '168', '1970-01-06', NULL, '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(50, 'numquam', 152, 143, '10.00', '44', '1985-10-07', NULL, '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(51, 'mollitia', 153, 144, '10.00', '142', '1980-01-08', NULL, '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(52, 'debitis', 154, 145, '10.00', '82', '2009-01-17', NULL, '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(53, 'aliquid', 155, 146, '10.00', '173', '2006-06-30', NULL, '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(54, 'sequi', 156, 147, '10.00', '114', '2008-09-10', NULL, '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(55, 'rerum', 157, 148, '10.00', '53', '2011-10-15', NULL, '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(56, 'rem', 158, 149, '10.00', '47', '1979-03-03', NULL, '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(57, 'et', 159, 150, '10.00', '13', '1985-06-20', NULL, '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(58, 'odit', 160, 151, '10.00', '102', '2015-03-09', NULL, '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(59, 'ipsam', 161, 152, '10.00', '138', '1973-03-05', NULL, '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(60, 'repudiandae', 162, 153, '10.00', '98', '2019-12-20', NULL, '2022-02-18 16:37:15', '2022-02-20 23:25:41'),
(61, 'veritatis', 163, 154, '10.00', '117', '2001-08-24', NULL, '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(62, 'illum', 164, 155, '10.00', '11', '2022-02-14', NULL, '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(63, 'et', 165, 156, '10.00', '66', '1972-07-17', NULL, '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(64, 'consequatur', 166, 157, '10.00', '65', '2002-12-24', NULL, '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(65, 'tenetur', 167, 158, '10.00', '196', '2018-05-29', NULL, '2022-02-18 16:37:15', '2022-02-20 23:37:24'),
(66, 'dolores', 168, 159, '10.00', '30', '2021-02-12', NULL, '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(67, 'impedit', 169, 160, '10.00', '33', '1985-11-26', NULL, '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(68, 'consequatur', 170, 161, '10.00', '112', '2005-12-19', NULL, '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(69, 'sapiente', 171, 162, '10.00', '48', '2009-11-04', NULL, '2022-02-18 16:37:15', '2022-02-18 16:37:15');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'sales-person', 'web', '2022-02-08 17:53:21', '2022-02-08 17:53:21'),
(2, 'super-admin', 'web', '2022-02-08 17:53:21', '2022-02-08 17:53:21');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 2),
(4, 2),
(5, 1),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` decimal(8,2) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `product_id`, `quantity`, `total_price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 22, 21, '101.00', NULL, '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(2, 23, 162, '172.00', NULL, '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(3, 24, 172, '257.00', NULL, '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(4, 25, 13, '138.00', NULL, '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(5, 26, 157, '105.00', NULL, '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(6, 27, 75, '186.00', NULL, '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(7, 28, 129, '79.00', NULL, '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(8, 29, 129, '123.00', '2022-02-18 16:12:28', '2022-02-18 15:59:06', '2022-02-18 16:12:28'),
(9, 30, 41, '126.00', NULL, '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(10, 31, 118, '190.00', NULL, '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(11, 32, 56, '193.00', NULL, '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(12, 33, 159, '80.00', NULL, '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(13, 34, 131, '200.00', NULL, '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(14, 35, 98, '217.00', NULL, '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(15, 36, 80, '246.00', NULL, '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(16, 37, 190, '138.00', NULL, '2022-02-18 16:37:15', '2022-02-20 23:37:24'),
(17, 38, 137, '122.00', NULL, '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(18, 39, 100, '220.00', NULL, '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(19, 40, 105, '228.00', NULL, '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(20, 41, 129, '265.00', NULL, '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(21, 2, 10, '1110.00', NULL, '2022-02-18 17:51:02', '2022-02-18 17:51:02'),
(22, 2, 10, '1110.00', NULL, '2022-02-18 17:51:54', '2022-02-18 17:51:54'),
(23, 32, 50, '9750.00', NULL, '2022-02-20 23:25:41', '2022-02-20 23:25:41'),
(24, 3, 10, '1400.00', NULL, '2022-02-20 23:49:59', '2022-02-20 23:49:59'),
(25, 42, 10, '100.00', NULL, '2022-02-20 23:57:35', '2022-02-20 23:57:35'),
(26, 42, 10, '100.00', NULL, '2022-02-21 00:01:52', '2022-02-21 00:01:52');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `val` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `email`, `phone`, `company`, `address`, `product`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'John mccarthy Doe', 'johndoe@gmail.com', '+233542441933', 'Test company', 'this is customer address', 'paracetamol', 'This is a comment', '2022-02-09 15:25:10', '2022-02-15 17:15:28'),
(2, 'Ms. Jaclyn Zulauf', 'rhettinger@example.net', '(760) 949-4339', 'Moen and Sons', '75500 Wilderman Stream Apt. 397North Kenneth, NH 67498', 'atlantus', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis, excepturi libero quasi repellendus tenetur natus facere nihil accusamus incidunt veniam iste rem vitae nobis magni non voluptatem. Iusto, obcaecati tempore.', '2022-02-09 15:30:50', '2022-02-09 16:07:35'),
(3, 'Janis Steuber', 'schamberger.vincenza@example.net', '1-770-754-4174', 'Jast-Beier', '7884 Arlie RoadEast Arvidstad, DE 43894', 'fuga', NULL, '2022-02-09 15:30:50', '2022-02-09 15:58:55'),
(4, 'Prof. Sister Ratke', 'sporer.cleveland@example.net', '+1 (848) 584-9734', 'Wunsch Group', '529 DuBuque Station Apt. 838\nNorth Tamarastad, MT 12198', 'quam', 'Dolor ipsa provident voluptatem. Sed laudantium sed rerum sapiente. Voluptatum beatae dolor rerum.', '2022-02-09 15:30:50', '2022-02-09 15:30:50'),
(7, 'Prof. Kaitlyn Corkery Sr.', 'deja.gottlieb@example.com', '(469) 933-6431', 'Kertzmann Inc', '746 Kuhic Spurs\nProhaskaville, DC 84575-2942', 'reprehenderit', 'Est est quia amet consequatur enim pariatur. Sed sint corporis quia corporis cumque. Perspiciatis natus doloremque magnam cum at sunt labore. Eum eos neque est nobis mollitia est enim.', '2022-02-09 15:30:50', '2022-02-09 15:30:50'),
(8, 'Carolanne Wilderman', 'berta38@example.net', '+1-740-257-5816', 'McDermott, Gusikowski and Grant', '1212 Gustave Summit\nBeattychester, TN 15265', 'sunt', 'Et ut consequatur quisquam ducimus. Incidunt enim quisquam impedit aperiam a. Eum inventore aperiam quidem ipsam est provident. Ex eveniet nobis eum velit.', '2022-02-09 15:30:50', '2022-02-09 15:30:50'),
(9, 'Felicity Hudson', 'wreichert@example.com', '(702) 529-9473', 'Johnston, White and King', '38380 Kylie Hollow Apt. 362\nLake Mckenna, DE 16246', 'omnis', 'Blanditiis est et dicta. Rem a explicabo voluptatem consectetur. Porro earum voluptatem ut magnam porro modi et.', '2022-02-09 15:30:50', '2022-02-09 15:30:50'),
(10, 'Kaylah Carter IV', 'melody22@example.org', '702.961.6945', 'Quitzon-Keeling', '96148 Stehr Point Suite 661\nWest Beulah, ID 29255-9862', 'sapiente', 'Alias et dolor aut et eaque tenetur quis. Magnam voluptatem dolore consequatur iusto. Porro minus corporis est neque vitae. Autem accusantium et ullam ut voluptatem enim.', '2022-02-09 15:30:50', '2022-02-09 15:30:50'),
(11, 'Laron Sipes', 'lilian.feest@example.com', '+15392915283', 'Witting-Kulas', '210 Cristopher Shoals Apt. 096\nWest Kaelaberg, DC 35940-9091', 'quam', 'Est velit perspiciatis quia labore doloremque. Et explicabo ex omnis necessitatibus.', '2022-02-09 15:30:50', '2022-02-09 15:30:50'),
(12, 'Mrs. Amalia Orn PhD', 'sauer.elta@example.org', '+1-229-238-3936', 'Kozey LLC', '3220 Marilou Ridge Apt. 383\nWest Madelynton, WY 06158-7391', 'eius', 'Soluta numquam saepe iure facilis libero. Ex inventore illum quam ut et consequatur facere. Fugit fugit facilis ut voluptatem animi occaecati odit. Quo suscipit veritatis voluptate quae praesentium id est.', '2022-02-11 14:16:59', '2022-02-11 14:16:59'),
(13, 'Janet Smitham', 'ally25@example.org', '+19854809836', 'Blanda PLC', '27920 Hammes Cove Apt. 724\nEast Roy, IA 01725', 'quae', 'Temporibus dolor totam dolorum non. Tempora et excepturi iusto et. Qui inventore non est dolor. Minima excepturi non molestiae beatae aut nostrum suscipit.', '2022-02-11 14:16:59', '2022-02-11 14:16:59'),
(14, 'Jessy Buckridge', 'cole.schultz@example.org', '1-650-828-7659', 'Fadel-Zemlak', '821 Cremin Trail Apt. 035\nPort Coltonhaven, CO 97170', 'et', 'Et exercitationem et voluptatem. Numquam quia et ut nisi minus est ipsum. Et error placeat ducimus. Recusandae pariatur sint sunt ea soluta facere.', '2022-02-11 14:16:59', '2022-02-11 14:16:59'),
(15, 'Catalina Davis', 'ward.carmel@example.org', '580.903.0201', 'Reynolds Ltd', '79785 Luettgen Heights Suite 120\nJohnsview, VT 02143', 'et', 'Quisquam ad rerum qui eaque. Quibusdam et qui eveniet aut quam suscipit hic. Quo fuga corrupti ut quos at animi non.', '2022-02-11 14:16:59', '2022-02-11 14:16:59'),
(16, 'Matteo Wuckert Jr.', 'udickinson@example.net', '(248) 934-2678', 'Dare Ltd', '5583 Nitzsche Street Apt. 175\nNew Katelynport, NV 87627-1503', 'et', 'Est nobis eum sit. Ad repellendus quae dolores qui sit illo aliquam. Aliquam totam laudantium consequatur nostrum unde sit ut. Velit consequatur explicabo delectus voluptas quasi necessitatibus temporibus.', '2022-02-11 14:16:59', '2022-02-11 14:16:59'),
(17, 'Prof. Helene Morar', 'sandy.hahn@example.com', '1-206-285-9208', 'Mayer, Reilly and Brown', '4609 Pfeffer Forges\nEast Sydnee, OK 47638-9358', 'et', 'Libero voluptatem velit officiis illum. Omnis soluta temporibus laboriosam eligendi. Nobis et eum suscipit a rerum aut. Ad voluptatibus voluptatum illum omnis.', '2022-02-11 14:16:59', '2022-02-11 14:16:59'),
(18, 'Hassie Heaney', 'schroeder.evan@example.com', '+1 (726) 300-8064', 'Cartwright-Olson', '2537 Trace Crossing\nHansenchester, MO 11136', 'reprehenderit', 'Dolore in quos ipsum non culpa facilis doloremque. Ex ipsum saepe pariatur eaque et accusantium. Dolorem temporibus ratione corporis nam. Neque eum eum incidunt repellendus. Et ut iste qui distinctio in corrupti eum.', '2022-02-11 14:16:59', '2022-02-11 14:16:59'),
(19, 'Kenneth Witting', 'goyette.luciano@example.net', '+1-680-292-7833', 'Luettgen and Sons', '179 Lemke Lodge\nPort Franco, GA 45006', 'quaerat', 'Aperiam alias delectus tempora eum aut est. Aut perferendis et mollitia autem impedit reiciendis numquam ipsam. Ullam illo ipsa alias dolores. Neque ut et dolor et et dicta.', '2022-02-11 14:16:59', '2022-02-11 14:16:59'),
(20, 'Prof. Simeon Lehner Sr.', 'rwehner@example.org', '248.989.2384', 'Bayer Group', '427 Ida Park Suite 351\nChristopport, UT 74515-4611', 'deserunt', 'Et autem et eos ipsam. Sint est porro magni omnis expedita. Delectus earum error quia doloremque dolorum voluptas sunt. Possimus aliquid nulla est.', '2022-02-11 14:16:59', '2022-02-11 14:16:59'),
(21, 'Minnie Brown', 'kwaelchi@example.net', '312.982.4925', 'Hills, Hyatt and Schroeder', '549 Aleen Dale Apt. 533\nSouth Jermeychester, OR 83583', 'laboriosam', 'Unde aliquid est minima unde quaerat. At quisquam sed sed iure odio. Omnis id atque labore rerum quis rerum. Voluptatem provident aut doloremque optio non laudantium.', '2022-02-11 14:16:59', '2022-02-11 14:16:59'),
(22, 'Tara Anderson', 'aylin66@example.org', '+1-979-920-4302', 'Stroman Group', '482 Hudson Circle Apt. 078\nElmermouth, CT 28320-3654', 'aut', 'Atque iste maiores ratione autem consequuntur velit. Ut asperiores et harum suscipit exercitationem voluptates dicta. Sed et cumque labore facere nesciunt. Vel voluptatum corrupti voluptatem et ut.', '2022-02-11 14:17:18', '2022-02-11 14:17:18'),
(23, 'Emile Stiedemann', 'jgreen@example.org', '516.928.4164', 'Emard-Maggio', '850 Hans Parkway\nGrantfurt, MO 48442', 'vel', 'Pariatur doloribus architecto iure dolores assumenda. Adipisci eveniet sed totam molestias saepe minima. Voluptas dolor ea animi maxime facilis. Ut voluptatibus cupiditate nam expedita repudiandae quo quisquam.', '2022-02-11 14:17:18', '2022-02-11 14:17:18'),
(24, 'Amina Hyatt', 'josiah41@example.net', '+1.743.350.8568', 'Skiles Inc', '96166 Flatley Parkway Suite 007\nNorth Tressie, LA 29365-3347', 'magnam', 'Et quos et velit corporis dolore. Ut a id voluptatem. Deleniti sunt officiis minima sed fugit sint sequi. Non eaque sapiente vero voluptas et incidunt. Quia non ducimus est occaecati velit.', '2022-02-11 14:17:18', '2022-02-11 14:17:18'),
(25, 'Prof. Andy Thompson PhD', 'clesch@example.com', '+1 (769) 865-7499', 'Larkin, Monahan and Deckow', '158 Kulas Falls\nNorth Stone, MN 49980', 'est', 'Qui architecto enim et qui amet recusandae et velit. Non facilis omnis id eum architecto animi. Qui aut molestiae voluptas iusto excepturi.', '2022-02-11 14:17:18', '2022-02-11 14:17:18'),
(26, 'Marcia Krajcik II', 'gregoria.lakin@example.org', '(234) 735-1080', 'Larkin LLC', '402 Crist Roads\nGloverberg, FL 37624', 'dolorem', 'Non et autem est laboriosam eaque quisquam laudantium. Fugiat repudiandae quis ex ut. Rem illum architecto quod harum. Esse inventore sed corrupti tempora commodi repudiandae repudiandae ipsa.', '2022-02-11 14:17:18', '2022-02-11 14:17:18'),
(27, 'Dr. Dante Streich', 'juliet98@example.com', '253-485-0045', 'Dibbert, Kling and Kub', '81046 Kling Light\nFordview, AZ 91957', 'illum', 'Aliquid vitae et iste quis animi excepturi. Nemo iusto et quia. Sed consequatur nihil esse et vel. Iure mollitia molestiae ut mollitia cumque.', '2022-02-11 14:17:18', '2022-02-11 14:17:18'),
(28, 'Jarred Daniel', 'smarquardt@example.net', '917.317.5325', 'Hill-Satterfield', '9827 Schuppe Ways\nPort Laney, VT 21745-1191', 'veniam', 'Ut illum dolor amet omnis aut. Eaque laudantium nesciunt quo voluptatem sit. Quo quae tempora quibusdam dolores occaecati quaerat hic. Mollitia id ut non perferendis temporibus iusto totam.', '2022-02-11 14:17:18', '2022-02-11 14:17:18'),
(29, 'Prof. Mina Schmitt', 'kovacek.toy@example.com', '(219) 576-6264', 'Wilkinson-Armstrong', '36357 Angus Springs Apt. 843\nLakinchester, KS 22851-7561', 'ad', 'Voluptatem qui quod pariatur quas porro autem. Voluptatem qui quod quia rerum quibusdam. Eos sit aut inventore nesciunt. Dolores voluptatem aperiam aut est consequatur libero nisi.', '2022-02-11 14:17:18', '2022-02-11 14:17:18'),
(30, 'Princess Pacocha', 'ritchie.savannah@example.org', '(586) 314-7313', 'Marvin Ltd', '9253 Sanford Valleys\nRubyfurt, MD 96453', 'et', 'Nostrum sunt consequatur est voluptatem quasi non accusamus earum. Saepe temporibus perspiciatis iure. Adipisci fuga alias placeat maxime. Quo non fugiat tempore vel minima amet. Ea doloremque perspiciatis inventore minima occaecati consequatur quia.', '2022-02-11 14:17:18', '2022-02-11 14:17:18'),
(31, 'Myriam Heller', 'schulist.colton@example.com', '678-990-4145', 'Barton, Crona and Rippin', '2204 Bud Fall Suite 230\nNorth Einar, DC 14613', 'dolores', 'Atque enim doloribus dolor aut aliquam quia possimus. Doloremque sint eum vel fugit rerum dolorem voluptatem. Vel est cum dolorem et voluptatem.', '2022-02-11 14:17:18', '2022-02-11 14:17:18'),
(32, 'Prof. Sofia Will', 'carmen.volkman@example.org', '(859) 943-7137', 'Green, Kris and Schmitt', '3365 D\'Amore Tunnel\nCarolynshire, NM 95559', 'autem', 'Modi exercitationem eligendi dicta unde minima dolorem. Cupiditate dicta architecto eos eligendi. Voluptates debitis voluptate sint possimus omnis. Quis tempora magnam hic iure.', '2022-02-11 14:18:06', '2022-02-11 14:18:06'),
(33, 'Tyler Bergnaum III', 'eschneider@example.org', '256-780-7861', 'Rutherford, Streich and Strosin', '98938 Abshire Forge\nNorth Omer, OR 09219', 'voluptas', 'Reiciendis voluptate voluptatem non vel. In quidem omnis soluta quos sint. Ullam dolores labore facere harum vel. Quam quod ex corrupti illo facere amet sed saepe. Totam alias aut tenetur modi eos.', '2022-02-11 14:18:06', '2022-02-11 14:18:06'),
(34, 'Michale Jacobi', 'lwatsica@example.org', '763.902.9414', 'McGlynn-Rau', '29969 Gleason Trace Suite 793\nSouth Citlalli, KS 95062', 'voluptatibus', 'Soluta qui illum sint aut id aliquam. Quia ullam non inventore quia fugiat exercitationem autem. Aut accusamus expedita at quo perspiciatis modi. Nostrum odit est ut aliquam et rerum. Occaecati cumque ipsam delectus quaerat autem voluptatum.', '2022-02-11 14:18:06', '2022-02-11 14:18:06'),
(35, 'Mr. Demarco Stanton DDS', 'thamill@example.org', '+1.575.598.4438', 'Spencer-Abernathy', '4192 Howe Springs Suite 175\nCristalport, CT 49050', 'velit', 'Consequuntur ea rerum dolores et asperiores optio. In odio ut iusto excepturi facere voluptatem pariatur provident. Rem qui aut animi excepturi mollitia. Aut in enim ipsum nihil ratione eligendi. Molestias aut id sit temporibus et vitae ea.', '2022-02-11 14:18:06', '2022-02-11 14:18:06'),
(36, 'Dr. Palma Berge DVM', 'lboyle@example.net', '+1-401-428-9347', 'Collier, Wolf and Klein', '73640 Dianna Light Suite 145\nTorphymouth, SC 73279-2953', 'est', 'At dolorem dolores iure quidem. Non quaerat necessitatibus aut sed neque ducimus a.', '2022-02-11 14:18:06', '2022-02-11 14:18:06'),
(37, 'Joel Littel', 'jacinthe.deckow@example.net', '+1.239.451.0841', 'Kemmer-Bashirian', '776 Garland Squares Suite 118\nBartonburgh, OH 48480', 'iure', 'Quibusdam velit vel dolorem nam sapiente. Ipsam itaque molestiae maiores aut magni nobis. Qui dolor est reiciendis sapiente dolor accusamus architecto.', '2022-02-11 14:18:06', '2022-02-11 14:18:06'),
(38, 'Adelbert Toy', 'shodkiewicz@example.com', '(704) 525-1027', 'Stark, Gleason and Schaden', '5891 Conn Extensions Apt. 997\nWest Martinabury, NY 38572-1733', 'atque', 'Id ipsa nobis qui debitis ut ex. Impedit voluptas tempora aut modi quia voluptas velit. Aut reiciendis porro est.', '2022-02-11 14:18:06', '2022-02-11 14:18:06'),
(39, 'Delpha Schowalter', 'derdman@example.org', '+1-432-713-2624', 'Ferry and Sons', '797 Kaden Place\nNew Melisaberg, MN 02184-2828', 'nisi', 'Ut est laudantium ut itaque autem. Delectus consequatur id voluptatibus sit quo magni voluptas quis. Numquam et perferendis hic consequatur aut neque eveniet libero.', '2022-02-11 14:18:06', '2022-02-11 14:18:06'),
(40, 'Ulises Greenholt', 'elmore.leffler@example.com', '+1-682-582-3296', 'Denesik, Tromp and Rippin', '95753 Davis Tunnel Suite 413\nBrendonmouth, AR 35229', 'cupiditate', 'Omnis aut repellendus eligendi delectus. Ea aut molestias facilis qui. Perferendis repellat commodi debitis.', '2022-02-11 14:18:06', '2022-02-11 14:18:06'),
(41, 'Roosevelt Ledner', 'boehm.edwina@example.com', '747.905.6489', 'Hauck, Johnston and Halvorson', '814 Schaefer Street\nKatlynberg, SD 81440', 'tempora', 'Dolor dolor amet error quis. Voluptatem rerum sunt quae accusantium adipisci. Excepturi hic aut aut quos facere maiores. Nihil minima voluptatum quod quas.', '2022-02-11 14:18:06', '2022-02-11 14:18:06'),
(42, 'Ms. Dolores Goyette', 'bailey.maurice@example.com', '(314) 917-9595', 'Feest-Kohler', '7432 Fadel Landing\nSouth Koryview, ND 00431', 'excepturi', 'Eum necessitatibus voluptatibus ut cum. Amet quos distinctio fugit dolor nam debitis sint. Sit velit consequatur reiciendis nihil numquam sed modi architecto. Consequatur enim aperiam voluptatem architecto amet.', '2022-02-11 14:18:41', '2022-02-11 14:18:41'),
(43, 'Mrs. Aubrey Prohaska', 'tdietrich@example.net', '206.494.4511', 'Ryan, Kessler and Marquardt', '1609 Candelario Drives Suite 614\nMagdalenaside, LA 39675-9794', 'consequatur', 'Non saepe tenetur voluptatibus et minima tenetur suscipit. Et quo autem et nesciunt. Nulla id quisquam ipsa.', '2022-02-11 14:18:41', '2022-02-11 14:18:41'),
(44, 'Gayle Waters', 'enrique.huels@example.net', '1-551-449-6735', 'Stokes Ltd', '27303 Pollich Unions Apt. 558\nSouth Madisyn, MT 94693', 'in', 'Ducimus quo quis molestias qui. Exercitationem in nulla voluptas. Tempora placeat vitae sequi libero pariatur.', '2022-02-11 14:18:41', '2022-02-11 14:18:41'),
(45, 'Moshe Legros', 'alayna47@example.com', '(248) 631-8999', 'Lockman-Schmidt', '85652 Barton Rest Suite 304\nPort Christyburgh, NC 39103', 'accusantium', 'Aperiam sit quas deserunt cum quia alias. Repudiandae ad velit possimus velit nemo. Unde aut et hic quibusdam laborum voluptatem.', '2022-02-11 14:18:41', '2022-02-11 14:18:41'),
(46, 'Mikayla Kutch', 'block.isabelle@example.net', '+12537471436', 'Morar-Smith', '6111 White Via\nWest Kaylahborough, NC 04045-3794', 'eveniet', 'Sequi accusamus a et odit aut vitae. Quis odio laborum velit animi. Ea suscipit soluta aut officia numquam voluptas architecto ducimus.', '2022-02-11 14:18:41', '2022-02-11 14:18:41'),
(47, 'Issac Thompson Jr.', 'tdurgan@example.org', '1-870-338-8957', 'Gerhold, Lubowitz and Kertzmann', '5509 Larue Spring Suite 542\nKittyhaven, CO 99061', 'quam', 'Quae quisquam impedit quia repudiandae molestiae. Adipisci molestiae fugiat delectus at blanditiis ut nostrum veritatis. In ut ea molestiae dicta et odit ipsam accusantium. Et qui cumque vero possimus tempore iusto aut. Blanditiis similique id vel in aliquam quam reprehenderit enim.', '2022-02-11 14:18:41', '2022-02-11 14:18:41'),
(48, 'Alexandro Morar V', 'tyrese.goldner@example.com', '862.944.3535', 'Bosco Group', '78245 Kris Haven\nRachaelberg, ND 84452-9703', 'aliquid', 'Accusamus sed sed quia quisquam aperiam ad et praesentium. Possimus iusto et quibusdam dolorem nihil maxime veritatis. Quia fugit sequi quia unde perspiciatis dolor iste.', '2022-02-11 14:18:41', '2022-02-11 14:18:41'),
(49, 'Nia Larkin', 'stoltenberg.kavon@example.net', '(570) 379-8789', 'Ortiz, Miller and Konopelski', '934 Patrick Harbor Suite 141\nWest Arnoldstad, NH 15202', 'omnis', 'Aut in similique culpa nisi dolore. Sunt et in sed enim quod odio exercitationem est. Laboriosam voluptates omnis minus reprehenderit.', '2022-02-11 14:18:41', '2022-02-11 14:18:41'),
(50, 'Prof. Orland Hills', 'jemard@example.net', '1-513-654-8912', 'White, Bailey and Crona', '2560 Green Streets Apt. 812\nWuckertmouth, RI 42912-0633', 'voluptatem', 'Doloremque et et error commodi ex. Dicta ad placeat beatae aliquid hic non in. Ut in blanditiis debitis dolor facere aspernatur.', '2022-02-11 14:18:41', '2022-02-11 14:18:41'),
(51, 'Mrs. Ila Schultz', 'barrows.granville@example.net', '1-534-446-6444', 'Walker-Wyman', '137 Antonia Forges Apt. 427\nLake Genovevaville, MI 24167', 'voluptatibus', 'Dolores velit cum eos quia quo. Eaque consequatur earum culpa et in vel quo. Ea voluptatem soluta vel veritatis.', '2022-02-11 14:18:41', '2022-02-11 14:18:41'),
(52, 'Omari Hills IV', 'kwalter@example.net', '+12763495550', 'Wiza, Koss and Schimmel', '28148 Kristina Flat Suite 602\nHaleyfort, OK 78244-3938', 'assumenda', 'Nostrum aut nobis recusandae provident quidem id. Aut mollitia nostrum explicabo. Dolor omnis debitis perspiciatis error odit voluptas. Qui fugiat est maiores vel ut nulla quia.', '2022-02-11 14:19:47', '2022-02-11 14:19:47'),
(53, 'Dr. Kacie Buckridge Jr.', 'mara.dickens@example.com', '1-661-887-6136', 'Russel, Prohaska and Gislason', '89662 Russel Harbor\nNorth Karelle, SC 74076-2241', 'porro', 'Vitae autem nihil delectus soluta. Sed nobis recusandae est dolorem enim debitis porro et.', '2022-02-11 14:19:47', '2022-02-11 14:19:47'),
(54, 'Rowena Walker', 'bflatley@example.net', '283-695-4446', 'Johnston, O\'Keefe and Von', '642 Haley Walk\nEast Rylan, MT 63742-6999', 'non', 'Quis soluta ducimus delectus omnis eligendi commodi magnam. Quo distinctio qui non. Hic aliquam eum molestiae commodi distinctio magni et hic. Consequuntur quo ullam facere et omnis ipsum.', '2022-02-11 14:19:47', '2022-02-11 14:19:47'),
(55, 'Beth Keeling', 'yhand@example.net', '1-626-966-6695', 'Hirthe-Gaylord', '206 Hayes Union\nSouth Jett, KY 62726-4758', 'quia', 'Sunt doloribus voluptatem aliquam qui. Non eveniet cumque quia ab id. Illum sed deserunt facilis iure officia sed. Voluptas sed temporibus illum aut velit deleniti labore.', '2022-02-11 14:19:47', '2022-02-11 14:19:47'),
(56, 'Ms. Lelia Leffler', 'kaci99@example.net', '817.463.1790', 'Gislason, Schiller and Boyer', '3595 Demarco Loop\nOrtizstad, MD 67557-2906', 'voluptatem', 'Alias minima cupiditate ducimus nemo. In quasi sint veniam sed ab. Explicabo ad nihil quam atque. Dolor sit facilis praesentium sunt iure et.', '2022-02-11 14:19:47', '2022-02-11 14:19:47'),
(57, 'Ms. Oleta Fadel Sr.', 'mills.holly@example.com', '929.950.5961', 'Ziemann Group', '404 Colt Port Suite 825\nWest Logan, AZ 15357-5380', 'ex', 'In qui aut pariatur quia laborum. Et facilis autem mollitia soluta provident impedit. Architecto excepturi deserunt est labore sed libero hic ea. Qui quod perspiciatis laborum quibusdam fugiat. Labore quae delectus consequatur esse at culpa.', '2022-02-11 14:19:47', '2022-02-11 14:19:47'),
(58, 'Prof. Abelardo Gottlieb DVM', 'ithompson@example.net', '972.892.1478', 'Powlowski, Greenholt and Cremin', '1519 Gleichner Lane\nLake Tristian, NH 08067', 'et', 'Ex velit aliquid et corrupti. Possimus porro occaecati dolor nam voluptatem et ad. Nihil iste vero dicta sit. Ducimus aperiam aliquam vel optio.', '2022-02-11 14:19:47', '2022-02-11 14:19:47'),
(59, 'Sydney Schuppe', 'macejkovic.adriana@example.com', '(484) 302-5421', 'Kuhn-Buckridge', '984 Lowe Loop Apt. 939\nEast Lenoreland, DC 48233-2705', 'qui', 'Et provident et consequatur facere. Assumenda officia cupiditate tempore. Aperiam sed ab dolorem assumenda ut voluptatem quod.', '2022-02-11 14:19:47', '2022-02-11 14:19:47'),
(60, 'Ms. Delores Walter DVM', 'kunde.alessandro@example.com', '+1-469-940-2525', 'Schiller, Kilback and Adams', '40962 Hammes Circle Apt. 312\nPort Coty, MI 82062', 'aliquam', 'Ipsum consequatur incidunt dolores sint. In ipsum aut dignissimos repudiandae. Cupiditate laborum nihil quas et. Nemo quibusdam et sapiente et reprehenderit eveniet.', '2022-02-11 14:19:47', '2022-02-11 14:19:47'),
(61, 'Mafalda Williamson II', 'rschaefer@example.net', '+1.772.908.9582', 'Dach PLC', '730 Kiehn Prairie\nWest Rowena, ME 01919', 'dolorem', 'Nihil eaque laborum at. Repudiandae est quae officia aliquid ipsum.', '2022-02-11 14:19:47', '2022-02-11 14:19:47'),
(62, 'Consuelo O\'Conner', 'von.daija@example.com', '(774) 547-8813', 'Blanda-Kiehn', '58190 Mertz Cape Suite 649\nStehrstad, ME 58058', 'consequatur', 'Quo in officiis illum aut enim necessitatibus. Et qui deserunt exercitationem et iusto ex. Autem quibusdam qui doloribus nostrum recusandae atque quidem.', '2022-02-11 14:23:23', '2022-02-11 14:23:23'),
(63, 'Cade Konopelski', 'tiffany99@example.net', '848-218-5318', 'Lueilwitz Inc', '67741 Koelpin Meadows\nLangoshchester, AL 03277-1628', 'voluptatum', 'Molestiae non sint beatae iure necessitatibus natus dolor. Consequuntur libero et odio alias laborum ducimus. Non amet eos autem numquam itaque dignissimos illo. Aperiam ad dolor molestiae vel.', '2022-02-11 14:23:23', '2022-02-11 14:23:23'),
(64, 'Caden Shanahan', 'vonrueden.golden@example.com', '(808) 543-5869', 'Considine-Metz', '7652 Elijah Stravenue Apt. 032\nAbdielstad, GA 95014-4016', 'omnis', 'Consequatur iure fugiat ducimus consequatur doloribus tempore omnis. Provident ut quia est ea id qui at. Qui hic est eos laboriosam et aliquid. Aliquid explicabo sunt eos molestias voluptatem soluta.', '2022-02-11 14:23:23', '2022-02-11 14:23:23'),
(65, 'Prof. Lorine Orn IV', 'ernie.brakus@example.com', '657-649-0150', 'Kertzmann Inc', '802 Muriel Plains\nAlliechester, TN 10177-2326', 'atque', 'Explicabo et dignissimos ut consequatur. Quis iste animi praesentium et possimus aut. Officiis quia voluptates et ab assumenda atque enim. Iure non dolores in.', '2022-02-11 14:23:23', '2022-02-11 14:23:23'),
(66, 'Austen Kuphal Sr.', 'keven.fay@example.net', '+1-667-248-5966', 'Willms-Bailey', '104 Kohler Loaf\nNorth Ivorybury, NE 14397', 'magni', 'Laborum at ab est aut eaque. Ullam laudantium atque nihil incidunt. Impedit quia aut quia provident corporis. Et fuga dignissimos quis odit molestiae nesciunt in.', '2022-02-11 14:23:23', '2022-02-11 14:23:23'),
(67, 'Marques Reilly', 'greta.brakus@example.com', '725-224-4733', 'Cole, Feil and Dach', '2305 Fidel Pass\nLake Reva, VT 63379-1245', 'nisi', 'Et voluptas perspiciatis sit sapiente laudantium doloribus. Blanditiis excepturi nisi omnis. Sapiente voluptatem quia qui sed esse omnis inventore.', '2022-02-11 14:23:23', '2022-02-11 14:23:23'),
(68, 'Mrs. Alysa Walter Jr.', 'mfritsch@example.org', '(717) 906-5396', 'Conn, Connelly and Frami', '6573 Kunze Mews Apt. 967\nAnselberg, NJ 27939-4563', 'nulla', 'Enim consequuntur ea molestias voluptatem. Sequi odit quia et molestias et distinctio. Nulla porro est error.', '2022-02-11 14:23:23', '2022-02-11 14:23:23'),
(69, 'Edgardo Schultz', 'farrell.cortney@example.com', '435-792-8698', 'Rempel-Gerlach', '354 Harvey View\nPacochamouth, AR 96366-0526', 'ut', 'Rem rerum sapiente officiis temporibus dolorem earum rerum. Exercitationem minima dolor est nihil optio. Amet ut aut repellendus voluptas aspernatur dolor odio.', '2022-02-11 14:23:24', '2022-02-11 14:23:24'),
(70, 'Isai Stamm', 'jeffrey71@example.org', '941.432.7743', 'Denesik-Greenholt', '5479 Augusta Drives\nNeilmouth, ID 60775-3504', 'eos', 'Ullam dolores blanditiis quia qui. Perferendis optio asperiores illo nisi omnis voluptatum molestiae. Unde nihil expedita et quis non quas ab dolorum.', '2022-02-11 14:23:24', '2022-02-11 14:23:24'),
(71, 'Lazaro Tillman', 'wisozk.micheal@example.com', '870.296.1563', 'Swift Group', '774 Paucek Light\nKirlinshire, DC 65205-3389', 'dolores', 'Sit soluta voluptatum assumenda laboriosam ad. Omnis a rem et quidem velit. Laborum blanditiis delectus consectetur dicta.', '2022-02-11 14:23:24', '2022-02-11 14:23:24'),
(72, 'Miss Germaine Cruickshank', 'nolan.sporer@example.net', '216.586.3938', 'Paucek-Crona', '10491 Dicki Fields\nHipolitofurt, SC 40615', 'unde', 'Tempore ea vitae voluptatum quisquam id impedit eligendi odio. Vel dolore culpa et nesciunt. Eum quaerat ut nam dolor qui totam quae. Eum recusandae unde fugit nihil et impedit.', '2022-02-11 14:23:32', '2022-02-11 14:23:32'),
(73, 'Lou Daniel DDS', 'lisette24@example.com', '947.995.2831', 'Balistreri LLC', '16892 Rutherford Camp\nPort Amiyaside, PA 19997', 'voluptatem', 'Numquam accusamus eos voluptatem sequi nihil et mollitia. Iste aliquid delectus magnam. Enim enim rerum odit maxime quo. Ut ratione molestiae eos est est veniam consequuntur ab.', '2022-02-11 14:23:32', '2022-02-11 14:23:32'),
(74, 'Electa Miller', 'pete51@example.org', '712.497.2659', 'Feil, Jenkins and Cruickshank', '378 Yoshiko Divide\nAuerfort, MD 88303-0338', 'facilis', 'Qui et nisi vitae quibusdam quod minus quae repellat. Minima nam distinctio magni ullam. Qui excepturi repudiandae sed quibusdam.', '2022-02-11 14:23:32', '2022-02-11 14:23:32'),
(75, 'Mrs. Marjolaine Jakubowski', 'fschmitt@example.net', '+1-231-532-0458', 'Morissette, Wilkinson and Harris', '23439 Magdalena Road\nPort Alexzander, RI 59668', 'sit', 'Voluptatem molestias officiis quia. Ab exercitationem qui non molestiae.', '2022-02-11 14:23:32', '2022-02-11 14:23:32'),
(76, 'Michelle Littel DVM', 'friesen.gabrielle@example.net', '1-430-834-2470', 'Bergnaum, Vandervort and Ullrich', '9254 Corwin Hills Apt. 387\nNew Caitlynborough, HI 67025', 'laboriosam', 'Cumque repellat officia autem ut et nesciunt. Eveniet aut optio et esse libero iste nesciunt voluptas. Quasi deserunt harum illo aut nisi velit earum incidunt. Id accusamus est sit fugiat.', '2022-02-11 14:23:32', '2022-02-11 14:23:32'),
(77, 'Dianna Braun', 'minnie64@example.org', '516.554.7864', 'Konopelski Group', '8783 Jerry Causeway\nLake Norbertoborough, AZ 81025-6126', 'neque', 'Sint dolorem iste autem facilis. Quis ab quo sed. Dolore eius assumenda ipsum assumenda quibusdam. Exercitationem et et quas neque aut qui et laudantium.', '2022-02-11 14:23:32', '2022-02-11 14:23:32'),
(78, 'Jarret Robel', 'gavin12@example.com', '+1 (352) 766-8224', 'Strosin, Oberbrunner and Fadel', '27503 Nyasia Overpass Suite 603\nEast Markusport, PA 11559', 'nihil', 'Facilis hic cupiditate ex. Incidunt quo assumenda tenetur natus at hic. Sequi odio veniam commodi nesciunt.', '2022-02-11 14:23:32', '2022-02-11 14:23:32'),
(79, 'Lura Mante', 'fharris@example.net', '1-973-290-6568', 'Jast, Koss and Vandervort', '1788 Willms Spur Apt. 339\nAngelinamouth, CT 99659-6550', 'sapiente', 'Temporibus sit eius aspernatur ducimus dolor nemo qui. Labore ut excepturi magni tempora et sapiente. Molestiae in mollitia inventore explicabo.', '2022-02-11 14:23:32', '2022-02-11 14:23:32'),
(80, 'Dr. Miracle Erdman MD', 'candice04@example.org', '859.825.8908', 'O\'Connell PLC', '840 Zella Mall Suite 524\nLangoshville, IN 24315-6045', 'similique', 'Deleniti deleniti consequatur quos deleniti ducimus hic. Cupiditate rerum cupiditate qui aperiam. Error est cupiditate id consequatur sint ad consequuntur.', '2022-02-11 14:23:32', '2022-02-11 14:23:32'),
(81, 'Prof. Brigitte Roberts I', 'slueilwitz@example.org', '743-927-6323', 'Bode Group', '456 Otho Forks\nDarienstad, LA 34223', 'veritatis', 'Quia tempore recusandae atque voluptatum sit. Quo dolore et animi animi. Quibusdam et numquam in at iure.', '2022-02-11 14:23:32', '2022-02-11 14:23:32'),
(82, 'Deondre Walker IV', 'amina.runolfsson@example.com', '(740) 541-6532', 'Stamm Ltd', '18578 Zieme Land Apt. 261\nWest Bette, WY 53884', 'nostrum', 'Eum repellat nesciunt placeat vitae quia cum a. Perferendis architecto in vel eos illum autem aut consequatur. Eum ex doloribus neque veniam ut qui assumenda est.', '2022-02-11 14:24:21', '2022-02-11 14:24:21'),
(83, 'Benjamin Emard', 'jarrod.weber@example.org', '+1 (516) 539-7183', 'McClure, Hill and Rippin', '288 Mathias Cape\nLaurinefurt, WI 43989-7754', 'neque', 'Tempore sunt saepe exercitationem. Sed sit voluptas molestias. Fuga doloremque voluptas delectus qui tempore. Eos voluptatibus est dolores.', '2022-02-11 14:24:21', '2022-02-11 14:24:21'),
(84, 'Leilani Watsica', 'loyal42@example.org', '+1-503-795-0531', 'Schimmel, Balistreri and Hartmann', '216 Cummerata Meadow\nWest Nova, ME 62683-7450', 'sed', 'Mollitia ut pariatur dolorem cumque fugit. Quo est magni ullam sint qui. Quidem sit sapiente voluptatibus ipsa recusandae.', '2022-02-11 14:24:21', '2022-02-11 14:24:21'),
(85, 'Dr. Antonina Kunze IV', 'margret73@example.com', '414-389-3611', 'Greenholt Group', '911 Beier Common\nGrahamhaven, MS 27514', 'soluta', 'Molestias voluptatem sit libero tempora officia. Voluptate et praesentium cum repellendus. Et aut architecto similique voluptatem.', '2022-02-11 14:24:21', '2022-02-11 14:24:21'),
(86, 'Mandy Bernhard', 'thelma.herman@example.com', '934.886.2738', 'Zieme Ltd', '93985 Phoebe Corners Apt. 830\nGeraldinebury, HI 35043-0278', 'libero', 'Eligendi voluptates ut magnam amet sunt ut totam. Pariatur quod in quos quo qui magnam hic. Tenetur perspiciatis et debitis quia enim ipsum.', '2022-02-11 14:24:21', '2022-02-11 14:24:21'),
(87, 'Mrs. Sydnie Yost V', 'gibson.laura@example.com', '+1 (850) 424-0847', 'Leannon LLC', '3544 Rico Rest\nKohlerton, CT 08356-2462', 'nam', 'Doloremque quo ea impedit ad. Quod iure velit minus odit facilis aut. Consequatur sint dolorem dolor.', '2022-02-11 14:24:21', '2022-02-11 14:24:21'),
(88, 'Mr. Mohammad Quitzon', 'balistreri.deron@example.org', '660.635.3848', 'Kuphal, Beer and Tremblay', '77252 Nathanael Coves\nSengerstad, VT 69053', 'sed', 'Sed explicabo et iste officiis et. Id laboriosam suscipit autem magnam quo. Quia saepe et quibusdam deserunt deserunt nobis eligendi. Omnis esse id saepe aliquid deleniti ipsam.', '2022-02-11 14:24:21', '2022-02-11 14:24:21'),
(89, 'Velda Ledner', 'mclaughlin.ariane@example.org', '769-929-4018', 'Weimann and Sons', '647 Kerluke Extensions Suite 516\nLindgrenfort, WI 65028-1131', 'et', 'Non aut explicabo autem id facere. Aliquam tempora et tempora quis non pariatur ut. Voluptas et animi sint labore.', '2022-02-11 14:24:21', '2022-02-11 14:24:21'),
(90, 'Mr. Colin Bins', 'russel.rubie@example.com', '380.475.2375', 'Hane-Murphy', '90139 Altenwerth Lock\nKuhichaven, ME 15075', 'ut', 'Quibusdam esse asperiores ea. Amet consequuntur quas facere soluta necessitatibus quo. Quod eos nihil sunt.', '2022-02-11 14:24:21', '2022-02-11 14:24:21'),
(91, 'Dr. Paris Renner V', 'hkulas@example.net', '1-828-635-9763', 'Koepp Ltd', '6829 Swaniawski Village\nWest Luestad, MS 41320-9991', 'officia', 'Sunt iste corporis quia ut dolor. Omnis est veniam qui ipsum recusandae. Culpa quidem rerum sint omnis odit accusantium.', '2022-02-11 14:24:21', '2022-02-11 14:24:21'),
(92, 'Maxwell Schneider', 'dohara@example.net', '1-616-297-0139', 'Wuckert-Frami', '65631 Coralie Dale Apt. 024\nPort Wendyshire, OR 54630', 'et', 'Asperiores rem ut saepe. Sed dolores eaque ut nisi. Laborum rerum ea recusandae maxime modi autem quia. Fugiat dolorem qui non dolorem provident cupiditate id.', '2022-02-11 14:24:50', '2022-02-11 14:24:50'),
(93, 'Mr. Terrance Pacocha II', 'eichmann.zelda@example.org', '878-679-1262', 'Mohr LLC', '292 Judd Fort Suite 649\nJorgeside, OR 32836-6709', 'eum', 'Neque et nostrum minus quia nemo non sunt. Sequi id velit optio est eum. Iure nihil ullam fugit illo.', '2022-02-11 14:24:50', '2022-02-11 14:24:50'),
(94, 'Lina Bruen PhD', 'jayme.walter@example.com', '(978) 232-4446', 'Little-Simonis', '83440 Quitzon Junction Apt. 142\nKeirachester, PA 68950-6751', 'excepturi', 'Vitae blanditiis laudantium reprehenderit ut eius aperiam adipisci. Quae molestias sunt et asperiores sit. Illum vitae ipsa saepe ipsam repellat eos. Quam vero quo quibusdam neque.', '2022-02-11 14:24:50', '2022-02-11 14:24:50'),
(95, 'Grant Volkman', 'howe.lonnie@example.net', '+1 (520) 538-5140', 'Langosh-Dicki', '6651 Swaniawski Valley Apt. 874\nNorth Romaine, HI 44933', 'occaecati', 'Accusamus voluptas natus omnis cumque dolore. Corporis velit officia maxime accusamus sit aspernatur eum. Qui ipsam eos et soluta hic facilis aut. Dolores facere unde asperiores.', '2022-02-11 14:24:50', '2022-02-11 14:24:50'),
(96, 'Sadye Bradtke', 'verona.johnson@example.org', '+1 (720) 972-3077', 'Heaney Ltd', '58890 Deangelo Parkway\nCristmouth, ME 88192-1067', 'omnis', 'Molestiae earum labore aut voluptatibus ea necessitatibus consectetur. Dolorem quos et quam incidunt. Qui in aut qui aliquam autem nihil.', '2022-02-11 14:24:50', '2022-02-11 14:24:50'),
(97, 'Providenci Collier', 'isac22@example.org', '(726) 287-6056', 'Kunze, Emard and Douglas', '1049 Nadia Lodge Suite 530\nLake Elmo, UT 82665', 'soluta', 'Ipsam quibusdam qui omnis alias. Sunt et sit aut id dolor. Odit nesciunt iste fugit deserunt quas. Ducimus omnis sed eos illo debitis alias. Commodi quia inventore quibusdam sint pariatur deserunt.', '2022-02-11 14:24:50', '2022-02-11 14:24:50'),
(98, 'Juana Auer', 'ursula.kihn@example.net', '443.709.9315', 'Ziemann-Miller', '5591 Hipolito Coves Apt. 593\nLockmanburgh, MI 62893', 'quis', 'Est sed amet dolores autem nihil debitis sit. Exercitationem repellendus voluptate velit quidem. Laborum consequatur aut quaerat accusamus occaecati ipsam. Dolore aut sunt porro natus quasi ipsa et. Expedita dolor sint unde tenetur error minima sed.', '2022-02-11 14:24:50', '2022-02-11 14:24:50'),
(99, 'Natasha Flatley', 'laurine95@example.com', '1-913-848-4985', 'Ratke, Pollich and Hoeger', '89838 Angus Harbors Apt. 049\nNorth Raymondport, AZ 19938', 'eum', 'Ipsum ullam voluptas est eaque aut. Non nihil architecto assumenda laudantium. Molestiae et id et excepturi veritatis. Autem nam atque voluptatem aspernatur soluta.', '2022-02-11 14:24:50', '2022-02-11 14:24:50'),
(100, 'Dr. Geovanny Russel Jr.', 'shanahan.cecelia@example.org', '657.972.3219', 'Kautzer-Ondricka', '70555 Dedrick Extension Suite 937\nGusikowskishire, TN 37676', 'quis', 'Corporis aspernatur excepturi dolor. Unde voluptas repellat ipsa ut voluptas. Fuga eligendi necessitatibus eos corrupti labore voluptas sit. Omnis tempore est vitae et rerum beatae.', '2022-02-11 14:24:50', '2022-02-11 14:24:50'),
(101, 'Margie Dicki', 'jlittel@example.org', '854-958-7733', 'Paucek Ltd', '9502 Jed Fords Suite 990\nPort Natasha, NJ 52131', 'ex', 'Molestiae non et voluptatem praesentium. Blanditiis consequatur ad aspernatur qui nulla. Dolore dolor cupiditate a incidunt.', '2022-02-11 14:24:50', '2022-02-11 14:24:50'),
(102, 'Charley McKenzie', 'jeramie26@example.org', '+15595418329', 'Bosco, Weissnat and Kris', '593 Balistreri Ports\nSouth Celine, WV 62143', 'aut', 'Similique iste corporis voluptas facilis occaecati. Qui id magni rerum commodi ullam expedita exercitationem. Asperiores aut consequuntur quia ut tenetur illo eaque.', '2022-02-11 14:27:37', '2022-02-11 14:27:37'),
(103, 'Jessica Tromp DDS', 'serenity.west@example.net', '1-325-345-6063', 'Walker PLC', '4066 Bruen Fields\nWest Hudson, OH 68421', 'fuga', 'Occaecati placeat aut adipisci itaque. Optio eos repellat id quaerat et qui. Commodi aperiam mollitia omnis voluptatem et et aut.', '2022-02-11 14:27:37', '2022-02-11 14:27:37'),
(104, 'Bethany Tromp', 'delphia.bruen@example.net', '+18638376212', 'Abernathy, Stark and Raynor', '58319 Alexandro Rapids Suite 080\nTessiefort, AR 27503-4280', 'sit', 'Qui magni excepturi libero adipisci nesciunt quod et eum. Qui et pariatur molestias incidunt quo nihil. Cum magnam vel qui maiores est atque quia.', '2022-02-11 14:27:37', '2022-02-11 14:27:37'),
(105, 'Alysha Veum', 'treutel.mozelle@example.com', '1-669-642-1700', 'Nienow-Crooks', '6459 Russel Shores Apt. 364\nNorth Viva, MA 45800', 'architecto', 'Soluta fuga optio blanditiis nesciunt dolore culpa. Est aut aspernatur qui. Consequuntur voluptatem ut modi. Sequi animi incidunt possimus velit unde distinctio fuga.', '2022-02-11 14:27:37', '2022-02-11 14:27:37'),
(106, 'Novella Wilderman', 'mafalda57@example.com', '646.250.5055', 'Oberbrunner and Sons', '3738 Wilfred Forest Suite 800\nNorth Johannborough, AK 78417', 'error', 'Ut architecto ipsum et ut dicta voluptas est. At repellat alias molestiae deserunt amet ipsam. Illo est et veritatis est.', '2022-02-11 14:27:37', '2022-02-11 14:27:37'),
(107, 'Jaycee Howe', 'finn.blick@example.net', '1-585-962-5798', 'Runolfsson Ltd', '201 Cary Islands Suite 450\nPort Patsy, CO 38746-4542', 'doloremque', 'Voluptatum incidunt commodi aliquid praesentium. Qui occaecati veritatis voluptas atque illum sint quo. Sit atque sint quia inventore minima quia voluptatum.', '2022-02-11 14:27:37', '2022-02-11 14:27:37'),
(108, 'Miss Rosalinda Parisian I', 'hansen.donnie@example.com', '+1-270-888-9728', 'Kulas PLC', '9919 Allan Ville Suite 124\nBodeburgh, KY 28087-8801', 'occaecati', 'Maxime voluptatem voluptatem maxime. Voluptate cupiditate praesentium distinctio dignissimos rerum blanditiis odit. Est ipsa vitae ut quae eos et aut. Corporis autem iste alias quidem nihil ut. Quae assumenda nisi ut voluptas aliquam nihil nihil.', '2022-02-11 14:27:37', '2022-02-11 14:27:37'),
(109, 'Dr. Shayne Nikolaus', 'greenholt.mateo@example.net', '1-947-213-1986', 'Hessel-Schimmel', '683 Nestor Camp Apt. 849\nLake Vince, AK 40211', 'modi', 'Autem et autem nemo natus corrupti. Occaecati ipsa voluptatum occaecati nam deleniti. Et labore velit omnis dolor in esse maxime. Animi ut et totam ullam sequi ducimus porro.', '2022-02-11 14:27:37', '2022-02-11 14:27:37'),
(110, 'Delta Bergstrom', 'toney.boehm@example.net', '(740) 850-4135', 'Hane-Hammes', '8212 Feest Villages Suite 323\nGermaineville, TN 02269', 'distinctio', 'Minima quisquam eum dolorem sed aut. Delectus qui qui et doloribus nulla voluptatem. Incidunt delectus ea aut mollitia debitis veniam eius est. Quis maiores fuga voluptatem rerum quam. Ut et quia voluptatem reiciendis perferendis cumque impedit.', '2022-02-11 14:27:37', '2022-02-11 14:27:37'),
(111, 'Emely Sawayn', 'stracke.verna@example.net', '1-412-469-9212', 'Ziemann Group', '823 O\'Conner River Apt. 541\nHoppetown, KY 71240-8152', 'consequatur', 'Sit rerum inventore aut ea. Modi temporibus doloremque nam ea qui. Dolorem optio expedita velit aut sunt quia. Quasi cum aliquid porro aut voluptatem laudantium. Nulla enim doloremque ducimus et eos perspiciatis ea.', '2022-02-11 14:27:37', '2022-02-11 14:27:37'),
(112, 'John mccarthy Doe', 'johndoe@gmail.com', '+233542441933', 'Test company', 'this is customer address', 'atlantus', 'This is a comment', '2022-02-15 17:14:12', '2022-02-15 17:14:12'),
(113, 'Mr. Horacio Goodwin', 'hagenes.abelardo@example.org', '302.337.1550', 'Denesik LLC', '428 Bechtelar Villages Suite 153\nNew Lexibury, MI 37349-4012', 'voluptas', 'Autem dolores ad quis quia ipsa. Itaque non consequuntur blanditiis odit aut fugiat. Magnam expedita molestiae placeat error tempora.', '2022-02-17 15:31:06', '2022-02-17 15:31:06'),
(114, 'Mr. Buster Parisian DVM', 'vernie82@example.com', '(312) 339-2204', 'Bradtke, Bode and Robel', '1359 Hamill View\nDanefurt, AK 22565-1519', 'similique', 'Corrupti suscipit ut voluptatem. Delectus perferendis asperiores molestiae beatae. Facere sapiente nihil nulla aut animi quae facilis.', '2022-02-17 15:31:06', '2022-02-17 15:31:06'),
(115, 'Vito Hoppe', 'stokes.martine@example.com', '+1-838-526-2425', 'Dach, Lynch and Kovacek', '4544 Cremin Pine Apt. 663\nHomenickstad, AZ 43796-6154', 'est', 'Cupiditate molestiae perspiciatis explicabo. Nihil ut ipsa voluptate earum earum. Molestiae et porro neque velit quia. Minus nostrum porro odit dolorem sed.', '2022-02-17 15:31:06', '2022-02-17 15:31:06'),
(116, 'Lukas Shanahan', 'petra.stracke@example.org', '+1.678.794.7648', 'Okuneva, Hintz and Senger', '136 Bailey Pass Suite 119\nNorth Uniquefurt, WY 11230-3582', 'nam', 'Quia omnis voluptatibus voluptas sint. Debitis eligendi quia reprehenderit error sapiente qui id laborum. Quaerat qui earum dolor omnis incidunt.', '2022-02-17 15:31:06', '2022-02-17 15:31:06'),
(117, 'Jed Kreiger III', 'zboncak.toney@example.net', '+1-878-679-3321', 'Lehner, Rice and Schamberger', '698 Fay Unions Suite 313\nKshlerinmouth, NY 34657-3225', 'ut', 'Voluptates sit in consequuntur distinctio. Blanditiis est et hic recusandae. Est quam recusandae ut et consequatur.', '2022-02-17 15:31:06', '2022-02-17 15:31:06'),
(118, 'Mr. Howell Stroman', 'ejacobi@example.net', '+1-828-201-9682', 'Towne-Okuneva', '5796 Schimmel Plains Suite 529\nSwaniawskifort, VT 22981', 'tenetur', 'Ipsa veniam labore eligendi corporis placeat et facere. Praesentium exercitationem voluptatem nostrum cumque. Eum illum molestias qui dolor.', '2022-02-17 15:31:06', '2022-02-17 15:31:06'),
(119, 'Prof. Gretchen Buckridge PhD', 'brook.dickens@example.com', '763-421-9633', 'Franecki-Wilderman', '48220 Howell Square\nWest Cierra, MA 21060', 'et', 'Neque quasi corrupti sint occaecati quas assumenda est. Vel consequatur expedita ipsam explicabo esse est. Et quibusdam tempore tempore a. Est mollitia illo unde est in qui.', '2022-02-17 15:31:06', '2022-02-17 15:31:06'),
(120, 'Kasandra Cormier III', 'xkuvalis@example.org', '985.569.5596', 'Koelpin Group', '90929 Yvette Neck Suite 660\nNew Gilbert, AL 81860', 'repellendus', 'Fugiat voluptate doloribus enim iste iure. Earum corporis ad omnis unde quae. Ipsum deleniti quae corporis esse temporibus.', '2022-02-17 15:31:06', '2022-02-17 15:31:06'),
(121, 'Prof. Alvah Kiehn', 'jettie.schumm@example.org', '+1.619.858.0464', 'DuBuque, Veum and Halvorson', '7545 Leuschke Loop\nSanfordtown, MI 84145', 'quasi', 'Qui vel aliquid ab recusandae eos accusamus nihil praesentium. Ea voluptatem debitis sequi nemo.', '2022-02-17 15:31:06', '2022-02-17 15:31:06'),
(122, 'Emily Kunze', 'gaylord.breana@example.net', '+1-501-556-2271', 'Predovic, Bruen and Funk', '4910 Catalina Plains\nNorth Rosemouth, VT 59496-6095', 'pariatur', 'Aut nihil possimus voluptate provident. Illum odio sed voluptatem aut necessitatibus. Sed provident adipisci ab cumque exercitationem non.', '2022-02-17 15:31:06', '2022-02-17 15:31:06'),
(123, 'Antone Schoen', 'bschuppe@example.net', '959.782.6813', 'Langosh-Stoltenberg', '6706 Izaiah Junction\nJadaville, VA 51314', 'ut', 'Aut est incidunt maxime placeat. Qui incidunt et repudiandae enim et. Eius vero est architecto. Sint cumque odit voluptatem necessitatibus magni laudantium.', '2022-02-17 15:42:14', '2022-02-17 15:42:14'),
(124, 'Dr. Trisha Kuhn III', 'kale.dooley@example.com', '979-632-4955', 'Hayes PLC', '66646 Nathanial Rapid Suite 479\nMarjorieton, OK 39482-3464', 'quisquam', 'Temporibus sint laboriosam enim dolore inventore doloribus tenetur. Consequatur nobis iure incidunt possimus eos.', '2022-02-17 15:42:14', '2022-02-17 15:42:14'),
(125, 'Hudson Schimmel', 'antonina49@example.com', '586-409-7767', 'Cremin, Waelchi and Sanford', '6674 Kshlerin Coves Suite 264\nFerryshire, MS 59705-2286', 'voluptatibus', 'Pariatur et voluptate nostrum qui maxime itaque. Itaque ipsa officiis corporis iste consequatur ad perspiciatis. Amet veritatis rerum nisi. Quia mollitia quis nisi mollitia quaerat iste excepturi nisi.', '2022-02-17 15:42:14', '2022-02-17 15:42:14'),
(126, 'Prof. Wade Baumbach', 'rowena.mccullough@example.net', '+1-220-228-1716', 'Hegmann-Hansen', '355 Flatley Station\nWest Lavadamouth, WY 78285', 'provident', 'Quia sed reprehenderit sint animi aspernatur. Consectetur eum ut in mollitia sit id. Quia voluptatem praesentium porro.', '2022-02-17 15:42:14', '2022-02-17 15:42:14'),
(127, 'Shana Boyle', 'vkunde@example.com', '1-352-343-3114', 'Frami PLC', '631 Hill Mount Apt. 696\nGabriellehaven, WV 41097-6572', 'amet', 'Sequi quia quia reprehenderit eum consequatur sequi. Autem qui fugit ad quae odit iusto. Laudantium deleniti aliquam excepturi consequatur cupiditate.', '2022-02-17 15:42:14', '2022-02-17 15:42:14'),
(128, 'Cassandra Fisher', 'heber.feest@example.com', '872-243-5185', 'Bayer-Altenwerth', '41682 Isac Island\nLake Matildaberg, VT 30720', 'harum', 'Laborum ullam rerum ad laudantium maiores velit quae rerum. Sequi et explicabo quia corrupti temporibus aut ratione. Ex officia iste et quaerat ex accusantium et. Distinctio quasi neque qui quia amet sit quia.', '2022-02-17 15:42:14', '2022-02-17 15:42:14'),
(129, 'Luella Kunde', 'oma54@example.com', '(580) 806-8962', 'Kling Group', '6417 Hartmann Field Apt. 430\nElfriedafurt, CO 50853', 'facilis', 'Et eum omnis eum dolor. Praesentium hic sit quae qui eius aut. Incidunt repudiandae in est voluptas recusandae et. Atque et totam quia qui ea sunt accusamus.', '2022-02-17 15:42:14', '2022-02-17 15:42:14'),
(130, 'Norberto Carter III', 'ablick@example.com', '+1 (323) 302-2861', 'Bartell-King', '7025 Mayert Expressway\nLamontshire, CT 66712', 'dolores', 'Illum omnis et et a nemo laboriosam. Magnam et tenetur rem sit. Amet sequi ducimus natus.', '2022-02-17 15:42:14', '2022-02-17 15:42:14'),
(131, 'Mozell Maggio', 'javon.kuhic@example.org', '+1-814-449-7314', 'O\'Keefe LLC', '799 Greenholt Springs\nHermanhaven, MT 68963', 'quae', 'Totam ab repellat et maxime dignissimos molestiae. Earum nihil quia officia architecto iure laudantium odio.', '2022-02-17 15:42:14', '2022-02-17 15:42:14'),
(132, 'Dino Yost', 'idurgan@example.com', '458.410.1173', 'Romaguera, Ferry and Botsford', '806 Judd Cove Apt. 982\nPort Adaline, RI 97744-5813', 'consequatur', 'Ad fugit rerum maxime deserunt et autem. Ut et eligendi corporis aperiam doloremque nihil. Eum quisquam ut consequatur quas magni velit optio. Alias molestias sapiente ut autem sequi aut sed minima.', '2022-02-17 15:42:14', '2022-02-17 15:42:14'),
(133, 'Orlo Heathcote', 'glover.rose@example.org', '541.677.3078', 'Bartoletti, Parisian and Spinka', '131 Myles Track Apt. 710\nMarcosshire, OK 36411', 'pariatur', 'Ratione commodi soluta amet similique voluptatem qui quasi. Laborum ullam aut dolor autem praesentium. Atque nihil quis voluptatem fugit voluptas.', '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(134, 'Prince Larkin', 'conn.toby@example.com', '+1.854.467.8986', 'Christiansen LLC', '87404 Keon Via\nEast Vivienne, NC 30097', 'quis', 'Reprehenderit ipsa ab aut praesentium quasi reiciendis repellat. Non sunt nesciunt sunt ut quae vitae ad. Consectetur id sapiente provident omnis.', '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(135, 'Nikko Braun I', 'ericka.russel@example.net', '1-970-405-0038', 'Kerluke, Fadel and Dickens', '8461 Laron Plain Apt. 318\nPort Verdie, DE 61413', 'est', 'Perferendis quis velit facilis aspernatur enim non cum. Minus molestias et expedita nemo similique. Cupiditate praesentium suscipit et culpa aperiam. Rem repudiandae aut autem.', '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(136, 'Prof. Gloria Ernser III', 'johnson.cleo@example.com', '+12407052078', 'Skiles-Towne', '9827 Johnson Rapids\nLeonelhaven, MI 44630', 'vitae', 'Illo in aliquid est inventore excepturi. Accusantium beatae voluptas consectetur id. Ut perferendis quam eius nihil maxime tempora est eum. Inventore dolorem eligendi ducimus quisquam.', '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(137, 'Delbert Kulas PhD', 'bernier.demond@example.net', '(586) 909-5457', 'Nader, Bernhard and Kuhlman', '8161 Dora Spur\nWest Wilma, WI 14636', 'omnis', 'Ipsam non doloremque commodi qui. In blanditiis molestias vel modi quasi suscipit iste. Tempore ut doloribus sint similique deleniti.', '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(138, 'Sofia McCullough', 'davin34@example.com', '830.212.4037', 'Dibbert-Pagac', '73755 Glenna Burgs Suite 169\nLake Eribertomouth, MT 84621', 'qui', 'Alias ab ipsa assumenda. A voluptates voluptatem ad. Pariatur odio quas minus aspernatur. Assumenda dignissimos enim dolorem placeat accusamus.', '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(139, 'Brady Hane', 'gislason.francisco@example.com', '+1-339-942-8105', 'Hayes-Gusikowski', '9541 Bernie Heights Apt. 409\nPort Ocieton, TN 16074', 'sint', 'Molestias placeat deserunt non et quia. Eos eveniet illum autem velit. Veniam voluptas laudantium necessitatibus voluptatibus velit. At quidem ad placeat nihil tempora quia.', '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(140, 'Lola King', 'amparo.funk@example.com', '+19418656713', 'Schuppe, Gusikowski and Mosciski', '17606 Kelsi Track Suite 872\nWolfborough, NJ 76509', 'ipsam', 'Iusto est repellat rerum aut dolor ipsam. Consequuntur quis ipsum error quis. Nesciunt nobis repellat ut ea voluptatem et.', '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(141, 'Ricardo Cormier', 'uriah.gorczany@example.com', '+1-513-836-8646', 'Bradtke-Steuber', '2849 Graham Crossroad\nWest Tombury, OK 85357', 'quasi', 'Ratione iste dolorem non et voluptate sequi. At harum doloribus sapiente quia aperiam. Necessitatibus ut magnam incidunt molestias corrupti est.', '2022-02-18 15:58:46', '2022-02-18 15:58:46'),
(142, 'Jaime Koelpin Sr.', 'dshields@example.org', '+1 (517) 579-7846', 'Steuber-Runolfsdottir', '9420 King Roads Apt. 313\nWest Linnie, FL 21910-3720', 'labore', 'Similique reiciendis veritatis modi et asperiores placeat necessitatibus. Perspiciatis ut dolorum repellat modi. Quod distinctio placeat odio commodi. Ducimus molestiae velit non facilis.', '2022-02-18 15:58:46', '2022-02-18 15:58:46');
INSERT INTO `suppliers` (`id`, `name`, `email`, `phone`, `company`, `address`, `product`, `comment`, `created_at`, `updated_at`) VALUES
(143, 'Mr. Presley Funk', 'zcarroll@example.com', '1-615-867-6764', 'Eichmann-Stamm', '8685 Renner Pine Suite 011\nWest Haskellview, CA 23255-1237', 'adipisci', 'Sunt illo ut eum et sit illum. Sunt rerum laudantium cum nesciunt quidem. At recusandae inventore ea quidem deleniti qui ex.', '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(144, 'Dr. Lester Wolf DDS', 'huel.freda@example.com', '570-232-4870', 'Harris PLC', '8734 Kaleigh Trail\nRebekahshire, MI 67227', 'facere', 'Nemo iusto ut ipsam voluptatem fuga dolorem. Qui iste nostrum recusandae fugiat dolores vero. Et natus hic repellendus sed eligendi aliquam ea. Et dolorem reprehenderit nam at. Sed dignissimos cum reprehenderit aut aut.', '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(145, 'Hubert Quigley', 'westley.nicolas@example.net', '1-360-467-3398', 'Roob-Quitzon', '36679 Beatty Pine\nPort Edgardo, WY 83885', 'et', 'Repudiandae voluptatum necessitatibus repellendus mollitia. Aut dolorem nemo aut. Et culpa sit aut hic.', '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(146, 'Kenyatta King DDS', 'emard.noel@example.net', '+18485869105', 'Yost, Moen and Bartell', '33814 Raynor Parkway Apt. 551\nBeiershire, OH 79370-5445', 'autem', 'Iure aut eum dolorum doloremque nihil. Quam architecto dolor quo qui temporibus dolorem dignissimos. Sunt quis veniam nulla. Atque et et eveniet dolor.', '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(147, 'Mr. Damion Schaden Sr.', 'chet64@example.org', '1-912-428-1807', 'Simonis Inc', '3750 Chelsie Forge Suite 022\nSalvadorchester, NY 37544-0241', 'quia', 'Aperiam ut omnis voluptates ut veritatis. Adipisci expedita doloremque eligendi aut. Omnis expedita doloribus nobis occaecati.', '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(148, 'Kameron Koelpin', 'bkreiger@example.net', '+1-828-291-0121', 'Wuckert and Sons', '2469 Okuneva Ports Apt. 535\nLehnermouth, NM 58633', 'recusandae', 'Velit tempore architecto dicta cupiditate minus suscipit consequatur. Repellat quia omnis nesciunt facilis consequatur. Qui consectetur nihil dicta excepturi illo.', '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(149, 'Mariane Ullrich III', 'wstoltenberg@example.net', '1-541-880-6569', 'Pfeffer, Hahn and Collier', '1341 Pollich Trace Suite 645\nLake Lorenza, VT 34510', 'quis', 'Accusantium natus magni est eos quasi repellat. Dolores nostrum possimus rerum magnam consequuntur culpa commodi. Ea vero deleniti facilis iure aut. Nostrum repellendus dolores id cumque.', '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(150, 'Joseph Parker', 'selena.legros@example.org', '928-517-3047', 'Bode Inc', '8726 Colin Crest Apt. 654\nEmmettbury, RI 14355-5146', 'doloribus', 'Necessitatibus voluptates dolor quibusdam consequatur. Facilis quaerat et qui totam.', '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(151, 'Dr. Watson Lubowitz', 'elaina50@example.com', '650.578.4689', 'Hintz, Hermann and Marquardt', '4457 Mason Wells Suite 421\nSouth Clementina, NV 49522-7922', 'impedit', 'Maiores dignissimos est molestias ad accusamus repellat culpa ea. Qui quo dignissimos omnis facilis. Voluptas sequi quo tempore temporibus animi itaque rerum. Est temporibus consequuntur impedit omnis.', '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(152, 'Dr. Jeramy Balistreri', 'jaydon55@example.net', '435.910.0105', 'Hermiston LLC', '745 Koelpin Harbors\nMcKenzieville, CT 15944-3796', 'ut', 'Excepturi facere sint qui tempore voluptates nobis quia. Reprehenderit consequatur quis facilis et velit libero recusandae. Non praesentium ut ipsa aut.', '2022-02-18 15:59:06', '2022-02-18 15:59:06'),
(153, 'Curt Kuhn', 'rhoda31@example.com', '850-593-2952', 'Barton, Greenfelder and Ernser', '587 Blick Flats Suite 441\nNorth Joside, ND 68695', 'sit', 'Dolorum vel molestias enim delectus perferendis voluptatibus enim. Hic est architecto quos aut id. Et qui alias sint beatae officia sit excepturi fugit.', '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(154, 'Rosalinda Wiegand V', 'wade.miller@example.net', '+13524980371', 'Hirthe Group', '994 Renner Ridges Apt. 218\nAlveramouth, HI 84792-0589', 'at', 'A rerum aliquam sit tempora esse. Voluptas assumenda iure est officia dolores ea. Eius nobis et voluptatibus nulla iste laudantium. Quasi cupiditate at soluta deleniti nostrum.', '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(155, 'Nella McDermott', 'oruecker@example.com', '484.599.2481', 'Runolfsdottir, Treutel and VonRueden', '5263 Gulgowski Ferry Apt. 757\nWest Aglae, IN 04582-1167', 'quia', 'Debitis voluptatem illo tempore occaecati. Eveniet dolores eum quaerat blanditiis. Aperiam aut rem quia. Autem provident ex non perspiciatis.', '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(156, 'Darron Treutel', 'cora79@example.com', '1-631-523-7552', 'Bayer, Treutel and Ryan', '472 Koss Route Suite 977\nKemmerport, AR 16677', 'ab', 'Sint ipsam eum veritatis natus. Ut exercitationem facilis sit non non molestias. Minima accusantium rem aliquid deleniti labore nisi velit. Veritatis nemo non rerum facere.', '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(157, 'Miss Esther Schmeler', 'ykuhn@example.net', '802-690-1130', 'Kuphal, Hyatt and Rosenbaum', '59326 Gaylord Centers Suite 729\nNorth Anais, SC 41596-6933', 'doloremque', 'Illum quaerat dolores blanditiis repellat laboriosam voluptas itaque. Asperiores dolores ut quo odio ut expedita quo. Ut dolorum eum et vitae exercitationem. Sapiente qui similique repellendus est.', '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(158, 'Mrs. Samara Kling III', 'reece43@example.com', '+19782779534', 'Miller Inc', '58885 Emelia Prairie Apt. 704\nSouth Judd, OR 38042', 'et', 'Eligendi tempore mollitia cupiditate sequi ad aliquid. Libero qui voluptas est voluptatum dolorum veritatis autem iusto.', '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(159, 'Dr. Eli Sipes', 'ufunk@example.net', '(402) 235-5408', 'Wyman, Kovacek and Kozey', '94859 Blanda Tunnel Apt. 888\nEast Renee, CO 72273-2162', 'natus', 'Distinctio est nam aliquam aperiam doloribus pariatur vel. Velit dolor maiores sit molestiae sed odio sed. Commodi omnis libero exercitationem. Dolore aut totam consequuntur voluptas id distinctio.', '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(160, 'Gardner Jerde', 'weber.luz@example.org', '770.592.1240', 'Quitzon Inc', '626 Ernser Drive Apt. 008\nBernhardbury, PA 03695-0788', 'laboriosam', 'Eligendi accusantium cumque dolores hic et magni. Provident accusantium doloribus blanditiis molestiae totam velit. Amet ut eveniet aut est maiores officia dolorem. Voluptatem et voluptatem nisi adipisci quas cum. Et sed aliquam quos modi totam nulla.', '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(161, 'Erika Ferry DDS', 'sigurd91@example.org', '+17186597261', 'Sanford Ltd', '95630 Erdman Plaza Apt. 136\nNorth Blanche, MA 80091-9268', 'et', 'Voluptatem et sint nisi enim non voluptas consequatur. Maxime quia vero in error voluptatibus vero exercitationem. Laborum qui aliquam voluptatem est mollitia. Suscipit non odit aut ipsa. Praesentium libero eos itaque.', '2022-02-18 16:37:15', '2022-02-18 16:37:15'),
(162, 'Dr. Barton Labadie Jr.', 'schaden.desmond@example.net', '(336) 515-1539', 'Rodriguez, Hansen and Witting', '987 Hipolito Path\nWest Arjun, KS 81742-4052', 'earum', 'Provident aut tempora debitis quidem ab in. Doloribus magni corporis distinctio ipsam. Tempora ab sed dolorem est molestias quia quo dolores.', '2022-02-18 16:37:15', '2022-02-18 16:37:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `avatar`) VALUES
(1, 'Jamal Admin', 'admin@admin.com', NULL, '$2y$10$mPjO4usbUvyeaQQOBp7AH.nsMCZBPDHuk4zxfOiGGjowAsnkDIB9G', NULL, '2022-02-08 17:53:22', '2022-02-09 14:56:14', '1644418035.jpg'),
(2, 'Jermey Larkin V', 'rath.theron@example.net', '2022-02-09 13:32:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tfgs61LKmk', '2022-02-09 13:32:43', '2022-02-09 13:32:43', NULL),
(3, 'Mr. Evan Pollich', 'gsporer@example.com', '2022-02-09 13:32:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bGsgWyJX0h', '2022-02-09 13:32:55', '2022-02-09 13:32:55', NULL),
(5, 'Mr. Ferne Emmerich', 'mpacocha@example.net', '2022-02-09 13:32:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xEBaZif9MN', '2022-02-09 13:32:55', '2022-02-09 13:32:55', NULL),
(6, 'Celine Schultz', 'rkreiger@example.net', '2022-02-09 13:32:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rzgQQHXPCZ', '2022-02-09 13:32:55', '2022-02-09 13:32:55', NULL),
(7, 'Miss Serena Weber', 'edgar.bogan@example.net', '2022-02-09 13:32:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'I0Xo4TRMn1', '2022-02-09 13:32:55', '2022-02-09 13:32:55', NULL),
(8, 'Julie Mertz', 'dgleason@example.net', '2022-02-09 13:32:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rcN0DX4K3h', '2022-02-09 13:32:55', '2022-02-09 13:32:55', NULL),
(10, 'Ernestina Stokes Sr.', 'prosacco.viva@example.org', '2022-02-09 13:32:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'R47tUWRQhf', '2022-02-09 13:32:55', '2022-02-09 13:32:55', NULL),
(12, 'Mack Leffler', 'bulah.reinger@example.net', '2022-02-09 13:32:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'b6n1ZN3XFg', '2022-02-09 13:32:55', '2022-02-09 13:32:55', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

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
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_purchase_id_foreign` (`purchase_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_category_id_foreign` (`category_id`),
  ADD KEY `purchases_supplier_id_foreign` (`supplier_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_product_id_foreign` (`product_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchases_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

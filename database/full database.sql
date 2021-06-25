-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 25, 2021 at 10:22 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doccure`
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
(1, 'Tramadol Category', '2021-06-15 14:39:34', '2021-06-21 21:04:31'),
(2, 'Another Test', '2021-06-16 11:33:55', '2021-06-16 16:35:40');

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
(16, '2014_10_00_000000_create_settings_table', 1),
(17, '2014_10_00_000001_add_group_column_on_settings_table', 1),
(18, '2014_10_12_000000_create_users_table', 1),
(19, '2014_10_12_100000_create_password_resets_table', 1),
(20, '2019_08_19_000000_create_failed_jobs_table', 1),
(21, '2021_06_11_190256_create_categories_table', 1),
(22, '2021_06_12_145702_create_suppliers_table', 1),
(23, '2021_06_13_153320_create_purchases_table', 1),
(24, '2021_06_14_092817_add_avatar_to_users_table', 1),
(25, '2021_06_14_112444_create_notifications_table', 1),
(26, '2021_06_15_013016_create_products_table', 1),
(27, '2021_06_15_022108_create_sales_table', 1),
(28, '2021_06_15_022848_give_discount_default_value_in_products_table', 1),
(29, '2021_06_15_024351_make_discount_decimal', 1),
(30, '2021_06_15_125136_add_total_price_and_purchase_id_to_sales_table', 1),
(31, '2021_06_15_141725_create_permission_tables', 2),
(32, '2021_06_25_190936_change_product_price_data_typ', 3),
(33, '2021_06_25_191107_change_purchase_price_data_typ', 3);

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
(1, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2);

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

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('0c53e923-742f-48e0-9f27-262c4d9770d7', 'App\\Notifications\\StockAlert', 'App\\Models\\User', 1, '{\"product_name\":\"Medicine Test\",\"quantity\":\"1\",\"image\":\"1623842873.jpg\"}', '2021-06-21 21:22:17', '2021-06-21 21:22:07', '2021-06-21 21:22:17'),
('23b0656c-f90f-4f4c-9fc9-71a52e2037af', 'App\\Notifications\\StockAlert', 'App\\Models\\User', 1, '{\"product_name\":\"Stock Test\",\"quantity\":\"-2\"}', '2021-06-16 17:48:22', '2021-06-16 17:34:16', '2021-06-16 17:48:22'),
('2cc76345-0ce8-4ef8-ac4e-6d17eb206025', 'App\\Notifications\\StockAlert', 'App\\Models\\User', 1, '{\"product_name\":\"Medicine Test\",\"quantity\":\"1\",\"image\":\"1623842873.jpg\"}', '2021-06-21 21:22:17', '2021-06-21 21:21:31', '2021-06-21 21:22:17'),
('39d133c7-c4e6-4e53-bb2c-374095869ef3', 'App\\Notifications\\StockAlert', 'App\\Models\\User', 2, '{\"product_name\":\"Medicine Test\",\"quantity\":\"1\",\"image\":\"1623842873.jpg\"}', '2021-06-21 21:26:00', '2021-06-21 21:23:20', '2021-06-21 21:26:00'),
('6793630a-687c-421d-92ef-a6a91fcde48f', 'App\\Notifications\\StockAlert', 'App\\Models\\User', 2, '{\"product_name\":\"Stock Test\",\"quantity\":\"1\",\"image\":null}', '2021-06-20 00:39:55', '2021-06-20 00:34:29', '2021-06-20 00:39:55'),
('7aca6a54-b3f7-4d31-b4db-94a2ffb16409', 'App\\Notifications\\StockAlert', 'App\\Models\\User', 1, '{\"product_name\":\"Stock Test\",\"quantity\":\"1\",\"image\":null}', '2021-06-21 21:12:29', '2021-06-20 00:34:25', '2021-06-21 21:12:29'),
('8963f4d4-09fb-4e74-8f09-a1baf646870e', 'App\\Notifications\\StockAlert', 'App\\Models\\User', 1, '{\"product_name\":\"Medicine Test\",\"quantity\":\"1\",\"image\":\"1623842873.jpg\"}', '2021-06-21 21:23:27', '2021-06-21 21:23:10', '2021-06-21 21:23:27'),
('97668847-b69a-4271-adc6-6494390ad4d8', 'App\\Notifications\\StockAlert', 'App\\Models\\User', 2, '{\"product_name\":\"Stock Test\",\"quantity\":\"2\",\"image\":null}', '2021-06-19 23:49:38', '2021-06-19 23:47:21', '2021-06-19 23:49:38'),
('986aa5e9-6745-4a6f-bd86-e6f602e75d9c', 'App\\Notifications\\StockAlert', 'App\\Models\\User', 1, '{\"product_name\":\"Stock Test\",\"quantity\":\"2\",\"image\":\"1623868003.jpg\"}', '2021-06-16 18:48:28', '2021-06-16 18:27:00', '2021-06-16 18:48:28'),
('98ae2f42-ed37-4b03-bc9e-919bb81ae932', 'App\\Notifications\\StockAlert', 'App\\Models\\User', 1, '{\"product_name\":\"Stock Test\",\"quantity\":\"-2\"}', '2021-06-16 17:48:21', '2021-06-16 17:37:09', '2021-06-16 17:48:21'),
('9d46cfc3-ba62-4d16-b88a-37359563c7dc', 'App\\Notifications\\StockAlert', 'App\\Models\\User', 1, '{\"product_name\":\"Stock Test\",\"quantity\":\"-4\",\"image\":null}', '2021-06-16 18:19:10', '2021-06-16 18:11:38', '2021-06-16 18:19:10'),
('b84fcb0e-736e-4180-ac45-9efac6f52e45', 'App\\Notifications\\StockAlert', 'App\\Models\\User', 2, '{\"product_name\":\"Medicine Test\",\"quantity\":\"1\",\"image\":\"1623842873.jpg\"}', '2021-06-21 21:26:00', '2021-06-21 21:23:10', '2021-06-21 21:26:00'),
('bc4e114b-e649-46ca-b987-a33fc26f9386', 'App\\Notifications\\StockAlert', 'App\\Models\\User', 1, '{\"product_name\":\"Stock Test\",\"quantity\":\"1\",\"image\":\"1623868003.jpg\"}', '2021-06-16 18:48:28', '2021-06-16 18:28:12', '2021-06-16 18:48:28'),
('c49b8a06-2140-466d-b74e-6885c1298a05', 'App\\Notifications\\StockAlert', 'App\\Models\\User', 1, '{\"product_name\":\"Stock Test\",\"quantity\":\"-5\",\"image\":null}', '2021-06-16 18:48:28', '2021-06-16 18:25:27', '2021-06-16 18:48:28'),
('c7719f66-88c6-4ccb-96dd-b2b588bda9ba', 'App\\Notifications\\StockAlert', 'App\\Models\\User', 1, '{\"product_name\":\"Stock Test\",\"quantity\":\"-2\"}', '2021-06-16 17:51:44', '2021-06-16 17:49:57', '2021-06-16 17:51:44'),
('d59f9371-d11a-4e94-aa63-f600d395248f', 'App\\Notifications\\StockAlert', 'App\\Models\\User', 1, '{\"product_name\":\"Stock Test\",\"quantity\":\"-5\",\"image\":null}', '2021-06-16 18:48:28', '2021-06-16 18:19:16', '2021-06-16 18:48:28'),
('d68f16f1-a474-46a2-a523-342ac469465b', 'App\\Notifications\\StockAlert', 'App\\Models\\User', 1, '{\"product_name\":\"Stock Test\",\"quantity\":\"-2\"}', '2021-06-16 18:19:11', '2021-06-16 17:51:44', '2021-06-16 18:19:11'),
('d6e62585-6ce6-497f-a53e-63abd1833263', 'App\\Notifications\\StockAlert', 'App\\Models\\User', 1, '{\"product_name\":\"Medicine Test\",\"quantity\":\"1\",\"image\":\"1623842873.jpg\"}', '2021-06-21 21:24:57', '2021-06-21 21:24:44', '2021-06-21 21:24:57'),
('d8dfeb49-0687-4350-b300-f3d0c51b5657', 'App\\Notifications\\StockAlert', 'App\\Models\\User', 1, '{\"product_name\":\"Stock Test\",\"quantity\":\"-2\"}', '2021-06-16 17:48:22', '2021-06-16 17:33:24', '2021-06-16 17:48:22'),
('df3c6ece-467d-498f-892f-964f61fd5ad7', 'App\\Notifications\\StockAlert', 'App\\Models\\User', 2, '{\"product_name\":\"Medicine Test\",\"quantity\":\"1\",\"image\":\"1623842873.jpg\"}', '2021-06-21 21:26:00', '2021-06-21 21:22:07', '2021-06-21 21:26:00'),
('e0d2d4e9-3eeb-45d2-b23a-2715cd36a1aa', 'App\\Notifications\\StockAlert', 'App\\Models\\User', 1, '{\"product_name\":\"Medicine Test\",\"quantity\":\"1\",\"image\":\"1623842873.jpg\"}', '2021-06-21 21:23:27', '2021-06-21 21:23:20', '2021-06-21 21:23:27'),
('e7d3cce5-14bb-4354-863e-ab396918b1a4', 'App\\Notifications\\StockAlert', 'App\\Models\\User', 1, '{\"product_name\":\"Medicine Test\",\"quantity\":\"1\",\"image\":\"1623842873.jpg\"}', '2021-06-21 21:22:18', '2021-06-21 21:15:57', '2021-06-21 21:22:18'),
('e94e937b-4edf-42e3-86e0-f56767181a1e', 'App\\Notifications\\StockAlert', 'App\\Models\\User', 2, '{\"product_name\":\"Medicine Test\",\"quantity\":\"1\",\"image\":\"1623842873.jpg\"}', '2021-06-21 21:26:00', '2021-06-21 21:24:45', '2021-06-21 21:26:00');

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
(1, 'view-products', 'web', '2021-06-18 23:03:38', '2021-06-18 23:03:38'),
(2, 'create-product', 'web', '2021-06-18 23:04:13', '2021-06-18 23:04:13'),
(3, 'update-product', 'web', '2021-06-18 23:04:13', '2021-06-18 23:04:13'),
(4, 'destroy-product', 'web', '2021-06-18 23:04:14', '2021-06-18 23:04:14'),
(5, 'view-purchase', 'web', '2021-06-19 00:17:34', '2021-06-19 00:17:34'),
(6, 'create-purchase', 'web', '2021-06-19 00:17:35', '2021-06-19 00:17:35'),
(7, 'update-purchase', 'web', '2021-06-19 00:17:36', '2021-06-19 00:17:36'),
(8, 'destroy-purchase', 'web', '2021-06-19 00:17:36', '2021-06-19 00:17:36'),
(9, 'view-sales', 'web', '2021-06-19 09:01:11', '2021-06-19 09:01:11'),
(10, 'create-sales', 'web', '2021-06-19 09:01:12', '2021-06-19 09:01:12'),
(11, 'updated-sales', 'web', '2021-06-19 09:01:13', '2021-06-19 09:01:13'),
(12, 'destroy-sales', 'web', '2021-06-19 09:01:13', '2021-06-19 09:01:13'),
(13, 'view-supplier', 'web', '2021-06-19 09:01:54', '2021-06-19 09:01:54'),
(14, 'create-supplier', 'web', '2021-06-19 09:01:55', '2021-06-19 09:01:55'),
(15, 'update-supplier', 'web', '2021-06-19 09:01:56', '2021-06-19 09:01:56'),
(16, 'destroy-supplier', 'web', '2021-06-19 09:01:56', '2021-06-19 09:01:56'),
(17, 'view-reports', 'web', '2021-06-19 09:02:13', '2021-06-19 09:02:13'),
(19, 'create-user', 'web', '2021-06-19 09:03:04', '2021-06-19 09:03:04'),
(20, 'update-user', 'web', '2021-06-19 09:03:04', '2021-06-19 09:03:04'),
(21, 'destroy-user', 'web', '2021-06-19 09:03:04', '2021-06-19 09:03:04'),
(22, 'view-settings', 'web', '2021-06-19 09:03:32', '2021-06-19 09:03:32'),
(23, 'view-role', 'web', '2021-06-19 23:10:14', '2021-06-19 23:10:14'),
(24, 'update-role', 'web', '2021-06-19 23:10:14', '2021-06-19 23:10:14'),
(25, 'destroy-role', 'web', '2021-06-19 23:10:15', '2021-06-19 23:10:15'),
(26, 'create-role', 'web', '2021-06-19 23:10:15', '2021-06-19 23:10:15'),
(27, 'view-permission', 'web', '2021-06-19 23:10:40', '2021-06-19 23:10:40'),
(28, 'create-permission', 'web', '2021-06-19 23:10:40', '2021-06-19 23:10:40'),
(29, 'update-permission', 'web', '2021-06-19 23:10:41', '2021-06-19 23:10:41'),
(30, 'destroy-permission', 'web', '2021-06-19 23:10:41', '2021-06-19 23:10:41'),
(31, 'view-access-control', 'web', '2021-06-19 23:13:04', '2021-06-19 23:13:04'),
(32, 'view-users', 'web', '2021-06-19 23:18:16', '2021-06-19 23:18:16'),
(33, 'view-category', 'web', '2021-06-19 23:25:44', '2021-06-19 23:25:44'),
(34, 'create-category', 'web', '2021-06-19 23:25:45', '2021-06-19 23:25:45'),
(35, 'updated-category', 'web', '2021-06-19 23:25:45', '2021-06-19 23:25:45'),
(36, 'destroy-category', 'web', '2021-06-19 23:25:46', '2021-06-19 23:25:46'),
(37, 'view-expired-products', 'web', '2021-06-19 23:27:49', '2021-06-19 23:27:49'),
(38, 'view-outstock-products', 'web', '2021-06-19 23:27:49', '2021-06-19 23:27:49'),
(39, 'backup-app', 'web', '2021-06-24 17:45:52', '2021-06-24 17:45:52'),
(40, 'backup-db', 'web', '2021-06-24 17:48:30', '2021-06-24 17:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` decimal(15,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `discount` decimal(15,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `purchase_id`, `price`, `discount`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '10.00', '0.00', 'This is the description of the product', NULL, '2021-06-16 11:29:28', '2021-06-16 11:29:28'),
(2, 1, '5.00', '0.00', NULL, NULL, '2021-06-16 17:24:37', '2021-06-16 17:24:37'),
(3, 3, '5.00', '0.00', NULL, NULL, '2021-06-16 17:26:08', '2021-06-16 17:26:08'),
(4, 4, '5.00', '0.00', 'This product is 5 cedis per one.', NULL, '2021-06-21 21:06:43', '2021-06-21 21:06:43');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `supplier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` decimal(15,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_date` date NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `name`, `category_id`, `supplier_id`, `price`, `quantity`, `expiry_date`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Medicine Test', 1, 1, '500.00', '1', '2022-01-16', '1623842873.jpg', NULL, '2021-06-16 11:27:53', '2021-06-21 21:15:56'),
(2, 'Another test', 1, 1, '1000.00', '10', '2021-06-21', NULL, NULL, '2021-06-16 11:34:37', '2021-06-21 23:30:43'),
(3, 'Stock Test', 1, 1, '20.00', '1', '2021-06-25', NULL, NULL, '2021-06-16 12:07:19', '2021-06-21 21:22:06'),
(4, 'Tramadol', 1, 1, '200.00', '1', '2021-06-22', NULL, NULL, '2021-06-21 21:05:43', '2021-06-21 21:24:44');

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
(1, 'Super-admin', 'web', '2021-06-15 14:28:30', '2021-06-15 14:28:30'),
(3, 'Sales-person', 'web', '2021-06-19 09:32:22', '2021-06-19 09:32:22');

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
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(9, 3),
(10, 1),
(10, 3),
(11, 1),
(11, 3),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
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
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` double NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `product_id`, `quantity`, `total_price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 10, NULL, '2021-06-16 11:29:40', '2021-06-16 11:29:40'),
(2, 1, 2, 20, NULL, '2021-06-16 11:29:59', '2021-06-16 11:29:59'),
(3, 1, 3, 30, NULL, '2021-06-16 17:24:52', '2021-06-16 17:24:52'),
(4, 3, 3, 15, '2021-06-16 18:25:12', '2021-06-16 17:26:38', '2021-06-16 18:25:12'),
(5, 3, 1, 5, '2021-06-16 18:25:07', '2021-06-16 18:10:49', '2021-06-16 18:25:07'),
(6, 3, 1, 5, '2021-06-16 18:25:04', '2021-06-16 18:11:37', '2021-06-16 18:25:04'),
(7, 2, 1, 5, NULL, '2021-06-16 18:25:20', '2021-06-16 18:25:20'),
(8, 3, 1, 5, NULL, '2021-06-16 18:26:59', '2021-06-16 18:26:59'),
(9, 3, 1, 5, NULL, '2021-06-16 18:28:12', '2021-06-16 18:28:12'),
(10, 3, 1, 5, NULL, '2021-06-19 00:59:45', '2021-06-19 00:59:45'),
(11, 1, 2, 20, NULL, '2021-06-19 01:00:05', '2021-06-19 01:00:05'),
(12, 3, 1, 5, NULL, '2021-06-19 23:46:46', '2021-06-19 23:46:46'),
(13, 3, 1, 5, NULL, '2021-06-19 23:47:21', '2021-06-19 23:47:21'),
(14, 3, 1, 5, NULL, '2021-06-20 00:34:23', '2021-06-20 00:34:23'),
(15, 2, 5, 25, NULL, '2021-06-20 00:40:26', '2021-06-20 00:40:26'),
(16, 3, 1, 5, NULL, '2021-06-20 00:45:11', '2021-06-20 00:45:11'),
(17, 3, 1, 5, NULL, '2021-06-21 20:59:36', '2021-06-21 20:59:36'),
(18, 4, 5, 25, NULL, '2021-06-21 21:07:17', '2021-06-21 21:07:17'),
(19, 1, 1, 10, NULL, '2021-06-21 21:08:39', '2021-06-21 21:08:39'),
(20, 4, 1, 5, NULL, '2021-06-21 21:08:58', '2021-06-21 21:08:58'),
(21, 1, 3, 30, NULL, '2021-06-21 21:09:49', '2021-06-21 21:09:49'),
(22, 4, 3, 15, NULL, '2021-06-21 21:10:14', '2021-06-21 21:10:14'),
(23, 1, 1, 10, '2021-06-21 21:16:54', '2021-06-21 21:15:56', '2021-06-21 21:16:54'),
(24, 3, 1, 5, NULL, '2021-06-21 21:21:30', '2021-06-21 21:21:30'),
(25, 3, 1, 5, NULL, '2021-06-21 21:22:06', '2021-06-21 21:22:06'),
(26, 4, 2, 10, NULL, '2021-06-21 21:23:09', '2021-06-21 21:23:09'),
(27, 4, 1, 5, NULL, '2021-06-21 21:23:20', '2021-06-21 21:23:20'),
(28, 4, 3, 15, NULL, '2021-06-21 21:24:44', '2021-06-21 21:24:44');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `val` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `val`, `created_at`, `updated_at`, `group`) VALUES
(1, 'app_name', 'Doccure', '2021-06-16 11:13:13', '2021-06-16 11:13:13', 'default'),
(2, 'app_currency', 'GH₵', '2021-06-16 11:13:14', '2021-06-18 23:36:46', 'default'),
(3, 'logo', 'logos/njXfPoiZPcZ2XE3ukZRYwxBQMUC3DCymH3Ou2Rkx.png', '2021-06-16 11:13:14', '2021-06-16 11:13:14', 'default'),
(4, 'favicon', 'logos/baC778qfdqceYq9PsvJ7zSQuJznpnjrfBkKBBVil.png', '2021-06-16 11:13:14', '2021-06-16 11:13:14', 'default'),
(5, 'from_email', 'admin@doccure.com', '2021-06-16 11:13:14', '2021-06-16 11:13:14', 'default'),
(6, 'from_name', 'Doccure', '2021-06-16 11:13:14', '2021-06-16 11:13:14', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `email`, `phone`, `company`, `address`, `product`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'johndoe@example.com', '+233542441933', 'Global Technologies', 'Tamale Ghana', 'Cordacriptine Mardipine', 'This is some comment about the supplier and is updated too', NULL, '2021-06-15 14:23:58', '2021-06-15 14:27:29'),
(3, 'Testing test', 'test@gmail.com', '0542441933', 'Test company', 'Tamale Ghana', 'Test drug', 'This is a test of the supplier', NULL, '2021-06-20 00:32:59', '2021-06-20 00:32:59'),
(4, 'John Jerry', 'jerry@example.com', '+233542441933', 'Test company', 'Tamale Ghana', 'Abilify', 'This is test', NULL, '2021-06-21 21:03:08', '2021-06-21 21:03:08');

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
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mushe Abdul-Hakim', 'admin@admin.com', NULL, '$2y$10$YlHIcHuWQnNIWcv1.0vywu/.M33nACdxd2wMzZ.SKuJTbiWO.rug2', '1624145783.jpg', NULL, '2021-06-15 14:14:36', '2021-06-19 23:36:23'),
(2, 'Sales Person', 'sales@sales.com', NULL, '$2y$10$0EBgPUiaPWAJFuF0.VQfOOzzDWo/dEH1uPFic4JK3TKIDOd4P0N9e', '1624146121.jpg', NULL, '2021-06-19 09:33:59', '2021-06-19 23:42:01');

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suppliers_email_unique` (`email`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  ADD CONSTRAINT `purchases_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `purchases_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`);

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

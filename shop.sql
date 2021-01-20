-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 02 Eyl 2020, 22:01:01
-- Sunucu sürümü: 10.4.11-MariaDB
-- PHP Sürümü: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `shop`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `aboutus`
--

CREATE TABLE `aboutus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle_one` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle_one_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle_two` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle_two_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle_three` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle_three_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `aboutus`
--

INSERT INTO `aboutus` (`id`, `title`, `content`, `image`, `header_image`, `subtitle_one`, `subtitle_one_desc`, `subtitle_two`, `subtitle_two_desc`, `subtitle_three`, `subtitle_three_desc`, `created_at`, `updated_at`) VALUES
(1, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit am.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'https://64.media.tumblr.com/f4f1654da9511c4733e2d44c40bbcefc/tumblr_mxrdkiiRkc1t40yzjo1_1280.jpg', 'null', 'WE ARE TRUSTED', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'WE ARE PROFESSIONAL', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'WE ARE EXPERT', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2020-07-26 19:10:37', '2020-07-26 19:10:37');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `category_id`, `title`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(9, 0, 'Jeans', 'jeans', '/images/products/jean-category-2266261565.jpeg', '2020-09-02 16:38:00', '2020-09-02 16:38:00'),
(10, 0, 'T-shirts', 't-shirts', '/images/products/t-shirt-category-548498212315.jpg', '2020-09-02 16:39:05', '2020-09-02 16:39:05'),
(11, 0, 'Laptops', 'laptops', '/images/products/laptops-category-151498484512121.jpg', '2020-09-02 16:40:19', '2020-09-02 16:40:19'),
(12, 0, 'Shirts', 'shirts', '/images/products/shirts-category-234324235.jpg', '2020-09-02 16:42:31', '2020-09-02 16:42:31'),
(13, 0, 'Watches', 'watches', '/images/products/wathes-category-213124124124.jpg', '2020-09-02 16:44:04', '2020-09-02 16:44:04');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contactus`
--

CREATE TABLE `contactus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `mail` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `contactus`
--

INSERT INTO `contactus` (`id`, `description`, `address`, `phone`, `mail`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna diam, maximus ut ullamcorper quis, placerat id eros. Duis semper justo sed condimentum rutrum. Nunc tristique purus turpis. Maecenas vulputate.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna diam, maximus ut ullamcorper quis, placerat id eros. Duis semper justo sed condimentum rutrum.', '+90 000 000 000', 'info@myecommerce.com', '2020-07-26 19:20:39', '2020-07-26 19:20:39');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `home`
--

CREATE TABLE `home` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_one` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_one` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_one` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_two` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_two` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_two` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_three` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_three` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_three` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `home`
--

INSERT INTO `home` (`id`, `title_one`, `image_one`, `description_one`, `title_two`, `image_two`, `description_two`, `title_three`, `image_three`, `description_three`, `created_at`, `updated_at`) VALUES
(1, 'Welcome to My E-commerce', 'https://justtravelpics.files.wordpress.com/2019/10/image-5.jpg', 'See how your users experience your website in realtime or view <br> trends to see any changes in performance over time.', 'Welcome to My E-commerce', 'https://cdn.ebaumsworld.com/mediaFiles/picture/2499397/85784164.jpg', 'See how your users experience your website in realtime or view <br> trends to see any changes in performance over time.', 'Welcome to My E-commerce', 'https://www.sup-internationalmag.com/wp-content/uploads/2016/12/Earthporn-06-1500px.jpg', 'See how your users experience your website in realtime or view <br> trends to see any changes in performance over time.', '2020-07-26 19:41:02', '2020-07-26 19:41:02');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2020_07_26_180930_aboutus', 1),
(3, '2020_07_26_191736_contactus', 2),
(4, '2020_07_26_193500_home', 3),
(5, '2020_07_27_113759_categories', 4),
(7, '2020_08_06_173322_product_images', 5),
(8, '2020_08_06_172035_products', 6);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `discount` int(11) NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`id`, `category_id`, `title`, `slug`, `description`, `quantity`, `price`, `discount`, `size`, `created_at`, `updated_at`) VALUES
(7, 11, 'Laptop 1', 'laptop-1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 1, 100.00, 5, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 11, 'Laptop 2', 'laptop-2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 1, 120.00, 8, '', '2020-09-02 16:47:25', '2020-09-02 16:47:25'),
(9, 11, 'Laptop 3', 'laptop-3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 1, 200.00, 15, '', '2020-09-02 16:47:53', '2020-09-02 16:47:53'),
(10, 11, 'Laptop 4', 'laptop-4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 1, 125.00, 20, '', '2020-09-02 16:47:25', '2020-09-02 16:47:25'),
(11, 10, 'T-shirt 1', 't-shirt-1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 1, 100.00, 5, '', '2020-09-02 19:05:06', '2020-09-02 19:05:06'),
(12, 10, 'T-shirt 2', 't-shirt-2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 1, 100.00, 5, '', '2020-09-02 19:05:06', '2020-09-02 19:05:06'),
(13, 10, 'T-shirt 3', 't-shirt-3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 1, 250.00, 5, '', '2020-09-02 19:05:06', '2020-09-02 19:05:06'),
(14, 10, 'T-shirt 4', 't-shirt-4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 1, 200.00, 5, '', '2020-09-02 19:05:06', '2020-09-02 19:05:06'),
(15, 9, 'Jean 3', 'jean-3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 1, 310.00, 20, '', '2020-09-02 19:07:58', '2020-09-02 19:07:58'),
(16, 9, 'Jean 4', 'jean-4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 1, 375.00, 5, '', '2020-09-02 19:07:58', '2020-09-02 19:07:58'),
(17, 12, 'Shirt 1', 'shirt-1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 1, 200.00, 15, '', '2020-09-02 19:09:26', '2020-09-02 19:09:26'),
(18, 12, 'Shirt 2', 'shirt-2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 1, 205.00, 5, '', '2020-09-02 19:09:26', '2020-09-02 19:09:26'),
(19, 12, 'Shirt 3', 'shirt-3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 1, 300.00, 20, '', '2020-09-02 19:09:26', '2020-09-02 19:09:26'),
(20, 12, 'Shirt 4', 'shirt-4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 1, 500.00, 40, '', '2020-09-02 19:09:26', '2020-09-02 19:09:26'),
(21, 13, 'Watch 1', 'watch-1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 1, 5000.00, 40, '', '2020-09-02 19:09:26', '2020-09-02 19:09:26'),
(22, 13, 'Watch 2', 'watch-2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 1, 5050.00, 40, '', '2020-09-02 19:09:26', '2020-09-02 19:09:26'),
(23, 13, 'Watch 3', 'watch-3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 1, 3000.00, 50, '', '2020-09-02 19:09:26', '2020-09-02 19:09:26'),
(24, 13, 'Watch 4', 'watch-4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 1, 4575.00, 30, '', '2020-09-02 19:09:26', '2020-09-02 19:09:26');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(7, 21, '/images/products/watch-category-13123123.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(8, 21, '/images/products/watch-category-131asdasd23123.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(9, 21, '/images/products/watch-category-84894848454563.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(10, 22, '/images/products/watch-category-13123123.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(11, 22, '/images/products/watch-category-131asdasd23123.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(12, 22, '/images/products/watch-category-84894848454563.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(13, 23, '/images/products/watch-category-13123123.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(14, 23, '/images/products/watch-category-131asdasd23123.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(15, 23, '/images/products/watch-category-84894848454563.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(16, 24, '/images/products/watch-category-13123123.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(17, 24, '/images/products/watch-category-131asdasd23123.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(18, 24, '/images/products/watch-category-84894848454563.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(19, 7, '/images/products/laptop-category-123123123123.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(20, 7, '/images/products/laptop-category-123123123123.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(21, 7, '/images/products/laptop-category-123123123123.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(22, 8, '/images/products/laptop-category-123123123123.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(23, 8, '/images/products/laptop-category-123123123123.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(24, 8, '/images/products/laptop-category-123123123123.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(25, 9, '/images/products/laptop-category-123123123123.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(26, 9, '/images/products/laptop-category-123123123123.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(27, 9, '/images/products/laptop-category-123123123123.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(28, 10, '/images/products/laptop-category-123123123123.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(29, 10, '/images/products/laptop-category-123123123123.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(30, 10, '/images/products/laptop-category-123123123123.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(31, 11, '/images/products/t-shirt-category-124146132423.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(32, 11, '/images/products/t-shirt-category-124146132423.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(33, 11, '/images/products/t-shirt-category-124146132423.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(34, 12, '/images/products/t-shirt-category-124146132423.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(35, 12, '/images/products/t-shirt-category-124146132423.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(36, 12, '/images/products/t-shirt-category-124146132423.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(37, 13, '/images/products/t-shirt-category-124146132423.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(38, 13, '/images/products/t-shirt-category-124146132423.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(39, 13, '/images/products/t-shirt-category-124146132423.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(40, 14, '/images/products/t-shirt-category-124146132423.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(41, 14, '/images/products/t-shirt-category-124146132423.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(42, 14, '/images/products/t-shirt-category-124146132423.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(43, 15, '/images/products/jean-category-2141234324324.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(44, 15, '/images/products/jean-category-21412324234234dfsdf324324.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(45, 15, '/images/products/jean-category-2141234sdfsdf324324.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(46, 16, '/images/products/jean-category-21412323werwer243242342344234234dfsdf324324.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(47, 16, '/images/products/jean-category-21412323242344234234dfsdf324324.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(48, 16, '/images/products/jean-category-21412323243242342344234234dfsdf324324.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(49, 17, '/images/products/shirt-category-223423423423234234dfsdf324324.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(50, 17, '/images/products/shirt-category-21412323werwer242344234234dfsdf324324.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(51, 17, '/images/products/shirt-category-21412323werwer2423wer44234234dfsdf324324.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(52, 18, '/images/products/shirt-category-223423423423234234dfsdf324324.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(53, 18, '/images/products/shirt-category-21412323werwer242344234234dfsdf324324.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(54, 18, '/images/products/shirt-category-21412323werwer2423wer44234234dfsdf324324.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(55, 19, '/images/products/shirt-category-223423423423234234dfsdf324324.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(56, 19, '/images/products/shirt-category-21412323werwer242344234234dfsdf324324.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(57, 19, '/images/products/shirt-category-21412323werwer2423wer44234234dfsdf324324.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(58, 20, '/images/products/shirt-category-223423423423234234dfsdf324324.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(59, 20, '/images/products/shirt-category-21412323werwer242344234234dfsdf324324.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59'),
(60, 20, '/images/products/shirt-category-21412323werwer2423wer44234234dfsdf324324.jpg', '2020-09-02 19:12:59', '2020-09-02 19:12:59');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `aboutus`
--
ALTER TABLE `aboutus`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Tablo için indeksler `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_title_unique` (`title`);

--
-- Tablo için indeksler `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `aboutus`
--
ALTER TABLE `aboutus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `home`
--
ALTER TABLE `home`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Tablo için AUTO_INCREMENT değeri `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2021 at 11:37 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 4, 2, '2021-02-19 12:50:42', '2021-02-19 12:50:42'),
(7, 1, 2, '2021-02-19 13:07:32', '2021-02-19 13:07:32'),
(18, 1, 4, '2021-02-24 16:30:54', '2021-02-24 16:30:54');

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
(1, '2021_02_12_173235_create_users_table', 1),
(2, '2021_02_15_145442_create_products_table', 2),
(3, '2021_02_18_175106_create_cart_table', 3),
(4, '2021_02_24_201948_create_orders_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `user_id`, `status`, `payment_method`, `payment_status`, `address`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'pending', 'cash', 'pending', 'uttara, dhaka', NULL, NULL),
(2, 1, 1, 'pending', 'cash', 'pending', 'uttara, dhaka', NULL, NULL),
(3, 2, 1, 'pending', 'cash', 'pending', 'Dhanmondi', NULL, NULL),
(4, 4, 4, 'pending', 'cash', 'pending', 'Mirpur', NULL, NULL),
(5, 3, 1, 'pending', 'cash', 'pending', 'Pantai', NULL, NULL),
(6, 1, 1, 'pending', 'cash', 'pending', 'Pantai', NULL, NULL),
(7, 2, 1, 'pending', 'cash', 'pending', 'Dhaka, Mirpur', NULL, NULL),
(8, 4, 1, 'pending', 'cash', 'pending', 'Dhaka, Mirpur', NULL, NULL),
(9, 2, 1, 'pending', 'cash', 'pending', 'Bangsar', NULL, NULL),
(10, 3, 1, 'pending', 'cash', 'pending', 'Bangsar', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category`, `description`, `gallery`, `created_at`, `updated_at`) VALUES
(1, 'Samsung Galaxy S20', '800', 'mobile', 'Display : 6.2 inches; RAM : 8GB; Processor : Qualcomm SM8250 Snapdragon 865; Storage : 128GB; Battery : Li-Ion 4000 mAh', 'https://www.gizmochina.com/wp-content/uploads/2020/02/Samsung-Galaxy-S20-Plus-500x500.jpg', NULL, NULL),
(2, 'Samsung Galaxy S10', '600', 'mobile', 'Display : 6.1 inches; RAM : 8GB; Processor : Qualcomm SM8150 Snapdragon 855; Storage : 64GB; Battery : Li-Ion 3400 mAh', 'https://fdn2.gsmarena.com/vv/pics/samsung/samsung-galaxy-s10-1.jpg', NULL, NULL),
(3, 'Samsung 43\" TV', '1200', 'tv', 'Samsung 43\" TU8000 Crystal UHD 4K Smart TV 2020', 'https://images.samsung.com/is/image/samsung/levant-uhd-tu8000-ua43tu8000uxtw-frontblack-229856295?$720_576_PNG$', NULL, NULL),
(4, 'Samsung 65\" TV', '2000', 'tv', 'Samsung 65\" RU7300 Curved Smart 4K UHD TV Series 7', 'https://images.samsung.com/is/image/samsung/ae-ru7300-ua65ru7300kxzn-frontblack-153432607?$720_576_PNG$', NULL, NULL),
(5, 'Samsung Freezer 1', '2500', 'fridge', 'Samsung RT47K6231UT Top Mount Freezer with Twin Cooling – 465L', 'https://diamu.com.bd/wp-content/uploads/2020/06/Samsung-Refrigerator-RT47K6231UT.jpg', NULL, NULL),
(6, 'Samsung Freezer 2', '2000', 'fridge', 'Samsung Bottom Mount Refrigerator 218L RB21KMFH5SK/D2 – Gold color', 'https://diamu.com.bd/wp-content/uploads/2020/06/Samsung-Bottom-Mount-Freezer-RB21KMFH5SK-D2-GOLD.jpg', NULL, NULL),
(7, 'Samsung A/C 1', '3000', 'ac', 'Samsung AR24FC2TAUR 2 Ton Split Air Conditioner', 'https://acmartbd.com/wp-content/uploads/2015/03/Samsung-AR24FC2TAUR-2-Ton-Split-Ac1.jpg', NULL, NULL),
(8, 'Samsung A/C 2', '2500', 'ac', 'Samsung 1.5 Ton 3 Star Inverter Split AC (Copper, AR18TY3QBBU, White)', 'https://images-na.ssl-images-amazon.com/images/I/610GPoo7JFL._SX679_.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`, `Status`) VALUES
(1, 'shahan ali', 'shahan@gmail.com', '$2y$10$E.OgzXWgpIvxw7mr7NC5teRD.kr1vDZKXTeF7SnM6y6hyBTHUBhrq', NULL, NULL, NULL),
(2, 'rabeya akter', 'rabeya@gmail.com', '$2y$10$kguwSBELbEjBg3N91TcrSOQAZWuUdHIKvq7wEnrBN8.rgHV8bzsZu', NULL, NULL, NULL),
(4, 'First Person', 'first@gmail.com', '$2y$10$3aHcOlLX4Zf9Wquak9B85ObAN0.7XSBYZUnebatkZrYop4RBkYYRG', '2021-02-24 15:48:35', '2021-02-24 15:48:35', NULL),
(5, 'Admin', 'admin@gmail.com', '$2y$10$gFoJzhTIBdd98G2MH6mAzOjU0cdXxQgV5KvQxmd9UAeB.9vsrXyh6', '2021-02-27 09:03:45', '2021-02-27 09:03:45', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

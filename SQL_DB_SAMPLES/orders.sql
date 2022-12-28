-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2022 at 06:54 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adeeb_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewed` tinyint(1) NOT NULL,
  `completed` tinyint(1) NOT NULL,
  `products` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT json_array() CHECK (json_valid(`products`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `phone`, `address`, `reviewed`, `completed`, `products`, `created_at`, `updated_at`) VALUES
(5, 'M_Shrief', '10-20-30-40', '10st- cairo - giza', 0, 0, '[{\"print\":[{\"first\":\"\\u0627\\u0644\\u0633\\u064e\\u064a\\u0641\\u064f \\u0623\\u064e\\u0635\\u062f\\u064e\\u0642\\u064f \\u0623\\u064e\\u0646\\u0628\\u0627\\u0621\\u064b \\u0645\\u0650\\u0646\\u064e \\u0627\\u0644\\u0643\\u064f\\u062a\\u064f\\u0628\\u0650\",\"sec\":\"\\u0641\\u064a \\u062d\\u064e\\u062f\\u0651\\u0650\\u0647\\u0650 \\u0627\\u0644\\u062d\\u064e\\u062f\\u0651\\u064f \\u0628\\u064e\\u064a\\u0646\\u064e \\u0627\\u0644\\u062c\\u0650\\u062f\\u0651\\u0650 \\u0648\\u064e\\u0627\\u0644\\u0644\\u064e\\u0639\\u0650\\u0628\\u0650\"},{\"first\":\"\\u0628\\u064a\\u0636\\u064f \\u0627\\u0644\\u0635\\u064e\\u0641\\u0627\\u0626\\u0650\\u062d\\u0650 \\u0644\\u0627 \\u0633\\u0648\\u062f\\u064f \\u0627\\u0644\\u0635\\u064e\\u062d\\u0627\\u0626\\u0650\\u0641\\u0650 \\u0641\\u064a\",\"sec\":\"\\u0645\\u064f\\u062a\\u0648\\u0646\\u0650\\u0647\\u0650\\u0646\\u0651\\u064e \\u062c\\u064e\\u0644\\u0627\\u0621\\u064f \\u0627\\u0644\\u0634\\u064e\\u0643\\u0651\\u0650 \\u0648\\u064e\\u0627\\u0644\\u0631\\u0650\\u064a\\u064e\\u0628\\u0650\"}],\"fontType\":\"\\u0646\\u0633\\u062e\",\"fontColor\":\"rgb(255, 255, 255)\",\"backgroundColor\":\"rgb(0, 0, 0)\"},{\"print\":[{\"first\":\"\\u0644\\u064e\\u0648 \\u0644\\u064e\\u0645 \\u064a\\u064e\\u0642\\u064f\\u062f \\u062c\\u064e\\u062d\\u0641\\u064e\\u0644\\u0627\\u064b \\u064a\\u064e\\u0648\\u0645\\u064e \\u0627\\u0644\\u0648\\u064e\\u063a\\u0649 \\u0644\\u064e\\u063a\\u064e\\u062f\\u0627\",\"sec\":\"\\u0645\\u0650\\u0646 \\u0646\\u064e\\u0641\\u0633\\u0650\\u0647\\u0650 \\u0648\\u064e\\u062d\\u062f\\u064e\\u0647\\u0627 \\u0641\\u064a \\u062c\\u064e\\u062d\\u0641\\u064e\\u0644\\u064d \\u0644\\u064e\\u062c\\u0650\\u0628\\u0650\"}],\"fontType\":\"\\u062f\\u064a\\u0648\\u0627\\u0646\\u064a\",\"fontColor\":\"rgb(255, 255, 255)\",\"backgroundColor\":\"rgb(44, 62, 80)\"},{\"print\":[{\"first\":\"\\u0623\\u064e\\u062c\\u064e\\u0628\\u062a\\u064e\\u0647\\u064f \\u0645\\u064f\\u0639\\u0644\\u0650\\u0646\\u0627\\u064b \\u0628\\u0650\\u0627\\u0644\\u0633\\u064e\\u064a\\u0641\\u0650 \\u0645\\u064f\\u0646\\u0635\\u064e\\u0644\\u0650\\u062a\\u0627\\u064b\",\"sec\":\"\\u0648\\u064e\\u0644\\u064e\\u0648 \\u0623\\u064e\\u062c\\u064e\\u0628\\u062a\\u064e \\u0628\\u0650\\u063a\\u064e\\u064a\\u0631\\u0650 \\u0627\\u0644\\u0633\\u064e\\u064a\\u0641\\u0650 \\u0644\\u064e\\u0645 \\u062a\\u064f\\u062c\\u0650\\u0628\\u0650\"}],\"fontType\":\"\\u062f\\u064a\\u0648\\u0627\\u0646\\u064a\",\"fontColor\":\"rgb(0, 0, 0)\",\"backgroundColor\":\"rgb(255, 255, 255)\"}]', '2022-12-22 07:02:29', '2022-12-22 07:02:29'),
(7, 'Rai303303', '0124421214', 'from the cloud above', 0, 0, '[{\"print\":[{\"first\":\"\\u0627\\u0644\\u0633\\u064e\\u064a\\u0641\\u064f \\u0623\\u064e\\u0635\\u062f\\u064e\\u0642\\u064f \\u0623\\u064e\\u0646\\u0628\\u0627\\u0621\\u064b \\u0645\\u0650\\u0646\\u064e \\u0627\\u0644\\u0643\\u064f\\u062a\\u064f\\u0628\\u0650\",\"sec\":\"\\u0641\\u064a \\u062d\\u064e\\u062f\\u0651\\u0650\\u0647\\u0650 \\u0627\\u0644\\u062d\\u064e\\u062f\\u0651\\u064f \\u0628\\u064e\\u064a\\u0646\\u064e \\u0627\\u0644\\u062c\\u0650\\u062f\\u0651\\u0650 \\u0648\\u064e\\u0627\\u0644\\u0644\\u064e\\u0639\\u0650\\u0628\\u0650\"},{\"first\":\"\\u0628\\u064a\\u0636\\u064f \\u0627\\u0644\\u0635\\u064e\\u0641\\u0627\\u0626\\u0650\\u062d\\u0650 \\u0644\\u0627 \\u0633\\u0648\\u062f\\u064f \\u0627\\u0644\\u0635\\u064e\\u062d\\u0627\\u0626\\u0650\\u0641\\u0650 \\u0641\\u064a\",\"sec\":\"\\u0645\\u064f\\u062a\\u0648\\u0646\\u0650\\u0647\\u0650\\u0646\\u0651\\u064e \\u062c\\u064e\\u0644\\u0627\\u0621\\u064f \\u0627\\u0644\\u0634\\u064e\\u0643\\u0651\\u0650 \\u0648\\u064e\\u0627\\u0644\\u0631\\u0650\\u064a\\u064e\\u0628\\u0650\"}],\"fontType\":\"\\u0646\\u0633\\u062e\",\"fontColor\":\"rgb(255, 255, 255)\",\"backgroundColor\":\"rgb(0, 0, 0)\"}]', '2022-12-23 11:43:58', '2022-12-23 11:43:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 09, 2022 at 12:04 PM
-- Server version: 8.0.31-0ubuntu0.20.04.1
-- PHP Version: 7.2.34-32+ubuntu20.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akibb`
--

-- --------------------------------------------------------

--
-- Table structure for table `market`
--

CREATE TABLE `market` (
  `id` int NOT NULL,
  `RIC` varchar(191) DEFAULT NULL,
  `NAME` varchar(191) DEFAULT NULL,
  `COUNTRY` varchar(191) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `market`
--

INSERT INTO `market` (`id`, `RIC`, `NAME`, `COUNTRY`, `created_at`) VALUES
(1, 'T', 'Tokyo Stock Exchange', 'Japan', '2022-10-01 22:37:37'),
(2, 'O', 'NASDAQ', 'United States', '2022-10-12 22:37:37'),
(3, 'N', 'New York Stock Exchange', 'United States', '2022-10-27 22:37:37'),
(4, 'BO', 'Bombay Stock Exchange', 'India', '2022-10-28 22:37:37');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` text,
  `cost` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `cost`, `image`) VALUES
(1, 'আমি তপু', '৳ 450', 'book1.jpg'),
(2, 'জোছনা ও জননীর গল্প', '৳ 300', 'book2.png'),
(3, 'একাত্তরের দিনগুলি', '৳ 250', 'book3.png'),
(4, 'প্রথম আলো ১', '৳ 480', 'book4.png'),
(5, 'সেই সময়', '৳ 500', 'book5.png'),
(6, 'চাঁদের পাহাড়', '৳ 250', 'book6.png');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int NOT NULL,
  `RIC` varchar(191) DEFAULT NULL,
  `COMPANY` varchar(191) DEFAULT NULL,
  `LISTED_ON_EXCHANGE` varchar(191) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `RIC`, `COMPANY`, `LISTED_ON_EXCHANGE`, `created_at`) VALUES
(1, '6758.T', 'Sony', 'T', '2022-11-02 22:38:26'),
(2, 'GOOG.O', 'Google Inc', 'O', '2022-11-05 22:38:26'),
(3, 'GS.N', 'Goldman Sachs Group Inc', 'N', '2022-11-06 22:38:26'),
(4, 'INFY.BO', ' Infosys', 'BO', '2022-11-07 22:38:26'),
(5, 'VOD.L', 'Vodafone Group PLC', 'L', '2022-11-08 22:38:26'),
(6, 'LG.L', 'LG Inc', 'L', '2022-11-08 22:38:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` text,
  `email` text,
  `password` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Test', 'test@gmail.com', '12345'),
(3, 'Test2', 'test2@gmail.com', '12345'),
(4, 'Test3', 'test3@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int NOT NULL,
  `user_id` text,
  `p_id` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `market`
--
ALTER TABLE `market`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `market`
--
ALTER TABLE `market`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

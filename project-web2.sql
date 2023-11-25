-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 28 سبتمبر 2023 الساعة 05:15
-- إصدار الخادم: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project-web2`
--

-- --------------------------------------------------------

--
-- بنية الجدول `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `quantity`, `image`) VALUES
(28, 8, 'darknet', 400, 1, 'darknet.jpg'),
(29, 8, 'Economics', 200, 1, 'economic.jpg'),
(30, 9, 'Be Well Bee', 400, 1, 'be_well_bee.jpg'),
(31, 9, 'FreeFall', 350, 1, 'freefall.jpg'),
(32, 9, 'Economics', 200, 1, 'economic.jpg'),
(38, 17, 'FreeFall', 350, 1, 'freefall.jpg');

-- --------------------------------------------------------

--
-- بنية الجدول `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(5, 9, 'gamal', 'gamal.98.7136@gmail.com', '770177688', 'hello gamal'),
(6, 12, 'gamal', 'gamal.98.7136@gmail.com', '770177866', 'hello sondos,\r\n'),
(7, 15, 'gamal', 'gamal.98.7136@gmail.com', '7701556', 'hello ana');

-- --------------------------------------------------------

--
-- بنية الجدول `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(8, 10, 'gamal aledresi', '4', 'gamal.98.7136@gmail.com', 'paypal', 'sanaa, ibb, yemen', ', FreeFall (1) , The World (1) , Economics (1) ', 800, '28-Sep-2023', 'pending'),
(9, 15, 'gamal aledresi', '770177866', 'gamal.98.7136@gmail.com', 'credit card', 'sanaa, ibb, Ø§Ù„ÙŠÙ…Ù†', ', Ù†Ø¸Ø§Ù… Ù†Ø§Ù†ÙˆØ³ÙˆÙØª Ù„Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ù…Ø¯Ø§Ø±Ø³ (3) ', 6000, '28-Sep-2023', 'pending'),
(10, 17, 'sondos gamal', '7134677', 'sondos.g@gmail.com', 'paypal', 'sanaa, ibb, Ø§Ù„ÙŠÙ…Ù†', ', nanopro (2) ', 12000, '28-Sep-2023', 'Ù‚ÙŠØ¯ Ø§Ù„ØªØ¬Ù‡ÙŠØ'),
(11, 11, 'gamal aledresi', '798374982', 'gamal.98.7136@gmail.com', 'credit card', 'sanaa, ibb, Ø§Ù„ÙŠÙ…Ù†', ', darknet (1) , nanopro (1) ', 6400, '28-Sep-2023', 'pending');

-- --------------------------------------------------------

--
-- بنية الجدول `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(19, 'darknet', 400, 'Ø§Ø¹Ù„Ø§Ù† ØªØ³ÙˆÙŠÙ‚.jpg'),
(21, 'nanopro', 3889, 'ØµÙˆØ±Ø© Ø§Ø¹Ù„Ø§Ù†  Ù†Ø¸Ø§Ù… Ø§Ù„Ù…Ø¯Ø§Ø±Ø³.jpg'),
(22, 'ØªØµÙ…ÙŠÙ… Ø§Ù„Ù…ØªØ§Ø¬Ø± Ø§Ù„Ø§Ù„ÙƒØªØ±ÙˆÙ†ÙŠØ©', 350, 'freefall.jpg'),
(25, 'Be Well Bee', 400, 'be_well_bee.jpg'),
(27, 'nanoschools', 5000, 'Ø§Ø¹Ù„Ø§Ù† Ø§Ù„Ù†Ø¸Ø§Ù… Ø§Ù„Ù…Ø¯Ø±Ø³ÙŠ.jpg'),
(28, 'Ù†Ø¸Ø§Ù… Ù†Ø§Ù†ÙˆØ³ÙˆÙØª Ù„Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ù…Ø¯Ø§Ø±Ø³', 2000, 'Ø§Ø¹Ù„Ø§Ù† Ø§Ù„Ù†Ø¸Ø§Ù… Ø§Ù„Ù…Ø¯Ø±Ø³ÙŠ.jpg');

-- --------------------------------------------------------

--
-- بنية الجدول `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(2, 'admin', 'admin@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'admin'),
(9, 'GAMAL GAMEEL ALEDRISSI', 'gamal.98.7136@gmail.com', '2bdf4e37f72a7192cad5ef997eb229d3', 'user'),
(10, 'gamal', 'gamal@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'admin'),
(11, 'sondos gamal', 'sondos@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'user'),
(12, 'admin', 'gamalsond@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'user'),
(13, 'admin', 'sana@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(15, 'admin', 'gamal.so@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'user'),
(16, 'nanoschools', 'gam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'user'),
(17, 'Ø³Ù†Ø¯Ø³ Ø¹Ø¨Ø¯Ø§Ù„Ø³Ù„Ø§Ù…', 'sondos.g@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
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
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

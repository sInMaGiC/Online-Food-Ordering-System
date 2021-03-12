-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2021 at 09:12 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `accs`
--

CREATE TABLE `accs` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `create_at` datetime DEFAULT current_timestamp(),
  `update_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accs`
--

INSERT INTO `accs` (`id`, `username`, `password`, `create_at`, `update_at`) VALUES
(1, 'sinung', 'magic00', '2021-01-20 16:01:07', '2021-01-20 16:01:07'),
(2, 'ragrag', 'benj', '2021-01-23 12:53:17', '2021-01-23 12:53:17'),
(3, 'zabala', 'lita', '2021-01-23 12:53:17', '2021-01-23 12:53:17');

-- --------------------------------------------------------

--
-- Table structure for table `dessert`
--

CREATE TABLE `dessert` (
  `food_dess` varchar(50) NOT NULL,
  `dess_prices` int(11) NOT NULL,
  `date_update` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dessert`
--

INSERT INTO `dessert` (`food_dess`, `dess_prices`, `date_update`) VALUES
('Cake', 499, '2021-01-20 11:53:17'),
('Cassava Cake', 40, '2021-01-20 11:53:17'),
('icecream', 75, '2021-01-23 13:01:04'),
('moromn', 5, '2021-01-23 13:01:04'),
('Puto', 59, '2021-01-20 11:53:17');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `food_dish` varchar(50) NOT NULL,
  `prices` int(11) NOT NULL,
  `date_update` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`food_dish`, `prices`, `date_update`) VALUES
('adobo', 35, '2021-01-23 12:59:26'),
('Kaldereta', 39, '2021-01-20 11:50:51'),
('Pork Adobo', 29, '2021-01-20 11:50:51'),
('Pork Sisig', 19, '2021-01-20 11:50:51'),
('sinigang', 40, '2021-01-23 12:59:26');

-- --------------------------------------------------------

--
-- Table structure for table `drinks`
--

CREATE TABLE `drinks` (
  `drink` varchar(50) NOT NULL,
  `drinks_prices` int(11) NOT NULL,
  `date_update` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drinks`
--

INSERT INTO `drinks` (`drink`, `drinks_prices`, `date_update`) VALUES
('Coca-cola', 70, '2021-01-20 11:54:41'),
('Gatorade', 89, '2021-01-20 11:54:41'),
('royal', 15, '2021-01-23 13:02:52'),
('sprite', 17, '2021-01-23 13:02:52'),
('Sting', 15, '2021-01-20 11:54:41');

-- --------------------------------------------------------

--
-- Table structure for table `shoes`
--

CREATE TABLE `shoes` (
  `shoes_id` int(2) NOT NULL,
  `shoes_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shoes`
--

INSERT INTO `shoes` (`shoes_id`, `shoes_name`) VALUES
(11, 'nike');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `trans_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `food_dish` varchar(50) NOT NULL,
  `food_dess` varchar(50) NOT NULL,
  `drink` varchar(50) NOT NULL,
  `total_price` int(11) NOT NULL,
  `date_of_transaction` datetime DEFAULT current_timestamp(),
  `date_update` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`trans_id`, `id`, `food_dish`, `food_dess`, `drink`, `total_price`, `date_of_transaction`, `date_update`) VALUES
(1, 2, 'adobo', 'icecream', 'royal', 450, '2021-01-23 13:23:25', '2021-01-23 15:24:36'),
(2, 3, 'sinigang', 'Cake', 'sprite', 300, '2021-01-23 13:23:25', '2021-01-23 15:24:14'),
(4, 1, 'Pork Adobo', 'icecream', 'royal', 342, '2021-01-23 15:52:25', '2021-01-23 15:52:25'),
(5, 3, 'Kaldereta', 'Cake', 'Coca-cola', 675, '2021-01-23 15:52:25', '2021-01-23 15:52:25'),
(6, 2, 'sinigang', 'Cassava Cake', 'sprite', 412, '2021-01-23 15:53:36', '2021-01-23 15:53:36'),
(7, 1, 'Pork Sisig', 'Puto', 'royal', 790, '2021-01-23 15:53:36', '2021-01-23 15:53:36'),
(8, 2, 'sinigang', 'Cassava Cake', 'sprite', 412, '2021-01-23 15:53:54', '2021-01-23 15:53:54'),
(9, 1, 'Pork Sisig', 'Puto', 'royal', 790, '2021-01-23 15:53:54', '2021-01-23 15:53:54'),
(10, 3, 'Kaldereta', 'moromn', 'Coca-cola', 756, '2021-01-23 15:54:34', '2021-01-23 15:54:34'),
(11, 2, 'Pork Sisig', 'icecream', 'Sting', 325, '2021-01-23 15:54:34', '2021-01-23 15:54:34'),
(12, 3, 'Kaldereta', 'moromn', 'Coca-cola', 756, '2021-01-23 15:54:38', '2021-01-23 15:54:38'),
(13, 2, 'Pork Sisig', 'icecream', 'Sting', 325, '2021-01-23 15:54:38', '2021-01-23 15:54:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accs`
--
ALTER TABLE `accs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `dessert`
--
ALTER TABLE `dessert`
  ADD PRIMARY KEY (`food_dess`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`food_dish`);

--
-- Indexes for table `drinks`
--
ALTER TABLE `drinks`
  ADD PRIMARY KEY (`drink`);

--
-- Indexes for table `shoes`
--
ALTER TABLE `shoes`
  ADD PRIMARY KEY (`shoes_id`),
  ADD UNIQUE KEY `shoes_id_idx` (`shoes_id`),
  ADD KEY `demo_id_idx` (`shoes_id`,`shoes_name`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`trans_id`,`id`,`food_dish`,`food_dess`,`drink`),
  ADD KEY `id` (`id`),
  ADD KEY `food_dish` (`food_dish`),
  ADD KEY `food_dess` (`food_dess`),
  ADD KEY `drink` (`drink`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accs`
--
ALTER TABLE `accs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`id`) REFERENCES `accs` (`id`),
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`food_dish`) REFERENCES `dishes` (`food_dish`),
  ADD CONSTRAINT `transaction_ibfk_3` FOREIGN KEY (`food_dess`) REFERENCES `dessert` (`food_dess`),
  ADD CONSTRAINT `transaction_ibfk_4` FOREIGN KEY (`drink`) REFERENCES `drinks` (`drink`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

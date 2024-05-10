-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2024 at 04:24 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-store`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cid` int(100) NOT NULL,
  `bid` int(100) NOT NULL,
  `uid` int(100) NOT NULL,
  `lapName` varchar(250) NOT NULL,
  `price` double NOT NULL,
  `total_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cid`, `bid`, `uid`, `lapName`, `price`, `total_price`) VALUES
(10, 18, 0, 'new', 500, 500),
(11, 20, 0, 'asus', 100, 100),
(23, 18, 1, 'new', 500, 500),
(24, 20, 1, 'asus', 100, 100),
(27, 24, 1, 'asus1345', 100, 100),
(28, 21, 1, 'DELL2', 200, 200),
(29, 20, 1, 'asus', 100, 100);

-- --------------------------------------------------------

--
-- Table structure for table `lap_dtls`
--

CREATE TABLE `lap_dtls` (
  `lapId` int(100) NOT NULL,
  `lapname` varchar(250) NOT NULL,
  `price` varchar(250) NOT NULL,
  `lapCategory` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL,
  `photo` varchar(250) NOT NULL,
  `user_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lap_dtls`
--

INSERT INTO `lap_dtls` (`lapId`, `lapname`, `price`, `lapCategory`, `status`, `photo`, `user_email`) VALUES
(16, 'Asus', '500$', 'New', 'Active', 'lg.png', 'admin'),
(17, 'Old lap', '10$', 'Old', 'Active', 'ld.png', 'admin'),
(18, 'new', '500', 'New', 'Active', 'lj.jpg', 'admin'),
(20, 'asus', '100', 'New', 'Active', 'le.jpeg', 'admin'),
(21, 'DELL2', '200', 'New', 'Active', 'lm.jpg', 'admin'),
(23, 'ASUS PROBOOK', '150', 'New', 'Active', 'lg.png', 'admin'),
(24, 'asus1345', '100', 'New', 'Active', 'lh.jpg', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phno` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `address` varchar(255) NOT NULL,
  `landmark` varchar(255) NOT NULL,
  `city` varchar(250) NOT NULL,
  `pincode` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `phno`, `password`, `address`, `landmark`, `city`, `pincode`) VALUES
(1, 'Krishantha', 'abs@gmail.com', '123456789', '12345', 'null', 'null', 'null', 'null');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `lap_dtls`
--
ALTER TABLE `lap_dtls`
  ADD PRIMARY KEY (`lapId`);

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
  MODIFY `cid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `lap_dtls`
--
ALTER TABLE `lap_dtls`
  MODIFY `lapId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

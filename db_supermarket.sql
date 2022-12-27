-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 11, 2022 at 04:13 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_supermarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cid` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `cjoin_date` date NOT NULL,
  `cmoney_spent` int(11) NOT NULL,
  `caddress` varchar(50) NOT NULL,
  `cmoney_spent_reset` int(5) NOT NULL,
  `cphone` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `first_name`, `last_name`, `cjoin_date`, `cmoney_spent`, `caddress`, `cmoney_spent_reset`, `cphone`) VALUES
(1, 'First', 'Customers', '2022-12-07', 14600, 'first customers home', 0, 9138483),
(2, 'Second', 'Customers', '2022-10-12', 0, 'first customers home', 0, 89734);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `cost_price` int(7) NOT NULL,
  `supplier_id` int(6) NOT NULL,
  `product_name` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `product_type` int(11) NOT NULL,
  `market_price` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `cost_price`, `supplier_id`, `product_name`, `quantity`, `product_type`, `market_price`) VALUES
(1, 12, 1, 'colgate', 200, 1, 10),
(2, 25, 2, 'apple', 1000, 1, 20),
(3, 60, 3, 'lumia', 1000, 2, 40),
(4, 70, 4, 'nexus', 1000, 2, 60),
(5, 75, 3, 'levis', 1000, 3, 70),
(6, 10, 1, 'surf', 0, 4, 9),
(7, 75, 1, 'redbull', 1000, 1, 60);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `sdealer` varchar(20) NOT NULL,
  `semail` varchar(40) NOT NULL,
  `sid` int(11) NOT NULL,
  `saddress` varchar(50) NOT NULL,
  `sname` varchar(20) NOT NULL,
  `sphone` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`sdealer`, `semail`, `sid`, `saddress`, `sname`, `sphone`) VALUES
('mcd', 'mcd@mcd.com', 1, 'Mcd st.', 'sup1', 12345),
('kfc', 'kfc@kfc.com', 2, 'kfc st.', 'sup2', 45678),
('reliance', 'reliance@reliance.com', 3, 'reliance st.', 'sup3', 12457),
('imax', 'imax@imax.com', 4, 'imax st.', 'sup4', 98765),
('ole', 'ole@ole.com', 5, 'ole st.', 'sup5', 54321);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `p_name` varchar(40) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `price` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`p_name`, `pid`, `quantity`, `price`, `id`, `customer_id`) VALUES
('colgate', 1, 800, 12, 1, 1),
('surf', 6, 500, 10, 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `cphone` (`cphone`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `sphone` (`sphone`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2015 at 11:51 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `imonggo_integration_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `adding_customers_option`
--

CREATE TABLE IF NOT EXISTS `adding_customers_option` (
  `choice_id` smallint(5) unsigned zerofill NOT NULL,
  `choice` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `id_3dcart` varchar(30) NOT NULL,
  `id_imonggo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_posting`
--

CREATE TABLE IF NOT EXISTS `invoice_posting` (
  `post_id` smallint(5) unsigned zerofill NOT NULL,
  `post_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `last_invoice_posting`
--

CREATE TABLE IF NOT EXISTS `last_invoice_posting` (
  `id` smallint(5) unsigned zerofill NOT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `last_product_posting`
--

CREATE TABLE IF NOT EXISTS `last_product_posting` (
  `id` smallint(5) unsigned zerofill NOT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id_imonggo` varchar(30) NOT NULL,
  `id_3dcart` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_posting`
--

CREATE TABLE IF NOT EXISTS `product_posting` (
  `post_id` smallint(5) unsigned zerofill NOT NULL,
  `post_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adding_customers_option`
--
ALTER TABLE `adding_customers_option`
  ADD PRIMARY KEY (`choice_id`), ADD UNIQUE KEY `choice` (`choice`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id_3dcart`), ADD UNIQUE KEY `id_imonggo` (`id_imonggo`);

--
-- Indexes for table `invoice_posting`
--
ALTER TABLE `invoice_posting`
  ADD PRIMARY KEY (`post_id`), ADD UNIQUE KEY `post_date` (`post_date`);

--
-- Indexes for table `last_invoice_posting`
--
ALTER TABLE `last_invoice_posting`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `date` (`date`), ADD UNIQUE KEY `date_2` (`date`);

--
-- Indexes for table `last_product_posting`
--
ALTER TABLE `last_product_posting`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `date` (`date`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_imonggo`), ADD UNIQUE KEY `id_3dcart` (`id_3dcart`);

--
-- Indexes for table `product_posting`
--
ALTER TABLE `product_posting`
  ADD PRIMARY KEY (`post_id`), ADD UNIQUE KEY `post_date` (`post_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adding_customers_option`
--
ALTER TABLE `adding_customers_option`
  MODIFY `choice_id` smallint(5) unsigned zerofill NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `invoice_posting`
--
ALTER TABLE `invoice_posting`
  MODIFY `post_id` smallint(5) unsigned zerofill NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `last_invoice_posting`
--
ALTER TABLE `last_invoice_posting`
  MODIFY `id` smallint(5) unsigned zerofill NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `last_product_posting`
--
ALTER TABLE `last_product_posting`
  MODIFY `id` smallint(5) unsigned zerofill NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_posting`
--
ALTER TABLE `product_posting`
  MODIFY `post_id` smallint(5) unsigned zerofill NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

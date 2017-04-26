-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 29, 2016 at 09:26 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myhijab`
--
DROP DATABASE `myhijab`;
CREATE DATABASE IF NOT EXISTS `myhijab` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `myhijab`;

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(1, 1, 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 34, 482, ''),
(2, 2, 'Doly', 'Regar', '', 'Medan', '', '4834', '', 26, 365, ''),
(3, 3, 'Lisa', 'Puspita', '', 'Medan', '', '6149', '', 34, 471, ''),
(4, 4, 'Ratna', 'Mauli', '&lt;b&gt;Notice&lt;/b&gt;: Undefined ind', 'Medan', '', '6293', '', 34, 482, '');

-- --------------------------------------------------------

--
-- Table structure for table `affiliate`
--

DROP TABLE IF EXISTS `affiliate`;
CREATE TABLE `affiliate` (
  `affiliate_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_activity`
--

DROP TABLE IF EXISTS `affiliate_activity`;
CREATE TABLE `affiliate_activity` (
  `activity_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_login`
--

DROP TABLE IF EXISTS `affiliate_login`;
CREATE TABLE `affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_transaction`
--

DROP TABLE IF EXISTS `affiliate_transaction`;
CREATE TABLE `affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `api`
--

DROP TABLE IF EXISTS `api`;
CREATE TABLE `api` (
  `api_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `api`
--

INSERT INTO `api` (`api_id`, `name`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', 'TnQgEm6BURNnS26aM7k9zanTQmG2Duxe4XTR3pmfMrkOfYNJfnjC2ieLJ6hxndM8vRPTX2TEgD9PTYDqIKA6eiLmG9Tck6WM9glPvwuVvLfr4wiSuu8fBuFG63OQvwZAkEdiHO7GAgSPAvAhCvDx7XKbPvCnS5NCoHMTEim4NN2RXnb83kAgXkbhzAK4S6YRMKqbrLgxQwh2ep8UWHupkqPLxFzVuQ3F9pmRc6D5jOPnsAkomMKaImxvSXvKUswV', 1, '2016-09-07 01:20:30', '2016-09-07 01:20:30');

-- --------------------------------------------------------

--
-- Table structure for table `api_ip`
--

DROP TABLE IF EXISTS `api_ip`;
CREATE TABLE `api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `api_ip`
--

INSERT INTO `api_ip` (`api_ip_id`, `api_id`, `ip`) VALUES
(1, 1, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `api_session`
--

DROP TABLE IF EXISTS `api_session`;
CREATE TABLE `api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `session_name` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `api_session`
--

INSERT INTO `api_session` (`api_session_id`, `api_id`, `token`, `session_id`, `session_name`, `ip`, `date_added`, `date_modified`) VALUES
(434, 1, 'm2kjj7dj9d0mTCwRnqXQCeQudsQTUGx9', 'v3qq4fedq23j83knjsrm2s18f5', 'temp_session_57ecbfcfe6c46', '::1', '2016-09-29 14:16:31', '2016-09-29 14:16:31'),
(433, 1, 'CzW1VHS5pRX9VlQUUukUO0ZvNGw0tP42', 'v3qq4fedq23j83knjsrm2s18f5', 'temp_session_57ecbfc70531f', '::1', '2016-09-29 14:16:23', '2016-09-29 14:16:23'),
(418, 1, 'TbQdOaFbWq58opukToi3UrawsqieZVZg', 'rgpcpj7bthl6tu9d9d56trqoh4', 'temp_session_57dfbe9f5a1b8', '::1', '2016-09-19 17:31:59', '2016-09-19 17:31:59'),
(417, 1, '0kJmD5hXvqyzfIgxFPlDZBChqUoXsyOm', 'rgpcpj7bthl6tu9d9d56trqoh4', 'temp_session_57dfbe7e1ca9c', '::1', '2016-09-19 17:31:26', '2016-09-19 17:31:26'),
(416, 1, 'qBhj7IyuVhAs1ya9UWYhPirbIW4WiscH', 'rgpcpj7bthl6tu9d9d56trqoh4', 'temp_session_57dfbdaea3705', '::1', '2016-09-19 17:27:58', '2016-09-19 17:27:58'),
(432, 1, 'p8ao8urp4oCTIGeoQs4JOdzKl0ePsFDu', 'v3qq4fedq23j83knjsrm2s18f5', 'temp_session_57ecbfbf20b89', '::1', '2016-09-29 14:16:15', '2016-09-29 14:16:15'),
(431, 1, 'YEfkPlTnU0wqcZzGWyA08qQmXmpOEE2h', 'v3qq4fedq23j83knjsrm2s18f5', 'temp_session_57ecbf943e4fa', '::1', '2016-09-29 14:15:32', '2016-09-29 14:15:32'),
(430, 1, 'OERb242vvO81GtJFVHT2RcxG1jq5SHRO', 'v3qq4fedq23j83knjsrm2s18f5', 'temp_session_57ecbdce7812d', '::1', '2016-09-29 14:07:58', '2016-09-29 14:07:58'),
(429, 1, 'KsC5F3GIdTbgfGpnqNvmwkNXy1faUMzo', 'v3qq4fedq23j83knjsrm2s18f5', 'temp_session_57ecbdb828a72', '::1', '2016-09-29 14:07:36', '2016-09-29 14:07:36'),
(428, 1, 'SgDYGfXi7bdWEDYLVzp68mnGW0vhO3vY', 'v3qq4fedq23j83knjsrm2s18f5', 'temp_session_57ecbdb047fce', '::1', '2016-09-29 14:07:28', '2016-09-29 14:07:28'),
(427, 1, 'PfyiN93l9OpSG7aLxD1v27auEehsnnlh', 'v3qq4fedq23j83knjsrm2s18f5', 'temp_session_57ecbc1a2d579', '::1', '2016-09-29 14:00:42', '2016-09-29 14:00:42'),
(426, 1, 'SmcVRI6ihMyRWZUyAH0uOsODPSczo2Wu', 'v3qq4fedq23j83knjsrm2s18f5', 'temp_session_57ecbbb91bf54', '::1', '2016-09-29 13:59:05', '2016-09-29 13:59:05'),
(425, 1, 'yehPzkEvW7zdpfTvMoWe5E2Z7d4HsH8p', 'v3qq4fedq23j83knjsrm2s18f5', 'temp_session_57ecbb5cef1e3', '::1', '2016-09-29 13:57:32', '2016-09-29 13:57:32'),
(424, 1, '4lNfrM3MSsSN3duwBC7REhqnf1KSiUFL', 'v3qq4fedq23j83knjsrm2s18f5', 'temp_session_57ecbaf8c5bc0', '::1', '2016-09-29 13:55:52', '2016-09-29 13:55:52'),
(423, 1, 'i85maKYNFFArCF4exgP34SAX5t4PxK8g', 'v3qq4fedq23j83knjsrm2s18f5', 'temp_session_57ecbaded5b90', '::1', '2016-09-29 13:55:26', '2016-09-29 13:55:26'),
(422, 1, 'bYxxz6AmDGgoLY4uiPQZUCccwm97uFxh', 'v3qq4fedq23j83knjsrm2s18f5', 'temp_session_57ecb9fdb9b01', '::1', '2016-09-29 13:51:41', '2016-09-29 13:51:41'),
(421, 1, '1aCPdHfb3b0uCOgGS9iiRTXvhlUfOyMk', 'rgpcpj7bthl6tu9d9d56trqoh4', 'temp_session_57dfc1c84b851', '::1', '2016-09-19 17:45:28', '2016-09-19 17:51:06'),
(420, 1, 'bhxC7nnul4v7uHTUZDJHvwYIDQQ83ihT', 'rgpcpj7bthl6tu9d9d56trqoh4', 'temp_session_57dfc1bea67a7', '::1', '2016-09-19 17:45:18', '2016-09-19 17:45:18'),
(419, 1, 'SsqgGCO4RWyHKyXDT2qGDHnR8xkh04hN', 'rgpcpj7bthl6tu9d9d56trqoh4', 'temp_session_57dfbeee0104b', '::1', '2016-09-19 17:33:18', '2016-09-19 17:36:30');

-- --------------------------------------------------------

--
-- Table structure for table `attribute`
--

DROP TABLE IF EXISTS `attribute`;
CREATE TABLE `attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attribute`
--

INSERT INTO `attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_description`
--

DROP TABLE IF EXISTS `attribute_description`;
CREATE TABLE `attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attribute_description`
--

INSERT INTO `attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed'),
(1, 2, 'Description'),
(2, 2, 'No. of Cores'),
(4, 2, 'test 1'),
(5, 2, 'test 2'),
(6, 2, 'test 3'),
(7, 2, 'test 4'),
(8, 2, 'test 5'),
(9, 2, 'test 6'),
(10, 2, 'test 7'),
(11, 2, 'test 8'),
(3, 2, 'Clockspeed');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_group`
--

DROP TABLE IF EXISTS `attribute_group`;
CREATE TABLE `attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attribute_group`
--

INSERT INTO `attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_group_description`
--

DROP TABLE IF EXISTS `attribute_group_description`;
CREATE TABLE `attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attribute_group_description`
--

INSERT INTO `attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor'),
(3, 2, 'Memory'),
(4, 2, 'Technical'),
(5, 2, 'Motherboard'),
(6, 2, 'Processor');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 1);

-- --------------------------------------------------------

--
-- Table structure for table `banner_image`
--

DROP TABLE IF EXISTS `banner_image`;
CREATE TABLE `banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner_image`
--

INSERT INTO `banner_image` (`banner_image_id`, `banner_id`, `link`, `image`, `sort_order`) VALUES
(79, 7, 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(87, 6, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(94, 8, '', 'catalog/demo/manufacturer/nfl.png', 0),
(95, 8, '', 'catalog/demo/manufacturer/redbull.png', 0),
(96, 8, '', 'catalog/demo/manufacturer/sony.png', 0),
(91, 8, '', 'catalog/demo/manufacturer/cocacola.png', 0),
(92, 8, '', 'catalog/demo/manufacturer/burgerking.png', 0),
(93, 8, '', 'catalog/demo/manufacturer/canon.png', 0),
(88, 8, '', 'catalog/demo/manufacturer/harley.png', 0),
(89, 8, '', 'catalog/demo/manufacturer/dell.png', 0),
(90, 8, '', 'catalog/demo/manufacturer/disney.png', 0),
(80, 7, '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(97, 8, '', 'catalog/demo/manufacturer/starbucks.png', 0),
(98, 8, '', 'catalog/demo/manufacturer/nintendo.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `banner_image_description`
--

DROP TABLE IF EXISTS `banner_image_description`;
CREATE TABLE `banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner_image_description`
--

INSERT INTO `banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`) VALUES
(79, 1, 7, 'iPhone 6'),
(87, 1, 6, 'HP Banner'),
(93, 1, 8, 'Canon'),
(92, 1, 8, 'Burger King'),
(91, 1, 8, 'Coca Cola'),
(90, 1, 8, 'Disney'),
(89, 1, 8, 'Dell'),
(80, 1, 7, 'MacBookAir'),
(88, 1, 8, 'Harley Davidson'),
(94, 1, 8, 'NFL'),
(95, 1, 8, 'RedBull'),
(96, 1, 8, 'Sony'),
(97, 1, 8, 'Starbucks'),
(98, 1, 8, 'Nintendo'),
(79, 2, 7, 'iPhone 6'),
(87, 2, 6, 'HP Banner'),
(93, 2, 8, 'Canon'),
(92, 2, 8, 'Burger King'),
(91, 2, 8, 'Coca Cola'),
(90, 2, 8, 'Disney'),
(89, 2, 8, 'Dell'),
(80, 2, 7, 'MacBookAir'),
(88, 2, 8, 'Harley Davidson'),
(94, 2, 8, 'NFL'),
(95, 2, 8, 'RedBull'),
(96, 2, 8, 'Sony'),
(97, 2, 8, 'Starbucks'),
(98, 2, 8, 'Nintendo');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `customer_id`, `session_id`, `product_id`, `recurring_id`, `option`, `quantity`, `date_added`) VALUES
(41, 2, 'hqcp41idktqrmic3cjl09go7f6', 51, 0, '[]', 1, '2016-09-11 11:33:11'),
(55, 1, 'rgpcpj7bthl6tu9d9d56trqoh4', 59, 0, '[]', 2, '2016-09-18 21:14:45'),
(56, 3, 'rgpcpj7bthl6tu9d9d56trqoh4', 59, 0, '[]', 2, '2016-09-19 17:34:00');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category_description`
--

DROP TABLE IF EXISTS `category_description`;
CREATE TABLE `category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category_filter`
--

DROP TABLE IF EXISTS `category_filter`;
CREATE TABLE `category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category_path`
--

DROP TABLE IF EXISTS `category_path`;
CREATE TABLE `category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category_to_layout`
--

DROP TABLE IF EXISTS `category_to_layout`;
CREATE TABLE `category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category_to_store`
--

DROP TABLE IF EXISTS `category_to_store`;
CREATE TABLE `category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `city` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city`, `zone_id`, `name`, `status`, `sort_order`) VALUES
(43, 7, 'Sidemen', 1, 0),
(42, 7, 'Selat', 1, 0),
(41, 7, 'Rendang', 1, 0),
(40, 7, 'Manggis', 1, 0),
(39, 7, 'Kubu', 1, 0),
(38, 7, 'Karang Asem', 1, 0),
(37, 7, 'Bebandem', 1, 0),
(36, 7, 'Abang', 1, 0),
(35, 6, 'Pekutatan', 1, 0),
(34, 6, 'Negara', 1, 0),
(33, 6, 'Mendoyo', 1, 0),
(32, 6, 'Melaya', 1, 0),
(31, 6, 'Jembrana', 1, 0),
(30, 5, 'Ubud', 1, 0),
(29, 5, 'Tegallalang', 1, 0),
(28, 5, 'Tampak Siring', 1, 0),
(27, 5, 'Sukawati', 1, 0),
(26, 5, 'Payangan', 1, 0),
(25, 5, 'Gianyar', 1, 0),
(24, 5, 'Belah Batuh (Blahbatuh)', 1, 0),
(23, 4, 'Denpasar Utara', 1, 0),
(22, 4, 'Denpasar Timur', 1, 0),
(21, 4, 'Denpasar Selatan', 1, 0),
(20, 4, 'Denpasar Barat', 1, 0),
(19, 3, 'Tejakula', 1, 0),
(18, 3, 'Sukasada', 1, 0),
(17, 3, 'Seririt', 1, 0),
(16, 3, 'Sawan', 1, 0),
(15, 3, 'Kubutambahan', 1, 0),
(14, 3, 'Gerokgak', 1, 0),
(13, 3, 'Busungbiu', 1, 0),
(12, 3, 'Buleleng', 1, 0),
(11, 2, 'Banjar', 1, 0),
(10, 2, 'Tembuku', 1, 0),
(9, 2, 'Susut', 1, 0),
(8, 2, 'Kintamani', 1, 0),
(7, 2, 'Bangli', 1, 0),
(6, 1, 'Petang', 1, 0),
(5, 1, 'Mengwi', 1, 0),
(4, 1, 'Kuta Utara', 1, 0),
(3, 1, 'Kuta Selatan', 1, 0),
(2, 1, 'Kuta', 1, 0),
(1, 1, 'Abiansemal', 1, 0),
(44, 8, 'Banjarangkan', 1, 0),
(45, 8, 'Dawan', 1, 0),
(46, 8, 'Klungkung', 1, 0),
(47, 8, 'Nusapenida', 1, 0),
(48, 9, 'Baturiti', 1, 0),
(49, 9, 'Kediri', 1, 0),
(50, 9, 'Kerambitan', 1, 0),
(51, 9, 'Marga', 1, 0),
(52, 9, 'Penebel', 1, 0),
(53, 9, 'Pupuan', 1, 0),
(54, 9, 'Selemadeg', 1, 0),
(55, 9, 'Selemadeg Barat', 1, 0),
(56, 9, 'Selemadeg Timur', 1, 0),
(57, 9, 'Tabanan', 1, 0),
(58, 10, 'Bakam', 1, 0),
(59, 10, 'Belinyu', 1, 0),
(60, 10, 'Mendo Barat', 1, 0),
(61, 10, 'Merawang', 1, 0),
(62, 10, 'Pemali', 1, 0),
(63, 10, 'Puding Besar', 1, 0),
(64, 10, 'Riau Silip', 1, 0),
(65, 10, 'Sungai Liat', 1, 0),
(66, 11, 'Jebus', 1, 0),
(67, 11, 'Kelapa', 1, 0),
(68, 11, 'Mentok (Muntok)', 1, 0),
(69, 11, 'Simpang Teritip', 1, 0),
(70, 11, 'Tempilang', 1, 0),
(71, 12, 'Air Gegas', 1, 0),
(72, 12, 'Lepar Pongok', 1, 0),
(73, 12, 'Payung', 1, 0),
(74, 12, 'Pulau Besar', 1, 0),
(75, 12, 'Simpang Rimba', 1, 0),
(76, 12, 'Toboali', 1, 0),
(77, 12, 'Tukak Sadai', 1, 0),
(78, 13, 'Koba', 1, 0),
(79, 13, 'Lubuk Besar', 1, 0),
(80, 13, 'Namang', 1, 0),
(81, 13, 'Pangkalan Baru', 1, 0),
(82, 13, 'Simpang Katis', 1, 0),
(83, 13, 'Sungai Selan', 1, 0),
(84, 14, 'Badau', 1, 0),
(85, 14, 'Membalong', 1, 0),
(86, 14, 'Selat Nasik', 1, 0),
(87, 14, 'Sijuk', 1, 0),
(88, 14, 'Tanjung Pandan', 1, 0),
(89, 15, 'Dendang', 1, 0),
(90, 15, 'Gantung', 1, 0),
(91, 15, 'Kelapa Kampit', 1, 0),
(92, 15, 'Manggar', 1, 0),
(93, 16, 'Bukit Intan', 1, 0),
(94, 16, 'Gerunggang', 1, 0),
(95, 16, 'Pangkal Balam', 1, 0),
(96, 16, 'Rangkui', 1, 0),
(97, 16, 'Taman Sari', 1, 0),
(98, 17, 'Cibeber', 1, 0),
(99, 17, 'Cilegon', 1, 0),
(100, 17, 'Citangkil', 1, 0),
(101, 17, 'Ciwandan', 1, 0),
(102, 17, 'Gerogol', 1, 0),
(103, 17, 'Jombang', 1, 0),
(104, 17, 'Pulomerak', 1, 0),
(105, 17, 'Purwakarta', 1, 0),
(106, 18, 'Banjarsari', 1, 0),
(107, 18, 'Bayah', 1, 0),
(108, 18, 'Bojongmanik', 1, 0),
(109, 18, 'Cibadak', 1, 0),
(110, 18, 'Cibeber', 1, 0),
(111, 18, 'Cigemblong', 1, 0),
(112, 18, 'Cihara', 1, 0),
(113, 18, 'Cijaku', 1, 0),
(114, 18, 'Cikulur', 1, 0),
(115, 18, 'Cileles', 1, 0),
(116, 18, 'Cilograng', 1, 0),
(117, 18, 'Cimarga', 1, 0),
(118, 18, 'Cipanas', 1, 0),
(119, 18, 'Cirinten', 1, 0),
(120, 18, 'Curugbitung', 1, 0),
(121, 18, 'Gunung Kencana', 1, 0),
(122, 18, 'Kalanganyar', 1, 0),
(123, 18, 'Lebakgedong', 1, 0),
(124, 18, 'Leuwidamar', 1, 0),
(125, 18, 'Maja', 1, 0),
(126, 18, 'Malingping', 1, 0),
(127, 18, 'Muncang', 1, 0),
(128, 18, 'Panggarangan', 1, 0),
(129, 18, 'Rangkasbitung', 1, 0),
(130, 18, 'Sajira', 1, 0),
(131, 18, 'Sobang', 1, 0),
(132, 18, 'Wanasalam', 1, 0),
(133, 18, 'Warunggunung', 1, 0),
(134, 19, 'Angsana', 1, 0),
(135, 19, 'Banjar', 1, 0),
(136, 19, 'Bojong', 1, 0),
(137, 19, 'Cadasari', 1, 0),
(138, 19, 'Carita', 1, 0),
(139, 19, 'Cibaliung', 1, 0),
(140, 19, 'Cibitung', 1, 0),
(141, 19, 'Cigeulis', 1, 0),
(142, 19, 'Cikeudal (Cikedal)', 1, 0),
(143, 19, 'Cikeusik', 1, 0),
(144, 19, 'Cimanggu', 1, 0),
(145, 19, 'Cimanuk', 1, 0),
(146, 19, 'Cipeucang', 1, 0),
(147, 19, 'Cisata', 1, 0),
(148, 19, 'Jiput', 1, 0),
(149, 19, 'Kaduhejo', 1, 0),
(150, 19, 'Karang Tanjung', 1, 0),
(151, 19, 'Koroncong', 1, 0),
(152, 19, 'Labuan', 1, 0),
(153, 19, 'Majasari', 1, 0),
(154, 19, 'Mandalawangi', 1, 0),
(155, 19, 'Mekarjaya', 1, 0),
(156, 19, 'Menes', 1, 0),
(157, 19, 'Munjul', 1, 0),
(158, 19, 'Pagelaran', 1, 0),
(159, 19, 'Pandeglang', 1, 0),
(160, 19, 'Panimbang', 1, 0),
(161, 19, 'Patia', 1, 0),
(162, 19, 'Picung', 1, 0),
(163, 19, 'Pulosari', 1, 0),
(164, 19, 'Saketi', 1, 0),
(165, 19, 'Sindangresmi', 1, 0),
(166, 19, 'Sobang', 1, 0),
(167, 19, 'Sukaresmi', 1, 0),
(168, 19, 'Sumur', 1, 0),
(169, 21, 'Cipocok Jaya', 1, 0),
(170, 21, 'Curug', 1, 0),
(171, 21, 'Kasemen', 1, 0),
(172, 21, 'Serang', 1, 0),
(173, 21, 'Taktakan', 1, 0),
(174, 21, 'Walantaka', 1, 0),
(175, 20, 'Anyer/Anyar', 1, 0),
(176, 20, 'Bandung', 1, 0),
(177, 20, 'Baros', 1, 0),
(178, 20, 'Binuang', 1, 0),
(179, 20, 'Bojonegara', 1, 0),
(180, 20, 'Carenang', 1, 0),
(181, 20, 'Cikande', 1, 0),
(182, 20, 'Cikeusal', 1, 0),
(183, 20, 'Cinangka', 1, 0),
(184, 20, 'Ciomas', 1, 0),
(185, 20, 'Ciruas', 1, 0),
(186, 20, 'Gunungsari', 1, 0),
(187, 20, 'Jawilan', 1, 0),
(188, 20, 'Kibin', 1, 0),
(189, 20, 'Kopo', 1, 0),
(190, 20, 'Kragilan', 1, 0),
(191, 20, 'Kramatwatu', 1, 0),
(192, 20, 'Mancak', 1, 0),
(193, 20, 'Pabuaran', 1, 0),
(194, 20, 'Padarincang', 1, 0),
(195, 20, 'Pamarayan', 1, 0),
(196, 20, 'Petir', 1, 0),
(197, 20, 'Pontang', 1, 0),
(198, 20, 'Pulo Ampel', 1, 0),
(199, 20, 'Tanara', 1, 0),
(200, 20, 'Tirtayasa', 1, 0),
(201, 20, 'Tunjung Teja', 1, 0),
(202, 20, 'Waringin Kurung', 1, 0),
(203, 22, 'Batuceper', 1, 0),
(204, 22, 'Benda', 1, 0),
(205, 22, 'Cibodas', 1, 0),
(206, 22, 'Ciledug', 1, 0),
(207, 22, 'Cipondoh', 1, 0),
(208, 22, 'Jatiuwung', 1, 0),
(209, 22, 'Karang Tengah', 1, 0),
(210, 22, 'Karawaci', 1, 0),
(211, 22, 'Larangan', 1, 0),
(212, 22, 'Neglasari', 1, 0),
(213, 22, 'Periuk', 1, 0),
(214, 22, 'Pinang (Penang)', 1, 0),
(215, 22, 'Tangerang', 1, 0),
(216, 23, 'Balaraja', 1, 0),
(217, 23, 'Cikupa', 1, 0),
(218, 23, 'Cisauk', 1, 0),
(219, 23, 'Cisoka', 1, 0),
(220, 23, 'Curug', 1, 0),
(221, 23, 'Gunung Kaler', 1, 0),
(222, 23, 'Jambe', 1, 0),
(223, 23, 'Jayanti', 1, 0),
(224, 23, 'Kelapa Dua', 1, 0),
(225, 23, 'Kemiri', 1, 0),
(226, 23, 'Kosambi', 1, 0),
(227, 23, 'Kresek', 1, 0),
(228, 23, 'Kronjo', 1, 0),
(229, 23, 'Legok', 1, 0),
(230, 23, 'Mauk', 1, 0),
(231, 23, 'Mekar Baru', 1, 0),
(232, 23, 'Pagedangan', 1, 0),
(233, 23, 'Pakuhaji', 1, 0),
(234, 23, 'Panongan', 1, 0),
(235, 23, 'Pasar Kemis', 1, 0),
(236, 23, 'Rajeg', 1, 0),
(237, 23, 'Sepatan', 1, 0),
(238, 23, 'Sepatan Timur', 1, 0),
(239, 23, 'Sindang Jaya', 1, 0),
(240, 23, 'Solear', 1, 0),
(241, 23, 'Sukadiri', 1, 0),
(242, 23, 'Sukamulya', 1, 0),
(243, 23, 'Teluknaga', 1, 0),
(244, 23, 'Tigaraksa', 1, 0),
(245, 24, 'Ciputat', 1, 0),
(246, 24, 'Ciputat Timur', 1, 0),
(247, 24, 'Pamulang', 1, 0),
(248, 24, 'Pondok Aren', 1, 0),
(249, 24, 'Serpong', 1, 0),
(250, 24, 'Serpong Utara', 1, 0),
(251, 24, 'Setu', 1, 0),
(252, 25, 'Gading Cempaka', 1, 0),
(253, 25, 'Kampung Melayu', 1, 0),
(254, 25, 'Muara Bangka Hulu', 1, 0),
(255, 25, 'Ratu Agung', 1, 0),
(256, 25, 'Ratu Samban', 1, 0),
(257, 25, 'Selebar', 1, 0),
(258, 25, 'Sungai Serut', 1, 0),
(259, 25, 'Teluk Segara', 1, 0),
(260, 26, 'Air Nipis', 1, 0),
(261, 26, 'Bunga Mas', 1, 0),
(262, 26, 'Kedurang', 1, 0),
(263, 26, 'Kedurang Ilir', 1, 0),
(264, 26, 'Kota Manna', 1, 0),
(265, 26, 'Manna', 1, 0),
(266, 26, 'Pasar Manna', 1, 0),
(267, 26, 'Pino', 1, 0),
(268, 26, 'Pinoraya', 1, 0),
(269, 26, 'Seginim', 1, 0),
(270, 26, 'Ulu Manna', 1, 0),
(271, 27, 'Karang Tinggi', 1, 0),
(272, 27, 'Pagar Jati', 1, 0),
(273, 27, 'Pematang Tiga', 1, 0),
(274, 27, 'Pondok Kelapa', 1, 0),
(275, 27, 'Taba Penanjung', 1, 0),
(276, 27, 'Talang Empat', 1, 0),
(277, 28, 'Air Besi', 1, 0),
(278, 28, 'Air Napal', 1, 0),
(279, 28, 'Arga Makmur', 1, 0),
(280, 28, 'Batik Nau', 1, 0),
(281, 28, 'Enggano', 1, 0),
(282, 28, 'Giri Mulia', 1, 0),
(283, 28, 'Kerkap', 1, 0),
(284, 28, 'Ketahun', 1, 0),
(285, 28, 'Lais', 1, 0),
(286, 28, 'Napal Putih', 1, 0),
(287, 28, 'Padang Jaya', 1, 0),
(288, 28, 'Putri Hijau', 1, 0),
(289, 29, 'Kaur Selatan', 1, 0),
(290, 29, 'Kaur Tengah', 1, 0),
(291, 29, 'Kaur Selatan', 1, 0),
(292, 29, 'Kaur Tengah', 1, 0),
(293, 29, 'Kaur Utara', 1, 0),
(294, 29, 'Kelam Tengah', 1, 0),
(295, 29, 'Kinal', 1, 0),
(296, 29, 'Luas', 1, 0),
(297, 29, 'Lungkang Kule', 1, 0),
(298, 29, 'Maje', 1, 0),
(299, 29, 'Muara Sahung', 1, 0),
(300, 29, 'Nasal', 1, 0),
(301, 29, 'Padang Guci Hilir', 1, 0),
(302, 29, 'Padang Guci Hulu', 1, 0),
(303, 29, 'Semidang Gumai (Gumay)', 1, 0),
(304, 29, 'Tanjung Kemuning', 1, 0),
(305, 29, 'Tetap (Muara Tetap)', 1, 0),
(306, 30, 'Bermani Ilir', 1, 0),
(307, 30, 'Kebawetan (Kabawetan)', 1, 0),
(308, 30, 'Kepahiang', 1, 0),
(309, 30, 'Merigi', 1, 0),
(310, 30, 'Muara Kemumu', 1, 0),
(311, 30, 'Seberang Musi', 1, 0),
(312, 30, 'Tebat Karai', 1, 0),
(313, 30, 'Ujan Mas', 1, 0),
(314, 31, 'Lebong Atas', 1, 0),
(315, 31, 'Lebong Selatan', 1, 0),
(316, 31, 'Lebong Tengah', 1, 0),
(317, 31, 'Lebong Utara', 1, 0),
(318, 31, 'Rimbo Pengadang', 1, 0),
(319, 32, 'Air Dikit', 1, 0),
(320, 32, 'Air Majunto', 1, 0),
(321, 32, 'Air Rami', 1, 0),
(322, 32, 'Lubuk Pinang', 1, 0),
(323, 32, 'Malin Deman', 1, 0),
(324, 32, 'Muko-Muko Selatan', 1, 0),
(325, 32, 'Mukomuko Utara', 1, 0),
(326, 32, 'Penarik', 1, 0),
(327, 32, 'Pondok Suguh', 1, 0),
(328, 32, 'Selagan Raya', 1, 0),
(329, 32, 'Sungai Rumbai', 1, 0),
(330, 32, 'Teramang Jaya', 1, 0),
(331, 32, 'Teras Terunjam', 1, 0),
(332, 32, 'V Koto', 1, 0),
(333, 32, 'XIV Koto', 1, 0),
(334, 33, 'Bermani Ulu', 1, 0),
(335, 33, 'Bermani Ulu Raya', 1, 0),
(336, 33, 'Binduriang', 1, 0),
(337, 33, 'Curup', 1, 0),
(338, 33, 'Curup Selatan', 1, 0),
(339, 33, 'Curup Tengah', 1, 0),
(340, 33, 'Curup Timur', 1, 0),
(341, 33, 'Curup Utara', 1, 0),
(342, 33, 'Kota Padang', 1, 0),
(343, 33, 'Padang Ulak Tanding', 1, 0),
(344, 33, 'Selupu Rejang', 1, 0),
(345, 33, 'Sindang Beliti Ilir', 1, 0),
(346, 33, 'Sindang Beliti Ulu', 1, 0),
(347, 33, 'Sindang Daratan', 1, 0),
(348, 33, 'Sindang Kelingi', 1, 0),
(349, 34, 'Air Periukan', 1, 0),
(350, 34, 'Ilir Talo', 1, 0),
(351, 34, 'Lubuk Sandi', 1, 0),
(352, 34, 'Seluma', 1, 0),
(353, 34, 'Seluma Barat', 1, 0),
(354, 34, 'Seluma Selatan', 1, 0),
(355, 34, 'Seluma Timur', 1, 0),
(356, 34, 'Seluma Utara', 1, 0),
(357, 34, 'Semidang Alas', 1, 0),
(358, 34, 'Semidang Alas Maras', 1, 0),
(359, 34, 'Sukaraja', 1, 0),
(360, 34, 'Talo', 1, 0),
(361, 34, 'Talo Kecil', 1, 0),
(362, 34, 'Ulu Talo', 1, 0),
(363, 35, 'Bambang Lipuro', 1, 0),
(364, 35, 'Banguntapan', 1, 0),
(365, 35, 'Bantul', 1, 0),
(366, 35, 'Dlingo', 1, 0),
(367, 35, 'Imogiri', 1, 0),
(368, 35, 'Jetis', 1, 0),
(369, 35, 'Kasihan', 1, 0),
(370, 35, 'Kretek', 1, 0),
(371, 35, 'Pajangan', 1, 0),
(372, 35, 'Pandak', 1, 0),
(373, 35, 'Piyungan', 1, 0),
(374, 35, 'Pleret', 1, 0),
(375, 35, 'Pundong', 1, 0),
(376, 35, 'Sanden', 1, 0),
(377, 35, 'Sedayu', 1, 0),
(378, 35, 'Sewon', 1, 0),
(379, 35, 'Srandakan', 1, 0),
(380, 36, 'Gedang Sari', 1, 0),
(381, 36, 'Girisubo', 1, 0),
(382, 36, 'Karangmojo', 1, 0),
(383, 36, 'Ngawen', 1, 0),
(384, 36, 'Nglipar', 1, 0),
(385, 36, 'Paliyan', 1, 0),
(386, 36, 'Panggang', 1, 0),
(387, 36, 'Patuk', 1, 0),
(388, 36, 'Playen', 1, 0),
(389, 36, 'Ponjong', 1, 0),
(390, 36, 'Purwosari', 1, 0),
(391, 36, 'Rongkop', 1, 0),
(392, 36, 'Sapto Sari', 1, 0),
(393, 36, 'Semanu', 1, 0),
(394, 36, 'Semin', 1, 0),
(395, 36, 'Tanjungsari', 1, 0),
(396, 36, 'Tepus', 1, 0),
(397, 36, 'Wonosari', 1, 0),
(398, 37, 'Galur', 1, 0),
(399, 37, 'Girimulyo', 1, 0),
(400, 37, 'Kalibawang', 1, 0),
(401, 37, 'Kokap', 1, 0),
(402, 37, 'Lendah', 1, 0),
(403, 37, 'Nanggulan', 1, 0),
(404, 37, 'Panjatan', 1, 0),
(405, 37, 'Pengasih', 1, 0),
(406, 37, 'Samigaluh', 1, 0),
(407, 37, 'Sentolo', 1, 0),
(408, 37, 'Temon', 1, 0),
(409, 37, 'Wates', 1, 0),
(410, 38, 'Berbah', 1, 0),
(411, 38, 'Cangkringan', 1, 0),
(412, 38, 'Depok', 1, 0),
(413, 38, 'Gamping', 1, 0),
(414, 38, 'Godean', 1, 0),
(415, 38, 'Kalasan', 1, 0),
(416, 38, 'Minggir', 1, 0),
(417, 38, 'Mlati', 1, 0),
(418, 38, 'Moyudan', 1, 0),
(419, 38, 'Ngaglik', 1, 0),
(420, 38, 'Ngemplak', 1, 0),
(421, 38, 'Pakem', 1, 0),
(422, 38, 'Prambanan', 1, 0),
(423, 38, 'Seyegan', 1, 0),
(424, 38, 'Sleman', 1, 0),
(425, 38, 'Tempel', 1, 0),
(426, 38, 'Turi', 1, 0),
(427, 39, 'Danurejan', 1, 0),
(428, 39, 'Gedong Tengen', 1, 0),
(429, 39, 'Gondokusuman', 1, 0),
(430, 39, 'Gondomanan', 1, 0),
(431, 39, 'Jetis', 1, 0),
(432, 39, 'Kotagede', 1, 0),
(433, 39, 'Kraton', 1, 0),
(434, 39, 'Mantrijeron', 1, 0),
(435, 39, 'Mergangsan', 1, 0),
(436, 39, 'Ngampilan', 1, 0),
(437, 39, 'Pakualaman', 1, 0),
(438, 39, 'Tegalrejo', 1, 0),
(439, 39, 'Umbulharjo', 1, 0),
(440, 39, 'Wirobrajan', 1, 0),
(441, 40, 'Cengkareng', 1, 0),
(442, 40, 'Grogol Petamburan', 1, 0),
(443, 40, 'Kalideres', 1, 0),
(444, 40, 'Kebon Jeruk', 1, 0),
(445, 40, 'Kembangan', 1, 0),
(446, 40, 'Palmerah', 1, 0),
(447, 40, 'Taman Sari', 1, 0),
(448, 40, 'Tambora', 1, 0),
(449, 41, 'Cempaka Putih', 1, 0),
(450, 41, 'Gambir', 1, 0),
(451, 41, 'Johar Baru', 1, 0),
(452, 41, 'Kemayoran', 1, 0),
(453, 41, 'Menteng', 1, 0),
(454, 41, 'Sawah Besar', 1, 0),
(455, 41, 'Senen', 1, 0),
(456, 41, 'Tanah Abang', 1, 0),
(457, 42, 'Cilandak', 1, 0),
(458, 42, 'Jagakarsa', 1, 0),
(459, 42, 'Kebayoran Baru', 1, 0),
(460, 42, 'Kebayoran Lama', 1, 0),
(461, 42, 'Mampang Prapatan', 1, 0),
(462, 42, 'Pancoran', 1, 0),
(463, 42, 'Pasar Minggu', 1, 0),
(464, 42, 'Pesanggrahan', 1, 0),
(465, 42, 'Setia Budi', 1, 0),
(466, 42, 'Tebet', 1, 0),
(467, 43, 'Cakung', 1, 0),
(468, 43, 'Cipayung', 1, 0),
(469, 43, 'Ciracas', 1, 0),
(470, 43, 'Duren Sawit', 1, 0),
(471, 43, 'Jatinegara', 1, 0),
(472, 43, 'Kramat Jati', 1, 0),
(473, 43, 'Makasar', 1, 0),
(474, 43, 'Matraman', 1, 0),
(475, 43, 'Pasar Rebo', 1, 0),
(476, 43, 'Pulo Gadung', 1, 0),
(477, 44, 'Cilincing', 1, 0),
(478, 44, 'Kelapa Gading', 1, 0),
(479, 44, 'Koja', 1, 0),
(480, 44, 'Pademangan', 1, 0),
(481, 44, 'Penjaringan', 1, 0),
(482, 44, 'Tanjung Priok', 1, 0),
(483, 45, 'Kepulauan Seribu Selatan', 1, 0),
(484, 45, 'Kepulauan Seribu Utara', 1, 0),
(485, 46, 'Botumoita (Botumoito)', 1, 0),
(486, 46, 'Dulupi', 1, 0),
(487, 46, 'Mananggu', 1, 0),
(488, 46, 'Paguyaman', 1, 0),
(489, 46, 'Paguyaman Pantai', 1, 0),
(490, 46, 'Tilamuta', 1, 0),
(491, 46, 'Wonosari', 1, 0),
(492, 47, 'Bone', 1, 0),
(493, 47, 'Bone Raya', 1, 0),
(494, 47, 'Bonepantai', 1, 0),
(495, 47, 'Botu Pingge', 1, 0),
(496, 47, 'Bulango Selatan', 1, 0),
(497, 47, 'Bulango Timur', 1, 0),
(498, 47, 'Bulango Ulu', 1, 0),
(499, 47, 'Bulango Utara', 1, 0),
(500, 47, 'Bulawa', 1, 0),
(501, 47, 'Kabila', 1, 0),
(502, 47, 'Kabila Bone', 1, 0),
(503, 47, 'Suwawa', 1, 0),
(504, 47, 'Suwawa Selatan', 1, 0),
(505, 47, 'Suwawa Tengah', 1, 0),
(506, 47, 'Suwawa Timur', 1, 0),
(507, 47, 'Tapa', 1, 0),
(508, 47, 'Tilongkabila', 1, 0),
(509, 49, 'Dungingi', 1, 0),
(510, 49, 'Kota Barat', 1, 0),
(511, 49, 'Kota Selatan', 1, 0),
(512, 49, 'Kota Tengah', 1, 0),
(513, 49, 'Kota Timur', 1, 0),
(514, 49, 'Kota Utara', 1, 0),
(515, 48, 'Asparaga', 1, 0),
(516, 48, 'Batudaa', 1, 0),
(517, 48, 'Batudaa Pantai', 1, 0),
(518, 48, 'Biluhu', 1, 0),
(519, 48, 'Boliohuto (Boliyohuto)', 1, 0),
(520, 48, 'Bongomeme', 1, 0),
(521, 48, 'Limboto', 1, 0),
(522, 48, 'Limboto Barat', 1, 0),
(523, 48, 'Mootilango', 1, 0),
(524, 48, 'Pulubala', 1, 0),
(525, 48, 'Tabongo', 1, 0),
(526, 48, 'Telaga', 1, 0),
(527, 48, 'Telaga Biru', 1, 0),
(528, 48, 'Telaga Jaya', 1, 0),
(529, 48, 'Tibawa', 1, 0),
(530, 48, 'Tilango', 1, 0),
(531, 48, 'Tolangohula', 1, 0),
(532, 50, 'Anggrek', 1, 0),
(533, 50, 'Atinggola', 1, 0),
(534, 50, 'Kwandang', 1, 0),
(535, 50, 'Sumalata', 1, 0),
(536, 50, 'Tolinggula', 1, 0),
(537, 51, 'Buntulia', 1, 0),
(538, 51, 'Dengilo', 1, 0),
(539, 51, 'Duhiadaa', 1, 0),
(540, 51, 'Lemito', 1, 0),
(541, 51, 'Marisa', 1, 0),
(542, 51, 'Paguat', 1, 0),
(543, 51, 'Patilanggio', 1, 0),
(544, 51, 'Popayato', 1, 0),
(545, 51, 'Popayato Barat', 1, 0),
(546, 51, 'Popayato Timur', 1, 0),
(547, 51, 'Randangan', 1, 0),
(548, 51, 'Taluduti', 1, 0),
(549, 51, 'Wanggarasi', 1, 0),
(550, 52, 'Bajubang', 1, 0),
(551, 52, 'Batin XXIV', 1, 0),
(552, 52, 'Maro Sebo Ilir', 1, 0),
(553, 52, 'Maro Sebo Ulu', 1, 0),
(554, 52, 'Mersam', 1, 0),
(555, 52, 'Muara Bulian', 1, 0),
(556, 52, 'Muara Tembesi', 1, 0),
(557, 52, 'Pemayung', 1, 0),
(558, 53, 'Bathin II Babeko', 1, 0),
(559, 53, 'Bathin II Pelayang', 1, 0),
(560, 53, 'Bathin III', 1, 0),
(561, 53, 'Bathin III Ulu', 1, 0),
(562, 53, 'Bungo Dani', 1, 0),
(563, 53, 'Jujuhan', 1, 0),
(564, 53, 'Jujuhan Ilir', 1, 0),
(565, 53, 'Limbur Lubuk Mengkuang', 1, 0),
(566, 53, 'Muko-Muko Batin VII', 1, 0),
(567, 53, 'Pasar Muara Bungo', 1, 0),
(568, 53, 'Pelepat', 1, 0),
(569, 53, 'Pelepat Ilir', 1, 0),
(570, 53, 'Rantau Pandan', 1, 0),
(571, 53, 'Rimbo Tengah', 1, 0),
(572, 53, 'Tanah Sepenggal', 1, 0),
(573, 53, 'Tanah Sepenggal Lintas', 1, 0),
(574, 53, 'Tanah Tumbuh', 1, 0),
(575, 54, 'Danau Teluk', 1, 0),
(576, 54, 'Jambi Selatan', 1, 0),
(577, 54, 'Jambi Timur', 1, 0),
(578, 54, 'Jelutung', 1, 0),
(579, 54, 'Kota Baru', 1, 0),
(580, 54, 'Pasar Jambi', 1, 0),
(581, 54, 'Pelayangan', 1, 0),
(582, 54, 'Telanaipura', 1, 0),
(583, 55, 'Air Hangat', 1, 0),
(584, 55, 'Air Hangat Timur', 1, 0),
(585, 55, 'Batang Merangin', 1, 0),
(586, 55, 'Danau Kerinci', 1, 0),
(587, 55, 'Depati Tujuh', 1, 0),
(588, 55, 'Gunung Kerinci', 1, 0),
(589, 55, 'Gunung Raya', 1, 0),
(590, 55, 'Gunung Tujuh', 1, 0),
(591, 55, 'Kayu Aro', 1, 0),
(592, 55, 'Keliling Danau', 1, 0),
(593, 55, 'Sitinjau Laut', 1, 0),
(594, 55, 'Siulak', 1, 0),
(595, 56, 'Bangko', 1, 0),
(596, 56, 'Bangko Barat', 1, 0),
(597, 56, 'Batang Masumai', 1, 0),
(598, 56, 'Jangkat', 1, 0),
(599, 56, 'Lembah Masurai', 1, 0),
(600, 56, 'Margo Tabir', 1, 0),
(601, 56, 'Muara Siau', 1, 0),
(602, 56, 'Nalo Tantan', 1, 0),
(603, 56, 'Pamenang', 1, 0),
(604, 56, 'Pamenang Barat', 1, 0),
(605, 56, 'Pamenang Selatan', 1, 0),
(606, 56, 'Pangkalan Jambu', 1, 0),
(607, 56, 'Renah Pembarap', 1, 0),
(608, 56, 'Renah Pemenang', 1, 0),
(609, 56, 'Sungai Manau', 1, 0),
(610, 56, 'Sungai Tenang', 1, 0),
(611, 56, 'Tabir', 1, 0),
(612, 56, 'Tabir Ilir', 1, 0),
(613, 56, 'Tabir Lintas', 1, 0),
(614, 56, 'Tabir Selatan', 1, 0),
(615, 56, 'Tabir Timur', 1, 0),
(616, 56, 'Tabir Ulu', 1, 0),
(617, 56, 'Tanah Barat', 1, 0),
(618, 56, 'Tiang Pumpung', 1, 0),
(619, 57, 'Jambi Luar Kota', 1, 0),
(620, 57, 'Kumpeh', 1, 0),
(621, 57, 'Kumpeh Ulu', 1, 0),
(622, 57, 'Maro Sebo', 1, 0),
(623, 57, 'Mestong', 1, 0),
(624, 57, 'Sekernan', 1, 0),
(625, 57, 'Sungai Bahar', 1, 0),
(626, 57, 'Sungai Gelam', 1, 0),
(627, 58, 'Air Hitam', 1, 0),
(628, 58, 'Batang Asai', 1, 0),
(629, 58, 'Bathin VIII (Batin VIII)', 1, 0),
(630, 58, 'Cermin Nan Gadang', 1, 0),
(631, 58, 'Limun', 1, 0),
(632, 58, 'Mandiangin', 1, 0),
(633, 58, 'Pauh', 1, 0),
(634, 58, 'Pelawan', 1, 0),
(635, 58, 'Sarolangun', 1, 0),
(636, 58, 'Singkut', 1, 0),
(637, 59, 'Hamparan Rawang', 1, 0),
(638, 59, 'Kumun Debai', 1, 0),
(639, 59, 'Pesisir Bukit', 1, 0),
(640, 59, 'Sungai Penuh', 1, 0),
(641, 59, 'Tanah Kampung', 1, 0),
(642, 60, 'Batang Asam', 1, 0),
(643, 60, 'Betara', 1, 0),
(644, 60, 'Bram Itam', 1, 0),
(645, 60, 'Kuala Betara', 1, 0),
(646, 60, 'Merlung', 1, 0),
(647, 60, 'Muara Papalik', 1, 0),
(648, 60, 'Pengabuan', 1, 0),
(649, 60, 'Renah Mendaluh', 1, 0),
(650, 60, 'Seberang Kota', 1, 0),
(651, 60, 'Senyerang', 1, 0),
(652, 60, 'Tebing Tinggi', 1, 0),
(653, 60, 'Tungkal Ilir', 1, 0),
(654, 60, 'Tungkal Ulu', 1, 0),
(655, 61, 'Berbak', 1, 0),
(656, 61, 'Dendang', 1, 0),
(657, 61, 'Geragai', 1, 0),
(658, 61, 'Kuala Jambi', 1, 0),
(659, 61, 'Mendahara', 1, 0),
(660, 61, 'Mendahara Ulu', 1, 0),
(661, 61, 'Muara Sabak Barat', 1, 0),
(662, 61, 'Muara Sabak Timur', 1, 0),
(663, 61, 'Nipah Panjang', 1, 0),
(664, 61, 'Rantau Rasau', 1, 0),
(665, 61, 'Sadu', 1, 0),
(666, 62, 'Muara Tabir', 1, 0),
(667, 62, 'Rimbo Bujang', 1, 0),
(668, 62, 'Rimbo Ilir', 1, 0),
(669, 62, 'Rimbo Ulu', 1, 0),
(670, 62, 'Serai Serumpun', 1, 0),
(671, 62, 'Sumay', 1, 0),
(672, 62, 'Tebo Ilir', 1, 0),
(673, 62, 'Tebo Tengah', 1, 0),
(674, 62, 'Tebo Ulu', 1, 0),
(675, 62, 'Tengah Ilir', 1, 0),
(676, 62, 'VII Koto', 1, 0),
(677, 62, 'VII Koto Ilir', 1, 0),
(678, 64, 'Andir', 1, 0),
(679, 64, 'Antapani (Cicadas)', 1, 0),
(680, 64, 'Arcamanik', 1, 0),
(681, 64, 'Astana Anyar', 1, 0),
(682, 64, 'Babakan Ciparay', 1, 0),
(683, 64, 'Bandung Kidul', 1, 0),
(684, 64, 'Bandung Kulon', 1, 0),
(685, 64, 'Bandung Wetan', 1, 0),
(686, 64, 'Batununggal', 1, 0),
(687, 64, 'Bojongloa Kaler', 1, 0),
(688, 64, 'Bojongloa Kidul', 1, 0),
(689, 64, 'Buahbatu (Margacinta)', 1, 0),
(690, 64, 'Cibeunying Kaler', 1, 0),
(691, 64, 'Cibeunying Kidul', 1, 0),
(692, 64, 'Cibiru', 1, 0),
(693, 64, 'Cicendo', 1, 0),
(694, 64, 'Cidadap', 1, 0),
(695, 64, 'Cinambo', 1, 0),
(696, 64, 'Coblong', 1, 0),
(697, 64, 'Gedebage', 1, 0),
(698, 64, 'Kiaracondong', 1, 0),
(699, 64, 'Lengkong', 1, 0),
(700, 64, 'Mandalajati', 1, 0),
(701, 64, 'Panyileukan', 1, 0),
(702, 64, 'Rancasari', 1, 0),
(703, 64, 'Regol', 1, 0),
(704, 64, 'Sukajadi', 1, 0),
(705, 64, 'Sukasari', 1, 0),
(706, 64, 'Sumur Bandung', 1, 0),
(707, 64, 'Ujung Berung', 1, 0),
(708, 63, 'Arjasari', 1, 0),
(709, 63, 'Baleendah', 1, 0),
(710, 63, 'Banjaran', 1, 0),
(711, 63, 'Bojongsoang', 1, 0),
(712, 63, 'Cangkuang', 1, 0),
(713, 63, 'Cicalengka', 1, 0),
(714, 63, 'Cikancung', 1, 0),
(715, 63, 'Cilengkrang', 1, 0),
(716, 63, 'Cileunyi', 1, 0),
(717, 63, 'Cimaung', 1, 0),
(718, 63, 'Cimeunyan', 1, 0),
(719, 63, 'Ciparay', 1, 0),
(720, 63, 'Ciwidey', 1, 0),
(721, 63, 'Dayeuhkolot', 1, 0),
(722, 63, 'Ibun', 1, 0),
(723, 63, 'Katapang', 1, 0),
(724, 63, 'Kertasari', 1, 0),
(725, 63, 'Kutawaringin', 1, 0),
(726, 63, 'Majalaya', 1, 0),
(727, 63, 'Margaasih', 1, 0),
(728, 63, 'Margahayu', 1, 0),
(729, 63, 'Nagreg', 1, 0),
(730, 63, 'Pacet', 1, 0),
(731, 63, 'Pameungpeuk', 1, 0),
(732, 63, 'Pangalengan', 1, 0),
(733, 63, 'Paseh', 1, 0),
(734, 63, 'Pasirjambu', 1, 0),
(735, 63, 'Ranca Bali', 1, 0),
(736, 63, 'Rancaekek', 1, 0),
(737, 63, 'Solokan Jeruk', 1, 0),
(738, 63, 'Soreang', 1, 0),
(739, 65, 'Batujajar', 1, 0),
(740, 65, 'Cihampelas', 1, 0),
(741, 65, 'Cikalong Wetan', 1, 0),
(742, 65, 'Cililin', 1, 0),
(743, 65, 'Cipatat', 1, 0),
(744, 65, 'Cipeundeuy', 1, 0),
(745, 65, 'Cipongkor', 1, 0),
(746, 65, 'Cisarua', 1, 0),
(747, 65, 'Gununghalu', 1, 0),
(748, 65, 'Lembang', 1, 0),
(749, 65, 'Ngamprah', 1, 0),
(750, 65, 'Padalarang', 1, 0),
(751, 65, 'Parongpong', 1, 0),
(752, 65, 'Rongga', 1, 0),
(753, 65, 'Sindangkerta', 1, 0),
(754, 66, 'Banjar', 1, 0),
(755, 66, 'Langensari', 1, 0),
(756, 66, 'Pataruman', 1, 0),
(757, 66, 'Purwaharja', 1, 0),
(758, 68, 'Bantar Gebang', 1, 0),
(759, 68, 'Bekasi Barat', 1, 0),
(760, 68, 'Bekasi Selatan', 1, 0),
(761, 68, 'Bekasi Timur', 1, 0),
(762, 68, 'Bekasi Utara', 1, 0),
(763, 68, 'Jati Sampurna', 1, 0),
(764, 68, 'Jatiasih', 1, 0),
(765, 68, 'Medan Satria', 1, 0),
(766, 68, 'Mustika Jaya', 1, 0),
(767, 68, 'Pondok Gede', 1, 0),
(768, 68, 'Pondok Melati', 1, 0),
(769, 68, 'Rawalumbu', 1, 0),
(770, 67, 'Babelan', 1, 0),
(771, 67, 'Bojongmangu', 1, 0),
(772, 67, 'Cabangbungin', 1, 0),
(773, 67, 'Cibarusah', 1, 0),
(774, 67, 'Cibitung', 1, 0),
(775, 67, 'Cikarang Barat', 1, 0),
(776, 67, 'Cikarang Pusat', 1, 0),
(777, 67, 'Cikarang Selatan', 1, 0),
(778, 67, 'Cikarang Timur', 1, 0),
(779, 67, 'Cikarang Utara', 1, 0),
(780, 67, 'Karangbahagia', 1, 0),
(781, 67, 'Kedung Waringin', 1, 0),
(782, 67, 'Muara Gembong', 1, 0),
(783, 67, 'Pebayuran', 1, 0),
(784, 67, 'Serang Baru', 1, 0),
(785, 67, 'Setu', 1, 0),
(786, 67, 'Sukakarya', 1, 0),
(787, 67, 'Sukatani', 1, 0),
(788, 67, 'Sukawangi', 1, 0),
(789, 67, 'Tambelang', 1, 0),
(790, 67, 'Tambun Selatan', 1, 0),
(791, 67, 'Tambun Utara', 1, 0),
(792, 67, 'Tarumajaya', 1, 0),
(793, 70, 'Bogor Barat', 1, 0),
(794, 70, 'Bogor Selatan', 1, 0),
(795, 70, 'Bogor Tengah', 1, 0),
(796, 70, 'Bogor Timur', 1, 0),
(797, 70, 'Bogor Utara', 1, 0),
(798, 70, 'Tanah Sereal', 1, 0),
(799, 69, 'Babakan Madang', 1, 0),
(800, 69, 'Bojonggede', 1, 0),
(801, 69, 'Caringin', 1, 0),
(802, 69, 'Cariu', 1, 0),
(803, 69, 'Ciampea', 1, 0),
(804, 69, 'Ciawi', 1, 0),
(805, 69, 'Cibinong', 1, 0),
(806, 69, 'Cibungbulang', 1, 0),
(807, 69, 'Cigombong', 1, 0),
(808, 69, 'Cigudeg', 1, 0),
(809, 69, 'Cijeruk', 1, 0),
(810, 69, 'Cileungsi', 1, 0),
(811, 69, 'Ciomas', 1, 0),
(812, 69, 'Cisarua', 1, 0),
(813, 69, 'Ciseeng', 1, 0),
(814, 69, 'Citeureup', 1, 0),
(815, 69, 'Dramaga', 1, 0),
(816, 69, 'Gunung Putri', 1, 0),
(817, 69, 'Gunung Sindur', 1, 0),
(818, 69, 'Babakan Madang', 1, 0),
(819, 69, 'Bojonggede', 1, 0),
(820, 69, 'Caringin', 1, 0),
(821, 69, 'Cariu', 1, 0),
(822, 69, 'Ciampea', 1, 0),
(823, 69, 'Ciawi', 1, 0),
(824, 69, 'Cibinong', 1, 0),
(825, 69, 'Cibungbulang', 1, 0),
(826, 69, 'Cigombong', 1, 0),
(827, 69, 'Cigudeg', 1, 0),
(828, 69, 'Cijeruk', 1, 0),
(829, 69, 'Cileungsi', 1, 0),
(830, 69, 'Ciomas', 1, 0),
(831, 69, 'Cisarua', 1, 0),
(832, 69, 'Ciseeng', 1, 0),
(833, 69, 'Citeureup', 1, 0),
(834, 69, 'Dramaga', 1, 0),
(835, 69, 'Gunung Putri', 1, 0),
(836, 69, 'Gunung Sindur', 1, 0),
(837, 69, 'Jasinga', 1, 0),
(838, 69, 'Jonggol', 1, 0),
(839, 69, 'Kemang', 1, 0),
(840, 69, 'Klapa Nunggal (Kelapa Nunggal)', 1, 0),
(841, 69, 'Leuwiliang', 1, 0),
(842, 69, 'Leuwisadeng', 1, 0),
(843, 69, 'Megamendung', 1, 0),
(844, 69, 'Nanggung', 1, 0),
(845, 69, 'Pamijahan', 1, 0),
(846, 69, 'Parung', 1, 0),
(847, 69, 'Parung Panjang', 1, 0),
(848, 69, 'Ranca Bungur', 1, 0),
(849, 69, 'Rumpin', 1, 0),
(850, 69, 'Sukajaya', 1, 0),
(851, 69, 'Sukamakmur', 1, 0),
(852, 69, 'Sukaraja', 1, 0),
(853, 69, 'Tajurhalang', 1, 0),
(854, 69, 'Tamansari', 1, 0),
(855, 69, 'Tanjungsari', 1, 0),
(856, 69, 'Tenjo', 1, 0),
(857, 69, 'Tenjolaya', 1, 0),
(858, 71, 'Banjarsari', 1, 0),
(859, 71, 'Baregbeg', 1, 0),
(860, 71, 'Ciamis', 1, 0),
(861, 71, 'Cidolog', 1, 0),
(862, 71, 'Cihaurbeuti', 1, 0),
(863, 71, 'Cijeungjing', 1, 0),
(864, 71, 'Cikoneng', 1, 0),
(865, 71, 'Cimaragas', 1, 0),
(866, 71, 'Cipaku', 1, 0),
(867, 71, 'Cisaga', 1, 0),
(868, 71, 'Jatinagara', 1, 0),
(869, 71, 'Kawali', 1, 0),
(870, 71, 'Lakbok', 1, 0),
(871, 71, 'Lumbung', 1, 0),
(872, 71, 'Pamarican', 1, 0),
(873, 71, 'Panawangan', 1, 0),
(874, 71, 'Panjalu', 1, 0),
(875, 71, 'Panjalu Utara', 1, 0),
(876, 71, 'Panumbangan', 1, 0),
(877, 71, 'Purwadadi', 1, 0),
(878, 71, 'Rajadesa', 1, 0),
(879, 71, 'Rancah', 1, 0),
(880, 71, 'Sadananya', 1, 0),
(881, 71, 'Sindangkasih', 1, 0),
(882, 71, 'Sukadana', 1, 0),
(883, 71, 'Sukamantri', 1, 0),
(884, 71, 'Tambaksari', 1, 0),
(885, 72, 'Agrabinta', 1, 0),
(886, 72, 'Bojongpicung', 1, 0),
(887, 72, 'Campaka', 1, 0),
(888, 72, 'Campaka Mulya', 1, 0),
(889, 72, 'Cianjur', 1, 0),
(890, 72, 'Cibeber', 1, 0),
(891, 72, 'Cibinong', 1, 0),
(892, 72, 'Cidaun', 1, 0),
(893, 72, 'Cijati', 1, 0),
(894, 72, 'Cikadu', 1, 0),
(895, 72, 'Cikalongkulon', 1, 0),
(896, 72, 'Cilaku', 1, 0),
(897, 72, 'Cipanas', 1, 0),
(898, 72, 'Ciranjang', 1, 0),
(899, 72, 'Cugenang', 1, 0),
(900, 72, 'Gekbrong', 1, 0),
(901, 72, 'Haurwangi', 1, 0),
(902, 72, 'Kadupandak', 1, 0),
(903, 72, 'Karangtengah', 1, 0),
(904, 72, 'Leles', 1, 0),
(905, 72, 'Mande', 1, 0),
(906, 72, 'Naringgul', 1, 0),
(907, 72, 'Pacet', 1, 0),
(908, 72, 'Pagelaran', 1, 0),
(909, 72, 'Pasirkuda', 1, 0),
(910, 72, 'Sindangbarang', 1, 0),
(911, 72, 'Sukaluyu', 1, 0),
(912, 72, 'Sukanagara', 1, 0),
(913, 72, 'Sukaresmi', 1, 0),
(914, 72, 'Takokak', 1, 0),
(915, 72, 'Tanggeung', 1, 0),
(916, 72, 'Warungkondang', 1, 0),
(917, 73, 'Cimahi Selatan', 1, 0),
(918, 73, 'Cimahi Tengah', 1, 0),
(919, 73, 'Cimahi Utara', 1, 0),
(920, 75, 'Harjamukti', 1, 0),
(921, 75, 'Kejaksan', 1, 0),
(922, 75, 'Kesambi', 1, 0),
(923, 75, 'Lemahwungkuk', 1, 0),
(924, 75, 'Pekalipan', 1, 0),
(925, 74, 'Arjawinangun', 1, 0),
(926, 74, 'Astanajapura', 1, 0),
(927, 74, 'Babakan', 1, 0),
(928, 74, 'Beber', 1, 0),
(929, 74, 'Ciledug', 1, 0),
(930, 74, 'Ciwaringin', 1, 0),
(931, 74, 'Depok', 1, 0),
(932, 74, 'Dukupuntang', 1, 0),
(933, 74, 'Gebang', 1, 0),
(934, 74, 'Gegesik', 1, 0),
(935, 74, 'Gempol', 1, 0),
(936, 74, 'Greged (Greget)', 1, 0),
(937, 74, 'Gunung Jati (Cirebon Utara)', 1, 0),
(938, 74, 'Jamblang', 1, 0),
(939, 74, 'Kaliwedi', 1, 0),
(940, 74, 'Kapetakan', 1, 0),
(941, 74, 'Karangsembung', 1, 0),
(942, 74, 'Karangwareng', 1, 0),
(943, 74, 'Kedawung', 1, 0),
(944, 74, 'Klangenan', 1, 0),
(945, 74, 'Lemahabang', 1, 0),
(946, 74, 'Losari', 1, 0),
(947, 74, 'Mundu', 1, 0),
(948, 74, 'Pabedilan', 1, 0),
(949, 74, 'Pabuaran', 1, 0),
(950, 74, 'Palimanan', 1, 0),
(951, 74, 'Pangenan', 1, 0),
(952, 74, 'Panguragan', 1, 0),
(953, 74, 'Pasaleman', 1, 0),
(954, 74, 'Plered', 1, 0),
(955, 74, 'Plumbon', 1, 0),
(956, 74, 'Sedong', 1, 0),
(957, 74, 'Sumber', 1, 0),
(958, 74, 'Suranenggala', 1, 0),
(959, 74, 'Susukan', 1, 0),
(960, 74, 'Susukan Lebak', 1, 0),
(961, 74, 'Talun (Cirebon Selatan)', 1, 0),
(962, 74, 'Tengah Tani', 1, 0),
(963, 74, 'Waled', 1, 0),
(964, 74, 'Weru', 1, 0),
(965, 76, 'Beji', 1, 0),
(966, 76, 'Cimanggis', 1, 0),
(967, 76, 'Limo', 1, 0),
(968, 76, 'Pancoran Mas', 1, 0),
(969, 76, 'Sawangan', 1, 0),
(970, 76, 'Sukmajaya', 1, 0),
(971, 77, 'Banjarwangi', 1, 0),
(972, 77, 'Banyuresmi', 1, 0),
(973, 77, 'Bayongbong', 1, 0),
(974, 77, 'Blubur Limbangan', 1, 0),
(975, 77, 'Bungbulang', 1, 0),
(976, 77, 'Caringin', 1, 0),
(977, 77, 'Cibalong', 1, 0),
(978, 77, 'Cibatu', 1, 0),
(979, 77, 'Cibiuk', 1, 0),
(980, 77, 'Cigedug', 1, 0),
(981, 77, 'Cihurip', 1, 0),
(982, 77, 'Cikajang', 1, 0),
(983, 77, 'Cikelet', 1, 0),
(984, 77, 'Cilawu', 1, 0),
(985, 77, 'Cisewu', 1, 0),
(986, 77, 'Cisompet', 1, 0),
(987, 77, 'Cisurupan', 1, 0),
(988, 77, 'Garut Kota', 1, 0),
(989, 77, 'Kadungora', 1, 0),
(990, 77, 'Karangpawitan', 1, 0),
(991, 77, 'Karangtengah', 1, 0),
(992, 77, 'Kersamanah', 1, 0),
(993, 77, 'Leles', 1, 0),
(994, 77, 'Leuwigoong', 1, 0),
(995, 77, 'Malangbong', 1, 0),
(996, 77, 'Mekarmukti', 1, 0),
(997, 77, 'Pakenjeng', 1, 0),
(998, 77, 'Pameungpeuk', 1, 0),
(999, 77, 'Pamulihan', 1, 0),
(1000, 77, 'Pangatikan', 1, 0),
(1001, 77, 'Pasirwangi', 1, 0),
(1002, 77, 'Peundeuy', 1, 0),
(1003, 77, 'Samarang', 1, 0),
(1004, 77, 'Selaawi', 1, 0),
(1005, 77, 'Singajaya', 1, 0),
(1006, 77, 'Sucinaraja', 1, 0),
(1007, 77, 'Sukaresmi', 1, 0),
(1008, 77, 'Sukawening', 1, 0),
(1009, 77, 'Talegong', 1, 0),
(1010, 77, 'Tarogong Kaler', 1, 0),
(1011, 77, 'Tarogong Kidul', 1, 0),
(1012, 77, 'Wanaraja', 1, 0),
(1013, 78, 'Anjatan', 1, 0),
(1014, 78, 'Arahan', 1, 0),
(1015, 78, 'Balongan', 1, 0),
(1016, 78, 'Bangodua', 1, 0),
(1017, 78, 'Bongas', 1, 0),
(1018, 78, 'Cantigi', 1, 0),
(1019, 78, 'Cikedung', 1, 0),
(1020, 78, 'Gabuswetan', 1, 0),
(1021, 78, 'Gantar', 1, 0),
(1022, 78, 'Haurgeulis', 1, 0),
(1023, 78, 'Indramayu', 1, 0),
(1024, 78, 'Jatibarang', 1, 0),
(1025, 78, 'Juntinyuat', 1, 0),
(1026, 78, 'Kandanghaur', 1, 0),
(1027, 78, 'Karangampel', 1, 0),
(1028, 78, 'Kedokan Bunder', 1, 0),
(1029, 78, 'Kertasemaya', 1, 0),
(1030, 78, 'Krangkeng', 1, 0),
(1031, 78, 'Kroya', 1, 0),
(1032, 78, 'Lelea', 1, 0),
(1033, 78, 'Lohbener', 1, 0),
(1034, 78, 'Losarang', 1, 0),
(1035, 78, 'Pasekan', 1, 0),
(1036, 78, 'Patrol', 1, 0),
(1037, 78, 'Sindang', 1, 0),
(1038, 78, 'Sliyeg', 1, 0),
(1039, 78, 'Sukagumiwang', 1, 0),
(1040, 78, 'Sukra', 1, 0),
(1041, 78, 'Trisi/Terisi', 1, 0),
(1042, 78, 'Tukdana', 1, 0),
(1043, 78, 'Widasari', 1, 0),
(1044, 79, 'Banyusari', 1, 0),
(1045, 79, 'Batujaya', 1, 0),
(1046, 79, 'Ciampel', 1, 0),
(1047, 79, 'Cibuaya', 1, 0),
(1048, 79, 'Cikampek', 1, 0),
(1049, 79, 'Cilamaya Kulon', 1, 0),
(1050, 79, 'Cilamaya Wetan', 1, 0),
(1051, 79, 'Cilebar', 1, 0),
(1052, 79, 'Jatisari', 1, 0),
(1053, 79, 'Jayakerta', 1, 0),
(1054, 79, 'Karawang Barat', 1, 0),
(1055, 79, 'Karawang Timur', 1, 0),
(1056, 79, 'Klari', 1, 0),
(1057, 79, 'Kotabaru', 1, 0),
(1058, 79, 'Kutawaluya', 1, 0),
(1059, 79, 'Lemahabang', 1, 0),
(1060, 79, 'Majalaya', 1, 0),
(1061, 79, 'Pakisjaya', 1, 0),
(1062, 79, 'Pangkalan', 1, 0),
(1063, 79, 'Pedes', 1, 0),
(1064, 79, 'Purwasari', 1, 0),
(1065, 79, 'Rawamerta', 1, 0),
(1066, 79, 'Rengasdengklok', 1, 0),
(1067, 79, 'Talagasari', 1, 0),
(1068, 79, 'Tegalwaru', 1, 0),
(1069, 79, 'Telukjambe Barat', 1, 0),
(1070, 79, 'Telukjambe Timur', 1, 0),
(1071, 79, 'Tempuran', 1, 0),
(1072, 79, 'Tirtajaya', 1, 0),
(1073, 79, 'Tirtamulya', 1, 0),
(1074, 80, 'Ciawigebang', 1, 0),
(1075, 80, 'Cibeureum', 1, 0),
(1076, 80, 'Cibingbin', 1, 0),
(1077, 80, 'Cidahu', 1, 0),
(1078, 80, 'Cigandamekar', 1, 0),
(1079, 80, 'Cigugur', 1, 0),
(1080, 80, 'Cilebak', 1, 0),
(1081, 80, 'Cilimus', 1, 0),
(1082, 80, 'Cimahi', 1, 0),
(1083, 80, 'Ciniru', 1, 0),
(1084, 80, 'Cipicung', 1, 0),
(1085, 80, 'Ciwaru', 1, 0),
(1086, 80, 'Darma', 1, 0),
(1087, 80, 'Garawangi', 1, 0),
(1088, 80, 'Hantara', 1, 0),
(1089, 80, 'Jalaksana', 1, 0),
(1090, 80, 'Japara', 1, 0),
(1091, 80, 'Kadugede', 1, 0),
(1092, 80, 'Kalimanggis', 1, 0),
(1093, 80, 'Karangkancana', 1, 0),
(1094, 80, 'Kramat Mulya', 1, 0),
(1095, 80, 'Kuningan', 1, 0),
(1096, 80, 'Lebakwangi', 1, 0),
(1097, 80, 'Luragung', 1, 0),
(1098, 80, 'Maleber', 1, 0),
(1099, 80, 'Mandirancan', 1, 0),
(1100, 80, 'Nusaherang', 1, 0),
(1101, 80, 'Pancalang', 1, 0),
(1102, 80, 'Pasawahan', 1, 0),
(1103, 80, 'Selajambe', 1, 0),
(1104, 80, 'Sindangagung', 1, 0),
(1105, 80, 'Subang', 1, 0),
(1106, 81, 'Argapura', 1, 0),
(1107, 81, 'Banjaran', 1, 0),
(1108, 81, 'Bantarujeg', 1, 0),
(1109, 81, 'Cigasong', 1, 0),
(1110, 81, 'Cikijing', 1, 0),
(1111, 81, 'Cingambul', 1, 0),
(1112, 81, 'Dawuan', 1, 0),
(1113, 81, 'Jatitujuh', 1, 0),
(1114, 81, 'Jatiwangi', 1, 0),
(1115, 81, 'Kadipaten', 1, 0),
(1116, 81, 'Kasokandel', 1, 0),
(1117, 81, 'Kertajati', 1, 0),
(1118, 81, 'Lemahsugih', 1, 0),
(1119, 81, 'Leuwimunding', 1, 0),
(1120, 81, 'Ligung', 1, 0),
(1121, 81, 'Maja', 1, 0),
(1122, 81, 'Majalengka', 1, 0),
(1123, 81, 'Malausma', 1, 0),
(1124, 81, 'Palasah', 1, 0),
(1125, 81, 'Panyingkiran', 1, 0),
(1126, 81, 'Rajagaluh', 1, 0),
(1127, 81, 'Sindang', 1, 0),
(1128, 81, 'Sindangwangi', 1, 0),
(1129, 81, 'Sukahaji', 1, 0),
(1130, 81, 'Sumberjaya', 1, 0),
(1131, 81, 'Talaga', 1, 0),
(1132, 82, 'Cigugur', 1, 0),
(1133, 82, 'Cijulang', 1, 0),
(1134, 82, 'Cimerak', 1, 0),
(1135, 82, 'Kalipucang', 1, 0),
(1136, 82, 'Langkaplancar', 1, 0),
(1137, 82, 'Mangunjaya', 1, 0),
(1138, 82, 'Padaherang', 1, 0),
(1139, 82, 'Pangandaran', 1, 0),
(1140, 82, 'Parigi', 1, 0),
(1141, 82, 'Sidamulih', 1, 0),
(1142, 83, 'Babakancikao', 1, 0),
(1143, 83, 'Bojong', 1, 0),
(1144, 83, 'Bungursari', 1, 0),
(1145, 83, 'Campaka', 1, 0),
(1146, 83, 'Cibatu', 1, 0),
(1147, 83, 'Darangdan', 1, 0),
(1148, 83, 'Jatiluhur', 1, 0),
(1149, 83, 'Kiarapedes', 1, 0),
(1150, 83, 'Maniis', 1, 0),
(1151, 83, 'Pasawahan', 1, 0),
(1152, 83, 'Plered', 1, 0),
(1153, 83, 'Pondoksalam', 1, 0),
(1154, 83, 'Purwakarta', 1, 0),
(1155, 83, 'Sukasari', 1, 0),
(1156, 83, 'Sukatani', 1, 0),
(1157, 83, 'Tegal Waru', 1, 0),
(1158, 83, 'Wanayasa', 1, 0),
(1159, 84, 'Binong', 1, 0),
(1160, 84, 'Blanakan', 1, 0),
(1161, 84, 'Ciasem', 1, 0),
(1162, 84, 'Ciater', 1, 0),
(1163, 84, 'Cibogo', 1, 0),
(1164, 84, 'Cijambe', 1, 0),
(1165, 84, 'Cikaum', 1, 0),
(1166, 84, 'Cipeundeuy', 1, 0),
(1167, 84, 'Cipunagara', 1, 0),
(1168, 84, 'Cisalak', 1, 0),
(1169, 84, 'Compreng', 1, 0),
(1170, 84, 'Dawuan', 1, 0),
(1171, 84, 'Jalancagak', 1, 0),
(1172, 84, 'Kalijati', 1, 0),
(1173, 84, 'Kasomalang', 1, 0),
(1174, 84, 'Legonkulon', 1, 0),
(1175, 84, 'Pabuaran', 1, 0),
(1176, 84, 'Pagaden', 1, 0),
(1177, 84, 'Pagaden Barat', 1, 0),
(1178, 84, 'Pamanukan', 1, 0),
(1179, 84, 'Patokbeusi', 1, 0),
(1180, 84, 'Purwadadi', 1, 0),
(1181, 84, 'Pusakajaya', 1, 0),
(1182, 84, 'Pusakanagara', 1, 0),
(1183, 84, 'Sagalaherang', 1, 0),
(1184, 84, 'Serangpanjang', 1, 0),
(1185, 84, 'Subang', 1, 0),
(1186, 84, 'Sukasari', 1, 0),
(1187, 84, 'Tambakdahan', 1, 0),
(1188, 84, 'Tanjungsiang', 1, 0),
(1189, 86, 'Baros', 1, 0),
(1190, 86, 'Cibeureum', 1, 0),
(1191, 86, 'Cikole', 1, 0),
(1192, 86, 'Citamiang', 1, 0),
(1193, 86, 'Gunung Puyuh', 1, 0),
(1194, 86, 'Lembursitu', 1, 0),
(1195, 86, 'Warudoyong', 1, 0),
(1196, 85, 'Bantargadung', 1, 0),
(1197, 85, 'Bojong Genteng', 1, 0),
(1198, 85, 'Caringin', 1, 0),
(1199, 85, 'Ciambar', 1, 0),
(1200, 85, 'Cibadak', 1, 0),
(1201, 85, 'Cibitung', 1, 0),
(1202, 85, 'Cicantayan', 1, 0),
(1203, 85, 'Cicurug', 1, 0),
(1204, 85, 'Cidadap', 1, 0),
(1205, 85, 'Cidahu', 1, 0),
(1206, 85, 'Cidolog', 1, 0),
(1207, 85, 'Ciemas', 1, 0),
(1208, 85, 'Cikakak', 1, 0),
(1209, 85, 'Cikembar', 1, 0),
(1210, 85, 'Cikidang', 1, 0),
(1211, 85, 'Cimanggu', 1, 0),
(1212, 85, 'Ciracap', 1, 0),
(1213, 85, 'Cireunghas', 1, 0),
(1214, 85, 'Cisaat', 1, 0),
(1215, 85, 'Cisolok', 1, 0),
(1216, 85, 'Curugkembar', 1, 0),
(1217, 85, 'Geger Bitung', 1, 0),
(1218, 85, 'Gunung Guruh', 1, 0),
(1219, 85, 'Jampang Kulon', 1, 0),
(1220, 85, 'Jampang Tengah', 1, 0),
(1221, 85, 'Kabandungan', 1, 0),
(1222, 85, 'Kadudampit', 1, 0),
(1223, 85, 'Kalapa Nunggal', 1, 0),
(1224, 85, 'Kali Bunder', 1, 0),
(1225, 85, 'Kebonpedes', 1, 0),
(1226, 85, 'Lengkong', 1, 0),
(1227, 85, 'Nagrak', 1, 0),
(1228, 85, 'Nyalindung', 1, 0),
(1229, 85, 'Pabuaran', 1, 0),
(1230, 85, 'Parakan Salak', 1, 0),
(1231, 85, 'Parung Kuda', 1, 0),
(1232, 85, 'Pelabuhan/Palabuhan Ratu', 1, 0),
(1233, 85, 'Purabaya', 1, 0),
(1234, 85, 'Sagaranten', 1, 0),
(1235, 85, 'Simpenan', 1, 0),
(1236, 85, 'Sukabumi', 1, 0),
(1237, 85, 'Sukalarang', 1, 0),
(1238, 85, 'Sukaraja', 1, 0),
(1239, 85, 'Surade', 1, 0),
(1240, 85, 'Tegal Buleud', 1, 0),
(1241, 85, 'Waluran', 1, 0),
(1242, 85, 'Warung Kiara', 1, 0),
(1243, 87, 'Buahdua', 1, 0),
(1244, 87, 'Cibugel', 1, 0),
(1245, 87, 'Cimalaka', 1, 0),
(1246, 87, 'Cimanggung', 1, 0),
(1247, 87, 'Cisarua', 1, 0),
(1248, 87, 'Cisitu', 1, 0),
(1249, 87, 'Conggeang', 1, 0),
(1250, 87, 'Darmaraja', 1, 0),
(1251, 87, 'Ganeas', 1, 0),
(1252, 87, 'Jatigede', 1, 0),
(1253, 87, 'Jatinangor', 1, 0),
(1254, 87, 'Jatinunggal', 1, 0),
(1255, 87, 'Pamulihan', 1, 0),
(1256, 87, 'Paseh', 1, 0),
(1257, 87, 'Rancakalong', 1, 0),
(1258, 87, 'Situraja', 1, 0),
(1259, 87, 'Sukasari', 1, 0),
(1260, 87, 'Sumedang Selatan', 1, 0),
(1261, 87, 'Sumedang Utara', 1, 0),
(1262, 87, 'Surian', 1, 0),
(1263, 87, 'Tanjungkerta', 1, 0),
(1264, 87, 'Tanjungmedar', 1, 0),
(1265, 87, 'Tanjungsari', 1, 0),
(1266, 87, 'Tomo', 1, 0),
(1267, 87, 'Ujungjaya', 1, 0),
(1268, 87, 'Wado', 1, 0),
(1269, 89, 'Bungursari', 1, 0),
(1270, 89, 'Cibeureum', 1, 0),
(1271, 89, 'Cihideung', 1, 0),
(1272, 89, 'Cipedes', 1, 0),
(1273, 89, 'Indihiang', 1, 0),
(1274, 89, 'Kawalu', 1, 0),
(1275, 89, 'Mangkubumi', 1, 0),
(1276, 89, 'Purbaratu', 1, 0),
(1277, 89, 'Tamansari', 1, 0),
(1278, 89, 'Tawang', 1, 0),
(1279, 88, 'Bantarkalong', 1, 0),
(1280, 88, 'Bojongasih', 1, 0),
(1281, 88, 'Bojonggambir', 1, 0),
(1282, 88, 'Ciawi', 1, 0),
(1283, 88, 'Cibalong', 1, 0),
(1284, 88, 'Cigalontang', 1, 0),
(1285, 88, 'Cikalong', 1, 0),
(1286, 88, 'Cikatomas', 1, 0),
(1287, 88, 'Cineam', 1, 0),
(1288, 88, 'Cipatujah', 1, 0),
(1289, 88, 'Cisayong', 1, 0),
(1290, 88, 'Culamega', 1, 0),
(1291, 88, 'Gunung Tanjung', 1, 0),
(1292, 88, 'Jamanis', 1, 0),
(1293, 88, 'Jatiwaras', 1, 0),
(1294, 88, 'Kadipaten', 1, 0),
(1295, 88, 'Karang Jaya', 1, 0),
(1296, 88, 'Karangnunggal', 1, 0),
(1297, 88, 'Leuwisari', 1, 0),
(1298, 88, 'Mangunreja', 1, 0),
(1299, 88, 'Manonjaya', 1, 0),
(1300, 88, 'Padakembang', 1, 0),
(1301, 88, 'Pagerageung', 1, 0),
(1302, 88, 'Pancatengah', 1, 0),
(1303, 88, 'Parungponteng', 1, 0),
(1304, 88, 'Puspahiang', 1, 0),
(1305, 88, 'Rajapolah', 1, 0),
(1306, 88, 'Salawu', 1, 0),
(1307, 88, 'Salopa', 1, 0),
(1308, 88, 'Sariwangi', 1, 0),
(1309, 88, 'Singaparna', 1, 0),
(1310, 88, 'Sodonghilir', 1, 0),
(1311, 88, 'Sukahening', 1, 0),
(1312, 88, 'Sukaraja', 1, 0),
(1313, 88, 'Sukarame', 1, 0),
(1314, 88, 'Sukaratu', 1, 0),
(1315, 88, 'Sukaresik', 1, 0),
(1316, 88, 'Tanjungjaya', 1, 0),
(1317, 88, 'Taraju', 1, 0),
(1318, 90, 'Banjarmangu', 1, 0),
(1319, 90, 'Banjarnegara', 1, 0),
(1320, 90, 'Batur', 1, 0),
(1321, 90, 'Bawang', 1, 0),
(1322, 90, 'Kalibening', 1, 0),
(1323, 90, 'Karangkobar', 1, 0),
(1324, 90, 'Madukara', 1, 0),
(1325, 90, 'Mandiraja', 1, 0),
(1326, 90, 'Pagedongan', 1, 0),
(1327, 90, 'Pagentan', 1, 0),
(1328, 90, 'Pandanarum', 1, 0),
(1329, 90, 'Pejawaran', 1, 0),
(1330, 90, 'Punggelan', 1, 0),
(1331, 90, 'Purwonegoro', 1, 0),
(1332, 90, 'Purworejo Klampok', 1, 0),
(1333, 90, 'Rakit', 1, 0),
(1334, 90, 'Sigaluh', 1, 0),
(1335, 90, 'Susukan', 1, 0),
(1336, 90, 'Wanadadi (Wonodadi)', 1, 0),
(1337, 90, 'Wanayasa', 1, 0),
(1338, 91, 'Ajibarang', 1, 0),
(1339, 91, 'Banyumas', 1, 0),
(1340, 91, 'Baturaden', 1, 0),
(1341, 91, 'Cilongok', 1, 0),
(1342, 91, 'Gumelar', 1, 0),
(1343, 91, 'Jatilawang', 1, 0),
(1344, 91, 'Kalibagor', 1, 0),
(1345, 91, 'Karanglewas', 1, 0),
(1346, 91, 'Kebasen', 1, 0),
(1347, 91, 'Kedung Banteng', 1, 0),
(1348, 91, 'Kembaran', 1, 0),
(1349, 91, 'Kemranjen', 1, 0),
(1350, 91, 'Lumbir', 1, 0),
(1351, 91, 'Patikraja', 1, 0),
(1352, 91, 'Pekuncen', 1, 0),
(1353, 91, 'Purwojati', 1, 0),
(1354, 91, 'Purwokerto Barat', 1, 0),
(1355, 91, 'Purwokerto Selatan', 1, 0),
(1356, 91, 'Purwokerto Timur', 1, 0),
(1357, 91, 'Purwokerto Utara', 1, 0),
(1358, 91, 'Rawalo', 1, 0),
(1359, 91, 'Sokaraja', 1, 0),
(1360, 91, 'Somagede', 1, 0),
(1361, 91, 'Sumbang', 1, 0),
(1362, 91, 'Sumpiuh', 1, 0),
(1363, 91, 'Tambak', 1, 0),
(1364, 91, 'Wangon', 1, 0),
(1365, 92, 'Bandar', 1, 0),
(1366, 92, 'Banyuputih', 1, 0),
(1367, 92, 'Batang', 1, 0),
(1368, 92, 'Bawang', 1, 0),
(1369, 92, 'Blado', 1, 0),
(1370, 92, 'Gringsing', 1, 0),
(1371, 92, 'Kandeman', 1, 0),
(1372, 92, 'Limpung', 1, 0),
(1373, 92, 'Pecalungan', 1, 0),
(1374, 92, 'Reban', 1, 0),
(1375, 92, 'Subah', 1, 0),
(1376, 92, 'Tersono', 1, 0),
(1377, 92, 'Tulis', 1, 0),
(1378, 92, 'Warungasem', 1, 0),
(1379, 92, 'Wonotunggal', 1, 0),
(1380, 93, 'Banjarejo', 1, 0),
(1381, 93, 'Blora kota', 1, 0),
(1382, 93, 'Bogorejo', 1, 0),
(1383, 93, 'Cepu', 1, 0),
(1384, 93, 'Japah', 1, 0),
(1385, 93, 'Jati', 1, 0),
(1386, 93, 'Jepon', 1, 0),
(1387, 93, 'Jiken', 1, 0),
(1388, 93, 'Kedungtuban', 1, 0),
(1389, 93, 'Kradenan', 1, 0),
(1390, 93, 'Kunduran', 1, 0),
(1391, 93, 'Ngawen', 1, 0),
(1392, 93, 'Randublatung', 1, 0),
(1393, 93, 'Sambong', 1, 0),
(1394, 93, 'Todanan', 1, 0),
(1395, 93, 'Tunjungan', 1, 0),
(1396, 94, 'Ampel', 1, 0),
(1397, 94, 'Andong', 1, 0),
(1398, 94, 'Banyudono', 1, 0),
(1399, 94, 'Boyolali', 1, 0),
(1400, 94, 'Cepogo', 1, 0),
(1401, 94, 'Juwangi', 1, 0),
(1402, 94, 'Karanggede', 1, 0),
(1403, 94, 'Kemusu', 1, 0),
(1404, 94, 'Klego', 1, 0),
(1405, 94, 'Mojosongo', 1, 0),
(1406, 94, 'Musuk', 1, 0),
(1407, 94, 'Ngemplak', 1, 0),
(1408, 94, 'Nogosari', 1, 0),
(1409, 94, 'Sambi', 1, 0),
(1410, 94, 'Sawit', 1, 0),
(1411, 94, 'Selo', 1, 0),
(1412, 94, 'Simo', 1, 0),
(1413, 94, 'Teras', 1, 0),
(1414, 94, 'Wonosegoro', 1, 0),
(1415, 95, 'Banjarharjo', 1, 0),
(1416, 95, 'Bantarkawung', 1, 0),
(1417, 95, 'Brebes', 1, 0),
(1418, 95, 'Bulakamba', 1, 0),
(1419, 95, 'Bumiayu', 1, 0),
(1420, 95, 'Jatibarang', 1, 0),
(1421, 95, 'Kersana', 1, 0),
(1422, 95, 'Ketanggungan', 1, 0),
(1423, 95, 'Larangan', 1, 0),
(1424, 95, 'Losari', 1, 0),
(1425, 95, 'Paguyangan', 1, 0),
(1426, 95, 'Salem', 1, 0),
(1427, 95, 'Sirampog', 1, 0),
(1428, 95, 'Songgom', 1, 0),
(1429, 95, 'Tanjung', 1, 0),
(1430, 95, 'Tonjong', 1, 0),
(1431, 95, 'Wanasari', 1, 0),
(1432, 96, 'Adipala', 1, 0),
(1433, 96, 'Bantarsari', 1, 0),
(1434, 96, 'Binangun', 1, 0),
(1435, 96, 'Cilacap Selatan', 1, 0),
(1436, 96, 'Cilacap Tengah', 1, 0),
(1437, 96, 'Cilacap Utara', 1, 0),
(1438, 96, 'Cimanggu', 1, 0),
(1439, 96, 'Cipari', 1, 0),
(1440, 96, 'Dayeuhluhur', 1, 0),
(1441, 96, 'Gandrungmangu', 1, 0),
(1442, 96, 'Jeruklegi', 1, 0),
(1443, 96, 'Kampung Laut', 1, 0),
(1444, 96, 'Karangpucung', 1, 0),
(1445, 96, 'Kawunganten', 1, 0),
(1446, 96, 'Kedungreja', 1, 0),
(1447, 96, 'Kesugihan', 1, 0),
(1448, 96, 'Kroya', 1, 0),
(1449, 96, 'Majenang', 1, 0),
(1450, 96, 'Maos', 1, 0),
(1451, 96, 'Nusawungu', 1, 0),
(1452, 96, 'Patimuan', 1, 0),
(1453, 96, 'Sampang', 1, 0),
(1454, 96, 'Sidareja', 1, 0),
(1455, 96, 'Wanareja', 1, 0),
(1456, 97, 'Bonang', 1, 0),
(1457, 97, 'Demak', 1, 0),
(1458, 97, 'Dempet', 1, 0),
(1459, 97, 'Gajah', 1, 0),
(1460, 97, 'Guntur', 1, 0),
(1461, 97, 'Karang Tengah', 1, 0),
(1462, 97, 'Karanganyar', 1, 0),
(1463, 97, 'Karangawen', 1, 0),
(1464, 97, 'Kebonagung', 1, 0),
(1465, 97, 'Mijen', 1, 0),
(1466, 97, 'Mranggen', 1, 0),
(1467, 97, 'Sayung', 1, 0),
(1468, 97, 'Wedung', 1, 0),
(1469, 97, 'Wonosalam', 1, 0),
(1470, 98, 'Brati', 1, 0),
(1471, 98, 'Gabus', 1, 0),
(1472, 98, 'Geyer', 1, 0),
(1473, 98, 'Godong', 1, 0),
(1474, 98, 'Grobogan', 1, 0),
(1475, 98, 'Gubug', 1, 0),
(1476, 98, 'Karangrayung', 1, 0),
(1477, 98, 'Kedungjati', 1, 0),
(1478, 98, 'Klambu', 1, 0),
(1479, 98, 'Kradenan', 1, 0),
(1480, 98, 'Ngaringan', 1, 0),
(1481, 98, 'Penawangan', 1, 0),
(1482, 98, 'Pulokulon', 1, 0),
(1483, 98, 'Purwodadi', 1, 0),
(1484, 98, 'Tanggungharjo', 1, 0),
(1485, 98, 'Tawangharjo', 1, 0),
(1486, 98, 'Tegowanu', 1, 0),
(1487, 98, 'Toroh', 1, 0),
(1488, 98, 'Wirosari', 1, 0),
(1489, 99, 'Bangsri', 1, 0),
(1490, 99, 'Batealit', 1, 0),
(1491, 99, 'Donorojo', 1, 0),
(1492, 99, 'Jepara', 1, 0),
(1493, 99, 'Kalinyamatan', 1, 0),
(1494, 99, 'Karimunjawa', 1, 0),
(1495, 99, 'Kedung', 1, 0),
(1496, 99, 'Keling', 1, 0),
(1497, 99, 'Kembang', 1, 0),
(1498, 99, 'Mayong', 1, 0),
(1499, 99, 'Mlonggo', 1, 0),
(1500, 99, 'Nalumsari', 1, 0),
(1501, 99, 'Pakis Aji', 1, 0),
(1502, 99, 'Pecangaan', 1, 0),
(1503, 99, 'Tahunan', 1, 0),
(1504, 99, 'Welahan', 1, 0),
(1505, 100, 'Colomadu', 1, 0),
(1506, 100, 'Gondangrejo', 1, 0),
(1507, 100, 'Jaten', 1, 0),
(1508, 100, 'Jatipuro', 1, 0),
(1509, 100, 'Jatiyoso', 1, 0),
(1510, 100, 'Jenawi', 1, 0),
(1511, 100, 'Jumantono', 1, 0),
(1512, 100, 'Jumapolo', 1, 0),
(1513, 100, 'Karanganyar', 1, 0),
(1514, 100, 'Karangpandan', 1, 0),
(1515, 100, 'Kebakkramat', 1, 0),
(1516, 100, 'Kerjo', 1, 0),
(1517, 100, 'Matesih', 1, 0),
(1518, 100, 'Mojogedang', 1, 0),
(1519, 100, 'Ngargoyoso', 1, 0),
(1520, 100, 'Tasikmadu', 1, 0),
(1521, 100, 'Tawangmangu', 1, 0),
(1522, 102, 'Boja', 1, 0),
(1523, 102, 'Brangsong', 1, 0),
(1524, 102, 'Cepiring', 1, 0),
(1525, 102, 'Gemuh', 1, 0),
(1526, 102, 'Kaliwungu', 1, 0),
(1527, 102, 'Kaliwungu Selatan', 1, 0),
(1528, 102, 'Kangkung', 1, 0),
(1529, 102, 'Kendal', 1, 0),
(1530, 102, 'Limbangan', 1, 0),
(1531, 102, 'Ngampel', 1, 0),
(1532, 102, 'Pagerruyung', 1, 0),
(1533, 102, 'Patean', 1, 0),
(1534, 102, 'Patebon', 1, 0),
(1535, 102, 'Pegandon', 1, 0),
(1536, 102, 'Plantungan', 1, 0),
(1537, 102, 'Ringinarum', 1, 0),
(1538, 102, 'Rowosari', 1, 0),
(1539, 102, 'Singorojo', 1, 0),
(1540, 102, 'Sukorejo', 1, 0),
(1541, 102, 'Weleri', 1, 0),
(1542, 103, 'Bayat', 1, 0),
(1543, 103, 'Cawas', 1, 0),
(1544, 103, 'Ceper', 1, 0),
(1545, 103, 'Delanggu', 1, 0),
(1546, 103, 'Gantiwarno', 1, 0),
(1547, 103, 'Jatinom', 1, 0),
(1548, 103, 'Jogonalan', 1, 0),
(1549, 103, 'Juwiring', 1, 0),
(1550, 103, 'Kalikotes', 1, 0),
(1551, 103, 'Karanganom', 1, 0),
(1552, 103, 'Karangdowo', 1, 0),
(1553, 103, 'Karangnongko', 1, 0),
(1554, 103, 'Kebonarum', 1, 0),
(1555, 103, 'Kemalang', 1, 0),
(1556, 103, 'Klaten Selatan', 1, 0),
(1557, 103, 'Klaten Tengah', 1, 0),
(1558, 103, 'Klaten Utara', 1, 0),
(1559, 103, 'Manisrenggo', 1, 0),
(1560, 103, 'Ngawen', 1, 0),
(1561, 103, 'Pedan', 1, 0),
(1562, 103, 'Polanharjo', 1, 0),
(1563, 103, 'Prambanan', 1, 0),
(1564, 103, 'Trucuk', 1, 0),
(1565, 103, 'Tulung', 1, 0),
(1566, 103, 'Wedi', 1, 0),
(1567, 103, 'Wonosari', 1, 0),
(1568, 101, 'Adimulyo', 1, 0),
(1569, 101, 'Alian/Aliyan', 1, 0),
(1570, 101, 'Ambal', 1, 0),
(1571, 101, 'Ayah', 1, 0),
(1572, 101, 'Bonorowo', 1, 0),
(1573, 101, 'Buayan', 1, 0),
(1574, 101, 'Buluspesantren', 1, 0),
(1575, 101, 'Gombong', 1, 0),
(1576, 101, 'Karanganyar', 1, 0),
(1577, 101, 'Karanggayam', 1, 0),
(1578, 101, 'Karangsambung', 1, 0),
(1579, 101, 'Kebumen', 1, 0),
(1580, 101, 'Klirong', 1, 0),
(1581, 101, 'Kutowinangun', 1, 0),
(1582, 101, 'Kuwarasan', 1, 0),
(1583, 101, 'Mirit', 1, 0),
(1584, 101, 'Padureso', 1, 0),
(1585, 101, 'Pejagoan', 1, 0),
(1586, 101, 'Petanahan', 1, 0),
(1587, 101, 'Poncowarno', 1, 0),
(1588, 101, 'Prembun', 1, 0),
(1589, 101, 'Puring', 1, 0),
(1590, 101, 'Rowokele', 1, 0),
(1591, 101, 'Sadang', 1, 0),
(1592, 101, 'Sempor', 1, 0),
(1593, 101, 'Sruweng', 1, 0),
(1594, 104, 'Bae', 1, 0),
(1595, 104, 'Dawe', 1, 0),
(1596, 104, 'Gebog', 1, 0),
(1597, 104, 'Jati', 1, 0),
(1598, 104, 'Jekulo', 1, 0),
(1599, 104, 'Kaliwungu', 1, 0),
(1600, 104, 'Kudus Kota', 1, 0),
(1601, 104, 'Mejobo', 1, 0),
(1602, 104, 'Undaan', 1, 0),
(1603, 106, 'Magelang Selatan', 1, 0),
(1604, 106, 'Magelang Tengah', 1, 0),
(1605, 106, 'Magelang Utara', 1, 0),
(1606, 105, 'Bandongan', 1, 0),
(1607, 105, 'Borobudur', 1, 0),
(1608, 105, 'Candimulyo', 1, 0),
(1609, 105, 'Dukun', 1, 0),
(1610, 105, 'Grabag', 1, 0),
(1611, 105, 'Kajoran', 1, 0),
(1612, 105, 'Kaliangkrik', 1, 0),
(1613, 105, 'Mertoyudan', 1, 0),
(1614, 105, 'Mungkid', 1, 0),
(1615, 105, 'Muntilan', 1, 0),
(1616, 105, 'Ngablak', 1, 0),
(1617, 105, 'Ngluwar', 1, 0),
(1618, 105, 'Pakis', 1, 0),
(1619, 105, 'Salam', 1, 0),
(1620, 105, 'Salaman', 1, 0),
(1621, 105, 'Sawangan', 1, 0),
(1622, 105, 'Secang', 1, 0),
(1623, 105, 'Srumbung', 1, 0),
(1624, 105, 'Tegalrejo', 1, 0),
(1625, 105, 'Tempuran', 1, 0),
(1626, 105, 'Windusari', 1, 0),
(1627, 107, 'Batangan', 1, 0),
(1628, 107, 'Cluwak', 1, 0),
(1629, 107, 'Dukuhseti', 1, 0),
(1630, 107, 'Gabus', 1, 0),
(1631, 107, 'Gembong', 1, 0),
(1632, 107, 'Gunungwungkal', 1, 0),
(1633, 107, 'Jaken', 1, 0),
(1634, 107, 'Jakenan', 1, 0),
(1635, 107, 'Juwana', 1, 0),
(1636, 107, 'Kayen', 1, 0),
(1637, 107, 'Margorejo', 1, 0),
(1638, 107, 'Margoyoso', 1, 0),
(1639, 107, 'Pati', 1, 0),
(1640, 107, 'Pucakwangi', 1, 0),
(1641, 107, 'Sukolilo', 1, 0),
(1642, 107, 'Tambakromo', 1, 0),
(1643, 107, 'Tayu', 1, 0),
(1644, 107, 'Tlogowungu', 1, 0),
(1645, 107, 'Trangkil', 1, 0),
(1646, 107, 'Wedarijaksa', 1, 0),
(1647, 107, 'Winong', 1, 0),
(1648, 109, 'Pekalongan Barat', 1, 0),
(1649, 109, 'Pekalongan Selatan', 1, 0),
(1650, 109, 'Pekalongan Timur', 1, 0),
(1651, 109, 'Pekalongan Utara', 1, 0),
(1652, 108, 'Bojong', 1, 0),
(1653, 108, 'Buaran', 1, 0),
(1654, 108, 'Doro', 1, 0),
(1655, 108, 'Kajen', 1, 0),
(1656, 108, 'Kandangserang', 1, 0),
(1657, 108, 'Karanganyar', 1, 0),
(1658, 108, 'Karangdadap', 1, 0),
(1659, 108, 'Kedungwuni', 1, 0),
(1660, 108, 'Kesesi', 1, 0),
(1661, 108, 'Lebakbarang', 1, 0),
(1662, 108, 'Paninggaran', 1, 0),
(1663, 108, 'Petungkriono/Petungkriyono', 1, 0),
(1664, 108, 'Siwalan', 1, 0),
(1665, 108, 'Sragi', 1, 0),
(1666, 108, 'Talun', 1, 0),
(1667, 108, 'Tirto', 1, 0),
(1668, 108, 'Wiradesa', 1, 0),
(1669, 108, 'Wonokerto', 1, 0),
(1670, 108, 'Wonopringgo', 1, 0),
(1671, 110, 'Ampelgading', 1, 0),
(1672, 110, 'Bantarbolang', 1, 0),
(1673, 110, 'Belik', 1, 0),
(1674, 110, 'Bodeh', 1, 0),
(1675, 110, 'Comal', 1, 0),
(1676, 110, 'Moga', 1, 0),
(1677, 110, 'Pemalang', 1, 0),
(1678, 110, 'Petarukan', 1, 0),
(1679, 110, 'Pulosari', 1, 0),
(1680, 110, 'Randudongkal', 1, 0),
(1681, 110, 'Taman', 1, 0),
(1682, 110, 'Ulujami', 1, 0),
(1683, 110, 'Warungpring', 1, 0),
(1684, 110, 'Watukumpul', 1, 0),
(1685, 111, 'Bobotsari', 1, 0),
(1686, 111, 'Bojongsari', 1, 0),
(1687, 111, 'Bukateja', 1, 0),
(1688, 111, 'Kaligondang', 1, 0),
(1689, 111, 'Kalimanah', 1, 0),
(1690, 111, 'Karanganyar', 1, 0),
(1691, 111, 'Karangjambu', 1, 0),
(1692, 111, 'Karangmoncol', 1, 0),
(1693, 111, 'Karangreja', 1, 0),
(1694, 111, 'Kejobong', 1, 0),
(1695, 111, 'Kemangkon', 1, 0),
(1696, 111, 'Kertanegara', 1, 0),
(1697, 111, 'Kutasari', 1, 0),
(1698, 111, 'Mrebet', 1, 0),
(1699, 111, 'Padamara', 1, 0),
(1700, 111, 'Pengadegan', 1, 0),
(1701, 111, 'Purbalingga', 1, 0),
(1702, 111, 'Rembang', 1, 0),
(1703, 112, 'Bagelen', 1, 0),
(1704, 112, 'Banyuurip', 1, 0),
(1705, 112, 'Bayan', 1, 0),
(1706, 112, 'Bener', 1, 0),
(1707, 112, 'Bruno', 1, 0),
(1708, 112, 'Butuh', 1, 0),
(1709, 112, 'Gebang', 1, 0),
(1710, 112, 'Grabag', 1, 0),
(1711, 112, 'Kaligesing', 1, 0),
(1712, 112, 'Kemiri', 1, 0),
(1713, 112, 'Kutoarjo', 1, 0),
(1714, 112, 'Loano', 1, 0),
(1715, 112, 'Ngombol', 1, 0),
(1716, 112, 'Pituruh', 1, 0),
(1717, 112, 'Purwodadi', 1, 0),
(1718, 112, 'Purworejo', 1, 0),
(1719, 113, 'Bulu', 1, 0),
(1720, 113, 'Gunem', 1, 0),
(1721, 113, 'Kaliori', 1, 0),
(1722, 113, 'Kragan', 1, 0),
(1723, 113, 'Lasem', 1, 0),
(1724, 113, 'Pamotan', 1, 0),
(1725, 113, 'Pancur', 1, 0),
(1726, 113, 'Rembang', 1, 0),
(1727, 113, 'Sale', 1, 0),
(1728, 113, 'Sarang', 1, 0),
(1729, 113, 'Sedan', 1, 0),
(1730, 113, 'Sluke', 1, 0),
(1731, 113, 'Sulang', 1, 0),
(1732, 113, 'Sumber', 1, 0),
(1733, 114, 'Argomulyo', 1, 0),
(1734, 114, 'Sidomukti', 1, 0),
(1735, 114, 'Sidorejo', 1, 0),
(1736, 114, 'Tingkir', 1, 0),
(1737, 116, 'Banyumanik', 1, 0),
(1738, 116, 'Candisari', 1, 0),
(1739, 116, 'Gajah Mungkur', 1, 0),
(1740, 116, 'Gayamsari', 1, 0),
(1741, 116, 'Genuk', 1, 0),
(1742, 116, 'Gunungpati', 1, 0),
(1743, 116, 'Mijen', 1, 0),
(1744, 116, 'Ngaliyan', 1, 0),
(1745, 116, 'Pedurungan', 1, 0);
INSERT INTO `city` (`city`, `zone_id`, `name`, `status`, `sort_order`) VALUES
(1746, 116, 'Semarang Barat', 1, 0),
(1747, 116, 'Semarang Selatan', 1, 0),
(1748, 116, 'Semarang Tengah', 1, 0),
(1749, 116, 'Semarang Timur', 1, 0),
(1750, 116, 'Semarang Utara', 1, 0),
(1751, 116, 'Tembalang', 1, 0),
(1752, 116, 'Tugu', 1, 0),
(1753, 115, 'Ambarawa', 1, 0),
(1754, 115, 'Bancak', 1, 0),
(1755, 115, 'Bandungan', 1, 0),
(1756, 115, 'Banyubiru', 1, 0),
(1757, 115, 'Bawen', 1, 0),
(1758, 115, 'Bergas', 1, 0),
(1759, 115, 'Bringin', 1, 0),
(1760, 115, 'Getasan', 1, 0),
(1761, 115, 'Jambu', 1, 0),
(1762, 115, 'Kaliwungu', 1, 0),
(1763, 115, 'Pabelan', 1, 0),
(1764, 115, 'Pringapus', 1, 0),
(1765, 115, 'Sumowono', 1, 0),
(1766, 115, 'Suruh', 1, 0),
(1767, 115, 'Susukan', 1, 0),
(1768, 115, 'Tengaran', 1, 0),
(1769, 115, 'Tuntang', 1, 0),
(1770, 115, 'Ungaran Barat', 1, 0),
(1771, 115, 'Ungaran Timur', 1, 0),
(1772, 117, 'Gemolong', 1, 0),
(1773, 117, 'Gesi', 1, 0),
(1774, 117, 'Gondang', 1, 0),
(1775, 117, 'Jenar', 1, 0),
(1776, 117, 'Kalijambe', 1, 0),
(1777, 117, 'Karangmalang', 1, 0),
(1778, 117, 'Kedawung', 1, 0),
(1779, 117, 'Masaran', 1, 0),
(1780, 117, 'Miri', 1, 0),
(1781, 117, 'Mondokan', 1, 0),
(1782, 117, 'Ngrampal', 1, 0),
(1783, 117, 'Plupuh', 1, 0),
(1784, 117, 'Sambirejo', 1, 0),
(1785, 117, 'Sambung Macan', 1, 0),
(1786, 117, 'Sidoharjo', 1, 0),
(1787, 117, 'Sragen', 1, 0),
(1788, 117, 'Sukodono', 1, 0),
(1789, 117, 'Sumberlawang', 1, 0),
(1790, 117, 'Tangen', 1, 0),
(1791, 117, 'Tanon', 1, 0),
(1792, 118, 'Baki', 1, 0),
(1793, 118, 'Bendosari', 1, 0),
(1794, 118, 'Bulu', 1, 0),
(1795, 118, 'Gatak', 1, 0),
(1796, 118, 'Grogol', 1, 0),
(1797, 118, 'Kartasura', 1, 0),
(1798, 118, 'Mojolaban', 1, 0),
(1799, 118, 'Nguter', 1, 0),
(1800, 118, 'Polokarto', 1, 0),
(1801, 118, 'Sukoharjo', 1, 0),
(1802, 118, 'Tawangsari', 1, 0),
(1803, 118, 'Weru', 1, 0),
(1804, 119, 'Banjarsari', 1, 0),
(1805, 119, 'Jebres', 1, 0),
(1806, 119, 'Laweyan', 1, 0),
(1807, 119, 'Pasar Kliwon', 1, 0),
(1808, 119, 'Serengan', 1, 0),
(1809, 121, 'Margadana', 1, 0),
(1810, 121, 'Tegal Barat', 1, 0),
(1811, 121, 'Tegal Selatan', 1, 0),
(1812, 121, 'Tegal Timur', 1, 0),
(1813, 120, 'Adiwerna', 1, 0),
(1814, 120, 'Balapulang', 1, 0),
(1815, 120, 'Bojong', 1, 0),
(1816, 120, 'Bumijawa', 1, 0),
(1817, 120, 'Dukuhturi', 1, 0),
(1818, 120, 'Dukuhwaru', 1, 0),
(1819, 120, 'Jatinegara', 1, 0),
(1820, 120, 'Kedung Banteng', 1, 0),
(1821, 120, 'Kramat', 1, 0),
(1822, 120, 'Lebaksiu', 1, 0),
(1823, 120, 'Margasari', 1, 0),
(1824, 120, 'Pagerbarang', 1, 0),
(1825, 120, 'Pangkah', 1, 0),
(1826, 120, 'Slawi', 1, 0),
(1827, 120, 'Surodadi', 1, 0),
(1828, 120, 'Talang', 1, 0),
(1829, 120, 'Tarub', 1, 0),
(1830, 120, 'Warurejo', 1, 0),
(1831, 122, 'Bansari', 1, 0),
(1832, 122, 'Bejen', 1, 0),
(1833, 122, 'Bulu', 1, 0),
(1834, 122, 'Candiroto', 1, 0),
(1835, 122, 'Gemawang', 1, 0),
(1836, 122, 'Jumo', 1, 0),
(1837, 122, 'Kaloran', 1, 0),
(1838, 122, 'Kandangan', 1, 0),
(1839, 122, 'Kedu', 1, 0),
(1840, 122, 'Kledung', 1, 0),
(1841, 122, 'Kranggan', 1, 0),
(1842, 122, 'Ngadirejo', 1, 0),
(1843, 122, 'Parakan', 1, 0),
(1844, 122, 'Pringsurat', 1, 0),
(1845, 122, 'Selopampang', 1, 0),
(1846, 122, 'Temanggung', 1, 0),
(1847, 122, 'Tembarak', 1, 0),
(1848, 122, 'Tlogomulyo', 1, 0),
(1849, 122, 'Tretep', 1, 0),
(1850, 122, 'Wonoboyo', 1, 0),
(1851, 123, 'Baturetno', 1, 0),
(1852, 123, 'Batuwarno', 1, 0),
(1853, 123, 'Bulukerto', 1, 0),
(1854, 123, 'Eromoko', 1, 0),
(1855, 123, 'Girimarto', 1, 0),
(1856, 123, 'Giritontro', 1, 0),
(1857, 123, 'Giriwoyo', 1, 0),
(1858, 123, 'Jatipurno', 1, 0),
(1859, 123, 'Jatiroto', 1, 0),
(1860, 123, 'Jatisrono', 1, 0),
(1861, 123, 'Karangtengah', 1, 0),
(1862, 123, 'Kismantoro', 1, 0),
(1863, 123, 'Manyaran', 1, 0),
(1864, 123, 'Ngadirojo', 1, 0),
(1865, 123, 'Nguntoronadi', 1, 0),
(1866, 123, 'Paranggupito', 1, 0),
(1867, 123, 'Pracimantoro', 1, 0),
(1868, 123, 'Puhpelem', 1, 0),
(1869, 123, 'Purwantoro', 1, 0),
(1870, 123, 'Selogiri', 1, 0),
(1871, 123, 'Sidoharjo', 1, 0),
(1872, 123, 'Slogohimo', 1, 0),
(1873, 123, 'Tirtomoyo', 1, 0),
(1874, 123, 'Wonogiri', 1, 0),
(1875, 123, 'Wuryantoro', 1, 0),
(1876, 124, 'Garung', 1, 0),
(1877, 124, 'Kalibawang', 1, 0),
(1878, 124, 'Kalikajar', 1, 0),
(1879, 124, 'Kaliwiro', 1, 0),
(1880, 124, 'Kejajar', 1, 0),
(1881, 124, 'Kepil', 1, 0),
(1882, 124, 'Kertek', 1, 0),
(1883, 124, 'Leksono', 1, 0),
(1884, 124, 'Mojotengah', 1, 0),
(1885, 124, 'Sapuran', 1, 0),
(1886, 124, 'Selomerto', 1, 0),
(1887, 124, 'Sukoharjo', 1, 0),
(1888, 124, 'Wadaslintang', 1, 0),
(1889, 124, 'Watumalang', 1, 0),
(1890, 124, 'Wonosobo', 1, 0),
(1891, 125, 'Arosbaya', 1, 0),
(1892, 125, 'Bangkalan', 1, 0),
(1893, 125, 'Blega', 1, 0),
(1894, 125, 'Burneh', 1, 0),
(1895, 125, 'Galis', 1, 0),
(1896, 125, 'Geger', 1, 0),
(1897, 125, 'Kamal', 1, 0),
(1898, 125, 'Klampis', 1, 0),
(1899, 125, 'Kokop', 1, 0),
(1900, 125, 'Konang', 1, 0),
(1901, 125, 'Kwanyar', 1, 0),
(1902, 125, 'Labang', 1, 0),
(1903, 125, 'Modung', 1, 0),
(1904, 125, 'Sepulu', 1, 0),
(1905, 125, 'Socah', 1, 0),
(1906, 125, 'Tanah Merah', 1, 0),
(1907, 125, 'Tanjungbumi', 1, 0),
(1908, 125, 'Tragah', 1, 0),
(1909, 126, 'Bangorejo', 1, 0),
(1910, 126, 'Banyuwangi', 1, 0),
(1911, 126, 'Cluring', 1, 0),
(1912, 126, 'Gambiran', 1, 0),
(1913, 126, 'Genteng', 1, 0),
(1914, 126, 'Giri', 1, 0),
(1915, 126, 'Glagah', 1, 0),
(1916, 126, 'Glenmore', 1, 0),
(1917, 126, 'Kabat', 1, 0),
(1918, 126, 'Kalibaru', 1, 0),
(1919, 126, 'Kalipuro', 1, 0),
(1920, 126, 'Licin', 1, 0),
(1921, 126, 'Muncar', 1, 0),
(1922, 126, 'Pesanggaran', 1, 0),
(1923, 126, 'Purwoharjo', 1, 0),
(1924, 126, 'Rogojampi', 1, 0),
(1925, 126, 'Sempu', 1, 0),
(1926, 126, 'Siliragung', 1, 0),
(1927, 126, 'Singojuruh', 1, 0),
(1928, 126, 'Songgon', 1, 0),
(1929, 126, 'Srono', 1, 0),
(1930, 126, 'Tegaldlimo', 1, 0),
(1931, 126, 'Tegalsari', 1, 0),
(1932, 126, 'Wongsorejo', 1, 0),
(1933, 127, 'Batu', 1, 0),
(1934, 127, 'Bumiaji', 1, 0),
(1935, 127, 'Junrejo', 1, 0),
(1936, 129, 'Kepanjen Kidul', 1, 0),
(1937, 129, 'Sanan Wetan', 1, 0),
(1938, 129, 'Sukorejo', 1, 0),
(1939, 128, 'Bakung', 1, 0),
(1940, 128, 'Binangun', 1, 0),
(1941, 128, 'Doko', 1, 0),
(1942, 128, 'Gandusari', 1, 0),
(1943, 128, 'Garum', 1, 0),
(1944, 128, 'Kademangan', 1, 0),
(1945, 128, 'Kanigoro', 1, 0),
(1946, 128, 'Kesamben', 1, 0),
(1947, 128, 'Nglegok', 1, 0),
(1948, 128, 'Panggungrejo', 1, 0),
(1949, 128, 'Ponggok', 1, 0),
(1950, 128, 'Sanan Kulon', 1, 0),
(1951, 128, 'Selopuro', 1, 0),
(1952, 128, 'Selorejo', 1, 0),
(1953, 128, 'Srengat', 1, 0),
(1954, 128, 'Sutojayan', 1, 0),
(1955, 128, 'Talun', 1, 0),
(1956, 128, 'Udanawu', 1, 0),
(1957, 128, 'Wates', 1, 0),
(1958, 128, 'Wlingi', 1, 0),
(1959, 128, 'Wonodadi', 1, 0),
(1960, 128, 'Wonotirto', 1, 0),
(1961, 130, 'Balen', 1, 0),
(1962, 130, 'Baureno', 1, 0),
(1963, 130, 'Bojonegoro', 1, 0),
(1964, 130, 'Bubulan', 1, 0),
(1965, 130, 'Dander', 1, 0),
(1966, 130, 'Gondang', 1, 0),
(1967, 130, 'Kalitidu', 1, 0),
(1968, 130, 'Kanor', 1, 0),
(1969, 130, 'Kapas', 1, 0),
(1970, 130, 'Kasiman', 1, 0),
(1971, 130, 'Kedewan', 1, 0),
(1972, 130, 'Kedungadem', 1, 0),
(1973, 130, 'Kepoh Baru', 1, 0),
(1974, 130, 'Malo', 1, 0),
(1975, 130, 'Margomulyo', 1, 0),
(1976, 130, 'Ngambon', 1, 0),
(1977, 130, 'Ngasem', 1, 0),
(1978, 130, 'Ngraho', 1, 0),
(1979, 130, 'Padangan', 1, 0),
(1980, 130, 'Purwosari', 1, 0),
(1981, 130, 'Sekar', 1, 0),
(1982, 130, 'Sugihwaras', 1, 0),
(1983, 130, 'Sukosewu', 1, 0),
(1984, 130, 'Sumberrejo', 1, 0),
(1985, 130, 'Tambakrejo', 1, 0),
(1986, 130, 'Temayang', 1, 0),
(1987, 130, 'Trucuk', 1, 0),
(1988, 131, 'Binakal', 1, 0),
(1989, 131, 'Bondowoso', 1, 0),
(1990, 131, 'Botolinggo', 1, 0),
(1991, 131, 'Cermee', 1, 0),
(1992, 131, 'Curahdami', 1, 0),
(1993, 131, 'Grujugan', 1, 0),
(1994, 131, 'Jambe Sari D.S.', 1, 0),
(1995, 131, 'Klabang', 1, 0),
(1996, 131, 'Maesan', 1, 0),
(1997, 131, 'Pakem', 1, 0),
(1998, 131, 'Prajekan', 1, 0),
(1999, 131, 'Pujer', 1, 0),
(2000, 131, 'Sempol', 1, 0),
(2001, 131, 'Sukosari', 1, 0),
(2002, 131, 'Sumber Wringin', 1, 0),
(2003, 131, 'Taman Krocok', 1, 0),
(2004, 131, 'Tamanan', 1, 0),
(2005, 131, 'Tapen', 1, 0),
(2006, 131, 'Tegalampel', 1, 0),
(2007, 131, 'Tenggarang', 1, 0),
(2008, 131, 'Tlogosari', 1, 0),
(2009, 131, 'Wonosari', 1, 0),
(2010, 131, 'Wringin', 1, 0),
(2011, 132, 'Balong Panggang', 1, 0),
(2012, 132, 'Benjeng', 1, 0),
(2013, 132, 'Bungah', 1, 0),
(2014, 132, 'Cerme', 1, 0),
(2015, 132, 'Driyorejo', 1, 0),
(2016, 132, 'Duduk Sampeyan', 1, 0),
(2017, 132, 'Dukun', 1, 0),
(2018, 132, 'Gresik', 1, 0),
(2019, 132, 'Kebomas', 1, 0),
(2020, 132, 'Kedamean', 1, 0),
(2021, 132, 'Manyar', 1, 0),
(2022, 132, 'Menganti', 1, 0),
(2023, 132, 'Panceng', 1, 0),
(2024, 132, 'Sangkapura', 1, 0),
(2025, 132, 'Sidayu', 1, 0),
(2026, 132, 'Tambak', 1, 0),
(2027, 132, 'Ujung Pangkah', 1, 0),
(2028, 132, 'Wringin Anom', 1, 0),
(2029, 133, 'Ajung', 1, 0),
(2030, 133, 'Ambulu', 1, 0),
(2031, 133, 'Arjasa', 1, 0),
(2032, 133, 'Balung', 1, 0),
(2033, 133, 'Bangsalsari', 1, 0),
(2034, 133, 'Gumuk Mas', 1, 0),
(2035, 133, 'Jelbuk', 1, 0),
(2036, 133, 'Jenggawah', 1, 0),
(2037, 133, 'Jombang', 1, 0),
(2038, 133, 'Kalisat', 1, 0),
(2039, 133, 'Kaliwates', 1, 0),
(2040, 133, 'Kencong', 1, 0),
(2041, 133, 'Ledokombo', 1, 0),
(2042, 133, 'Mayang', 1, 0),
(2043, 133, 'Mumbulsari', 1, 0),
(2044, 133, 'Pakusari', 1, 0),
(2045, 133, 'Panti', 1, 0),
(2046, 133, 'Patrang', 1, 0),
(2047, 133, 'Puger', 1, 0),
(2048, 133, 'Rambipuji', 1, 0),
(2049, 133, 'Semboro', 1, 0),
(2050, 133, 'Silo', 1, 0),
(2051, 133, 'Sukorambi', 1, 0),
(2052, 133, 'Sukowono', 1, 0),
(2053, 133, 'Sumber Baru', 1, 0),
(2054, 133, 'Sumber Jambe', 1, 0),
(2055, 133, 'Sumber Sari', 1, 0),
(2056, 133, 'Tanggul', 1, 0),
(2057, 133, 'Tempurejo', 1, 0),
(2058, 133, 'Umbulsari', 1, 0),
(2059, 133, 'Wuluhan', 1, 0),
(2060, 134, 'Bandar Kedung Mulyo', 1, 0),
(2061, 134, 'Bareng', 1, 0),
(2062, 134, 'Diwek', 1, 0),
(2063, 134, 'Gudo', 1, 0),
(2064, 134, 'Jogoroto', 1, 0),
(2065, 134, 'Jombang', 1, 0),
(2066, 134, 'Kabuh', 1, 0),
(2067, 134, 'Kesamben', 1, 0),
(2068, 134, 'Kudu', 1, 0),
(2069, 134, 'Megaluh', 1, 0),
(2070, 134, 'Mojoagung', 1, 0),
(2071, 134, 'Mojowarno', 1, 0),
(2072, 134, 'Ngoro', 1, 0),
(2073, 134, 'Ngusikan', 1, 0),
(2074, 134, 'Perak', 1, 0),
(2075, 134, 'Peterongan', 1, 0),
(2076, 134, 'Plandaan', 1, 0),
(2077, 134, 'Ploso', 1, 0),
(2078, 134, 'Sumobito', 1, 0),
(2079, 134, 'Tembelang', 1, 0),
(2080, 134, 'Wonosalam', 1, 0),
(2081, 136, 'Kediri Kota', 1, 0),
(2082, 136, 'Mojoroto', 1, 0),
(2083, 136, 'Pesantren', 1, 0),
(2084, 135, 'Badas', 1, 0),
(2085, 135, 'Banyakan', 1, 0),
(2086, 135, 'Gampengrejo', 1, 0),
(2087, 135, 'Grogol', 1, 0),
(2088, 135, 'Gurah', 1, 0),
(2089, 135, 'Kandangan', 1, 0),
(2090, 135, 'Kandat', 1, 0),
(2091, 135, 'Kayen Kidul', 1, 0),
(2092, 135, 'Kepung', 1, 0),
(2093, 135, 'Kras', 1, 0),
(2094, 135, 'Kunjang', 1, 0),
(2095, 135, 'Mojo', 1, 0),
(2096, 135, 'Ngadiluwih', 1, 0),
(2097, 135, 'Ngancar', 1, 0),
(2098, 135, 'Ngasem', 1, 0),
(2099, 135, 'Pagu', 1, 0),
(2100, 135, 'Papar', 1, 0),
(2101, 135, 'Pare', 1, 0),
(2102, 135, 'Plemahan', 1, 0),
(2103, 135, 'Plosoklaten', 1, 0),
(2104, 135, 'Puncu', 1, 0),
(2105, 135, 'Purwoasri', 1, 0),
(2106, 135, 'Ringinrejo', 1, 0),
(2107, 135, 'Semen', 1, 0),
(2108, 135, 'Tarokan', 1, 0),
(2109, 135, 'Wates', 1, 0),
(2110, 137, 'Babat', 1, 0),
(2111, 137, 'Bluluk', 1, 0),
(2112, 137, 'Brondong', 1, 0),
(2113, 137, 'Deket', 1, 0),
(2114, 137, 'Glagah', 1, 0),
(2115, 137, 'Kalitengah', 1, 0),
(2116, 137, 'Karang Geneng', 1, 0),
(2117, 137, 'Karangbinangun', 1, 0),
(2118, 137, 'Kedungpring', 1, 0),
(2119, 137, 'Kembangbahu', 1, 0),
(2120, 137, 'Lamongan', 1, 0),
(2121, 137, 'Laren', 1, 0),
(2122, 137, 'Maduran', 1, 0),
(2123, 137, 'Mantup', 1, 0),
(2124, 137, 'Modo', 1, 0),
(2125, 137, 'Ngimbang', 1, 0),
(2126, 137, 'Paciran', 1, 0),
(2127, 137, 'Pucuk', 1, 0),
(2128, 137, 'Sambeng', 1, 0),
(2129, 137, 'Sarirejo', 1, 0),
(2130, 137, 'Sekaran', 1, 0),
(2131, 137, 'Solokuro', 1, 0),
(2132, 137, 'Sugio', 1, 0),
(2133, 137, 'Sukodadi', 1, 0),
(2134, 137, 'Sukorame', 1, 0),
(2135, 137, 'Tikung', 1, 0),
(2136, 137, 'Turi', 1, 0),
(2137, 138, 'Candipuro', 1, 0),
(2138, 138, 'Gucialit', 1, 0),
(2139, 138, 'Jatiroto', 1, 0),
(2140, 138, 'Kedungjajang', 1, 0),
(2141, 138, 'Klakah', 1, 0),
(2142, 138, 'Kunir', 1, 0),
(2143, 138, 'Lumajang', 1, 0),
(2144, 138, 'Padang', 1, 0),
(2145, 138, 'Pasirian', 1, 0),
(2146, 138, 'Pasrujambe/Pasujambe', 1, 0),
(2147, 138, 'Pronojiwo', 1, 0),
(2148, 138, 'Randuagung', 1, 0),
(2149, 138, 'Ranuyoso', 1, 0),
(2150, 138, 'Rowokangkung', 1, 0),
(2151, 138, 'Senduro', 1, 0),
(2152, 138, 'Sukodono', 1, 0),
(2153, 138, 'Sumbersuko', 1, 0),
(2154, 138, 'Tekung', 1, 0),
(2155, 138, 'Tempeh', 1, 0),
(2156, 138, 'Tempursari', 1, 0),
(2157, 138, 'Yosowilangun', 1, 0),
(2158, 140, 'Kartoharjo', 1, 0),
(2159, 140, 'Manguharjo', 1, 0),
(2160, 140, 'Taman', 1, 0),
(2161, 139, 'Balerejo', 1, 0),
(2162, 139, 'Dagangan', 1, 0),
(2163, 139, 'Dolopo', 1, 0),
(2164, 139, 'Geger', 1, 0),
(2165, 139, 'Gemarang', 1, 0),
(2166, 139, 'Jiwan', 1, 0),
(2167, 139, 'Kare', 1, 0),
(2168, 139, 'Kebonsari', 1, 0),
(2169, 139, 'Madiun', 1, 0),
(2170, 139, 'Mejayan', 1, 0),
(2171, 139, 'Pilangkenceng', 1, 0),
(2172, 139, 'Saradan', 1, 0),
(2173, 139, 'Sawahan', 1, 0),
(2174, 139, 'Wonoasri', 1, 0),
(2175, 139, 'Wungu', 1, 0),
(2176, 141, 'Barat', 1, 0),
(2177, 141, 'Bendo', 1, 0),
(2178, 141, 'Karangrejo', 1, 0),
(2179, 141, 'Karas', 1, 0),
(2180, 141, 'Kartoharjo (Kertoharjo)', 1, 0),
(2181, 141, 'Kawedanan', 1, 0),
(2182, 141, 'Lembeyan', 1, 0),
(2183, 141, 'Magetan', 1, 0),
(2184, 141, 'Maospati', 1, 0),
(2185, 141, 'Ngariboyo', 1, 0),
(2186, 141, 'Nguntoronadi', 1, 0),
(2187, 141, 'Panekan', 1, 0),
(2188, 141, 'Parang', 1, 0),
(2189, 141, 'Plaosan', 1, 0),
(2190, 141, 'Poncol', 1, 0),
(2191, 141, 'Sidorejo', 1, 0),
(2192, 141, 'Sukomoro', 1, 0),
(2193, 141, 'Takeran', 1, 0),
(2194, 143, 'Blimbing', 1, 0),
(2195, 143, 'Kedungkandang', 1, 0),
(2196, 143, 'Klojen', 1, 0),
(2197, 143, 'Lowokwaru', 1, 0),
(2198, 143, 'Sukun', 1, 0),
(2199, 142, 'Ampelgading', 1, 0),
(2200, 142, 'Bantur', 1, 0),
(2201, 142, 'Bululawang', 1, 0),
(2202, 142, 'Dampit', 1, 0),
(2203, 142, 'Dau', 1, 0),
(2204, 142, 'Donomulyo', 1, 0),
(2205, 142, 'Gedangan', 1, 0),
(2206, 142, 'Gondanglegi', 1, 0),
(2207, 142, 'Jabung', 1, 0),
(2208, 142, 'Kalipare', 1, 0),
(2209, 142, 'Karangploso', 1, 0),
(2210, 142, 'Kasembon', 1, 0),
(2211, 142, 'Kepanjen', 1, 0),
(2212, 142, 'Kromengan', 1, 0),
(2213, 142, 'Lawang', 1, 0),
(2214, 142, 'Ngajung (Ngajum)', 1, 0),
(2215, 142, 'Ngantang', 1, 0),
(2216, 142, 'Pagak', 1, 0),
(2217, 142, 'Pagelaran', 1, 0),
(2218, 142, 'Pakis', 1, 0),
(2219, 142, 'Pakisaji', 1, 0),
(2220, 142, 'Poncokusumo', 1, 0),
(2221, 142, 'Pujon', 1, 0),
(2222, 142, 'Singosari', 1, 0),
(2223, 142, 'Sumbermanjing Wetan', 1, 0),
(2224, 142, 'Sumberpucung', 1, 0),
(2225, 142, 'Tajinan', 1, 0),
(2226, 142, 'Tirtoyudo', 1, 0),
(2227, 142, 'Tumpang', 1, 0),
(2228, 142, 'Turen', 1, 0),
(2229, 142, 'Wagir', 1, 0),
(2230, 142, 'Wajak', 1, 0),
(2231, 142, 'Wonosari', 1, 0),
(2232, 145, 'Magersari', 1, 0),
(2233, 145, 'Prajurit Kulon', 1, 0),
(2234, 144, 'Bangsal', 1, 0),
(2235, 144, 'Dawar Blandong', 1, 0),
(2236, 144, 'Dlanggu', 1, 0),
(2237, 144, 'Gedeg', 1, 0),
(2238, 144, 'Gondang', 1, 0),
(2239, 144, 'Jatirejo', 1, 0),
(2240, 144, 'Jetis', 1, 0),
(2241, 144, 'Kemlagi', 1, 0),
(2242, 144, 'Kutorejo', 1, 0),
(2243, 144, 'Mojoanyar', 1, 0),
(2244, 144, 'Mojosari', 1, 0),
(2245, 144, 'Ngoro', 1, 0),
(2246, 144, 'Pacet', 1, 0),
(2247, 144, 'Pungging', 1, 0),
(2248, 144, 'Puri', 1, 0),
(2249, 144, 'Sooko', 1, 0),
(2250, 144, 'Trawas', 1, 0),
(2251, 144, 'Trowulan', 1, 0),
(2252, 146, 'Bagor', 1, 0),
(2253, 146, 'Baron', 1, 0),
(2254, 146, 'Berbek', 1, 0),
(2255, 146, 'Gondang', 1, 0),
(2256, 146, 'Jatikalen', 1, 0),
(2257, 146, 'Kertosono', 1, 0),
(2258, 146, 'Lengkong', 1, 0),
(2259, 146, 'Loceret', 1, 0),
(2260, 146, 'Nganjuk', 1, 0),
(2261, 146, 'Ngetos', 1, 0),
(2262, 146, 'Ngluyu', 1, 0),
(2263, 146, 'Ngronggot', 1, 0),
(2264, 146, 'Pace', 1, 0),
(2265, 146, 'Patianrowo', 1, 0),
(2266, 146, 'Prambon', 1, 0),
(2267, 146, 'Rejoso', 1, 0),
(2268, 146, 'Sawahan', 1, 0),
(2269, 146, 'Sukomoro', 1, 0),
(2270, 146, 'Tanjunganom', 1, 0),
(2271, 146, 'Wilangan', 1, 0),
(2272, 147, 'Bringin', 1, 0),
(2273, 147, 'Geneng', 1, 0),
(2274, 147, 'Gerih', 1, 0),
(2275, 147, 'Jogorogo', 1, 0),
(2276, 147, 'Karanganyar', 1, 0),
(2277, 147, 'Karangjati', 1, 0),
(2278, 147, 'Kasreman', 1, 0),
(2279, 147, 'Kedunggalar', 1, 0),
(2280, 147, 'Kendal', 1, 0),
(2281, 147, 'Kwadungan', 1, 0),
(2282, 147, 'Mantingan', 1, 0),
(2283, 147, 'Ngawi', 1, 0),
(2284, 147, 'Ngrambe', 1, 0),
(2285, 147, 'Padas', 1, 0),
(2286, 147, 'Pangkur', 1, 0),
(2287, 147, 'Paron', 1, 0),
(2288, 147, 'Pitu', 1, 0),
(2289, 147, 'Sine', 1, 0),
(2290, 147, 'Widodaren', 1, 0),
(2291, 148, 'Arjosari', 1, 0),
(2292, 148, 'Bandar', 1, 0),
(2293, 148, 'Donorojo', 1, 0),
(2294, 148, 'Kebon Agung', 1, 0),
(2295, 148, 'Nawangan', 1, 0),
(2296, 148, 'Ngadirojo', 1, 0),
(2297, 148, 'Pacitan', 1, 0),
(2298, 148, 'Pringkuku', 1, 0),
(2299, 148, 'Punung', 1, 0),
(2300, 148, 'Sudimoro', 1, 0),
(2301, 148, 'Tegalombo', 1, 0),
(2302, 148, 'Tulakan', 1, 0),
(2303, 149, 'Batumarmar', 1, 0),
(2304, 149, 'Galis', 1, 0),
(2305, 149, 'Kadur', 1, 0),
(2306, 149, 'Larangan', 1, 0),
(2307, 149, 'Pademawu', 1, 0),
(2308, 149, 'Pakong', 1, 0),
(2309, 149, 'Palenga''an', 1, 0),
(2310, 149, 'Pamekasan', 1, 0),
(2311, 149, 'Pasean', 1, 0),
(2312, 149, 'Pegantenan', 1, 0),
(2313, 149, 'Proppo', 1, 0),
(2314, 149, 'Tlanakan', 1, 0),
(2315, 149, 'Waru', 1, 0),
(2316, 151, 'Bugul Kidul', 1, 0),
(2317, 151, 'Gadingrejo', 1, 0),
(2318, 151, 'Purworejo', 1, 0),
(2319, 150, 'Bangil', 1, 0),
(2320, 150, 'Beji', 1, 0),
(2321, 150, 'Gempol', 1, 0),
(2322, 150, 'Gondang Wetan', 1, 0),
(2323, 150, 'Grati', 1, 0),
(2324, 150, 'Kejayan', 1, 0),
(2325, 150, 'Kraton', 1, 0),
(2326, 150, 'Lekok', 1, 0),
(2327, 150, 'Lumbang', 1, 0),
(2328, 150, 'Nguling', 1, 0),
(2329, 150, 'Pandaan', 1, 0),
(2330, 150, 'Pasrepan', 1, 0),
(2331, 150, 'Pohjentrek', 1, 0),
(2332, 150, 'Prigen', 1, 0),
(2333, 150, 'Purwodadi', 1, 0),
(2334, 150, 'Purwosari', 1, 0),
(2335, 150, 'Puspo', 1, 0),
(2336, 150, 'Rejoso', 1, 0),
(2337, 150, 'Rembang', 1, 0),
(2338, 150, 'Sukorejo', 1, 0),
(2339, 150, 'Tosari', 1, 0),
(2340, 150, 'Tutur', 1, 0),
(2341, 150, 'Winongan', 1, 0),
(2342, 150, 'Wonorejo', 1, 0),
(2343, 152, 'Babadan', 1, 0),
(2344, 152, 'Badegan', 1, 0),
(2345, 152, 'Balong', 1, 0),
(2346, 152, 'Bungkal', 1, 0),
(2347, 152, 'Jambon', 1, 0),
(2348, 152, 'Jenangan', 1, 0),
(2349, 152, 'Jetis', 1, 0),
(2350, 152, 'Kauman', 1, 0),
(2351, 152, 'Mlarak', 1, 0),
(2352, 152, 'Ngebel', 1, 0),
(2353, 152, 'Ngrayun', 1, 0),
(2354, 152, 'Ponorogo', 1, 0),
(2355, 152, 'Pudak', 1, 0),
(2356, 152, 'Pulung', 1, 0),
(2357, 152, 'Sambit', 1, 0),
(2358, 152, 'Sampung', 1, 0),
(2359, 152, 'Sawoo', 1, 0),
(2360, 152, 'Siman', 1, 0),
(2361, 152, 'Slahung', 1, 0),
(2362, 152, 'Sooko', 1, 0),
(2363, 152, 'Sukorejo', 1, 0),
(2364, 154, 'Kademangan', 1, 0),
(2365, 154, 'Mayangan', 1, 0),
(2366, 154, 'Wonoasih', 1, 0),
(2367, 153, 'Bantaran', 1, 0),
(2368, 153, 'Banyu Anyar', 1, 0),
(2369, 153, 'Besuk', 1, 0),
(2370, 153, 'Dringu', 1, 0),
(2371, 153, 'Gading', 1, 0),
(2372, 153, 'Gending', 1, 0),
(2373, 153, 'Kota Anyar', 1, 0),
(2374, 153, 'Kraksaan', 1, 0),
(2375, 153, 'Krejengan', 1, 0),
(2376, 153, 'Krucil', 1, 0),
(2377, 153, 'Kuripan', 1, 0),
(2378, 153, 'Leces', 1, 0),
(2379, 153, 'Lumbang', 1, 0),
(2380, 153, 'Maron', 1, 0),
(2381, 153, 'Paiton', 1, 0),
(2382, 153, 'Pajarakan', 1, 0),
(2383, 153, 'Pakuniran', 1, 0),
(2384, 153, 'Sukapura', 1, 0),
(2385, 153, 'Sumber', 1, 0),
(2386, 153, 'Sumberasih', 1, 0),
(2387, 153, 'Tegal Siwalan', 1, 0),
(2388, 153, 'Tiris', 1, 0),
(2389, 153, 'Tongas', 1, 0),
(2390, 153, 'Wonomerto', 1, 0),
(2391, 155, 'Banyuates', 1, 0),
(2392, 155, 'Camplong', 1, 0),
(2393, 155, 'Jrengik', 1, 0),
(2394, 155, 'Karang Penang', 1, 0),
(2395, 155, 'Kedungdung', 1, 0),
(2396, 155, 'Ketapang', 1, 0),
(2397, 155, 'Omben', 1, 0),
(2398, 155, 'Pangarengan', 1, 0),
(2399, 155, 'Robatal', 1, 0),
(2400, 155, 'Sampang', 1, 0),
(2401, 155, 'Sokobanah', 1, 0),
(2402, 155, 'Sreseh', 1, 0),
(2403, 155, 'Tambelangan', 1, 0),
(2404, 155, 'Torjun', 1, 0),
(2405, 156, 'Balongbendo', 1, 0),
(2406, 156, 'Buduran', 1, 0),
(2407, 156, 'Candi', 1, 0),
(2408, 156, 'Gedangan', 1, 0),
(2409, 156, 'Jabon', 1, 0),
(2410, 156, 'Krembung', 1, 0),
(2411, 156, 'Krian', 1, 0),
(2412, 156, 'Porong', 1, 0),
(2413, 156, 'Prambon', 1, 0),
(2414, 156, 'Sedati', 1, 0),
(2415, 156, 'Sidoarjo', 1, 0),
(2416, 156, 'Sukodono', 1, 0),
(2417, 156, 'Taman', 1, 0),
(2418, 156, 'Tanggulangin', 1, 0),
(2419, 156, 'Tarik', 1, 0),
(2420, 156, 'Tulangan', 1, 0),
(2421, 156, 'Waru', 1, 0),
(2422, 156, 'Wonoayu', 1, 0),
(2423, 157, 'Arjasa', 1, 0),
(2424, 157, 'Asembagus', 1, 0),
(2425, 157, 'Banyuglugur', 1, 0),
(2426, 157, 'Banyuputih', 1, 0),
(2427, 157, 'Besuki', 1, 0),
(2428, 157, 'Bungatan', 1, 0),
(2429, 157, 'Jangkar', 1, 0),
(2430, 157, 'Jatibanteng', 1, 0),
(2431, 157, 'Kapongan', 1, 0),
(2432, 157, 'Kendit', 1, 0),
(2433, 157, 'Mangaran', 1, 0),
(2434, 157, 'Mlandingan', 1, 0),
(2435, 157, 'Panarukan', 1, 0),
(2436, 157, 'Panji', 1, 0),
(2437, 157, 'Situbondo', 1, 0),
(2438, 157, 'Suboh', 1, 0),
(2439, 157, 'Sumbermalang', 1, 0),
(2440, 158, 'Ambunten', 1, 0),
(2441, 158, 'Arjasa', 1, 0),
(2442, 158, 'Batang Batang', 1, 0),
(2443, 158, 'Batuan', 1, 0),
(2444, 158, 'Batuputih', 1, 0),
(2445, 158, 'Bluto', 1, 0),
(2446, 158, 'Dasuk', 1, 0),
(2447, 158, 'Dungkek', 1, 0),
(2448, 158, 'Ganding', 1, 0),
(2449, 158, 'Gapura', 1, 0),
(2450, 158, 'Gayam', 1, 0),
(2451, 158, 'Gili Ginting (Giligenteng)', 1, 0),
(2452, 158, 'Guluk Guluk', 1, 0),
(2453, 158, 'Kalianget', 1, 0),
(2454, 158, 'Kangayan', 1, 0),
(2455, 158, 'Kota Sumenep', 1, 0),
(2456, 158, 'Lenteng', 1, 0),
(2457, 158, 'Manding', 1, 0),
(2458, 158, 'Masalembu', 1, 0),
(2459, 158, 'Nonggunong', 1, 0),
(2460, 158, 'Pasongsongan', 1, 0),
(2461, 158, 'Pragaan', 1, 0),
(2462, 158, 'Ra''as (Raas)', 1, 0),
(2463, 158, 'Rubaru', 1, 0),
(2464, 158, 'Sapeken', 1, 0),
(2465, 158, 'Saronggi', 1, 0),
(2466, 158, 'Talango', 1, 0),
(2467, 159, 'Asemrowo', 1, 0),
(2468, 159, 'Benowo', 1, 0),
(2469, 159, 'Bubutan', 1, 0),
(2470, 159, 'Bulak', 1, 0),
(2471, 159, 'Dukuh Pakis', 1, 0),
(2472, 159, 'Gayungan', 1, 0),
(2473, 159, 'Genteng', 1, 0),
(2474, 159, 'Gubeng', 1, 0),
(2475, 159, 'Gununganyar', 1, 0),
(2476, 159, 'Jambangan', 1, 0),
(2477, 159, 'Karangpilang', 1, 0),
(2478, 159, 'Kenjeran', 1, 0),
(2479, 159, 'Krembangan', 1, 0),
(2480, 159, 'Lakar Santri', 1, 0),
(2481, 159, 'Mulyorejo', 1, 0),
(2482, 159, 'Pabean Cantikan', 1, 0),
(2483, 159, 'Pakal', 1, 0),
(2484, 159, 'Rungkut', 1, 0),
(2485, 159, 'Sambikerep', 1, 0),
(2486, 159, 'Sawahan', 1, 0),
(2487, 159, 'Semampir', 1, 0),
(2488, 159, 'Simokerto', 1, 0),
(2489, 159, 'Sukolilo', 1, 0),
(2490, 159, 'Sukomanunggal', 1, 0),
(2491, 159, 'Tambaksari', 1, 0),
(2492, 159, 'Tandes', 1, 0),
(2493, 159, 'Tegalsari', 1, 0),
(2494, 159, 'Tenggilis Mejoyo', 1, 0),
(2495, 159, 'Wiyung', 1, 0),
(2496, 159, 'Wonocolo', 1, 0),
(2497, 159, 'Wonokromo', 1, 0),
(2498, 160, 'Bendungan', 1, 0),
(2499, 160, 'Dongko', 1, 0),
(2500, 160, 'Durenan', 1, 0),
(2501, 160, 'Gandusari', 1, 0),
(2502, 160, 'Kampak', 1, 0),
(2503, 160, 'Karangan', 1, 0),
(2504, 160, 'Munjungan', 1, 0),
(2505, 160, 'Panggul', 1, 0),
(2506, 160, 'Pogalan', 1, 0),
(2507, 160, 'Pule', 1, 0),
(2508, 160, 'Suruh', 1, 0),
(2509, 160, 'Trenggalek', 1, 0),
(2510, 160, 'Tugu', 1, 0),
(2511, 160, 'Watulimo', 1, 0),
(2512, 161, 'Bancar', 1, 0),
(2513, 161, 'Bangilan', 1, 0),
(2514, 161, 'Grabagan', 1, 0),
(2515, 161, 'Jatirogo', 1, 0),
(2516, 161, 'Jenu', 1, 0),
(2517, 161, 'Kenduruan', 1, 0),
(2518, 161, 'Kerek', 1, 0),
(2519, 161, 'Merakurak', 1, 0),
(2520, 161, 'Montong', 1, 0),
(2521, 161, 'Palang', 1, 0),
(2522, 161, 'Parengan', 1, 0),
(2523, 161, 'Plumpang', 1, 0),
(2524, 161, 'Rengel', 1, 0),
(2525, 161, 'Semanding', 1, 0),
(2526, 161, 'Senori', 1, 0),
(2527, 161, 'Singgahan', 1, 0),
(2528, 161, 'Soko', 1, 0),
(2529, 161, 'Tambakboyo', 1, 0),
(2530, 161, 'Tuban', 1, 0),
(2531, 161, 'Widang', 1, 0),
(2532, 162, 'Bandung', 1, 0),
(2533, 162, 'Besuki', 1, 0),
(2534, 162, 'Boyolangu', 1, 0),
(2535, 162, 'Campur Darat', 1, 0),
(2536, 162, 'Gondang', 1, 0),
(2537, 162, 'Kalidawir', 1, 0),
(2538, 162, 'Karang Rejo', 1, 0),
(2539, 162, 'Kauman', 1, 0),
(2540, 162, 'Kedungwaru', 1, 0),
(2541, 162, 'Ngantru', 1, 0),
(2542, 162, 'Ngunut', 1, 0),
(2543, 162, 'Pagerwojo', 1, 0),
(2544, 162, 'Pakel', 1, 0),
(2545, 162, 'Pucanglaban', 1, 0),
(2546, 162, 'Rejotangan', 1, 0),
(2547, 162, 'Sendang', 1, 0),
(2548, 162, 'Sumbergempol', 1, 0),
(2549, 162, 'Tanggung Gunung', 1, 0),
(2550, 162, 'Tulungagung', 1, 0),
(2551, 163, 'Bengkayang', 1, 0),
(2552, 163, 'Capkala', 1, 0),
(2553, 163, 'Jagoi Babang', 1, 0),
(2554, 163, 'Ledo', 1, 0),
(2555, 163, 'Lembah Bawang', 1, 0),
(2556, 163, 'Lumar', 1, 0),
(2557, 163, 'Monterado', 1, 0),
(2558, 163, 'Samalantan', 1, 0),
(2559, 163, 'Sanggau Ledo', 1, 0),
(2560, 163, 'Seluas', 1, 0),
(2561, 163, 'Siding', 1, 0),
(2562, 163, 'Sungai Betung', 1, 0),
(2563, 163, 'Sungai Raya', 1, 0),
(2564, 163, 'Sungai Raya Kepulauan', 1, 0),
(2565, 163, 'Suti Semarang', 1, 0),
(2566, 163, 'Teriak', 1, 0),
(2567, 163, 'Tujuh Belas', 1, 0),
(2568, 164, 'Badau', 1, 0),
(2569, 164, 'Batang Lupar', 1, 0),
(2570, 164, 'Bika', 1, 0),
(2571, 164, 'Boyan Tanjung', 1, 0),
(2572, 164, 'Bunut Hilir', 1, 0),
(2573, 164, 'Bunut Hulu', 1, 0),
(2574, 164, 'Embaloh Hilir', 1, 0),
(2575, 164, 'Embaloh Hulu', 1, 0),
(2576, 164, 'Embau', 1, 0),
(2577, 164, 'Empanang', 1, 0),
(2578, 164, 'Hulu Gurung', 1, 0),
(2579, 164, 'Jongkong (Jengkong)', 1, 0),
(2580, 164, 'Kalis', 1, 0),
(2581, 164, 'Kedamin', 1, 0),
(2582, 164, 'Manday', 1, 0),
(2583, 164, 'Mentebah', 1, 0),
(2584, 164, 'Pengkadan (Batu Datu)', 1, 0),
(2585, 164, 'Puring Kencana', 1, 0),
(2586, 164, 'Putussibau Selatan', 1, 0),
(2587, 164, 'Putussibau Utara', 1, 0),
(2588, 164, 'Seberuang', 1, 0),
(2589, 164, 'Selimbau', 1, 0),
(2590, 164, 'Semitau', 1, 0),
(2591, 164, 'Silat Hilir', 1, 0),
(2592, 164, 'Silat Hulu', 1, 0),
(2593, 164, 'Suhaid', 1, 0),
(2594, 165, 'Pulau Maya Karimata', 1, 0),
(2595, 165, 'Seponti', 1, 0),
(2596, 165, 'Simpang Hilir', 1, 0),
(2597, 165, 'Sukadana', 1, 0),
(2598, 165, 'Teluk Batang', 1, 0),
(2599, 166, 'Air Upas', 1, 0),
(2600, 166, 'Benua Kayong', 1, 0),
(2601, 166, 'Delta Pawan', 1, 0),
(2602, 166, 'Hulu Sungai', 1, 0),
(2603, 166, 'Jelai Hulu', 1, 0),
(2604, 166, 'Kendawangan', 1, 0),
(2605, 166, 'Manis Mata', 1, 0),
(2606, 166, 'Marau', 1, 0),
(2607, 166, 'Matan Hilir Selatan', 1, 0),
(2608, 166, 'Matan Hilir Utara', 1, 0),
(2609, 166, 'Muara Pawan', 1, 0),
(2610, 166, 'Nanga Tayap', 1, 0),
(2611, 166, 'Pemahan', 1, 0),
(2612, 166, 'Sandai', 1, 0),
(2613, 166, 'Simpang Dua', 1, 0),
(2614, 166, 'Simpang Hulu', 1, 0),
(2615, 166, 'Singkup', 1, 0),
(2616, 166, 'Sungai Laur', 1, 0),
(2617, 166, 'Sungai Melayu Rayak', 1, 0),
(2618, 166, 'Tumbang Titi', 1, 0),
(2619, 167, 'Batu Ampar', 1, 0),
(2620, 167, 'Kuala Mandor-B', 1, 0),
(2621, 167, 'Kubu', 1, 0),
(2622, 167, 'Rasau Jaya', 1, 0),
(2623, 167, 'Sei/Sungai Ambawang', 1, 0),
(2624, 167, 'Sei/Sungai Kakap', 1, 0),
(2625, 167, 'Sei/Sungai Raya', 1, 0),
(2626, 167, 'Teluk/Telok Pakedai', 1, 0),
(2627, 167, 'Terentang', 1, 0),
(2628, 168, 'Air Besar', 1, 0),
(2629, 168, 'Banyuke Hulu', 1, 0),
(2630, 168, 'Jelimpo', 1, 0),
(2631, 168, 'Kuala Behe', 1, 0),
(2632, 168, 'Mandor', 1, 0),
(2633, 168, 'Mempawah Hulu', 1, 0),
(2634, 168, 'Menjalin', 1, 0),
(2635, 168, 'Menyuke', 1, 0),
(2636, 168, 'Meranti', 1, 0),
(2637, 168, 'Ngabang', 1, 0),
(2638, 168, 'Sebangki', 1, 0),
(2639, 168, 'Sengah Temila', 1, 0),
(2640, 168, 'Sompak', 1, 0),
(2641, 169, 'Belimbing', 1, 0),
(2642, 169, 'Belimbing Hulu', 1, 0),
(2643, 169, 'Ella Hilir', 1, 0),
(2644, 169, 'Menukung', 1, 0),
(2645, 169, 'Nanga Pinoh', 1, 0),
(2646, 169, 'Pinoh Selatan', 1, 0),
(2647, 169, 'Pinoh Utara', 1, 0),
(2648, 169, 'Sayan', 1, 0),
(2649, 169, 'Sokan', 1, 0),
(2650, 169, 'Tanah Pinoh', 1, 0),
(2651, 169, 'Tanah Pinoh Barat', 1, 0),
(2652, 171, 'Pontianak Barat', 1, 0),
(2653, 171, 'Pontianak Kota', 1, 0),
(2654, 171, 'Pontianak Selatan', 1, 0),
(2655, 171, 'Pontianak Tenggara', 1, 0),
(2656, 171, 'Pontianak Timur', 1, 0),
(2657, 171, 'Pontianak Utara', 1, 0),
(2658, 170, 'Anjongan', 1, 0),
(2659, 170, 'Mempawah Hilir', 1, 0),
(2660, 170, 'Mempawah Timur', 1, 0),
(2661, 170, 'Sadaniang', 1, 0),
(2662, 170, 'Segedong', 1, 0),
(2663, 170, 'Sei/Sungai Kunyit', 1, 0),
(2664, 170, 'Sei/Sungai Pinyuh', 1, 0),
(2665, 170, 'Siantan', 1, 0),
(2666, 170, 'Toho', 1, 0),
(2667, 172, 'Galing', 1, 0),
(2668, 172, 'Jawai', 1, 0),
(2669, 172, 'Jawai Selatan', 1, 0),
(2670, 172, 'Paloh', 1, 0),
(2671, 172, 'Pemangkat', 1, 0),
(2672, 172, 'Sajad', 1, 0),
(2673, 172, 'Sajingan Besar', 1, 0),
(2674, 172, 'Salatiga', 1, 0),
(2675, 172, 'Sambas', 1, 0),
(2676, 172, 'Sebawi', 1, 0),
(2677, 172, 'Sejangkung', 1, 0),
(2678, 172, 'Selakau', 1, 0),
(2679, 172, 'Selakau Timur', 1, 0),
(2680, 172, 'Semparuk', 1, 0),
(2681, 172, 'Subah', 1, 0),
(2682, 172, 'Tangaran', 1, 0),
(2683, 172, 'Tebas', 1, 0),
(2684, 172, 'Tekarang', 1, 0),
(2685, 172, 'Teluk Keramat', 1, 0),
(2686, 173, 'Balai', 1, 0),
(2687, 173, 'Beduai (Beduwai)', 1, 0),
(2688, 173, 'Bonti', 1, 0),
(2689, 173, 'Entikong', 1, 0),
(2690, 173, 'Jangkang', 1, 0),
(2691, 173, 'Kembayan', 1, 0),
(2692, 173, 'Meliau', 1, 0),
(2693, 173, 'Mukok', 1, 0),
(2694, 173, 'Noyan', 1, 0),
(2695, 173, 'Parindu', 1, 0),
(2696, 173, 'Sanggau Kapuas', 1, 0),
(2697, 173, 'Sekayam', 1, 0),
(2698, 173, 'Tayan Hilir', 1, 0),
(2699, 173, 'Tayan Hulu', 1, 0),
(2700, 173, 'Toba', 1, 0),
(2701, 174, 'Belitang', 1, 0),
(2702, 174, 'Belitang Hilir', 1, 0),
(2703, 174, 'Belitang Hulu', 1, 0),
(2704, 174, 'Nanga Mahap', 1, 0),
(2705, 174, 'Nanga Taman', 1, 0),
(2706, 174, 'Sekadau Hilir', 1, 0),
(2707, 174, 'Sekadau Hulu', 1, 0),
(2708, 175, 'Singkawang Barat', 1, 0),
(2709, 175, 'Singkawang Selatan', 1, 0),
(2710, 175, 'Singkawang Tengah', 1, 0),
(2711, 175, 'Singkawang Timur', 1, 0),
(2712, 175, 'Singkawang Utara', 1, 0),
(2713, 176, 'Ambalau', 1, 0),
(2714, 176, 'Binjai Hulu', 1, 0),
(2715, 176, 'Dedai', 1, 0),
(2716, 176, 'Kayan Hilir', 1, 0),
(2717, 176, 'Kayan Hulu', 1, 0),
(2718, 176, 'Kelam Permai', 1, 0),
(2719, 176, 'Ketungau Hilir', 1, 0),
(2720, 176, 'Ketungau Hulu', 1, 0),
(2721, 176, 'Ketungau Tengah', 1, 0),
(2722, 176, 'Sepauk', 1, 0),
(2723, 176, 'Serawai (Nanga Serawai)', 1, 0),
(2724, 176, 'Sintang', 1, 0),
(2725, 176, 'Sungai Tebelian', 1, 0),
(2726, 176, 'Tempunak', 1, 0),
(2727, 177, 'Awayan', 1, 0),
(2728, 177, 'Batu Mandi', 1, 0),
(2729, 177, 'Halong', 1, 0),
(2730, 177, 'Juai', 1, 0),
(2731, 177, 'Lampihong', 1, 0),
(2732, 177, 'Paringin', 1, 0),
(2733, 177, 'Paringin Selatan', 1, 0),
(2734, 177, 'Tebing Tinggi', 1, 0),
(2735, 178, 'Aluh-Aluh', 1, 0),
(2736, 178, 'Aranio', 1, 0),
(2737, 178, 'Astambul', 1, 0),
(2738, 178, 'Beruntung Baru', 1, 0),
(2739, 178, 'Gambut', 1, 0),
(2740, 178, 'Karang Intan', 1, 0),
(2741, 178, 'Kertak Hanyar', 1, 0),
(2742, 178, 'Martapura Barat', 1, 0),
(2743, 178, 'Martapura Kota', 1, 0),
(2744, 178, 'Martapura Timur', 1, 0),
(2745, 178, 'Mataraman', 1, 0),
(2746, 178, 'Pengaron', 1, 0),
(2747, 178, 'Peramasan', 1, 0),
(2748, 178, 'Sambung Makmur', 1, 0),
(2749, 178, 'Sei/Sungai Pinang', 1, 0),
(2750, 178, 'Sei/Sungai Tabuk', 1, 0),
(2751, 178, 'Simpang Empat', 1, 0),
(2752, 178, 'Tatah Makmur', 1, 0),
(2753, 178, 'Telaga Bauntung', 1, 0),
(2754, 179, 'Banjar Baru Selatan', 1, 0),
(2755, 179, 'Banjar Baru Utara', 1, 0),
(2756, 179, 'Cempaka', 1, 0),
(2757, 179, 'Landasan Ulin', 1, 0),
(2758, 179, 'Liang Anggang', 1, 0),
(2759, 180, 'Banjarmasin Barat', 1, 0),
(2760, 180, 'Banjarmasin Selatan', 1, 0),
(2761, 180, 'Banjarmasin Tengah', 1, 0),
(2762, 180, 'Banjarmasin Timur', 1, 0),
(2763, 180, 'Banjarmasin Utara', 1, 0),
(2764, 181, 'Alalak', 1, 0),
(2765, 181, 'Anjir Muara', 1, 0),
(2766, 181, 'Anjir Pasar', 1, 0),
(2767, 181, 'Bakumpai', 1, 0),
(2768, 181, 'Barambai', 1, 0),
(2769, 181, 'Belawang', 1, 0),
(2770, 181, 'Cerbon', 1, 0),
(2771, 181, 'Jejangkit', 1, 0),
(2772, 181, 'Kuripan', 1, 0),
(2773, 181, 'Mandastana', 1, 0),
(2774, 181, 'Marabahan', 1, 0),
(2775, 181, 'Mekar Sari', 1, 0),
(2776, 181, 'Rantau Badauh', 1, 0),
(2777, 181, 'Tabukan', 1, 0),
(2778, 181, 'Tabunganen', 1, 0),
(2779, 181, 'Tamban', 1, 0),
(2780, 181, 'Wanaraya', 1, 0),
(2781, 182, 'Angkinang', 1, 0),
(2782, 182, 'Daha Barat', 1, 0),
(2783, 182, 'Daha Selatan', 1, 0),
(2784, 182, 'Daha Utara', 1, 0),
(2785, 182, 'Kalumpang (Kelumpang)', 1, 0),
(2786, 182, 'Kandangan', 1, 0),
(2787, 182, 'Loksado', 1, 0),
(2788, 182, 'Padang Batung', 1, 0),
(2789, 182, 'Simpur', 1, 0),
(2790, 182, 'Sungai Raya', 1, 0),
(2791, 182, 'Telaga Langsat', 1, 0),
(2792, 183, 'Barabai', 1, 0),
(2793, 183, 'Batang Alai Selatan', 1, 0),
(2794, 183, 'Batang Alai Timur', 1, 0),
(2795, 183, 'Batang Alai Utara', 1, 0),
(2796, 183, 'Batu Benawa', 1, 0),
(2797, 183, 'Hantakan', 1, 0),
(2798, 183, 'Haruyan', 1, 0),
(2799, 183, 'Labuan Amas Selatan', 1, 0),
(2800, 183, 'Labuan Amas Utara', 1, 0),
(2801, 183, 'Limpasu', 1, 0),
(2802, 183, 'Pandawan', 1, 0),
(2803, 184, 'Amuntai Selatan', 1, 0),
(2804, 184, 'Amuntai Tengah', 1, 0),
(2805, 184, 'Amuntai Utara', 1, 0),
(2806, 184, 'Babirik', 1, 0),
(2807, 184, 'Banjang', 1, 0),
(2808, 184, 'Danau Panggang', 1, 0),
(2809, 184, 'Haur Gading', 1, 0),
(2810, 184, 'Paminggir', 1, 0),
(2811, 184, 'Sungai Pandan', 1, 0),
(2812, 184, 'Sungai Tabukan', 1, 0),
(2813, 185, 'Hampang', 1, 0),
(2814, 185, 'Kelumpang Barat', 1, 0),
(2815, 185, 'Kelumpang Hilir', 1, 0),
(2816, 185, 'Kelumpang Hulu', 1, 0),
(2817, 185, 'Kelumpang Selatan', 1, 0),
(2818, 185, 'Kelumpang Tengah', 1, 0),
(2819, 185, 'Kelumpang Utara', 1, 0),
(2820, 185, 'Pamukan Barat', 1, 0),
(2821, 185, 'Pamukan Selatan', 1, 0),
(2822, 185, 'Pamukan Utara', 1, 0),
(2823, 185, 'Pulau Laut Barat', 1, 0),
(2824, 185, 'Pulau Laut Kepulauan', 1, 0),
(2825, 185, 'Pulau Laut Selatan', 1, 0),
(2826, 185, 'Pulau Laut Tengah', 1, 0),
(2827, 185, 'Pulau Laut Timur', 1, 0),
(2828, 185, 'Pulau Laut Utara', 1, 0),
(2829, 185, 'Pulau Sebuku', 1, 0),
(2830, 185, 'Pulau Sembilan', 1, 0),
(2831, 185, 'Sampanahan', 1, 0),
(2832, 185, 'Sungai Durian', 1, 0),
(2833, 186, 'Banua Lawas', 1, 0),
(2834, 186, 'Bintang Ara', 1, 0),
(2835, 186, 'Haruai', 1, 0),
(2836, 186, 'Jaro', 1, 0),
(2837, 186, 'Kelua (Klua)', 1, 0),
(2838, 186, 'Muara Harus', 1, 0),
(2839, 186, 'Muara Uya', 1, 0),
(2840, 186, 'Murung Pudak', 1, 0),
(2841, 186, 'Pugaan', 1, 0),
(2842, 186, 'Tanjung', 1, 0),
(2843, 186, 'Tanta', 1, 0),
(2844, 186, 'Upau', 1, 0),
(2845, 187, 'Angsana', 1, 0),
(2846, 187, 'Batulicin', 1, 0),
(2847, 187, 'Karang Bintang', 1, 0),
(2848, 187, 'Kuranji', 1, 0),
(2849, 187, 'Kusan Hilir', 1, 0),
(2850, 187, 'Kusan Hulu', 1, 0),
(2851, 187, 'Mantewe', 1, 0),
(2852, 187, 'Satui', 1, 0),
(2853, 187, 'Simpang Empat', 1, 0),
(2854, 187, 'Sungai Loban', 1, 0),
(2855, 188, 'Bati-Bati', 1, 0),
(2856, 188, 'Batu Ampar', 1, 0),
(2857, 188, 'Jorong', 1, 0),
(2858, 188, 'Kintap', 1, 0),
(2859, 188, 'Kurau', 1, 0),
(2860, 188, 'Panyipatan', 1, 0),
(2861, 188, 'Pelaihari', 1, 0),
(2862, 188, 'Takisung', 1, 0),
(2863, 188, 'Tambang Ulang', 1, 0),
(2864, 189, 'Bakarangan', 1, 0),
(2865, 189, 'Binuang', 1, 0),
(2866, 189, 'Bungur', 1, 0),
(2867, 189, 'Candi Laras Selatan', 1, 0),
(2868, 189, 'Candi Laras Utara', 1, 0),
(2869, 189, 'Hatungun', 1, 0),
(2870, 189, 'Lokpaikat', 1, 0),
(2871, 189, 'Piani', 1, 0),
(2872, 189, 'Salam Babaris', 1, 0),
(2873, 189, 'Tapin Selatan', 1, 0),
(2874, 189, 'Tapin Tengah', 1, 0),
(2875, 189, 'Tapin Utara', 1, 0),
(2876, 190, 'Dusun Hilir', 1, 0),
(2877, 190, 'Dusun Selatan', 1, 0),
(2878, 190, 'Dusun Utara', 1, 0),
(2879, 190, 'Gunung Bintang Awai', 1, 0),
(2880, 190, 'Jenamas', 1, 0),
(2881, 190, 'Karau Kuala', 1, 0),
(2882, 191, 'Awang', 1, 0),
(2883, 191, 'Benua Lima', 1, 0),
(2884, 191, 'Dusun Tengah', 1, 0),
(2885, 191, 'Dusun Timur', 1, 0),
(2886, 191, 'Paju Epat', 1, 0),
(2887, 191, 'Paku', 1, 0),
(2888, 191, 'Patangkep Tutui', 1, 0),
(2889, 191, 'Pematang Karau', 1, 0),
(2890, 191, 'Raren Batuah', 1, 0),
(2891, 192, 'Gunung Purei', 1, 0),
(2892, 192, 'Gunung Timang', 1, 0),
(2893, 192, 'Lahei', 1, 0),
(2894, 192, 'Montallat (Montalat)', 1, 0),
(2895, 192, 'Teweh Tengah', 1, 0),
(2896, 192, 'Teweh Timur', 1, 0),
(2897, 193, 'Damang Batu', 1, 0),
(2898, 193, 'Kahayan Hulu Utara', 1, 0),
(2899, 193, 'Kurun', 1, 0),
(2900, 193, 'Manuhing', 1, 0),
(2901, 193, 'Manuhing Raya', 1, 0),
(2902, 193, 'Mihing Raya', 1, 0),
(2903, 193, 'Miri Manasa', 1, 0),
(2904, 193, 'Rungan', 1, 0),
(2905, 193, 'Rungan Hulu', 1, 0),
(2906, 193, 'Sepang (Sepang Simin)', 1, 0),
(2907, 193, 'Tewah', 1, 0),
(2908, 194, 'Basarang', 1, 0),
(2909, 194, 'Kapuas Barat', 1, 0),
(2910, 194, 'Kapuas Hilir', 1, 0),
(2911, 194, 'Kapuas Hulu', 1, 0),
(2912, 194, 'Kapuas Kuala', 1, 0),
(2913, 194, 'Kapuas Murung', 1, 0),
(2914, 194, 'Kapuas Tengah', 1, 0),
(2915, 194, 'Kapuas Timur', 1, 0),
(2916, 194, 'Mantangai', 1, 0),
(2917, 194, 'Pulau Petak', 1, 0),
(2918, 194, 'Selat', 1, 0),
(2919, 194, 'Timpah', 1, 0),
(2920, 195, 'Bukit Raya', 1, 0),
(2921, 195, 'Kamipang', 1, 0),
(2922, 195, 'Katingan Hilir', 1, 0),
(2923, 195, 'Katingan Hulu', 1, 0),
(2924, 195, 'Katingan Kuala', 1, 0),
(2925, 195, 'Katingan Tengah', 1, 0),
(2926, 195, 'Marikit', 1, 0),
(2927, 195, 'Mendawai', 1, 0),
(2928, 195, 'Petak Malai', 1, 0),
(2929, 195, 'Pulau Malan', 1, 0),
(2930, 195, 'Sanaman Mantikei (Senamang Mantikei)', 1, 0),
(2931, 195, 'Tasik Payawan', 1, 0),
(2932, 195, 'Tewang Sanggalang Garing (Sangalang)', 1, 0),
(2933, 196, 'Arut Selatan', 1, 0),
(2934, 196, 'Arut Utara', 1, 0),
(2935, 196, 'Kotawaringin Lama', 1, 0),
(2936, 196, 'Kumai', 1, 0),
(2937, 196, 'Pangkalan Banteng', 1, 0),
(2938, 196, 'Pangkalan Lada', 1, 0),
(2939, 197, 'Antang Kalang', 1, 0),
(2940, 197, 'Baamang', 1, 0),
(2941, 197, 'Bukit Santuei', 1, 0),
(2942, 197, 'Cempaga', 1, 0),
(2943, 197, 'Cempaga Hulu', 1, 0),
(2944, 197, 'Kota Besi', 1, 0),
(2945, 197, 'Mentawa Baru (Ketapang)', 1, 0),
(2946, 197, 'Mentaya Hilir Selatan', 1, 0),
(2947, 197, 'Mentaya Hilir Utara', 1, 0),
(2948, 197, 'Mentaya Hulu', 1, 0),
(2949, 197, 'Parenggean', 1, 0),
(2950, 197, 'Pulau Hanaut', 1, 0),
(2951, 197, 'Seranau', 1, 0),
(2952, 197, 'Telawang', 1, 0),
(2953, 197, 'Teluk Sampit', 1, 0),
(2954, 198, 'Batangkawa', 1, 0),
(2955, 198, 'Belantikan Raya', 1, 0),
(2956, 198, 'Bulik', 1, 0),
(2957, 198, 'Bulik Timur', 1, 0),
(2958, 198, 'Delang', 1, 0),
(2959, 198, 'Lamandau', 1, 0),
(2960, 198, 'Menthobi Raya', 1, 0),
(2961, 198, 'Sematu Jaya', 1, 0),
(2962, 199, 'Barito Tuhup Raya', 1, 0),
(2963, 199, 'Laung Tuhup', 1, 0),
(2964, 199, 'Murung', 1, 0),
(2965, 199, 'Permata Intan', 1, 0),
(2966, 199, 'Seribu Riam', 1, 0),
(2967, 199, 'Sumber Barito', 1, 0),
(2968, 199, 'Sungai Babuat', 1, 0),
(2969, 199, 'Tanah Siang', 1, 0),
(2970, 199, 'Tanah Siang Selatan', 1, 0),
(2971, 199, 'Uut Murung', 1, 0),
(2972, 200, 'Bukit Batu', 1, 0),
(2973, 200, 'Jekan Raya', 1, 0),
(2974, 200, 'Pahandut', 1, 0),
(2975, 200, 'Rakumpit', 1, 0),
(2976, 200, 'Sebangau', 1, 0),
(2977, 201, 'Banama Tingang', 1, 0),
(2978, 201, 'Jabiren Raya', 1, 0),
(2979, 201, 'Kahayan Hilir', 1, 0),
(2980, 201, 'Kahayan Kuala', 1, 0),
(2981, 201, 'Kahayan Tengah', 1, 0),
(2982, 201, 'Maliku', 1, 0),
(2983, 201, 'Pandih Batu', 1, 0),
(2984, 201, 'Sebangau Kuala', 1, 0),
(2985, 202, 'Danau Sembuluh', 1, 0),
(2986, 202, 'Hanau', 1, 0),
(2987, 202, 'Seruyan Hilir', 1, 0),
(2988, 202, 'Seruyan Hulu', 1, 0),
(2989, 202, 'Seruyan Tengah', 1, 0),
(2990, 203, 'Balai Riam', 1, 0),
(2991, 203, 'Jelai', 1, 0),
(2992, 203, 'Pantai Lunci', 1, 0),
(2993, 203, 'Permata Kecubung', 1, 0),
(2994, 203, 'Sukamara', 1, 0),
(2995, 204, 'Balikpapan Barat', 1, 0),
(2996, 204, 'Balikpapan Selatan', 1, 0),
(2997, 204, 'Balikpapan Tengah', 1, 0),
(2998, 204, 'Balikpapan Timur', 1, 0),
(2999, 204, 'Balikpapan Utara', 1, 0),
(3000, 205, 'Batu Putih', 1, 0),
(3001, 205, 'Biatan', 1, 0),
(3002, 205, 'Biduk-Biduk', 1, 0),
(3003, 205, 'Derawan (Pulau Derawan)', 1, 0),
(3004, 205, 'Gunung Tabur', 1, 0),
(3005, 205, 'Kelay', 1, 0),
(3006, 205, 'Maratua', 1, 0),
(3007, 205, 'Sambaliung', 1, 0),
(3008, 205, 'Segah', 1, 0),
(3009, 205, 'Tabalar', 1, 0),
(3010, 205, 'Talisayan', 1, 0),
(3011, 205, 'Tanjung Redeb', 1, 0),
(3012, 205, 'Teluk Bayur', 1, 0),
(3013, 206, 'Bontang Barat', 1, 0),
(3014, 206, 'Bontang Selatan', 1, 0),
(3015, 206, 'Bontang Utara', 1, 0),
(3016, 207, 'Barong Tongkok', 1, 0),
(3017, 207, 'Bentian Besar', 1, 0),
(3018, 207, 'Bongan', 1, 0),
(3019, 207, 'Damai', 1, 0),
(3020, 207, 'Jempang', 1, 0),
(3021, 207, 'Laham', 1, 0),
(3022, 207, 'Linggang Bigung', 1, 0),
(3023, 207, 'Long Apari', 1, 0),
(3024, 207, 'Long Bagun', 1, 0),
(3025, 207, 'Long Hubung', 1, 0),
(3026, 207, 'Long Iram', 1, 0),
(3027, 207, 'Long Pahangai', 1, 0),
(3028, 207, 'Manor Bulatin', 1, 0),
(3029, 207, 'Melak', 1, 0),
(3030, 207, 'Muara Lawa', 1, 0),
(3031, 207, 'Muara Pahu', 1, 0),
(3032, 207, 'Nyuatan', 1, 0),
(3033, 207, 'Penyinggahan', 1, 0),
(3034, 207, 'Sekolaq Darat', 1, 0),
(3035, 207, 'Siluq Ngurai', 1, 0),
(3036, 207, 'Tering', 1, 0),
(3037, 208, 'Anggana', 1, 0),
(3038, 208, 'Kembang Janggut', 1, 0),
(3039, 208, 'Kenohan', 1, 0),
(3040, 208, 'Kota Bangun', 1, 0),
(3041, 208, 'Loa Janan', 1, 0),
(3042, 208, 'Loa Kulu', 1, 0),
(3043, 208, 'Marang Kayu', 1, 0),
(3044, 208, 'Muara Badak', 1, 0),
(3045, 208, 'Muara Jawa', 1, 0),
(3046, 208, 'Muara Kaman', 1, 0),
(3047, 208, 'Muara Muntai', 1, 0),
(3048, 208, 'Muara Wis', 1, 0),
(3049, 208, 'Samboja (Semboja)', 1, 0),
(3050, 208, 'Sanga-Sanga', 1, 0),
(3051, 208, 'Sebulu', 1, 0),
(3052, 208, 'Tabang', 1, 0),
(3053, 208, 'Tenggarong', 1, 0),
(3054, 208, 'Tenggarong Seberang', 1, 0),
(3055, 209, 'Batu Ampar', 1, 0),
(3056, 209, 'Bengalon', 1, 0),
(3057, 209, 'Busang', 1, 0),
(3058, 209, 'Kaliorang', 1, 0),
(3059, 209, 'Karangan', 1, 0),
(3060, 209, 'Kaubun', 1, 0),
(3061, 209, 'Kongbeng', 1, 0),
(3062, 209, 'Long Mesangat (Mesengat)', 1, 0),
(3063, 209, 'Muara Ancalong', 1, 0),
(3064, 209, 'Muara Bengkal', 1, 0),
(3065, 209, 'Muara Wahau', 1, 0),
(3066, 209, 'Rantau Pulung', 1, 0),
(3067, 209, 'Sandaran', 1, 0),
(3068, 209, 'Sangatta Selatan', 1, 0),
(3069, 209, 'Sangatta Utara', 1, 0),
(3070, 209, 'Sangkulirang', 1, 0),
(3071, 209, 'Telen', 1, 0),
(3072, 209, 'Teluk Pandan', 1, 0),
(3073, 210, 'Batu Engau', 1, 0),
(3074, 210, 'Batu Sopang', 1, 0),
(3075, 210, 'Kuaro', 1, 0),
(3076, 210, 'Long Ikis', 1, 0),
(3077, 210, 'Long Kali', 1, 0),
(3078, 210, 'Muara Komam', 1, 0),
(3079, 210, 'Muara Samu', 1, 0),
(3080, 210, 'Pasir Belengkong', 1, 0),
(3081, 210, 'Tanah Grogot', 1, 0),
(3082, 210, 'Tanjung Harapan', 1, 0),
(3083, 211, 'Babulu', 1, 0),
(3084, 211, 'Penajam', 1, 0),
(3085, 211, 'Sepaku', 1, 0),
(3086, 211, 'Waru', 1, 0),
(3087, 212, 'Palaran', 1, 0),
(3088, 212, 'Samarinda Ilir', 1, 0),
(3089, 212, 'Samarinda Seberang', 1, 0),
(3090, 212, 'Samarinda Ulu', 1, 0),
(3091, 212, 'Samarinda Utara', 1, 0),
(3092, 212, 'Sungai Kunjang', 1, 0),
(3093, 213, 'Peso', 1, 0),
(3094, 213, 'Peso Hilir/Ilir', 1, 0),
(3095, 213, 'Pulau Bunyu', 1, 0),
(3096, 213, 'Sekatak', 1, 0),
(3097, 213, 'Tanjung Palas', 1, 0),
(3098, 213, 'Tanjung Palas Barat', 1, 0),
(3099, 213, 'Tanjung Palas Tengah', 1, 0),
(3100, 213, 'Tanjung Palas Timur', 1, 0),
(3101, 213, 'Tanjung Palas Utara', 1, 0),
(3102, 213, 'Tanjung Selor', 1, 0),
(3103, 214, 'Bahau Hulu', 1, 0),
(3104, 214, 'Kayan Hilir', 1, 0),
(3105, 214, 'Kayan Hulu', 1, 0),
(3106, 214, 'Kayan Selatan', 1, 0),
(3107, 214, 'Malinau Barat', 1, 0),
(3108, 214, 'Malinau Kota', 1, 0),
(3109, 214, 'Malinau Selatan', 1, 0),
(3110, 214, 'Malinau Utara', 1, 0),
(3111, 214, 'Mentarang', 1, 0),
(3112, 214, 'Mentarang Hulu', 1, 0),
(3113, 214, 'Pujungan', 1, 0),
(3114, 214, 'Sungai Boh', 1, 0),
(3115, 215, 'Krayan', 1, 0),
(3116, 215, 'Krayan Selatan', 1, 0),
(3117, 215, 'Lumbis', 1, 0),
(3118, 215, 'Nunukan', 1, 0),
(3119, 215, 'Sebatik', 1, 0),
(3120, 215, 'Sebatik Barat', 1, 0),
(3121, 215, 'Sebuku', 1, 0),
(3122, 215, 'Sembakung', 1, 0),
(3123, 216, 'Sesayap', 1, 0),
(3124, 216, 'Sesayap Hilir', 1, 0),
(3125, 216, 'Tana Lia (Tanah Lia)', 1, 0),
(3126, 217, 'Tarakan Barat', 1, 0),
(3127, 217, 'Tarakan Tengah', 1, 0),
(3128, 217, 'Tarakan Timur', 1, 0),
(3129, 217, 'Tarakan Utara', 1, 0),
(3130, 218, 'Batam Kota', 1, 0),
(3131, 218, 'Batu Aji', 1, 0),
(3132, 218, 'Batu Ampar', 1, 0),
(3133, 218, 'Belakang Padang', 1, 0),
(3134, 218, 'Bengkong', 1, 0),
(3135, 218, 'Bulang', 1, 0),
(3136, 218, 'Galang', 1, 0),
(3137, 218, 'Lubuk Baja', 1, 0),
(3138, 218, 'Nongsa', 1, 0),
(3139, 218, 'Sagulung', 1, 0),
(3140, 218, 'Sei/Sungai Beduk', 1, 0),
(3141, 218, 'Sekupang', 1, 0),
(3142, 219, 'Bintan Pesisir', 1, 0),
(3143, 219, 'Bintan Timur', 1, 0),
(3144, 219, 'Bintan Utara', 1, 0),
(3145, 219, 'Gunung Kijang', 1, 0),
(3146, 219, 'Mantang', 1, 0),
(3147, 219, 'Seri/Sri Kuala Lobam', 1, 0),
(3148, 219, 'Tambelan', 1, 0),
(3149, 219, 'Teluk Bintan', 1, 0),
(3150, 219, 'Teluk Sebong', 1, 0),
(3151, 219, 'Toapaya', 1, 0),
(3152, 220, 'Buru', 1, 0),
(3153, 220, 'Durai', 1, 0),
(3154, 220, 'Karimun', 1, 0),
(3155, 220, 'Kundur', 1, 0),
(3156, 220, 'Kundur Barat', 1, 0),
(3157, 220, 'Kundur Utara', 1, 0),
(3158, 220, 'Meral', 1, 0),
(3159, 220, 'Moro', 1, 0),
(3160, 220, 'Tebing', 1, 0),
(3161, 221, 'Jemaja', 1, 0),
(3162, 221, 'Jemaja Timur', 1, 0),
(3163, 221, 'Palmatak', 1, 0),
(3164, 221, 'Siantan', 1, 0),
(3165, 221, 'Siantan Selatan', 1, 0),
(3166, 221, 'Siantan Tengah', 1, 0),
(3167, 221, 'Siantan Timur', 1, 0),
(3168, 222, 'Lingga', 1, 0),
(3169, 222, 'Lingga Utara', 1, 0),
(3170, 222, 'Senayang', 1, 0),
(3171, 222, 'Singkep', 1, 0),
(3172, 222, 'Singkep Barat', 1, 0),
(3173, 223, 'Bunguran Barat', 1, 0),
(3174, 223, 'Bunguran Tengah', 1, 0),
(3175, 223, 'Bunguran Timur', 1, 0),
(3176, 223, 'Bunguran Timur Laut', 1, 0),
(3177, 223, 'Bunguran Utara', 1, 0),
(3178, 223, 'Midai', 1, 0),
(3179, 223, 'Pulau Laut', 1, 0),
(3180, 223, 'Pulau Tiga', 1, 0),
(3181, 223, 'Serasan', 1, 0),
(3182, 223, 'Subi', 1, 0),
(3183, 224, 'Bukit Bestari', 1, 0),
(3184, 224, 'Tanjung Pinang Barat', 1, 0),
(3185, 224, 'Tanjung Pinang Kota', 1, 0),
(3186, 224, 'Tanjung Pinang Timur', 1, 0),
(3187, 225, 'Kedaton', 1, 0),
(3188, 225, 'Kemiling', 1, 0),
(3189, 225, 'Panjang', 1, 0),
(3190, 225, 'Rajabasa', 1, 0),
(3191, 225, 'Sukabumi', 1, 0),
(3192, 225, 'Sukarame', 1, 0),
(3193, 225, 'Tanjung Karang Barat', 1, 0),
(3194, 225, 'Tanjung Karang Pusat', 1, 0),
(3195, 225, 'Tanjung Karang Timur', 1, 0),
(3196, 225, 'Tanjung Senang', 1, 0),
(3197, 225, 'Telukbetung Barat', 1, 0),
(3198, 225, 'Telukbetung Selatan', 1, 0),
(3199, 225, 'Telukbetung Utara', 1, 0),
(3200, 226, 'Air Hitam', 1, 0),
(3201, 226, 'Balik Bukit', 1, 0),
(3202, 226, 'Bandar Negeri Suoh', 1, 0),
(3203, 226, 'Batu Brak', 1, 0),
(3204, 226, 'Belalau', 1, 0),
(3205, 226, 'Gedung Surian', 1, 0),
(3206, 226, 'Lumbok Seminung', 1, 0),
(3207, 226, 'Sekincau', 1, 0),
(3208, 226, 'Sukau', 1, 0),
(3209, 226, 'Sumber Jaya', 1, 0),
(3210, 226, 'Suoh', 1, 0),
(3211, 226, 'Way Tenong', 1, 0),
(3212, 227, 'Bakauheni', 1, 0),
(3213, 227, 'Candipuro', 1, 0),
(3214, 227, 'Jati Agung', 1, 0),
(3215, 227, 'Kalianda', 1, 0),
(3216, 227, 'Katibung', 1, 0),
(3217, 227, 'Ketapang', 1, 0),
(3218, 227, 'Merbau Mataram', 1, 0),
(3219, 227, 'Natar', 1, 0),
(3220, 227, 'Palas', 1, 0),
(3221, 227, 'Penengahan', 1, 0),
(3222, 227, 'Rajabasa', 1, 0),
(3223, 227, 'Sidomulyo', 1, 0),
(3224, 227, 'Sragi', 1, 0),
(3225, 227, 'Tanjung Bintang', 1, 0),
(3226, 227, 'Tanjung Sari', 1, 0),
(3227, 227, 'Way Panji', 1, 0),
(3228, 227, 'Way Sulan', 1, 0),
(3229, 228, 'Anak Ratu Aji', 1, 0),
(3230, 228, 'Anak Tuha', 1, 0),
(3231, 228, 'Bandar Mataram', 1, 0),
(3232, 228, 'Bandar Surabaya', 1, 0),
(3233, 228, 'Bangunrejo', 1, 0),
(3234, 228, 'Bekri', 1, 0),
(3235, 228, 'Bumi Nabung', 1, 0),
(3236, 228, 'Bumi Ratu Nuban', 1, 0),
(3237, 228, 'Gunung Sugih', 1, 0),
(3238, 228, 'Kalirejo', 1, 0),
(3239, 228, 'Kota Gajah', 1, 0),
(3240, 228, 'Padang Ratu', 1, 0),
(3241, 228, 'Pubian', 1, 0),
(3242, 228, 'Punggur', 1, 0),
(3243, 228, 'Putra Rumbia', 1, 0),
(3244, 228, 'Rumbia', 1, 0),
(3245, 228, 'Selagai Lingga', 1, 0),
(3246, 228, 'Sendang Agung', 1, 0),
(3247, 228, 'Seputih Agung', 1, 0),
(3248, 228, 'Seputih Banyak', 1, 0),
(3249, 228, 'Seputih Mataram', 1, 0),
(3250, 228, 'Seputih Raman', 1, 0),
(3251, 228, 'Seputih Surabaya', 1, 0),
(3252, 228, 'Terbanggi Besar', 1, 0),
(3253, 228, 'Terusan Nunyai', 1, 0),
(3254, 228, 'Trimurjo', 1, 0),
(3255, 228, 'Way Pangubuan (Pengubuan)', 1, 0),
(3256, 228, 'Way Seputih', 1, 0),
(3257, 229, 'Bandar Sribawono', 1, 0),
(3258, 229, 'Batanghari', 1, 0),
(3259, 229, 'Batanghari Nuban', 1, 0),
(3260, 229, 'Braja Slebah', 1, 0),
(3261, 229, 'Bumi Agung', 1, 0),
(3262, 229, 'Gunung Pelindung', 1, 0),
(3263, 229, 'Jabung', 1, 0),
(3264, 229, 'Labuhan Maringgai', 1, 0),
(3265, 229, 'Labuhan Ratu', 1, 0),
(3266, 229, 'Marga Sekampung', 1, 0),
(3267, 229, 'Margatiga', 1, 0),
(3268, 229, 'Mataram Baru', 1, 0),
(3269, 229, 'Melinting', 1, 0),
(3270, 229, 'Metro Kibang', 1, 0),
(3271, 229, 'Pasir Sakti', 1, 0),
(3272, 229, 'Pekalongan', 1, 0),
(3273, 229, 'Purbolinggo', 1, 0),
(3274, 229, 'Raman Utara', 1, 0),
(3275, 229, 'Sekampung', 1, 0),
(3276, 229, 'Sekampung Udik', 1, 0),
(3277, 229, 'Sukadana', 1, 0),
(3278, 229, 'Waway Karya', 1, 0),
(3279, 229, 'Way Bungur (Purbolinggo Utara)', 1, 0),
(3280, 229, 'Way Jepara', 1, 0),
(3281, 230, 'Abung Barat', 1, 0),
(3282, 230, 'Abung Kunang', 1, 0),
(3283, 230, 'Abung Pekurun', 1, 0),
(3284, 230, 'Abung Selatan', 1, 0),
(3285, 230, 'Abung Semuli', 1, 0),
(3286, 230, 'Abung Surakarta', 1, 0),
(3287, 230, 'Abung Tengah', 1, 0),
(3288, 230, 'Abung Timur', 1, 0),
(3289, 230, 'Abung Tinggi', 1, 0),
(3290, 230, 'Blambangan Pagar', 1, 0),
(3291, 230, 'Bukit Kemuning', 1, 0),
(3292, 230, 'Bunga Mayang', 1, 0),
(3293, 230, 'Hulu Sungkai', 1, 0),
(3294, 230, 'Kotabumi', 1, 0),
(3295, 230, 'Kotabumi Selatan', 1, 0),
(3296, 230, 'Kotabumi Utara', 1, 0),
(3297, 230, 'Muara Sungkai', 1, 0),
(3298, 230, 'Sungkai Barat', 1, 0),
(3299, 230, 'Sungkai Jaya', 1, 0),
(3300, 230, 'Sungkai Selatan', 1, 0),
(3301, 230, 'Sungkai Tengah', 1, 0),
(3302, 230, 'Sungkai Utara', 1, 0),
(3303, 230, 'Tanjung Raja', 1, 0),
(3304, 231, 'Mesuji', 1, 0),
(3305, 231, 'Mesuji Timur', 1, 0),
(3306, 231, 'Panca Jaya', 1, 0),
(3307, 231, 'Simpang Pematang', 1, 0),
(3308, 231, 'Tanjung Raya', 1, 0),
(3309, 231, 'Way Serdang', 1, 0),
(3310, 232, 'Metro Barat', 1, 0),
(3311, 232, 'Metro Pusat', 1, 0),
(3312, 232, 'Metro Selatan', 1, 0),
(3313, 232, 'Metro Timur', 1, 0),
(3314, 232, 'Metro Utara', 1, 0),
(3315, 233, 'Gedong Tataan (Gedung Tataan)', 1, 0),
(3316, 233, 'Kedondong', 1, 0),
(3317, 233, 'Negeri Katon', 1, 0),
(3318, 233, 'Padang Cermin', 1, 0),
(3319, 233, 'Punduh Pidada (Pedada)', 1, 0),
(3320, 233, 'Tegineneng', 1, 0),
(3321, 233, 'Way Lima', 1, 0),
(3322, 234, 'Bengkunat', 1, 0),
(3323, 234, 'Bengkunat Belimbing', 1, 0),
(3324, 234, 'Karya Penggawa', 1, 0),
(3325, 234, 'Krui Selatan', 1, 0),
(3326, 234, 'Lemong', 1, 0),
(3327, 234, 'Ngambur', 1, 0),
(3328, 234, 'Pesisir Selatan', 1, 0),
(3329, 234, 'Pesisir Tengah', 1, 0),
(3330, 234, 'Pesisir Utara', 1, 0),
(3331, 234, 'Pulau Pisang', 1, 0),
(3332, 234, 'Way Krui', 1, 0),
(3333, 235, 'Adi Luwih', 1, 0),
(3334, 235, 'Ambarawa', 1, 0),
(3335, 235, 'Banyumas', 1, 0),
(3336, 235, 'Gading Rejo', 1, 0),
(3337, 235, 'Pagelaran', 1, 0),
(3338, 235, 'Pardasuka', 1, 0),
(3339, 235, 'Pringsewu', 1, 0),
(3340, 235, 'Sukoharjo', 1, 0),
(3341, 236, 'Air Naningan', 1, 0),
(3342, 236, 'Bandar Negeri Semuong', 1, 0),
(3343, 236, 'Bulok', 1, 0),
(3344, 236, 'Cukuh Balak', 1, 0),
(3345, 236, 'Gisting', 1, 0),
(3346, 236, 'Gunung Alip', 1, 0),
(3347, 236, 'Kelumbayan', 1, 0),
(3348, 236, 'Kelumbayan Barat', 1, 0),
(3349, 236, 'Kota Agung Barat', 1, 0),
(3350, 236, 'Kota Agung Pusat', 1, 0),
(3351, 236, 'Kota Agung Timur', 1, 0),
(3352, 236, 'Limau', 1, 0),
(3353, 236, 'Pematang Sawa', 1, 0),
(3354, 236, 'Pugung', 1, 0),
(3355, 236, 'Pulau Panggung', 1, 0),
(3356, 236, 'Semaka', 1, 0),
(3357, 236, 'Sumberejo', 1, 0),
(3358, 236, 'Talang Padang', 1, 0),
(3359, 236, 'Ulubelu', 1, 0),
(3360, 236, 'Wonosobo', 1, 0),
(3361, 237, 'Banjar Agung', 1, 0),
(3362, 237, 'Banjar Margo', 1, 0),
(3363, 237, 'Dente Teladas', 1, 0),
(3364, 237, 'Gedung Aji', 1, 0),
(3365, 237, 'Gedung Aji Baru', 1, 0),
(3366, 237, 'Gedung Meneng', 1, 0),
(3367, 237, 'Menggala', 1, 0),
(3368, 237, 'Meraksa Aji', 1, 0),
(3369, 237, 'Penawar Aji', 1, 0),
(3370, 237, 'Penawar Tama', 1, 0),
(3371, 237, 'Rawa Pitu', 1, 0),
(3372, 237, 'Rawajitu Selatan', 1, 0),
(3373, 237, 'Rawajitu Timur', 1, 0),
(3374, 237, 'Rawajitu Utara', 1, 0),
(3375, 238, 'Gunung Agung', 1, 0),
(3376, 238, 'Gunung Terang', 1, 0),
(3377, 238, 'Lambu Kibang', 1, 0),
(3378, 238, 'Pagar Dewa', 1, 0),
(3379, 238, 'Tulang Bawang Tengah', 1, 0);
INSERT INTO `city` (`city`, `zone_id`, `name`, `status`, `sort_order`) VALUES
(3380, 238, 'Tulang Bawang Udik', 1, 0),
(3381, 238, 'Tumijajar', 1, 0),
(3382, 238, 'Way Kenanga', 1, 0),
(3383, 239, 'Bahuga', 1, 0),
(3384, 239, 'Banjit', 1, 0),
(3385, 239, 'Baradatu', 1, 0),
(3386, 239, 'Blambangan Umpu', 1, 0),
(3387, 239, 'Buay Bahuga', 1, 0),
(3388, 239, 'Bumi Agung', 1, 0),
(3389, 239, 'Gunung Labuhan', 1, 0),
(3390, 239, 'Kasui', 1, 0),
(3391, 239, 'Negara Batin', 1, 0),
(3392, 239, 'Negeri Agung', 1, 0),
(3393, 239, 'Negeri Besar', 1, 0),
(3394, 239, 'Pakuan Ratu', 1, 0),
(3395, 239, 'Rebang Tangkas', 1, 0),
(3396, 239, 'Way Tuba', 1, 0),
(3397, 240, 'Baguala', 1, 0),
(3398, 240, 'Leitimur Selatan', 1, 0),
(3399, 240, 'Nusaniwe (Nusanive)', 1, 0),
(3400, 240, 'Sirimau', 1, 0),
(3401, 240, 'Teluk Ambon', 1, 0),
(3402, 241, 'Airbuaya', 1, 0),
(3403, 241, 'Batabual', 1, 0),
(3404, 241, 'Namlea', 1, 0),
(3405, 241, 'Waeapo', 1, 0),
(3406, 241, 'Waplau', 1, 0),
(3407, 242, 'Ambalau', 1, 0),
(3408, 242, 'Kepala Madan', 1, 0),
(3409, 242, 'Leksula', 1, 0),
(3410, 242, 'Namrole', 1, 0),
(3411, 242, 'Waesama', 1, 0),
(3412, 243, 'Aru Selatan Barat', 1, 0),
(3413, 243, 'Aru Selatan Timur', 1, 0),
(3414, 243, 'Aru Tengah', 1, 0),
(3415, 243, 'Aru Tengah Selatan', 1, 0),
(3416, 243, 'Aru Tengah Timur', 1, 0),
(3417, 243, 'Aru Utara', 1, 0),
(3418, 243, 'Pulau-Pulau Aru', 1, 0),
(3419, 244, 'Damer', 1, 0),
(3420, 244, 'Mdona Hyera/Hiera', 1, 0),
(3421, 244, 'Moa Lakor', 1, 0),
(3422, 244, 'Pulau Letti (Leti Moa Lakor)', 1, 0),
(3423, 244, 'Pulau Pulau Babar', 1, 0),
(3424, 244, 'Pulau Pulau Terselatan', 1, 0),
(3425, 244, 'Pulau-Pulau Babar Timur', 1, 0),
(3426, 245, 'Amahai', 1, 0),
(3427, 245, 'Banda', 1, 0),
(3428, 245, 'Leihitu', 1, 0),
(3429, 245, 'Leihitu Barat', 1, 0),
(3430, 245, 'Masohi Kota', 1, 0),
(3431, 245, 'Nusalaut', 1, 0),
(3432, 245, 'Pulau Haruku', 1, 0),
(3433, 245, 'Salahutu', 1, 0),
(3434, 245, 'Saparua', 1, 0),
(3435, 245, 'Seram Utara', 1, 0),
(3436, 245, 'Seram Utara Barat', 1, 0),
(3437, 245, 'Tehoru', 1, 0),
(3438, 245, 'Teluk Elpaputih', 1, 0),
(3439, 245, 'Teon Nila Serua', 1, 0),
(3440, 246, 'Kei Besar', 1, 0),
(3441, 246, 'Kei Besar Selatan', 1, 0),
(3442, 246, 'Kei Besar Utara Timur', 1, 0),
(3443, 246, 'Kei Kecil', 1, 0),
(3444, 246, 'Kei Kecil Barat', 1, 0),
(3445, 246, 'Kei Kecil Timur', 1, 0),
(3446, 247, 'Kormomolin', 1, 0),
(3447, 247, 'Nirunmas', 1, 0),
(3448, 247, 'Selaru', 1, 0),
(3449, 247, 'Tanimbar Selatan', 1, 0),
(3450, 247, 'Tanimbar Utara', 1, 0),
(3451, 247, 'Wermakatian (Wer Maktian)', 1, 0),
(3452, 247, 'Wertamrian', 1, 0),
(3453, 247, 'Wetar (Pulau Pulau Wetar)', 1, 0),
(3454, 247, 'Wuarlabobar', 1, 0),
(3455, 247, 'Yaru', 1, 0),
(3456, 248, 'Huamual Belakang (Waisala)', 1, 0),
(3457, 248, 'Kairatu', 1, 0),
(3458, 248, 'Seram Barat', 1, 0),
(3459, 248, 'Taniwel', 1, 0),
(3460, 249, 'Bula', 1, 0),
(3461, 249, 'Pulau Gorong (Gorom)', 1, 0),
(3462, 249, 'Seram Timur', 1, 0),
(3463, 249, 'Tutuk Tolu', 1, 0),
(3464, 249, 'Werinama', 1, 0),
(3465, 250, 'Pulau Dullah Selatan', 1, 0),
(3466, 250, 'Pulau Dullah Utara', 1, 0),
(3467, 250, 'Pulau Tayando Tam', 1, 0),
(3468, 250, 'Pulau-Pulau Kur', 1, 0),
(3469, 251, 'Ibu', 1, 0),
(3470, 251, 'Ibu Selatan', 1, 0),
(3471, 251, 'Ibu Utara', 1, 0),
(3472, 251, 'Jailolo', 1, 0),
(3473, 251, 'Jailolo Selatan', 1, 0),
(3474, 251, 'Jailolo Timur', 1, 0),
(3475, 251, 'Loloda', 1, 0),
(3476, 251, 'Sahu', 1, 0),
(3477, 251, 'Sahu Timur', 1, 0),
(3478, 252, 'Bacan', 1, 0),
(3479, 252, 'Bacan Barat', 1, 0),
(3480, 252, 'Bacan Barat Utara', 1, 0),
(3481, 252, 'Bacan Selatan', 1, 0),
(3482, 252, 'Bacan Timur', 1, 0),
(3483, 252, 'Bacan Timur Selatan', 1, 0),
(3484, 252, 'Bacan Timur Tengah', 1, 0),
(3485, 252, 'Gane Barat', 1, 0),
(3486, 252, 'Gane Barat Selatan', 1, 0),
(3487, 252, 'Gane Barat Utara', 1, 0),
(3488, 252, 'Gane Timur', 1, 0),
(3489, 252, 'Gane Timur Selatan', 1, 0),
(3490, 252, 'Gane Timur Tengah', 1, 0),
(3491, 252, 'Kasiruta Barat', 1, 0),
(3492, 252, 'Kasiruta Timur', 1, 0),
(3493, 252, 'Kayoa', 1, 0),
(3494, 252, 'Kayoa Barat', 1, 0),
(3495, 252, 'Kayoa Selatan', 1, 0),
(3496, 252, 'Kayoa Utara', 1, 0),
(3497, 252, 'Kepulauan Botanglomang', 1, 0),
(3498, 252, 'Kepulauan Joronga', 1, 0),
(3499, 252, 'Makian (Pulau Makian)', 1, 0),
(3500, 252, 'Makian Barat (Pulau Makian)', 1, 0),
(3501, 252, 'Mandioli Selatan', 1, 0),
(3502, 252, 'Mandioli Utara', 1, 0),
(3503, 252, 'Obi', 1, 0),
(3504, 252, 'Obi Barat', 1, 0),
(3505, 252, 'Obi Selatan', 1, 0),
(3506, 252, 'Obi Timur', 1, 0),
(3507, 252, 'Obi Utara', 1, 0),
(3508, 253, 'Patani', 1, 0),
(3509, 253, 'Patani Utara', 1, 0),
(3510, 253, 'Pulau Gebe', 1, 0),
(3511, 253, 'Weda', 1, 0),
(3512, 253, 'Weda Selatan', 1, 0),
(3513, 253, 'Weda Utara', 1, 0),
(3514, 254, 'Kota Maba', 1, 0),
(3515, 254, 'Maba', 1, 0),
(3516, 254, 'Maba Selatan', 1, 0),
(3517, 254, 'Maba Tengah', 1, 0),
(3518, 254, 'Maba Utara', 1, 0),
(3519, 254, 'Wasile', 1, 0),
(3520, 254, 'Wasile Selatan', 1, 0),
(3521, 254, 'Wasile Tengah', 1, 0),
(3522, 254, 'Wasile Timur', 1, 0),
(3523, 254, 'Wasile Utara', 1, 0),
(3524, 255, 'Galela', 1, 0),
(3525, 255, 'Galela Barat', 1, 0),
(3526, 255, 'Galela Selatan', 1, 0),
(3527, 255, 'Galela Utara', 1, 0),
(3528, 255, 'Kao', 1, 0),
(3529, 255, 'Kao Barat', 1, 0),
(3530, 255, 'Kao Teluk', 1, 0),
(3531, 255, 'Kao Utara', 1, 0),
(3532, 255, 'Loloda Kepulauan', 1, 0),
(3533, 255, 'Loloda Utara', 1, 0),
(3534, 255, 'Malifut', 1, 0),
(3535, 255, 'Tobelo', 1, 0),
(3536, 255, 'Tobelo Barat', 1, 0),
(3537, 255, 'Tobelo Selatan', 1, 0),
(3538, 255, 'Tobelo Tengah', 1, 0),
(3539, 255, 'Tobelo Timur', 1, 0),
(3540, 255, 'Tobelo Utara', 1, 0),
(3541, 256, 'Lede', 1, 0),
(3542, 256, 'Mangoli Barat', 1, 0),
(3543, 256, 'Mangoli Selatan', 1, 0),
(3544, 256, 'Mangoli Tengah', 1, 0),
(3545, 256, 'Mangoli Timur', 1, 0),
(3546, 256, 'Mangoli Utara', 1, 0),
(3547, 256, 'Mangoli Utara Timur', 1, 0),
(3548, 256, 'Sanana', 1, 0),
(3549, 256, 'Sanana Utara', 1, 0),
(3550, 256, 'Sulabesi Barat', 1, 0),
(3551, 256, 'Sulabesi Selatan', 1, 0),
(3552, 256, 'Sulabesi Tengah', 1, 0),
(3553, 256, 'Sulabesi Timur', 1, 0),
(3554, 256, 'Taliabu Barat', 1, 0),
(3555, 256, 'Taliabu Barat Laut', 1, 0),
(3556, 256, 'Taliabu Selatan', 1, 0),
(3557, 256, 'Taliabu Timur', 1, 0),
(3558, 256, 'Taliabu Timur Selatan', 1, 0),
(3559, 256, 'Taliabu Utara', 1, 0),
(3560, 257, 'Morotai Jaya', 1, 0),
(3561, 257, 'Morotai Selatan', 1, 0),
(3562, 257, 'Morotai Selatan Barat', 1, 0),
(3563, 257, 'Morotai Timur', 1, 0),
(3564, 257, 'Morotai Utara', 1, 0),
(3565, 258, 'Moti (Pulau Moti)', 1, 0),
(3566, 258, 'Pulau Batang Dua', 1, 0),
(3567, 258, 'Pulau Ternate', 1, 0),
(3568, 258, 'Ternate Selatan (Kota)', 1, 0),
(3569, 258, 'Ternate Tengah (Kota)', 1, 0),
(3570, 258, 'Ternate Utara (Kota)', 1, 0),
(3571, 259, 'Oba', 1, 0),
(3572, 259, 'Oba Selatan', 1, 0),
(3573, 259, 'Oba Tengah', 1, 0),
(3574, 259, 'Oba Utara', 1, 0),
(3575, 259, 'Tidore (Pulau Tidore)', 1, 0),
(3576, 259, 'Tidore Selatan', 1, 0),
(3577, 259, 'Tidore Timur (Pulau Tidore)', 1, 0),
(3578, 259, 'Tidore Utara', 1, 0),
(3579, 260, 'Arongan Lambalek', 1, 0),
(3580, 260, 'Bubon', 1, 0),
(3581, 260, 'Johan Pahlawan', 1, 0),
(3582, 260, 'Kaway XVI', 1, 0),
(3583, 260, 'Meureubo', 1, 0),
(3584, 260, 'Pante Ceureumen (Pantai Ceuremen)', 1, 0),
(3585, 260, 'Panton Reu', 1, 0),
(3586, 260, 'Samatiga', 1, 0),
(3587, 260, 'Sungai Mas', 1, 0),
(3588, 260, 'Woyla', 1, 0),
(3589, 260, 'Woyla Barat', 1, 0),
(3590, 260, 'Woyla Timur', 1, 0),
(3591, 261, 'Babah Rot', 1, 0),
(3592, 261, 'Blang Pidie', 1, 0),
(3593, 261, 'Jeumpa', 1, 0),
(3594, 261, 'Kuala Batee', 1, 0),
(3595, 261, 'Lembah Sabil', 1, 0),
(3596, 261, 'Manggeng', 1, 0),
(3597, 261, 'Setia', 1, 0),
(3598, 261, 'Susoh', 1, 0),
(3599, 261, 'Tangan-Tangan', 1, 0),
(3600, 262, 'Baitussalam', 1, 0),
(3601, 262, 'Blank Bintang', 1, 0),
(3602, 262, 'Darul Imarah', 1, 0),
(3603, 262, 'Darul Kamal', 1, 0),
(3604, 262, 'Darussalam', 1, 0),
(3605, 262, 'Indrapuri', 1, 0),
(3606, 262, 'Ingin Jaya', 1, 0),
(3607, 262, 'Kota Cot Glie (Kuta Cot Glie)', 1, 0),
(3608, 262, 'Kota Jantho', 1, 0),
(3609, 262, 'Kota Malaka (Kuta Malaka)', 1, 0),
(3610, 262, 'Krueng Barona Jaya', 1, 0),
(3611, 262, 'Kuta Baro', 1, 0),
(3612, 262, 'Lembah Seulawah', 1, 0),
(3613, 262, 'Leupung', 1, 0),
(3614, 262, 'Lhoknga (Lho''nga)', 1, 0),
(3615, 262, 'Lhoong', 1, 0),
(3616, 262, 'Mantasiek (Montasik)', 1, 0),
(3617, 262, 'Mesjid Raya', 1, 0),
(3618, 262, 'Peukan Bada', 1, 0),
(3619, 262, 'Pulo Aceh', 1, 0),
(3620, 262, 'Seulimeum', 1, 0),
(3621, 262, 'Simpang Tiga', 1, 0),
(3622, 262, 'Suka Makmur', 1, 0),
(3623, 263, 'Jaya', 1, 0),
(3624, 263, 'Keude Panga', 1, 0),
(3625, 263, 'Krueng Sabee', 1, 0),
(3626, 263, 'Sampoiniet', 1, 0),
(3627, 263, 'Setia Bakti', 1, 0),
(3628, 263, 'Teunom', 1, 0),
(3629, 264, 'Bakongan', 1, 0),
(3630, 264, 'Bakongan Timur', 1, 0),
(3631, 264, 'Kluet Selatan', 1, 0),
(3632, 264, 'Kluet Tengah', 1, 0),
(3633, 264, 'Kluet Timur', 1, 0),
(3634, 264, 'Kluet Utara', 1, 0),
(3635, 264, 'Labuhan Haji', 1, 0),
(3636, 264, 'Labuhan Haji Barat', 1, 0),
(3637, 264, 'Labuhan Haji Timur', 1, 0),
(3638, 264, 'Meukek', 1, 0),
(3639, 264, 'Pasie Raja', 1, 0),
(3640, 264, 'Sama Dua', 1, 0),
(3641, 264, 'Sawang', 1, 0),
(3642, 264, 'Tapak Tuan', 1, 0),
(3643, 264, 'Trumon', 1, 0),
(3644, 264, 'Trumon Timur', 1, 0),
(3645, 265, 'Danau Paris', 1, 0),
(3646, 265, 'Gunung Meriah (Mariah)', 1, 0),
(3647, 265, 'Kota Baharu', 1, 0),
(3648, 265, 'Kuala Baru', 1, 0),
(3649, 265, 'Pulau Banyak', 1, 0),
(3650, 265, 'Simpang Kanan', 1, 0),
(3651, 265, 'Singkil', 1, 0),
(3652, 265, 'Singkil Utara', 1, 0),
(3653, 265, 'Singkohor', 1, 0),
(3654, 265, 'Suro Makmur', 1, 0),
(3655, 266, 'Banda Mulia', 1, 0),
(3656, 266, 'Bandar Pusaka', 1, 0),
(3657, 266, 'Bendahara', 1, 0),
(3658, 266, 'Karang Baru', 1, 0),
(3659, 266, 'Kejuruan Muda', 1, 0),
(3660, 266, 'Kota Kuala Simpang', 1, 0),
(3661, 266, 'Manyak Payed', 1, 0),
(3662, 266, 'Rantau', 1, 0),
(3663, 266, 'Sekerak', 1, 0),
(3664, 266, 'Seruway', 1, 0),
(3665, 266, 'Tamiang Hulu', 1, 0),
(3666, 266, 'Tenggulun', 1, 0),
(3667, 267, 'Atu Lintang', 1, 0),
(3668, 267, 'Bebesen', 1, 0),
(3669, 267, 'Bies', 1, 0),
(3670, 267, 'Bintang', 1, 0),
(3671, 267, 'Celala', 1, 0),
(3672, 267, 'Jagong Jeget', 1, 0),
(3673, 267, 'Kebayakan', 1, 0),
(3674, 267, 'Ketol', 1, 0),
(3675, 267, 'Kute Panang', 1, 0),
(3676, 267, 'Linge', 1, 0),
(3677, 267, 'Lut Tawar', 1, 0),
(3678, 267, 'Pegasing', 1, 0),
(3679, 267, 'Rusip Antara', 1, 0),
(3680, 267, 'Silih Nara', 1, 0),
(3681, 268, 'Babul Makmur', 1, 0),
(3682, 268, 'Babul Rahmah', 1, 0),
(3683, 268, 'Babussalam', 1, 0),
(3684, 268, 'Badar', 1, 0),
(3685, 268, 'Bambel', 1, 0),
(3686, 268, 'Bukit Tusam', 1, 0),
(3687, 268, 'Darul Hasanah', 1, 0),
(3688, 268, 'Deleng Pokhisen', 1, 0),
(3689, 268, 'Ketambe', 1, 0),
(3690, 268, 'Lawe Alas', 1, 0),
(3691, 268, 'Lawe Bulan', 1, 0),
(3692, 268, 'Lawe Sigala-Gala', 1, 0),
(3693, 268, 'Lawe Sumur', 1, 0),
(3694, 268, 'Leuser', 1, 0),
(3695, 268, 'Semadam', 1, 0),
(3696, 268, 'Tanah Alas', 1, 0),
(3697, 269, 'Banda Alam', 1, 0),
(3698, 269, 'Birem Bayeun', 1, 0),
(3699, 269, 'Darul Aman', 1, 0),
(3700, 269, 'Darul Falah', 1, 0),
(3701, 269, 'Darul Iksan (Ihsan)', 1, 0),
(3702, 269, 'Idi Rayeuk', 1, 0),
(3703, 269, 'Idi Timur', 1, 0),
(3704, 269, 'Idi Tunong', 1, 0),
(3705, 269, 'Indra Makmur', 1, 0),
(3706, 269, 'Julok', 1, 0),
(3707, 269, 'Madat', 1, 0),
(3708, 269, 'Nurussalam', 1, 0),
(3709, 269, 'Pante Bidari (Beudari)', 1, 0),
(3710, 269, 'Peudawa', 1, 0),
(3711, 269, 'Peunaron', 1, 0),
(3712, 269, 'Peureulak', 1, 0),
(3713, 269, 'Peureulak Barat', 1, 0),
(3714, 269, 'Peureulak Timur', 1, 0),
(3715, 269, 'Rantau Selamat', 1, 0),
(3716, 269, 'Ranto Peureulak', 1, 0),
(3717, 269, 'Serba Jadi', 1, 0),
(3718, 269, 'Simpang Jernih', 1, 0),
(3719, 269, 'Simpang Ulim', 1, 0),
(3720, 269, 'Sungai Raya', 1, 0),
(3721, 270, 'Baktiya', 1, 0),
(3722, 270, 'Baktiya Barat', 1, 0),
(3723, 270, 'Banda Baro', 1, 0),
(3724, 270, 'Cot Girek', 1, 0),
(3725, 270, 'Dewantara', 1, 0),
(3726, 270, 'Geuredong Pase', 1, 0),
(3727, 270, 'Kuta Makmur', 1, 0),
(3728, 270, 'Langkahan', 1, 0),
(3729, 270, 'Lapang', 1, 0),
(3730, 270, 'Lhoksukon', 1, 0),
(3731, 270, 'Matangkuli', 1, 0),
(3732, 270, 'Meurah Mulia', 1, 0),
(3733, 270, 'Muara Batu', 1, 0),
(3734, 270, 'Nibong', 1, 0),
(3735, 270, 'Nisam', 1, 0),
(3736, 270, 'Nisam Antara', 1, 0),
(3737, 270, 'Paya Bakong', 1, 0),
(3738, 270, 'Pirak Timur', 1, 0),
(3739, 270, 'Samudera', 1, 0),
(3740, 270, 'Sawang', 1, 0),
(3741, 270, 'Seunuddon (Seunudon)', 1, 0),
(3742, 270, 'Simpang Kramat (Keramat)', 1, 0),
(3743, 270, 'Syamtalira Aron', 1, 0),
(3744, 270, 'Syamtalira Bayu', 1, 0),
(3745, 270, 'Tanah Jambo Aye', 1, 0),
(3746, 270, 'Tanah Luas', 1, 0),
(3747, 270, 'Tanah Pasir', 1, 0),
(3748, 271, 'Baiturrahman', 1, 0),
(3749, 271, 'Banda Raya', 1, 0),
(3750, 271, 'Jaya Baru', 1, 0),
(3751, 271, 'Kuta Alam', 1, 0),
(3752, 271, 'Kuta Raja', 1, 0),
(3753, 271, 'Lueng Bata', 1, 0),
(3754, 271, 'Meuraxa', 1, 0),
(3755, 271, 'Syiah Kuala', 1, 0),
(3756, 271, 'Ulee Kareng', 1, 0),
(3757, 272, 'Bandar', 1, 0),
(3758, 272, 'Bukit', 1, 0),
(3759, 272, 'Permata', 1, 0),
(3760, 272, 'Pintu Rime Gayo', 1, 0),
(3761, 272, 'Syiah Utama', 1, 0),
(3762, 272, 'Timang Gajah', 1, 0),
(3763, 272, 'Wih Pesam', 1, 0),
(3764, 273, 'Ganda Pura', 1, 0),
(3765, 273, 'Jangka', 1, 0),
(3766, 273, 'Jeumpa', 1, 0),
(3767, 273, 'Jeunieb', 1, 0),
(3768, 273, 'Juli', 1, 0),
(3769, 273, 'Kota Juang', 1, 0),
(3770, 273, 'Kuala', 1, 0),
(3771, 273, 'Kuta Blang', 1, 0),
(3772, 273, 'Makmur', 1, 0),
(3773, 273, 'Pandrah', 1, 0),
(3774, 273, 'Peudada', 1, 0),
(3775, 273, 'Peulimbang (Plimbang)', 1, 0),
(3776, 273, 'Peusangan', 1, 0),
(3777, 273, 'Peusangan Selatan', 1, 0),
(3778, 273, 'Peusangan Siblah Krueng', 1, 0),
(3779, 273, 'Samalanga', 1, 0),
(3780, 273, 'Simpang Mamplam', 1, 0),
(3781, 274, 'Blang Jerango', 1, 0),
(3782, 274, 'Blang Kejeren', 1, 0),
(3783, 274, 'Blang Pegayon', 1, 0),
(3784, 274, 'Dabun Gelang (Debun Gelang)', 1, 0),
(3785, 274, 'Kuta Panjang', 1, 0),
(3786, 274, 'Pantan Cuaca', 1, 0),
(3787, 274, 'Pining (Pinding)', 1, 0),
(3788, 274, 'Putri Betung', 1, 0),
(3789, 274, 'Rikit Gaib', 1, 0),
(3790, 274, 'Terangun (Terangon)', 1, 0),
(3791, 274, 'Teripe/Tripe Jaya', 1, 0),
(3792, 275, 'Langsa Barat', 1, 0),
(3793, 275, 'Langsa Baro', 1, 0),
(3794, 275, 'Langsa Kota', 1, 0),
(3795, 275, 'Langsa Lama', 1, 0),
(3796, 275, 'Langsa Timur', 1, 0),
(3797, 276, 'Banda Sakti', 1, 0),
(3798, 276, 'Blang Mangat', 1, 0),
(3799, 276, 'Muara Dua', 1, 0),
(3800, 276, 'Muara Satu', 1, 0),
(3801, 277, 'Beutong', 1, 0),
(3802, 277, 'Darul Makmur', 1, 0),
(3803, 277, 'Kuala', 1, 0),
(3804, 277, 'Kuala Pesisir', 1, 0),
(3805, 277, 'Seunagan', 1, 0),
(3806, 277, 'Seunagan Timur', 1, 0),
(3807, 277, 'Suka Makmue', 1, 0),
(3808, 277, 'Tadu Raya', 1, 0),
(3809, 278, 'Batee', 1, 0),
(3810, 278, 'Delima', 1, 0),
(3811, 278, 'Geumpang', 1, 0),
(3812, 278, 'Glumpang Baro', 1, 0),
(3813, 278, 'Glumpang Tiga (Geulumpang Tiga)', 1, 0),
(3814, 278, 'Grong Grong', 1, 0),
(3815, 278, 'Indrajaya', 1, 0),
(3816, 278, 'Kembang Tanjong (Tanjung)', 1, 0),
(3817, 278, 'Keumala', 1, 0),
(3818, 278, 'Kota Sigli', 1, 0),
(3819, 278, 'Mane', 1, 0),
(3820, 278, 'Mila', 1, 0),
(3821, 278, 'Muara Tiga', 1, 0),
(3822, 278, 'Mutiara', 1, 0),
(3823, 278, 'Mutiara Timur', 1, 0),
(3824, 278, 'Padang Tiji', 1, 0),
(3825, 278, 'Peukan Baro', 1, 0),
(3826, 278, 'Pidie', 1, 0),
(3827, 278, 'Sakti', 1, 0),
(3828, 278, 'Simpang Tiga', 1, 0),
(3829, 278, 'Tangse', 1, 0),
(3830, 278, 'Tiro/Truseb', 1, 0),
(3831, 278, 'Titeue', 1, 0),
(3832, 279, 'Bandar Baru', 1, 0),
(3833, 279, 'Bandar Dua', 1, 0),
(3834, 279, 'Jangka Buya', 1, 0),
(3835, 279, 'Meurah Dua', 1, 0),
(3836, 279, 'Meureudu', 1, 0),
(3837, 279, 'Panteraja', 1, 0),
(3838, 279, 'Trienggadeng', 1, 0),
(3839, 279, 'Ulim', 1, 0),
(3840, 280, 'Sukajaya', 1, 0),
(3841, 280, 'Sukakarya', 1, 0),
(3842, 281, 'Alapan (Alafan)', 1, 0),
(3843, 281, 'Salang', 1, 0),
(3844, 281, 'Simeuleu Barat', 1, 0),
(3845, 281, 'Simeuleu Tengah', 1, 0),
(3846, 281, 'Simeuleu Timur', 1, 0),
(3847, 281, 'Teluk Dalam', 1, 0),
(3848, 281, 'Teupah Barat', 1, 0),
(3849, 281, 'Teupah Selatan', 1, 0),
(3850, 282, 'Longkib', 1, 0),
(3851, 282, 'Penanggalan', 1, 0),
(3852, 282, 'Rundeng', 1, 0),
(3853, 282, 'Simpang Kiri', 1, 0),
(3854, 282, 'Sultan Daulat', 1, 0),
(3855, 284, 'Asakota', 1, 0),
(3856, 284, 'Mpunda', 1, 0),
(3857, 284, 'Raba', 1, 0),
(3858, 284, 'Rasanae Barat', 1, 0),
(3859, 284, 'Rasanae Timur', 1, 0),
(3860, 283, 'Ambalawi', 1, 0),
(3861, 283, 'Belo', 1, 0),
(3862, 283, 'Bolo', 1, 0),
(3863, 283, 'Donggo', 1, 0),
(3864, 283, 'Lambitu', 1, 0),
(3865, 283, 'Lambu', 1, 0),
(3866, 283, 'Langgudu', 1, 0),
(3867, 283, 'Madapangga', 1, 0),
(3868, 283, 'Monta', 1, 0),
(3869, 283, 'Palibelo', 1, 0),
(3870, 283, 'Parado', 1, 0),
(3871, 283, 'Sanggar', 1, 0),
(3872, 283, 'Sape', 1, 0),
(3873, 283, 'Soromandi', 1, 0),
(3874, 283, 'Tambora', 1, 0),
(3875, 283, 'Wawo', 1, 0),
(3876, 283, 'Wera', 1, 0),
(3877, 283, 'Woha', 1, 0),
(3878, 285, 'Dompu', 1, 0),
(3879, 285, 'Hu''u', 1, 0),
(3880, 285, 'Kempo', 1, 0),
(3881, 285, 'Kilo', 1, 0),
(3882, 285, 'Menggelewa (Manggelewa)', 1, 0),
(3883, 285, 'Pajo', 1, 0),
(3884, 285, 'Pekat', 1, 0),
(3885, 285, 'Woja', 1, 0),
(3886, 286, 'Batu Layar', 1, 0),
(3887, 286, 'Gerung', 1, 0),
(3888, 286, 'Gunungsari', 1, 0),
(3889, 286, 'Kediri', 1, 0),
(3890, 286, 'Kuripan', 1, 0),
(3891, 286, 'Labuapi', 1, 0),
(3892, 286, 'Lembar', 1, 0),
(3893, 286, 'Lingsar', 1, 0),
(3894, 286, 'Narmada', 1, 0),
(3895, 286, 'Sekotong', 1, 0),
(3896, 287, 'Batukliang', 1, 0),
(3897, 287, 'Batukliang Utara', 1, 0),
(3898, 287, 'Janapria', 1, 0),
(3899, 287, 'Jonggat', 1, 0),
(3900, 287, 'Kopang', 1, 0),
(3901, 287, 'Praya', 1, 0),
(3902, 287, 'Praya Barat', 1, 0),
(3903, 287, 'Praya Barat Daya', 1, 0),
(3904, 287, 'Praya Tengah', 1, 0),
(3905, 287, 'Praya Timur', 1, 0),
(3906, 287, 'Pringgarata', 1, 0),
(3907, 287, 'Pujut', 1, 0),
(3908, 288, 'Aikmel', 1, 0),
(3909, 288, 'Jerowaru', 1, 0),
(3910, 288, 'Keruak', 1, 0),
(3911, 288, 'Labuhan Haji', 1, 0),
(3912, 288, 'Masbagik', 1, 0),
(3913, 288, 'Montong Gading', 1, 0),
(3914, 288, 'Pringgabaya', 1, 0),
(3915, 288, 'Pringgasela', 1, 0),
(3916, 288, 'Sakra', 1, 0),
(3917, 288, 'Sakra Barat', 1, 0),
(3918, 288, 'Sakra Timur', 1, 0),
(3919, 288, 'Sambalia (Sambelia)', 1, 0),
(3920, 288, 'Selong', 1, 0),
(3921, 288, 'Sembalun', 1, 0),
(3922, 288, 'Sikur', 1, 0),
(3923, 288, 'Suela (Suwela)', 1, 0),
(3924, 288, 'Sukamulia', 1, 0),
(3925, 288, 'Suralaga', 1, 0),
(3926, 288, 'Terara', 1, 0),
(3927, 288, 'Wanasaba', 1, 0),
(3928, 289, 'Bayan', 1, 0),
(3929, 289, 'Gangga', 1, 0),
(3930, 289, 'Kayangan', 1, 0),
(3931, 289, 'Pemenang', 1, 0),
(3932, 289, 'Tanjung', 1, 0),
(3933, 290, 'Ampenan', 1, 0),
(3934, 290, 'Cakranegara', 1, 0),
(3935, 290, 'Mataram', 1, 0),
(3936, 290, 'Sandubaya (Sandujaya)', 1, 0),
(3937, 290, 'Sekarbela', 1, 0),
(3938, 290, 'Selaparang (Selaprang)', 1, 0),
(3939, 291, 'Alas', 1, 0),
(3940, 291, 'Alas Barat', 1, 0),
(3941, 291, 'Batulanteh', 1, 0),
(3942, 291, 'Buer', 1, 0),
(3943, 291, 'Empang', 1, 0),
(3944, 291, 'Labangka', 1, 0),
(3945, 291, 'Labuhan Badas', 1, 0),
(3946, 291, 'Lantung', 1, 0),
(3947, 291, 'Lape (Lape Lopok)', 1, 0),
(3948, 291, 'Lenangguar', 1, 0),
(3949, 291, 'Lopok', 1, 0),
(3950, 291, 'Lunyuk', 1, 0),
(3951, 291, 'Maronge', 1, 0),
(3952, 291, 'Moyo Hilir', 1, 0),
(3953, 291, 'Moyo Hulu', 1, 0),
(3954, 291, 'Moyo Utara', 1, 0),
(3955, 291, 'Orong Telu', 1, 0),
(3956, 291, 'Plampang', 1, 0),
(3957, 291, 'Rhee', 1, 0),
(3958, 291, 'Ropang', 1, 0),
(3959, 291, 'Sumbawa', 1, 0),
(3960, 291, 'Tarano', 1, 0),
(3961, 291, 'Unter Iwes (Unterwiris)', 1, 0),
(3962, 291, 'Utan', 1, 0),
(3963, 292, 'Brang Ene', 1, 0),
(3964, 292, 'Brang Rea', 1, 0),
(3965, 292, 'Jereweh', 1, 0),
(3966, 292, 'Maluk', 1, 0),
(3967, 292, 'Poto Tano', 1, 0),
(3968, 292, 'Sateluk (Seteluk)', 1, 0),
(3969, 292, 'Sekongkang', 1, 0),
(3970, 292, 'Taliwang', 1, 0),
(3971, 293, 'Alor Barat Daya', 1, 0),
(3972, 293, 'Alor Barat Laut', 1, 0),
(3973, 293, 'Alor Selatan', 1, 0),
(3974, 293, 'Alor Tengah Utara', 1, 0),
(3975, 293, 'Alor Timur', 1, 0),
(3976, 293, 'Alor Timur Laut', 1, 0),
(3977, 293, 'Kabola', 1, 0),
(3978, 293, 'Lembur', 1, 0),
(3979, 293, 'Mataru', 1, 0),
(3980, 293, 'Pantar', 1, 0),
(3981, 293, 'Pantar Barat', 1, 0),
(3982, 293, 'Pantar Barat Laut', 1, 0),
(3983, 293, 'Pantar Tengah', 1, 0),
(3984, 293, 'Pantar Timur', 1, 0),
(3985, 293, 'Pulau Pura', 1, 0),
(3986, 293, 'Pureman', 1, 0),
(3987, 293, 'Teluk Mutiara', 1, 0),
(3988, 294, 'Atambua Barat', 1, 0),
(3989, 294, 'Atambua Kota', 1, 0),
(3990, 294, 'Atambua Selatan', 1, 0),
(3991, 294, 'Botin Leo Bele', 1, 0),
(3992, 294, 'Io Kufeu', 1, 0),
(3993, 294, 'Kakuluk Mesak', 1, 0),
(3994, 294, 'Kobalima', 1, 0),
(3995, 294, 'Kobalima Timur', 1, 0),
(3996, 294, 'Laen Manen', 1, 0),
(3997, 294, 'Lamaknen', 1, 0),
(3998, 294, 'Lamaknen Selatan', 1, 0),
(3999, 294, 'Lasiolat', 1, 0),
(4000, 294, 'Malaka Barat', 1, 0),
(4001, 294, 'Malaka Tengah', 1, 0),
(4002, 294, 'Malaka Timur', 1, 0),
(4003, 294, 'Nanaet Duabesi', 1, 0),
(4004, 294, 'Raihat', 1, 0),
(4005, 294, 'Raimanuk', 1, 0),
(4006, 294, 'Rinhat', 1, 0),
(4007, 294, 'Sasitamean', 1, 0),
(4008, 294, 'Tasifeto Barat', 1, 0),
(4009, 294, 'Tasifeto Timur', 1, 0),
(4010, 294, 'Weliman', 1, 0),
(4011, 294, 'Wewiku', 1, 0),
(4012, 295, 'Detukeli', 1, 0),
(4013, 295, 'Detusoko', 1, 0),
(4014, 295, 'Ende', 1, 0),
(4015, 295, 'Ende Selatan', 1, 0),
(4016, 295, 'Ende Tengah', 1, 0),
(4017, 295, 'Ende Timur', 1, 0),
(4018, 295, 'Ende Utara', 1, 0),
(4019, 295, 'Kelimutu', 1, 0),
(4020, 295, 'Kotabaru', 1, 0),
(4021, 295, 'Lio Timur', 1, 0),
(4022, 295, 'Maukaro', 1, 0),
(4023, 295, 'Maurole', 1, 0),
(4024, 295, 'Nangapanda', 1, 0),
(4025, 295, 'Ndona', 1, 0),
(4026, 295, 'Ndona Timur', 1, 0),
(4027, 295, 'Ndori', 1, 0),
(4028, 295, 'Pulau Ende', 1, 0),
(4029, 295, 'Wewaria', 1, 0),
(4030, 295, 'Wolojita', 1, 0),
(4031, 295, 'Wolowaru', 1, 0),
(4032, 296, 'Adonara', 1, 0),
(4033, 296, 'Adonara Barat', 1, 0),
(4034, 296, 'Adonara Tengah', 1, 0),
(4035, 296, 'Adonara Timur', 1, 0),
(4036, 296, 'Demon Pagong', 1, 0),
(4037, 296, 'Ile Boleng', 1, 0),
(4038, 296, 'Ile Bura', 1, 0),
(4039, 296, 'Ile Mandiri', 1, 0),
(4040, 296, 'Kelubagolit (Klubagolit)', 1, 0),
(4041, 296, 'Larantuka', 1, 0),
(4042, 296, 'Lewolema', 1, 0),
(4043, 296, 'Solor Barat', 1, 0),
(4044, 296, 'Solor Timur', 1, 0),
(4045, 296, 'Tanjung Bunga', 1, 0),
(4046, 296, 'Titehena', 1, 0),
(4047, 296, 'Witihama (Watihama)', 1, 0),
(4048, 296, 'Wotan Ulumado', 1, 0),
(4049, 296, 'Wulanggitang', 1, 0),
(4050, 298, 'Alak', 1, 0),
(4051, 298, 'Kelapa Lima', 1, 0),
(4052, 298, 'Maulafa', 1, 0),
(4053, 298, 'Oebobo', 1, 0),
(4054, 297, 'Amabi Oefeto', 1, 0),
(4055, 297, 'Amabi Oefeto Timur', 1, 0),
(4056, 297, 'Amarasi', 1, 0),
(4057, 297, 'Amarasi Barat', 1, 0),
(4058, 297, 'Amarasi Selatan', 1, 0),
(4059, 297, 'Amarasi Timur', 1, 0),
(4060, 297, 'Amfoang Barat Daya', 1, 0),
(4061, 297, 'Amfoang Barat Laut', 1, 0),
(4062, 297, 'Amfoang Selatan', 1, 0),
(4063, 297, 'Amfoang Timur', 1, 0),
(4064, 297, 'Amfoang Utara', 1, 0),
(4065, 297, 'Fatuleu', 1, 0),
(4066, 297, 'Fatuleu Barat', 1, 0),
(4067, 297, 'Fatuleu Tengah', 1, 0),
(4068, 297, 'Kupang Barat', 1, 0),
(4069, 297, 'Kupang Tengah', 1, 0),
(4070, 297, 'Kupang Timur', 1, 0),
(4071, 297, 'Nekemese', 1, 0),
(4072, 297, 'Semau', 1, 0),
(4073, 297, 'Semau Selatan', 1, 0),
(4074, 297, 'Sulamu', 1, 0),
(4075, 297, 'Taebenu', 1, 0),
(4076, 297, 'Takari', 1, 0),
(4077, 299, 'Atadei', 1, 0),
(4078, 299, 'Buyasuri (Buyasari)', 1, 0),
(4079, 299, 'Ile Ape', 1, 0),
(4080, 299, 'Ile Ape Timur', 1, 0),
(4081, 299, 'Lebatukan', 1, 0),
(4082, 299, 'Nagawutung', 1, 0),
(4083, 299, 'Nubatukan', 1, 0),
(4084, 299, 'Omesuri', 1, 0),
(4085, 299, 'Wulandoni (Wulandioni)', 1, 0),
(4086, 300, 'Cibal', 1, 0),
(4087, 300, 'Langke Rembong', 1, 0),
(4088, 300, 'Lelak', 1, 0),
(4089, 300, 'Rahong Utara', 1, 0),
(4090, 300, 'Reok', 1, 0),
(4091, 300, 'Ruteng', 1, 0),
(4092, 300, 'Satar Mese', 1, 0),
(4093, 300, 'Satar Mese Barat', 1, 0),
(4094, 300, 'Wae Rii', 1, 0),
(4095, 301, 'Boleng', 1, 0),
(4096, 301, 'Komodo', 1, 0),
(4097, 301, 'Kuwus', 1, 0),
(4098, 301, 'Lembor', 1, 0),
(4099, 301, 'Macang Pacar', 1, 0),
(4100, 301, 'Sano Nggoang', 1, 0),
(4101, 301, 'Welak', 1, 0),
(4102, 302, 'Borong', 1, 0),
(4103, 302, 'Elar', 1, 0),
(4104, 302, 'Kota Komba', 1, 0),
(4105, 302, 'Lamba Leda', 1, 0),
(4106, 302, 'Poco Ranaka', 1, 0),
(4107, 302, 'Sambi Rampas', 1, 0),
(4108, 303, 'Aesesa', 1, 0),
(4109, 303, 'Aesesa Selatan', 1, 0),
(4110, 303, 'Boawae', 1, 0),
(4111, 303, 'Keo Tengah', 1, 0),
(4112, 303, 'Mauponggo', 1, 0),
(4113, 303, 'Nangaroro', 1, 0),
(4114, 303, 'Wolowae', 1, 0),
(4115, 304, 'Aimere', 1, 0),
(4116, 304, 'Bajawa', 1, 0),
(4117, 304, 'Bajawa Utara', 1, 0),
(4118, 304, 'Golewa', 1, 0),
(4119, 304, 'Jerebuu', 1, 0),
(4120, 304, 'Riung', 1, 0),
(4121, 304, 'Riung Barat (Wolomeze)', 1, 0),
(4122, 304, 'Riung Selatan (Wolomeze)', 1, 0),
(4123, 304, 'Soa', 1, 0),
(4124, 305, 'Lobalain', 1, 0),
(4125, 305, 'Pantai Baru', 1, 0),
(4126, 305, 'Rote Barat', 1, 0),
(4127, 305, 'Rote Barat Daya', 1, 0),
(4128, 305, 'Rote Barat Laut', 1, 0),
(4129, 305, 'Rote Selatan', 1, 0),
(4130, 305, 'Rote Tengah', 1, 0),
(4131, 305, 'Rote Timur', 1, 0),
(4132, 306, 'Hawu Mehara', 1, 0),
(4133, 306, 'Raijua', 1, 0),
(4134, 306, 'Sabu Barat', 1, 0),
(4135, 306, 'Sabu Liae', 1, 0),
(4136, 306, 'Sabu Tengah', 1, 0),
(4137, 306, 'Sabu Timur', 1, 0),
(4138, 307, 'Alok', 1, 0),
(4139, 307, 'Alok Barat', 1, 0),
(4140, 307, 'Alok Timur', 1, 0),
(4141, 307, 'Bola', 1, 0),
(4142, 307, 'Doreng', 1, 0),
(4143, 307, 'Hewokloang', 1, 0),
(4144, 307, 'Kangae', 1, 0),
(4145, 307, 'Kewapante', 1, 0),
(4146, 307, 'Koting', 1, 0),
(4147, 307, 'Lela', 1, 0),
(4148, 307, 'Magepanda', 1, 0),
(4149, 307, 'Mapitara', 1, 0),
(4150, 307, 'Mego', 1, 0),
(4151, 307, 'Nelle (Maumerei)', 1, 0),
(4152, 307, 'Nita', 1, 0),
(4153, 307, 'Paga', 1, 0),
(4154, 307, 'Palue', 1, 0),
(4155, 307, 'Talibura', 1, 0),
(4156, 307, 'Tana Wawo', 1, 0),
(4157, 307, 'Waiblama', 1, 0),
(4158, 307, 'Waigete', 1, 0),
(4159, 308, 'Kota Waikabubak', 1, 0),
(4160, 308, 'Lamboya', 1, 0),
(4161, 308, 'Lamboya Barat', 1, 0),
(4162, 308, 'Loli', 1, 0),
(4163, 308, 'Tana Righu', 1, 0),
(4164, 308, 'Wanokaka', 1, 0),
(4165, 309, 'Kodi', 1, 0),
(4166, 309, 'Kodi Bangedo', 1, 0),
(4167, 309, 'Kodi Utara', 1, 0),
(4168, 309, 'Laura (Loura)', 1, 0),
(4169, 309, 'Wewewa Barat', 1, 0),
(4170, 309, 'Wewewa Selatan', 1, 0),
(4171, 309, 'Wewewa Timur', 1, 0),
(4172, 309, 'Wewewa Utara', 1, 0),
(4173, 310, 'Katikutana', 1, 0),
(4174, 310, 'Katikutana Selatan', 1, 0),
(4175, 310, 'Mamboro', 1, 0),
(4176, 310, 'Umbu Ratu Nggay', 1, 0),
(4177, 310, 'Umbu Ratu Nggay Barat', 1, 0),
(4178, 311, 'Haharu', 1, 0),
(4179, 311, 'Kahaunguweti (Kahaungu Eti)', 1, 0),
(4180, 311, 'Kambata Mapambuhang', 1, 0),
(4181, 311, 'Kambera', 1, 0),
(4182, 311, 'Karera', 1, 0),
(4183, 311, 'Katala Hamu Lingu', 1, 0),
(4184, 311, 'Kota Waingapu', 1, 0),
(4185, 311, 'Lewa', 1, 0),
(4186, 311, 'Lewa Tidahu', 1, 0),
(4187, 311, 'Mahu', 1, 0),
(4188, 311, 'Matawai Lappau (La Pawu)', 1, 0),
(4189, 311, 'Ngadu Ngala', 1, 0),
(4190, 311, 'Nggaha Oriangu', 1, 0),
(4191, 311, 'Paberiwai', 1, 0),
(4192, 311, 'Pahunga Lodu', 1, 0),
(4193, 311, 'Pandawai', 1, 0),
(4194, 311, 'Pinupahar (Pirapahar)', 1, 0),
(4195, 311, 'Rindi', 1, 0),
(4196, 311, 'Tabundung', 1, 0),
(4197, 311, 'Umalulu', 1, 0),
(4198, 311, 'Wula Waijelu', 1, 0),
(4199, 312, 'Amanatun Selatan', 1, 0),
(4200, 312, 'Amanatun Utara', 1, 0),
(4201, 312, 'Amanuban Barat', 1, 0),
(4202, 312, 'Amanuban Selatan', 1, 0),
(4203, 312, 'Amanuban Tengah', 1, 0),
(4204, 312, 'Amanuban Timur', 1, 0),
(4205, 312, 'Batu Putih', 1, 0),
(4206, 312, 'Boking', 1, 0),
(4207, 312, 'Fatukopa', 1, 0),
(4208, 312, 'Fatumnasi', 1, 0),
(4209, 312, 'Fautmolo', 1, 0),
(4210, 312, 'Kie (Ki''e)', 1, 0),
(4211, 312, 'Kok Baun', 1, 0),
(4212, 312, 'Kolbano', 1, 0),
(4213, 312, 'Kot Olin', 1, 0),
(4214, 312, 'Kota Soe', 1, 0),
(4215, 312, 'Kualin', 1, 0),
(4216, 312, 'Kuanfatu', 1, 0),
(4217, 312, 'Kuatnana', 1, 0),
(4218, 312, 'Mollo Barat', 1, 0),
(4219, 312, 'Mollo Selatan', 1, 0),
(4220, 312, 'Mollo Tengah', 1, 0),
(4221, 312, 'Mollo Utara', 1, 0),
(4222, 312, 'Noebana', 1, 0),
(4223, 312, 'Noebeba', 1, 0),
(4224, 312, 'Nunbena', 1, 0),
(4225, 312, 'Nunkolo', 1, 0),
(4226, 312, 'Oenino', 1, 0),
(4227, 312, 'Polen', 1, 0),
(4228, 312, 'Santian', 1, 0),
(4229, 312, 'Tobu', 1, 0),
(4230, 312, 'Toianas', 1, 0),
(4231, 313, 'Biboki Anleu', 1, 0),
(4232, 313, 'Biboki Feotleu', 1, 0),
(4233, 313, 'Biboki Moenleu', 1, 0),
(4234, 313, 'Biboki Selatan', 1, 0),
(4235, 313, 'Biboki Tan Pah', 1, 0),
(4236, 313, 'Biboki Utara', 1, 0),
(4237, 313, 'Bikomi Nilulat', 1, 0),
(4238, 313, 'Bikomi Selatan', 1, 0),
(4239, 313, 'Bikomi Tengah', 1, 0),
(4240, 313, 'Bikomi Utara', 1, 0),
(4241, 313, 'Insana', 1, 0),
(4242, 313, 'Insana Barat', 1, 0),
(4243, 313, 'Insana Fafinesu', 1, 0),
(4244, 313, 'Insana Tengah', 1, 0),
(4245, 313, 'Insana Utara', 1, 0),
(4246, 313, 'Kota Kefamenanu', 1, 0),
(4247, 313, 'Miomaffo Barat', 1, 0),
(4248, 313, 'Miomaffo Tengah', 1, 0),
(4249, 313, 'Miomaffo Timur', 1, 0),
(4250, 313, 'Musi', 1, 0),
(4251, 313, 'Mutis', 1, 0),
(4252, 313, 'Naibenu', 1, 0),
(4253, 313, 'Noemuti', 1, 0),
(4254, 313, 'Noemuti Timur', 1, 0),
(4255, 314, 'Agats', 1, 0),
(4256, 314, 'Akat', 1, 0),
(4257, 314, 'Atsy', 1, 0),
(4258, 314, 'Fayit', 1, 0),
(4259, 314, 'Pantai Kasuari', 1, 0),
(4260, 314, 'Sawa Erma', 1, 0),
(4261, 314, 'Suator', 1, 0),
(4262, 315, 'Aimando Padaido', 1, 0),
(4263, 315, 'Andey (Andei)', 1, 0),
(4264, 315, 'Biak Barat', 1, 0),
(4265, 315, 'Biak Kota', 1, 0),
(4266, 315, 'Biak Timur', 1, 0),
(4267, 315, 'Biak Utara', 1, 0),
(4268, 315, 'Bondifuar', 1, 0),
(4269, 315, 'Bruyadori', 1, 0),
(4270, 315, 'Numfor Barat', 1, 0),
(4271, 315, 'Numfor Timur', 1, 0),
(4272, 315, 'Oridek', 1, 0),
(4273, 315, 'Orkeri', 1, 0),
(4274, 315, 'Padaido', 1, 0),
(4275, 315, 'Poiru', 1, 0),
(4276, 315, 'Samofa', 1, 0),
(4277, 315, 'Swandiwe', 1, 0),
(4278, 315, 'Warsa', 1, 0),
(4279, 315, 'Yawosi', 1, 0),
(4280, 315, 'Yendidori', 1, 0),
(4281, 316, 'Ambatkwi (Ambatkui)', 1, 0),
(4282, 316, 'Arimop', 1, 0),
(4283, 316, 'Bomakia', 1, 0),
(4284, 316, 'Firiwage', 1, 0),
(4285, 316, 'Fofi', 1, 0),
(4286, 316, 'Iniyandit', 1, 0),
(4287, 316, 'Jair', 1, 0),
(4288, 316, 'Kombut', 1, 0),
(4289, 316, 'Kouh', 1, 0),
(4290, 316, 'Mandobo', 1, 0),
(4291, 316, 'Manggelum', 1, 0),
(4292, 316, 'Mindiptana', 1, 0),
(4293, 316, 'Subur', 1, 0),
(4294, 316, 'Waropko', 1, 0),
(4295, 316, 'Yaniruma', 1, 0),
(4296, 317, 'Bowobado', 1, 0),
(4297, 317, 'Kapiraya', 1, 0),
(4298, 317, 'Tigi', 1, 0),
(4299, 317, 'Tigi Barat', 1, 0),
(4300, 317, 'Tigi Timur', 1, 0),
(4301, 318, 'Dogiyai', 1, 0),
(4302, 318, 'Kamu', 1, 0),
(4303, 318, 'Kamu Selatan', 1, 0),
(4304, 318, 'Kamu Timur', 1, 0),
(4305, 318, 'Kamu Utara (Ikrar/Ikrat)', 1, 0),
(4306, 318, 'Mapia', 1, 0),
(4307, 318, 'Mapia Barat', 1, 0),
(4308, 318, 'Mapia Tengah', 1, 0),
(4309, 318, 'Piyaiye (Sukikai)', 1, 0),
(4310, 318, 'Sukikai Selatan', 1, 0),
(4311, 319, 'Agisiga', 1, 0),
(4312, 319, 'Biandoga', 1, 0),
(4313, 319, 'Hitadipa', 1, 0),
(4314, 319, 'Homeo (Homeyo)', 1, 0),
(4315, 319, 'Sugapa', 1, 0),
(4316, 319, 'Wandai', 1, 0),
(4317, 321, 'Abepura', 1, 0),
(4318, 321, 'Heram', 1, 0),
(4319, 321, 'Jayapura Selatan', 1, 0),
(4320, 321, 'Jayapura Utara', 1, 0),
(4321, 321, 'Muara Tami', 1, 0),
(4322, 320, 'Airu', 1, 0),
(4323, 320, 'Demta', 1, 0),
(4324, 320, 'Depapre', 1, 0),
(4325, 320, 'Ebungfau (Ebungfa)', 1, 0),
(4326, 320, 'Gresi Selatan', 1, 0),
(4327, 320, 'Kaureh', 1, 0),
(4328, 320, 'Kemtuk', 1, 0),
(4329, 320, 'Kemtuk Gresi', 1, 0),
(4330, 320, 'Nimbokrang', 1, 0),
(4331, 320, 'Nimboran', 1, 0),
(4332, 320, 'Nimboran Timur (Nambluong)', 1, 0),
(4333, 320, 'Ravenirara', 1, 0),
(4334, 320, 'Sentani', 1, 0),
(4335, 320, 'Sentani Barat', 1, 0),
(4336, 320, 'Sentani Timur', 1, 0),
(4337, 320, 'Unurum Guay', 1, 0),
(4338, 320, 'Waibu', 1, 0),
(4339, 320, 'Yapsi', 1, 0),
(4340, 320, 'Yokari', 1, 0),
(4341, 322, 'Asologaima (Asalogaima)', 1, 0),
(4342, 322, 'Asolokobal', 1, 0),
(4343, 322, 'Bolakme', 1, 0),
(4344, 322, 'Hubikosi (Hobikosi)', 1, 0),
(4345, 322, 'Kurulu', 1, 0),
(4346, 322, 'Musatfak', 1, 0),
(4347, 322, 'Pelebaga', 1, 0),
(4348, 322, 'Poga', 1, 0),
(4349, 322, 'Walelagama', 1, 0),
(4350, 322, 'Wamena', 1, 0),
(4351, 322, 'Wollo (Wolo)', 1, 0),
(4352, 322, 'Yalengga', 1, 0),
(4353, 323, 'Arso', 1, 0),
(4354, 323, 'Arso Timur', 1, 0),
(4355, 323, 'Senggi', 1, 0),
(4356, 323, 'Skamto (Skanto)', 1, 0),
(4357, 323, 'Towe (Towe Hitam)', 1, 0),
(4358, 323, 'Waris', 1, 0),
(4359, 323, 'Web', 1, 0),
(4360, 324, 'Angkaisera', 1, 0),
(4361, 324, 'Kepulauan Ambai', 1, 0),
(4362, 324, 'Kosiwo', 1, 0),
(4363, 324, 'Poom', 1, 0),
(4364, 324, 'Raimbawi', 1, 0),
(4365, 324, 'Teluk Ampimoi', 1, 0),
(4366, 324, 'Windesi', 1, 0),
(4367, 324, 'Wonawa', 1, 0),
(4368, 324, 'Yapen Barat', 1, 0),
(4369, 324, 'Yapen Selatan', 1, 0),
(4370, 324, 'Yapen Timur', 1, 0),
(4371, 324, 'Yapen Utara', 1, 0),
(4372, 325, 'Balingga', 1, 0),
(4373, 325, 'Dimba', 1, 0),
(4374, 325, 'Gamelia', 1, 0),
(4375, 325, 'Kuyawage', 1, 0),
(4376, 325, 'Makki (Maki)', 1, 0),
(4377, 325, 'Malagaineri (Malagineri)', 1, 0),
(4378, 325, 'Pirime', 1, 0),
(4379, 325, 'Tiom', 1, 0),
(4380, 325, 'Tiomneri', 1, 0),
(4381, 326, 'Benuki', 1, 0),
(4382, 326, 'Mamberamo Hilir/Ilir', 1, 0),
(4383, 326, 'Mamberamo Hulu/Ulu', 1, 0),
(4384, 326, 'Mamberamo Tengah', 1, 0),
(4385, 326, 'Mamberamo Tengah Timur', 1, 0),
(4386, 326, 'Rofaer (Rufaer)', 1, 0),
(4387, 326, 'Sawai', 1, 0),
(4388, 326, 'Waropen Atas', 1, 0),
(4389, 327, 'Eragayam', 1, 0),
(4390, 327, 'Ilugwa', 1, 0),
(4391, 327, 'Kelila', 1, 0),
(4392, 327, 'Kobakma', 1, 0),
(4393, 327, 'Megabilis (Megambilis)', 1, 0),
(4394, 328, 'Assue', 1, 0),
(4395, 328, 'Citakmitak', 1, 0),
(4396, 328, 'Edera', 1, 0),
(4397, 328, 'Haju', 1, 0),
(4398, 328, 'Nambioman Bapai (Mambioman)', 1, 0),
(4399, 328, 'Obaa', 1, 0),
(4400, 329, 'Animha', 1, 0),
(4401, 329, 'Eligobel', 1, 0),
(4402, 329, 'Ilyawab', 1, 0),
(4403, 329, 'Jagebob', 1, 0),
(4404, 329, 'Kaptel', 1, 0),
(4405, 329, 'Kimaam', 1, 0),
(4406, 329, 'Kurik', 1, 0),
(4407, 329, 'Malind', 1, 0),
(4408, 329, 'Merauke', 1, 0),
(4409, 329, 'Muting', 1, 0),
(4410, 329, 'Naukenjerai', 1, 0),
(4411, 329, 'Ngguti (Nggunti)', 1, 0),
(4412, 329, 'Okaba', 1, 0),
(4413, 329, 'Semangga', 1, 0),
(4414, 329, 'Sota', 1, 0),
(4415, 329, 'Tabonji', 1, 0),
(4416, 329, 'Tanah Miring', 1, 0),
(4417, 329, 'Tubang', 1, 0),
(4418, 329, 'Ulilin', 1, 0),
(4419, 329, 'Waan', 1, 0),
(4420, 330, 'Agimuga', 1, 0),
(4421, 330, 'Jila', 1, 0),
(4422, 330, 'Jita', 1, 0),
(4423, 330, 'Kuala Kencana', 1, 0),
(4424, 330, 'Mimika Barat (Mibar)', 1, 0),
(4425, 330, 'Mimika Barat Jauh', 1, 0),
(4426, 330, 'Mimika Barat Tengah', 1, 0),
(4427, 330, 'Mimika Baru', 1, 0),
(4428, 330, 'Mimika Timur', 1, 0),
(4429, 330, 'Mimika Timur Jauh', 1, 0),
(4430, 330, 'Mimika Timur Tengah', 1, 0),
(4431, 330, 'Tembagapura', 1, 0),
(4432, 331, 'Makimi', 1, 0),
(4433, 331, 'Nabire', 1, 0),
(4434, 331, 'Nabire Barat', 1, 0),
(4435, 331, 'Napan', 1, 0),
(4436, 331, 'Siriwo', 1, 0),
(4437, 331, 'Teluk Kimi', 1, 0),
(4438, 331, 'Teluk Umar', 1, 0),
(4439, 331, 'Uwapa', 1, 0),
(4440, 331, 'Wanggar', 1, 0),
(4441, 331, 'Wapoga', 1, 0),
(4442, 331, 'Yaro (Yaro Kabisay)', 1, 0),
(4443, 331, 'Yaur', 1, 0),
(4444, 332, 'Gearek', 1, 0),
(4445, 332, 'Geselma (Geselema)', 1, 0),
(4446, 332, 'Kenyam', 1, 0),
(4447, 332, 'Mapenduma', 1, 0),
(4448, 332, 'Mbua (Mbuga)', 1, 0),
(4449, 332, 'Mugi', 1, 0),
(4450, 332, 'Wosak', 1, 0),
(4451, 332, 'Yigi', 1, 0),
(4452, 333, 'Aradide', 1, 0),
(4453, 333, 'Bibida', 1, 0),
(4454, 333, 'Bogobaida', 1, 0),
(4455, 333, 'Dumadama', 1, 0),
(4456, 333, 'Ekadide', 1, 0),
(4457, 333, 'Kebo', 1, 0),
(4458, 333, 'Paniai Barat', 1, 0),
(4459, 333, 'Paniai Timur', 1, 0),
(4460, 333, 'Siriwo', 1, 0),
(4461, 333, 'Yatamo', 1, 0),
(4462, 334, 'Aboy', 1, 0),
(4463, 334, 'Batom', 1, 0),
(4464, 334, 'Bime', 1, 0),
(4465, 334, 'Borme', 1, 0),
(4466, 334, 'Iwur (Okiwur)', 1, 0),
(4467, 334, 'Kiwirok', 1, 0),
(4468, 334, 'Kiwirok Timur', 1, 0),
(4469, 334, 'Okbibab', 1, 0),
(4470, 334, 'Oksibil', 1, 0),
(4471, 334, 'Pepera', 1, 0),
(4472, 335, 'Agadugume', 1, 0),
(4473, 335, 'Beoga', 1, 0),
(4474, 335, 'Doufu', 1, 0),
(4475, 335, 'Gome', 1, 0),
(4476, 335, 'Ilaga', 1, 0),
(4477, 335, 'Pogoma', 1, 0),
(4478, 335, 'Sinak', 1, 0),
(4479, 335, 'Wangbe', 1, 0),
(4480, 336, 'Fawi', 1, 0),
(4481, 336, 'Ilu', 1, 0),
(4482, 336, 'Jigonikme', 1, 0),
(4483, 336, 'Mewoluk (Mewulok)', 1, 0),
(4484, 336, 'Mulia', 1, 0),
(4485, 336, 'Tingginambut', 1, 0),
(4486, 336, 'Torere', 1, 0),
(4487, 336, 'Yamo', 1, 0),
(4488, 337, 'Apawer Hulu', 1, 0),
(4489, 337, 'Bonggo', 1, 0),
(4490, 337, 'Bonggo Timur', 1, 0),
(4491, 337, 'Pantai Barat', 1, 0),
(4492, 337, 'Pantai Timur', 1, 0),
(4493, 337, 'Pantai Timur Barat', 1, 0),
(4494, 337, 'Sarmi', 1, 0),
(4495, 337, 'Sarmi Selatan', 1, 0),
(4496, 337, 'Sarmi Timur', 1, 0),
(4497, 337, 'Tor Atas', 1, 0),
(4498, 338, 'Kepulauan Aruri', 1, 0),
(4499, 338, 'Supiori Barat', 1, 0),
(4500, 338, 'Supiori Selatan', 1, 0),
(4501, 338, 'Supiori Timur', 1, 0),
(4502, 338, 'Supiori Utara', 1, 0),
(4503, 339, 'Airgaram', 1, 0),
(4504, 339, 'Bewani', 1, 0),
(4505, 339, 'Bokondini', 1, 0),
(4506, 339, 'Bokoneri', 1, 0),
(4507, 339, 'Dorman', 1, 0),
(4508, 339, 'Dow', 1, 0),
(4509, 339, 'Dundu (Ndundu)', 1, 0),
(4510, 339, 'Egiam', 1, 0),
(4511, 339, 'Geya', 1, 0),
(4512, 339, 'Gilubandu (Gilumbandu/Gilimbandu)', 1, 0),
(4513, 339, 'Goyage', 1, 0),
(4514, 339, 'Gundagi (Gudage)', 1, 0),
(4515, 339, 'Kamboneri', 1, 0),
(4516, 339, 'Kanggime (Kanggima )', 1, 0),
(4517, 339, 'Karubaga', 1, 0),
(4518, 339, 'Kembu', 1, 0),
(4519, 339, 'Kondaga (Konda)', 1, 0),
(4520, 339, 'Kuari', 1, 0),
(4521, 339, 'Kubu', 1, 0),
(4522, 339, 'Nabunage', 1, 0),
(4523, 339, 'Nelawi', 1, 0),
(4524, 339, 'Numba', 1, 0),
(4525, 339, 'Nunggawi (Munggawi)', 1, 0),
(4526, 339, 'Panaga', 1, 0),
(4527, 339, 'Poganeri', 1, 0),
(4528, 339, 'Sbey', 1, 0),
(4529, 339, 'Tagineri', 1, 0),
(4530, 339, 'Timori', 1, 0),
(4531, 339, 'Umagi', 1, 0),
(4532, 339, 'Wari (Taiyeve)', 1, 0),
(4533, 339, 'Wina', 1, 0),
(4534, 339, 'Wonoki (Woniki)', 1, 0),
(4535, 339, 'Wunin (Wumin)', 1, 0),
(4536, 339, 'Yuneri', 1, 0),
(4537, 340, 'Inggerus', 1, 0),
(4538, 340, 'Kirihi', 1, 0),
(4539, 340, 'Masirei', 1, 0),
(4540, 340, 'Risei Sayati', 1, 0),
(4541, 340, 'Ureifasei', 1, 0),
(4542, 340, 'Waropen Bawah', 1, 0),
(4543, 341, 'Kabianggama (Kabianggema)', 1, 0),
(4544, 341, 'Kayo', 1, 0),
(4545, 341, 'Kona', 1, 0),
(4546, 341, 'Koropun (Korupun)', 1, 0),
(4547, 341, 'Kosarek', 1, 0),
(4548, 341, 'Kurima', 1, 0),
(4549, 341, 'Kwelemdua (Kwelamdua)', 1, 0),
(4550, 341, 'Kwikma', 1, 0),
(4551, 341, 'Langda', 1, 0),
(4552, 341, 'Lolat', 1, 0),
(4553, 341, 'Mugi', 1, 0),
(4554, 341, 'Musaik', 1, 0),
(4555, 341, 'Nalca', 1, 0),
(4556, 341, 'Ninia', 1, 0),
(4557, 341, 'Nipsan', 1, 0),
(4558, 341, 'Obio', 1, 0),
(4559, 341, 'Panggema', 1, 0),
(4560, 341, 'Pasema', 1, 0),
(4561, 341, 'Pronggoli (Proggoli)', 1, 0),
(4562, 341, 'Puldama', 1, 0),
(4563, 341, 'Samenage', 1, 0),
(4564, 341, 'Sela', 1, 0),
(4565, 341, 'Seredela (Seredala)', 1, 0),
(4566, 341, 'Silimo', 1, 0),
(4567, 341, 'Soba', 1, 0),
(4568, 341, 'Sobaham', 1, 0),
(4569, 341, 'Soloikma', 1, 0),
(4570, 341, 'Sumo', 1, 0),
(4571, 341, 'Suntamon', 1, 0),
(4572, 341, 'Suru Suru', 1, 0),
(4573, 341, 'Talambo', 1, 0),
(4574, 341, 'Tangma', 1, 0),
(4575, 341, 'Ubahak', 1, 0),
(4576, 341, 'Ubalihi', 1, 0),
(4577, 341, 'Ukha', 1, 0),
(4578, 341, 'Walma', 1, 0),
(4579, 341, 'Werima', 1, 0),
(4580, 341, 'Wusuma', 1, 0),
(4581, 341, 'Yahuliambut', 1, 0),
(4582, 341, 'Yogosem', 1, 0),
(4583, 342, 'Amuma', 1, 0),
(4584, 342, 'Anggruk', 1, 0),
(4585, 342, 'Bomela', 1, 0),
(4586, 342, 'Dekai', 1, 0),
(4587, 342, 'Dirwemna (Diruwena)', 1, 0),
(4588, 342, 'Duram', 1, 0),
(4589, 342, 'Endomen', 1, 0),
(4590, 342, 'Hereapini (Hereanini)', 1, 0),
(4591, 342, 'Hilipuk', 1, 0),
(4592, 342, 'Hogio (Hugio)', 1, 0),
(4593, 342, 'Holuon', 1, 0),
(4594, 342, 'Abenaho', 1, 0),
(4595, 342, 'Apalapsili', 1, 0),
(4596, 342, 'Benawa', 1, 0),
(4597, 342, 'Elelim', 1, 0),
(4598, 342, 'Welarek', 1, 0),
(4599, 343, 'Bombarai (Bomberay)', 1, 0),
(4600, 343, 'Fakfak', 1, 0),
(4601, 343, 'Fakfak Barat', 1, 0),
(4602, 343, 'Fakfak Tengah', 1, 0),
(4603, 343, 'Fakfak Timur', 1, 0),
(4604, 343, 'Karas', 1, 0),
(4605, 343, 'Kokas', 1, 0),
(4606, 343, 'Kramongmongga (Kramamongga)', 1, 0),
(4607, 343, 'Teluk Patipi', 1, 0),
(4608, 344, 'Buruway', 1, 0),
(4609, 344, 'Kaimana', 1, 0),
(4610, 344, 'Kambraw (Kamberau)', 1, 0),
(4611, 344, 'Teluk Arguni Atas', 1, 0),
(4612, 344, 'Teluk Etna', 1, 0),
(4613, 344, 'Yamor', 1, 0),
(4614, 344, 'Yerusi (Teluk Arguni Bawah)', 1, 0),
(4615, 345, 'Manokwari Barat', 1, 0),
(4616, 345, 'Manokwari Selatan', 1, 0),
(4617, 345, 'Manokwari Timur', 1, 0),
(4618, 345, 'Manokwari Utara', 1, 0),
(4619, 345, 'Masni', 1, 0),
(4620, 345, 'Prafi', 1, 0),
(4621, 345, 'Sidey', 1, 0),
(4622, 345, 'Tanah Rubuh', 1, 0),
(4623, 345, 'Warmare', 1, 0),
(4624, 346, 'Dataran Isim', 1, 0),
(4625, 346, 'Momi Waren', 1, 0),
(4626, 346, 'Neney (Nenei)', 1, 0),
(4627, 346, 'Oransbari', 1, 0),
(4628, 346, 'Ransiki', 1, 0),
(4629, 346, 'Tahota (Tohota)', 1, 0),
(4630, 347, 'Aifat', 1, 0),
(4631, 347, 'Aifat Timur', 1, 0),
(4632, 347, 'Aitinyo', 1, 0),
(4633, 347, 'Ayamaru', 1, 0),
(4634, 347, 'Ayamaru Utara', 1, 0),
(4635, 347, 'Mare', 1, 0),
(4636, 348, 'Anggi', 1, 0),
(4637, 348, 'Anggi Gida', 1, 0),
(4638, 348, 'Catubouw', 1, 0),
(4639, 348, 'Didohu', 1, 0),
(4640, 348, 'Hingk', 1, 0),
(4641, 348, 'Membey', 1, 0),
(4642, 348, 'Menyambouw (Minyambouw)', 1, 0),
(4643, 348, 'Sururey', 1, 0),
(4644, 348, 'Taige', 1, 0),
(4645, 348, 'Testega', 1, 0),
(4646, 349, 'Kepulauan Ayau', 1, 0),
(4647, 349, 'Kofiau', 1, 0),
(4648, 349, 'Meos Mansar', 1, 0),
(4649, 349, 'Misool Barat', 1, 0),
(4650, 349, 'Misool Selatan', 1, 0),
(4651, 349, 'Misool Timur', 1, 0),
(4652, 349, 'Misool Utara', 1, 0),
(4653, 349, 'Salawati Utara (Samate)', 1, 0),
(4654, 349, 'Selat Sagawin', 1, 0),
(4655, 349, 'Teluk Mayalibit', 1, 0),
(4656, 349, 'Waigeo Barat', 1, 0),
(4657, 349, 'Waigeo Barat Kepulauan', 1, 0),
(4658, 349, 'Waigeo Selatan', 1, 0),
(4659, 349, 'Waigeo Timur', 1, 0),
(4660, 349, 'Waigeo Utara', 1, 0),
(4661, 349, 'Warwabomi', 1, 0),
(4662, 351, 'Sorong', 1, 0),
(4663, 351, 'Sorong Barat', 1, 0),
(4664, 351, 'Sorong Kepulauan', 1, 0),
(4665, 351, 'Sorong Timur', 1, 0),
(4666, 351, 'Sorong Utara', 1, 0),
(4667, 350, 'Aimas', 1, 0),
(4668, 350, 'Beraur', 1, 0),
(4669, 350, 'Klamono', 1, 0),
(4670, 350, 'Makbon', 1, 0),
(4671, 350, 'Mayamuk', 1, 0),
(4672, 350, 'Salawati', 1, 0),
(4673, 350, 'Salawati Selatan', 1, 0),
(4674, 350, 'Sayosa', 1, 0),
(4675, 350, 'Seget', 1, 0),
(4676, 350, 'Segun', 1, 0),
(4677, 352, 'Inanwatan (Inawatan)', 1, 0),
(4678, 352, 'Kais (Matemani Kais)', 1, 0),
(4679, 352, 'Kokoda', 1, 0),
(4680, 352, 'Moswaren', 1, 0),
(4681, 352, 'Sawiat', 1, 0),
(4682, 352, 'Seremuk', 1, 0),
(4683, 352, 'Teminabuan', 1, 0),
(4684, 352, 'Wayer', 1, 0),
(4685, 353, 'Abun', 1, 0),
(4686, 353, 'Amberbaken', 1, 0),
(4687, 353, 'Fef (Peef)', 1, 0),
(4688, 353, 'Kebar', 1, 0),
(4689, 353, 'Miyah (Meyah)', 1, 0),
(4690, 353, 'Moraid', 1, 0),
(4691, 353, 'Mubrani', 1, 0),
(4692, 353, 'Sausapor', 1, 0),
(4693, 353, 'Senopi', 1, 0),
(4694, 353, 'Yembun', 1, 0),
(4695, 354, 'Aranday', 1, 0),
(4696, 354, 'Aroba', 1, 0),
(4697, 354, 'Babo', 1, 0),
(4698, 354, 'Bintuni', 1, 0),
(4699, 354, 'Biscoop', 1, 0),
(4700, 354, 'Dataran Beimes', 1, 0),
(4701, 354, 'Fafurwar (Irorutu)', 1, 0),
(4702, 354, 'Kaitaro', 1, 0),
(4703, 354, 'Kamundan', 1, 0),
(4704, 354, 'Kuri', 1, 0),
(4705, 354, 'Manimeri', 1, 0),
(4706, 354, 'Masyeta', 1, 0),
(4707, 354, 'Mayado', 1, 0),
(4708, 354, 'Merdey', 1, 0),
(4709, 354, 'Moskona Barat', 1, 0),
(4710, 354, 'Moskona Selatan', 1, 0),
(4711, 354, 'Moskona Timur', 1, 0),
(4712, 354, 'Moskona Utara', 1, 0),
(4713, 354, 'Sumuri (Simuri)', 1, 0),
(4714, 354, 'Tembuni', 1, 0),
(4715, 354, 'Tomu', 1, 0),
(4716, 354, 'Tuhiba', 1, 0),
(4717, 354, 'Wamesa (Idoor)', 1, 0),
(4718, 354, 'Weriagar', 1, 0),
(4719, 355, 'Rumberpon', 1, 0),
(4720, 355, 'Wamesa', 1, 0),
(4721, 355, 'Wasior', 1, 0),
(4722, 355, 'Wasior Barat', 1, 0),
(4723, 355, 'Wasior Selatan', 1, 0),
(4724, 355, 'Wasior Utara', 1, 0),
(4725, 355, 'Windesi', 1, 0),
(4726, 356, 'Bantan', 1, 0),
(4727, 356, 'Bengkalis', 1, 0),
(4728, 356, 'Bukit Batu', 1, 0),
(4729, 356, 'Mandau', 1, 0),
(4730, 356, 'Pinggir', 1, 0),
(4731, 356, 'Rupat', 1, 0),
(4732, 356, 'Rupat Utara', 1, 0),
(4733, 356, 'Siak Kecil', 1, 0),
(4734, 357, 'Bukit Kapur', 1, 0),
(4735, 357, 'Dumai Barat', 1, 0),
(4736, 357, 'Dumai Timur', 1, 0),
(4737, 357, 'Medang Kampai', 1, 0),
(4738, 357, 'Sungai Sembilan', 1, 0),
(4739, 358, 'Batang Tuaka', 1, 0),
(4740, 358, 'Concong', 1, 0),
(4741, 358, 'Enok', 1, 0),
(4742, 358, 'Gaung', 1, 0),
(4743, 358, 'Gaung Anak Serka', 1, 0),
(4744, 358, 'Kateman', 1, 0),
(4745, 358, 'Kempas', 1, 0),
(4746, 358, 'Kemuning', 1, 0),
(4747, 358, 'Keritang', 1, 0),
(4748, 358, 'Kuala Indragiri', 1, 0),
(4749, 358, 'Mandah', 1, 0),
(4750, 358, 'Pelangiran', 1, 0),
(4751, 358, 'Pulau Burung', 1, 0),
(4752, 358, 'Reteh', 1, 0),
(4753, 358, 'Sungai Batang', 1, 0),
(4754, 358, 'Tanah Merah', 1, 0),
(4755, 358, 'Teluk Belengkong', 1, 0),
(4756, 358, 'Tembilahan', 1, 0),
(4757, 358, 'Tembilahan Hulu', 1, 0),
(4758, 358, 'Tempuling', 1, 0),
(4759, 359, 'Batang Cenaku', 1, 0),
(4760, 359, 'Batang Gansal', 1, 0),
(4761, 359, 'Batang Peranap', 1, 0),
(4762, 359, 'Kelayang', 1, 0),
(4763, 359, 'Kuala Cenaku', 1, 0),
(4764, 359, 'Lirik', 1, 0),
(4765, 359, 'Lubuk Batu Jaya', 1, 0),
(4766, 359, 'Pasir Penyu', 1, 0),
(4767, 359, 'Peranap', 1, 0),
(4768, 359, 'Rakit Kulim', 1, 0),
(4769, 359, 'Rengat', 1, 0),
(4770, 359, 'Rengat Barat', 1, 0),
(4771, 359, 'Seberida', 1, 0),
(4772, 359, 'Sungai Lala', 1, 0),
(4773, 360, 'Bangkinang', 1, 0),
(4774, 360, 'Bangkinang Barat', 1, 0),
(4775, 360, 'Bangkinang Seberang', 1, 0),
(4776, 360, 'Gunung Sahilan', 1, 0),
(4777, 360, 'Kampar', 1, 0),
(4778, 360, 'Kampar Kiri', 1, 0),
(4779, 360, 'Kampar Kiri Hilir', 1, 0),
(4780, 360, 'Kampar Kiri Hulu', 1, 0),
(4781, 360, 'Kampar Kiri Tengah', 1, 0),
(4782, 360, 'Kampar Timur', 1, 0),
(4783, 360, 'Kampar Utara', 1, 0),
(4784, 360, 'Perhentian Raja', 1, 0),
(4785, 360, 'Rumbio Jaya', 1, 0),
(4786, 360, 'Salo', 1, 0),
(4787, 360, 'Siak Hulu', 1, 0),
(4788, 360, 'Tambang', 1, 0),
(4789, 360, 'Tapung', 1, 0),
(4790, 360, 'Tapung Hilir', 1, 0),
(4791, 360, 'Tapung Hulu', 1, 0),
(4792, 360, 'XIII Koto Kampar', 1, 0),
(4793, 361, 'Merbau', 1, 0),
(4794, 361, 'Rangsang', 1, 0),
(4795, 361, 'Rangsang Barat', 1, 0),
(4796, 361, 'Tebing Tinggi', 1, 0),
(4797, 361, 'Tebing Tinggi Barat', 1, 0),
(4798, 362, 'Benai', 1, 0),
(4799, 362, 'Cerenti', 1, 0),
(4800, 362, 'Gunung Toar', 1, 0),
(4801, 362, 'Hulu Kuantan', 1, 0),
(4802, 362, 'Inuman', 1, 0),
(4803, 362, 'Kuantan Hilir', 1, 0),
(4804, 362, 'Kuantan Mudik', 1, 0),
(4805, 362, 'Kuantan Tengah', 1, 0),
(4806, 362, 'Logas Tanah Darat', 1, 0),
(4807, 362, 'Pangean', 1, 0),
(4808, 362, 'Singingi', 1, 0),
(4809, 362, 'Singingi Hilir', 1, 0),
(4810, 363, 'Bukit Raya', 1, 0),
(4811, 363, 'Lima Puluh', 1, 0),
(4812, 363, 'Marpoyan Damai', 1, 0),
(4813, 363, 'Payung Sekaki', 1, 0),
(4814, 363, 'Pekanbaru Kota', 1, 0),
(4815, 363, 'Rumbai', 1, 0),
(4816, 363, 'Rumbai Pesisir', 1, 0),
(4817, 363, 'Sail', 1, 0),
(4818, 363, 'Senapelan', 1, 0),
(4819, 363, 'Sukajadi', 1, 0),
(4820, 363, 'Tampan', 1, 0),
(4821, 363, 'Tenayan Raya', 1, 0),
(4822, 364, 'Bandar Petalangan', 1, 0),
(4823, 364, 'Bandar Sei Kijang', 1, 0),
(4824, 364, 'Bunut', 1, 0),
(4825, 364, 'Kerumutan', 1, 0),
(4826, 364, 'Kuala Kampar', 1, 0),
(4827, 364, 'Langgam', 1, 0),
(4828, 364, 'Pangkalan Kerinci', 1, 0),
(4829, 364, 'Pangkalan Kuras', 1, 0),
(4830, 364, 'Pangkalan Lesung', 1, 0),
(4831, 364, 'Pelalawan', 1, 0),
(4832, 364, 'Teluk Meranti', 1, 0),
(4833, 364, 'Ukui', 1, 0),
(4834, 365, 'Bagan Sinembah', 1, 0),
(4835, 365, 'Bangko', 1, 0),
(4836, 365, 'Bangko Pusaka (Pusako)', 1, 0),
(4837, 365, 'Batu Hampar', 1, 0),
(4838, 365, 'Kubu', 1, 0),
(4839, 365, 'Pasir Limau Kapas', 1, 0),
(4840, 365, 'Pujud', 1, 0),
(4841, 365, 'Rantau Kopar', 1, 0),
(4842, 365, 'Rimba Melintang', 1, 0),
(4843, 365, 'Simpang Kanan', 1, 0),
(4844, 365, 'Sinaboi (Senaboi)', 1, 0),
(4845, 365, 'Tanah Putih', 1, 0),
(4846, 365, 'Tanah Putih Tanjung Melawan', 1, 0),
(4847, 366, 'Bangun Purba', 1, 0),
(4848, 366, 'Bonai Darussalam', 1, 0),
(4849, 366, 'Kabun', 1, 0),
(4850, 366, 'Kepenuhan', 1, 0),
(4851, 366, 'Kepenuhan Hulu', 1, 0),
(4852, 366, 'Kunto Darussalam', 1, 0),
(4853, 366, 'Pagaran Tapah Darussalam', 1, 0),
(4854, 366, 'Pendalian V Koto', 1, 0),
(4855, 366, 'Rambah', 1, 0),
(4856, 366, 'Rambah Hilir', 1, 0),
(4857, 366, 'Rambah Samo', 1, 0),
(4858, 366, 'Rokan IV Koto', 1, 0),
(4859, 366, 'Tambusai', 1, 0),
(4860, 366, 'Tambusai Utara', 1, 0),
(4861, 366, 'Tandun', 1, 0),
(4862, 366, 'Ujung Batu', 1, 0),
(4863, 367, 'Bunga Raya', 1, 0),
(4864, 367, 'Dayun', 1, 0),
(4865, 367, 'Kandis', 1, 0),
(4866, 367, 'Kerinci Kanan', 1, 0),
(4867, 367, 'Koto Gasib', 1, 0),
(4868, 367, 'Lubuk Dalam', 1, 0),
(4869, 367, 'Mempura', 1, 0),
(4870, 367, 'Minas', 1, 0),
(4871, 367, 'Pusako', 1, 0),
(4872, 367, 'Sabak Auh', 1, 0),
(4873, 367, 'Siak', 1, 0),
(4874, 367, 'Sungai Apit', 1, 0),
(4875, 367, 'Sungai Mandau', 1, 0),
(4876, 367, 'Tualang', 1, 0),
(4877, 368, 'Banggae', 1, 0),
(4878, 368, 'Banggae Timur', 1, 0),
(4879, 368, 'Malunda', 1, 0),
(4880, 368, 'Pamboang', 1, 0),
(4881, 368, 'Sendana', 1, 0),
(4882, 368, 'Tammeredo Sendana', 1, 0),
(4883, 368, 'Tubo (Tubo Sendana)', 1, 0),
(4884, 368, 'Ulumunda', 1, 0),
(4885, 369, 'Aralle (Arrale)', 1, 0),
(4886, 369, 'Balla', 1, 0),
(4887, 369, 'Bambang', 1, 0),
(4888, 369, 'Mamasa', 1, 0),
(4889, 369, 'Mambi', 1, 0),
(4890, 369, 'Messawa', 1, 0),
(4891, 369, 'Nosu', 1, 0),
(4892, 369, 'Pana', 1, 0),
(4893, 369, 'Rantebulahan Timur', 1, 0),
(4894, 369, 'Sesena Padang', 1, 0),
(4895, 369, 'Sumarorong', 1, 0),
(4896, 369, 'Tabang', 1, 0),
(4897, 369, 'Tabulahan', 1, 0),
(4898, 369, 'Tanduk Kalua', 1, 0),
(4899, 369, 'Tawalian', 1, 0),
(4900, 370, 'Bonehau', 1, 0),
(4901, 370, 'Budong-Budong', 1, 0),
(4902, 370, 'Kalukku', 1, 0),
(4903, 370, 'Kalumpang', 1, 0),
(4904, 370, 'Karossa', 1, 0),
(4905, 370, 'Mamuju', 1, 0),
(4906, 370, 'Pangale', 1, 0),
(4907, 370, 'Papalang', 1, 0),
(4908, 370, 'Sampaga', 1, 0),
(4909, 370, 'Simboro dan Kepulauan', 1, 0),
(4910, 370, 'Tapalang', 1, 0),
(4911, 370, 'Tapalang Barat', 1, 0),
(4912, 370, 'Tobadak', 1, 0),
(4913, 370, 'Tommo', 1, 0),
(4914, 370, 'Topoyo', 1, 0),
(4915, 371, 'Bambaira', 1, 0),
(4916, 371, 'Bambalamotu', 1, 0),
(4917, 371, 'Baras', 1, 0),
(4918, 371, 'Bulu Taba', 1, 0),
(4919, 371, 'Dapurang', 1, 0),
(4920, 371, 'Duripoku', 1, 0),
(4921, 371, 'Pasangkayu', 1, 0),
(4922, 371, 'Pedongga', 1, 0),
(4923, 371, 'Sarjo', 1, 0),
(4924, 371, 'Sarudu', 1, 0),
(4925, 371, 'Tikke Raya', 1, 0),
(4926, 372, 'Alu (Allu)', 1, 0),
(4927, 372, 'Anreapi', 1, 0),
(4928, 372, 'Balanipa', 1, 0),
(4929, 372, 'Binuang', 1, 0),
(4930, 372, 'Bulo', 1, 0),
(4931, 372, 'Campalagian', 1, 0),
(4932, 372, 'Limboro', 1, 0),
(4933, 372, 'Luyo', 1, 0),
(4934, 372, 'Mapilli', 1, 0),
(4935, 372, 'Matakali', 1, 0),
(4936, 372, 'Matangnga', 1, 0),
(4937, 372, 'Polewali', 1, 0),
(4938, 372, 'Tapango', 1, 0),
(4939, 372, 'Tinambung', 1, 0),
(4940, 372, 'Tubbi Taramanu (Tutallu)', 1, 0),
(4941, 372, 'Wonomulyo', 1, 0),
(4942, 373, 'Bantaeng', 1, 0),
(4943, 373, 'Bissappu', 1, 0),
(4944, 373, 'Eremerasa', 1, 0),
(4945, 373, 'Gantarang Keke (Gantareng Keke)', 1, 0),
(4946, 373, 'Pajukukang', 1, 0),
(4947, 373, 'Sinoa', 1, 0),
(4948, 373, 'Tompobulu', 1, 0),
(4949, 373, 'Uluere', 1, 0),
(4950, 374, 'Balusu', 1, 0),
(4951, 374, 'Barru', 1, 0),
(4952, 374, 'Mallusetasi', 1, 0),
(4953, 374, 'Pujananting', 1, 0),
(4954, 374, 'Soppeng Riaja', 1, 0),
(4955, 374, 'Tanete Riaja', 1, 0),
(4956, 374, 'Tanete Rilau', 1, 0),
(4957, 375, 'Ajangale', 1, 0),
(4958, 375, 'Amali', 1, 0),
(4959, 375, 'Awangpone', 1, 0),
(4960, 375, 'Barebbo', 1, 0),
(4961, 375, 'Bengo', 1, 0),
(4962, 375, 'Bontocani', 1, 0),
(4963, 375, 'Cenrana', 1, 0),
(4964, 375, 'Cina', 1, 0),
(4965, 375, 'Dua Boccoe', 1, 0),
(4966, 375, 'Kahu', 1, 0),
(4967, 375, 'Kajuara', 1, 0),
(4968, 375, 'Lamuru', 1, 0),
(4969, 375, 'Lappariaja', 1, 0),
(4970, 375, 'Libureng', 1, 0),
(4971, 375, 'Mare', 1, 0),
(4972, 375, 'Palakka', 1, 0),
(4973, 375, 'Patimpeng', 1, 0),
(4974, 375, 'Ponre', 1, 0),
(4975, 375, 'Salomekko', 1, 0),
(4976, 375, 'Sibulue', 1, 0),
(4977, 375, 'Tanete Riattang', 1, 0),
(4978, 375, 'Tanete Riattang Barat', 1, 0),
(4979, 375, 'Tanete Riattang Timur', 1, 0),
(4980, 375, 'Tellu Limpoe', 1, 0),
(4981, 375, 'Tellu Siattinge', 1, 0),
(4982, 375, 'Tonra', 1, 0);
INSERT INTO `city` (`city`, `zone_id`, `name`, `status`, `sort_order`) VALUES
(4983, 375, 'Ulaweng', 1, 0),
(4984, 376, 'Bonto Bahari', 1, 0),
(4985, 376, 'Bontotiro', 1, 0),
(4986, 376, 'Bulukumba (Bulukumpa)', 1, 0),
(4987, 376, 'Gantarang (Gangking)', 1, 0),
(4988, 376, 'Hero Lange-Lange (Herlang)', 1, 0),
(4989, 376, 'Kajang', 1, 0),
(4990, 376, 'Kindang', 1, 0),
(4991, 376, 'Rilau Ale', 1, 0),
(4992, 376, 'Ujung Bulu', 1, 0),
(4993, 376, 'Ujung Loe', 1, 0),
(4994, 377, 'Alla', 1, 0),
(4995, 377, 'Anggeraja', 1, 0),
(4996, 377, 'Baraka', 1, 0),
(4997, 377, 'Baroko', 1, 0),
(4998, 377, 'Bungin', 1, 0),
(4999, 377, 'Buntu Batu', 1, 0),
(5000, 377, 'Cendana', 1, 0),
(5001, 377, 'Curio', 1, 0),
(5002, 377, 'Enrekang', 1, 0),
(5003, 377, 'Maiwa', 1, 0),
(5004, 377, 'Malua', 1, 0),
(5005, 377, 'Masalle', 1, 0),
(5006, 378, 'Bajeng', 1, 0),
(5007, 378, 'Bajeng Barat', 1, 0),
(5008, 378, 'Barombong', 1, 0),
(5009, 378, 'Biringbulu', 1, 0),
(5010, 378, 'Bontolempangang', 1, 0),
(5011, 378, 'Bontomarannu', 1, 0),
(5012, 378, 'Bontonompo', 1, 0),
(5013, 378, 'Bontonompo Selatan', 1, 0),
(5014, 378, 'Bungaya', 1, 0),
(5015, 378, 'Manuju', 1, 0),
(5016, 378, 'Pallangga', 1, 0),
(5017, 378, 'Parangloe', 1, 0),
(5018, 378, 'Parigi', 1, 0),
(5019, 378, 'Pattallassang', 1, 0),
(5020, 378, 'Somba Opu (Upu)', 1, 0),
(5021, 378, 'Tinggimoncong', 1, 0),
(5022, 378, 'Tombolo Pao', 1, 0),
(5023, 378, 'Tompobulu', 1, 0),
(5024, 379, 'Arungkeke', 1, 0),
(5025, 379, 'Bangkala', 1, 0),
(5026, 379, 'Bangkala Barat', 1, 0),
(5027, 379, 'Batang', 1, 0),
(5028, 379, 'Binamu', 1, 0),
(5029, 379, 'Bontoramba', 1, 0),
(5030, 379, 'Kelara', 1, 0),
(5031, 379, 'Rumbia', 1, 0),
(5032, 379, 'Tamalatea', 1, 0),
(5033, 379, 'Tarowang', 1, 0),
(5034, 379, 'Turatea', 1, 0),
(5035, 380, 'Bajo', 1, 0),
(5036, 380, 'Bajo Barat', 1, 0),
(5037, 380, 'Bassesang Tempe (Bastem)', 1, 0),
(5038, 380, 'Belopa', 1, 0),
(5039, 380, 'Belopa Utara', 1, 0),
(5040, 380, 'Bua', 1, 0),
(5041, 380, 'Bua Ponrang (Bupon)', 1, 0),
(5042, 380, 'Kamanre', 1, 0),
(5043, 380, 'Lamasi', 1, 0),
(5044, 380, 'Lamasi Timur', 1, 0),
(5045, 380, 'Larompong', 1, 0),
(5046, 380, 'Larompong Selatan', 1, 0),
(5047, 380, 'Latimojong', 1, 0),
(5048, 380, 'Ponrang', 1, 0),
(5049, 380, 'Ponrang Selatan', 1, 0),
(5050, 380, 'Suli', 1, 0),
(5051, 380, 'Suli Barat', 1, 0),
(5052, 380, 'Walenrang', 1, 0),
(5053, 380, 'Walenrang Barat', 1, 0),
(5054, 380, 'Walenrang Timur', 1, 0),
(5055, 380, 'Walenrang Utara', 1, 0),
(5056, 381, 'Angkona', 1, 0),
(5057, 381, 'Burau', 1, 0),
(5058, 381, 'Kalaena', 1, 0),
(5059, 381, 'Malili', 1, 0),
(5060, 381, 'Mangkutana', 1, 0),
(5061, 381, 'Nuha', 1, 0),
(5062, 381, 'Tomoni', 1, 0),
(5063, 381, 'Tomoni Timur', 1, 0),
(5064, 381, 'Towuti', 1, 0),
(5065, 381, 'Wasuponda', 1, 0),
(5066, 381, 'Wotu', 1, 0),
(5067, 382, 'Baebunta', 1, 0),
(5068, 382, 'Bone-Bone', 1, 0),
(5069, 382, 'Limbong', 1, 0),
(5070, 382, 'Malangke', 1, 0),
(5071, 382, 'Malangke Barat', 1, 0),
(5072, 382, 'Mappedeceng', 1, 0),
(5073, 382, 'Masamba', 1, 0),
(5074, 382, 'Rampi', 1, 0),
(5075, 382, 'Sabbang', 1, 0),
(5076, 382, 'Seko', 1, 0),
(5077, 382, 'Sukamaju', 1, 0),
(5078, 383, 'Biring Kanaya', 1, 0),
(5079, 383, 'Bontoala', 1, 0),
(5080, 383, 'Makassar', 1, 0),
(5081, 383, 'Mamajang', 1, 0),
(5082, 383, 'Manggala', 1, 0),
(5083, 383, 'Mariso', 1, 0),
(5084, 383, 'Panakkukang', 1, 0),
(5085, 383, 'Rappocini', 1, 0),
(5086, 383, 'Tallo', 1, 0),
(5087, 383, 'Tamalanrea', 1, 0),
(5088, 383, 'Tamalate', 1, 0),
(5089, 383, 'Ujung Pandang', 1, 0),
(5090, 383, 'Ujung Tanah', 1, 0),
(5091, 383, 'Wajo', 1, 0),
(5092, 384, 'Bantimurung', 1, 0),
(5093, 384, 'Bontoa (Maros Utara)', 1, 0),
(5094, 384, 'Camba', 1, 0),
(5095, 384, 'Cenrana', 1, 0),
(5096, 384, 'Lau', 1, 0),
(5097, 384, 'Mallawa', 1, 0),
(5098, 384, 'Mandai', 1, 0),
(5099, 384, 'Maros Baru', 1, 0),
(5100, 384, 'Marusu', 1, 0),
(5101, 384, 'Moncongloe', 1, 0),
(5102, 384, 'Simbang', 1, 0),
(5103, 384, 'Tanralili', 1, 0),
(5104, 384, 'Tompu Bulu', 1, 0),
(5105, 384, 'Turikale', 1, 0),
(5106, 385, 'Bara', 1, 0),
(5107, 385, 'Mungkajang', 1, 0),
(5108, 385, 'Sendana', 1, 0),
(5109, 385, 'Telluwanua', 1, 0),
(5110, 385, 'Wara', 1, 0),
(5111, 385, 'Wara Barat', 1, 0),
(5112, 385, 'Wara Selatan', 1, 0),
(5113, 385, 'Wara Timur', 1, 0),
(5114, 385, 'Wara Utara', 1, 0),
(5115, 386, 'Balocci', 1, 0),
(5116, 386, 'Bungoro', 1, 0),
(5117, 386, 'Labakkang', 1, 0),
(5118, 386, 'Liukang Kalmas (Kalukuang Masalima)', 1, 0),
(5119, 386, 'Liukang Tangaya', 1, 0),
(5120, 386, 'Liukang Tupabbiring', 1, 0),
(5121, 386, 'Mandalle', 1, 0),
(5122, 386, 'Marang (Ma Rang)', 1, 0),
(5123, 386, 'Minasa Tene', 1, 0),
(5124, 386, 'Pangkajene', 1, 0),
(5125, 386, 'Segeri', 1, 0),
(5126, 386, 'Tondong Tallasa', 1, 0),
(5127, 387, 'Bacukiki', 1, 0),
(5128, 387, 'Bacukiki Barat', 1, 0),
(5129, 387, 'Soreang', 1, 0),
(5130, 387, 'Ujung', 1, 0),
(5131, 388, 'Batulappa', 1, 0),
(5132, 388, 'Cempa', 1, 0),
(5133, 388, 'Duampanua', 1, 0),
(5134, 388, 'Lanrisang', 1, 0),
(5135, 388, 'Lembang', 1, 0),
(5136, 388, 'Mattiro Bulu', 1, 0),
(5137, 388, 'Mattiro Sompe', 1, 0),
(5138, 388, 'Paleteang', 1, 0),
(5139, 388, 'Patampanua', 1, 0),
(5140, 388, 'Suppa', 1, 0),
(5141, 388, 'Tiroang', 1, 0),
(5142, 388, 'Watang Sawitto', 1, 0),
(5143, 389, 'Benteng', 1, 0),
(5144, 389, 'Bontoharu', 1, 0),
(5145, 389, 'Bontomanai', 1, 0),
(5146, 389, 'Bontomatene', 1, 0),
(5147, 389, 'Bontosikuyu', 1, 0),
(5148, 389, 'Buki', 1, 0),
(5149, 389, 'Pasilambena', 1, 0),
(5150, 389, 'Pasimarannu', 1, 0),
(5151, 389, 'Pasimassunggu', 1, 0),
(5152, 389, 'Pasimasunggu Timur', 1, 0),
(5153, 389, 'Takabonerate', 1, 0),
(5154, 390, 'Baranti', 1, 0),
(5155, 390, 'Dua Pitue', 1, 0),
(5156, 390, 'Kulo', 1, 0),
(5157, 390, 'Maritengngae', 1, 0),
(5158, 390, 'Panca Lautan (Lautang)', 1, 0),
(5159, 390, 'Panca Rijang', 1, 0),
(5160, 390, 'Pitu Raise/Riase', 1, 0),
(5161, 390, 'Pitu Riawa', 1, 0),
(5162, 390, 'Tellu Limpoe', 1, 0),
(5163, 390, 'Watang Pulu', 1, 0),
(5164, 390, 'Wattang Sidenreng (Watang Sidenreng)', 1, 0),
(5165, 391, 'Bulupoddo', 1, 0),
(5166, 391, 'Pulau Sembilan', 1, 0),
(5167, 391, 'Sinjai Barat', 1, 0),
(5168, 391, 'Sinjai Borong', 1, 0),
(5169, 391, 'Sinjai Selatan', 1, 0),
(5170, 391, 'Sinjai Tengah', 1, 0),
(5171, 391, 'Sinjai Timur', 1, 0),
(5172, 391, 'Sinjai Utara', 1, 0),
(5173, 391, 'Tellu Limpoe', 1, 0),
(5174, 392, 'Citta', 1, 0),
(5175, 392, 'Donri-Donri', 1, 0),
(5176, 392, 'Ganra', 1, 0),
(5177, 392, 'Lalabata', 1, 0),
(5178, 392, 'Lili Rilau', 1, 0),
(5179, 392, 'Liliraja (Lili Riaja)', 1, 0),
(5180, 392, 'Mario Riawa', 1, 0),
(5181, 392, 'Mario Riwawo', 1, 0),
(5182, 393, 'Galesong', 1, 0),
(5183, 393, 'Galesong Selatan', 1, 0),
(5184, 393, 'Galesong Utara', 1, 0),
(5185, 393, 'Mangara Bombang', 1, 0),
(5186, 393, 'Mappakasunggu', 1, 0),
(5187, 393, 'Patallassang', 1, 0),
(5188, 393, 'Polombangkeng Selatan (Polobangkeng)', 1, 0),
(5189, 393, 'Polombangkeng Utara (Polobangkeng)', 1, 0),
(5190, 393, 'Sanrobone', 1, 0),
(5191, 394, 'Bittuang', 1, 0),
(5192, 394, 'Bonggakaradeng', 1, 0),
(5193, 394, 'Gandang Batu Sillanan', 1, 0),
(5194, 394, 'Kurra', 1, 0),
(5195, 394, 'Makale', 1, 0),
(5196, 394, 'Makale Selatan', 1, 0),
(5197, 394, 'Makale Utara', 1, 0),
(5198, 394, 'Malimbong Balepe', 1, 0),
(5199, 394, 'Mappak', 1, 0),
(5200, 394, 'Masanda', 1, 0),
(5201, 394, 'Mengkendek', 1, 0),
(5202, 394, 'Rano', 1, 0),
(5203, 394, 'Rembon', 1, 0),
(5204, 394, 'Saluputti', 1, 0),
(5205, 394, 'Sangalla (Sanggala)', 1, 0),
(5206, 394, 'Sangalla Selatan', 1, 0),
(5207, 394, 'Sangalla Utara', 1, 0),
(5208, 394, 'Simbuang', 1, 0),
(5209, 395, 'Awan Rante Karua', 1, 0),
(5210, 395, 'Balusu', 1, 0),
(5211, 395, 'Bangkelekila', 1, 0),
(5212, 395, 'Baruppu', 1, 0),
(5213, 395, 'Buntao', 1, 0),
(5214, 395, 'Buntu Pepasan', 1, 0),
(5215, 395, 'Dende'' Piongan Napo', 1, 0),
(5216, 395, 'Kapalla Pitu (Kapala Pitu)', 1, 0),
(5217, 395, 'Kesu', 1, 0),
(5218, 395, 'Nanggala', 1, 0),
(5219, 395, 'Rantebua', 1, 0),
(5220, 395, 'Rantepao', 1, 0),
(5221, 395, 'Rantetayo', 1, 0),
(5222, 395, 'Rindingallo', 1, 0),
(5223, 395, 'Sa''dan', 1, 0),
(5224, 395, 'Sanggalangi', 1, 0),
(5225, 395, 'Sesean', 1, 0),
(5226, 395, 'Sesean Suloara', 1, 0),
(5227, 395, 'Sopai', 1, 0),
(5228, 395, 'Tallunglipu', 1, 0),
(5229, 395, 'Tikala', 1, 0),
(5230, 395, 'Tondon', 1, 0),
(5231, 396, 'Belawa', 1, 0),
(5232, 396, 'Bola', 1, 0),
(5233, 396, 'Gilireng', 1, 0),
(5234, 396, 'Keera', 1, 0),
(5235, 396, 'Majauleng', 1, 0),
(5236, 396, 'Maniang Pajo', 1, 0),
(5237, 396, 'Pammana', 1, 0),
(5238, 396, 'Penrang', 1, 0),
(5239, 396, 'Pitumpanua', 1, 0),
(5240, 396, 'Sabbang Paru', 1, 0),
(5241, 396, 'Sajoanging', 1, 0),
(5242, 396, 'Takkalalla', 1, 0),
(5243, 396, 'Tana Sitolo', 1, 0),
(5244, 396, 'Tempe', 1, 0),
(5245, 397, 'Balantak', 1, 0),
(5246, 397, 'Batui', 1, 0),
(5247, 397, 'Bualemo (Boalemo)', 1, 0),
(5248, 397, 'Bunta', 1, 0),
(5249, 397, 'Kintom', 1, 0),
(5250, 397, 'Lamala', 1, 0),
(5251, 397, 'Luwuk', 1, 0),
(5252, 397, 'Luwuk Timur', 1, 0),
(5253, 397, 'Masama', 1, 0),
(5254, 397, 'Nuhon', 1, 0),
(5255, 397, 'Pagimana', 1, 0),
(5256, 397, 'Toili', 1, 0),
(5257, 397, 'Toili Barat', 1, 0),
(5258, 398, 'Banggai', 1, 0),
(5259, 398, 'Banggai Selatan', 1, 0),
(5260, 398, 'Banggai Tengah', 1, 0),
(5261, 398, 'Banggai Utara', 1, 0),
(5262, 398, 'Bangkurung', 1, 0),
(5263, 398, 'Bokan Kepulauan', 1, 0),
(5264, 398, 'Buko', 1, 0),
(5265, 398, 'Buko Selatan', 1, 0),
(5266, 398, 'Bulagi', 1, 0),
(5267, 398, 'Bulagi Selatan', 1, 0),
(5268, 398, 'Bulagi Utara', 1, 0),
(5269, 398, 'Labobo (Lobangkurung)', 1, 0),
(5270, 398, 'Liang', 1, 0),
(5271, 398, 'Peling Tengah', 1, 0),
(5272, 398, 'Tinangkung', 1, 0),
(5273, 398, 'Tinangkung Selatan', 1, 0),
(5274, 398, 'Tinangkung Utara', 1, 0),
(5275, 398, 'Totikum (Totikung)', 1, 0),
(5276, 398, 'Totikum Selatan', 1, 0),
(5277, 399, 'Biau', 1, 0),
(5278, 399, 'Bokat', 1, 0),
(5279, 399, 'Bukal', 1, 0),
(5280, 399, 'Bunobogu', 1, 0),
(5281, 399, 'Gadung', 1, 0),
(5282, 399, 'Karamat', 1, 0),
(5283, 399, 'Lipunoto', 1, 0),
(5284, 399, 'Momunu', 1, 0),
(5285, 399, 'Paleleh', 1, 0),
(5286, 399, 'Paleleh Barat', 1, 0),
(5287, 399, 'Tiloan', 1, 0),
(5288, 400, 'Balaesang', 1, 0),
(5289, 400, 'Banawa', 1, 0),
(5290, 400, 'Banawa Selatan', 1, 0),
(5291, 400, 'Banawa Tengah', 1, 0),
(5292, 400, 'Damsol (Dampelas Sojol)', 1, 0),
(5293, 400, 'Labuan', 1, 0),
(5294, 400, 'Pinembani', 1, 0),
(5295, 400, 'Rio Pakava (Riopakawa)', 1, 0),
(5296, 400, 'Sindue', 1, 0),
(5297, 400, 'Sindue Tobata', 1, 0),
(5298, 400, 'Sindue Tombusabora', 1, 0),
(5299, 400, 'Sirenja', 1, 0),
(5300, 400, 'Sojol', 1, 0),
(5301, 400, 'Sojol Utara', 1, 0),
(5302, 400, 'Tanantovea', 1, 0),
(5303, 401, 'Bahodopi', 1, 0),
(5304, 401, 'Bumi Raya', 1, 0),
(5305, 401, 'Bungku Barat', 1, 0),
(5306, 401, 'Bungku Selatan', 1, 0),
(5307, 401, 'Bungku Tengah', 1, 0),
(5308, 401, 'Bungku Utara', 1, 0),
(5309, 401, 'Lembo', 1, 0),
(5310, 401, 'Mamosalato', 1, 0),
(5311, 401, 'Menui Kepulauan', 1, 0),
(5312, 401, 'Mori Atas', 1, 0),
(5313, 401, 'Petasia', 1, 0),
(5314, 401, 'Soyo Jaya', 1, 0),
(5315, 401, 'Wita Ponda', 1, 0),
(5316, 402, 'Palu Barat', 1, 0),
(5317, 402, 'Palu Selatan', 1, 0),
(5318, 402, 'Palu Timur', 1, 0),
(5319, 402, 'Palu Utara', 1, 0),
(5320, 403, 'Ampibabo', 1, 0),
(5321, 403, 'Balinggi', 1, 0),
(5322, 403, 'Bolano Lambunu', 1, 0),
(5323, 403, 'Kasimbar', 1, 0),
(5324, 403, 'Mepanga', 1, 0),
(5325, 403, 'Moutong', 1, 0),
(5326, 403, 'Palasa', 1, 0),
(5327, 403, 'Parigi', 1, 0),
(5328, 403, 'Parigi Barat', 1, 0),
(5329, 403, 'Parigi Selatan', 1, 0),
(5330, 403, 'Parigi Tengah', 1, 0),
(5331, 403, 'Parigi Utara', 1, 0),
(5332, 403, 'Sausu', 1, 0),
(5333, 403, 'Siniu', 1, 0),
(5334, 403, 'Taopa', 1, 0),
(5335, 403, 'Tinombo', 1, 0),
(5336, 403, 'Tinombo Selatan', 1, 0),
(5337, 403, 'Tomini', 1, 0),
(5338, 403, 'Toribulu', 1, 0),
(5339, 403, 'Torue', 1, 0),
(5340, 404, 'Lage', 1, 0),
(5341, 404, 'Lore Barat', 1, 0),
(5342, 404, 'Lore Piore', 1, 0),
(5343, 404, 'Lore Selatan', 1, 0),
(5344, 404, 'Lore Tengah', 1, 0),
(5345, 404, 'Lore Timur', 1, 0),
(5346, 404, 'Lore Utara', 1, 0),
(5347, 404, 'Pamona Barat', 1, 0),
(5348, 404, 'Pamona Selatan', 1, 0),
(5349, 404, 'Pamona Tenggara', 1, 0),
(5350, 404, 'Pamona Timur', 1, 0),
(5351, 404, 'Pamona Utara', 1, 0),
(5352, 404, 'Poso Kota', 1, 0),
(5353, 404, 'Poso Kota Selatan', 1, 0),
(5354, 404, 'Poso Kota Utara', 1, 0),
(5355, 404, 'Poso Pesisir', 1, 0),
(5356, 404, 'Poso Pesisir Selatan', 1, 0),
(5357, 404, 'Poso Pesisir Utara', 1, 0),
(5358, 405, 'Dolo', 1, 0),
(5359, 405, 'Dolo Barat', 1, 0),
(5360, 405, 'Dolo Selatan', 1, 0),
(5361, 405, 'Gumbasa', 1, 0),
(5362, 405, 'Kinovaru', 1, 0),
(5363, 405, 'Kulawi', 1, 0),
(5364, 405, 'Kulawi Selatan', 1, 0),
(5365, 405, 'Lindu', 1, 0),
(5366, 405, 'Marawola', 1, 0),
(5367, 405, 'Marawola Barat', 1, 0),
(5368, 405, 'Nokilalaki', 1, 0),
(5369, 405, 'Palolo', 1, 0),
(5370, 405, 'Pipikoro', 1, 0),
(5371, 405, 'Sigi Biromaru', 1, 0),
(5372, 405, 'Tanambulava', 1, 0),
(5373, 406, 'Ampana Kota', 1, 0),
(5374, 406, 'Ampana Tete', 1, 0),
(5375, 406, 'Togean', 1, 0),
(5376, 406, 'Tojo', 1, 0),
(5377, 406, 'Tojo Barat', 1, 0),
(5378, 406, 'Ulu Bongka', 1, 0),
(5379, 406, 'Una - Una', 1, 0),
(5380, 406, 'Walea Besar', 1, 0),
(5381, 406, 'Walea Kepulauan', 1, 0),
(5382, 407, 'Baolan', 1, 0),
(5383, 407, 'Basidondo', 1, 0),
(5384, 407, 'Dako Pamean', 1, 0),
(5385, 407, 'Dampal Selatan', 1, 0),
(5386, 407, 'Dampal Utara', 1, 0),
(5387, 407, 'Dondo', 1, 0),
(5388, 407, 'Galang', 1, 0),
(5389, 407, 'Lampasio', 1, 0),
(5390, 407, 'Ogo Deide', 1, 0),
(5391, 407, 'Tolitoli Utara', 1, 0),
(5392, 408, 'Betoambari', 1, 0),
(5393, 408, 'Bungi', 1, 0),
(5394, 408, 'Kokalukuna', 1, 0),
(5395, 408, 'Murhum', 1, 0),
(5396, 408, 'Sora Walio (Sorowalio)', 1, 0),
(5397, 408, 'Wolio', 1, 0),
(5398, 409, 'Kabaena', 1, 0),
(5399, 409, 'Kabaena Barat', 1, 0),
(5400, 409, 'Kabaena Selatan', 1, 0),
(5401, 409, 'Kabaena Tengah', 1, 0),
(5402, 409, 'Kabaena Timur', 1, 0),
(5403, 409, 'Kabaena Utara', 1, 0),
(5404, 409, 'Kepulauan Masaloka Raya', 1, 0),
(5405, 409, 'Lentarai Jaya S. (Lantari Jaya)', 1, 0),
(5406, 409, 'Mata Oleo', 1, 0),
(5407, 409, 'Mata Usu', 1, 0),
(5408, 409, 'Poleang', 1, 0),
(5409, 409, 'Poleang Barat', 1, 0),
(5410, 409, 'Poleang Selatan', 1, 0),
(5411, 409, 'Poleang Tengah', 1, 0),
(5412, 409, 'Poleang Tenggara', 1, 0),
(5413, 409, 'Poleang Timur', 1, 0),
(5414, 409, 'Poleang Utara', 1, 0),
(5415, 409, 'Rarowatu', 1, 0),
(5416, 409, 'Rarowatu Utara', 1, 0),
(5417, 409, 'Rumbia', 1, 0),
(5418, 409, 'Rumbia Tengah', 1, 0),
(5419, 409, 'Tontonunu (Tontonuwu)', 1, 0),
(5420, 410, 'Batauga', 1, 0),
(5421, 410, 'Batu Atas', 1, 0),
(5422, 410, 'Gu', 1, 0),
(5423, 410, 'Kadatua', 1, 0),
(5424, 410, 'Kapontori', 1, 0),
(5425, 410, 'Lakudo', 1, 0),
(5426, 410, 'Lapandewa', 1, 0),
(5427, 410, 'Lasalimu', 1, 0),
(5428, 410, 'Lasalimu Selatan', 1, 0),
(5429, 410, 'Mawasangka', 1, 0),
(5430, 410, 'Mawasangka Tengah', 1, 0),
(5431, 410, 'Mawasangka Timur', 1, 0),
(5432, 410, 'Pasar Wajo', 1, 0),
(5433, 410, 'Sampolawa', 1, 0),
(5434, 410, 'Sangia Mambulu', 1, 0),
(5435, 410, 'Siompu', 1, 0),
(5436, 410, 'Siompu Barat', 1, 0),
(5437, 410, 'Siontapia (Siontapina)', 1, 0),
(5438, 410, 'Talaga Raya (Telaga Raya)', 1, 0),
(5439, 410, 'Wabula', 1, 0),
(5440, 410, 'Wolowa', 1, 0),
(5441, 411, 'Bonegunu', 1, 0),
(5442, 411, 'Kambowa', 1, 0),
(5443, 411, 'Kulisusu (Kalingsusu/Kalisusu)', 1, 0),
(5444, 411, 'Kulisusu Barat', 1, 0),
(5445, 411, 'Kulisusu Utara', 1, 0),
(5446, 411, 'Wakorumba Utara', 1, 0),
(5447, 412, 'Abeli', 1, 0),
(5448, 412, 'Baruga', 1, 0),
(5449, 412, 'Kadia', 1, 0),
(5450, 412, 'Kambu', 1, 0),
(5451, 412, 'Kendari', 1, 0),
(5452, 412, 'Kendari Barat', 1, 0),
(5453, 412, 'Mandonga', 1, 0),
(5454, 412, 'Poasia', 1, 0),
(5455, 412, 'Puuwatu', 1, 0),
(5456, 412, 'Wua-Wua', 1, 0),
(5457, 413, 'Baula', 1, 0),
(5458, 413, 'Kolaka', 1, 0),
(5459, 413, 'Ladongi', 1, 0),
(5460, 413, 'Lalolae', 1, 0),
(5461, 413, 'Lambandia (Lambadia)', 1, 0),
(5462, 413, 'Latambaga', 1, 0),
(5463, 413, 'Loea', 1, 0),
(5464, 413, 'Mowewe', 1, 0),
(5465, 413, 'Poli Polia', 1, 0),
(5466, 413, 'Polinggona', 1, 0),
(5467, 413, 'Pomalaa', 1, 0),
(5468, 413, 'Samaturu', 1, 0),
(5469, 413, 'Tanggetada', 1, 0),
(5470, 413, 'Tinondo', 1, 0),
(5471, 413, 'Tirawuta', 1, 0),
(5472, 413, 'Toari', 1, 0),
(5473, 413, 'Uluiwoi', 1, 0),
(5474, 413, 'Watumbangga (Watubanggo)', 1, 0),
(5475, 413, 'Wolo', 1, 0),
(5476, 413, 'Wundulako', 1, 0),
(5477, 414, 'Batu Putih', 1, 0),
(5478, 414, 'Katoi', 1, 0),
(5479, 414, 'Kodeoha', 1, 0),
(5480, 414, 'Lasusua', 1, 0),
(5481, 414, 'Lombai (Lambai)', 1, 0),
(5482, 414, 'Ngapa', 1, 0),
(5483, 414, 'Pakue', 1, 0),
(5484, 414, 'Pakue Tengah', 1, 0),
(5485, 414, 'Pakue Utara', 1, 0),
(5486, 414, 'Porehu', 1, 0),
(5487, 414, 'Ranteangin', 1, 0),
(5488, 414, 'Watunohu', 1, 0),
(5489, 414, 'Wawo', 1, 0),
(5490, 415, 'Abuki', 1, 0),
(5491, 415, 'Amonggedo', 1, 0),
(5492, 415, 'Anggaberi', 1, 0),
(5493, 415, 'Asinua', 1, 0),
(5494, 415, 'Besulutu', 1, 0),
(5495, 415, 'Bondoala', 1, 0),
(5496, 415, 'Kapoiala (Kapoyala)', 1, 0),
(5497, 415, 'Konawe', 1, 0),
(5498, 415, 'Lambuya', 1, 0),
(5499, 415, 'Latoma', 1, 0),
(5500, 415, 'Meluhu', 1, 0),
(5501, 415, 'Pondidaha', 1, 0),
(5502, 415, 'Puriala', 1, 0),
(5503, 415, 'Routa', 1, 0),
(5504, 415, 'Sampara', 1, 0),
(5505, 415, 'Soropia', 1, 0),
(5506, 415, 'Tongauna', 1, 0),
(5507, 415, 'Uepai (Uwepai)', 1, 0),
(5508, 415, 'Unaaha', 1, 0),
(5509, 415, 'Wawonii Barat', 1, 0),
(5510, 415, 'Wawonii Selatan', 1, 0),
(5511, 415, 'Wawonii Tengah', 1, 0),
(5512, 415, 'Wawonii Timur', 1, 0),
(5513, 415, 'Wawonii Utara', 1, 0),
(5514, 415, 'Wawotobi', 1, 0),
(5515, 415, 'Wonggeduku', 1, 0),
(5516, 416, 'Andoolo', 1, 0),
(5517, 416, 'Angata', 1, 0),
(5518, 416, 'Baito', 1, 0),
(5519, 416, 'Basala', 1, 0),
(5520, 416, 'Benua', 1, 0),
(5521, 416, 'Buke', 1, 0),
(5522, 416, 'Kolono', 1, 0),
(5523, 416, 'Konda', 1, 0),
(5524, 416, 'Laeya', 1, 0),
(5525, 416, 'Lainea', 1, 0),
(5526, 416, 'Lalumbuu', 1, 0),
(5527, 416, 'Landono', 1, 0),
(5528, 416, 'Laonti', 1, 0),
(5529, 416, 'Moramo', 1, 0),
(5530, 416, 'Moramo Utara', 1, 0),
(5531, 416, 'Mowila', 1, 0),
(5532, 416, 'Palangga', 1, 0),
(5533, 416, 'Palangga Selatan', 1, 0),
(5534, 416, 'Ranomeeto', 1, 0),
(5535, 416, 'Ranomeeto Barat', 1, 0),
(5536, 416, 'Tinanggea', 1, 0),
(5537, 416, 'Wolasi', 1, 0),
(5538, 417, 'Asera', 1, 0),
(5539, 417, 'Langgikima', 1, 0),
(5540, 417, 'Lasolo', 1, 0),
(5541, 417, 'Lembo', 1, 0),
(5542, 417, 'Molawe', 1, 0),
(5543, 417, 'Sawa', 1, 0),
(5544, 417, 'Wiwirano', 1, 0),
(5545, 418, 'Barangka', 1, 0),
(5546, 418, 'Batalaiwaru (Batalaiworu)', 1, 0),
(5547, 418, 'Bone (Bone Tondo)', 1, 0),
(5548, 418, 'Duruka', 1, 0),
(5549, 418, 'Kabangka', 1, 0),
(5550, 418, 'Kabawo', 1, 0),
(5551, 418, 'Katobu', 1, 0),
(5552, 418, 'Kontunaga', 1, 0),
(5553, 418, 'Kusambi', 1, 0),
(5554, 418, 'Lasalepa', 1, 0),
(5555, 418, 'Lawa', 1, 0),
(5556, 418, 'Lohia', 1, 0),
(5557, 418, 'Maginti', 1, 0),
(5558, 418, 'Maligano', 1, 0),
(5559, 418, 'Napabalano', 1, 0),
(5560, 418, 'Parigi', 1, 0),
(5561, 418, 'Pasir Putih', 1, 0),
(5562, 418, 'Sawerigadi (Sawerigading/Sewergadi)', 1, 0),
(5563, 418, 'Tiworo Kepulauan', 1, 0),
(5564, 418, 'Tiworo Tengah', 1, 0),
(5565, 418, 'Tongkuno', 1, 0),
(5566, 418, 'Wakorumba', 1, 0),
(5567, 418, 'Wakorumba Selatan', 1, 0),
(5568, 418, 'Watopute', 1, 0),
(5569, 419, 'Binongko', 1, 0),
(5570, 419, 'Kaledupa', 1, 0),
(5571, 419, 'Kaledupa Selatan', 1, 0),
(5572, 419, 'Togo Binongko', 1, 0),
(5573, 419, 'Tomia', 1, 0),
(5574, 419, 'Tomia Timur', 1, 0),
(5575, 419, 'Wangi-Wangi', 1, 0),
(5576, 419, 'Wangi-Wangi Selatan', 1, 0),
(5577, 420, 'Aertembaga (Bitung Timur)', 1, 0),
(5578, 420, 'Girian', 1, 0),
(5579, 420, 'Lembeh Selatan (Bitung Selatan)', 1, 0),
(5580, 420, 'Lembeh Utara', 1, 0),
(5581, 420, 'Madidir (Bitung Tengah)', 1, 0),
(5582, 420, 'Maesa', 1, 0),
(5583, 420, 'Matuari (Bitung Barat)', 1, 0),
(5584, 420, 'Ranowulu (Bitung Utara)', 1, 0),
(5585, 421, 'Bilalang', 1, 0),
(5586, 421, 'Bolaang', 1, 0),
(5587, 421, 'Bolaang Timur', 1, 0),
(5588, 421, 'Dumoga Barat', 1, 0),
(5589, 421, 'Dumoga Timur', 1, 0),
(5590, 421, 'Dumoga Utara', 1, 0),
(5591, 421, 'Lolak', 1, 0),
(5592, 421, 'Lolayan', 1, 0),
(5593, 421, 'Passi Barat', 1, 0),
(5594, 421, 'Passi Timur', 1, 0),
(5595, 421, 'Poigar', 1, 0),
(5596, 421, 'Sangtombolang', 1, 0),
(5597, 422, 'Bolaang Uki', 1, 0),
(5598, 422, 'Pinolosian', 1, 0),
(5599, 422, 'Pinolosian Tengah', 1, 0),
(5600, 422, 'Pinolosian Timur', 1, 0),
(5601, 422, 'Posigadan', 1, 0),
(5602, 423, 'Kotabunan', 1, 0),
(5603, 423, 'Modayag', 1, 0),
(5604, 423, 'Modayag Barat', 1, 0),
(5605, 423, 'Nuangan', 1, 0),
(5606, 423, 'Tutuyan', 1, 0),
(5607, 424, 'Bintauna', 1, 0),
(5608, 424, 'Bolang Itang Barat', 1, 0),
(5609, 424, 'Bolang Itang Timur', 1, 0),
(5610, 424, 'Kaidipang', 1, 0),
(5611, 424, 'Pinogaluman', 1, 0),
(5612, 424, 'Sangkub', 1, 0),
(5613, 425, 'Kendahe', 1, 0),
(5614, 425, 'Manganitu', 1, 0),
(5615, 425, 'Manganitu Selatan', 1, 0),
(5616, 425, 'Nusa Tabukan', 1, 0),
(5617, 425, 'Tabukan Selatan', 1, 0),
(5618, 425, 'Tabukan Selatan Tengah', 1, 0),
(5619, 425, 'Tabukan Selatan Tenggara', 1, 0),
(5620, 425, 'Tabukan Tengah', 1, 0),
(5621, 425, 'Tabukan Utara', 1, 0),
(5622, 425, 'Tahuna', 1, 0),
(5623, 425, 'Tahuna Barat', 1, 0),
(5624, 425, 'Tahuna Timur', 1, 0),
(5625, 425, 'Tamako', 1, 0),
(5626, 425, 'Tatoareng', 1, 0),
(5627, 426, 'Biaro', 1, 0),
(5628, 426, 'Siau Barat', 1, 0),
(5629, 426, 'Siau Barat Selatan', 1, 0),
(5630, 426, 'Siau Barat Utara', 1, 0),
(5631, 426, 'Siau Tengah', 1, 0),
(5632, 426, 'Siau Timur', 1, 0),
(5633, 426, 'Siau Timur Selatan', 1, 0),
(5634, 426, 'Tagulandang', 1, 0),
(5635, 426, 'Tagulandang Selatan', 1, 0),
(5636, 426, 'Tagulandang Utara', 1, 0),
(5637, 427, 'Beo', 1, 0),
(5638, 427, 'Beo Selatan', 1, 0),
(5639, 427, 'Beo Utara', 1, 0),
(5640, 427, 'Damao (Damau)', 1, 0),
(5641, 427, 'Essang', 1, 0),
(5642, 427, 'Essang Selatan', 1, 0),
(5643, 427, 'Gemeh', 1, 0),
(5644, 427, 'Kabaruan', 1, 0),
(5645, 427, 'Kalongan', 1, 0),
(5646, 427, 'Lirung', 1, 0),
(5647, 427, 'Melonguane', 1, 0),
(5648, 427, 'Melonguane Timur', 1, 0),
(5649, 427, 'Miangas', 1, 0),
(5650, 427, 'Moronge', 1, 0),
(5651, 427, 'Nanusa', 1, 0),
(5652, 427, 'Pulutan', 1, 0),
(5653, 427, 'Rainis', 1, 0),
(5654, 427, 'Salibabu', 1, 0),
(5655, 427, 'Tampan Amma', 1, 0),
(5656, 428, 'Kotamobagu Barat', 1, 0),
(5657, 428, 'Kotamobagu Selatan', 1, 0),
(5658, 428, 'Kotamobagu Timur', 1, 0),
(5659, 428, 'Kotamobagu Utara', 1, 0),
(5660, 429, 'Bunaken', 1, 0),
(5661, 429, 'Malalayang', 1, 0),
(5662, 429, 'Mapanget', 1, 0),
(5663, 429, 'Sario', 1, 0),
(5664, 429, 'Singkil', 1, 0),
(5665, 429, 'Tikala', 1, 0),
(5666, 429, 'Tuminting', 1, 0),
(5667, 429, 'Wanea', 1, 0),
(5668, 429, 'Wenang', 1, 0),
(5669, 430, 'Eris', 1, 0),
(5670, 430, 'Kakas', 1, 0),
(5671, 430, 'Kawangkoan', 1, 0),
(5672, 430, 'Kombi', 1, 0),
(5673, 430, 'Langowan Barat', 1, 0),
(5674, 430, 'Langowan Selatan', 1, 0),
(5675, 430, 'Langowan Timur', 1, 0),
(5676, 430, 'Langowan Utara', 1, 0),
(5677, 430, 'Lembean Timur', 1, 0),
(5678, 430, 'Pineleng', 1, 0),
(5679, 430, 'Remboken', 1, 0),
(5680, 430, 'Sonder', 1, 0),
(5681, 430, 'Tombariri', 1, 0),
(5682, 430, 'Tombulu', 1, 0),
(5683, 430, 'Tompaso', 1, 0),
(5684, 430, 'Tondano Barat', 1, 0),
(5685, 430, 'Tondano Selatan', 1, 0),
(5686, 430, 'Tondano Timur', 1, 0),
(5687, 430, 'Tondano Utara', 1, 0),
(5688, 431, 'Amurang', 1, 0),
(5689, 431, 'Amurang Barat', 1, 0),
(5690, 431, 'Amurang Timur', 1, 0),
(5691, 431, 'Kumelembuai', 1, 0),
(5692, 431, 'Maesaan', 1, 0),
(5693, 431, 'Modoinding', 1, 0),
(5694, 431, 'Motoling', 1, 0),
(5695, 431, 'Motoling Barat', 1, 0),
(5696, 431, 'Motoling Timur', 1, 0),
(5697, 431, 'Ranoyapo', 1, 0),
(5698, 431, 'Sinonsayang', 1, 0),
(5699, 431, 'Suluun Tareran', 1, 0),
(5700, 431, 'Tareran', 1, 0),
(5701, 431, 'Tatapaan', 1, 0),
(5702, 431, 'Tenga', 1, 0),
(5703, 431, 'Tompaso Baru', 1, 0),
(5704, 431, 'Tumpaan', 1, 0),
(5705, 432, 'Belang', 1, 0),
(5706, 432, 'Pusomaen', 1, 0),
(5707, 432, 'Ratahan', 1, 0),
(5708, 432, 'Ratatotok', 1, 0),
(5709, 432, 'Toluaan (Touluaan)', 1, 0),
(5710, 432, 'Tombatu', 1, 0),
(5711, 433, 'Airmadidi', 1, 0),
(5712, 433, 'Dimembe', 1, 0),
(5713, 433, 'Kalawat', 1, 0),
(5714, 433, 'Kauditan', 1, 0),
(5715, 433, 'Kema', 1, 0),
(5716, 433, 'Likupang Barat', 1, 0),
(5717, 433, 'Likupang Selatan', 1, 0),
(5718, 433, 'Likupang Timur', 1, 0),
(5719, 433, 'Talawaan', 1, 0),
(5720, 433, 'Wori', 1, 0),
(5721, 434, 'Tomohon Barat', 1, 0),
(5722, 434, 'Tomohon Selatan', 1, 0),
(5723, 434, 'Tomohon Tengah', 1, 0),
(5724, 434, 'Tomohon Timur', 1, 0),
(5725, 434, 'Tomohon Utara', 1, 0),
(5726, 435, 'Ampek Nagari (IV Nagari )', 1, 0),
(5727, 435, 'Banuhampu', 1, 0),
(5728, 435, 'Baso', 1, 0),
(5729, 435, 'Candung', 1, 0),
(5730, 435, 'IV Angkat Candung (Ampek Angkek)', 1, 0),
(5731, 435, 'IV Koto (Ampek Koto)', 1, 0),
(5732, 435, 'Kamang Magek', 1, 0),
(5733, 435, 'Lubuk Basung', 1, 0),
(5734, 435, 'Malakak', 1, 0),
(5735, 435, 'Matur', 1, 0),
(5736, 435, 'Palembayan', 1, 0),
(5737, 435, 'Palupuh', 1, 0),
(5738, 435, 'Sungai Pua (Puar)', 1, 0),
(5739, 435, 'Tanjung Mutiara', 1, 0),
(5740, 435, 'Tanjung Raya', 1, 0),
(5741, 435, 'Tilatang Kamang', 1, 0),
(5742, 436, 'Aur Birugo Tigo Baleh', 1, 0),
(5743, 436, 'Guguk Panjang (Guguak Panjang)', 1, 0),
(5744, 436, 'Mandiangin Koto Selayan', 1, 0),
(5745, 437, 'Asam Jujuhan', 1, 0),
(5746, 437, 'IX Koto', 1, 0),
(5747, 437, 'Koto Baru', 1, 0),
(5748, 437, 'Koto Besar', 1, 0),
(5749, 437, 'Koto Salak', 1, 0),
(5750, 437, 'Padang Laweh', 1, 0),
(5751, 437, 'Pulau Punjung', 1, 0),
(5752, 437, 'Sitiung', 1, 0),
(5753, 437, 'Sungai Rumbai', 1, 0),
(5754, 437, 'Timpeh', 1, 0),
(5755, 437, 'Tiumang', 1, 0),
(5756, 438, 'Pagai Selatan', 1, 0),
(5757, 438, 'Pagai Utara', 1, 0),
(5758, 438, 'Siberut Barat', 1, 0),
(5759, 438, 'Siberut Barat Daya', 1, 0),
(5760, 438, 'Siberut Selatan', 1, 0),
(5761, 438, 'Siberut Tengah', 1, 0),
(5762, 438, 'Siberut Utara', 1, 0),
(5763, 438, 'Sikakap', 1, 0),
(5764, 438, 'Sipora Selatan', 1, 0),
(5765, 438, 'Sipora Utara', 1, 0),
(5766, 439, 'Akabiluru', 1, 0),
(5767, 439, 'Bukik Barisan', 1, 0),
(5768, 439, 'Guguak (Gugu)', 1, 0),
(5769, 439, 'Gunuang Omeh (Gunung Mas)', 1, 0),
(5770, 439, 'Harau', 1, 0),
(5771, 439, 'Kapur IX/Sembilan', 1, 0),
(5772, 439, 'Lareh Sago Halaban', 1, 0),
(5773, 439, 'Luak (Luhak)', 1, 0),
(5774, 439, 'Mungka', 1, 0),
(5775, 439, 'Pangkalan Koto Baru', 1, 0),
(5776, 439, 'Payakumbuh', 1, 0),
(5777, 439, 'Situjuah Limo/Lima Nagari', 1, 0),
(5778, 439, 'Suliki', 1, 0),
(5779, 440, 'Bungus Teluk Kabung', 1, 0),
(5780, 440, 'Koto Tangah', 1, 0),
(5781, 440, 'Kuranji', 1, 0),
(5782, 440, 'Lubuk Begalung', 1, 0),
(5783, 440, 'Lubuk Kilangan', 1, 0),
(5784, 440, 'Nanggalo', 1, 0),
(5785, 440, 'Padang Barat', 1, 0),
(5786, 440, 'Padang Selatan', 1, 0),
(5787, 440, 'Padang Timur', 1, 0),
(5788, 440, 'Padang Utara', 1, 0),
(5789, 440, 'Pauh', 1, 0),
(5790, 441, 'Padang Panjang Barat', 1, 0),
(5791, 441, 'Padang Panjang Timur', 1, 0),
(5792, 442, '2 X 11 Enam Lingkung', 1, 0),
(5793, 442, '2 X 11 Kayu Tanam', 1, 0),
(5794, 442, 'Batang Anai', 1, 0),
(5795, 442, 'Batang Gasan', 1, 0),
(5796, 442, 'Enam Lingkung', 1, 0),
(5797, 442, 'IV Koto Aur Malintang', 1, 0),
(5798, 442, 'Lubuk Alung', 1, 0),
(5799, 442, 'Nan Sabaris', 1, 0),
(5800, 442, 'Padang Sago', 1, 0),
(5801, 442, 'Patamuan', 1, 0),
(5802, 442, 'Sintuk/Sintuak Toboh Gadang', 1, 0),
(5803, 442, 'Sungai Geringging/Garingging', 1, 0),
(5804, 442, 'Sungai Limau', 1, 0),
(5805, 442, 'Ulakan Tapakih/Tapakis', 1, 0),
(5806, 442, 'V Koto Kampung Dalam', 1, 0),
(5807, 442, 'V Koto Timur', 1, 0),
(5808, 442, 'VII Koto Sungai Sarik', 1, 0),
(5809, 444, 'Pariaman Selatan', 1, 0),
(5810, 444, 'Pariaman Tengah', 1, 0),
(5811, 444, 'Pariaman Utara', 1, 0),
(5812, 443, 'Bonjol', 1, 0),
(5813, 443, 'Duo Koto (II Koto)', 1, 0),
(5814, 443, 'Lubuk Sikaping', 1, 0),
(5815, 443, 'Mapat Tunggul', 1, 0),
(5816, 443, 'Mapat Tunggul Selatan', 1, 0),
(5817, 443, 'Padang Gelugur', 1, 0),
(5818, 443, 'Panti', 1, 0),
(5819, 443, 'Rao', 1, 0),
(5820, 443, 'Rao Selatan', 1, 0),
(5821, 443, 'Rao Utara', 1, 0),
(5822, 443, 'Simpang Alahan Mati', 1, 0),
(5823, 443, 'Tigo Nagari (III Nagari)', 1, 0),
(5824, 445, 'Gunung Tuleh', 1, 0),
(5825, 445, 'Kinali', 1, 0),
(5826, 445, 'Koto Balingka', 1, 0),
(5827, 445, 'Lembah Melintang', 1, 0),
(5828, 445, 'Luhak Nan Duo', 1, 0),
(5829, 445, 'Pasaman', 1, 0),
(5830, 445, 'Ranah Batahan', 1, 0),
(5831, 445, 'Sasak Ranah Pasisir/Pesisie', 1, 0),
(5832, 445, 'Sei Beremas', 1, 0),
(5833, 445, 'Sungai Aur', 1, 0),
(5834, 445, 'Talamau', 1, 0),
(5835, 446, 'Lamposi Tigo Nagari', 1, 0),
(5836, 446, 'Payakumbuh Barat', 1, 0),
(5837, 446, 'Payakumbuh Selatan', 1, 0),
(5838, 446, 'Payakumbuh Timur', 1, 0),
(5839, 446, 'Payakumbuh Utara', 1, 0),
(5840, 447, 'Basa Ampek/IV Balai Tapan', 1, 0),
(5841, 447, 'Batang Kapas', 1, 0),
(5842, 447, 'Bayang', 1, 0),
(5843, 447, 'Bayang Utara (IV Nagari Bayang Utara)', 1, 0),
(5844, 447, 'IV Jurai', 1, 0),
(5845, 447, 'Koto XI Tarusan', 1, 0),
(5846, 447, 'Lengayang', 1, 0),
(5847, 447, 'Linggo Sari Baganti', 1, 0),
(5848, 447, 'Lunang Silaut', 1, 0),
(5849, 447, 'Pancung Soal', 1, 0),
(5850, 447, 'Ranah Pesisir', 1, 0),
(5851, 447, 'Sutera', 1, 0),
(5852, 448, 'Barangin', 1, 0),
(5853, 448, 'Lembah Segar', 1, 0),
(5854, 448, 'Silungkang', 1, 0),
(5855, 448, 'Talawi', 1, 0),
(5856, 449, 'IV Nagari', 1, 0),
(5857, 449, 'Kamang Baru', 1, 0),
(5858, 449, 'Koto VII (Tujuh)', 1, 0),
(5859, 449, 'Kupitan', 1, 0),
(5860, 449, 'Lubuk Tarok', 1, 0),
(5861, 449, 'Sijunjung', 1, 0),
(5862, 449, 'Sumpur Kudus', 1, 0),
(5863, 449, 'Tanjung Gadang', 1, 0),
(5864, 451, 'Lubuk Sikarah', 1, 0),
(5865, 451, 'Tanjung Harapan', 1, 0),
(5866, 450, 'Bukit Sundi', 1, 0),
(5867, 450, 'Danau Kembar', 1, 0),
(5868, 450, 'Gunung Talang', 1, 0),
(5869, 450, 'Hiliran Gumanti', 1, 0),
(5870, 450, 'IX Koto Sungai Lasi', 1, 0),
(5871, 450, 'Junjung Sirih', 1, 0),
(5872, 450, 'Kubung', 1, 0),
(5873, 450, 'Lembah Gumanti', 1, 0),
(5874, 450, 'Lembang Jaya', 1, 0),
(5875, 450, 'Pantai Cermin', 1, 0),
(5876, 450, 'Payung Sekaki', 1, 0),
(5877, 450, 'Sepuluh/X Koto Diatas', 1, 0),
(5878, 450, 'Sepuluh/X Koto Singkarak', 1, 0),
(5879, 450, 'Tigo Lurah Bajanjang', 1, 0),
(5880, 452, 'Koto Parik Gadang Diateh', 1, 0),
(5881, 452, 'Pauh Duo', 1, 0),
(5882, 452, 'Sangir', 1, 0),
(5883, 452, 'Sangir Balai Janggo', 1, 0),
(5884, 452, 'Sangir Batang Hari', 1, 0),
(5885, 452, 'Sangir Jujuan', 1, 0),
(5886, 452, 'Sungai Pagu', 1, 0),
(5887, 453, 'Batipuh', 1, 0),
(5888, 453, 'Batipuh Selatan', 1, 0),
(5889, 453, 'Lima Kaum', 1, 0),
(5890, 453, 'Lintau Buo', 1, 0),
(5891, 453, 'Lintau Buo Utara', 1, 0),
(5892, 453, 'Padang Ganting', 1, 0),
(5893, 453, 'Pariangan', 1, 0),
(5894, 453, 'Rambatan', 1, 0),
(5895, 453, 'Salimpaung', 1, 0),
(5896, 453, 'Sepuluh Koto (X Koto)', 1, 0),
(5897, 453, 'Sungai Tarab', 1, 0),
(5898, 453, 'Sungayang', 1, 0),
(5899, 453, 'Tanjung Baru', 1, 0),
(5900, 453, 'Tanjung Emas', 1, 0),
(5901, 454, 'Air Salek', 1, 0),
(5902, 454, 'Banyuasin I', 1, 0),
(5903, 454, 'Banyuasin II', 1, 0),
(5904, 454, 'Banyuasin III', 1, 0),
(5905, 454, 'Betung', 1, 0),
(5906, 454, 'Makarti Jaya', 1, 0),
(5907, 454, 'Muara Padang', 1, 0),
(5908, 454, 'Muara Sugihan', 1, 0),
(5909, 454, 'Muara Telang', 1, 0),
(5910, 454, 'Pulau Rimau', 1, 0),
(5911, 454, 'Rambutan', 1, 0),
(5912, 454, 'Rantau Bayur', 1, 0),
(5913, 454, 'Talang Kelapa', 1, 0),
(5914, 454, 'Tanjung Lago', 1, 0),
(5915, 454, 'Tungkal Ilir', 1, 0),
(5916, 455, 'Lintang Kanan', 1, 0),
(5917, 455, 'Muara Pinang', 1, 0),
(5918, 455, 'Pasemah Air Keruh', 1, 0),
(5919, 455, 'Pendopo', 1, 0),
(5920, 455, 'Talang Padang', 1, 0),
(5921, 455, 'Tebing Tinggi', 1, 0),
(5922, 455, 'Ulu Musi', 1, 0),
(5923, 456, 'Gumay Talang', 1, 0),
(5924, 456, 'Jarai', 1, 0),
(5925, 456, 'Kikim Barat', 1, 0),
(5926, 456, 'Kikim Selatan', 1, 0),
(5927, 456, 'Kikim Tengah', 1, 0),
(5928, 456, 'Kikim Timur', 1, 0),
(5929, 456, 'Kota Agung', 1, 0),
(5930, 456, 'Lahat', 1, 0),
(5931, 456, 'Merapi Barat', 1, 0),
(5932, 456, 'Merapi Timur', 1, 0),
(5933, 456, 'Mulak Ulu', 1, 0),
(5934, 456, 'Pagar Gunung', 1, 0),
(5935, 456, 'Pajar Bulan', 1, 0),
(5936, 456, 'Pseksu', 1, 0),
(5937, 456, 'Pulau Pinang', 1, 0),
(5938, 456, 'Tanjung Sakti Pumi', 1, 0),
(5939, 456, 'Tanjung Sakti Pumu', 1, 0),
(5940, 457, 'Lubuk Linggau Barat Dua (II)', 1, 0),
(5941, 457, 'Lubuk Linggau Barat Satu (I)', 1, 0),
(5942, 457, 'Lubuk Linggau Selatan Dua (II)', 1, 0),
(5943, 457, 'Lubuk Linggau Selatan Satu (I)', 1, 0),
(5944, 457, 'Lubuk Linggau Timur Dua (II)', 1, 0),
(5945, 457, 'Lubuk Linggau Timur Satu (I)', 1, 0),
(5946, 457, 'Lubuk Linggau Utara Dua (II)', 1, 0),
(5947, 457, 'Lubuk Linggau Utara Satu (I)', 1, 0),
(5948, 458, 'Abab', 1, 0),
(5949, 458, 'Benakat', 1, 0),
(5950, 458, 'Gelumbang', 1, 0),
(5951, 458, 'Gunung Megang', 1, 0),
(5952, 458, 'Kelekar', 1, 0),
(5953, 458, 'Lawang Kidul', 1, 0),
(5954, 458, 'Lembak', 1, 0),
(5955, 458, 'Lubai', 1, 0),
(5956, 458, 'Muara Belida', 1, 0),
(5957, 458, 'Muara Enim', 1, 0),
(5958, 458, 'Penukal (Penukal Abab)', 1, 0),
(5959, 458, 'Penukal Utara', 1, 0),
(5960, 458, 'Rambang', 1, 0),
(5961, 458, 'Rambang Dangku', 1, 0),
(5962, 458, 'Semendo Darat Laut', 1, 0),
(5963, 458, 'Semendo Darat Tengah', 1, 0),
(5964, 458, 'Semendo Darat Ulu', 1, 0),
(5965, 458, 'Sungai Rotan', 1, 0),
(5966, 458, 'Talang Ubi', 1, 0),
(5967, 458, 'Tanah Abang', 1, 0),
(5968, 458, 'Tanjung Agung', 1, 0),
(5969, 458, 'Ujan Mas', 1, 0),
(5970, 459, 'Babat Toman', 1, 0),
(5971, 459, 'Batanghari Leko', 1, 0),
(5972, 459, 'Bayung Lencir', 1, 0),
(5973, 459, 'Keluang', 1, 0),
(5974, 459, 'Lais', 1, 0),
(5975, 459, 'Lalan (Sungai Lalan)', 1, 0),
(5976, 459, 'Plakat Tinggi (Pelakat Tinggi)', 1, 0),
(5977, 459, 'Sanga Desa', 1, 0),
(5978, 459, 'Sekayu', 1, 0),
(5979, 459, 'Sungai Keruh', 1, 0),
(5980, 459, 'Sungai Lilin', 1, 0),
(5981, 460, 'Batukuning Lakitan Ulu (BTS)/Cecar', 1, 0),
(5982, 460, 'Jaya Loka', 1, 0),
(5983, 460, 'Karang Dapo', 1, 0),
(5984, 460, 'Karang Jaya', 1, 0),
(5985, 460, 'Megang Sakti', 1, 0),
(5986, 460, 'Muara Beliti', 1, 0),
(5987, 460, 'Muara Kelingi', 1, 0),
(5988, 460, 'Muara Lakitan', 1, 0),
(5989, 460, 'Nibung', 1, 0),
(5990, 460, 'Purwodadi', 1, 0),
(5991, 460, 'Rawas Ilir', 1, 0),
(5992, 460, 'Rawas Ulu', 1, 0),
(5993, 460, 'Rupit', 1, 0),
(5994, 460, 'Selangit', 1, 0),
(5995, 460, 'STL Ulu Terawas', 1, 0),
(5996, 460, 'Sukakarya', 1, 0),
(5997, 460, 'Sumber Harta', 1, 0),
(5998, 460, 'Tiang Pumpung Kepungut', 1, 0),
(5999, 460, 'Tuah Negeri', 1, 0),
(6000, 460, 'Tugumulyo', 1, 0),
(6001, 460, 'Ulu Rawas', 1, 0),
(6002, 461, 'Indralaya', 1, 0),
(6003, 461, 'Indralaya Selatan', 1, 0),
(6004, 461, 'Indralaya Utara', 1, 0),
(6005, 461, 'Kandis', 1, 0),
(6006, 461, 'Lubuk Keliat', 1, 0),
(6007, 461, 'Muara Kuang', 1, 0),
(6008, 461, 'Payaraman', 1, 0),
(6009, 461, 'Pemulutan', 1, 0),
(6010, 461, 'Pemulutan Barat', 1, 0),
(6011, 461, 'Pemulutan Selatan', 1, 0),
(6012, 461, 'Rambang Kuang', 1, 0),
(6013, 461, 'Rantau Alai', 1, 0),
(6014, 461, 'Rantau Panjang', 1, 0),
(6015, 461, 'Sungai Pinang', 1, 0),
(6016, 461, 'Tanjung Batu', 1, 0),
(6017, 461, 'Tanjung Raja', 1, 0),
(6018, 462, 'Air Sugihan', 1, 0),
(6019, 462, 'Cengal', 1, 0),
(6020, 462, 'Jejawi', 1, 0),
(6021, 462, 'Kayu Agung', 1, 0),
(6022, 462, 'Lempuing', 1, 0),
(6023, 462, 'Lempuing Jaya', 1, 0),
(6024, 462, 'Mesuji', 1, 0),
(6025, 462, 'Mesuji Makmur', 1, 0),
(6026, 462, 'Mesuji Raya', 1, 0),
(6027, 462, 'Pampangan', 1, 0),
(6028, 462, 'Pangkalan Lampam', 1, 0),
(6029, 462, 'Pedamaran', 1, 0),
(6030, 462, 'Pedamaran Timur', 1, 0),
(6031, 462, 'Sirah Pulau Padang', 1, 0),
(6032, 462, 'Sungai Menang', 1, 0),
(6033, 462, 'Tanjung Lubuk', 1, 0),
(6034, 462, 'Teluk Gelam', 1, 0),
(6035, 462, 'Tulung Selapan', 1, 0),
(6036, 463, 'Baturaja Barat', 1, 0),
(6037, 463, 'Baturaja Timur', 1, 0),
(6038, 463, 'Lengkiti', 1, 0),
(6039, 463, 'Lubuk Batang', 1, 0),
(6040, 463, 'Lubuk Raja', 1, 0),
(6041, 463, 'Pengandonan', 1, 0),
(6042, 463, 'Peninjauan', 1, 0),
(6043, 463, 'Semidang Aji', 1, 0),
(6044, 463, 'Sinar Peninjauan', 1, 0),
(6045, 463, 'Sosoh Buay Rayap', 1, 0),
(6046, 463, 'Ulu Ogan', 1, 0),
(6047, 464, 'Banding Agung', 1, 0),
(6048, 464, 'Buana Pemaca', 1, 0),
(6049, 464, 'Buay Pemaca', 1, 0),
(6050, 464, 'Buay Pematang Ribu Ranau Tengah', 1, 0),
(6051, 464, 'Buay Rawan', 1, 0),
(6052, 464, 'Buay Runjung', 1, 0),
(6053, 464, 'Buay Sandang Aji', 1, 0),
(6054, 464, 'Kisam Ilir', 1, 0),
(6055, 464, 'Kisam Tinggi', 1, 0),
(6056, 464, 'Mekakau Ilir', 1, 0),
(6057, 464, 'Muaradua', 1, 0),
(6058, 464, 'Muaradua Kisam', 1, 0),
(6059, 464, 'Pulau Beringin', 1, 0),
(6060, 464, 'Runjung Agung', 1, 0),
(6061, 464, 'Simpang', 1, 0),
(6062, 464, 'Sindang Danau', 1, 0),
(6063, 464, 'Sungai Are', 1, 0),
(6064, 464, 'Tiga Dihaji', 1, 0),
(6065, 464, 'Warkuk Ranau Selatan', 1, 0),
(6066, 465, 'Belitang I', 1, 0),
(6067, 465, 'Belitang II', 1, 0),
(6068, 465, 'Belitang III', 1, 0),
(6069, 465, 'Belitang Jaya', 1, 0),
(6070, 465, 'Belitang Madang Raya', 1, 0),
(6071, 465, 'Belitang Mulya', 1, 0),
(6072, 465, 'Buay Madang', 1, 0),
(6073, 465, 'Buay Madang Timur', 1, 0),
(6074, 465, 'Buay Pemuka Bangsa Raja', 1, 0),
(6075, 465, 'Buay Pemuka Beliung', 1, 0),
(6076, 465, 'Bunga Mayang', 1, 0),
(6077, 465, 'Cempaka', 1, 0),
(6078, 465, 'Jayapura', 1, 0),
(6079, 465, 'Madang Suku I', 1, 0),
(6080, 465, 'Madang Suku II', 1, 0),
(6081, 465, 'Madang Suku III', 1, 0),
(6082, 465, 'Martapura', 1, 0),
(6083, 465, 'Semendawai Barat', 1, 0),
(6084, 465, 'Semendawai Suku III', 1, 0),
(6085, 465, 'Semendawai Timur', 1, 0),
(6086, 466, 'Dempo Selatan', 1, 0),
(6087, 466, 'Dempo Tengah', 1, 0),
(6088, 466, 'Dempo Utara', 1, 0),
(6089, 466, 'Pagar Alam Selatan', 1, 0),
(6090, 466, 'Pagar Alam Utara', 1, 0),
(6091, 467, 'Alang-Alang Lebar', 1, 0),
(6092, 467, 'Bukit Kecil', 1, 0),
(6093, 467, 'Gandus', 1, 0),
(6094, 467, 'Ilir Barat I', 1, 0),
(6095, 467, 'Ilir Barat II', 1, 0),
(6096, 467, 'Ilir Timur I', 1, 0),
(6097, 467, 'Ilir Timur II', 1, 0),
(6098, 467, 'Kalidoni', 1, 0),
(6099, 467, 'Kemuning', 1, 0),
(6100, 467, 'Kertapati', 1, 0),
(6101, 467, 'Plaju', 1, 0),
(6102, 467, 'Sako', 1, 0),
(6103, 467, 'Seberang Ulu I', 1, 0),
(6104, 467, 'Seberang Ulu II', 1, 0),
(6105, 467, 'Sematang Borang', 1, 0),
(6106, 467, 'Sukarami', 1, 0),
(6107, 468, 'Cambai', 1, 0),
(6108, 468, 'Prabumulih Barat', 1, 0),
(6109, 468, 'Prabumulih Selatan', 1, 0),
(6110, 468, 'Prabumulih Timur', 1, 0),
(6111, 468, 'Prabumulih Utara', 1, 0),
(6112, 468, 'Rambang Kapak Tengah', 1, 0),
(6113, 469, 'Aek Kuasan', 1, 0),
(6114, 469, 'Aek Ledong', 1, 0),
(6115, 469, 'Aek Songsongan', 1, 0),
(6116, 469, 'Air Batu', 1, 0),
(6117, 469, 'Air Joman', 1, 0),
(6118, 469, 'Bandar Pasir Mandoge', 1, 0),
(6119, 469, 'Bandar Pulau', 1, 0),
(6120, 469, 'Buntu Pane', 1, 0),
(6121, 469, 'Kisaran Barat Kota', 1, 0),
(6122, 469, 'Kisaran Timur Kota', 1, 0),
(6123, 469, 'Meranti', 1, 0),
(6124, 469, 'Pulau Rakyat', 1, 0),
(6125, 469, 'Pulo Bandring', 1, 0),
(6126, 469, 'Rahuning', 1, 0),
(6127, 469, 'Rawang Panca Arga', 1, 0),
(6128, 469, 'Sei Dadap', 1, 0),
(6129, 469, 'Sei Kepayang', 1, 0),
(6130, 469, 'Sei Kepayang Barat', 1, 0),
(6131, 469, 'Sei Kepayang Timur', 1, 0),
(6132, 469, 'Setia Janji', 1, 0),
(6133, 469, 'Silau Laut', 1, 0),
(6134, 469, 'Simpang Empat', 1, 0),
(6135, 469, 'Tanjung Balai', 1, 0),
(6136, 469, 'Teluk Dalam', 1, 0),
(6137, 469, 'Tinggi Raja', 1, 0),
(6138, 470, 'Air Putih', 1, 0),
(6139, 470, 'Limapuluh', 1, 0),
(6140, 470, 'Medang Deras', 1, 0),
(6141, 470, 'Sei Balai', 1, 0),
(6142, 470, 'Sei Suka', 1, 0),
(6143, 470, 'Talawi', 1, 0),
(6144, 470, 'Tanjung Tiram', 1, 0),
(6145, 471, 'Binjai Barat', 1, 0),
(6146, 471, 'Binjai Kota', 1, 0),
(6147, 471, 'Binjai Selatan', 1, 0),
(6148, 471, 'Binjai Timur', 1, 0),
(6149, 471, 'Binjai Utara', 1, 0),
(6150, 472, 'Berampu (Brampu)', 1, 0),
(6151, 472, 'Gunung Sitember', 1, 0),
(6152, 472, 'Lae Parira', 1, 0),
(6153, 472, 'Parbuluan', 1, 0),
(6154, 472, 'Pegagan Hilir', 1, 0),
(6155, 472, 'Sidikalang', 1, 0),
(6156, 472, 'Siempat Nempu', 1, 0),
(6157, 472, 'Siempat Nempu Hilir', 1, 0),
(6158, 472, 'Siempat Nempu Hulu', 1, 0),
(6159, 472, 'Silahi Sabungan', 1, 0),
(6160, 472, 'Silima Pungga-Pungga', 1, 0),
(6161, 472, 'Sitinjo', 1, 0),
(6162, 472, 'Sumbul', 1, 0),
(6163, 472, 'Tanah Pinem', 1, 0),
(6164, 472, 'Tiga Lingga', 1, 0),
(6165, 473, 'Bangun Purba', 1, 0),
(6166, 473, 'Batang Kuis', 1, 0),
(6167, 473, 'Beringin', 1, 0),
(6168, 473, 'Biru-Biru', 1, 0),
(6169, 473, 'Deli Tua', 1, 0),
(6170, 473, 'Galang', 1, 0),
(6171, 473, 'Gunung Meriah', 1, 0),
(6172, 473, 'Hamparan Perak', 1, 0),
(6173, 473, 'Kutalimbaru', 1, 0),
(6174, 473, 'Labuhan Deli', 1, 0),
(6175, 473, 'Lubuk Pakam', 1, 0),
(6176, 473, 'Namo Rambe', 1, 0),
(6177, 473, 'Pagar Merbau', 1, 0),
(6178, 473, 'Pancur Batu', 1, 0),
(6179, 473, 'Pantai Labu', 1, 0),
(6180, 473, 'Patumbak', 1, 0),
(6181, 473, 'Percut Sei Tuan', 1, 0),
(6182, 473, 'Sibolangit', 1, 0),
(6183, 473, 'Sinembah Tanjung Muda Hilir', 1, 0),
(6184, 473, 'Sinembah Tanjung Muda Hulu', 1, 0),
(6185, 473, 'Sunggal', 1, 0),
(6186, 473, 'Tanjung Morawa', 1, 0),
(6187, 474, 'Gunungsitoli', 1, 0),
(6188, 474, 'Gunungsitoli Alo''oa', 1, 0),
(6189, 474, 'Gunungsitoli Barat', 1, 0),
(6190, 474, 'Gunungsitoli Idanoi', 1, 0),
(6191, 474, 'Gunungsitoli Selatan', 1, 0),
(6192, 474, 'Gunungsitoli Utara', 1, 0),
(6193, 475, 'Bakti Raja', 1, 0),
(6194, 475, 'Dolok Sanggul', 1, 0),
(6195, 475, 'Lintong Nihuta', 1, 0),
(6196, 475, 'Onan Ganjang', 1, 0),
(6197, 475, 'Pakkat', 1, 0),
(6198, 475, 'Paranginan', 1, 0),
(6199, 475, 'Parlilitan', 1, 0),
(6200, 475, 'Pollung', 1, 0),
(6201, 475, 'Sijama Polang', 1, 0),
(6202, 475, 'Tara Bintang', 1, 0),
(6203, 476, 'Barus Jahe', 1, 0),
(6204, 476, 'Brastagi (Berastagi)', 1, 0),
(6205, 476, 'Dolat Rayat', 1, 0),
(6206, 476, 'Juhar', 1, 0),
(6207, 476, 'Kabanjahe', 1, 0),
(6208, 476, 'Kuta Buluh', 1, 0),
(6209, 476, 'Laubaleng', 1, 0),
(6210, 476, 'Mardinding', 1, 0),
(6211, 476, 'Merdeka', 1, 0),
(6212, 476, 'Merek', 1, 0),
(6213, 476, 'Munte', 1, 0),
(6214, 476, 'Nama Teran', 1, 0),
(6215, 476, 'Payung', 1, 0),
(6216, 476, 'Simpang Empat', 1, 0),
(6217, 476, 'Tiga Binanga', 1, 0),
(6218, 476, 'Tiga Panah', 1, 0),
(6219, 476, 'Tiganderket', 1, 0),
(6220, 477, 'Bilah Barat', 1, 0),
(6221, 477, 'Bilah Hilir', 1, 0),
(6222, 477, 'Bilah Hulu', 1, 0),
(6223, 477, 'Panai Hilir', 1, 0),
(6224, 477, 'Panai Hulu', 1, 0),
(6225, 477, 'Panai Tengah', 1, 0),
(6226, 477, 'Pangkatan', 1, 0),
(6227, 477, 'Rantau Selatan', 1, 0),
(6228, 477, 'Rantau Utara', 1, 0),
(6229, 478, 'Kampung Rakyat', 1, 0),
(6230, 478, 'Kota Pinang', 1, 0),
(6231, 478, 'Sei/Sungai Kanan', 1, 0),
(6232, 478, 'Silangkitang', 1, 0),
(6233, 478, 'Torgamba', 1, 0),
(6234, 479, 'Aek Kuo', 1, 0),
(6235, 479, 'Aek Natas', 1, 0),
(6236, 479, 'Kuala Ledong (Kualuh Leidong)', 1, 0),
(6237, 479, 'Kualuh Hilir', 1, 0),
(6238, 479, 'Kualuh Hulu', 1, 0),
(6239, 479, 'Kualuh Selatan', 1, 0),
(6240, 479, 'Marbau', 1, 0),
(6241, 479, 'Na IX-X', 1, 0),
(6242, 480, 'Babalan', 1, 0),
(6243, 480, 'Bahorok', 1, 0),
(6244, 480, 'Batang Serangan', 1, 0),
(6245, 480, 'Besitang', 1, 0),
(6246, 480, 'Binjai', 1, 0),
(6247, 480, 'Brandan Barat', 1, 0),
(6248, 480, 'Gebang', 1, 0),
(6249, 480, 'Hinai', 1, 0),
(6250, 480, 'Kuala', 1, 0),
(6251, 480, 'Kutambaru', 1, 0),
(6252, 480, 'Padang Tualang', 1, 0),
(6253, 480, 'Pangkalan Susu', 1, 0),
(6254, 480, 'Pematang Jaya', 1, 0),
(6255, 480, 'Salapian', 1, 0),
(6256, 480, 'Sawit Seberang', 1, 0),
(6257, 480, 'Secanggang', 1, 0),
(6258, 480, 'Sei Binge (Bingai)', 1, 0),
(6259, 480, 'Sei Lepan', 1, 0),
(6260, 480, 'Selesai', 1, 0),
(6261, 480, 'Sirapit (Serapit)', 1, 0),
(6262, 480, 'Stabat', 1, 0),
(6263, 480, 'Tanjungpura', 1, 0),
(6264, 480, 'Wampu', 1, 0),
(6265, 481, 'Batahan', 1, 0),
(6266, 481, 'Batang Natal', 1, 0),
(6267, 481, 'Bukit Malintang', 1, 0),
(6268, 481, 'Huta Bargot', 1, 0),
(6269, 481, 'Kotanopan', 1, 0),
(6270, 481, 'Langga Bayu (Lingga Bayu)', 1, 0),
(6271, 481, 'Lembah Sorik Merapi', 1, 0),
(6272, 481, 'Muara Batang Gadis', 1, 0),
(6273, 481, 'Muara Sipongi', 1, 0),
(6274, 481, 'Naga Juang', 1, 0),
(6275, 481, 'Natal', 1, 0),
(6276, 481, 'Pakantan', 1, 0),
(6277, 481, 'Panyabungan Barat', 1, 0),
(6278, 481, 'Panyabungan Kota', 1, 0),
(6279, 481, 'Panyabungan Selatan', 1, 0),
(6280, 481, 'Panyabungan Timur', 1, 0),
(6281, 481, 'Panyabungan Utara', 1, 0),
(6282, 481, 'Puncak Sorik Marapi/Merapi', 1, 0),
(6283, 481, 'Ranto Baek/Baik', 1, 0),
(6284, 481, 'Siabu', 1, 0),
(6285, 481, 'Sinunukan', 1, 0),
(6286, 481, 'Tambangan', 1, 0),
(6287, 481, 'Ulu Pungkut', 1, 0),
(6288, 482, 'Medan Amplas', 1, 0),
(6289, 482, 'Medan Area', 1, 0),
(6290, 482, 'Medan Barat', 1, 0),
(6291, 482, 'Medan Baru', 1, 0),
(6292, 482, 'Medan Belawan Kota', 1, 0),
(6293, 482, 'Medan Deli', 1, 0),
(6294, 482, 'Medan Denai', 1, 0),
(6295, 482, 'Medan Helvetia', 1, 0),
(6296, 482, 'Medan Johor', 1, 0),
(6297, 482, 'Medan Kota', 1, 0),
(6298, 482, 'Medan Labuhan', 1, 0),
(6299, 482, 'Medan Maimun', 1, 0),
(6300, 482, 'Medan Marelan', 1, 0),
(6301, 482, 'Medan Perjuangan', 1, 0),
(6302, 482, 'Medan Petisah', 1, 0),
(6303, 482, 'Medan Polonia', 1, 0),
(6304, 482, 'Medan Selayang', 1, 0),
(6305, 482, 'Medan Sunggal', 1, 0),
(6306, 482, 'Medan Tembung', 1, 0),
(6307, 482, 'Medan Timur', 1, 0),
(6308, 482, 'Medan Tuntungan', 1, 0),
(6309, 483, 'Bawolato', 1, 0),
(6310, 483, 'Botomuzoi', 1, 0),
(6311, 483, 'Gido', 1, 0),
(6312, 483, 'Hili Serangkai (Hilisaranggu)', 1, 0),
(6313, 483, 'Hiliduho', 1, 0),
(6314, 483, 'Idano Gawo', 1, 0),
(6315, 483, 'Ma''u', 1, 0),
(6316, 483, 'Somolo-Molo (Samolo)', 1, 0),
(6317, 483, 'Ulugawo', 1, 0),
(6318, 484, 'Lahomi (Gahori)', 1, 0),
(6319, 484, 'Lolofitu Moi', 1, 0),
(6320, 484, 'Mandrehe', 1, 0),
(6321, 484, 'Mandrehe Barat', 1, 0),
(6322, 484, 'Mandrehe Utara', 1, 0),
(6323, 484, 'Moro''o', 1, 0),
(6324, 484, 'Sirombu', 1, 0),
(6325, 484, 'Ulu Moro''o (Ulu Narwo)', 1, 0),
(6326, 485, 'Amandraya', 1, 0),
(6327, 485, 'Gomo', 1, 0),
(6328, 485, 'Hibala', 1, 0),
(6329, 485, 'Lahusa', 1, 0),
(6330, 485, 'Lolomatua', 1, 0),
(6331, 485, 'Lolowau', 1, 0),
(6332, 485, 'Pulau-Pulau Batu', 1, 0),
(6333, 485, 'Teluk Dalam', 1, 0),
(6334, 486, 'Afulu', 1, 0),
(6335, 486, 'Alasa', 1, 0),
(6336, 486, 'Alasa Talumuzoi', 1, 0),
(6337, 486, 'Lahewa', 1, 0),
(6338, 486, 'Lahewa Timur', 1, 0),
(6339, 486, 'Lotu', 1, 0),
(6340, 486, 'Namohalu Esiwa', 1, 0),
(6341, 486, 'Sawo', 1, 0),
(6342, 486, 'Sitolu Ori', 1, 0),
(6343, 486, 'Tugala Oyo', 1, 0),
(6344, 486, 'Tuhemberua', 1, 0),
(6345, 487, 'Barumun', 1, 0),
(6346, 487, 'Barumun Tengah', 1, 0),
(6347, 487, 'Batang Lubu Sutam', 1, 0),
(6348, 487, 'Huristak', 1, 0),
(6349, 487, 'Huta Raja Tinggi', 1, 0),
(6350, 487, 'Lubuk Barumun', 1, 0),
(6351, 487, 'Sosa', 1, 0),
(6352, 487, 'Sosopan', 1, 0),
(6353, 487, 'Ulu Barumun', 1, 0),
(6354, 488, 'Batang Onang', 1, 0),
(6355, 488, 'Dolok', 1, 0),
(6356, 488, 'Dolok Sigompulon', 1, 0),
(6357, 488, 'Halongonan', 1, 0),
(6358, 488, 'Hulu Sihapas', 1, 0),
(6359, 488, 'Padang Bolak', 1, 0),
(6360, 488, 'Padang Bolak Julu', 1, 0),
(6361, 488, 'Portibi', 1, 0),
(6362, 488, 'Simangambat', 1, 0),
(6363, 489, 'Padang Sidempuan Angkola Julu', 1, 0),
(6364, 489, 'Padang Sidempuan Batunadua', 1, 0),
(6365, 489, 'Padang Sidempuan Hutaimbaru', 1, 0),
(6366, 489, 'Padang Sidempuan Selatan', 1, 0),
(6367, 489, 'Padang Sidempuan Tenggara', 1, 0),
(6368, 489, 'Padang Sidempuan Utara (Padangsidimpuan)', 1, 0),
(6369, 490, 'Kerajaan', 1, 0),
(6370, 490, 'Pagindar', 1, 0),
(6371, 490, 'Pergetteng Getteng Sengkut', 1, 0),
(6372, 490, 'Salak', 1, 0),
(6373, 490, 'Siempat Rube', 1, 0),
(6374, 490, 'Sitellu Tali Urang Jehe', 1, 0),
(6375, 490, 'Sitellu Tali Urang Julu', 1, 0),
(6376, 490, 'Tinada', 1, 0),
(6377, 491, 'Siantar Barat', 1, 0),
(6378, 491, 'Siantar Marihat', 1, 0),
(6379, 491, 'Siantar Martoba', 1, 0),
(6380, 491, 'Siantar Selatan', 1, 0),
(6381, 491, 'Siantar Timur', 1, 0),
(6382, 491, 'Siantar Utara', 1, 0),
(6383, 492, 'Harian', 1, 0),
(6384, 492, 'Nainggolan', 1, 0),
(6385, 492, 'Onan Runggu', 1, 0),
(6386, 492, 'Palipi', 1, 0),
(6387, 492, 'Pangururan', 1, 0),
(6388, 492, 'Ronggur Nihuta', 1, 0),
(6389, 492, 'Sianjur Mula-Mula', 1, 0),
(6390, 492, 'Simanindo', 1, 0),
(6391, 492, 'Sitio-Tio', 1, 0),
(6392, 493, 'Bandar Khalifah', 1, 0),
(6393, 493, 'Bintang Bayu', 1, 0),
(6394, 493, 'Dolok Masihul', 1, 0),
(6395, 493, 'Dolok Merawan', 1, 0),
(6396, 493, 'Kotarih', 1, 0),
(6397, 493, 'Pantai Cermin', 1, 0),
(6398, 493, 'Pegajahan', 1, 0),
(6399, 493, 'Perbaungan', 1, 0),
(6400, 493, 'Sei Bamban', 1, 0),
(6401, 493, 'Sei Rampah', 1, 0),
(6402, 493, 'Serba Jadi', 1, 0),
(6403, 493, 'Silinda', 1, 0),
(6404, 493, 'Sipispis', 1, 0),
(6405, 493, 'Tanjung Beringin', 1, 0),
(6406, 493, 'Tebing Syahbandar', 1, 0),
(6407, 493, 'Tebing Tinggi', 1, 0),
(6408, 493, 'Teluk Mengkudu', 1, 0),
(6409, 494, 'Sibolga Kota', 1, 0),
(6410, 494, 'Sibolga Sambas', 1, 0),
(6411, 494, 'Sibolga Selatan', 1, 0),
(6412, 494, 'Sibolga Utara', 1, 0),
(6413, 495, 'Bandar', 1, 0),
(6414, 495, 'Bandar Huluan', 1, 0),
(6415, 495, 'Bandar Masilam', 1, 0),
(6416, 495, 'Bosar Maligas', 1, 0),
(6417, 495, 'Dolok Batu Nanggar', 1, 0),
(6418, 495, 'Dolok Panribuan', 1, 0),
(6419, 495, 'Dolok Pardamean', 1, 0),
(6420, 495, 'Dolok Silau', 1, 0),
(6421, 495, 'Girsang Sipangan Bolon', 1, 0),
(6422, 495, 'Gunung Malela', 1, 0),
(6423, 495, 'Gunung Maligas', 1, 0),
(6424, 495, 'Haranggaol Horison', 1, 0),
(6425, 495, 'Hatonduhan', 1, 0),
(6426, 495, 'Huta Bayu Raja', 1, 0),
(6427, 495, 'Jawa Maraja Bah Jambi', 1, 0),
(6428, 495, 'Jorlang Hataran', 1, 0),
(6429, 495, 'Panei', 1, 0),
(6430, 495, 'Panombeian Panei', 1, 0),
(6431, 495, 'Pematang Bandar', 1, 0),
(6432, 495, 'Pematang Sidamanik', 1, 0),
(6433, 495, 'Pematang Silima Huta', 1, 0),
(6434, 495, 'Purba', 1, 0),
(6435, 495, 'Raya', 1, 0),
(6436, 495, 'Raya Kahean', 1, 0),
(6437, 495, 'Siantar', 1, 0),
(6438, 495, 'Sidamanik', 1, 0),
(6439, 495, 'Silimakuta', 1, 0),
(6440, 495, 'Silou Kahean', 1, 0),
(6441, 495, 'Tanah Jawa', 1, 0),
(6442, 495, 'Tapian Dolok', 1, 0),
(6443, 495, 'Ujung Padang', 1, 0),
(6444, 496, 'Datuk Bandar', 1, 0),
(6445, 496, 'Datuk Bandar Timur', 1, 0),
(6446, 496, 'Sei Tualang Raso', 1, 0),
(6447, 496, 'Tanjung Balai Selatan', 1, 0),
(6448, 496, 'Tanjung Balai Utara', 1, 0),
(6449, 496, 'Teluk Nibung', 1, 0),
(6450, 497, 'Aek Bilah', 1, 0),
(6451, 497, 'Angkola Barat (Padang Sidempuan)', 1, 0),
(6452, 497, 'Angkola Timur (Padang Sidempuan)', 1, 0),
(6453, 497, 'Arse', 1, 0),
(6454, 497, 'Batang Angkola', 1, 0),
(6455, 497, 'Batang Toru', 1, 0),
(6456, 497, 'Marancar', 1, 0),
(6457, 497, 'Saipar Dolok Hole', 1, 0),
(6458, 497, 'Sayur Matinggi', 1, 0),
(6459, 497, 'Siais', 1, 0),
(6460, 497, 'Sipirok', 1, 0),
(6461, 498, 'Andam Dewi', 1, 0),
(6462, 498, 'Badiri', 1, 0),
(6463, 498, 'Barus', 1, 0),
(6464, 498, 'Barus Utara', 1, 0),
(6465, 498, 'Kolang', 1, 0),
(6466, 498, 'Lumut', 1, 0),
(6467, 498, 'Manduamas', 1, 0),
(6468, 498, 'Pandan', 1, 0),
(6469, 498, 'Pasaribu Tobing', 1, 0),
(6470, 498, 'Pinangsori', 1, 0),
(6471, 498, 'Sarudik', 1, 0),
(6472, 498, 'Sibabangun', 1, 0),
(6473, 498, 'Sirandorung', 1, 0),
(6474, 498, 'Sitahuis', 1, 0),
(6475, 498, 'Sorkam', 1, 0),
(6476, 498, 'Sorkam Barat', 1, 0),
(6477, 498, 'Sosor Gadong', 1, 0),
(6478, 498, 'Suka Bangun', 1, 0),
(6479, 498, 'Tapian Nauli', 1, 0),
(6480, 498, 'Tukka', 1, 0),
(6481, 499, 'Adian Koting', 1, 0),
(6482, 499, 'Garoga', 1, 0),
(6483, 499, 'Muara', 1, 0),
(6484, 499, 'Pagaran', 1, 0),
(6485, 499, 'Pahae Jae', 1, 0),
(6486, 499, 'Pahae Julu', 1, 0),
(6487, 499, 'Pangaribuan', 1, 0),
(6488, 499, 'Parmonangan', 1, 0),
(6489, 499, 'Purbatua', 1, 0),
(6490, 499, 'Siatas Barita', 1, 0),
(6491, 499, 'Siborong-Borong', 1, 0),
(6492, 499, 'Simangumban', 1, 0),
(6493, 499, 'Sipahutar', 1, 0),
(6494, 499, 'Sipoholon', 1, 0),
(6495, 499, 'Tarutung', 1, 0),
(6496, 500, 'Bajenis', 1, 0),
(6497, 500, 'Padang Hilir', 1, 0),
(6498, 500, 'Padang Hulu', 1, 0),
(6499, 500, 'Rambutan', 1, 0),
(6500, 500, 'Tebing Tinggi Kota', 1, 0),
(6501, 501, 'Ajibata', 1, 0),
(6502, 501, 'Balige', 1, 0),
(6503, 501, 'Bor-Bor', 1, 0),
(6504, 501, 'Habinsaran', 1, 0),
(6505, 501, 'Laguboti', 1, 0),
(6506, 501, 'Lumban Julu', 1, 0),
(6507, 501, 'Nassau', 1, 0),
(6508, 501, 'Pintu Pohan Meranti', 1, 0),
(6509, 501, 'Porsea', 1, 0),
(6510, 501, 'Siantar Narumonda', 1, 0),
(6511, 501, 'Sigumpar', 1, 0),
(6512, 501, 'Silaen', 1, 0),
(6513, 501, 'Tampahan', 1, 0),
(6514, 501, 'Uluan', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Bali', 'BL', 'BLI', '', 0, 1),
(2, 'Bangka Belitung', 'BB', 'BBL', '', 0, 1),
(3, 'Banten', 'BT', 'BNT', '', 0, 1),
(4, 'Bengkulu', 'BK', 'BKL', '', 0, 1),
(5, 'DI Yogyakarta', 'DI', 'DIY', '', 0, 1),
(6, 'DKI Jakarta', 'DK', 'DKI', '', 0, 1),
(7, 'Gorontalo', 'GR', 'GRT', '', 0, 1),
(8, 'Jambi', 'JA', 'JMB', '', 0, 1),
(9, 'Jawa Barat', 'JB', 'JBR', '', 0, 1),
(10, 'Jawa Tengah', 'JT', 'JWT', '', 0, 1),
(11, 'Jawa Timur', 'JM', 'JWU', '', 0, 1),
(12, 'Kalimantan Barat', 'KB', 'KLB', '', 0, 1),
(13, 'Kalimantan Selatan', 'KS', 'KLS', '', 0, 1),
(14, 'Kalimantan Tengah', 'KT', 'KLT', '', 0, 1),
(15, 'Kalimantan Timur', 'KR', 'KLM', '', 0, 1),
(16, 'Kalimantan Utara', 'KU', 'KLU', '', 0, 1),
(17, 'Kepulauan Riau', 'KA', 'KPR', '', 0, 1),
(18, 'Lampung', 'LM', 'LMP', '', 0, 1),
(19, 'Maluku', 'ML', 'MLK', '', 0, 1),
(20, 'Maluku Utara', 'MU', 'MLU', '', 0, 1),
(21, 'Nanggroe Aceh Darussalam', 'NA', 'NAD', '', 0, 1),
(22, 'Nusa Tenggara Barat', 'NT', 'NTB', '', 0, 1),
(23, 'Nusa Tenggara Timur', 'NE', 'NTT', '', 0, 1),
(24, 'Papua', 'PP', 'PPA', '', 0, 1),
(25, 'Papua Barat', 'PB', 'PPB', '', 0, 1),
(26, 'Riau', 'RI', 'RIA', '', 0, 1),
(27, 'Sulawesi Barat', 'SB', 'SSB', '', 0, 1),
(28, 'Sulawesi Selatan', 'SS', 'SSL', '', 0, 1),
(29, 'Sulawesi Tengah', 'ST', 'SST', '', 0, 1),
(30, 'Sulawesi Tenggara', 'SE', 'SSE', '', 0, 1),
(31, 'Sulawesi Utara', 'SU', 'SSU', '', 0, 1),
(32, 'Sumatera Barat', 'SR', 'SBR', '', 0, 1),
(33, 'Sumatera Selatan', 'SA', 'SST', '', 0, 1),
(34, 'Sumatera Utara', 'SM', 'SSR', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

DROP TABLE IF EXISTS `coupon`;
CREATE TABLE `coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_category`
--

DROP TABLE IF EXISTS `coupon_category`;
CREATE TABLE `coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_history`
--

DROP TABLE IF EXISTS `coupon_history`;
CREATE TABLE `coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_product`
--

DROP TABLE IF EXISTS `coupon_product`;
CREATE TABLE `coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(5, 'Rupiah', 'IDR', 'Rp. ', '', '', 1.00000000, 1, '2016-09-09 14:12:16'),
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 1, '2016-09-09 06:41:59');

-- --------------------------------------------------------

--
-- Table structure for table `custom_field`
--

DROP TABLE IF EXISTS `custom_field`;
CREATE TABLE `custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_customer_group`
--

DROP TABLE IF EXISTS `custom_field_customer_group`;
CREATE TABLE `custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_description`
--

DROP TABLE IF EXISTS `custom_field_description`;
CREATE TABLE `custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_value`
--

DROP TABLE IF EXISTS `custom_field_value`;
CREATE TABLE `custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_value_description`
--

DROP TABLE IF EXISTS `custom_field_value_description`;
CREATE TABLE `custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_group_id`, `store_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `approved`, `safe`, `token`, `date_added`) VALUES
(1, 1, 0, 'Bambang', 'Handoko', 'bambang.handoko12@gmail.com', '08116111650', '', 'b476f92586d25f2e2c6ab979d590eb8beb6aa312', 'UN9B5FGXw', NULL, NULL, 0, 1, '', '::1', 1, 1, 0, '', '2016-09-07 22:23:25'),
(2, 1, 0, 'Doly', 'Regar', 'dolyregar@gmail.com', '081263301159', '', '2677a74a48e203306b46e737cb36d950c78e2103', 'qGSylobaj', NULL, NULL, 0, 2, '', '::1', 1, 1, 0, '', '2016-09-08 10:41:55'),
(3, 1, 0, 'Lisa', 'Puspita', '', '67897654', '', '2feb3d4ab6a58761aed22e023a5592f005adadbb', 'M9ka7V2VQ', NULL, NULL, 0, 3, '', '::1', 1, 0, 0, '', '2016-09-09 20:28:52'),
(4, 1, 0, 'Ratna', 'Mauli', '', '0987656789', '', '2eba58717b6c60b7d5ea54e33624f12f453df2fc', 'N4wSqOFmE', NULL, NULL, 0, 4, '', '', 1, 0, 0, '', '2016-09-09 20:33:14');

-- --------------------------------------------------------

--
-- Table structure for table `customer_activity`
--

DROP TABLE IF EXISTS `customer_activity`;
CREATE TABLE `customer_activity` (
  `activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer_group`
--

DROP TABLE IF EXISTS `customer_group`;
CREATE TABLE `customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_group`
--

INSERT INTO `customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_group_description`
--

DROP TABLE IF EXISTS `customer_group_description`;
CREATE TABLE `customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_group_description`
--

INSERT INTO `customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test'),
(1, 2, 'Default', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `customer_history`
--

DROP TABLE IF EXISTS `customer_history`;
CREATE TABLE `customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer_ip`
--

DROP TABLE IF EXISTS `customer_ip`;
CREATE TABLE `customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_ip`
--

INSERT INTO `customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '::1', '2016-09-07 22:24:17'),
(2, 2, '::1', '2016-09-08 10:42:22'),
(3, 3, '::1', '2016-09-09 22:48:59');

-- --------------------------------------------------------

--
-- Table structure for table `customer_login`
--

DROP TABLE IF EXISTS `customer_login`;
CREATE TABLE `customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer_online`
--

DROP TABLE IF EXISTS `customer_online`;
CREATE TABLE `customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer_reward`
--

DROP TABLE IF EXISTS `customer_reward`;
CREATE TABLE `customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer_transaction`
--

DROP TABLE IF EXISTS `customer_transaction`;
CREATE TABLE `customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer_wishlist`
--

DROP TABLE IF EXISTS `customer_wishlist`;
CREATE TABLE `customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

DROP TABLE IF EXISTS `download`;
CREATE TABLE `download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `download_description`
--

DROP TABLE IF EXISTS `download_description`;
CREATE TABLE `download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `code`, `trigger`, `action`) VALUES
(1, 'voucher', 'post.order.history.add', 'total/voucher/send');

-- --------------------------------------------------------

--
-- Table structure for table `extension`
--

DROP TABLE IF EXISTS `extension`;
CREATE TABLE `extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `extension`
--

INSERT INTO `extension` (`extension_id`, `type`, `code`) VALUES
(31, 'payment', 'bank_transfer'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(5, 'total', 'total'),
(6, 'module', 'banner'),
(7, 'module', 'carousel'),
(42, 'shipping', 'jneyes'),
(13, 'module', 'category'),
(14, 'module', 'account'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(30, 'payment', 'bank_mandiri'),
(18, 'module', 'featured'),
(19, 'module', 'slideshow'),
(32, 'payment', 'bank_bca'),
(33, 'payment', 'cod'),
(48, 'module', 'latest'),
(47, 'module', 'latest');

-- --------------------------------------------------------

--
-- Table structure for table `filter`
--

DROP TABLE IF EXISTS `filter`;
CREATE TABLE `filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `filter_description`
--

DROP TABLE IF EXISTS `filter_description`;
CREATE TABLE `filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `filter_group`
--

DROP TABLE IF EXISTS `filter_group`;
CREATE TABLE `filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `filter_group_description`
--

DROP TABLE IF EXISTS `filter_group_description`;
CREATE TABLE `filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `geo_zone`
--

DROP TABLE IF EXISTS `geo_zone`;
CREATE TABLE `geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `geo_zone`
--

INSERT INTO `geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(5, 'Bali', 'Bali', '2014-01-13 19:11:25', '2014-01-13 19:11:17'),
(6, 'Bangka Belitung', 'Bangka Belitung', '0000-00-00 00:00:00', '2014-01-13 19:11:40'),
(7, 'Banten', 'Banten', '0000-00-00 00:00:00', '2014-01-13 19:12:37'),
(8, 'Bengkulu', 'Bengkulu', '0000-00-00 00:00:00', '2014-01-13 19:12:56'),
(9, 'DI Yogyakarta', 'DI Yogyakarta', '0000-00-00 00:00:00', '2014-01-13 19:13:09'),
(10, 'DI Jakarta', 'DI Jakarta', '0000-00-00 00:00:00', '2014-01-13 19:13:22'),
(11, 'Gorontalo', 'Gorontalo', '0000-00-00 00:00:00', '2014-01-13 19:13:48'),
(12, 'Jambi', 'Jambi', '0000-00-00 00:00:00', '2014-01-13 19:14:09'),
(13, 'Jawa Barat', 'Jawa Barat', '0000-00-00 00:00:00', '2014-01-13 19:14:21'),
(14, 'Jawa Tengah', 'Jawa Tengah', '0000-00-00 00:00:00', '2014-01-13 19:15:17'),
(15, 'Jawa Timur', 'Jawa Timur', '0000-00-00 00:00:00', '2014-01-13 19:15:32'),
(16, 'Kalimantan Barat', 'Kalimantan Barat', '0000-00-00 00:00:00', '2014-01-13 19:15:56'),
(17, 'Kalimantan Selatan', 'Kalimantan Selatan', '0000-00-00 00:00:00', '2014-01-13 19:16:13'),
(18, 'Kalimantan Tengah', 'Kalimantan Tengah', '0000-00-00 00:00:00', '2014-01-13 19:16:44'),
(19, 'Kalimantan Timur', 'Kalimantan Timur', '0000-00-00 00:00:00', '2014-01-13 19:17:00'),
(20, 'Kalimantan Utara', 'Kalimantan Utara', '0000-00-00 00:00:00', '2014-01-13 19:17:31'),
(21, 'Kepulauan Riau', 'Kepulauan Riau', '0000-00-00 00:00:00', '2014-01-13 19:18:36'),
(22, 'Lampung', 'Lampung', '0000-00-00 00:00:00', '2014-01-13 19:18:58'),
(23, 'Maluku', 'Maluku', '0000-00-00 00:00:00', '2014-01-13 19:19:21'),
(24, 'Maluku Utara', 'Maluku Utara', '0000-00-00 00:00:00', '2014-01-13 19:19:43'),
(25, 'Nangroe Aceh Darussalam', 'Nangroe Aceh Darussalam', '0000-00-00 00:00:00', '2014-01-13 19:20:02'),
(26, 'Nusa Tenggara Barat', 'Nusa Tenggara Barat', '0000-00-00 00:00:00', '2014-01-13 19:20:33'),
(27, 'Nusa Tenggara Timur', 'Nusa Tenggara Timur', '0000-00-00 00:00:00', '2014-01-13 19:20:53'),
(28, 'Papua', 'Papua', '0000-00-00 00:00:00', '2014-01-13 19:21:09'),
(29, 'Papua Barat', 'Papua Barat', '0000-00-00 00:00:00', '2014-01-13 19:21:32'),
(30, 'Riau', 'Riau', '0000-00-00 00:00:00', '2014-01-13 19:21:57'),
(31, 'Sulawesi Barat', 'Sulawesi Barat', '0000-00-00 00:00:00', '2014-01-13 19:22:10'),
(32, 'Sulawesi Selatan', 'Sulawesi Selatan', '0000-00-00 00:00:00', '2014-01-13 19:22:26'),
(33, 'Sulawesi Tengah', 'Sulawesi Tengah', '0000-00-00 00:00:00', '2014-01-13 19:22:40'),
(34, 'Sulawesi Tenggara', 'Sulawesi Tenggara', '0000-00-00 00:00:00', '2014-01-13 19:22:55'),
(35, 'Sulawesi Utara', 'Sulawesi Utara', '0000-00-00 00:00:00', '2014-01-13 19:23:20'),
(36, 'Sumatera Barat', 'Sumatera Barat', '0000-00-00 00:00:00', '2014-01-13 19:23:34'),
(37, 'Sumatera Selatan', 'Sumatera Selatan', '0000-00-00 00:00:00', '2014-01-13 19:23:47'),
(38, 'Sumatera Utara', 'Sumatera Utara', '0000-00-00 00:00:00', '2014-01-13 19:23:59');

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

DROP TABLE IF EXISTS `information`;
CREATE TABLE `information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `information_description`
--

DROP TABLE IF EXISTS `information_description`;
CREATE TABLE `information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `information_description`
--

INSERT INTO `information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 1, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', '', '', ''),
(5, 1, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', '', '', ''),
(3, 1, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', '', '', ''),
(6, 1, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', '', '', ''),
(4, 2, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', '', '', ''),
(5, 2, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', '', '', ''),
(3, 2, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', '', '', ''),
(6, 2, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `information_to_layout`
--

DROP TABLE IF EXISTS `information_to_layout`;
CREATE TABLE `information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `information_to_store`
--

DROP TABLE IF EXISTS `information_to_store`;
CREATE TABLE `information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `information_to_store`
--

INSERT INTO `information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
CREATE TABLE `language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en', 'en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 1),
(2, 'Indonesia', 'id', 'id_ID.UTF-8,id_ID,id-id,indonesia', 'id.png', 'indonesia', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `layout`
--

DROP TABLE IF EXISTS `layout`;
CREATE TABLE `layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `layout`
--

INSERT INTO `layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search');

-- --------------------------------------------------------

--
-- Table structure for table `layout_module`
--

DROP TABLE IF EXISTS `layout_module`;
CREATE TABLE `layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `layout_module`
--

INSERT INTO `layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(2, 4, '0', 'content_top', 0),
(3, 4, '0', 'content_top', 1),
(20, 5, '0', 'column_left', 2),
(69, 10, 'affiliate', 'column_right', 1),
(68, 6, 'account', 'column_right', 1),
(67, 1, 'carousel.29', 'content_top', 3),
(66, 1, 'slideshow.27', 'content_top', 1),
(65, 1, 'featured.28', 'content_top', 2),
(72, 3, 'category', 'column_left', 1),
(73, 3, 'banner.30', 'column_left', 2);

-- --------------------------------------------------------

--
-- Table structure for table `layout_route`
--

DROP TABLE IF EXISTS `layout_route`;
CREATE TABLE `layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `layout_route`
--

INSERT INTO `layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(38, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(44, 3, 0, 'product/category'),
(42, 1, 0, 'common/home'),
(20, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
(45, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(53, 13, 0, 'product/search');

-- --------------------------------------------------------

--
-- Table structure for table `length_class`
--

DROP TABLE IF EXISTS `length_class`;
CREATE TABLE `length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `length_class`
--

INSERT INTO `length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Table structure for table `length_class_description`
--

DROP TABLE IF EXISTS `length_class_description`;
CREATE TABLE `length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `length_class_description`
--

INSERT INTO `length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in'),
(1, 2, 'Centimeter', 'cm'),
(2, 2, 'Millimeter', 'mm'),
(3, 2, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE `location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
CREATE TABLE `manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(12, 'AMIMA', '', 0),
(13, 'KHADIJAH', '', 0),
(11, 'GREENISM', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer_to_store`
--

DROP TABLE IF EXISTS `manufacturer_to_store`;
CREATE TABLE `manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manufacturer_to_store`
--

INSERT INTO `manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(11, 0),
(12, 0),
(13, 0);

-- --------------------------------------------------------

--
-- Table structure for table `marketing`
--

DROP TABLE IF EXISTS `marketing`;
CREATE TABLE `marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modification`
--

DROP TABLE IF EXISTS `modification`;
CREATE TABLE `modification` (
  `modification_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
CREATE TABLE `module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Category', 'banner', '{"name":"Category","banner_id":"6","width":"182","height":"182","status":"1"}'),
(29, 'Home Page', 'carousel', '{"name":"Home Page","banner_id":"8","width":"130","height":"100","status":"1"}'),
(28, 'Home Page', 'featured', '{"name":"Home Page","product":["43","40","42","30"],"limit":"4","width":"200","height":"200","status":"1"}'),
(27, 'Home Page', 'slideshow', '{"name":"Home Page","banner_id":"7","width":"1140","height":"380","status":"1"}'),
(31, 'Banner 1', 'banner', '{"name":"Banner 1","banner_id":"6","width":"182","height":"182","status":"1"}');

-- --------------------------------------------------------

--
-- Table structure for table `option`
--

DROP TABLE IF EXISTS `option`;
CREATE TABLE `option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `option`
--

INSERT INTO `option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11);

-- --------------------------------------------------------

--
-- Table structure for table `option_description`
--

DROP TABLE IF EXISTS `option_description`;
CREATE TABLE `option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `option_description`
--

INSERT INTO `option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size'),
(1, 2, 'Radio'),
(2, 2, 'Checkbox'),
(4, 2, 'Text'),
(6, 2, 'Textarea'),
(8, 2, 'Date'),
(7, 2, 'File'),
(5, 2, 'Select'),
(9, 2, 'Time'),
(10, 2, 'Date &amp; Time'),
(12, 2, 'Delivery Date'),
(11, 2, 'Size');

-- --------------------------------------------------------

--
-- Table structure for table `option_value`
--

DROP TABLE IF EXISTS `option_value`;
CREATE TABLE `option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `option_value`
--

INSERT INTO `option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `option_value_description`
--

DROP TABLE IF EXISTS `option_value_description`;
CREATE TABLE `option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `option_value_description`
--

INSERT INTO `option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small'),
(43, 2, 1, 'Large'),
(32, 2, 1, 'Small'),
(45, 2, 2, 'Checkbox 4'),
(44, 2, 2, 'Checkbox 3'),
(31, 2, 1, 'Medium'),
(42, 2, 5, 'Yellow'),
(41, 2, 5, 'Green'),
(39, 2, 5, 'Red'),
(40, 2, 5, 'Blue'),
(23, 2, 2, 'Checkbox 1'),
(24, 2, 2, 'Checkbox 2'),
(48, 2, 11, 'Large'),
(47, 2, 11, 'Medium'),
(46, 2, 11, 'Small');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(40) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `random_code` int(5) DEFAULT NULL,
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `random_code`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(6, 1, 'MYB-2016-00', 0, 'Myhijab Boutique', 'http://localhost/myhijab/', 1, 1, 'Bambang', 'Handoko', 'bambang.handoko12@gmail.com', '08116111650', '', '[]', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', 'Cash On Delivery', 'cod', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', 'Flat Shipping Rate', 'jneyes.jneyes', '', '130000.0000', 5, 0, '0.0000', 0, '', 1, 5, 'IDR', '1.00000000', NULL, '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2016-09-09 17:57:15', '2016-09-09 17:57:15'),
(7, 0, 'MYB-2016-00', 0, 'Myhijab Boutique', 'http://localhost/myhijab/', 4, 1, 'Ratna', 'Mauli', 'ratna@gmail.com', '0987656789', '', '[]', 'Ratna', 'Mauli', '', 'Medan', '', '6293', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', 'Cash On Delivery', 'cod', 'Ratna', 'Mauli', '', 'Medan', '', '6293', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '130000.0000', 5, 0, '0.0000', 0, '', 1, 5, 'IDR', '1.00000000', NULL, '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2016-09-09 22:54:35', '2016-09-09 22:54:35'),
(8, 2, 'MYB-2016-00', 0, 'Myhijab Boutique', 'http://localhost/myhijab/', 2, 1, 'Doly', 'Regar', 'dolyregar@gmail.com', '081263301159', '', '[]', 'Doly', 'Regar', '', 'Medan', '', '4834', '', 'Riau', 26, 'Kab. Rokan Hilir', 365, '', '[]', 'Transfer via Bank Mandiri', 'bank_mandiri', 'Doly', 'Regar', '', 'Medan', '', '4834', '', 'Riau', 26, 'Kab. Rokan Hilir', 365, '', '[]', 'Free Shipping', 'free.free', '', '130000.0000', 5, 0, '0.0000', 0, '', 1, 5, 'IDR', '1.00000000', NULL, '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2016-09-11 08:40:29', '2016-09-11 08:40:29'),
(9, 0, 'MYB-2016-00', 0, 'Myhijab Boutique', 'http://localhost/myhijab/', 2, 1, 'Doly', 'Regar', 'dolyregar@gmail.com', '081263301159', '', '[]', 'Doly', 'Regar', '', 'Medan', '', '4834', '', 'Riau', 26, 'Kab. Rokan Hilir', 365, '', '[]', 'Transfer via Bank BCA', 'bank_bca', 'Doly', 'Regar', '', 'Medan', '', '4834', '', 'Riau', 26, 'Kab. Rokan Hilir', 365, '', '[]', 'Citylink  (Weight: 1.00kg)', 'citylink.citylink', '', '199011.0000', 2, 0, '0.0000', 0, '', 1, 5, 'IDR', '1.00000000', NULL, '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2016-09-11 09:16:18', '2016-09-11 09:16:18'),
(10, 0, 'MYB-2016-00', 0, 'Myhijab Boutique', 'http://localhost/myhijab/', 1, 1, 'Bambang', 'Handoko', 'bambang.handoko12@gmail.com', '08116111650', '', '[]', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', 'Transfer via Bank Mandiri', 'bank_mandiri', 'Bambang', 'Handoko', '', 'Medan', '', 'Medan Johor', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', '<font color="red">Layanan tidak tersedia. Silahkan periksa kembali alamat pengiriman anda atau <a href="index.php?route=informat', 'jnereg.jnereg', '', '130000.0000', 2, 0, '0.0000', 0, '', 1, 5, 'IDR', '1.00000000', NULL, '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2016-09-11 12:03:54', '2016-09-11 12:03:54'),
(11, 0, 'MYB-2016-00', 0, 'Myhijab Boutique', 'http://localhost/myhijab/', 1, 1, 'Bambang', 'Handoko', 'bambang.handoko12@gmail.com', '08116111650', '', '[]', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', 'Transfer via Bank Mandiri', 'bank_mandiri', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', '<font color="red">Layanan tidak tersedia. Silahkan periksa kembali alamat pengiriman anda atau <a href="http://www.bambanghandok', 'jnereg.jnereg', '', '130000.0000', 2, 0, '0.0000', 0, '', 1, 5, 'IDR', '1.00000000', NULL, '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2016-09-11 14:46:37', '2016-09-11 14:46:37'),
(12, 0, 'MYB-2016-00', 0, 'Myhijab Boutique', 'http://localhost/myhijab/', 1, 1, 'Bambang', 'Handoko', 'bambang.handoko12@gmail.com', '08116111650', '', '[]', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', 'Transfer via Bank Mandiri', 'bank_mandiri', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', '<span class="shipping"><img src="image/shipping/tiki.png" alt=""  width="80" height="40"/> <b>TIKI REG</b></span>', 'tikireg.tikireg', '', '206000.0000', 2, 0, '0.0000', 0, '', 2, 5, 'IDR', '1.00000000', NULL, '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2016-09-13 00:41:25', '2016-09-13 00:41:25'),
(13, 0, 'MYB-2016-00', 0, 'Myhijab Boutique', 'http://localhost/myhijab/', 1, 1, 'Bambang', 'Handoko', 'bambang.handoko12@gmail.com', '08116111650', '', '[]', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', 'Transfer via Bank BCA', 'bank_bca', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', '<span class="shipping"><img src="image/shipping/pos.png" alt=""  width="80" height="40"/> <b>POS REG</b></span>', 'posreg.posreg', '', '341500.0000', 5, 0, '0.0000', 0, '', 2, 5, 'IDR', '1.00000000', NULL, '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2016-09-13 00:56:30', '2016-09-13 01:40:37'),
(14, 3, 'MYB-2016-00', 0, 'Myhijab Boutique', 'http://localhost/myhijab/', 1, 1, 'Bambang', 'Handoko', 'bambang.handoko12@gmail.com', '08116111650', '', '[]', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', 'Transfer via Bank Mandiri', 'bank_mandiri', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', '<span class="shipping"><img src="image/shipping/pos.png" alt=""  width="80" height="40"/> <b>POS EXP</b></span>', 'posexpress.posexpress', '', '206000.0000', 5, 0, '0.0000', 0, '', 2, 5, 'IDR', '1.00000000', NULL, '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2016-09-13 10:43:05', '2016-09-13 10:43:49'),
(15, 0, 'MYB-2016-00', 0, 'Myhijab Boutique', 'http://localhost/myhijab/', 1, 1, 'Bambang', 'Handoko', 'bambang.handoko12@gmail.com', '08116111650', '', '[]', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', 'Transfer via Bank Mandiri', 'bank_mandiri', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', 'jneyes.jneyes', '', '144000.0000', 2, 0, '0.0000', 0, '', 2, 5, 'IDR', '1.00000000', NULL, '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2016-09-16 01:08:31', '2016-09-16 01:08:31'),
(16, 0, 'MYB-2016-00', 0, 'Myhijab Boutique', 'http://localhost/myhijab/', 1, 1, 'Bambang', 'Handoko', 'bambang.handoko12@gmail.com', '08116111650', '', '[]', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', 'Transfer via Bank BCA', 'bank_bca', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', 'jneyes.jneyes', '', '144000.0000', 5, 0, '0.0000', 0, '', 2, 5, 'IDR', '1.00000000', NULL, '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2016-09-16 01:24:57', '2016-09-16 01:24:57'),
(17, 4, 'MYB-2016-00', 0, 'Myhijab Boutique', 'http://localhost/myhijab/', 1, 1, 'Bambang', 'Handoko', 'bambang.handoko12@gmail.com', '08116111650', '', '[]', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', 'Transfer via Bank Mandiri', 'bank_mandiri', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', 'jneyes.jneyes', '', '142908.0000', 2, 0, '0.0000', 0, '', 2, 5, 'IDR', '1.00000000', 91, '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2016-09-16 02:26:29', '2016-09-16 02:26:29'),
(18, 0, 'MYB-2016-00', 0, 'Myhijab Boutique', 'http://localhost/myhijab/', 1, 1, 'Bambang', 'Handoko', 'bambang.handoko12@gmail.com', '08116111650', '', '[]', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', 'Transfer via Bank Mandiri', 'bank_mandiri', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', 'jneyes.jneyes', '', '143098.0000', 2, 0, '0.0000', 0, '', 2, 5, 'IDR', '1.00000000', 82, '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2016-09-16 02:53:18', '2016-09-16 02:53:18'),
(19, 0, 'MYB-2016-00', 0, 'Myhijab Boutique', 'http://localhost/myhijab/', 1, 1, 'Bambang', 'Handoko', 'bambang.handoko12@gmail.com', '08116111650', '', '[]', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', 'Transfer via Bank Mandiri', 'bank_mandiri', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', 'jneyes.jneyes', '', '143815.0000', 2, 0, '0.0000', 0, '', 2, 5, 'IDR', '1.00000000', 37, '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2016-09-16 03:03:58', '2016-09-16 03:03:58'),
(20, 5, 'MYB-2016-00', 0, 'Myhijab Boutique', 'http://localhost/myhijab/', 1, 1, 'Bambang', 'Handoko', 'bambang.handoko12@gmail.com', '08116111650', '', '[]', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', 'Transfer via Bank Mandiri', 'bank_mandiri', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', 'jneyes.jneyes', '', '144000.0000', 5, 0, '0.0000', 0, '', 2, 5, 'IDR', '1.00000000', 54, '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2016-09-16 03:06:48', '2016-09-16 05:03:18'),
(21, 6, 'MYB-2016-00', 0, 'Myhijab Boutique', 'http://localhost/myhijab/', 1, 1, 'Bambang', 'Handoko', 'bambang.handoko12@gmail.com', '08116111650', '', '[]', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', 'Transfer via Bank Mandiri', 'bank_mandiri', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', 'jneyes.jneyes', '', '288000.0000', 2, 0, '0.0000', 0, '', 2, 5, 'IDR', '1.00000000', 31, '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2016-09-18 20:58:24', '2016-09-18 20:58:24'),
(22, 0, 'MYB-2016-00', 0, 'Myhijab Boutique', 'http://localhost/myhijab/', 1, 1, 'Bambang', 'Handoko', 'bambang.handoko12@gmail.com', '08116111650', '', '[]', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', 'Transfer via Bank Mandiri', 'bank_mandiri', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', 'jneyes.jneyes', '', '288000.0000', 2, 0, '0.0000', 0, '', 2, 5, 'IDR', '1.00000000', 50, '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2016-09-18 21:33:06', '2016-09-18 21:33:06'),
(23, 0, 'MYB-2016-00', 0, 'Myhijab Boutique', 'http://localhost/myhijab/', 1, 1, 'Bambang', 'Handoko', 'bambang.handoko12@gmail.com', '08116111650', '', '[]', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', 'Transfer via Bank BCA', 'bank_bca', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', 'jneyes.jneyes', '', '288000.0000', 2, 0, '0.0000', 0, '', 2, 5, 'IDR', '1.00000000', 77, '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2016-09-18 21:40:11', '2016-09-18 21:40:11'),
(24, 0, 'MYB-2016-00', 0, 'Myhijab Boutique', 'http://localhost/myhijab/', 1, 1, 'Bambang', 'Handoko', 'bambang.handoko12@gmail.com', '08116111650', '', '[]', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', 'Transfer via Bank BCA', 'bank_bca', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', 'jneyes.jneyes', '', '288000.0000', 2, 0, '0.0000', 0, '', 2, 5, 'IDR', '1.00000000', 28, '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2016-09-18 21:40:42', '2016-09-18 21:40:42'),
(25, 0, 'MYB-2016-00', 0, 'Myhijab Boutique', 'http://localhost/myhijab/', 1, 1, 'Bambang', 'Handoko', 'bambang.handoko12@gmail.com', '08116111650', '', '[]', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', 'Transfer via Bank BCA', 'bank_bca', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', 'jneyes.jneyes', '', '288000.0000', 2, 0, '0.0000', 0, '', 2, 5, 'IDR', '1.00000000', 28, '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2016-09-18 21:43:08', '2016-09-18 21:48:39'),
(26, 0, 'MYB-2016-00', 0, 'Myhijab Boutique', 'http://localhost/myhijab/', 1, 1, 'Bambang', 'Handoko', 'bambang.handoko12@gmail.com', '08116111650', '', '[]', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', 'Transfer via Bank BCA', 'bank_bca', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', 'jneyes.jneyes', '', '288000.0000', 2, 0, '0.0000', 0, '', 2, 5, 'IDR', '1.00000000', 73, '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2016-09-18 21:49:14', '2016-09-18 21:50:11'),
(27, 0, 'MYB-2016-00', 0, 'Myhijab Boutique', 'http://localhost/myhijab/', 1, 1, 'Bambang', 'Handoko', 'bambang.handoko12@gmail.com', '08116111650', '', '[]', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', 'Transfer via Bank BCA', 'bank_bca', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', 'jneyes.jneyes', '', '288000.0000', 2, 0, '0.0000', 0, '', 2, 5, 'IDR', '1.00000000', 83, '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2016-09-18 21:58:12', '2016-09-18 21:58:12'),
(28, 0, 'MYB-2016-00', 0, 'Myhijab Boutique', 'http://localhost/myhijab/', 1, 1, 'Bambang', 'Handoko', 'bambang.handoko12@gmail.com', '08116111650', '', '[]', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', 'Transfer via Bank BCA', 'bank_bca', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', 'jneyes.jneyes', '', '288000.0000', 2, 0, '0.0000', 0, '', 2, 5, 'IDR', '1.00000000', 49, '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2016-09-18 21:58:19', '2016-09-18 21:58:19'),
(29, 0, 'MYB-2016-00', 0, 'Myhijab Boutique', 'http://localhost/myhijab/', 1, 1, 'Bambang', 'Handoko', 'bambang.handoko12@gmail.com', '08116111650', '', '[]', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', 'Transfer via Bank BCA', 'bank_bca', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', 'jneyes.jneyes', '', '288000.0000', 2, 0, '0.0000', 0, '', 2, 5, 'IDR', '1.00000000', 39, '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2016-09-19 05:40:08', '2016-09-19 05:40:08'),
(30, 0, 'MYB-2016-00', 0, 'Myhijab Boutique', 'http://localhost/myhijab/', 1, 1, 'Bambang', 'Handoko', 'bambang.handoko12@gmail.com', '08116111650', '', '[]', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', 'Transfer via Bank Mandiri', 'bank_mandiri', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', 'jneyes.jneyes', '', '288000.0000', 2, 0, '0.0000', 0, '', 2, 5, 'IDR', '1.00000000', 59, '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2016-09-19 05:41:31', '2016-09-19 05:41:31'),
(31, 0, 'MYB-2016-00', 0, 'Myhijab Boutique', 'http://localhost/myhijab/', 1, 1, 'Bambang', 'Handoko', 'bambang.handoko12@gmail.com', '08116111650', '', '[]', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', 'Transfer via Bank Mandiri', 'bank_mandiri', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', 'jneyes.jneyes', '', '288000.0000', 2, 0, '0.0000', 0, '', 2, 5, 'IDR', '1.00000000', 46, '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2016-09-19 05:41:44', '2016-09-19 05:41:44'),
(32, 0, 'MYB-2016-00', 0, 'Myhijab Boutique', 'http://localhost/myhijab/', 1, 1, 'Bambang', 'Handoko', 'bambang.handoko12@gmail.com', '08116111650', '', '[]', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', 'Transfer via Bank Mandiri', 'bank_mandiri', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', 'jneyes.jneyes', '', '288000.0000', 2, 0, '0.0000', 0, '', 2, 5, 'IDR', '1.00000000', 17, '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2016-09-19 05:42:21', '2016-09-19 05:42:21'),
(33, 0, 'MYB-2016-00', 0, 'Myhijab Boutique', 'http://localhost/myhijab/', 1, 1, 'Bambang', 'Handoko', 'bambang.handoko12@gmail.com', '08116111650', '', '[]', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', 'Transfer via Bank Mandiri', 'bank_mandiri', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', 'jneyes.jneyes', '', '288000.0000', 2, 0, '0.0000', 0, '', 2, 5, 'IDR', '1.00000000', 41, '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2016-09-19 05:42:34', '2016-09-19 05:42:34'),
(34, 0, 'MYB-2016-00', 0, 'Myhijab Boutique', 'http://localhost/myhijab/', 1, 1, 'Bambang', 'Handoko', 'bambang.handoko12@gmail.com', '08116111650', '', '[]', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', 'Transfer via Bank Mandiri', 'bank_mandiri', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', 'jneyes.jneyes', '', '288000.0000', 2, 0, '0.0000', 0, '', 2, 5, 'IDR', '1.00000000', 28, '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2016-09-19 05:43:14', '2016-09-19 05:43:14'),
(35, 0, 'MYB-2016-00', 0, 'Myhijab Boutique', 'http://localhost/myhijab/', 1, 1, 'Bambang', 'Handoko', 'bambang.handoko12@gmail.com', '08116111650', '', '[]', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', 'Transfer via Bank Mandiri', 'bank_mandiri', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', 'jneyes.jneyes', '', '288000.0000', 2, 0, '0.0000', 0, '', 2, 5, 'IDR', '1.00000000', 85, '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2016-09-19 05:43:28', '2016-09-19 06:40:04'),
(36, 7, 'MYB-2016-00', 0, 'Myhijab Boutique', 'http://localhost/myhijab/', 1, 1, 'Bambang', 'Handoko', 'bambang.handoko12@gmail.com', '08116111650', '', '[]', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', 'Transfer via Bank Mandiri', 'bank_mandiri', 'Bambang', 'Handoko', '', 'Medan', '', '6302', '', 'Sumatera Utara', 34, 'Kota Medan', 482, '', '[]', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', 'jneyes.jneyes', '', '288000.0000', 5, 0, '0.0000', 0, '', 2, 5, 'IDR', '1.00000000', 60, '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2016-09-19 07:54:49', '2016-09-19 17:51:06');

-- --------------------------------------------------------

--
-- Table structure for table `order_custom_field`
--

DROP TABLE IF EXISTS `order_custom_field`;
CREATE TABLE `order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_history`
--

DROP TABLE IF EXISTS `order_history`;
CREATE TABLE `order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_history`
--

INSERT INTO `order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(20, 6, 5, 0, '', '2016-09-09 17:57:15'),
(21, 7, 5, 0, '', '2016-09-09 22:54:35'),
(22, 8, 5, 0, '', '2016-09-11 08:40:29'),
(23, 9, 2, 0, '', '2016-09-11 09:16:18'),
(24, 10, 2, 0, '', '2016-09-11 12:03:54'),
(25, 11, 2, 0, '', '2016-09-11 14:46:37'),
(26, 12, 2, 0, '', '2016-09-13 00:41:25'),
(27, 13, 2, 0, '', '2016-09-13 00:56:30'),
(28, 13, 5, 0, '', '2016-09-13 01:40:37'),
(29, 14, 2, 0, '', '2016-09-13 10:43:05'),
(30, 14, 5, 0, '', '2016-09-13 10:43:49'),
(31, 15, 2, 0, '', '2016-09-16 01:08:31'),
(32, 16, 5, 0, '', '2016-09-16 01:24:57'),
(33, 17, 2, 0, '', '2016-09-16 02:26:29'),
(34, 18, 2, 0, '', '2016-09-16 02:53:18'),
(35, 19, 2, 0, '', '2016-09-16 03:03:58'),
(36, 20, 2, 0, '', '2016-09-16 03:06:48'),
(37, 20, 5, 0, '', '2016-09-16 05:03:18'),
(38, 21, 2, 0, '', '2016-09-18 20:58:24'),
(39, 22, 2, 0, '', '2016-09-18 21:33:06'),
(40, 23, 2, 0, '', '2016-09-18 21:40:11'),
(41, 24, 2, 0, '', '2016-09-18 21:40:42'),
(42, 25, 2, 0, '', '2016-09-18 21:43:08'),
(43, 25, 0, 0, '', '2016-09-18 21:48:39'),
(44, 25, 2, 0, '', '2016-09-18 21:48:39'),
(45, 26, 2, 0, '', '2016-09-18 21:49:14'),
(46, 26, 0, 0, '', '2016-09-18 21:50:11'),
(47, 26, 2, 0, '', '2016-09-18 21:50:11'),
(48, 27, 2, 0, '', '2016-09-18 21:58:12'),
(49, 28, 2, 0, '', '2016-09-18 21:58:19'),
(50, 29, 2, 0, '', '2016-09-19 05:40:08'),
(51, 30, 2, 0, '', '2016-09-19 05:41:31'),
(52, 31, 2, 0, '', '2016-09-19 05:41:44'),
(53, 32, 2, 0, '', '2016-09-19 05:42:21'),
(54, 33, 2, 0, '', '2016-09-19 05:42:34'),
(55, 34, 2, 0, '', '2016-09-19 05:43:14'),
(56, 35, 2, 0, '', '2016-09-19 05:43:28'),
(57, 35, 0, 0, '', '2016-09-19 06:40:04'),
(58, 35, 2, 0, '', '2016-09-19 06:40:04'),
(59, 36, 2, 0, '', '2016-09-19 07:54:49'),
(60, 36, 5, 0, '', '2016-09-19 17:51:06');

-- --------------------------------------------------------

--
-- Table structure for table `order_option`
--

DROP TABLE IF EXISTS `order_option`;
CREATE TABLE `order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

DROP TABLE IF EXISTS `order_product`;
CREATE TABLE `order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(11, 6, 50, 'GREENISM Cordoba Hijab Summer Mint', 'Cordoba Hijab', 1, '130000.0000', '130000.0000', '0.0000', 0),
(12, 7, 50, 'GREENISM Cordoba Hijab Summer Mint', 'Cordoba Hijab', 1, '130000.0000', '130000.0000', '0.0000', 0),
(13, 8, 52, 'GREENISM Cordoba Hijab Summer Pink', 'Cordoba Hijab', 1, '130000.0000', '130000.0000', '0.0000', 0),
(14, 9, 54, 'AMIMA Alodita Rope Maroon', 'Alodita Rope', 1, '199000.0000', '199000.0000', '0.0000', 0),
(15, 10, 52, 'GREENISM Cordoba Hijab Summer Pink', 'Cordoba Hijab', 1, '130000.0000', '130000.0000', '0.0000', 0),
(16, 11, 52, 'GREENISM Cordoba Hijab Summer Pink', 'Cordoba Hijab', 1, '130000.0000', '130000.0000', '0.0000', 0),
(17, 12, 53, 'AMIMA Alika Linen Brown', 'Alika Linen', 1, '199000.0000', '199000.0000', '0.0000', 0),
(18, 13, 57, 'KHADIJAH Istanbul Magenta', 'Istanbul', 1, '333000.0000', '333000.0000', '0.0000', 0),
(19, 14, 53, 'AMIMA Alika Linen Brown', 'Alika Linen', 1, '199000.0000', '199000.0000', '0.0000', 0),
(20, 15, 59, 'Tes', 'Tes', 1, '130000.0000', '130000.0000', '0.0000', 0),
(21, 16, 59, 'Tes', 'Tes', 1, '130000.0000', '130000.0000', '0.0000', 0),
(22, 0, 59, 'Tes', 'Tes', 1, '130000.0000', '130000.0000', '0.0000', 0),
(23, 17, 59, 'Tes', 'Tes', 1, '130000.0000', '130000.0000', '0.0000', 0),
(24, 18, 59, 'Tes', 'Tes', 1, '130000.0000', '130000.0000', '0.0000', 0),
(25, 19, 59, 'Tes', 'Tes', 1, '130000.0000', '130000.0000', '0.0000', 0),
(26, 20, 59, 'Tes', 'Tes', 1, '130000.0000', '130000.0000', '0.0000', 0),
(27, 21, 59, 'Tes', 'Tes', 2, '130000.0000', '260000.0000', '0.0000', 0),
(28, 22, 59, 'Tes', 'Tes', 2, '130000.0000', '260000.0000', '0.0000', 0),
(29, 23, 59, 'Tes', 'Tes', 2, '130000.0000', '260000.0000', '0.0000', 0),
(30, 24, 59, 'Tes', 'Tes', 2, '130000.0000', '260000.0000', '0.0000', 0),
(32, 25, 59, 'Tes', 'Tes', 2, '130000.0000', '260000.0000', '0.0000', 0),
(34, 26, 59, 'Tes', 'Tes', 2, '130000.0000', '260000.0000', '0.0000', 0),
(35, 27, 59, 'Tes', 'Tes', 2, '130000.0000', '260000.0000', '0.0000', 0),
(36, 28, 59, 'Tes', 'Tes', 2, '130000.0000', '260000.0000', '0.0000', 0),
(37, 29, 59, 'Tes', 'Tes', 2, '130000.0000', '260000.0000', '0.0000', 0),
(38, 30, 59, 'Tes', 'Tes', 2, '130000.0000', '260000.0000', '0.0000', 0),
(39, 31, 59, 'Tes', 'Tes', 2, '130000.0000', '260000.0000', '0.0000', 0),
(40, 32, 59, 'Tes', 'Tes', 2, '130000.0000', '260000.0000', '0.0000', 0),
(41, 33, 59, 'Tes', 'Tes', 2, '130000.0000', '260000.0000', '0.0000', 0),
(42, 34, 59, 'Tes', 'Tes', 2, '130000.0000', '260000.0000', '0.0000', 0),
(44, 35, 59, 'Tes', 'Tes', 2, '130000.0000', '260000.0000', '0.0000', 0),
(45, 36, 59, 'Tes', 'Tes', 2, '130000.0000', '260000.0000', '0.0000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_recurring`
--

DROP TABLE IF EXISTS `order_recurring`;
CREATE TABLE `order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_recurring_transaction`
--

DROP TABLE IF EXISTS `order_recurring_transaction`;
CREATE TABLE `order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

DROP TABLE IF EXISTS `order_status`;
CREATE TABLE `order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired'),
(2, 2, 'Processing'),
(3, 2, 'Shipped'),
(7, 2, 'Canceled'),
(5, 2, 'Complete'),
(8, 2, 'Denied'),
(9, 2, 'Canceled Reversal'),
(10, 2, 'Failed'),
(11, 2, 'Refunded'),
(12, 2, 'Reversed'),
(13, 2, 'Chargeback'),
(1, 2, 'Pending'),
(16, 2, 'Voided'),
(15, 2, 'Processed'),
(14, 2, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `order_total`
--

DROP TABLE IF EXISTS `order_total`;
CREATE TABLE `order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_total`
--

INSERT INTO `order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(28, 6, 'sub_total', 'Sub-Total', '130000.0000', 1),
(29, 6, 'shipping', 'Flat Shipping Rate', '0.0000', 3),
(30, 6, 'total', 'Total', '130000.0000', 9),
(31, 7, 'sub_total', 'Sub-Total', '130000.0000', 1),
(32, 7, 'shipping', 'Flat Shipping Rate', '0.0000', 3),
(33, 7, 'total', 'Total', '130000.0000', 9),
(34, 8, 'sub_total', 'Sub-Total', '130000.0000', 1),
(35, 8, 'shipping', 'Free Shipping', '0.0000', 3),
(36, 8, 'total', 'Total', '130000.0000', 9),
(37, 9, 'sub_total', 'Sub-Total', '199000.0000', 1),
(38, 9, 'shipping', 'Citylink  (Weight: 1.00kg)', '11.6000', 3),
(39, 9, 'total', 'Total', '199011.6000', 9),
(40, 10, 'sub_total', 'Sub-Total', '130000.0000', 1),
(41, 10, 'shipping', '<font color="red">Layanan tidak tersedia. Silahkan periksa kembali alamat pengiriman anda atau <a href="index.php?route=information/contact">hubungi kami</a> untuk bantuan!</font>', '0.0000', 3),
(42, 10, 'total', 'Total', '130000.0000', 9),
(43, 11, 'sub_total', 'Sub-Total', '130000.0000', 1),
(44, 11, 'shipping', '<font color="red">Layanan tidak tersedia. Silahkan periksa kembali alamat pengiriman anda atau <a href="http://www.bambanghandoko.com">hubungi kami</a> untuk bantuan!</font>', '0.0000', 3),
(45, 11, 'total', 'Total', '130000.0000', 9),
(46, 12, 'sub_total', 'Sub-Total', '199000.0000', 1),
(47, 12, 'shipping', '<span class="shipping"><img src="image/shipping/tiki.png" alt=""  width="80" height="40"/> <b>TIKI REG</b></span>', '7000.0000', 3),
(48, 12, 'total', 'Total', '206000.0000', 9),
(49, 13, 'sub_total', 'Sub-Total', '333000.0000', 1),
(50, 13, 'shipping', '<span class="shipping"><img src="image/shipping/pos.png" alt=""  width="80" height="40"/> <b>POS REG</b></span>', '8500.0000', 3),
(51, 13, 'total', 'Total', '341500.0000', 9),
(52, 14, 'sub_total', 'Sub-Total', '199000.0000', 1),
(53, 14, 'shipping', '<span class="shipping"><img src="image/shipping/pos.png" alt=""  width="80" height="40"/> <b>POS EXP</b></span>', '7000.0000', 3),
(54, 14, 'total', 'Total', '206000.0000', 9),
(55, 15, 'sub_total', 'Sub-Total', '130000.0000', 1),
(56, 15, 'shipping', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', '14000.0000', 3),
(57, 15, 'total', 'Total', '144000.0000', 9),
(58, 16, 'sub_total', 'Sub-Total', '130000.0000', 1),
(59, 16, 'shipping', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', '14000.0000', 3),
(60, 16, 'total', 'Total', '144000.0000', 9),
(61, 0, 'sub_total', 'Sub-Total', '130000.0000', 1),
(62, 0, 'shipping', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', '14000.0000', 3),
(63, 0, 'total', 'Total', '144000.0000', 9),
(64, 17, 'sub_total', 'Sub-Total', '130000.0000', 1),
(65, 17, 'shipping', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', '14000.0000', 3),
(66, 17, 'total', 'Total', '144000.0000', 9),
(67, 18, 'sub_total', 'Sub-Total', '130000.0000', 1),
(68, 18, 'shipping', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', '14000.0000', 3),
(69, 18, 'total', 'Total', '144000.0000', 9),
(70, 19, 'sub_total', 'Sub-Total', '130000.0000', 1),
(71, 19, 'shipping', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', '14000.0000', 3),
(72, 19, 'total', 'Total', '144000.0000', 9),
(73, 20, 'sub_total', 'Sub-Total', '130000.0000', 1),
(74, 20, 'shipping', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', '14000.0000', 3),
(75, 20, 'total', 'Total', '144000.0000', 9),
(76, 21, 'sub_total', 'Sub-Total', '260000.0000', 1),
(77, 21, 'shipping', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', '28000.0000', 3),
(78, 21, 'total', 'Total', '288000.0000', 9),
(79, 22, 'sub_total', 'Sub-Total', '260000.0000', 1),
(80, 22, 'shipping', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', '28000.0000', 3),
(81, 22, 'total', 'Total', '288000.0000', 9),
(82, 23, 'sub_total', 'Sub-Total', '260000.0000', 1),
(83, 23, 'shipping', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', '28000.0000', 3),
(84, 23, 'total', 'Total', '288000.0000', 9),
(85, 24, 'sub_total', 'Sub-Total', '260000.0000', 1),
(86, 24, 'shipping', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', '28000.0000', 3),
(87, 24, 'total', 'Total', '288000.0000', 9),
(92, 25, 'shipping', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', '28000.0000', 3),
(91, 25, 'sub_total', 'Sub-Total', '260000.0000', 1),
(93, 25, 'total', 'Total', '288000.0000', 9),
(98, 26, 'shipping', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', '28000.0000', 3),
(97, 26, 'sub_total', 'Sub-Total', '260000.0000', 1),
(99, 26, 'total', 'Total', '288000.0000', 9),
(100, 27, 'sub_total', 'Sub-Total', '260000.0000', 1),
(101, 27, 'shipping', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', '28000.0000', 3),
(102, 27, 'total', 'Total', '288000.0000', 9),
(103, 28, 'sub_total', 'Sub-Total', '260000.0000', 1),
(104, 28, 'shipping', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', '28000.0000', 3),
(105, 28, 'total', 'Total', '288000.0000', 9),
(106, 29, 'sub_total', 'Sub-Total', '260000.0000', 1),
(107, 29, 'shipping', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', '28000.0000', 3),
(108, 29, 'total', 'Total', '288000.0000', 9),
(109, 30, 'sub_total', 'Sub-Total', '260000.0000', 1),
(110, 30, 'shipping', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', '28000.0000', 3),
(111, 30, 'total', 'Total', '288000.0000', 9),
(112, 31, 'sub_total', 'Sub-Total', '260000.0000', 1),
(113, 31, 'shipping', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', '28000.0000', 3),
(114, 31, 'total', 'Total', '288000.0000', 9),
(115, 32, 'sub_total', 'Sub-Total', '260000.0000', 1),
(116, 32, 'shipping', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', '28000.0000', 3),
(117, 32, 'total', 'Total', '288000.0000', 9),
(118, 33, 'sub_total', 'Sub-Total', '260000.0000', 1),
(119, 33, 'shipping', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', '28000.0000', 3),
(120, 33, 'total', 'Total', '288000.0000', 9),
(121, 34, 'sub_total', 'Sub-Total', '260000.0000', 1),
(122, 34, 'shipping', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', '28000.0000', 3),
(123, 34, 'total', 'Total', '288000.0000', 9),
(128, 35, 'shipping', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', '28000.0000', 3),
(127, 35, 'sub_total', 'Sub-Total', '260000.0000', 1),
(129, 35, 'total', 'Total', '288000.0000', 9),
(130, 36, 'sub_total', 'Sub-Total', '260000.0000', 1),
(131, 36, 'shipping', '<span class="shipping"><img src="image/shipping/jne.png" alt="" width="80" height="40"/><b>JNE Yes</b></span>', '28000.0000', 3),
(132, 36, 'total', 'Total', '288000.0000', 9);

-- --------------------------------------------------------

--
-- Table structure for table `order_voucher`
--

DROP TABLE IF EXISTS `order_voucher`;
CREATE TABLE `order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(59, 'Tes', '', '', '', '', '', '', '', 72, 5, 'catalog/product/greenism/greenism_cordoba_tropica_banana.jpg', 11, 1, '130000.0000', 0, 0, '2016-09-15', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2016-09-15 16:27:08', '2016-09-18 21:36:26');

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute`
--

DROP TABLE IF EXISTS `product_attribute`;
CREATE TABLE `product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_description`
--

DROP TABLE IF EXISTS `product_description`;
CREATE TABLE `product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_description`
--

INSERT INTO `product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(59, 1, 'Tes', '&lt;p&gt;Tes&lt;/p&gt;', '', 'Tes', '', ''),
(59, 2, 'Tes', '&lt;p&gt;Tes&lt;br&gt;&lt;/p&gt;', '', 'Tes', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_discount`
--

DROP TABLE IF EXISTS `product_discount`;
CREATE TABLE `product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_filter`
--

DROP TABLE IF EXISTS `product_filter`;
CREATE TABLE `product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

DROP TABLE IF EXISTS `product_image`;
CREATE TABLE `product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_option`
--

DROP TABLE IF EXISTS `product_option`;
CREATE TABLE `product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_option_value`
--

DROP TABLE IF EXISTS `product_option_value`;
CREATE TABLE `product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_recurring`
--

DROP TABLE IF EXISTS `product_recurring`;
CREATE TABLE `product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_related`
--

DROP TABLE IF EXISTS `product_related`;
CREATE TABLE `product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_reward`
--

DROP TABLE IF EXISTS `product_reward`;
CREATE TABLE `product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_special`
--

DROP TABLE IF EXISTS `product_special`;
CREATE TABLE `product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_to_category`
--

DROP TABLE IF EXISTS `product_to_category`;
CREATE TABLE `product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_to_download`
--

DROP TABLE IF EXISTS `product_to_download`;
CREATE TABLE `product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_to_layout`
--

DROP TABLE IF EXISTS `product_to_layout`;
CREATE TABLE `product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_to_layout`
--

INSERT INTO `product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(59, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_to_store`
--

DROP TABLE IF EXISTS `product_to_store`;
CREATE TABLE `product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_to_store`
--

INSERT INTO `product_to_store` (`product_id`, `store_id`) VALUES
(59, 0);

-- --------------------------------------------------------

--
-- Table structure for table `recurring`
--

DROP TABLE IF EXISTS `recurring`;
CREATE TABLE `recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `recurring_description`
--

DROP TABLE IF EXISTS `recurring_description`;
CREATE TABLE `recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `return`
--

DROP TABLE IF EXISTS `return`;
CREATE TABLE `return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `return_action`
--

DROP TABLE IF EXISTS `return_action`;
CREATE TABLE `return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `return_action`
--

INSERT INTO `return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent'),
(1, 2, 'Refunded'),
(2, 2, 'Credit Issued'),
(3, 2, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `return_history`
--

DROP TABLE IF EXISTS `return_history`;
CREATE TABLE `return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `return_reason`
--

DROP TABLE IF EXISTS `return_reason`;
CREATE TABLE `return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `return_reason`
--

INSERT INTO `return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details'),
(1, 2, 'Dead On Arrival'),
(2, 2, 'Received Wrong Item'),
(3, 2, 'Order Error'),
(4, 2, 'Faulty, please supply details'),
(5, 2, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `return_status`
--

DROP TABLE IF EXISTS `return_status`;
CREATE TABLE `return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `return_status`
--

INSERT INTO `return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products'),
(1, 2, 'Pending'),
(3, 2, 'Complete'),
(2, 2, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` longtext NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1, 0, 'shipping', 'shipping_sort_order', '3', 0),
(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3, 0, 'sub_total', 'sub_total_status', '1', 0),
(5, 0, 'total', 'total_sort_order', '9', 0),
(6, 0, 'total', 'total_status', '1', 0),
(1146, 0, 'bank_mandiri', 'bank_mandiri_bank2', 'Transfer to Mandiri Myhijab Boutique', 0),
(1148, 0, 'bank_mandiri', 'bank_mandiri_order_status_id', '15', 0),
(1147, 0, 'bank_mandiri', 'bank_mandiri_total', '', 0),
(14, 0, 'shipping', 'shipping_status', '1', 0),
(15, 0, 'shipping', 'shipping_estimator', '1', 0),
(53, 0, 'reward', 'reward_sort_order', '2', 0),
(54, 0, 'reward', 'reward_status', '1', 0),
(146, 0, 'category', 'category_status', '1', 0),
(158, 0, 'account', 'account_status', '1', 0),
(159, 0, 'affiliate', 'affiliate_status', '1', 0),
(1290, 0, 'config', 'config_encryption', 'GtTqD79Jcj5Db6yXYUGDj1WDuR9FOIsU9Jcjkc63hU95ZiQ7U3yn7jsoKG9c7Isn36q2ez0ycxaV86ZtajLG1NVQ2XkqQWExKic6JQmbbCLSiOt02NyCAQ6KgLpsG3zvdftVczOrgJL5ppcUIvYXQU906pUu0XyRoXwpTLJZ5faPHTDNJc9e1BjSJjSdO460y0NOdmxx7IKP7ZxQZnFn8vP0aFrs27VkFthYIQlZLdTnh9YPPsXJpHn9ZAuCYm0NbQsi0wwSfBetzTBHev4v5P7mvPqoSeCbOfWbd7qd4RdosR5Ho3pCmZma6CYwqNUptWQgwn2PygjggqlgH0C6Ody8vb7iErUTiAnwNEiF5bcUVrrJ2yf3eoHe5WKhD0X1qGv3I3R0OBwclSiTVdwXbUc4Xd3Uiq0uapdNMEWdPCCTuwHvikoxVC21p8XWljkvt6XcHPVJMujOIZ09U19rK2MTmU7fHTaw1fdGbRduC3ohFI4duqc6P7nmAIaHM9aSM7TWQm61V5JqQ45PqyVcx9i55z8ZLLfJGDKRzaUkg58C8okx7FS8wkAK6JtwtM9gvgmTB0GWH50Z92b3gTKHM33QHTVvHeSRak5OOsL8oCBE8xfLmwCyQC4mFMeXPTsXG14FvHuMGtftlmse0NAvuwYIu7ihSVrElN59lHGudzsKRkdWA5amBhdEFjPW7zVq2zwH6v8JFQuxhIcXS1bsUp9i0IwmUaj2RxaDtAV2Na8GHbQ0754qgSqSPIwgyNW995y4oW1t71ink8yN4p2OOHi49pVBaEii9RmPhVdp4BaQJcgexaYOdE43VNY2RM6uRVNB0suB4P5PYM5nF6Kan5u69Pcirgs5rnS3MWO957O19tkWf8glgu76ZuFwEwF8KlE1AsClyufyX0lHePJ9chBL26OD1ZnK4y1vIB8CarK1XxWFoqGdDlt6eCQ2l2klVi95vQeRS1n8WlzXbiEidslImgMWiuDin1yTCSTVtj2x7sd80T5IMFOWKg1mfUDS', 0),
(1286, 0, 'config', 'config_compression', '0', 0),
(1287, 0, 'config', 'config_secure', '0', 0),
(1288, 0, 'config', 'config_password', '1', 0),
(1289, 0, 'config', 'config_shared', '0', 0),
(1256, 0, 'config', 'config_image_product_height', '228', 0),
(1257, 0, 'config', 'config_image_additional_width', '74', 0),
(1258, 0, 'config', 'config_image_additional_height', '74', 0),
(1259, 0, 'config', 'config_image_related_width', '80', 0),
(1260, 0, 'config', 'config_image_related_height', '80', 0),
(1261, 0, 'config', 'config_image_compare_width', '90', 0),
(1262, 0, 'config', 'config_image_compare_height', '90', 0),
(1263, 0, 'config', 'config_image_wishlist_width', '47', 0),
(1264, 0, 'config', 'config_image_wishlist_height', '47', 0),
(1265, 0, 'config', 'config_image_cart_width', '47', 0),
(1266, 0, 'config', 'config_image_cart_height', '47', 0),
(1267, 0, 'config', 'config_image_location_width', '268', 0),
(1268, 0, 'config', 'config_image_location_height', '50', 0),
(1269, 0, 'config', 'config_ftp_hostname', 'localhost', 0),
(1270, 0, 'config', 'config_ftp_port', '21', 0),
(1271, 0, 'config', 'config_ftp_username', '', 0),
(1272, 0, 'config', 'config_ftp_password', '', 0),
(1273, 0, 'config', 'config_ftp_root', '', 0),
(1274, 0, 'config', 'config_ftp_status', '0', 0),
(1275, 0, 'config', 'config_mail_protocol', 'mail', 0),
(1276, 0, 'config', 'config_mail_parameter', '', 0),
(1277, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(1278, 0, 'config', 'config_mail_smtp_username', '', 0),
(1279, 0, 'config', 'config_mail_smtp_password', '', 0),
(1280, 0, 'config', 'config_mail_smtp_port', '25', 0),
(1281, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(1282, 0, 'config', 'config_mail_alert', '', 0),
(1283, 0, 'config', 'config_maintenance', '0', 0),
(1284, 0, 'config', 'config_seo_url', '0', 0),
(1285, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(94, 0, 'voucher', 'voucher_sort_order', '8', 0),
(95, 0, 'voucher', 'voucher_status', '1', 0),
(1145, 0, 'bank_mandiri', 'bank_mandiri_bank1', 'Transfer Ke Mandiri Myhijab Boutique', 0),
(1255, 0, 'config', 'config_image_product_width', '228', 0),
(1254, 0, 'config', 'config_image_popup_height', '500', 0),
(1253, 0, 'config', 'config_image_popup_width', '500', 0),
(1252, 0, 'config', 'config_image_thumb_height', '228', 0),
(1251, 0, 'config', 'config_image_thumb_width', '228', 0),
(1250, 0, 'config', 'config_image_category_height', '80', 0),
(1249, 0, 'config', 'config_image_category_width', '80', 0),
(1248, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
(1247, 0, 'config', 'config_logo', 'catalog/logo.png', 0),
(1246, 0, 'config', 'config_captcha_page', '["review","return","contact"]', 1),
(1245, 0, 'config', 'config_captcha', '', 0),
(1244, 0, 'config', 'config_return_status_id', '2', 0),
(1243, 0, 'config', 'config_return_id', '0', 0),
(1242, 0, 'config', 'config_affiliate_mail', '0', 0),
(1241, 0, 'config', 'config_affiliate_id', '4', 0),
(1240, 0, 'config', 'config_affiliate_commission', '5', 0),
(1239, 0, 'config', 'config_affiliate_auto', '0', 0),
(1238, 0, 'config', 'config_affiliate_approval', '0', 0),
(1237, 0, 'config', 'config_stock_checkout', '0', 0),
(1236, 0, 'config', 'config_stock_warning', '0', 0),
(1235, 0, 'config', 'config_stock_display', '0', 0),
(1234, 0, 'config', 'config_api_id', '1', 0),
(1233, 0, 'config', 'config_order_mail', '0', 0),
(1232, 0, 'config', 'config_fraud_status_id', '7', 0),
(1231, 0, 'config', 'config_complete_status', '["5","3"]', 1),
(1230, 0, 'config', 'config_processing_status', '["5","1","2","12","3"]', 1),
(1229, 0, 'config', 'config_order_status_id', '2', 0),
(1228, 0, 'config', 'config_checkout_id', '5', 0),
(1227, 0, 'config', 'config_checkout_guest', '0', 0),
(1226, 0, 'config', 'config_cart_weight', '0', 0),
(1225, 0, 'config', 'config_invoice_prefix', 'MYB-2016-00', 0),
(1224, 0, 'config', 'config_account_mail', '0', 0),
(1223, 0, 'config', 'config_account_id', '3', 0),
(1222, 0, 'config', 'config_login_attempts', '5', 0),
(1221, 0, 'config', 'config_customer_price', '0', 0),
(1220, 0, 'config', 'config_customer_group_display', '["1"]', 1),
(1219, 0, 'config', 'config_customer_group_id', '1', 0),
(1218, 0, 'config', 'config_customer_online', '0', 0),
(1217, 0, 'config', 'config_tax_customer', 'shipping', 0),
(1216, 0, 'config', 'config_tax_default', 'shipping', 0),
(1215, 0, 'config', 'config_tax', '1', 0),
(1214, 0, 'config', 'config_voucher_max', '1000', 0),
(1213, 0, 'config', 'config_voucher_min', '1', 0),
(1212, 0, 'config', 'config_review_mail', '0', 0),
(1211, 0, 'config', 'config_review_guest', '1', 0),
(1210, 0, 'config', 'config_review_status', '1', 0),
(1209, 0, 'config', 'config_limit_admin', '20', 0),
(1208, 0, 'config', 'config_product_description_length', '100', 0),
(1207, 0, 'config', 'config_product_limit', '15', 0),
(1206, 0, 'config', 'config_product_count', '1', 0),
(1205, 0, 'config', 'config_weight_class_id', '1', 0),
(1204, 0, 'config', 'config_length_class_id', '1', 0),
(1203, 0, 'config', 'config_currency_auto', '0', 0),
(1202, 0, 'config', 'config_currency', 'IDR', 0),
(1201, 0, 'config', 'config_admin_language', 'id', 0),
(1200, 0, 'config', 'config_language', 'id', 0),
(1199, 0, 'config', 'config_zone_id', '482', 0),
(1198, 0, 'config', 'config_country_id', '34', 0),
(1197, 0, 'config', 'config_comment', '', 0),
(1196, 0, 'config', 'config_open', '', 0),
(1195, 0, 'config', 'config_image', '', 0),
(1194, 0, 'config', 'config_fax', '', 0),
(1193, 0, 'config', 'config_telephone', '123456789', 0),
(1192, 0, 'config', 'config_email', 'bambang.handoko12@gmail.com', 0),
(1191, 0, 'config', 'config_geocode', '', 0),
(1190, 0, 'config', 'config_address', 'Medan', 0),
(1189, 0, 'config', 'config_owner', 'Myhijab Boutique', 0),
(1188, 0, 'config', 'config_name', 'Myhijab Boutique', 0),
(1187, 0, 'config', 'config_layout_id', '4', 0),
(1186, 0, 'config', 'config_template', 'default', 0),
(1185, 0, 'config', 'config_meta_keyword', '', 0),
(1184, 0, 'config', 'config_meta_description', 'Myhijab Boutique', 0),
(1183, 0, 'config', 'config_meta_title', 'Myhijab Boutique', 0),
(1172, 0, 'bank_bca', 'bank_bca_sort_order', '', 0),
(1173, 0, 'cod', 'cod_total', '', 0),
(1174, 0, 'cod', 'cod_order_status_id', '15', 0),
(1175, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(1176, 0, 'cod', 'cod_status', '1', 0),
(1177, 0, 'cod', 'cod_sort_order', '', 0),
(1291, 0, 'config', 'config_file_max_size', '300000', 0),
(1292, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(1293, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(1294, 0, 'config', 'config_error_display', '1', 0),
(1295, 0, 'config', 'config_error_log', '1', 0),
(1296, 0, 'config', 'config_error_filename', 'error.log', 0),
(1151, 0, 'bank_mandiri', 'bank_mandiri_sort_order', '', 0),
(1152, 0, 'bank_transfer', 'bank_transfer_bank1', 'Transfer Bank ', 0),
(1153, 0, 'bank_transfer', 'bank_transfer_bank2', 'Transfer Bank ', 0),
(1154, 0, 'bank_transfer', 'bank_transfer_total', '', 0),
(1155, 0, 'bank_transfer', 'bank_transfer_order_status_id', '15', 0),
(1156, 0, 'bank_transfer', 'bank_transfer_geo_zone_id', '0', 0),
(1157, 0, 'bank_transfer', 'bank_transfer_status', '1', 0),
(1158, 0, 'bank_transfer', 'bank_transfer_sort_order', '', 0),
(1171, 0, 'bank_bca', 'bank_bca_status', '1', 0),
(1170, 0, 'bank_bca', 'bank_bca_geo_zone_id', '0', 0),
(1169, 0, 'bank_bca', 'bank_bca_order_status_id', '7', 0),
(1168, 0, 'bank_bca', 'bank_bca_total', '', 0),
(1167, 0, 'bank_bca', 'bank_bca_bank2', 'Transfer to BCA', 0),
(1166, 0, 'bank_bca', 'bank_bca_bank1', 'Transfer ke BCA', 0),
(1150, 0, 'bank_mandiri', 'bank_mandiri_status', '1', 0),
(1149, 0, 'bank_mandiri', 'bank_mandiri_geo_zone_id', '0', 0),
(1368, 0, 'jneyes', 'jneyes_tax_class_id', '0', 0),
(1369, 0, 'jneyes', 'jneyes_geo_zone_id', '0', 0),
(1370, 0, 'jneyes', 'jneyes_status', '1', 0),
(1371, 0, 'jneyes', 'jneyes_sort_order', '', 0);
INSERT INTO `setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1367, 0, 'jneyes', 'jneyes_cost', '43,Sidemen,\r\n42,Selat,\r\n41,Rendang,\r\n40,Manggis,\r\n39,Kubu,\r\n38,Karang Asem,\r\n37,Bebandem,\r\n36,Abang,\r\n35,Pekutatan,\r\n34,Negara,\r\n33,Mendoyo,\r\n32,Melaya,\r\n31,Jembrana,\r\n30,Ubud,\r\n29,Tegallalang,\r\n28,Tampak Siring,\r\n27,Sukawati,\r\n26,Payangan,\r\n25,Gianyar,\r\n24,Belah Batuh Blahbatuh),\r\n23,Denpasar Utara,\r\n22,Denpasar Timur,\r\n21,Denpasar Selatan,\r\n20,Denpasar Barat,\r\n19,Tejakula,\r\n18,Sukasada,\r\n17,Seririt,\r\n16,Sawan,\r\n15,Kubutambahan,\r\n14,Gerokgak,\r\n13,Busungbiu,\r\n12,Buleleng,\r\n11,Banjar,\r\n10,Tembuku,\r\n9,Susut,\r\n8,Kintamani,\r\n7,Bangli,\r\n6,Petang,\r\n5,Mengwi,\r\n4,Kuta Utara,\r\n3,Kuta Selatan,\r\n2,Kuta,\r\n1,Abiansemal,\r\n44,Banjarangkan,\r\n45,Dawan,\r\n46,Klungkung,\r\n47,Nusapenida,\r\n48,Baturiti,\r\n49,Kediri,\r\n50,Kerambitan,\r\n51,Marga,\r\n52,Penebel,\r\n53,Pupuan,\r\n54,Selemadeg,\r\n55,Selemadeg Barat,\r\n56,Selemadeg Timur,\r\n57,Tabanan,\r\n58,Bakam,\r\n59,Belinyu,\r\n60,Mendo Barat,\r\n61,Merawang,\r\n62,Pemali,\r\n63,Puding Besar,\r\n64,Riau Silip,\r\n65,Sungai Liat,\r\n66,Jebus,\r\n67,Kelapa,\r\n68,Mentok Muntok),\r\n69,Simpang Teritip,\r\n70,Tempilang,\r\n71,Air Gegas,\r\n72,Lepar Pongok,\r\n73,Payung,\r\n74,Pulau Besar,\r\n75,Simpang Rimba,\r\n76,Toboali,\r\n77,Tukak Sadai,\r\n78,Koba,\r\n79,Lubuk Besar,\r\n80,Namang,\r\n81,Pangkalan Baru,\r\n82,Simpang Katis,\r\n83,Sungai Selan,\r\n84,Badau,\r\n85,Membalong,\r\n86,Selat Nasik,\r\n87,Sijuk,\r\n88,Tanjung Pandan,\r\n89,Dendang,\r\n90,Gantung,\r\n91,Kelapa Kampit,\r\n92,Manggar,\r\n93,Bukit Intan,\r\n94,Gerunggang,\r\n95,Pangkal Balam,\r\n96,Rangkui,\r\n97,Taman Sari,\r\n98,Cibeber,\r\n99,Cilegon,\r\n100,Citangkil,\r\n101,Ciwandan,\r\n102,Gerogol,\r\n103,Jombang,\r\n104,Pulomerak,\r\n105,Purwakarta,\r\n106,Banjarsari,\r\n107,Bayah,\r\n108,Bojongmanik,\r\n109,Cibadak,\r\n110,Cibeber,\r\n111,Cigemblong,\r\n112,Cihara,\r\n113,Cijaku,\r\n114,Cikulur,\r\n115,Cileles,\r\n116,Cilograng,\r\n117,Cimarga,\r\n118,Cipanas,\r\n119,Cirinten,\r\n120,Curugbitung,\r\n121,Gunung Kencana,\r\n122,Kalanganyar,\r\n123,Lebakgedong,\r\n124,Leuwidamar,\r\n125,Maja,\r\n126,Malingping,\r\n127,Muncang,\r\n128,Panggarangan,\r\n129,Rangkasbitung,\r\n130,Sajira,\r\n131,Sobang,\r\n132,Wanasalam,\r\n133,Warunggunung,\r\n134,Angsana,\r\n135,Banjar,\r\n136,Bojong,\r\n137,Cadasari,\r\n138,Carita,\r\n139,Cibaliung,\r\n140,Cibitung,\r\n141,Cigeulis,\r\n142,Cikeudal Cikedal),\r\n143,Cikeusik,\r\n144,Cimanggu,\r\n145,Cimanuk,\r\n146,Cipeucang,\r\n147,Cisata,\r\n148,Jiput,\r\n149,Kaduhejo,\r\n150,Karang Tanjung,\r\n151,Koroncong,\r\n152,Labuan,\r\n153,Majasari,\r\n154,Mandalawangi,\r\n155,Mekarjaya,\r\n156,Menes,\r\n157,Munjul,\r\n158,Pagelaran,\r\n159,Pandeglang,\r\n160,Panimbang,\r\n161,Patia,\r\n162,Picung,\r\n163,Pulosari,\r\n164,Saketi,\r\n165,Sindangresmi,\r\n166,Sobang,\r\n167,Sukaresmi,\r\n168,Sumur,\r\n169,Cipocok Jaya,\r\n170,Curug,\r\n171,Kasemen,\r\n172,Serang,\r\n173,Taktakan,\r\n174,Walantaka,\r\n175,Anyer/Anyar,\r\n176,Bandung,\r\n177,Baros,\r\n178,Binuang,\r\n179,Bojonegara,\r\n180,Carenang,\r\n181,Cikande,\r\n182,Cikeusal,\r\n183,Cinangka,\r\n184,Ciomas,\r\n185,Ciruas,\r\n186,Gunungsari,\r\n187,Jawilan,\r\n188,Kibin,\r\n189,Kopo,\r\n190,Kragilan,\r\n191,Kramatwatu,\r\n192,Mancak,\r\n193,Pabuaran,\r\n194,Padarincang,\r\n195,Pamarayan,\r\n196,Petir,\r\n197,Pontang,\r\n198,Pulo Ampel,\r\n199,Tanara,\r\n200,Tirtayasa,\r\n201,Tunjung Teja,\r\n202,Waringin Kurung,\r\n203,Batuceper,\r\n204,Benda,\r\n205,Cibodas,\r\n206,Ciledug,\r\n207,Cipondoh,\r\n208,Jatiuwung,\r\n209,Karang Tengah,\r\n210,Karawaci,\r\n211,Larangan,\r\n212,Neglasari,\r\n213,Periuk,\r\n214,Pinang Penang),\r\n215,Tangerang,\r\n216,Balaraja,\r\n217,Cikupa,\r\n218,Cisauk,\r\n219,Cisoka,\r\n220,Curug,\r\n221,Gunung Kaler,\r\n222,Jambe,\r\n223,Jayanti,\r\n224,Kelapa Dua,\r\n225,Kemiri,\r\n226,Kosambi,\r\n227,Kresek,\r\n228,Kronjo,\r\n229,Legok,\r\n230,Mauk,\r\n231,Mekar Baru,\r\n232,Pagedangan,\r\n233,Pakuhaji,\r\n234,Panongan,\r\n235,Pasar Kemis,\r\n236,Rajeg,\r\n237,Sepatan,\r\n238,Sepatan Timur,\r\n239,Sindang Jaya,\r\n240,Solear,\r\n241,Sukadiri,\r\n242,Sukamulya,\r\n243,Teluknaga,\r\n244,Tigaraksa,\r\n245,Ciputat,\r\n246,Ciputat Timur,\r\n247,Pamulang,\r\n248,Pondok Aren,\r\n249,Serpong,\r\n250,Serpong Utara,\r\n251,Setu,\r\n252,Gading Cempaka,\r\n253,Kampung Melayu,\r\n254,Muara Bangka Hulu,\r\n255,Ratu Agung,\r\n256,Ratu Samban,\r\n257,Selebar,\r\n258,Sungai Serut,\r\n259,Teluk Segara,\r\n260,Air Nipis,\r\n261,Bunga Mas,\r\n262,Kedurang,\r\n263,Kedurang Ilir,\r\n264,Kota Manna,\r\n265,Manna,\r\n266,Pasar Manna,\r\n267,Pino,\r\n268,Pinoraya,\r\n269,Seginim,\r\n270,Ulu Manna,\r\n271,Karang Tinggi,\r\n272,Pagar Jati,\r\n273,Pematang Tiga,\r\n274,Pondok Kelapa,\r\n275,Taba Penanjung,\r\n276,Talang Empat,\r\n277,Air Besi,\r\n278,Air Napal,\r\n279,Arga Makmur,\r\n280,Batik Nau,\r\n281,Enggano,\r\n282,Giri Mulia,\r\n283,Kerkap,\r\n284,Ketahun,\r\n285,Lais,\r\n286,Napal Putih,\r\n287,Padang Jaya,\r\n288,Putri Hijau,\r\n289,Kaur Selatan,\r\n290,Kaur Tengah,\r\n291,Kaur Selatan,\r\n292,Kaur Tengah,\r\n293,Kaur Utara,\r\n294,Kelam Tengah,\r\n295,Kinal,\r\n296,Luas,\r\n297,Lungkang Kule,\r\n298,Maje,\r\n299,Muara Sahung,\r\n300,Nasal,\r\n301,Padang Guci Hilir,\r\n302,Padang Guci Hulu,\r\n303,Semidang Gumai Gumay),\r\n304,Tanjung Kemuning,\r\n305,Tetap Muara Tetap),\r\n306,Bermani Ilir,\r\n307,Kebawetan Kabawetan),\r\n308,Kepahiang,\r\n309,Merigi,\r\n310,Muara Kemumu,\r\n311,Seberang Musi,\r\n312,Tebat Karai,\r\n313,Ujan Mas,\r\n314,Lebong Atas,\r\n315,Lebong Selatan,\r\n316,Lebong Tengah,\r\n317,Lebong Utara,\r\n318,Rimbo Pengadang,\r\n319,Air Dikit,\r\n320,Air Majunto,\r\n321,Air Rami,\r\n322,Lubuk Pinang,\r\n323,Malin Deman,\r\n324,Muko-Muko Selatan,\r\n325,Mukomuko Utara,\r\n326,Penarik,\r\n327,Pondok Suguh,\r\n328,Selagan Raya,\r\n329,Sungai Rumbai,\r\n330,Teramang Jaya,\r\n331,Teras Terunjam,\r\n332,V Koto,\r\n333,XIV Koto,\r\n334,Bermani Ulu,\r\n335,Bermani Ulu Raya,\r\n336,Binduriang,\r\n337,Curup,\r\n338,Curup Selatan,\r\n339,Curup Tengah,\r\n340,Curup Timur,\r\n341,Curup Utara,\r\n342,Kota Padang,\r\n343,Padang Ulak Tanding,\r\n344,Selupu Rejang,\r\n345,Sindang Beliti Ilir,\r\n346,Sindang Beliti Ulu,\r\n347,Sindang Daratan,\r\n348,Sindang Kelingi,\r\n349,Air Periukan,\r\n350,Ilir Talo,\r\n351,Lubuk Sandi,\r\n352,Seluma,\r\n353,Seluma Barat,\r\n354,Seluma Selatan,\r\n355,Seluma Timur,\r\n356,Seluma Utara,\r\n357,Semidang Alas,\r\n358,Semidang Alas Maras,\r\n359,Sukaraja,\r\n360,Talo,\r\n361,Talo Kecil,\r\n362,Ulu Talo,\r\n363,Bambang Lipuro,\r\n364,Banguntapan,\r\n365,Bantul,\r\n366,Dlingo,\r\n367,Imogiri,\r\n368,Jetis,\r\n369,Kasihan,\r\n370,Kretek,\r\n371,Pajangan,\r\n372,Pandak,\r\n373,Piyungan,\r\n374,Pleret,\r\n375,Pundong,\r\n376,Sanden,\r\n377,Sedayu,\r\n378,Sewon,\r\n379,Srandakan,\r\n380,Gedang Sari,\r\n381,Girisubo,\r\n382,Karangmojo,\r\n383,Ngawen,\r\n384,Nglipar,\r\n385,Paliyan,\r\n386,Panggang,\r\n387,Patuk,\r\n388,Playen,\r\n389,Ponjong,\r\n390,Purwosari,\r\n391,Rongkop,\r\n392,Sapto Sari,\r\n393,Semanu,\r\n394,Semin,\r\n395,Tanjungsari,\r\n396,Tepus,\r\n397,Wonosari,\r\n398,Galur,\r\n399,Girimulyo,\r\n400,Kalibawang,\r\n401,Kokap,\r\n402,Lendah,\r\n403,Nanggulan,\r\n404,Panjatan,\r\n405,Pengasih,\r\n406,Samigaluh,\r\n407,Sentolo,\r\n408,Temon,\r\n409,Wates,\r\n410,Berbah,\r\n411,Cangkringan,\r\n412,Depok,\r\n413,Gamping,\r\n414,Godean,\r\n415,Kalasan,\r\n416,Minggir,\r\n417,Mlati,\r\n418,Moyudan,\r\n419,Ngaglik,\r\n420,Ngemplak,\r\n421,Pakem,\r\n422,Prambanan,\r\n423,Seyegan,\r\n424,Sleman,\r\n425,Tempel,\r\n426,Turi,\r\n427,Danurejan,\r\n428,Gedong Tengen,\r\n429,Gondokusuman,\r\n430,Gondomanan,\r\n431,Jetis,\r\n432,Kotagede,\r\n433,Kraton,\r\n434,Mantrijeron,\r\n435,Mergangsan,\r\n436,Ngampilan,\r\n437,Pakualaman,\r\n438,Tegalrejo,\r\n439,Umbulharjo,\r\n440,Wirobrajan,\r\n441,Cengkareng,\r\n442,Grogol Petamburan,\r\n443,Kalideres,\r\n444,Kebon Jeruk,\r\n445,Kembangan,\r\n446,Palmerah,\r\n447,Taman Sari,\r\n448,Tambora,\r\n449,Cempaka Putih,\r\n450,Gambir,\r\n451,Johar Baru,\r\n452,Kemayoran,\r\n453,Menteng,\r\n454,Sawah Besar,\r\n455,Senen,\r\n456,Tanah Abang,\r\n457,Cilandak,\r\n458,Jagakarsa,\r\n459,Kebayoran Baru,\r\n460,Kebayoran Lama,\r\n461,Mampang Prapatan,\r\n462,Pancoran,\r\n463,Pasar Minggu,\r\n464,Pesanggrahan,\r\n465,Setia Budi,\r\n466,Tebet,\r\n467,Cakung,\r\n468,Cipayung,\r\n469,Ciracas,\r\n470,Duren Sawit,\r\n471,Jatinegara,\r\n472,Kramat Jati,\r\n473,Makasar,\r\n474,Matraman,\r\n475,Pasar Rebo,\r\n476,Pulo Gadung,\r\n477,Cilincing,\r\n478,Kelapa Gading,\r\n479,Koja,\r\n480,Pademangan,\r\n481,Penjaringan,\r\n482,Tanjung Priok,\r\n483,Kepulauan Seribu Selatan,\r\n484,Kepulauan Seribu Utara,\r\n485,Botumoita Botumoito),\r\n486,Dulupi,\r\n487,Mananggu,\r\n488,Paguyaman,\r\n489,Paguyaman Pantai,\r\n490,Tilamuta,\r\n491,Wonosari,\r\n492,Bone,\r\n493,Bone Raya,\r\n494,Bonepantai,\r\n495,Botu Pingge,\r\n496,Bulango Selatan,\r\n497,Bulango Timur,\r\n498,Bulango Ulu,\r\n499,Bulango Utara,\r\n500,Bulawa,\r\n501,Kabila,\r\n502,Kabila Bone,\r\n503,Suwawa,\r\n504,Suwawa Selatan,\r\n505,Suwawa Tengah,\r\n506,Suwawa Timur,\r\n507,Tapa,\r\n508,Tilongkabila,\r\n509,Dungingi,\r\n510,Kota Barat,\r\n511,Kota Selatan,\r\n512,Kota Tengah,\r\n513,Kota Timur,\r\n514,Kota Utara,\r\n515,Asparaga,\r\n516,Batudaa,\r\n517,Batudaa Pantai,\r\n518,Biluhu,\r\n519,Boliohuto Boliyohuto),\r\n520,Bongomeme,\r\n521,Limboto,\r\n522,Limboto Barat,\r\n523,Mootilango,\r\n524,Pulubala,\r\n525,Tabongo,\r\n526,Telaga,\r\n527,Telaga Biru,\r\n528,Telaga Jaya,\r\n529,Tibawa,\r\n530,Tilango,\r\n531,Tolangohula,\r\n532,Anggrek,\r\n533,Atinggola,\r\n534,Kwandang,\r\n535,Sumalata,\r\n536,Tolinggula,\r\n537,Buntulia,\r\n538,Dengilo,\r\n539,Duhiadaa,\r\n540,Lemito,\r\n541,Marisa,\r\n542,Paguat,\r\n543,Patilanggio,\r\n544,Popayato,\r\n545,Popayato Barat,\r\n546,Popayato Timur,\r\n547,Randangan,\r\n548,Taluduti,\r\n549,Wanggarasi,\r\n550,Bajubang,\r\n551,Batin XXIV,\r\n552,Maro Sebo Ilir,\r\n553,Maro Sebo Ulu,\r\n554,Mersam,\r\n555,Muara Bulian,\r\n556,Muara Tembesi,\r\n557,Pemayung,\r\n558,Bathin II Babeko,\r\n559,Bathin II Pelayang,\r\n560,Bathin III,\r\n561,Bathin III Ulu,\r\n562,Bungo Dani,\r\n563,Jujuhan,\r\n564,Jujuhan Ilir,\r\n565,Limbur Lubuk Mengkuang,\r\n566,Muko-Muko Batin VII,\r\n567,Pasar Muara Bungo,\r\n568,Pelepat,\r\n569,Pelepat Ilir,\r\n570,Rantau Pandan,\r\n571,Rimbo Tengah,\r\n572,Tanah Sepenggal,\r\n573,Tanah Sepenggal Lintas,\r\n574,Tanah Tumbuh,\r\n575,Danau Teluk,\r\n576,Jambi Selatan,\r\n577,Jambi Timur,\r\n578,Jelutung,\r\n579,Kota Baru,\r\n580,Pasar Jambi,\r\n581,Pelayangan,\r\n582,Telanaipura,\r\n583,Air Hangat,\r\n584,Air Hangat Timur,\r\n585,Batang Merangin,\r\n586,Danau Kerinci,\r\n587,Depati Tujuh,\r\n588,Gunung Kerinci,\r\n589,Gunung Raya,\r\n590,Gunung Tujuh,\r\n591,Kayu Aro,\r\n592,Keliling Danau,\r\n593,Sitinjau Laut,\r\n594,Siulak,\r\n595,Bangko,\r\n596,Bangko Barat,\r\n597,Batang Masumai,\r\n598,Jangkat,\r\n599,Lembah Masurai,\r\n600,Margo Tabir,\r\n601,Muara Siau,\r\n602,Nalo Tantan,\r\n603,Pamenang,\r\n604,Pamenang Barat,\r\n605,Pamenang Selatan,\r\n606,Pangkalan Jambu,\r\n607,Renah Pembarap,\r\n608,Renah Pemenang,\r\n609,Sungai Manau,\r\n610,Sungai Tenang,\r\n611,Tabir,\r\n612,Tabir Ilir,\r\n613,Tabir Lintas,\r\n614,Tabir Selatan,\r\n615,Tabir Timur,\r\n616,Tabir Ulu,\r\n617,Tanah Barat,\r\n618,Tiang Pumpung,\r\n619,Jambi Luar Kota,\r\n620,Kumpeh,\r\n621,Kumpeh Ulu,\r\n622,Maro Sebo,\r\n623,Mestong,\r\n624,Sekernan,\r\n625,Sungai Bahar,\r\n626,Sungai Gelam,\r\n627,Air Hitam,\r\n628,Batang Asai,\r\n629,Bathin VIII Batin VIII),\r\n630,Cermin Nan Gadang,\r\n631,Limun,\r\n632,Mandiangin,\r\n633,Pauh,\r\n634,Pelawan,\r\n635,Sarolangun,\r\n636,Singkut,\r\n637,Hamparan Rawang,\r\n638,Kumun Debai,\r\n639,Pesisir Bukit,\r\n640,Sungai Penuh,\r\n641,Tanah Kampung,\r\n642,Batang Asam,\r\n643,Betara,\r\n644,Bram Itam,\r\n645,Kuala Betara,\r\n646,Merlung,\r\n647,Muara Papalik,\r\n648,Pengabuan,\r\n649,Renah Mendaluh,\r\n650,Seberang Kota,\r\n651,Senyerang,\r\n652,Tebing Tinggi,\r\n653,Tungkal Ilir,\r\n654,Tungkal Ulu,\r\n655,Berbak,\r\n656,Dendang,\r\n657,Geragai,\r\n658,Kuala Jambi,\r\n659,Mendahara,\r\n660,Mendahara Ulu,\r\n661,Muara Sabak Barat,\r\n662,Muara Sabak Timur,\r\n663,Nipah Panjang,\r\n664,Rantau Rasau,\r\n665,Sadu,\r\n666,Muara Tabir,\r\n667,Rimbo Bujang,\r\n668,Rimbo Ilir,\r\n669,Rimbo Ulu,\r\n670,Serai Serumpun,\r\n671,Sumay,\r\n672,Tebo Ilir,\r\n673,Tebo Tengah,\r\n674,Tebo Ulu,\r\n675,Tengah Ilir,\r\n676,VII Koto,\r\n677,VII Koto Ilir,\r\n678,Andir,\r\n679,Antapani Cicadas),\r\n680,Arcamanik,\r\n681,Astana Anyar,\r\n682,Babakan Ciparay,\r\n683,Bandung Kidul,\r\n684,Bandung Kulon,\r\n685,Bandung Wetan,\r\n686,Batununggal,\r\n687,Bojongloa Kaler,\r\n688,Bojongloa Kidul,\r\n689,Buahbatu Margacinta),\r\n690,Cibeunying Kaler,\r\n691,Cibeunying Kidul,\r\n692,Cibiru,\r\n693,Cicendo,\r\n694,Cidadap,\r\n695,Cinambo,\r\n696,Coblong,\r\n697,Gedebage,\r\n698,Kiaracondong,\r\n699,Lengkong,\r\n700,Mandalajati,\r\n701,Panyileukan,\r\n702,Rancasari,\r\n703,Regol,\r\n704,Sukajadi,\r\n705,Sukasari,\r\n706,Sumur Bandung,\r\n707,Ujung Berung,\r\n708,Arjasari,\r\n709,Baleendah,\r\n710,Banjaran,\r\n711,Bojongsoang,\r\n712,Cangkuang,\r\n713,Cicalengka,\r\n714,Cikancung,\r\n715,Cilengkrang,\r\n716,Cileunyi,\r\n717,Cimaung,\r\n718,Cimeunyan,\r\n719,Ciparay,\r\n720,Ciwidey,\r\n721,Dayeuhkolot,\r\n722,Ibun,\r\n723,Katapang,\r\n724,Kertasari,\r\n725,Kutawaringin,\r\n726,Majalaya,\r\n727,Margaasih,\r\n728,Margahayu,\r\n729,Nagreg,\r\n730,Pacet,\r\n731,Pameungpeuk,\r\n732,Pangalengan,\r\n733,Paseh,\r\n734,Pasirjambu,\r\n735,Ranca Bali,\r\n736,Rancaekek,\r\n737,Solokan Jeruk,\r\n738,Soreang,\r\n739,Batujajar,\r\n740,Cihampelas,\r\n741,Cikalong Wetan,\r\n742,Cililin,\r\n743,Cipatat,\r\n744,Cipeundeuy,\r\n745,Cipongkor,\r\n746,Cisarua,\r\n747,Gununghalu,\r\n748,Lembang,\r\n749,Ngamprah,\r\n750,Padalarang,\r\n751,Parongpong,\r\n752,Rongga,\r\n753,Sindangkerta,\r\n754,Banjar,\r\n755,Langensari,\r\n756,Pataruman,\r\n757,Purwaharja,\r\n758,Bantar Gebang,\r\n759,Bekasi Barat,\r\n760,Bekasi Selatan,\r\n761,Bekasi Timur,\r\n762,Bekasi Utara,\r\n763,Jati Sampurna,\r\n764,Jatiasih,\r\n765,Medan Satria,\r\n766,Mustika Jaya,\r\n767,Pondok Gede,\r\n768,Pondok Melati,\r\n769,Rawalumbu,\r\n770,Babelan,\r\n771,Bojongmangu,\r\n772,Cabangbungin,\r\n773,Cibarusah,\r\n774,Cibitung,\r\n775,Cikarang Barat,\r\n776,Cikarang Pusat,\r\n777,Cikarang Selatan,\r\n778,Cikarang Timur,\r\n779,Cikarang Utara,\r\n780,Karangbahagia,\r\n781,Kedung Waringin,\r\n782,Muara Gembong,\r\n783,Pebayuran,\r\n784,Serang Baru,\r\n785,Setu,\r\n786,Sukakarya,\r\n787,Sukatani,\r\n788,Sukawangi,\r\n789,Tambelang,\r\n790,Tambun Selatan,\r\n791,Tambun Utara,\r\n792,Tarumajaya,\r\n793,Bogor Barat,\r\n794,Bogor Selatan,\r\n795,Bogor Tengah,\r\n796,Bogor Timur,\r\n797,Bogor Utara,\r\n798,Tanah Sereal,\r\n799,Babakan Madang,\r\n800,Bojonggede,\r\n801,Caringin,\r\n802,Cariu,\r\n803,Ciampea,\r\n804,Ciawi,\r\n805,Cibinong,\r\n806,Cibungbulang,\r\n807,Cigombong,\r\n808,Cigudeg,\r\n809,Cijeruk,\r\n810,Cileungsi,\r\n811,Ciomas,\r\n812,Cisarua,\r\n813,Ciseeng,\r\n814,Citeureup,\r\n815,Dramaga,\r\n816,Gunung Putri,\r\n817,Gunung Sindur,\r\n818,Babakan Madang,\r\n819,Bojonggede,\r\n820,Caringin,\r\n821,Cariu,\r\n822,Ciampea,\r\n823,Ciawi,\r\n824,Cibinong,\r\n825,Cibungbulang,\r\n826,Cigombong,\r\n827,Cigudeg,\r\n828,Cijeruk,\r\n829,Cileungsi,\r\n830,Ciomas,\r\n831,Cisarua,\r\n832,Ciseeng,\r\n833,Citeureup,\r\n834,Dramaga,\r\n835,Gunung Putri,\r\n836,Gunung Sindur,\r\n837,Jasinga,\r\n838,Jonggol,\r\n839,Kemang,\r\n840,Klapa Nunggal Kelapa Nunggal),\r\n841,Leuwiliang,\r\n842,Leuwisadeng,\r\n843,Megamendung,\r\n844,Nanggung,\r\n845,Pamijahan,\r\n846,Parung,\r\n847,Parung Panjang,\r\n848,Ranca Bungur,\r\n849,Rumpin,\r\n850,Sukajaya,\r\n851,Sukamakmur,\r\n852,Sukaraja,\r\n853,Tajurhalang,\r\n854,Tamansari,\r\n855,Tanjungsari,\r\n856,Tenjo,\r\n857,Tenjolaya,\r\n858,Banjarsari,\r\n859,Baregbeg,\r\n860,Ciamis,\r\n861,Cidolog,\r\n862,Cihaurbeuti,\r\n863,Cijeungjing,\r\n864,Cikoneng,\r\n865,Cimaragas,\r\n866,Cipaku,\r\n867,Cisaga,\r\n868,Jatinagara,\r\n869,Kawali,\r\n870,Lakbok,\r\n871,Lumbung,\r\n872,Pamarican,\r\n873,Panawangan,\r\n874,Panjalu,\r\n875,Panjalu Utara,\r\n876,Panumbangan,\r\n877,Purwadadi,\r\n878,Rajadesa,\r\n879,Rancah,\r\n880,Sadananya,\r\n881,Sindangkasih,\r\n882,Sukadana,\r\n883,Sukamantri,\r\n884,Tambaksari,\r\n885,Agrabinta,\r\n886,Bojongpicung,\r\n887,Campaka,\r\n888,Campaka Mulya,\r\n889,Cianjur,\r\n890,Cibeber,\r\n891,Cibinong,\r\n892,Cidaun,\r\n893,Cijati,\r\n894,Cikadu,\r\n895,Cikalongkulon,\r\n896,Cilaku,\r\n897,Cipanas,\r\n898,Ciranjang,\r\n899,Cugenang,\r\n900,Gekbrong,\r\n901,Haurwangi,\r\n902,Kadupandak,\r\n903,Karangtengah,\r\n904,Leles,\r\n905,Mande,\r\n906,Naringgul,\r\n907,Pacet,\r\n908,Pagelaran,\r\n909,Pasirkuda,\r\n910,Sindangbarang,\r\n911,Sukaluyu,\r\n912,Sukanagara,\r\n913,Sukaresmi,\r\n914,Takokak,\r\n915,Tanggeung,\r\n916,Warungkondang,\r\n917,Cimahi Selatan,\r\n918,Cimahi Tengah,\r\n919,Cimahi Utara,\r\n920,Harjamukti,\r\n921,Kejaksan,\r\n922,Kesambi,\r\n923,Lemahwungkuk,\r\n924,Pekalipan,\r\n925,Arjawinangun,\r\n926,Astanajapura,\r\n927,Babakan,\r\n928,Beber,\r\n929,Ciledug,\r\n930,Ciwaringin,\r\n931,Depok,\r\n932,Dukupuntang,\r\n933,Gebang,\r\n934,Gegesik,\r\n935,Gempol,\r\n936,Greged Greget),\r\n937,Gunung Jati Cirebon Utara),\r\n938,Jamblang,\r\n939,Kaliwedi,\r\n940,Kapetakan,\r\n941,Karangsembung,\r\n942,Karangwareng,\r\n943,Kedawung,\r\n944,Klangenan,\r\n945,Lemahabang,\r\n946,Losari,\r\n947,Mundu,\r\n948,Pabedilan,\r\n949,Pabuaran,\r\n950,Palimanan,\r\n951,Pangenan,\r\n952,Panguragan,\r\n953,Pasaleman,\r\n954,Plered,\r\n955,Plumbon,\r\n956,Sedong,\r\n957,Sumber,\r\n958,Suranenggala,\r\n959,Susukan,\r\n960,Susukan Lebak,\r\n961,Talun Cirebon Selatan),\r\n962,Tengah Tani,\r\n963,Waled,\r\n964,Weru,\r\n965,Beji,\r\n966,Cimanggis,\r\n967,Limo,\r\n968,Pancoran Mas,\r\n969,Sawangan,\r\n970,Sukmajaya,\r\n971,Banjarwangi,\r\n972,Banyuresmi,\r\n973,Bayongbong,\r\n974,Blubur Limbangan,\r\n975,Bungbulang,\r\n976,Caringin,\r\n977,Cibalong,\r\n978,Cibatu,\r\n979,Cibiuk,\r\n980,Cigedug,\r\n981,Cihurip,\r\n982,Cikajang,\r\n983,Cikelet,\r\n984,Cilawu,\r\n985,Cisewu,\r\n986,Cisompet,\r\n987,Cisurupan,\r\n988,Garut Kota,\r\n989,Kadungora,\r\n990,Karangpawitan,\r\n991,Karangtengah,\r\n992,Kersamanah,\r\n993,Leles,\r\n994,Leuwigoong,\r\n995,Malangbong,\r\n996,Mekarmukti,\r\n997,Pakenjeng,\r\n998,Pameungpeuk,\r\n999,Pamulihan,\r\n1000,Pangatikan,\r\n1001,Pasirwangi,\r\n1002,Peundeuy,\r\n1003,Samarang,\r\n1004,Selaawi,\r\n1005,Singajaya,\r\n1006,Sucinaraja,\r\n1007,Sukaresmi,\r\n1008,Sukawening,\r\n1009,Talegong,\r\n1010,Tarogong Kaler,\r\n1011,Tarogong Kidul,\r\n1012,Wanaraja,\r\n1013,Anjatan,\r\n1014,Arahan,\r\n1015,Balongan,\r\n1016,Bangodua,\r\n1017,Bongas,\r\n1018,Cantigi,\r\n1019,Cikedung,\r\n1020,Gabuswetan,\r\n1021,Gantar,\r\n1022,Haurgeulis,\r\n1023,Indramayu,\r\n1024,Jatibarang,\r\n1025,Juntinyuat,\r\n1026,Kandanghaur,\r\n1027,Karangampel,\r\n1028,Kedokan Bunder,\r\n1029,Kertasemaya,\r\n1030,Krangkeng,\r\n1031,Kroya,\r\n1032,Lelea,\r\n1033,Lohbener,\r\n1034,Losarang,\r\n1035,Pasekan,\r\n1036,Patrol,\r\n1037,Sindang,\r\n1038,Sliyeg,\r\n1039,Sukagumiwang,\r\n1040,Sukra,\r\n1041,Trisi/Terisi,\r\n1042,Tukdana,\r\n1043,Widasari,\r\n1044,Banyusari,\r\n1045,Batujaya,\r\n1046,Ciampel,\r\n1047,Cibuaya,\r\n1048,Cikampek,\r\n1049,Cilamaya Kulon,\r\n1050,Cilamaya Wetan,\r\n1051,Cilebar,\r\n1052,Jatisari,\r\n1053,Jayakerta,\r\n1054,Karawang Barat,\r\n1055,Karawang Timur,\r\n1056,Klari,\r\n1057,Kotabaru,\r\n1058,Kutawaluya,\r\n1059,Lemahabang,\r\n1060,Majalaya,\r\n1061,Pakisjaya,\r\n1062,Pangkalan,\r\n1063,Pedes,\r\n1064,Purwasari,\r\n1065,Rawamerta,\r\n1066,Rengasdengklok,\r\n1067,Talagasari,\r\n1068,Tegalwaru,\r\n1069,Telukjambe Barat,\r\n1070,Telukjambe Timur,\r\n1071,Tempuran,\r\n1072,Tirtajaya,\r\n1073,Tirtamulya,\r\n1074,Ciawigebang,\r\n1075,Cibeureum,\r\n1076,Cibingbin,\r\n1077,Cidahu,\r\n1078,Cigandamekar,\r\n1079,Cigugur,\r\n1080,Cilebak,\r\n1081,Cilimus,\r\n1082,Cimahi,\r\n1083,Ciniru,\r\n1084,Cipicung,\r\n1085,Ciwaru,\r\n1086,Darma,\r\n1087,Garawangi,\r\n1088,Hantara,\r\n1089,Jalaksana,\r\n1090,Japara,\r\n1091,Kadugede,\r\n1092,Kalimanggis,\r\n1093,Karangkancana,\r\n1094,Kramat Mulya,\r\n1095,Kuningan,\r\n1096,Lebakwangi,\r\n1097,Luragung,\r\n1098,Maleber,\r\n1099,Mandirancan,\r\n1100,Nusaherang,\r\n1101,Pancalang,\r\n1102,Pasawahan,\r\n1103,Selajambe,\r\n1104,Sindangagung,\r\n1105,Subang,\r\n1106,Argapura,\r\n1107,Banjaran,\r\n1108,Bantarujeg,\r\n1109,Cigasong,\r\n1110,Cikijing,\r\n1111,Cingambul,\r\n1112,Dawuan,\r\n1113,Jatitujuh,\r\n1114,Jatiwangi,\r\n1115,Kadipaten,\r\n1116,Kasokandel,\r\n1117,Kertajati,\r\n1118,Lemahsugih,\r\n1119,Leuwimunding,\r\n1120,Ligung,\r\n1121,Maja,\r\n1122,Majalengka,\r\n1123,Malausma,\r\n1124,Palasah,\r\n1125,Panyingkiran,\r\n1126,Rajagaluh,\r\n1127,Sindang,\r\n1128,Sindangwangi,\r\n1129,Sukahaji,\r\n1130,Sumberjaya,\r\n1131,Talaga,\r\n1132,Cigugur,\r\n1133,Cijulang,\r\n1134,Cimerak,\r\n1135,Kalipucang,\r\n1136,Langkaplancar,\r\n1137,Mangunjaya,\r\n1138,Padaherang,\r\n1139,Pangandaran,\r\n1140,Parigi,\r\n1141,Sidamulih,\r\n1142,Babakancikao,\r\n1143,Bojong,\r\n1144,Bungursari,\r\n1145,Campaka,\r\n1146,Cibatu,\r\n1147,Darangdan,\r\n1148,Jatiluhur,\r\n1149,Kiarapedes,\r\n1150,Maniis,\r\n1151,Pasawahan,\r\n1152,Plered,\r\n1153,Pondoksalam,\r\n1154,Purwakarta,\r\n1155,Sukasari,\r\n1156,Sukatani,\r\n1157,Tegal Waru,\r\n1158,Wanayasa,\r\n1159,Binong,\r\n1160,Blanakan,\r\n1161,Ciasem,\r\n1162,Ciater,\r\n1163,Cibogo,\r\n1164,Cijambe,\r\n1165,Cikaum,\r\n1166,Cipeundeuy,\r\n1167,Cipunagara,\r\n1168,Cisalak,\r\n1169,Compreng,\r\n1170,Dawuan,\r\n1171,Jalancagak,\r\n1172,Kalijati,\r\n1173,Kasomalang,\r\n1174,Legonkulon,\r\n1175,Pabuaran,\r\n1176,Pagaden,\r\n1177,Pagaden Barat,\r\n1178,Pamanukan,\r\n1179,Patokbeusi,\r\n1180,Purwadadi,\r\n1181,Pusakajaya,\r\n1182,Pusakanagara,\r\n1183,Sagalaherang,\r\n1184,Serangpanjang,\r\n1185,Subang,\r\n1186,Sukasari,\r\n1187,Tambakdahan,\r\n1188,Tanjungsiang,\r\n1189,Baros,\r\n1190,Cibeureum,\r\n1191,Cikole,\r\n1192,Citamiang,\r\n1193,Gunung Puyuh,\r\n1194,Lembursitu,\r\n1195,Warudoyong,\r\n1196,Bantargadung,\r\n1197,Bojong Genteng,\r\n1198,Caringin,\r\n1199,Ciambar,\r\n1200,Cibadak,\r\n1201,Cibitung,\r\n1202,Cicantayan,\r\n1203,Cicurug,\r\n1204,Cidadap,\r\n1205,Cidahu,\r\n1206,Cidolog,\r\n1207,Ciemas,\r\n1208,Cikakak,\r\n1209,Cikembar,\r\n1210,Cikidang,\r\n1211,Cimanggu,\r\n1212,Ciracap,\r\n1213,Cireunghas,\r\n1214,Cisaat,\r\n1215,Cisolok,\r\n1216,Curugkembar,\r\n1217,Geger Bitung,\r\n1218,Gunung Guruh,\r\n1219,Jampang Kulon,\r\n1220,Jampang Tengah,\r\n1221,Kabandungan,\r\n1222,Kadudampit,\r\n1223,Kalapa Nunggal,\r\n1224,Kali Bunder,\r\n1225,Kebonpedes,\r\n1226,Lengkong,\r\n1227,Nagrak,\r\n1228,Nyalindung,\r\n1229,Pabuaran,\r\n1230,Parakan Salak,\r\n1231,Parung Kuda,\r\n1232,Pelabuhan/Palabuhan Ratu,\r\n1233,Purabaya,\r\n1234,Sagaranten,\r\n1235,Simpenan,\r\n1236,Sukabumi,\r\n1237,Sukalarang,\r\n1238,Sukaraja,\r\n1239,Surade,\r\n1240,Tegal Buleud,\r\n1241,Waluran,\r\n1242,Warung Kiara,\r\n1243,Buahdua,\r\n1244,Cibugel,\r\n1245,Cimalaka,\r\n1246,Cimanggung,\r\n1247,Cisarua,\r\n1248,Cisitu,\r\n1249,Conggeang,\r\n1250,Darmaraja,\r\n1251,Ganeas,\r\n1252,Jatigede,\r\n1253,Jatinangor,\r\n1254,Jatinunggal,\r\n1255,Pamulihan,\r\n1256,Paseh,\r\n1257,Rancakalong,\r\n1258,Situraja,\r\n1259,Sukasari,\r\n1260,Sumedang Selatan,\r\n1261,Sumedang Utara,\r\n1262,Surian,\r\n1263,Tanjungkerta,\r\n1264,Tanjungmedar,\r\n1265,Tanjungsari,\r\n1266,Tomo,\r\n1267,Ujungjaya,\r\n1268,Wado,\r\n1269,Bungursari,\r\n1270,Cibeureum,\r\n1271,Cihideung,\r\n1272,Cipedes,\r\n1273,Indihiang,\r\n1274,Kawalu,\r\n1275,Mangkubumi,\r\n1276,Purbaratu,\r\n1277,Tamansari,\r\n1278,Tawang,\r\n1279,Bantarkalong,\r\n1280,Bojongasih,\r\n1281,Bojonggambir,\r\n1282,Ciawi,\r\n1283,Cibalong,\r\n1284,Cigalontang,\r\n1285,Cikalong,\r\n1286,Cikatomas,\r\n1287,Cineam,\r\n1288,Cipatujah,\r\n1289,Cisayong,\r\n1290,Culamega,\r\n1291,Gunung Tanjung,\r\n1292,Jamanis,\r\n1293,Jatiwaras,\r\n1294,Kadipaten,\r\n1295,Karang Jaya,\r\n1296,Karangnunggal,\r\n1297,Leuwisari,\r\n1298,Mangunreja,\r\n1299,Manonjaya,\r\n1300,Padakembang,\r\n1301,Pagerageung,\r\n1302,Pancatengah,\r\n1303,Parungponteng,\r\n1304,Puspahiang,\r\n1305,Rajapolah,\r\n1306,Salawu,\r\n1307,Salopa,\r\n1308,Sariwangi,\r\n1309,Singaparna,\r\n1310,Sodonghilir,\r\n1311,Sukahening,\r\n1312,Sukaraja,\r\n1313,Sukarame,\r\n1314,Sukaratu,\r\n1315,Sukaresik,\r\n1316,Tanjungjaya,\r\n1317,Taraju,\r\n1318,Banjarmangu,\r\n1319,Banjarnegara,\r\n1320,Batur,\r\n1321,Bawang,\r\n1322,Kalibening,\r\n1323,Karangkobar,\r\n1324,Madukara,\r\n1325,Mandiraja,\r\n1326,Pagedongan,\r\n1327,Pagentan,\r\n1328,Pandanarum,\r\n1329,Pejawaran,\r\n1330,Punggelan,\r\n1331,Purwonegoro,\r\n1332,Purworejo Klampok,\r\n1333,Rakit,\r\n1334,Sigaluh,\r\n1335,Susukan,\r\n1336,Wanadadi Wonodadi),\r\n1337,Wanayasa,\r\n1338,Ajibarang,\r\n1339,Banyumas,\r\n1340,Baturaden,\r\n1341,Cilongok,\r\n1342,Gumelar,\r\n1343,Jatilawang,\r\n1344,Kalibagor,\r\n1345,Karanglewas,\r\n1346,Kebasen,\r\n1347,Kedung Banteng,\r\n1348,Kembaran,\r\n1349,Kemranjen,\r\n1350,Lumbir,\r\n1351,Patikraja,\r\n1352,Pekuncen,\r\n1353,Purwojati,\r\n1354,Purwokerto Barat,\r\n1355,Purwokerto Selatan,\r\n1356,Purwokerto Timur,\r\n1357,Purwokerto Utara,\r\n1358,Rawalo,\r\n1359,Sokaraja,\r\n1360,Somagede,\r\n1361,Sumbang,\r\n1362,Sumpiuh,\r\n1363,Tambak,\r\n1364,Wangon,\r\n1365,Bandar,\r\n1366,Banyuputih,\r\n1367,Batang,\r\n1368,Bawang,\r\n1369,Blado,\r\n1370,Gringsing,\r\n1371,Kandeman,\r\n1372,Limpung,\r\n1373,Pecalungan,\r\n1374,Reban,\r\n1375,Subah,\r\n1376,Tersono,\r\n1377,Tulis,\r\n1378,Warungasem,\r\n1379,Wonotunggal,\r\n1380,Banjarejo,\r\n1381,Blora kota,\r\n1382,Bogorejo,\r\n1383,Cepu,\r\n1384,Japah,\r\n1385,Jati,\r\n1386,Jepon,\r\n1387,Jiken,\r\n1388,Kedungtuban,\r\n1389,Kradenan,\r\n1390,Kunduran,\r\n1391,Ngawen,\r\n1392,Randublatung,\r\n1393,Sambong,\r\n1394,Todanan,\r\n1395,Tunjungan,\r\n1396,Ampel,\r\n1397,Andong,\r\n1398,Banyudono,\r\n1399,Boyolali,\r\n1400,Cepogo,\r\n1401,Juwangi,\r\n1402,Karanggede,\r\n1403,Kemusu,\r\n1404,Klego,\r\n1405,Mojosongo,\r\n1406,Musuk,\r\n1407,Ngemplak,\r\n1408,Nogosari,\r\n1409,Sambi,\r\n1410,Sawit,\r\n1411,Selo,\r\n1412,Simo,\r\n1413,Teras,\r\n1414,Wonosegoro,\r\n1415,Banjarharjo,\r\n1416,Bantarkawung,\r\n1417,Brebes,\r\n1418,Bulakamba,\r\n1419,Bumiayu,\r\n1420,Jatibarang,\r\n1421,Kersana,\r\n1422,Ketanggungan,\r\n1423,Larangan,\r\n1424,Losari,\r\n1425,Paguyangan,\r\n1426,Salem,\r\n1427,Sirampog,\r\n1428,Songgom,\r\n1429,Tanjung,\r\n1430,Tonjong,\r\n1431,Wanasari,\r\n1432,Adipala,\r\n1433,Bantarsari,\r\n1434,Binangun,\r\n1435,Cilacap Selatan,\r\n1436,Cilacap Tengah,\r\n1437,Cilacap Utara,\r\n1438,Cimanggu,\r\n1439,Cipari,\r\n1440,Dayeuhluhur,\r\n1441,Gandrungmangu,\r\n1442,Jeruklegi,\r\n1443,Kampung Laut,\r\n1444,Karangpucung,\r\n1445,Kawunganten,\r\n1446,Kedungreja,\r\n1447,Kesugihan,\r\n1448,Kroya,\r\n1449,Majenang,\r\n1450,Maos,\r\n1451,Nusawungu,\r\n1452,Patimuan,\r\n1453,Sampang,\r\n1454,Sidareja,\r\n1455,Wanareja,\r\n1456,Bonang,\r\n1457,Demak,\r\n1458,Dempet,\r\n1459,Gajah,\r\n1460,Guntur,\r\n1461,Karang Tengah,\r\n1462,Karanganyar,\r\n1463,Karangawen,\r\n1464,Kebonagung,\r\n1465,Mijen,\r\n1466,Mranggen,\r\n1467,Sayung,\r\n1468,Wedung,\r\n1469,Wonosalam,\r\n1470,Brati,\r\n1471,Gabus,\r\n1472,Geyer,\r\n1473,Godong,\r\n1474,Grobogan,\r\n1475,Gubug,\r\n1476,Karangrayung,\r\n1477,Kedungjati,\r\n1478,Klambu,\r\n1479,Kradenan,\r\n1480,Ngaringan,\r\n1481,Penawangan,\r\n1482,Pulokulon,\r\n1483,Purwodadi,\r\n1484,Tanggungharjo,\r\n1485,Tawangharjo,\r\n1486,Tegowanu,\r\n1487,Toroh,\r\n1488,Wirosari,\r\n1489,Bangsri,\r\n1490,Batealit,\r\n1491,Donorojo,\r\n1492,Jepara,\r\n1493,Kalinyamatan,\r\n1494,Karimunjawa,\r\n1495,Kedung,\r\n1496,Keling,\r\n1497,Kembang,\r\n1498,Mayong,\r\n1499,Mlonggo,\r\n1500,Nalumsari,\r\n1501,Pakis Aji,\r\n1502,Pecangaan,\r\n1503,Tahunan,\r\n1504,Welahan,\r\n1505,Colomadu,\r\n1506,Gondangrejo,\r\n1507,Jaten,\r\n1508,Jatipuro,\r\n1509,Jatiyoso,\r\n1510,Jenawi,\r\n1511,Jumantono,\r\n1512,Jumapolo,\r\n1513,Karanganyar,\r\n1514,Karangpandan,\r\n1515,Kebakkramat,\r\n1516,Kerjo,\r\n1517,Matesih,\r\n1518,Mojogedang,\r\n1519,Ngargoyoso,\r\n1520,Tasikmadu,\r\n1521,Tawangmangu,\r\n1522,Boja,\r\n1523,Brangsong,\r\n1524,Cepiring,\r\n1525,Gemuh,\r\n1526,Kaliwungu,\r\n1527,Kaliwungu Selatan,\r\n1528,Kangkung,\r\n1529,Kendal,\r\n1530,Limbangan,\r\n1531,Ngampel,\r\n1532,Pagerruyung,\r\n1533,Patean,\r\n1534,Patebon,\r\n1535,Pegandon,\r\n1536,Plantungan,\r\n1537,Ringinarum,\r\n1538,Rowosari,\r\n1539,Singorojo,\r\n1540,Sukorejo,\r\n1541,Weleri,\r\n1542,Bayat,\r\n1543,Cawas,\r\n1544,Ceper,\r\n1545,Delanggu,\r\n1546,Gantiwarno,\r\n1547,Jatinom,\r\n1548,Jogonalan,\r\n1549,Juwiring,\r\n1550,Kalikotes,\r\n1551,Karanganom,\r\n1552,Karangdowo,\r\n1553,Karangnongko,\r\n1554,Kebonarum,\r\n1555,Kemalang,\r\n1556,Klaten Selatan,\r\n1557,Klaten Tengah,\r\n1558,Klaten Utara,\r\n1559,Manisrenggo,\r\n1560,Ngawen,\r\n1561,Pedan,\r\n1562,Polanharjo,\r\n1563,Prambanan,\r\n1564,Trucuk,\r\n1565,Tulung,\r\n1566,Wedi,\r\n1567,Wonosari,\r\n1568,Adimulyo,\r\n1569,Alian/Aliyan,\r\n1570,Ambal,\r\n1571,Ayah,\r\n1572,Bonorowo,\r\n1573,Buayan,\r\n1574,Buluspesantren,\r\n1575,Gombong,\r\n1576,Karanganyar,\r\n1577,Karanggayam,\r\n1578,Karangsambung,\r\n1579,Kebumen,\r\n1580,Klirong,\r\n1581,Kutowinangun,\r\n1582,Kuwarasan,\r\n1583,Mirit,\r\n1584,Padureso,\r\n1585,Pejagoan,\r\n1586,Petanahan,\r\n1587,Poncowarno,\r\n1588,Prembun,\r\n1589,Puring,\r\n1590,Rowokele,\r\n1591,Sadang,\r\n1592,Sempor,\r\n1593,Sruweng,\r\n1594,Bae,\r\n1595,Dawe,\r\n1596,Gebog,\r\n1597,Jati,\r\n1598,Jekulo,\r\n1599,Kaliwungu,\r\n1600,Kudus Kota,\r\n1601,Mejobo,\r\n1602,Undaan,\r\n1603,Magelang Selatan,\r\n1604,Magelang Tengah,\r\n1605,Magelang Utara,\r\n1606,Bandongan,\r\n1607,Borobudur,\r\n1608,Candimulyo,\r\n1609,Dukun,\r\n1610,Grabag,\r\n1611,Kajoran,\r\n1612,Kaliangkrik,\r\n1613,Mertoyudan,\r\n1614,Mungkid,\r\n1615,Muntilan,\r\n1616,Ngablak,\r\n1617,Ngluwar,\r\n1618,Pakis,\r\n1619,Salam,\r\n1620,Salaman,\r\n1621,Sawangan,\r\n1622,Secang,\r\n1623,Srumbung,\r\n1624,Tegalrejo,\r\n1625,Tempuran,\r\n1626,Windusari,\r\n1627,Batangan,\r\n1628,Cluwak,\r\n1629,Dukuhseti,\r\n1630,Gabus,\r\n1631,Gembong,\r\n1632,Gunungwungkal,\r\n1633,Jaken,\r\n1634,Jakenan,\r\n1635,Juwana,\r\n1636,Kayen,\r\n1637,Margorejo,\r\n1638,Margoyoso,\r\n1639,Pati,\r\n1640,Pucakwangi,\r\n1641,Sukolilo,\r\n1642,Tambakromo,\r\n1643,Tayu,\r\n1644,Tlogowungu,\r\n1645,Trangkil,\r\n1646,Wedarijaksa,\r\n1647,Winong,\r\n1648,Pekalongan Barat,\r\n1649,Pekalongan Selatan,\r\n1650,Pekalongan Timur,\r\n1651,Pekalongan Utara,\r\n1652,Bojong,\r\n1653,Buaran,\r\n1654,Doro,\r\n1655,Kajen,\r\n1656,Kandangserang,\r\n1657,Karanganyar,\r\n1658,Karangdadap,\r\n1659,Kedungwuni,\r\n1660,Kesesi,\r\n1661,Lebakbarang,\r\n1662,Paninggaran,\r\n1663,Petungkriono/Petungkriyono,\r\n1664,Siwalan,\r\n1665,Sragi,\r\n1666,Talun,\r\n1667,Tirto,\r\n1668,Wiradesa,\r\n1669,Wonokerto,\r\n1670,Wonopringgo,\r\n1671,Ampelgading,\r\n1672,Bantarbolang,\r\n1673,Belik,\r\n1674,Bodeh,\r\n1675,Comal,\r\n1676,Moga,\r\n1677,Pemalang,\r\n1678,Petarukan,\r\n1679,Pulosari,\r\n1680,Randudongkal,\r\n1681,Taman,\r\n1682,Ulujami,\r\n1683,Warungpring,\r\n1684,Watukumpul,\r\n1685,Bobotsari,\r\n1686,Bojongsari,\r\n1687,Bukateja,\r\n1688,Kaligondang,\r\n1689,Kalimanah,\r\n1690,Karanganyar,\r\n1691,Karangjambu,\r\n1692,Karangmoncol,\r\n1693,Karangreja,\r\n1694,Kejobong,\r\n1695,Kemangkon,\r\n1696,Kertanegara,\r\n1697,Kutasari,\r\n1698,Mrebet,\r\n1699,Padamara,\r\n1700,Pengadegan,\r\n1701,Purbalingga,\r\n1702,Rembang,\r\n1703,Bagelen,\r\n1704,Banyuurip,\r\n1705,Bayan,\r\n1706,Bener,\r\n1707,Bruno,\r\n1708,Butuh,\r\n1709,Gebang,\r\n1710,Grabag,\r\n1711,Kaligesing,\r\n1712,Kemiri,\r\n1713,Kutoarjo,\r\n1714,Loano,\r\n1715,Ngombol,\r\n1716,Pituruh,\r\n1717,Purwodadi,\r\n1718,Purworejo,\r\n1719,Bulu,\r\n1720,Gunem,\r\n1721,Kaliori,\r\n1722,Kragan,\r\n1723,Lasem,\r\n1724,Pamotan,\r\n1725,Pancur,\r\n1726,Rembang,\r\n1727,Sale,\r\n1728,Sarang,\r\n1729,Sedan,\r\n1730,Sluke,\r\n1731,Sulang,\r\n1732,Sumber,\r\n1733,Argomulyo,\r\n1734,Sidomukti,\r\n1735,Sidorejo,\r\n1736,Tingkir,\r\n1737,Banyumanik,\r\n1738,Candisari,\r\n1739,Gajah Mungkur,\r\n1740,Gayamsari,\r\n1741,Genuk,\r\n1742,Gunungpati,\r\n1743,Mijen,\r\n1744,Ngaliyan,\r\n1745,Pedurungan,0);\r\nINSERT INTO `oc_city` `city`, `zone_id`, `name`, `status`, `sort_order`) VALUES\r\n1746,Semarang Barat,\r\n1747,Semarang Selatan,\r\n1748,Semarang Tengah,\r\n1749,Semarang Timur,\r\n1750,Semarang Utara,\r\n1751,Tembalang,\r\n1752,Tugu,\r\n1753,Ambarawa,\r\n1754,Bancak,\r\n1755,Bandungan,\r\n1756,Banyubiru,\r\n1757,Bawen,\r\n1758,Bergas,\r\n1759,Bringin,\r\n1760,Getasan,\r\n1761,Jambu,\r\n1762,Kaliwungu,\r\n1763,Pabelan,\r\n1764,Pringapus,\r\n1765,Sumowono,\r\n1766,Suruh,\r\n1767,Susukan,\r\n1768,Tengaran,\r\n1769,Tuntang,\r\n1770,Ungaran Barat,\r\n1771,Ungaran Timur,\r\n1772,Gemolong,\r\n1773,Gesi,\r\n1774,Gondang,\r\n1775,Jenar,\r\n1776,Kalijambe,\r\n1777,Karangmalang,\r\n1778,Kedawung,\r\n1779,Masaran,\r\n1780,Miri,\r\n1781,Mondokan,\r\n1782,Ngrampal,\r\n1783,Plupuh,\r\n1784,Sambirejo,\r\n1785,Sambung Macan,\r\n1786,Sidoharjo,\r\n1787,Sragen,\r\n1788,Sukodono,\r\n1789,Sumberlawang,\r\n1790,Tangen,\r\n1791,Tanon,\r\n1792,Baki,\r\n1793,Bendosari,\r\n1794,Bulu,\r\n1795,Gatak,\r\n1796,Grogol,\r\n1797,Kartasura,\r\n1798,Mojolaban,\r\n1799,Nguter,\r\n1800,Polokarto,\r\n1801,Sukoharjo,\r\n1802,Tawangsari,\r\n1803,Weru,\r\n1804,Banjarsari,\r\n1805,Jebres,\r\n1806,Laweyan,\r\n1807,Pasar Kliwon,\r\n1808,Serengan,\r\n1809,Margadana,\r\n1810,Tegal Barat,\r\n1811,Tegal Selatan,\r\n1812,Tegal Timur,\r\n1813,Adiwerna,\r\n1814,Balapulang,\r\n1815,Bojong,\r\n1816,Bumijawa,\r\n1817,Dukuhturi,\r\n1818,Dukuhwaru,\r\n1819,Jatinegara,\r\n1820,Kedung Banteng,\r\n1821,Kramat,\r\n1822,Lebaksiu,\r\n1823,Margasari,\r\n1824,Pagerbarang,\r\n1825,Pangkah,\r\n1826,Slawi,\r\n1827,Surodadi,\r\n1828,Talang,\r\n1829,Tarub,\r\n1830,Warurejo,\r\n1831,Bansari,\r\n1832,Bejen,\r\n1833,Bulu,\r\n1834,Candiroto,\r\n1835,Gemawang,\r\n1836,Jumo,\r\n1837,Kaloran,\r\n1838,Kandangan,\r\n1839,Kedu,\r\n1840,Kledung,\r\n1841,Kranggan,\r\n1842,Ngadirejo,\r\n1843,Parakan,\r\n1844,Pringsurat,\r\n1845,Selopampang,\r\n1846,Temanggung,\r\n1847,Tembarak,\r\n1848,Tlogomulyo,\r\n1849,Tretep,\r\n1850,Wonoboyo,\r\n1851,Baturetno,\r\n1852,Batuwarno,\r\n1853,Bulukerto,\r\n1854,Eromoko,\r\n1855,Girimarto,\r\n1856,Giritontro,\r\n1857,Giriwoyo,\r\n1858,Jatipurno,\r\n1859,Jatiroto,\r\n1860,Jatisrono,\r\n1861,Karangtengah,\r\n1862,Kismantoro,\r\n1863,Manyaran,\r\n1864,Ngadirojo,\r\n1865,Nguntoronadi,\r\n1866,Paranggupito,\r\n1867,Pracimantoro,\r\n1868,Puhpelem,\r\n1869,Purwantoro,\r\n1870,Selogiri,\r\n1871,Sidoharjo,\r\n1872,Slogohimo,\r\n1873,Tirtomoyo,\r\n1874,Wonogiri,\r\n1875,Wuryantoro,\r\n1876,Garung,\r\n1877,Kalibawang,\r\n1878,Kalikajar,\r\n1879,Kaliwiro,\r\n1880,Kejajar,\r\n1881,Kepil,\r\n1882,Kertek,\r\n1883,Leksono,\r\n1884,Mojotengah,\r\n1885,Sapuran,\r\n1886,Selomerto,\r\n1887,Sukoharjo,\r\n1888,Wadaslintang,\r\n1889,Watumalang,\r\n1890,Wonosobo,\r\n1891,Arosbaya,\r\n1892,Bangkalan,\r\n1893,Blega,\r\n1894,Burneh,\r\n1895,Galis,\r\n1896,Geger,\r\n1897,Kamal,\r\n1898,Klampis,\r\n1899,Kokop,\r\n1900,Konang,\r\n1901,Kwanyar,\r\n1902,Labang,\r\n1903,Modung,\r\n1904,Sepulu,\r\n1905,Socah,\r\n1906,Tanah Merah,\r\n1907,Tanjungbumi,\r\n1908,Tragah,\r\n1909,Bangorejo,\r\n1910,Banyuwangi,\r\n1911,Cluring,\r\n1912,Gambiran,\r\n1913,Genteng,\r\n1914,Giri,\r\n1915,Glagah,\r\n1916,Glenmore,\r\n1917,Kabat,\r\n1918,Kalibaru,\r\n1919,Kalipuro,\r\n1920,Licin,\r\n1921,Muncar,\r\n1922,Pesanggaran,\r\n1923,Purwoharjo,\r\n1924,Rogojampi,\r\n1925,Sempu,\r\n1926,Siliragung,\r\n1927,Singojuruh,\r\n1928,Songgon,\r\n1929,Srono,\r\n1930,Tegaldlimo,\r\n1931,Tegalsari,\r\n1932,Wongsorejo,\r\n1933,Batu,\r\n1934,Bumiaji,\r\n1935,Junrejo,\r\n1936,Kepanjen Kidul,\r\n1937,Sanan Wetan,\r\n1938,Sukorejo,\r\n1939,Bakung,\r\n1940,Binangun,\r\n1941,Doko,\r\n1942,Gandusari,\r\n1943,Garum,\r\n1944,Kademangan,\r\n1945,Kanigoro,\r\n1946,Kesamben,\r\n1947,Nglegok,\r\n1948,Panggungrejo,\r\n1949,Ponggok,\r\n1950,Sanan Kulon,\r\n1951,Selopuro,\r\n1952,Selorejo,\r\n1953,Srengat,\r\n1954,Sutojayan,\r\n1955,Talun,\r\n1956,Udanawu,\r\n1957,Wates,\r\n1958,Wlingi,\r\n1959,Wonodadi,\r\n1960,Wonotirto,\r\n1961,Balen,\r\n1962,Baureno,\r\n1963,Bojonegoro,\r\n1964,Bubulan,\r\n1965,Dander,\r\n1966,Gondang,\r\n1967,Kalitidu,\r\n1968,Kanor,\r\n1969,Kapas,\r\n1970,Kasiman,\r\n1971,Kedewan,\r\n1972,Kedungadem,\r\n1973,Kepoh Baru,\r\n1974,Malo,\r\n1975,Margomulyo,\r\n1976,Ngambon,\r\n1977,Ngasem,\r\n1978,Ngraho,\r\n1979,Padangan,\r\n1980,Purwosari,\r\n1981,Sekar,\r\n1982,Sugihwaras,\r\n1983,Sukosewu,\r\n1984,Sumberrejo,\r\n1985,Tambakrejo,\r\n1986,Temayang,\r\n1987,Trucuk,\r\n1988,Binakal,\r\n1989,Bondowoso,\r\n1990,Botolinggo,\r\n1991,Cermee,\r\n1992,Curahdami,\r\n1993,Grujugan,\r\n1994,Jambe Sari D.S.,\r\n1995,Klabang,\r\n1996,Maesan,\r\n1997,Pakem,\r\n1998,Prajekan,\r\n1999,Pujer,\r\n2000,Sempol,\r\n2001,Sukosari,\r\n2002,Sumber Wringin,\r\n2003,Taman Krocok,\r\n2004,Tamanan,\r\n2005,Tapen,\r\n2006,Tegalampel,\r\n2007,Tenggarang,\r\n2008,Tlogosari,\r\n2009,Wonosari,\r\n2010,Wringin,\r\n2011,Balong Panggang,\r\n2012,Benjeng,\r\n2013,Bungah,\r\n2014,Cerme,\r\n2015,Driyorejo,\r\n2016,Duduk Sampeyan,\r\n2017,Dukun,\r\n2018,Gresik,\r\n2019,Kebomas,\r\n2020,Kedamean,\r\n2021,Manyar,\r\n2022,Menganti,\r\n2023,Panceng,\r\n2024,Sangkapura,\r\n2025,Sidayu,\r\n2026,Tambak,\r\n2027,Ujung Pangkah,\r\n2028,Wringin Anom,\r\n2029,Ajung,\r\n2030,Ambulu,\r\n2031,Arjasa,\r\n2032,Balung,\r\n2033,Bangsalsari,\r\n2034,Gumuk Mas,\r\n2035,Jelbuk,\r\n2036,Jenggawah,\r\n2037,Jombang,\r\n2038,Kalisat,\r\n2039,Kaliwates,\r\n2040,Kencong,\r\n2041,Ledokombo,\r\n2042,Mayang,\r\n2043,Mumbulsari,\r\n2044,Pakusari,\r\n2045,Panti,\r\n2046,Patrang,\r\n2047,Puger,\r\n2048,Rambipuji,\r\n2049,Semboro,\r\n2050,Silo,\r\n2051,Sukorambi,\r\n2052,Sukowono,\r\n2053,Sumber Baru,\r\n2054,Sumber Jambe,\r\n2055,Sumber Sari,\r\n2056,Tanggul,\r\n2057,Tempurejo,\r\n2058,Umbulsari,\r\n2059,Wuluhan,\r\n2060,Bandar Kedung Mulyo,\r\n2061,Bareng,\r\n2062,Diwek,\r\n2063,Gudo,\r\n2064,Jogoroto,\r\n2065,Jombang,\r\n2066,Kabuh,\r\n2067,Kesamben,\r\n2068,Kudu,\r\n2069,Megaluh,\r\n2070,Mojoagung,\r\n2071,Mojowarno,\r\n2072,Ngoro,\r\n2073,Ngusikan,\r\n2074,Perak,\r\n2075,Peterongan,\r\n2076,Plandaan,\r\n2077,Ploso,\r\n2078,Sumobito,\r\n2079,Tembelang,\r\n2080,Wonosalam,\r\n2081,Kediri Kota,\r\n2082,Mojoroto,\r\n2083,Pesantren,\r\n2084,Badas,\r\n2085,Banyakan,\r\n2086,Gampengrejo,\r\n2087,Grogol,\r\n2088,Gurah,\r\n2089,Kandangan,\r\n2090,Kandat,\r\n2091,Kayen Kidul,\r\n2092,Kepung,\r\n2093,Kras,\r\n2094,Kunjang,\r\n2095,Mojo,\r\n2096,Ngadiluwih,\r\n2097,Ngancar,\r\n2098,Ngasem,\r\n2099,Pagu,\r\n2100,Papar,\r\n2101,Pare,\r\n2102,Plemahan,\r\n2103,Plosoklaten,\r\n2104,Puncu,\r\n2105,Purwoasri,\r\n2106,Ringinrejo,\r\n2107,Semen,\r\n2108,Tarokan,\r\n2109,Wates,\r\n2110,Babat,\r\n2111,Bluluk,\r\n2112,Brondong,\r\n2113,Deket,\r\n2114,Glagah,\r\n2115,Kalitengah,\r\n2116,Karang Geneng,\r\n2117,Karangbinangun,\r\n2118,Kedungpring,\r\n2119,Kembangbahu,\r\n2120,Lamongan,\r\n2121,Laren,\r\n2122,Maduran,\r\n2123,Mantup,\r\n2124,Modo,\r\n2125,Ngimbang,\r\n2126,Paciran,\r\n2127,Pucuk,\r\n2128,Sambeng,\r\n2129,Sarirejo,\r\n2130,Sekaran,\r\n2131,Solokuro,\r\n2132,Sugio,\r\n2133,Sukodadi,\r\n2134,Sukorame,\r\n2135,Tikung,\r\n2136,Turi,\r\n2137,Candipuro,\r\n2138,Gucialit,\r\n2139,Jatiroto,\r\n2140,Kedungjajang,\r\n2141,Klakah,\r\n2142,Kunir,\r\n2143,Lumajang,\r\n2144,Padang,\r\n2145,Pasirian,\r\n2146,Pasrujambe/Pasujambe,\r\n2147,Pronojiwo,\r\n2148,Randuagung,\r\n2149,Ranuyoso,\r\n2150,Rowokangkung,\r\n2151,Senduro,\r\n2152,Sukodono,\r\n2153,Sumbersuko,\r\n2154,Tekung,\r\n2155,Tempeh,\r\n2156,Tempursari,\r\n2157,Yosowilangun,\r\n2158,Kartoharjo,\r\n2159,Manguharjo,\r\n2160,Taman,\r\n2161,Balerejo,\r\n2162,Dagangan,\r\n2163,Dolopo,\r\n2164,Geger,\r\n2165,Gemarang,\r\n2166,Jiwan,\r\n2167,Kare,\r\n2168,Kebonsari,\r\n2169,Madiun,\r\n2170,Mejayan,\r\n2171,Pilangkenceng,\r\n2172,Saradan,\r\n2173,Sawahan,\r\n2174,Wonoasri,\r\n2175,Wungu,\r\n2176,Barat,\r\n2177,Bendo,\r\n2178,Karangrejo,\r\n2179,Karas,\r\n2180,Kartoharjo Kertoharjo),\r\n2181,Kawedanan,\r\n2182,Lembeyan,\r\n2183,Magetan,\r\n2184,Maospati,\r\n2185,Ngariboyo,\r\n2186,Nguntoronadi,\r\n2187,Panekan,\r\n2188,Parang,\r\n2189,Plaosan,\r\n2190,Poncol,\r\n2191,Sidorejo,\r\n2192,Sukomoro,\r\n2193,Takeran,\r\n2194,Blimbing,\r\n2195,Kedungkandang,\r\n2196,Klojen,\r\n2197,Lowokwaru,\r\n2198,Sukun,\r\n2199,Ampelgading,\r\n2200,Bantur,\r\n2201,Bululawang,\r\n2202,Dampit,\r\n2203,Dau,\r\n2204,Donomulyo,\r\n2205,Gedangan,\r\n2206,Gondanglegi,\r\n2207,Jabung,\r\n2208,Kalipare,\r\n2209,Karangploso,\r\n2210,Kasembon,\r\n2211,Kepanjen,\r\n2212,Kromengan,\r\n2213,Lawang,\r\n2214,Ngajung Ngajum),\r\n2215,Ngantang,\r\n2216,Pagak,\r\n2217,Pagelaran,\r\n2218,Pakis,\r\n2219,Pakisaji,\r\n2220,Poncokusumo,\r\n2221,Pujon,\r\n2222,Singosari,\r\n2223,Sumbermanjing Wetan,\r\n2224,Sumberpucung,\r\n2225,Tajinan,\r\n2226,Tirtoyudo,\r\n2227,Tumpang,\r\n2228,Turen,\r\n2229,Wagir,\r\n2230,Wajak,\r\n2231,Wonosari,\r\n2232,Magersari,\r\n2233,Prajurit Kulon,\r\n2234,Bangsal,\r\n2235,Dawar Blandong,\r\n2236,Dlanggu,\r\n2237,Gedeg,\r\n2238,Gondang,\r\n2239,Jatirejo,\r\n2240,Jetis,\r\n2241,Kemlagi,\r\n2242,Kutorejo,\r\n2243,Mojoanyar,\r\n2244,Mojosari,\r\n2245,Ngoro,\r\n2246,Pacet,\r\n2247,Pungging,\r\n2248,Puri,\r\n2249,Sooko,\r\n2250,Trawas,\r\n2251,Trowulan,\r\n2252,Bagor,\r\n2253,Baron,\r\n2254,Berbek,\r\n2255,Gondang,\r\n2256,Jatikalen,\r\n2257,Kertosono,\r\n2258,Lengkong,\r\n2259,Loceret,\r\n2260,Nganjuk,\r\n2261,Ngetos,\r\n2262,Ngluyu,\r\n2263,Ngronggot,\r\n2264,Pace,\r\n2265,Patianrowo,\r\n2266,Prambon,\r\n2267,Rejoso,\r\n2268,Sawahan,\r\n2269,Sukomoro,\r\n2270,Tanjunganom,\r\n2271,Wilangan,\r\n2272,Bringin,\r\n2273,Geneng,\r\n2274,Gerih,\r\n2275,Jogorogo,\r\n2276,Karanganyar,\r\n2277,Karangjati,\r\n2278,Kasreman,\r\n2279,Kedunggalar,\r\n2280,Kendal,\r\n2281,Kwadungan,\r\n2282,Mantingan,\r\n2283,Ngawi,\r\n2284,Ngrambe,\r\n2285,Padas,\r\n2286,Pangkur,\r\n2287,Paron,\r\n2288,Pitu,\r\n2289,Sine,\r\n2290,Widodaren,\r\n2291,Arjosari,\r\n2292,Bandar,\r\n2293,Donorojo,\r\n2294,Kebon Agung,\r\n2295,Nawangan,\r\n2296,Ngadirojo,\r\n2297,Pacitan,\r\n2298,Pringkuku,\r\n2299,Punung,\r\n2300,Sudimoro,\r\n2301,Tegalombo,\r\n2302,Tulakan,\r\n2303,Batumarmar,\r\n2304,Galis,\r\n2305,Kadur,\r\n2306,Larangan,\r\n2307,Pademawu,\r\n2308,Pakong,\r\n2309,Palenga''''an,\r\n2310,Pamekasan,\r\n2311,Pasean,\r\n2312,Pegantenan,\r\n2313,Proppo,\r\n2314,Tlanakan,\r\n2315,Waru,\r\n2316,Bugul Kidul,\r\n2317,Gadingrejo,\r\n2318,Purworejo,\r\n2319,Bangil,\r\n2320,Beji,\r\n2321,Gempol,\r\n2322,Gondang Wetan,\r\n2323,Grati,\r\n2324,Kejayan,\r\n2325,Kraton,\r\n2326,Lekok,\r\n2327,Lumbang,\r\n2328,Nguling,\r\n2329,Pandaan,\r\n2330,Pasrepan,\r\n2331,Pohjentrek,\r\n2332,Prigen,\r\n2333,Purwodadi,\r\n2334,Purwosari,\r\n2335,Puspo,\r\n2336,Rejoso,\r\n2337,Rembang,\r\n2338,Sukorejo,\r\n2339,Tosari,\r\n2340,Tutur,\r\n2341,Winongan,\r\n2342,Wonorejo,\r\n2343,Babadan,\r\n2344,Badegan,\r\n2345,Balong,\r\n2346,Bungkal,\r\n2347,Jambon,\r\n2348,Jenangan,\r\n2349,Jetis,\r\n2350,Kauman,\r\n2351,Mlarak,\r\n2352,Ngebel,\r\n2353,Ngrayun,\r\n2354,Ponorogo,\r\n2355,Pudak,\r\n2356,Pulung,\r\n2357,Sambit,\r\n2358,Sampung,\r\n2359,Sawoo,\r\n2360,Siman,\r\n2361,Slahung,\r\n2362,Sooko,\r\n2363,Sukorejo,\r\n2364,Kademangan,\r\n2365,Mayangan,\r\n2366,Wonoasih,\r\n2367,Bantaran,\r\n2368,Banyu Anyar,\r\n2369,Besuk,\r\n2370,Dringu,\r\n2371,Gading,\r\n2372,Gending,\r\n2373,Kota Anyar,\r\n2374,Kraksaan,\r\n2375,Krejengan,\r\n2376,Krucil,\r\n2377,Kuripan,\r\n2378,Leces,\r\n2379,Lumbang,\r\n2380,Maron,\r\n2381,Paiton,\r\n2382,Pajarakan,\r\n2383,Pakuniran,\r\n2384,Sukapura,\r\n2385,Sumber,\r\n2386,Sumberasih,\r\n2387,Tegal Siwalan,\r\n2388,Tiris,\r\n2389,Tongas,\r\n2390,Wonomerto,\r\n2391,Banyuates,\r\n2392,Camplong,\r\n2393,Jrengik,\r\n2394,Karang Penang,\r\n2395,Kedungdung,\r\n2396,Ketapang,\r\n2397,Omben,\r\n2398,Pangarengan,\r\n2399,Robatal,\r\n2400,Sampang,\r\n2401,Sokobanah,\r\n2402,Sreseh,\r\n2403,Tambelangan,\r\n2404,Torjun,\r\n2405,Balongbendo,\r\n2406,Buduran,\r\n2407,Candi,\r\n2408,Gedangan,\r\n2409,Jabon,\r\n2410,Krembung,\r\n2411,Krian,\r\n2412,Porong,\r\n2413,Prambon,\r\n2414,Sedati,\r\n2415,Sidoarjo,\r\n2416,Sukodono,\r\n2417,Taman,\r\n2418,Tanggulangin,\r\n2419,Tarik,\r\n2420,Tulangan,\r\n2421,Waru,\r\n2422,Wonoayu,\r\n2423,Arjasa,\r\n2424,Asembagus,\r\n2425,Banyuglugur,\r\n2426,Banyuputih,\r\n2427,Besuki,\r\n2428,Bungatan,\r\n2429,Jangkar,\r\n2430,Jatibanteng,\r\n2431,Kapongan,\r\n2432,Kendit,\r\n2433,Mangaran,\r\n2434,Mlandingan,\r\n2435,Panarukan,\r\n2436,Panji,\r\n2437,Situbondo,\r\n2438,Suboh,\r\n2439,Sumbermalang,\r\n2440,Ambunten,\r\n2441,Arjasa,\r\n2442,Batang Batang,\r\n2443,Batuan,\r\n2444,Batuputih,\r\n2445,Bluto,\r\n2446,Dasuk,\r\n2447,Dungkek,\r\n2448,Ganding,\r\n2449,Gapura,\r\n2450,Gayam,\r\n2451,Gili Ginting Giligenteng),\r\n2452,Guluk Guluk,\r\n2453,Kalianget,\r\n2454,Kangayan,\r\n2455,Kota Sumenep,\r\n2456,Lenteng,\r\n2457,Manding,\r\n2458,Masalembu,\r\n2459,Nonggunong,\r\n2460,Pasongsongan,\r\n2461,Pragaan,\r\n2462,Ra''''as Raas),\r\n2463,Rubaru,\r\n2464,Sapeken,\r\n2465,Saronggi,\r\n2466,Talango,\r\n2467,Asemrowo,\r\n2468,Benowo,\r\n2469,Bubutan,\r\n2470,Bulak,\r\n2471,Dukuh Pakis,\r\n2472,Gayungan,\r\n2473,Genteng,\r\n2474,Gubeng,\r\n2475,Gununganyar,\r\n2476,Jambangan,\r\n2477,Karangpilang,\r\n2478,Kenjeran,\r\n2479,Krembangan,\r\n2480,Lakar Santri,\r\n2481,Mulyorejo,\r\n2482,Pabean Cantikan,\r\n2483,Pakal,\r\n2484,Rungkut,\r\n2485,Sambikerep,\r\n2486,Sawahan,\r\n2487,Semampir,\r\n2488,Simokerto,\r\n2489,Sukolilo,\r\n2490,Sukomanunggal,\r\n2491,Tambaksari,\r\n2492,Tandes,\r\n2493,Tegalsari,\r\n2494,Tenggilis Mejoyo,\r\n2495,Wiyung,\r\n2496,Wonocolo,\r\n2497,Wonokromo,\r\n2498,Bendungan,\r\n2499,Dongko,\r\n2500,Durenan,\r\n2501,Gandusari,\r\n2502,Kampak,\r\n2503,Karangan,\r\n2504,Munjungan,\r\n2505,Panggul,\r\n2506,Pogalan,\r\n2507,Pule,\r\n2508,Suruh,\r\n2509,Trenggalek,\r\n2510,Tugu,\r\n2511,Watulimo,\r\n2512,Bancar,\r\n2513,Bangilan,\r\n2514,Grabagan,\r\n2515,Jatirogo,\r\n2516,Jenu,\r\n2517,Kenduruan,\r\n2518,Kerek,\r\n2519,Merakurak,\r\n2520,Montong,\r\n2521,Palang,\r\n2522,Parengan,\r\n2523,Plumpang,\r\n2524,Rengel,\r\n2525,Semanding,\r\n2526,Senori,\r\n2527,Singgahan,\r\n2528,Soko,\r\n2529,Tambakboyo,\r\n2530,Tuban,\r\n2531,Widang,\r\n2532,Bandung,\r\n2533,Besuki,\r\n2534,Boyolangu,\r\n2535,Campur Darat,\r\n2536,Gondang,\r\n2537,Kalidawir,\r\n2538,Karang Rejo,\r\n2539,Kauman,\r\n2540,Kedungwaru,\r\n2541,Ngantru,\r\n2542,Ngunut,\r\n2543,Pagerwojo,\r\n2544,Pakel,\r\n2545,Pucanglaban,\r\n2546,Rejotangan,\r\n2547,Sendang,\r\n2548,Sumbergempol,\r\n2549,Tanggung Gunung,\r\n2550,Tulungagung,\r\n2551,Bengkayang,\r\n2552,Capkala,\r\n2553,Jagoi Babang,\r\n2554,Ledo,\r\n2555,Lembah Bawang,\r\n2556,Lumar,\r\n2557,Monterado,\r\n2558,Samalantan,\r\n2559,Sanggau Ledo,\r\n2560,Seluas,\r\n2561,Siding,\r\n2562,Sungai Betung,\r\n2563,Sungai Raya,\r\n2564,Sungai Raya Kepulauan,\r\n2565,Suti Semarang,\r\n2566,Teriak,\r\n2567,Tujuh Belas,\r\n2568,Badau,\r\n2569,Batang Lupar,\r\n2570,Bika,\r\n2571,Boyan Tanjung,\r\n2572,Bunut Hilir,\r\n2573,Bunut Hulu,\r\n2574,Embaloh Hilir,\r\n2575,Embaloh Hulu,\r\n2576,Embau,\r\n2577,Empanang,\r\n2578,Hulu Gurung,\r\n2579,Jongkong Jengkong),\r\n2580,Kalis,\r\n2581,Kedamin,\r\n2582,Manday,\r\n2583,Mentebah,\r\n2584,Pengkadan Batu Datu),\r\n2585,Puring Kencana,\r\n2586,Putussibau Selatan,\r\n2587,Putussibau Utara,\r\n2588,Seberuang,\r\n2589,Selimbau,\r\n2590,Semitau,\r\n2591,Silat Hilir,\r\n2592,Silat Hulu,\r\n2593,Suhaid,\r\n2594,Pulau Maya Karimata,\r\n2595,Seponti,\r\n2596,Simpang Hilir,\r\n2597,Sukadana,\r\n2598,Teluk Batang,\r\n2599,Air Upas,\r\n2600,Benua Kayong,\r\n2601,Delta Pawan,\r\n2602,Hulu Sungai,\r\n2603,Jelai Hulu,\r\n2604,Kendawangan,\r\n2605,Manis Mata,\r\n2606,Marau,\r\n2607,Matan Hilir Selatan,\r\n2608,Matan Hilir Utara,\r\n2609,Muara Pawan,\r\n2610,Nanga Tayap,\r\n2611,Pemahan,\r\n2612,Sandai,\r\n2613,Simpang Dua,\r\n2614,Simpang Hulu,\r\n2615,Singkup,\r\n2616,Sungai Laur,\r\n2617,Sungai Melayu Rayak,\r\n2618,Tumbang Titi,\r\n2619,Batu Ampar,\r\n2620,Kuala Mandor-B,\r\n2621,Kubu,\r\n2622,Rasau Jaya,\r\n2623,Sei/Sungai Ambawang,\r\n2624,Sei/Sungai Kakap,\r\n2625,Sei/Sungai Raya,\r\n2626,Teluk/Telok Pakedai,\r\n2627,Terentang,\r\n2628,Air Besar,\r\n2629,Banyuke Hulu,\r\n2630,Jelimpo,\r\n2631,Kuala Behe,\r\n2632,Mandor,\r\n2633,Mempawah Hulu,\r\n2634,Menjalin,\r\n2635,Menyuke,\r\n2636,Meranti,\r\n2637,Ngabang,\r\n2638,Sebangki,\r\n2639,Sengah Temila,\r\n2640,Sompak,\r\n2641,Belimbing,\r\n2642,Belimbing Hulu,\r\n2643,Ella Hilir,\r\n2644,Menukung,\r\n2645,Nanga Pinoh,\r\n2646,Pinoh Selatan,\r\n2647,Pinoh Utara,\r\n2648,Sayan,\r\n2649,Sokan,\r\n2650,Tanah Pinoh,\r\n2651,Tanah Pinoh Barat,\r\n2652,Pontianak Barat,\r\n2653,Pontianak Kota,\r\n2654,Pontianak Selatan,\r\n2655,Pontianak Tenggara,\r\n2656,Pontianak Timur,\r\n2657,Pontianak Utara,\r\n2658,Anjongan,\r\n2659,Mempawah Hilir,\r\n2660,Mempawah Timur,\r\n2661,Sadaniang,\r\n2662,Segedong,\r\n2663,Sei/Sungai Kunyit,\r\n2664,Sei/Sungai Pinyuh,\r\n2665,Siantan,\r\n2666,Toho,\r\n2667,Galing,\r\n2668,Jawai,\r\n2669,Jawai Selatan,\r\n2670,Paloh,\r\n2671,Pemangkat,\r\n2672,Sajad,\r\n2673,Sajingan Besar,\r\n2674,Salatiga,\r\n2675,Sambas,\r\n2676,Sebawi,\r\n2677,Sejangkung,\r\n2678,Selakau,\r\n2679,Selakau Timur,\r\n2680,Semparuk,\r\n2681,Subah,\r\n2682,Tangaran,\r\n2683,Tebas,\r\n2684,Tekarang,\r\n2685,Teluk Keramat,\r\n2686,Balai,\r\n2687,Beduai Beduwai),\r\n2688,Bonti,\r\n2689,Entikong,\r\n2690,Jangkang,\r\n2691,Kembayan,\r\n2692,Meliau,\r\n2693,Mukok,\r\n2694,Noyan,\r\n2695,Parindu,\r\n2696,Sanggau Kapuas,\r\n2697,Sekayam,\r\n2698,Tayan Hilir,\r\n2699,Tayan Hulu,\r\n2700,Toba,\r\n2701,Belitang,\r\n2702,Belitang Hilir,\r\n2703,Belitang Hulu,\r\n2704,Nanga Mahap,\r\n2705,Nanga Taman,\r\n2706,Sekadau Hilir,\r\n2707,Sekadau Hulu,\r\n2708,Singkawang Barat,\r\n2709,Singkawang Selatan,\r\n2710,Singkawang Tengah,\r\n2711,Singkawang Timur,\r\n2712,Singkawang Utara,\r\n2713,Ambalau,\r\n2714,Binjai Hulu,\r\n2715,Dedai,\r\n2716,Kayan Hilir,\r\n2717,Kayan Hulu,\r\n2718,Kelam Permai,\r\n2719,Ketungau Hilir,\r\n2720,Ketungau Hulu,\r\n2721,Ketungau Tengah,\r\n2722,Sepauk,\r\n2723,Serawai Nanga Serawai),\r\n2724,Sintang,\r\n2725,Sungai Tebelian,\r\n2726,Tempunak,\r\n2727,Awayan,\r\n2728,Batu Mandi,\r\n2729,Halong,\r\n2730,Juai,\r\n2731,Lampihong,\r\n2732,Paringin,\r\n2733,Paringin Selatan,\r\n2734,Tebing Tinggi,\r\n2735,Aluh-Aluh,\r\n2736,Aranio,\r\n2737,Astambul,\r\n2738,Beruntung Baru,\r\n2739,Gambut,\r\n2740,Karang Intan,\r\n2741,Kertak Hanyar,\r\n2742,Martapura Barat,\r\n2743,Martapura Kota,\r\n2744,Martapura Timur,\r\n2745,Mataraman,\r\n2746,Pengaron,\r\n2747,Peramasan,\r\n2748,Sambung Makmur,\r\n2749,Sei/Sungai Pinang,\r\n2750,Sei/Sungai Tabuk,\r\n2751,Simpang Empat,\r\n2752,Tatah Makmur,\r\n2753,Telaga Bauntung,\r\n2754,Banjar Baru Selatan,\r\n2755,Banjar Baru Utara,\r\n2756,Cempaka,\r\n2757,Landasan Ulin,\r\n2758,Liang Anggang,\r\n2759,Banjarmasin Barat,\r\n2760,Banjarmasin Selatan,\r\n2761,Banjarmasin Tengah,\r\n2762,Banjarmasin Timur,\r\n2763,Banjarmasin Utara,\r\n2764,Alalak,\r\n2765,Anjir Muara,\r\n2766,Anjir Pasar,\r\n2767,Bakumpai,\r\n2768,Barambai,\r\n2769,Belawang,\r\n2770,Cerbon,\r\n2771,Jejangkit,\r\n2772,Kuripan,\r\n2773,Mandastana,\r\n2774,Marabahan,\r\n2775,Mekar Sari,\r\n2776,Rantau Badauh,\r\n2777,Tabukan,\r\n2778,Tabunganen,\r\n2779,Tamban,\r\n2780,Wanaraya,\r\n2781,Angkinang,\r\n2782,Daha Barat,\r\n2783,Daha Selatan,\r\n2784,Daha Utara,\r\n2785,Kalumpang Kelumpang),\r\n2786,Kandangan,\r\n2787,Loksado,\r\n2788,Padang Batung,\r\n2789,Simpur,\r\n2790,Sungai Raya,\r\n2791,Telaga Langsat,\r\n2792,Barabai,\r\n2793,Batang Alai Selatan,\r\n2794,Batang Alai Timur,\r\n2795,Batang Alai Utara,\r\n2796,Batu Benawa,\r\n2797,Hantakan,\r\n2798,Haruyan,\r\n2799,Labuan Amas Selatan,\r\n2800,Labuan Amas Utara,\r\n2801,Limpasu,\r\n2802,Pandawan,\r\n2803,Amuntai Selatan,\r\n2804,Amuntai Tengah,\r\n2805,Amuntai Utara,\r\n2806,Babirik,\r\n2807,Banjang,\r\n2808,Danau Panggang,\r\n2809,Haur Gading,\r\n2810,Paminggir,\r\n2811,Sungai Pandan,\r\n2812,Sungai Tabukan,\r\n2813,Hampang,\r\n2814,Kelumpang Barat,\r\n2815,Kelumpang Hilir,\r\n2816,Kelumpang Hulu,\r\n2817,Kelumpang Selatan,\r\n2818,Kelumpang Tengah,\r\n2819,Kelumpang Utara,\r\n2820,Pamukan Barat,\r\n2821,Pamukan Selatan,\r\n2822,Pamukan Utara,\r\n2823,Pulau Laut Barat,\r\n2824,Pulau Laut Kepulauan,\r\n2825,Pulau Laut Selatan,\r\n2826,Pulau Laut Tengah,\r\n2827,Pulau Laut Timur,\r\n2828,Pulau Laut Utara,\r\n2829,Pulau Sebuku,\r\n2830,Pulau Sembilan,\r\n2831,Sampanahan,\r\n2832,Sungai Durian,\r\n2833,Banua Lawas,\r\n2834,Bintang Ara,\r\n2835,Haruai,\r\n2836,Jaro,\r\n2837,Kelua Klua),\r\n2838,Muara Harus,\r\n2839,Muara Uya,\r\n2840,Murung Pudak,\r\n2841,Pugaan,\r\n2842,Tanjung,\r\n2843,Tanta,\r\n2844,Upau,\r\n2845,Angsana,\r\n2846,Batulicin,\r\n2847,Karang Bintang,\r\n2848,Kuranji,\r\n2849,Kusan Hilir,\r\n2850,Kusan Hulu,\r\n2851,Mantewe,\r\n2852,Satui,\r\n2853,Simpang Empat,\r\n2854,Sungai Loban,\r\n2855,Bati-Bati,\r\n2856,Batu Ampar,\r\n2857,Jorong,\r\n2858,Kintap,\r\n2859,Kurau,\r\n2860,Panyipatan,\r\n2861,Pelaihari,\r\n2862,Takisung,\r\n2863,Tambang Ulang,\r\n2864,Bakarangan,\r\n2865,Binuang,\r\n2866,Bungur,\r\n2867,Candi Laras Selatan,\r\n2868,Candi Laras Utara,\r\n2869,Hatungun,\r\n2870,Lokpaikat,\r\n2871,Piani,\r\n2872,Salam Babaris,\r\n2873,Tapin Selatan,\r\n2874,Tapin Tengah,\r\n2875,Tapin Utara,\r\n2876,Dusun Hilir,\r\n2877,Dusun Selatan,\r\n2878,Dusun Utara,\r\n2879,Gunung Bintang Awai,\r\n2880,Jenamas,\r\n2881,Karau Kuala,\r\n2882,Awang,\r\n2883,Benua Lima,\r\n2884,Dusun Tengah,\r\n2885,Dusun Timur,\r\n2886,Paju Epat,\r\n2887,Paku,\r\n2888,Patangkep Tutui,\r\n2889,Pematang Karau,\r\n2890,Raren Batuah,\r\n2891,Gunung Purei,\r\n2892,Gunung Timang,\r\n2893,Lahei,\r\n2894,Montallat Montalat),\r\n2895,Teweh Tengah,\r\n2896,Teweh Timur,\r\n2897,Damang Batu,\r\n2898,Kahayan Hulu Utara,\r\n2899,Kurun,\r\n2900,Manuhing,\r\n2901,Manuhing Raya,\r\n2902,Mihing Raya,\r\n2903,Miri Manasa,\r\n2904,Rungan,\r\n2905,Rungan Hulu,\r\n2906,Sepang Sepang Simin),\r\n2907,Tewah,\r\n2908,Basarang,\r\n2909,Kapuas Barat,\r\n2910,Kapuas Hilir,\r\n2911,Kapuas Hulu,\r\n2912,Kapuas Kuala,\r\n2913,Kapuas Murung,\r\n2914,Kapuas Tengah,\r\n2915,Kapuas Timur,\r\n2916,Mantangai,\r\n2917,Pulau Petak,\r\n2918,Selat,\r\n2919,Timpah,\r\n2920,Bukit Raya,\r\n2921,Kamipang,\r\n2922,Katingan Hilir,\r\n2923,Katingan Hulu,\r\n2924,Katingan Kuala,\r\n2925,Katingan Tengah,\r\n2926,Marikit,\r\n2927,Mendawai,\r\n2928,Petak Malai,\r\n2929,Pulau Malan,\r\n2930,Sanaman Mantikei Senamang Mantikei),\r\n2931,Tasik Payawan,\r\n2932,Tewang Sanggalang Garing Sangalang),\r\n2933,Arut Selatan,\r\n2934,Arut Utara,\r\n2935,Kotawaringin Lama,\r\n2936,Kumai,\r\n2937,Pangkalan Banteng,\r\n2938,Pangkalan Lada,\r\n2939,Antang Kalang,\r\n2940,Baamang,\r\n2941,Bukit Santuei,\r\n2942,Cempaga,\r\n2943,Cempaga Hulu,\r\n2944,Kota Besi,\r\n2945,Mentawa Baru Ketapang),\r\n2946,Mentaya Hilir Selatan,\r\n2947,Mentaya Hilir Utara,\r\n2948,Mentaya Hulu,\r\n2949,Parenggean,\r\n2950,Pulau Hanaut,\r\n2951,Seranau,\r\n2952,Telawang,\r\n2953,Teluk Sampit,\r\n2954,Batangkawa,\r\n2955,Belantikan Raya,\r\n2956,Bulik,\r\n2957,Bulik Timur,\r\n2958,Delang,\r\n2959,Lamandau,\r\n2960,Menthobi Raya,\r\n2961,Sematu Jaya,\r\n2962,Barito Tuhup Raya,\r\n2963,Laung Tuhup,\r\n2964,Murung,\r\n2965,Permata Intan,\r\n2966,Seribu Riam,\r\n2967,Sumber Barito,\r\n2968,Sungai Babuat,\r\n2969,Tanah Siang,\r\n2970,Tanah Siang Selatan,\r\n2971,Uut Murung,\r\n2972,Bukit Batu,\r\n2973,Jekan Raya,\r\n2974,Pahandut,\r\n2975,Rakumpit,\r\n2976,Sebangau,\r\n2977,Banama Tingang,\r\n2978,Jabiren Raya,\r\n2979,Kahayan Hilir,\r\n2980,Kahayan Kuala,\r\n2981,Kahayan Tengah,\r\n2982,Maliku,\r\n2983,Pandih Batu,\r\n2984,Sebangau Kuala,\r\n2985,Danau Sembuluh,\r\n2986,Hanau,\r\n2987,Seruyan Hilir,\r\n2988,Seruyan Hulu,\r\n2989,Seruyan Tengah,\r\n2990,Balai Riam,\r\n2991,Jelai,\r\n2992,Pantai Lunci,\r\n2993,Permata Kecubung,\r\n2994,Sukamara,\r\n2995,Balikpapan Barat,\r\n2996,Balikpapan Selatan,\r\n2997,Balikpapan Tengah,\r\n2998,Balikpapan Timur,\r\n2999,Balikpapan Utara,\r\n3000,Batu Putih,\r\n3001,Biatan,\r\n3002,Biduk-Biduk,\r\n3003,Derawan Pulau Derawan),\r\n3004,Gunung Tabur,\r\n3005,Kelay,\r\n3006,Maratua,\r\n3007,Sambaliung,\r\n3008,Segah,\r\n3009,Tabalar,\r\n3010,Talisayan,\r\n3011,Tanjung Redeb,\r\n3012,Teluk Bayur,\r\n3013,Bontang Barat,\r\n3014,Bontang Selatan,\r\n3015,Bontang Utara,\r\n3016,Barong Tongkok,\r\n3017,Bentian Besar,\r\n3018,Bongan,\r\n3019,Damai,\r\n3020,Jempang,\r\n3021,Laham,\r\n3022,Linggang Bigung,\r\n3023,Long Apari,\r\n3024,Long Bagun,\r\n3025,Long Hubung,\r\n3026,Long Iram,\r\n3027,Long Pahangai,\r\n3028,Manor Bulatin,\r\n3029,Melak,\r\n3030,Muara Lawa,\r\n3031,Muara Pahu,\r\n3032,Nyuatan,\r\n3033,Penyinggahan,\r\n3034,Sekolaq Darat,\r\n3035,Siluq Ngurai,\r\n3036,Tering,\r\n3037,Anggana,\r\n3038,Kembang Janggut,\r\n3039,Kenohan,\r\n3040,Kota Bangun,\r\n3041,Loa Janan,\r\n3042,Loa Kulu,\r\n3043,Marang Kayu,\r\n3044,Muara Badak,\r\n3045,Muara Jawa,\r\n3046,Muara Kaman,\r\n3047,Muara Muntai,\r\n3048,Muara Wis,\r\n3049,Samboja Semboja),\r\n3050,Sanga-Sanga,\r\n3051,Sebulu,\r\n3052,Tabang,\r\n3053,Tenggarong,\r\n3054,Tenggarong Seberang,\r\n3055,Batu Ampar,\r\n3056,Bengalon,\r\n3057,Busang,\r\n3058,Kaliorang,\r\n3059,Karangan,\r\n3060,Kaubun,\r\n3061,Kongbeng,\r\n3062,Long Mesangat Mesengat),\r\n3063,Muara Ancalong,\r\n3064,Muara Bengkal,\r\n3065,Muara Wahau,\r\n3066,Rantau Pulung,\r\n3067,Sandaran,\r\n3068,Sangatta Selatan,\r\n3069,Sangatta Utara,\r\n3070,Sangkulirang,\r\n3071,Telen,\r\n3072,Teluk Pandan,\r\n3073,Batu Engau,\r\n3074,Batu Sopang,\r\n3075,Kuaro,\r\n3076,Long Ikis,\r\n3077,Long Kali,\r\n3078,Muara Komam,\r\n3079,Muara Samu,\r\n3080,Pasir Belengkong,\r\n3081,Tanah Grogot,\r\n3082,Tanjung Harapan,\r\n3083,Babulu,\r\n3084,Penajam,\r\n3085,Sepaku,\r\n3086,Waru,\r\n3087,Palaran,\r\n3088,Samarinda Ilir,\r\n3089,Samarinda Seberang,\r\n3090,Samarinda Ulu,\r\n3091,Samarinda Utara,\r\n3092,Sungai Kunjang,\r\n3093,Peso,\r\n3094,Peso Hilir/Ilir,\r\n3095,Pulau Bunyu,\r\n3096,Sekatak,\r\n3097,Tanjung Palas,\r\n3098,Tanjung Palas Barat,\r\n3099,Tanjung Palas Tengah,\r\n3100,Tanjung Palas Timur,\r\n3101,Tanjung Palas Utara,\r\n3102,Tanjung Selor,\r\n3103,Bahau Hulu,\r\n3104,Kayan Hilir,\r\n3105,Kayan Hulu,\r\n3106,Kayan Selatan,\r\n3107,Malinau Barat,\r\n3108,Malinau Kota,\r\n3109,Malinau Selatan,\r\n3110,Malinau Utara,\r\n3111,Mentarang,\r\n3112,Mentarang Hulu,\r\n3113,Pujungan,\r\n3114,Sungai Boh,\r\n3115,Krayan,\r\n3116,Krayan Selatan,\r\n3117,Lumbis,\r\n3118,Nunukan,\r\n3119,Sebatik,\r\n3120,Sebatik Barat,\r\n3121,Sebuku,\r\n3122,Sembakung,\r\n3123,Sesayap,\r\n3124,Sesayap Hilir,\r\n3125,Tana Lia Tanah Lia),\r\n3126,Tarakan Barat,\r\n3127,Tarakan Tengah,\r\n3128,Tarakan Timur,\r\n3129,Tarakan Utara,\r\n3130,Batam Kota,\r\n3131,Batu Aji,\r\n3132,Batu Ampar,\r\n3133,Belakang Padang,\r\n3134,Bengkong,\r\n3135,Bulang,\r\n3136,Galang,\r\n3137,Lubuk Baja,\r\n3138,Nongsa,\r\n3139,Sagulung,\r\n3140,Sei/Sungai Beduk,\r\n3141,Sekupang,\r\n3142,Bintan Pesisir,\r\n3143,Bintan Timur,\r\n3144,Bintan Utara,\r\n3145,Gunung Kijang,\r\n3146,Mantang,\r\n3147,Seri/Sri Kuala Lobam,\r\n3148,Tambelan,\r\n3149,Teluk Bintan,\r\n3150,Teluk Sebong,\r\n3151,Toapaya,\r\n3152,Buru,\r\n3153,Durai,\r\n3154,Karimun,\r\n3155,Kundur,\r\n3156,Kundur Barat,\r\n3157,Kundur Utara,\r\n3158,Meral,\r\n3159,Moro,\r\n3160,Tebing,\r\n3161,Jemaja,\r\n3162,Jemaja Timur,\r\n3163,Palmatak,\r\n3164,Siantan,\r\n3165,Siantan Selatan,\r\n3166,Siantan Tengah,\r\n3167,Siantan Timur,\r\n3168,Lingga,\r\n3169,Lingga Utara,\r\n3170,Senayang,\r\n3171,Singkep,\r\n3172,Singkep Barat,\r\n3173,Bunguran Barat,\r\n3174,Bunguran Tengah,\r\n3175,Bunguran Timur,\r\n3176,Bunguran Timur Laut,\r\n3177,Bunguran Utara,\r\n3178,Midai,\r\n3179,Pulau Laut,\r\n3180,Pulau Tiga,\r\n3181,Serasan,\r\n3182,Subi,\r\n3183,Bukit Bestari,\r\n3184,Tanjung Pinang Barat,\r\n3185,Tanjung Pinang Kota,\r\n3186,Tanjung Pinang Timur,\r\n3187,Kedaton,\r\n3188,Kemiling,\r\n3189,Panjang,\r\n3190,Rajabasa,\r\n3191,Sukabumi,\r\n3192,Sukarame,\r\n3193,Tanjung Karang Barat,\r\n3194,Tanjung Karang Pusat,\r\n3195,Tanjung Karang Timur,\r\n3196,Tanjung Senang,\r\n3197,Telukbetung Barat,\r\n3198,Telukbetung Selatan,\r\n3199,Telukbetung Utara,\r\n3200,Air Hitam,\r\n3201,Balik Bukit,\r\n3202,Bandar Negeri Suoh,\r\n3203,Batu Brak,\r\n3204,Belalau,\r\n3205,Gedung Surian,\r\n3206,Lumbok Seminung,\r\n3207,Sekincau,\r\n3208,Sukau,\r\n3209,Sumber Jaya,\r\n3210,Suoh,\r\n3211,Way Tenong,\r\n3212,Bakauheni,\r\n3213,Candipuro,\r\n3214,Jati Agung,\r\n3215,Kalianda,\r\n3216,Katibung,\r\n3217,Ketapang,\r\n3218,Merbau Mataram,\r\n3219,Natar,\r\n3220,Palas,\r\n3221,Penengahan,\r\n3222,Rajabasa,\r\n3223,Sidomulyo,\r\n3224,Sragi,\r\n3225,Tanjung Bintang,\r\n3226,Tanjung Sari,\r\n3227,Way Panji,\r\n3228,Way Sulan,\r\n3229,Anak Ratu Aji,\r\n3230,Anak Tuha,\r\n3231,Bandar Mataram,\r\n3232,Bandar Surabaya,\r\n3233,Bangunrejo,\r\n3234,Bekri,\r\n3235,Bumi Nabung,\r\n3236,Bumi Ratu Nuban,\r\n3237,Gunung Sugih,\r\n3238,Kalirejo,\r\n3239,Kota Gajah,\r\n3240,Padang Ratu,\r\n3241,Pubian,\r\n3242,Punggur,\r\n3243,Putra Rumbia,\r\n3244,Rumbia,\r\n3245,Selagai Lingga,\r\n3246,Sendang Agung,\r\n3247,Seputih Agung,\r\n3248,Seputih Banyak,\r\n3249,Seputih Mataram,\r\n3250,Seputih Raman,\r\n3251,Seputih Surabaya,\r\n3252,Terbanggi Besar,\r\n3253,Terusan Nunyai,\r\n3254,Trimurjo,\r\n3255,Way Pangubuan Pengubuan),\r\n3256,Way Seputih,\r\n3257,Bandar Sribawono,\r\n3258,Batanghari,\r\n3259,Batanghari Nuban,\r\n3260,Braja Slebah,\r\n3261,Bumi Agung,\r\n3262,Gunung Pelindung,\r\n3263,Jabung,\r\n3264,Labuhan Maringgai,\r\n3265,Labuhan Ratu,\r\n3266,Marga Sekampung,\r\n3267,Margatiga,\r\n3268,Mataram Baru,\r\n3269,Melinting,\r\n3270,Metro Kibang,\r\n3271,Pasir Sakti,\r\n3272,Pekalongan,\r\n3273,Purbolinggo,\r\n3274,Raman Utara,\r\n3275,Sekampung,\r\n3276,Sekampung Udik,\r\n3277,Sukadana,\r\n3278,Waway Karya,\r\n3279,Way Bungur Purbolinggo Utara),\r\n3280,Way Jepara,\r\n3281,Abung Barat,\r\n3282,Abung Kunang,\r\n3283,Abung Pekurun,\r\n3284,Abung Selatan,\r\n3285,Abung Semuli,\r\n3286,Abung Surakarta,\r\n3287,Abung Tengah,\r\n3288,Abung Timur,\r\n3289,Abung Tinggi,\r\n3290,Blambangan Pagar,\r\n3291,Bukit Kemuning,\r\n3292,Bunga Mayang,\r\n3293,Hulu Sungkai,\r\n3294,Kotabumi,\r\n3295,Kotabumi Selatan,\r\n3296,Kotabumi Utara,\r\n3297,Muara Sungkai,\r\n3298,Sungkai Barat,\r\n3299,Sungkai Jaya,\r\n3300,Sungkai Selatan,\r\n3301,Sungkai Tengah,\r\n3302,Sungkai Utara,\r\n3303,Tanjung Raja,\r\n3304,Mesuji,\r\n3305,Mesuji Timur,\r\n3306,Panca Jaya,\r\n3307,Simpang Pematang,\r\n3308,Tanjung Raya,\r\n3309,Way Serdang,\r\n3310,Metro Barat,\r\n3311,Metro Pusat,\r\n3312,Metro Selatan,\r\n3313,Metro Timur,\r\n3314,Metro Utara,\r\n3315,Gedong Tataan Gedung Tataan),\r\n3316,Kedondong,\r\n3317,Negeri Katon,\r\n3318,Padang Cermin,\r\n3319,Punduh Pidada Pedada),\r\n3320,Tegineneng,\r\n3321,Way Lima,\r\n3322,Bengkunat,\r\n3323,Bengkunat Belimbing,\r\n3324,Karya Penggawa,\r\n3325,Krui Selatan,\r\n3326,Lemong,\r\n3327,Ngambur,\r\n3328,Pesisir Selatan,\r\n3329,Pesisir Tengah,\r\n3330,Pesisir Utara,\r\n3331,Pulau Pisang,\r\n3332,Way Krui,\r\n3333,Adi Luwih,\r\n3334,Ambarawa,\r\n3335,Banyumas,\r\n3336,Gading Rejo,\r\n3337,Pagelaran,\r\n3338,Pardasuka,\r\n3339,Pringsewu,\r\n3340,Sukoharjo,\r\n3341,Air Naningan,\r\n3342,Bandar Negeri Semuong,\r\n3343,Bulok,\r\n3344,Cukuh Balak,\r\n3345,Gisting,\r\n3346,Gunung Alip,\r\n3347,Kelumbayan,\r\n3348,Kelumbayan Barat,\r\n3349,Kota Agung Barat,\r\n3350,Kota Agung Pusat,\r\n3351,Kota Agung Timur,\r\n3352,Limau,\r\n3353,Pematang Sawa,\r\n3354,Pugung,\r\n3355,Pulau Panggung,\r\n3356,Semaka,\r\n3357,Sumberejo,\r\n3358,Talang Padang,\r\n3359,Ulubelu,\r\n3360,Wonosobo,\r\n3361,Banjar Agung,\r\n3362,Banjar Margo,\r\n3363,Dente Teladas,\r\n3364,Gedung Aji,\r\n3365,Gedung Aji Baru,\r\n3366,Gedung Meneng,\r\n3367,Menggala,\r\n3368,Meraksa Aji,\r\n3369,Penawar Aji,\r\n3370,Penawar Tama,\r\n3371,Rawa Pitu,\r\n3372,Rawajitu Selatan,\r\n3373,Rawajitu Timur,\r\n3374,Rawajitu Utara,\r\n3375,Gunung Agung,\r\n3376,Gunung Terang,\r\n3377,Lambu Kibang,\r\n3378,Pagar Dewa,\r\n3379,Tulang Bawang Tengah,0);\r\nINSERT INTO `oc_city` `city`, `zone_id`, `name`, `status`, `sort_order`) VALUES\r\n3380,Tulang Bawang Udik,\r\n3381,Tumijajar,\r\n3382,Way Kenanga,\r\n3383,Bahuga,\r\n3384,Banjit,\r\n3385,Baradatu,\r\n3386,Blambangan Umpu,\r\n3387,Buay Bahuga,\r\n3388,Bumi Agung,\r\n3389,Gunung Labuhan,\r\n3390,Kasui,\r\n3391,Negara Batin,\r\n3392,Negeri Agung,\r\n3393,Negeri Besar,\r\n3394,Pakuan Ratu,\r\n3395,Rebang Tangkas,\r\n3396,Way Tuba,\r\n3397,Baguala,\r\n3398,Leitimur Selatan,\r\n3399,Nusaniwe Nusanive),\r\n3400,Sirimau,\r\n3401,Teluk Ambon,\r\n3402,Airbuaya,\r\n3403,Batabual,\r\n3404,Namlea,\r\n3405,Waeapo,\r\n3406,Waplau,\r\n3407,Ambalau,\r\n3408,Kepala Madan,\r\n3409,Leksula,\r\n3410,Namrole,\r\n3411,Waesama,\r\n3412,Aru Selatan Barat,\r\n3413,Aru Selatan Timur,\r\n3414,Aru Tengah,\r\n3415,Aru Tengah Selatan,\r\n3416,Aru Tengah Timur,\r\n3417,Aru Utara,\r\n3418,Pulau-Pulau Aru,\r\n3419,Damer,\r\n3420,Mdona Hyera/Hiera,\r\n3421,Moa Lakor,\r\n3422,Pulau Letti Leti Moa Lakor),\r\n3423,Pulau Pulau Babar,\r\n3424,Pulau Pulau Terselatan,\r\n3425,Pulau-Pulau Babar Timur,\r\n3426,Amahai,\r\n3427,Banda,\r\n3428,Leihitu,\r\n3429,Leihitu Barat,\r\n3430,Masohi Kota,\r\n3431,Nusalaut,\r\n3432,Pulau Haruku,\r\n3433,Salahutu,\r\n3434,Saparua,\r\n3435,Seram Utara,\r\n3436,Seram Utara Barat,\r\n3437,Tehoru,\r\n3438,Teluk Elpaputih,\r\n3439,Teon Nila Serua,\r\n3440,Kei Besar,\r\n3441,Kei Besar Selatan,\r\n3442,Kei Besar Utara Timur,\r\n3443,Kei Kecil,\r\n3444,Kei Kecil Barat,\r\n3445,Kei Kecil Timur,\r\n3446,Kormomolin,\r\n3447,Nirunmas,\r\n3448,Selaru,\r\n3449,Tanimbar Selatan,\r\n3450,Tanimbar Utara,\r\n3451,Wermakatian Wer Maktian),\r\n3452,Wertamrian,\r\n3453,Wetar Pulau Pulau Wetar),\r\n3454,Wuarlabobar,\r\n3455,Yaru,\r\n3456,Huamual Belakang Waisala),\r\n3457,Kairatu,\r\n3458,Seram Barat,\r\n3459,Taniwel,\r\n3460,Bula,\r\n3461,Pulau Gorong Gorom),\r\n3462,Seram Timur,\r\n3463,Tutuk Tolu,\r\n3464,Werinama,\r\n3465,Pulau Dullah Selatan,\r\n3466,Pulau Dullah Utara,\r\n3467,Pulau Tayando Tam,\r\n3468,Pulau-Pulau Kur,\r\n3469,Ibu,\r\n3470,Ibu Selatan,\r\n3471,Ibu Utara,\r\n3472,Jailolo,\r\n3473,Jailolo Selatan,\r\n3474,Jailolo Timur,\r\n3475,Loloda,\r\n3476,Sahu,\r\n3477,Sahu Timur,\r\n3478,Bacan,\r\n3479,Bacan Barat,\r\n3480,Bacan Barat Utara,\r\n3481,Bacan Selatan,\r\n3482,Bacan Timur,\r\n3483,Bacan Timur Selatan,\r\n3484,Bacan Timur Tengah,\r\n3485,Gane Barat,\r\n3486,Gane Barat Selatan,\r\n3487,Gane Barat Utara,\r\n3488,Gane Timur,\r\n3489,Gane Timur Selatan,\r\n3490,Gane Timur Tengah,\r\n3491,Kasiruta Barat,\r\n3492,Kasiruta Timur,\r\n3493,Kayoa,\r\n3494,Kayoa Barat,\r\n3495,Kayoa Selatan,\r\n3496,Kayoa Utara,\r\n3497,Kepulauan Botanglomang,\r\n3498,Kepulauan Joronga,\r\n3499,Makian Pulau Makian),\r\n3500,Makian Barat Pulau Makian),\r\n3501,Mandioli Selatan,\r\n3502,Mandioli Utara,\r\n3503,Obi,\r\n3504,Obi Barat,\r\n3505,Obi Selatan,\r\n3506,Obi Timur,\r\n3507,Obi Utara,\r\n3508,Patani,\r\n3509,Patani Utara,\r\n3510,Pulau Gebe,\r\n3511,Weda,\r\n3512,Weda Selatan,\r\n3513,Weda Utara,\r\n3514,Kota Maba,\r\n3515,Maba,\r\n3516,Maba Selatan,\r\n3517,Maba Tengah,\r\n3518,Maba Utara,\r\n3519,Wasile,\r\n3520,Wasile Selatan,\r\n3521,Wasile Tengah,\r\n3522,Wasile Timur,\r\n3523,Wasile Utara,\r\n3524,Galela,\r\n3525,Galela Barat,\r\n3526,Galela Selatan,\r\n3527,Galela Utara,\r\n3528,Kao,\r\n3529,Kao Barat,\r\n3530,Kao Teluk,\r\n3531,Kao Utara,\r\n3532,Loloda Kepulauan,\r\n3533,Loloda Utara,\r\n3534,Malifut,\r\n3535,Tobelo,\r\n3536,Tobelo Barat,\r\n3537,Tobelo Selatan,\r\n3538,Tobelo Tengah,\r\n3539,Tobelo Timur,\r\n3540,Tobelo Utara,\r\n3541,Lede,\r\n3542,Mangoli Barat,\r\n3543,Mangoli Selatan,\r\n3544,Mangoli Tengah,\r\n3545,Mangoli Timur,\r\n3546,Mangoli Utara,\r\n3547,Mangoli Utara Timur,\r\n3548,Sanana,\r\n3549,Sanana Utara,\r\n3550,Sulabesi Barat,\r\n3551,Sulabesi Selatan,\r\n3552,Sulabesi Tengah,\r\n3553,Sulabesi Timur,\r\n3554,Taliabu Barat,\r\n3555,Taliabu Barat Laut,\r\n3556,Taliabu Selatan,\r\n3557,Taliabu Timur,\r\n3558,Taliabu Timur Selatan,\r\n3559,Taliabu Utara,\r\n3560,Morotai Jaya,\r\n3561,Morotai Selatan,\r\n3562,Morotai Selatan Barat,\r\n3563,Morotai Timur,\r\n3564,Morotai Utara,\r\n3565,Moti Pulau Moti),\r\n3566,Pulau Batang Dua,\r\n3567,Pulau Ternate,\r\n3568,Ternate Selatan Kota),\r\n3569,Ternate Tengah Kota),\r\n3570,Ternate Utara Kota),\r\n3571,Oba,\r\n3572,Oba Selatan,\r\n3573,Oba Tengah,\r\n3574,Oba Utara,\r\n3575,Tidore Pulau Tidore),\r\n3576,Tidore Selatan,\r\n3577,Tidore Timur Pulau Tidore),\r\n3578,Tidore Utara,\r\n3579,Arongan Lambalek,\r\n3580,Bubon,\r\n3581,Johan Pahlawan,\r\n3582,Kaway XVI,\r\n3583,Meureubo,\r\n3584,Pante Ceureumen Pantai Ceuremen),\r\n3585,Panton Reu,\r\n3586,Samatiga,\r\n3587,Sungai Mas,\r\n3588,Woyla,\r\n3589,Woyla Barat,\r\n3590,Woyla Timur,\r\n3591,Babah Rot,\r\n3592,Blang Pidie,\r\n3593,Jeumpa,\r\n3594,Kuala Batee,\r\n3595,Lembah Sabil,\r\n3596,Manggeng,\r\n3597,Setia,\r\n3598,Susoh,\r\n3599,Tangan-Tangan,\r\n3600,Baitussalam,\r\n3601,Blank Bintang,\r\n3602,Darul Imarah,\r\n3603,Darul Kamal,\r\n3604,Darussalam,\r\n3605,Indrapuri,\r\n3606,Ingin Jaya,\r\n3607,Kota Cot Glie Kuta Cot Glie),\r\n3608,Kota Jantho,\r\n3609,Kota Malaka Kuta Malaka),\r\n3610,Krueng Barona Jaya,\r\n3611,Kuta Baro,\r\n3612,Lembah Seulawah,\r\n3613,Leupung,\r\n3614,Lhoknga Lho''''nga),\r\n3615,Lhoong,\r\n3616,Mantasiek Montasik),\r\n3617,Mesjid Raya,\r\n3618,Peukan Bada,\r\n3619,Pulo Aceh,\r\n3620,Seulimeum,\r\n3621,Simpang Tiga,\r\n3622,Suka Makmur,\r\n3623,Jaya,\r\n3624,Keude Panga,\r\n3625,Krueng Sabee,\r\n3626,Sampoiniet,\r\n3627,Setia Bakti,\r\n3628,Teunom,\r\n3629,Bakongan,\r\n3630,Bakongan Timur,\r\n3631,Kluet Selatan,\r\n3632,Kluet Tengah,\r\n3633,Kluet Timur,\r\n3634,Kluet Utara,\r\n3635,Labuhan Haji,\r\n3636,Labuhan Haji Barat,\r\n3637,Labuhan Haji Timur,\r\n3638,Meukek,\r\n3639,Pasie Raja,\r\n3640,Sama Dua,\r\n3641,Sawang,\r\n3642,Tapak Tuan,\r\n3643,Trumon,\r\n3644,Trumon Timur,\r\n3645,Danau Paris,\r\n3646,Gunung Meriah Mariah),\r\n3647,Kota Baharu,\r\n3648,Kuala Baru,\r\n3649,Pulau Banyak,\r\n3650,Simpang Kanan,\r\n3651,Singkil,\r\n3652,Singkil Utara,\r\n3653,Singkohor,\r\n3654,Suro Makmur,\r\n3655,Banda Mulia,\r\n3656,Bandar Pusaka,\r\n3657,Bendahara,\r\n3658,Karang Baru,\r\n3659,Kejuruan Muda,\r\n3660,Kota Kuala Simpang,\r\n3661,Manyak Payed,\r\n3662,Rantau,\r\n3663,Sekerak,\r\n3664,Seruway,\r\n3665,Tamiang Hulu,\r\n3666,Tenggulun,\r\n3667,Atu Lintang,\r\n3668,Bebesen,\r\n3669,Bies,\r\n3670,Bintang,\r\n3671,Celala,\r\n3672,Jagong Jeget,\r\n3673,Kebayakan,\r\n3674,Ketol,\r\n3675,Kute Panang,\r\n3676,Linge,\r\n3677,Lut Tawar,\r\n3678,Pegasing,\r\n3679,Rusip Antara,\r\n3680,Silih Nara,\r\n3681,Babul Makmur,\r\n3682,Babul Rahmah,\r\n3683,Babussalam,\r\n3684,Badar,\r\n3685,Bambel,\r\n3686,Bukit Tusam,\r\n3687,Darul Hasanah,\r\n3688,Deleng Pokhisen,\r\n3689,Ketambe,\r\n3690,Lawe Alas,\r\n3691,Lawe Bulan,\r\n3692,Lawe Sigala-Gala,\r\n3693,Lawe Sumur,\r\n3694,Leuser,\r\n3695,Semadam,\r\n3696,Tanah Alas,\r\n3697,Banda Alam,\r\n3698,Birem Bayeun,\r\n3699,Darul Aman,\r\n3700,Darul Falah,\r\n3701,Darul Iksan Ihsan),\r\n3702,Idi Rayeuk,\r\n3703,Idi Timur,\r\n3704,Idi Tunong,\r\n3705,Indra Makmur,\r\n3706,Julok,\r\n3707,Madat,\r\n3708,Nurussalam,\r\n3709,Pante Bidari Beudari),\r\n3710,Peudawa,\r\n3711,Peunaron,\r\n3712,Peureulak,\r\n3713,Peureulak Barat,\r\n3714,Peureulak Timur,\r\n3715,Rantau Selamat,\r\n3716,Ranto Peureulak,\r\n3717,Serba Jadi,\r\n3718,Simpang Jernih,\r\n3719,Simpang Ulim,\r\n3720,Sungai Raya,\r\n3721,Baktiya,\r\n3722,Baktiya Barat,\r\n3723,Banda Baro,\r\n3724,Cot Girek,\r\n3725,Dewantara,\r\n3726,Geuredong Pase,\r\n3727,Kuta Makmur,\r\n3728,Langkahan,\r\n3729,Lapang,\r\n3730,Lhoksukon,\r\n3731,Matangkuli,\r\n3732,Meurah Mulia,\r\n3733,Muara Batu,\r\n3734,Nibong,\r\n3735,Nisam,\r\n3736,Nisam Antara,\r\n3737,Paya Bakong,\r\n3738,Pirak Timur,\r\n3739,Samudera,\r\n3740,Sawang,\r\n3741,Seunuddon Seunudon),\r\n3742,Simpang Kramat Keramat),\r\n3743,Syamtalira Aron,\r\n3744,Syamtalira Bayu,\r\n3745,Tanah Jambo Aye,\r\n3746,Tanah Luas,\r\n3747,Tanah Pasir,\r\n3748,Baiturrahman,\r\n3749,Banda Raya,\r\n3750,Jaya Baru,\r\n3751,Kuta Alam,\r\n3752,Kuta Raja,\r\n3753,Lueng Bata,\r\n3754,Meuraxa,\r\n3755,Syiah Kuala,\r\n3756,Ulee Kareng,\r\n3757,Bandar,\r\n3758,Bukit,\r\n3759,Permata,\r\n3760,Pintu Rime Gayo,\r\n3761,Syiah Utama,\r\n3762,Timang Gajah,\r\n3763,Wih Pesam,\r\n3764,Ganda Pura,\r\n3765,Jangka,\r\n3766,Jeumpa,\r\n3767,Jeunieb,\r\n3768,Juli,\r\n3769,Kota Juang,\r\n3770,Kuala,\r\n3771,Kuta Blang,\r\n3772,Makmur,\r\n3773,Pandrah,\r\n3774,Peudada,\r\n3775,Peulimbang Plimbang),\r\n3776,Peusangan,\r\n3777,Peusangan Selatan,\r\n3778,Peusangan Siblah Krueng,\r\n3779,Samalanga,\r\n3780,Simpang Mamplam,\r\n3781,Blang Jerango,\r\n3782,Blang Kejeren,\r\n3783,Blang Pegayon,\r\n3784,Dabun Gelang Debun Gelang),\r\n3785,Kuta Panjang,\r\n3786,Pantan Cuaca,\r\n3787,Pining Pinding),\r\n3788,Putri Betung,\r\n3789,Rikit Gaib,\r\n3790,Terangun Terangon),\r\n3791,Teripe/Tripe Jaya,\r\n3792,Langsa Barat,\r\n3793,Langsa Baro,\r\n3794,Langsa Kota,\r\n3795,Langsa Lama,\r\n3796,Langsa Timur,\r\n3797,Banda Sakti,\r\n3798,Blang Mangat,\r\n3799,Muara Dua,\r\n3800,Muara Satu,\r\n3801,Beutong,\r\n3802,Darul Makmur,\r\n3803,Kuala,\r\n3804,Kuala Pesisir,\r\n3805,Seunagan,\r\n3806,Seunagan Timur,\r\n3807,Suka Makmue,\r\n3808,Tadu Raya,\r\n3809,Batee,\r\n3810,Delima,\r\n3811,Geumpang,\r\n3812,Glumpang Baro,\r\n3813,Glumpang Tiga Geulumpang Tiga),\r\n3814,Grong Grong,\r\n3815,Indrajaya,\r\n3816,Kembang Tanjong Tanjung),\r\n3817,Keumala,\r\n3818,Kota Sigli,\r\n3819,Mane,\r\n3820,Mila,\r\n3821,Muara Tiga,\r\n3822,Mutiara,\r\n3823,Mutiara Timur,\r\n3824,Padang Tiji,\r\n3825,Peukan Baro,\r\n3826,Pidie,\r\n3827,Sakti,\r\n3828,Simpang Tiga,\r\n3829,Tangse,\r\n3830,Tiro/Truseb,\r\n3831,Titeue,\r\n3832,Bandar Baru,\r\n3833,Bandar Dua,\r\n3834,Jangka Buya,\r\n3835,Meurah Dua,\r\n3836,Meureudu,\r\n3837,Panteraja,\r\n3838,Trienggadeng,\r\n3839,Ulim,\r\n3840,Sukajaya,\r\n3841,Sukakarya,\r\n3842,Alapan Alafan),\r\n3843,Salang,\r\n3844,Simeuleu Barat,\r\n3845,Simeuleu Tengah,\r\n3846,Simeuleu Timur,\r\n3847,Teluk Dalam,\r\n3848,Teupah Barat,\r\n3849,Teupah Selatan,\r\n3850,Longkib,\r\n3851,Penanggalan,\r\n3852,Rundeng,\r\n3853,Simpang Kiri,\r\n3854,Sultan Daulat,\r\n3855,Asakota,\r\n3856,Mpunda,\r\n3857,Raba,\r\n3858,Rasanae Barat,\r\n3859,Rasanae Timur,\r\n3860,Ambalawi,\r\n3861,Belo,\r\n3862,Bolo,\r\n3863,Donggo,\r\n3864,Lambitu,\r\n3865,Lambu,\r\n3866,Langgudu,\r\n3867,Madapangga,\r\n3868,Monta,\r\n3869,Palibelo,\r\n3870,Parado,\r\n3871,Sanggar,\r\n3872,Sape,\r\n3873,Soromandi,\r\n3874,Tambora,\r\n3875,Wawo,\r\n3876,Wera,\r\n3877,Woha,\r\n3878,Dompu,\r\n3879,Hu''''u,\r\n3880,Kempo,\r\n3881,Kilo,\r\n3882,Menggelewa Manggelewa),\r\n3883,Pajo,\r\n3884,Pekat,\r\n3885,Woja,\r\n3886,Batu Layar,\r\n3887,Gerung,\r\n3888,Gunungsari,\r\n3889,Kediri,\r\n3890,Kuripan,\r\n3891,Labuapi,\r\n3892,Lembar,\r\n3893,Lingsar,\r\n3894,Narmada,\r\n3895,Sekotong,\r\n3896,Batukliang,\r\n3897,Batukliang Utara,\r\n3898,Janapria,\r\n3899,Jonggat,\r\n3900,Kopang,\r\n3901,Praya,\r\n3902,Praya Barat,\r\n3903,Praya Barat Daya,\r\n3904,Praya Tengah,\r\n3905,Praya Timur,\r\n3906,Pringgarata,\r\n3907,Pujut,\r\n3908,Aikmel,\r\n3909,Jerowaru,\r\n3910,Keruak,\r\n3911,Labuhan Haji,\r\n3912,Masbagik,\r\n3913,Montong Gading,\r\n3914,Pringgabaya,\r\n3915,Pringgasela,\r\n3916,Sakra,\r\n3917,Sakra Barat,\r\n3918,Sakra Timur,\r\n3919,Sambalia Sambelia),\r\n3920,Selong,\r\n3921,Sembalun,\r\n3922,Sikur,\r\n3923,Suela Suwela),\r\n3924,Sukamulia,\r\n3925,Suralaga,\r\n3926,Terara,\r\n3927,Wanasaba,\r\n3928,Bayan,\r\n3929,Gangga,\r\n3930,Kayangan,\r\n3931,Pemenang,\r\n3932,Tanjung,\r\n3933,Ampenan,\r\n3934,Cakranegara,\r\n3935,Mataram,\r\n3936,Sandubaya Sandujaya),\r\n3937,Sekarbela,\r\n3938,Selaparang Selaprang),\r\n3939,Alas,\r\n3940,Alas Barat,\r\n3941,Batulanteh,\r\n3942,Buer,\r\n3943,Empang,\r\n3944,Labangka,\r\n3945,Labuhan Badas,\r\n3946,Lantung,\r\n3947,Lape Lape Lopok),\r\n3948,Lenangguar,\r\n3949,Lopok,\r\n3950,Lunyuk,\r\n3951,Maronge,\r\n3952,Moyo Hilir,\r\n3953,Moyo Hulu,\r\n3954,Moyo Utara,\r\n3955,Orong Telu,\r\n3956,Plampang,\r\n3957,Rhee,\r\n3958,Ropang,\r\n3959,Sumbawa,\r\n3960,Tarano,\r\n3961,Unter Iwes Unterwiris),\r\n3962,Utan,\r\n3963,Brang Ene,\r\n3964,Brang Rea,\r\n3965,Jereweh,\r\n3966,Maluk,\r\n3967,Poto Tano,\r\n3968,Sateluk Seteluk),\r\n3969,Sekongkang,\r\n3970,Taliwang,\r\n3971,Alor Barat Daya,\r\n3972,Alor Barat Laut,\r\n3973,Alor Selatan,\r\n3974,Alor Tengah Utara,\r\n3975,Alor Timur,\r\n3976,Alor Timur Laut,\r\n3977,Kabola,\r\n3978,Lembur,\r\n3979,Mataru,\r\n3980,Pantar,\r\n3981,Pantar Barat,\r\n3982,Pantar Barat Laut,\r\n3983,Pantar Tengah,\r\n3984,Pantar Timur,\r\n3985,Pulau Pura,\r\n3986,Pureman,\r\n3987,Teluk Mutiara,\r\n3988,Atambua Barat,\r\n3989,Atambua Kota,\r\n3990,Atambua Selatan,\r\n3991,Botin Leo Bele,\r\n3992,Io Kufeu,\r\n3993,Kakuluk Mesak,\r\n3994,Kobalima,\r\n3995,Kobalima Timur,\r\n3996,Laen Manen,\r\n3997,Lamaknen,\r\n3998,Lamaknen Selatan,\r\n3999,Lasiolat,\r\n4000,Malaka Barat,\r\n4001,Malaka Tengah,\r\n4002,Malaka Timur,\r\n4003,Nanaet Duabesi,\r\n4004,Raihat,\r\n4005,Raimanuk,\r\n4006,Rinhat,\r\n4007,Sasitamean,\r\n4008,Tasifeto Barat,\r\n4009,Tasifeto Timur,\r\n4010,Weliman,\r\n4011,Wewiku,\r\n4012,Detukeli,\r\n4013,Detusoko,\r\n4014,Ende,\r\n4015,Ende Selatan,\r\n4016,Ende Tengah,\r\n4017,Ende Timur,\r\n4018,Ende Utara,\r\n4019,Kelimutu,\r\n4020,Kotabaru,\r\n4021,Lio Timur,\r\n4022,Maukaro,\r\n4023,Maurole,\r\n4024,Nangapanda,\r\n4025,Ndona,\r\n4026,Ndona Timur,\r\n4027,Ndori,\r\n4028,Pulau Ende,\r\n4029,Wewaria,\r\n4030,Wolojita,\r\n4031,Wolowaru,\r\n4032,Adonara,\r\n4033,Adonara Barat,\r\n4034,Adonara Tengah,\r\n4035,Adonara Timur,\r\n4036,Demon Pagong,\r\n4037,Ile Boleng,\r\n4038,Ile Bura,\r\n4039,Ile Mandiri,\r\n4040,Kelubagolit Klubagolit),\r\n4041,Larantuka,\r\n4042,Lewolema,\r\n4043,Solor Barat,\r\n4044,Solor Timur,\r\n4045,Tanjung Bunga,\r\n4046,Titehena,\r\n4047,Witihama Watihama),\r\n4048,Wotan Ulumado,\r\n4049,Wulanggitang,\r\n4050,Alak,\r\n4051,Kelapa Lima,\r\n4052,Maulafa,\r\n4053,Oebobo,\r\n4054,Amabi Oefeto,\r\n4055,Amabi Oefeto Timur,\r\n4056,Amarasi,\r\n4057,Amarasi Barat,\r\n4058,Amarasi Selatan,\r\n4059,Amarasi Timur,\r\n4060,Amfoang Barat Daya,\r\n4061,Amfoang Barat Laut,\r\n4062,Amfoang Selatan,\r\n4063,Amfoang Timur,\r\n4064,Amfoang Utara,\r\n4065,Fatuleu,\r\n4066,Fatuleu Barat,\r\n4067,Fatuleu Tengah,\r\n4068,Kupang Barat,\r\n4069,Kupang Tengah,\r\n4070,Kupang Timur,\r\n4071,Nekemese,\r\n4072,Semau,\r\n4073,Semau Selatan,\r\n4074,Sulamu,\r\n4075,Taebenu,\r\n4076,Takari,\r\n4077,Atadei,\r\n4078,Buyasuri Buyasari),\r\n4079,Ile Ape,\r\n4080,Ile Ape Timur,\r\n4081,Lebatukan,\r\n4082,Nagawutung,\r\n4083,Nubatukan,\r\n4084,Omesuri,\r\n4085,Wulandoni Wulandioni),\r\n4086,Cibal,\r\n4087,Langke Rembong,\r\n4088,Lelak,\r\n4089,Rahong Utara,\r\n4090,Reok,\r\n4091,Ruteng,\r\n4092,Satar Mese,\r\n4093,Satar Mese Barat,\r\n4094,Wae Rii,\r\n4095,Boleng,\r\n4096,Komodo,\r\n4097,Kuwus,\r\n4098,Lembor,\r\n4099,Macang Pacar,\r\n4100,Sano Nggoang,\r\n4101,Welak,\r\n4102,Borong,\r\n4103,Elar,\r\n4104,Kota Komba,\r\n4105,Lamba Leda,\r\n4106,Poco Ranaka,\r\n4107,Sambi Rampas,\r\n4108,Aesesa,\r\n4109,Aesesa Selatan,\r\n4110,Boawae,\r\n4111,Keo Tengah,\r\n4112,Mauponggo,\r\n4113,Nangaroro,\r\n4114,Wolowae,\r\n4115,Aimere,\r\n4116,Bajawa,\r\n4117,Bajawa Utara,\r\n4118,Golewa,\r\n4119,Jerebuu,\r\n4120,Riung,\r\n4121,Riung Barat Wolomeze),\r\n4122,Riung Selatan Wolomeze),\r\n4123,Soa,\r\n4124,Lobalain,\r\n4125,Pantai Baru,\r\n4126,Rote Barat,\r\n4127,Rote Barat Daya,\r\n4128,Rote Barat Laut,\r\n4129,Rote Selatan,\r\n4130,Rote Tengah,\r\n4131,Rote Timur,\r\n4132,Hawu Mehara,\r\n4133,Raijua,\r\n4134,Sabu Barat,\r\n4135,Sabu Liae,\r\n4136,Sabu Tengah,\r\n4137,Sabu Timur,\r\n4138,Alok,\r\n4139,Alok Barat,\r\n4140,Alok Timur,\r\n4141,Bola,\r\n4142,Doreng,\r\n4143,Hewokloang,\r\n4144,Kangae,\r\n4145,Kewapante,\r\n4146,Koting,\r\n4147,Lela,\r\n4148,Magepanda,\r\n4149,Mapitara,\r\n4150,Mego,\r\n4151,Nelle Maumerei),\r\n4152,Nita,\r\n4153,Paga,\r\n4154,Palue,\r\n4155,Talibura,\r\n4156,Tana Wawo,\r\n4157,Waiblama,\r\n4158,Waigete,\r\n4159,Kota Waikabubak,\r\n4160,Lamboya,\r\n4161,Lamboya Barat,\r\n4162,Loli,\r\n4163,Tana Righu,\r\n4164,Wanokaka,\r\n4165,Kodi,\r\n4166,Kodi Bangedo,\r\n4167,Kodi Utara,\r\n4168,Laura Loura),\r\n4169,Wewewa Barat,\r\n4170,Wewewa Selatan,\r\n4171,Wewewa Timur,\r\n4172,Wewewa Utara,\r\n4173,Katikutana,\r\n4174,Katikutana Selatan,\r\n4175,Mamboro,\r\n4176,Umbu Ratu Nggay,\r\n4177,Umbu Ratu Nggay Barat,\r\n4178,Haharu,\r\n4179,Kahaunguweti Kahaungu Eti),\r\n4180,Kambata Mapambuhang,\r\n4181,Kambera,\r\n4182,Karera,\r\n4183,Katala Hamu Lingu,\r\n4184,Kota Waingapu,\r\n4185,Lewa,\r\n4186,Lewa Tidahu,\r\n4187,Mahu,\r\n4188,Matawai Lappau La Pawu),\r\n4189,Ngadu Ngala,\r\n4190,Nggaha Oriangu,\r\n4191,Paberiwai,\r\n4192,Pahunga Lodu,\r\n4193,Pandawai,\r\n4194,Pinupahar Pirapahar),\r\n4195,Rindi,\r\n4196,Tabundung,\r\n4197,Umalulu,\r\n4198,Wula Waijelu,\r\n4199,Amanatun Selatan,\r\n4200,Amanatun Utara,\r\n4201,Amanuban Barat,\r\n4202,Amanuban Selatan,\r\n4203,Amanuban Tengah,\r\n4204,Amanuban Timur,\r\n4205,Batu Putih,\r\n4206,Boking,\r\n4207,Fatukopa,\r\n4208,Fatumnasi,\r\n4209,Fautmolo,\r\n4210,Kie Ki''''e),\r\n4211,Kok Baun,\r\n4212,Kolbano,\r\n4213,Kot Olin,\r\n4214,Kota Soe,\r\n4215,Kualin,\r\n4216,Kuanfatu,\r\n4217,Kuatnana,\r\n4218,Mollo Barat,\r\n4219,Mollo Selatan,\r\n4220,Mollo Tengah,\r\n4221,Mollo Utara,\r\n4222,Noebana,\r\n4223,Noebeba,\r\n4224,Nunbena,\r\n4225,Nunkolo,\r\n4226,Oenino,\r\n4227,Polen,\r\n4228,Santian,\r\n4229,Tobu,\r\n4230,Toianas,\r\n4231,Biboki Anleu,\r\n4232,Biboki Feotleu,\r\n4233,Biboki Moenleu,\r\n4234,Biboki Selatan,\r\n4235,Biboki Tan Pah,\r\n4236,Biboki Utara,\r\n4237,Bikomi Nilulat,\r\n4238,Bikomi Selatan,\r\n4239,Bikomi Tengah,\r\n4240,Bikomi Utara,\r\n4241,Insana,\r\n4242,Insana Barat,\r\n4243,Insana Fafinesu,\r\n4244,Insana Tengah,\r\n4245,Insana Utara,\r\n4246,Kota Kefamenanu,\r\n4247,Miomaffo Barat,\r\n4248,Miomaffo Tengah,\r\n4249,Miomaffo Timur,\r\n4250,Musi,\r\n4251,Mutis,\r\n4252,Naibenu,\r\n4253,Noemuti,\r\n4254,Noemuti Timur,\r\n4255,Agats,\r\n4256,Akat,\r\n4257,Atsy,\r\n4258,Fayit,\r\n4259,Pantai Kasuari,\r\n4260,Sawa Erma,\r\n4261,Suator,\r\n4262,Aimando Padaido,\r\n4263,Andey Andei),\r\n4264,Biak Barat,\r\n4265,Biak Kota,\r\n4266,Biak Timur,\r\n4267,Biak Utara,\r\n4268,Bondifuar,\r\n4269,Bruyadori,\r\n4270,Numfor Barat,\r\n4271,Numfor Timur,\r\n4272,Oridek,\r\n4273,Orkeri,\r\n4274,Padaido,\r\n4275,Poiru,\r\n4276,Samofa,\r\n4277,Swandiwe,\r\n4278,Warsa,\r\n4279,Yawosi,\r\n4280,Yendidori,\r\n4281,Ambatkwi Ambatkui),\r\n4282,Arimop,\r\n4283,Bomakia,\r\n4284,Firiwage,\r\n4285,Fofi,\r\n4286,Iniyandit,\r\n4287,Jair,\r\n4288,Kombut,\r\n4289,Kouh,\r\n4290,Mandobo,\r\n4291,Manggelum,\r\n4292,Mindiptana,\r\n4293,Subur,\r\n4294,Waropko,\r\n4295,Yaniruma,\r\n4296,Bowobado,\r\n4297,Kapiraya,\r\n4298,Tigi,\r\n4299,Tigi Barat,\r\n4300,Tigi Timur,\r\n4301,Dogiyai,\r\n4302,Kamu,\r\n4303,Kamu Selatan,\r\n4304,Kamu Timur,\r\n4305,Kamu Utara Ikrar/Ikrat),\r\n4306,Mapia,\r\n4307,Mapia Barat,\r\n4308,Mapia Tengah,\r\n4309,Piyaiye Sukikai),\r\n4310,Sukikai Selatan,\r\n4311,Agisiga,\r\n4312,Biandoga,\r\n4313,Hitadipa,\r\n4314,Homeo Homeyo),\r\n4315,Sugapa,\r\n4316,Wandai,\r\n4317,Abepura,\r\n4318,Heram,\r\n4319,Jayapura Selatan,\r\n4320,Jayapura Utara,\r\n4321,Muara Tami,\r\n4322,Airu,\r\n4323,Demta,\r\n4324,Depapre,\r\n4325,Ebungfau Ebungfa),\r\n4326,Gresi Selatan,\r\n4327,Kaureh,\r\n4328,Kemtuk,\r\n4329,Kemtuk Gresi,\r\n4330,Nimbokrang,\r\n4331,Nimboran,\r\n4332,Nimboran Timur Nambluong),\r\n4333,Ravenirara,\r\n4334,Sentani,\r\n4335,Sentani Barat,\r\n4336,Sentani Timur,\r\n4337,Unurum Guay,\r\n4338,Waibu,\r\n4339,Yapsi,\r\n4340,Yokari,\r\n4341,Asologaima Asalogaima),\r\n4342,Asolokobal,\r\n4343,Bolakme,\r\n4344,Hubikosi Hobikosi),\r\n4345,Kurulu,\r\n4346,Musatfak,\r\n4347,Pelebaga,\r\n4348,Poga,\r\n4349,Walelagama,\r\n4350,Wamena,\r\n4351,Wollo Wolo),\r\n4352,Yalengga,\r\n4353,Arso,\r\n4354,Arso Timur,\r\n4355,Senggi,\r\n4356,Skamto Skanto),\r\n4357,Towe Towe Hitam),\r\n4358,Waris,\r\n4359,Web,\r\n4360,Angkaisera,\r\n4361,Kepulauan Ambai,\r\n4362,Kosiwo,\r\n4363,Poom,\r\n4364,Raimbawi,\r\n4365,Teluk Ampimoi,\r\n4366,Windesi,\r\n4367,Wonawa,\r\n4368,Yapen Barat,\r\n4369,Yapen Selatan,\r\n4370,Yapen Timur,\r\n4371,Yapen Utara,\r\n4372,Balingga,\r\n4373,Dimba,\r\n4374,Gamelia,\r\n4375,Kuyawage,\r\n4376,Makki Maki),\r\n4377,Malagaineri Malagineri),\r\n4378,Pirime,\r\n4379,Tiom,\r\n4380,Tiomneri,\r\n4381,Benuki,\r\n4382,Mamberamo Hilir/Ilir,\r\n4383,Mamberamo Hulu/Ulu,\r\n4384,Mamberamo Tengah,\r\n4385,Mamberamo Tengah Timur,\r\n4386,Rofaer Rufaer),\r\n4387,Sawai,\r\n4388,Waropen Atas,\r\n4389,Eragayam,\r\n4390,Ilugwa,\r\n4391,Kelila,\r\n4392,Kobakma,\r\n4393,Megabilis Megambilis),\r\n4394,Assue,\r\n4395,Citakmitak,\r\n4396,Edera,\r\n4397,Haju,\r\n4398,Nambioman Bapai Mambioman),\r\n4399,Obaa,\r\n4400,Animha,\r\n4401,Eligobel,\r\n4402,Ilyawab,\r\n4403,Jagebob,\r\n4404,Kaptel,\r\n4405,Kimaam,\r\n4406,Kurik,\r\n4407,Malind,\r\n4408,Merauke,\r\n4409,Muting,\r\n4410,Naukenjerai,\r\n4411,Ngguti Nggunti),\r\n4412,Okaba,\r\n4413,Semangga,\r\n4414,Sota,\r\n4415,Tabonji,\r\n4416,Tanah Miring,\r\n4417,Tubang,\r\n4418,Ulilin,\r\n4419,Waan,\r\n4420,Agimuga,\r\n4421,Jila,\r\n4422,Jita,\r\n4423,Kuala Kencana,\r\n4424,Mimika Barat Mibar),\r\n4425,Mimika Barat Jauh,\r\n4426,Mimika Barat Tengah,\r\n4427,Mimika Baru,\r\n4428,Mimika Timur,\r\n4429,Mimika Timur Jauh,\r\n4430,Mimika Timur Tengah,\r\n4431,Tembagapura,\r\n4432,Makimi,\r\n4433,Nabire,\r\n4434,Nabire Barat,\r\n4435,Napan,\r\n4436,Siriwo,\r\n4437,Teluk Kimi,\r\n4438,Teluk Umar,\r\n4439,Uwapa,\r\n4440,Wanggar,\r\n4441,Wapoga,\r\n4442,Yaro Yaro Kabisay),\r\n4443,Yaur,\r\n4444,Gearek,\r\n4445,Geselma Geselema),\r\n4446,Kenyam,\r\n4447,Mapenduma,\r\n4448,Mbua Mbuga),\r\n4449,Mugi,\r\n4450,Wosak,\r\n4451,Yigi,\r\n4452,Aradide,\r\n4453,Bibida,\r\n4454,Bogobaida,\r\n4455,Dumadama,\r\n4456,Ekadide,\r\n4457,Kebo,\r\n4458,Paniai Barat,\r\n4459,Paniai Timur,\r\n4460,Siriwo,\r\n4461,Yatamo,\r\n4462,Aboy,\r\n4463,Batom,\r\n4464,Bime,\r\n4465,Borme,\r\n4466,Iwur Okiwur),\r\n4467,Kiwirok,\r\n4468,Kiwirok Timur,\r\n4469,Okbibab,\r\n4470,Oksibil,\r\n4471,Pepera,\r\n4472,Agadugume,\r\n4473,Beoga,\r\n4474,Doufu,\r\n4475,Gome,\r\n4476,Ilaga,\r\n4477,Pogoma,\r\n4478,Sinak,\r\n4479,Wangbe,\r\n4480,Fawi,\r\n4481,Ilu,\r\n4482,Jigonikme,\r\n4483,Mewoluk Mewulok),\r\n4484,Mulia,\r\n4485,Tingginambut,\r\n4486,Torere,\r\n4487,Yamo,\r\n4488,Apawer Hulu,\r\n4489,Bonggo,\r\n4490,Bonggo Timur,\r\n4491,Pantai Barat,\r\n4492,Pantai Timur,\r\n4493,Pantai Timur Barat,\r\n4494,Sarmi,\r\n4495,Sarmi Selatan,\r\n4496,Sarmi Timur,\r\n4497,Tor Atas,\r\n4498,Kepulauan Aruri,\r\n4499,Supiori Barat,\r\n4500,Supiori Selatan,\r\n4501,Supiori Timur,\r\n4502,Supiori Utara,\r\n4503,Airgaram,\r\n4504,Bewani,\r\n4505,Bokondini,\r\n4506,Bokoneri,\r\n4507,Dorman,\r\n4508,Dow,\r\n4509,Dundu Ndundu),\r\n4510,Egiam,\r\n4511,Geya,\r\n4512,Gilubandu Gilumbandu/Gilimbandu),\r\n4513,Goyage,\r\n4514,Gundagi Gudage),\r\n4515,Kamboneri,\r\n4516,Kanggime Kanggima ),\r\n4517,Karubaga,\r\n4518,Kembu,\r\n4519,Kondaga Konda),\r\n4520,Kuari,\r\n4521,Kubu,\r\n4522,Nabunage,\r\n4523,Nelawi,\r\n4524,Numba,\r\n4525,Nunggawi Munggawi),\r\n4526,Panaga,\r\n4527,Poganeri,\r\n4528,Sbey,\r\n4529,Tagineri,\r\n4530,Timori,\r\n4531,Umagi,\r\n4532,Wari Taiyeve),\r\n4533,Wina,\r\n4534,Wonoki Woniki),\r\n4535,Wunin Wumin),\r\n4536,Yuneri,\r\n4537,Inggerus,\r\n4538,Kirihi,\r\n4539,Masirei,\r\n4540,Risei Sayati,\r\n4541,Ureifasei,\r\n4542,Waropen Bawah,\r\n4543,Kabianggama Kabianggema),\r\n4544,Kayo,\r\n4545,Kona,\r\n4546,Koropun Korupun),\r\n4547,Kosarek,\r\n4548,Kurima,\r\n4549,Kwelemdua Kwelamdua),\r\n4550,Kwikma,\r\n4551,Langda,\r\n4552,Lolat,\r\n4553,Mugi,\r\n4554,Musaik,\r\n4555,Nalca,\r\n4556,Ninia,\r\n4557,Nipsan,\r\n4558,Obio,\r\n4559,Panggema,\r\n4560,Pasema,\r\n4561,Pronggoli Proggoli),\r\n4562,Puldama,\r\n4563,Samenage,\r\n4564,Sela,\r\n4565,Seredela Seredala),\r\n4566,Silimo,\r\n4567,Soba,\r\n4568,Sobaham,\r\n4569,Soloikma,\r\n4570,Sumo,\r\n4571,Suntamon,\r\n4572,Suru Suru,\r\n4573,Talambo,\r\n4574,Tangma,\r\n4575,Ubahak,\r\n4576,Ubalihi,\r\n4577,Ukha,\r\n4578,Walma,\r\n4579,Werima,\r\n4580,Wusuma,\r\n4581,Yahuliambut,\r\n4582,Yogosem,\r\n4583,Amuma,\r\n4584,Anggruk,\r\n4585,Bomela,\r\n4586,Dekai,\r\n4587,Dirwemna Diruwena),\r\n4588,Duram,\r\n4589,Endomen,\r\n4590,Hereapini Hereanini),\r\n4591,Hilipuk,\r\n4592,Hogio Hugio),\r\n4593,Holuon,\r\n4594,Abenaho,\r\n4595,Apalapsili,\r\n4596,Benawa,\r\n4597,Elelim,\r\n4598,Welarek,\r\n4599,Bombarai Bomberay),\r\n4600,Fakfak,\r\n4601,Fakfak Barat,\r\n4602,Fakfak Tengah,\r\n4603,Fakfak Timur,\r\n4604,Karas,\r\n4605,Kokas,\r\n4606,Kramongmongga Kramamongga),\r\n4607,Teluk Patipi,\r\n4608,Buruway,\r\n4609,Kaimana,\r\n4610,Kambraw Kamberau),\r\n4611,Teluk Arguni Atas,\r\n4612,Teluk Etna,\r\n4613,Yamor,\r\n4614,Yerusi Teluk Arguni Bawah),\r\n4615,Manokwari Barat,\r\n4616,Manokwari Selatan,\r\n4617,Manokwari Timur,\r\n4618,Manokwari Utara,\r\n4619,Masni,\r\n4620,Prafi,\r\n4621,Sidey,\r\n4622,Tanah Rubuh,\r\n4623,Warmare,\r\n4624,Dataran Isim,\r\n4625,Momi Waren,\r\n4626,Neney Nenei),\r\n4627,Oransbari,\r\n4628,Ransiki,\r\n4629,Tahota Tohota),\r\n4630,Aifat,\r\n4631,Aifat Timur,\r\n4632,Aitinyo,\r\n4633,Ayamaru,\r\n4634,Ayamaru Utara,\r\n4635,Mare,\r\n4636,Anggi,\r\n4637,Anggi Gida,\r\n4638,Catubouw,\r\n4639,Didohu,\r\n4640,Hingk,\r\n4641,Membey,\r\n4642,Menyambouw Minyambouw),\r\n4643,Sururey,\r\n4644,Taige,\r\n4645,Testega,\r\n4646,Kepulauan Ayau,\r\n4647,Kofiau,\r\n4648,Meos Mansar,\r\n4649,Misool Barat,\r\n4650,Misool Selatan,\r\n4651,Misool Timur,\r\n4652,Misool Utara,\r\n4653,Salawati Utara Samate),\r\n4654,Selat Sagawin,\r\n4655,Teluk Mayalibit,\r\n4656,Waigeo Barat,\r\n4657,Waigeo Barat Kepulauan,\r\n4658,Waigeo Selatan,\r\n4659,Waigeo Timur,\r\n4660,Waigeo Utara,\r\n4661,Warwabomi,\r\n4662,Sorong,\r\n4663,Sorong Barat,\r\n4664,Sorong Kepulauan,\r\n4665,Sorong Timur,\r\n4666,Sorong Utara,\r\n4667,Aimas,\r\n4668,Beraur,\r\n4669,Klamono,\r\n4670,Makbon,\r\n4671,Mayamuk,\r\n4672,Salawati,\r\n4673,Salawati Selatan,\r\n4674,Sayosa,\r\n4675,Seget,\r\n4676,Segun,\r\n4677,Inanwatan Inawatan),\r\n4678,Kais Matemani Kais),\r\n4679,Kokoda,\r\n4680,Moswaren,\r\n4681,Sawiat,\r\n4682,Seremuk,\r\n4683,Teminabuan,\r\n4684,Wayer,\r\n4685,Abun,\r\n4686,Amberbaken,\r\n4687,Fef Peef),\r\n4688,Kebar,\r\n4689,Miyah Meyah),\r\n4690,Moraid,\r\n4691,Mubrani,\r\n4692,Sausapor,\r\n4693,Senopi,\r\n4694,Yembun,\r\n4695,Aranday,\r\n4696,Aroba,\r\n4697,Babo,\r\n4698,Bintuni,\r\n4699,Biscoop,\r\n4700,Dataran Beimes,\r\n4701,Fafurwar Irorutu),\r\n4702,Kaitaro,\r\n4703,Kamundan,\r\n4704,Kuri,\r\n4705,Manimeri,\r\n4706,Masyeta,\r\n4707,Mayado,\r\n4708,Merdey,\r\n4709,Moskona Barat,\r\n4710,Moskona Selatan,\r\n4711,Moskona Timur,\r\n4712,Moskona Utara,\r\n4713,Sumuri Simuri),\r\n4714,Tembuni,\r\n4715,Tomu,\r\n4716,Tuhiba,\r\n4717,Wamesa Idoor),\r\n4718,Weriagar,\r\n4719,Rumberpon,\r\n4720,Wamesa,\r\n4721,Wasior,\r\n4722,Wasior Barat,\r\n4723,Wasior Selatan,\r\n4724,Wasior Utara,\r\n4725,Windesi,\r\n4726,Bantan,\r\n4727,Bengkalis,\r\n4728,Bukit Batu,\r\n4729,Mandau,\r\n4730,Pinggir,\r\n4731,Rupat,\r\n4732,Rupat Utara,\r\n4733,Siak Kecil,\r\n4734,Bukit Kapur,\r\n4735,Dumai Barat,\r\n4736,Dumai Timur,\r\n4737,Medang Kampai,\r\n4738,Sungai Sembilan,\r\n4739,Batang Tuaka,\r\n4740,Concong,\r\n4741,Enok,\r\n4742,Gaung,\r\n4743,Gaung Anak Serka,\r\n4744,Kateman,\r\n4745,Kempas,\r\n4746,Kemuning,\r\n4747,Keritang,\r\n4748,Kuala Indragiri,\r\n4749,Mandah,\r\n4750,Pelangiran,\r\n4751,Pulau Burung,\r\n4752,Reteh,\r\n4753,Sungai Batang,\r\n4754,Tanah Merah,\r\n4755,Teluk Belengkong,\r\n4756,Tembilahan,\r\n4757,Tembilahan Hulu,\r\n4758,Tempuling,\r\n4759,Batang Cenaku,\r\n4760,Batang Gansal,\r\n4761,Batang Peranap,\r\n4762,Kelayang,\r\n4763,Kuala Cenaku,\r\n4764,Lirik,\r\n4765,Lubuk Batu Jaya,\r\n4766,Pasir Penyu,\r\n4767,Peranap,\r\n4768,Rakit Kulim,\r\n4769,Rengat,\r\n4770,Rengat Barat,\r\n4771,Seberida,\r\n4772,Sungai Lala,\r\n4773,Bangkinang,\r\n4774,Bangkinang Barat,\r\n4775,Bangkinang Seberang,\r\n4776,Gunung Sahilan,\r\n4777,Kampar,\r\n4778,Kampar Kiri,\r\n4779,Kampar Kiri Hilir,\r\n4780,Kampar Kiri Hulu,\r\n4781,Kampar Kiri Tengah,\r\n4782,Kampar Timur,\r\n4783,Kampar Utara,\r\n4784,Perhentian Raja,\r\n4785,Rumbio Jaya,\r\n4786,Salo,\r\n4787,Siak Hulu,\r\n4788,Tambang,\r\n4789,Tapung,\r\n4790,Tapung Hilir,\r\n4791,Tapung Hulu,\r\n4792,XIII Koto Kampar,\r\n4793,Merbau,\r\n4794,Rangsang,\r\n4795,Rangsang Barat,\r\n4796,Tebing Tinggi,\r\n4797,Tebing Tinggi Barat,\r\n4798,Benai,\r\n4799,Cerenti,\r\n4800,Gunung Toar,\r\n4801,Hulu Kuantan,\r\n4802,Inuman,\r\n4803,Kuantan Hilir,\r\n4804,Kuantan Mudik,\r\n4805,Kuantan Tengah,\r\n4806,Logas Tanah Darat,\r\n4807,Pangean,\r\n4808,Singingi,\r\n4809,Singingi Hilir,\r\n4810,Bukit Raya,22000\r\n4811,Lima Puluh,\r\n4812,Marpoyan Damai,\r\n4813,Payung Sekaki,\r\n4814,Pekanbaru Kota,\r\n4815,Rumbai,\r\n4816,Rumbai Pesisir,\r\n4817,Sail,\r\n4818,Senapelan,\r\n4819,Sukajadi,\r\n4820,Tampan,\r\n4821,Tenayan Raya,\r\n4822,Bandar Petalangan,\r\n4823,Bandar Sei Kijang,\r\n4824,Bunut,\r\n4825,Kerumutan,\r\n4826,Kuala Kampar,\r\n4827,Langgam,\r\n4828,Pangkalan Kerinci,\r\n4829,Pangkalan Kuras,\r\n4830,Pangkalan Lesung,\r\n4831,Pelalawan,\r\n4832,Teluk Meranti,\r\n4833,Ukui,\r\n4834,Bagan Sinembah,\r\n4835,Bangko,\r\n4836,Bangko Pusaka Pusako),\r\n4837,Batu Hampar,\r\n4838,Kubu,\r\n4839,Pasir Limau Kapas,\r\n4840,Pujud,\r\n4841,Rantau Kopar,\r\n4842,Rimba Melintang,\r\n4843,Simpang Kanan,\r\n4844,Sinaboi Senaboi),\r\n4845,Tanah Putih,\r\n4846,Tanah Putih Tanjung Melawan,\r\n4847,Bangun Purba,\r\n4848,Bonai Darussalam,\r\n4849,Kabun,\r\n4850,Kepenuhan,\r\n4851,Kepenuhan Hulu,\r\n4852,Kunto Darussalam,\r\n4853,Pagaran Tapah Darussalam,\r\n4854,Pendalian V Koto,\r\n4855,Rambah,\r\n4856,Rambah Hilir,\r\n4857,Rambah Samo,\r\n4858,Rokan IV Koto,\r\n4859,Tambusai,\r\n4860,Tambusai Utara,\r\n4861,Tandun,\r\n4862,Ujung Batu,\r\n4863,Bunga Raya,\r\n4864,Dayun,\r\n4865,Kandis,\r\n4866,Kerinci Kanan,\r\n4867,Koto Gasib,\r\n4868,Lubuk Dalam,\r\n4869,Mempura,\r\n4870,Minas,\r\n4871,Pusako,\r\n4872,Sabak Auh,\r\n4873,Siak,\r\n4874,Sungai Apit,\r\n4875,Sungai Mandau,\r\n4876,Tualang,\r\n4877,Banggae,\r\n4878,Banggae Timur,\r\n4879,Malunda,\r\n4880,Pamboang,\r\n4881,Sendana,\r\n4882,Tammeredo Sendana,\r\n4883,Tubo Tubo Sendana),\r\n4884,Ulumunda,\r\n4885,Aralle Arrale),\r\n4886,Balla,\r\n4887,Bambang,\r\n4888,Mamasa,\r\n4889,Mambi,\r\n4890,Messawa,\r\n4891,Nosu,\r\n4892,Pana,\r\n4893,Rantebulahan Timur,\r\n4894,Sesena Padang,\r\n4895,Sumarorong,\r\n4896,Tabang,\r\n4897,Tabulahan,\r\n4898,Tanduk Kalua,\r\n4899,Tawalian,\r\n4900,Bonehau,\r\n4901,Budong-Budong,\r\n4902,Kalukku,\r\n4903,Kalumpang,\r\n4904,Karossa,\r\n4905,Mamuju,\r\n4906,Pangale,\r\n4907,Papalang,\r\n4908,Sampaga,\r\n4909,Simboro dan Kepulauan,\r\n4910,Tapalang,\r\n4911,Tapalang Barat,\r\n4912,Tobadak,\r\n4913,Tommo,\r\n4914,Topoyo,\r\n4915,Bambaira,\r\n4916,Bambalamotu,\r\n4917,Baras,\r\n4918,Bulu Taba,\r\n4919,Dapurang,\r\n4920,Duripoku,\r\n4921,Pasangkayu,\r\n4922,Pedongga,\r\n4923,Sarjo,\r\n4924,Sarudu,\r\n4925,Tikke Raya,\r\n4926,Alu Allu),\r\n4927,Anreapi,\r\n4928,Balanipa,\r\n4929,Binuang,\r\n4930,Bulo,\r\n4931,Campalagian,\r\n4932,Limboro,\r\n4933,Luyo,\r\n4934,Mapilli,\r\n4935,Matakali,\r\n4936,Matangnga,\r\n4937,Polewali,\r\n4938,Tapango,\r\n4939,Tinambung,\r\n4940,Tubbi Taramanu Tutallu),\r\n4941,Wonomulyo,\r\n4942,Bantaeng,\r\n4943,Bissappu,\r\n4944,Eremerasa,\r\n4945,Gantarang Keke Gantareng Keke),\r\n4946,Pajukukang,\r\n4947,Sinoa,\r\n4948,Tompobulu,\r\n4949,Uluere,\r\n4950,Balusu,\r\n4951,Barru,\r\n4952,Mallusetasi,\r\n4953,Pujananting,\r\n4954,Soppeng Riaja,\r\n4955,Tanete Riaja,\r\n4956,Tanete Rilau,\r\n4957,Ajangale,\r\n4958,Amali,\r\n4959,Awangpone,\r\n4960,Barebbo,\r\n4961,Bengo,\r\n4962,Bontocani,\r\n4963,Cenrana,\r\n4964,Cina,\r\n4965,Dua Boccoe,\r\n4966,Kahu,\r\n4967,Kajuara,\r\n4968,Lamuru,\r\n4969,Lappariaja,\r\n4970,Libureng,\r\n4971,Mare,\r\n4972,Palakka,\r\n4973,Patimpeng,\r\n4974,Ponre,\r\n4975,Salomekko,\r\n4976,Sibulue,\r\n4977,Tanete Riattang,\r\n4978,Tanete Riattang Barat,\r\n4979,Tanete Riattang Timur,\r\n4980,Tellu Limpoe,\r\n4981,Tellu Siattinge,0);\r\nINSERT INTO `oc_city` `city`, `zone_id`, `name`, `status`, `sort_order`) VALUES\r\n4982,Tonra,\r\n4983,Ulaweng,\r\n4984,Bonto Bahari,\r\n4985,Bontotiro,\r\n4986,Bulukumba Bulukumpa),\r\n4987,Gantarang Gangking),\r\n4988,Hero Lange-Lange Herlang),\r\n4989,Kajang,\r\n4990,Kindang,\r\n4991,Rilau Ale,\r\n4992,Ujung Bulu,\r\n4993,Ujung Loe,\r\n4994,Alla,\r\n4995,Anggeraja,\r\n4996,Baraka,\r\n4997,Baroko,\r\n4998,Bungin,\r\n4999,Buntu Batu,\r\n5000,Cendana,\r\n5001,Curio,\r\n5002,Enrekang,\r\n5003,Maiwa,\r\n5004,Malua,\r\n5005,Masalle,\r\n5006,Bajeng,\r\n5007,Bajeng Barat,\r\n5008,Barombong,\r\n5009,Biringbulu,\r\n5010,Bontolempangang,\r\n5011,Bontomarannu,\r\n5012,Bontonompo,\r\n5013,Bontonompo Selatan,\r\n5014,Bungaya,\r\n5015,Manuju,\r\n5016,Pallangga,\r\n5017,Parangloe,\r\n5018,Parigi,\r\n5019,Pattallassang,\r\n5020,Somba Opu Upu),\r\n5021,Tinggimoncong,\r\n5022,Tombolo Pao,\r\n5023,Tompobulu,\r\n5024,Arungkeke,\r\n5025,Bangkala,\r\n5026,Bangkala Barat,\r\n5027,Batang,\r\n5028,Binamu,\r\n5029,Bontoramba,\r\n5030,Kelara,\r\n5031,Rumbia,\r\n5032,Tamalatea,\r\n5033,Tarowang,\r\n5034,Turatea,\r\n5035,Bajo,\r\n5036,Bajo Barat,\r\n5037,Bassesang Tempe Bastem),\r\n5038,Belopa,\r\n5039,Belopa Utara,\r\n5040,Bua,\r\n5041,Bua Ponrang Bupon),\r\n5042,Kamanre,\r\n5043,Lamasi,\r\n5044,Lamasi Timur,\r\n5045,Larompong,\r\n5046,Larompong Selatan,\r\n5047,Latimojong,\r\n5048,Ponrang,\r\n5049,Ponrang Selatan,\r\n5050,Suli,\r\n5051,Suli Barat,\r\n5052,Walenrang,\r\n5053,Walenrang Barat,\r\n5054,Walenrang Timur,\r\n5055,Walenrang Utara,\r\n5056,Angkona,\r\n5057,Burau,\r\n5058,Kalaena,\r\n5059,Malili,\r\n5060,Mangkutana,\r\n5061,Nuha,\r\n5062,Tomoni,\r\n5063,Tomoni Timur,\r\n5064,Towuti,\r\n5065,Wasuponda,\r\n5066,Wotu,\r\n5067,Baebunta,\r\n5068,Bone-Bone,\r\n5069,Limbong,\r\n5070,Malangke,\r\n5071,Malangke Barat,\r\n5072,Mappedeceng,\r\n5073,Masamba,\r\n5074,Rampi,\r\n5075,Sabbang,\r\n5076,Seko,\r\n5077,Sukamaju,\r\n5078,Biring Kanaya,\r\n5079,Bontoala,\r\n5080,Makassar,\r\n5081,Mamajang,\r\n5082,Manggala,\r\n5083,Mariso,\r\n5084,Panakkukang,\r\n5085,Rappocini,\r\n5086,Tallo,\r\n5087,Tamalanrea,\r\n5088,Tamalate,\r\n5089,Ujung Pandang,\r\n5090,Ujung Tanah,\r\n5091,Wajo,\r\n5092,Bantimurung,\r\n5093,Bontoa Maros Utara),\r\n5094,Camba,\r\n5095,Cenrana,\r\n5096,Lau,\r\n5097,Mallawa,\r\n5098,Mandai,\r\n5099,Maros Baru,\r\n5100,Marusu,\r\n5101,Moncongloe,\r\n5102,Simbang,\r\n5103,Tanralili,\r\n5104,Tompu Bulu,\r\n5105,Turikale,\r\n5106,Bara,\r\n5107,Mungkajang,\r\n5108,Sendana,\r\n5109,Telluwanua,\r\n5110,Wara,\r\n5111,Wara Barat,\r\n5112,Wara Selatan,\r\n5113,Wara Timur,\r\n5114,Wara Utara,\r\n5115,Balocci,\r\n5116,Bungoro,\r\n5117,Labakkang,\r\n5118,Liukang Kalmas Kalukuang Masalima),\r\n5119,Liukang Tangaya,\r\n5120,Liukang Tupabbiring,\r\n5121,Mandalle,\r\n5122,Marang Ma Rang),\r\n5123,Minasa Tene,\r\n5124,Pangkajene,\r\n5125,Segeri,\r\n5126,Tondong Tallasa,\r\n5127,Bacukiki,\r\n5128,Bacukiki Barat,\r\n5129,Soreang,\r\n5130,Ujung,\r\n5131,Batulappa,\r\n5132,Cempa,\r\n5133,Duampanua,\r\n5134,Lanrisang,\r\n5135,Lembang,\r\n5136,Mattiro Bulu,\r\n5137,Mattiro Sompe,\r\n5138,Paleteang,\r\n5139,Patampanua,\r\n5140,Suppa,\r\n5141,Tiroang,\r\n5142,Watang Sawitto,\r\n5143,Benteng,\r\n5144,Bontoharu,\r\n5145,Bontomanai,\r\n5146,Bontomatene,\r\n5147,Bontosikuyu,\r\n5148,Buki,\r\n5149,Pasilambena,\r\n5150,Pasimarannu,\r\n5151,Pasimassunggu,\r\n5152,Pasimasunggu Timur,\r\n5153,Takabonerate,\r\n5154,Baranti,\r\n5155,Dua Pitue,\r\n5156,Kulo,\r\n5157,Maritengngae,\r\n5158,Panca Lautan Lautang),\r\n5159,Panca Rijang,\r\n5160,Pitu Raise/Riase,\r\n5161,Pitu Riawa,\r\n5162,Tellu Limpoe,\r\n5163,Watang Pulu,\r\n5164,Wattang Sidenreng Watang Sidenreng),\r\n5165,Bulupoddo,\r\n5166,Pulau Sembilan,\r\n5167,Sinjai Barat,\r\n5168,Sinjai Borong,\r\n5169,Sinjai Selatan,\r\n5170,Sinjai Tengah,\r\n5171,Sinjai Timur,\r\n5172,Sinjai Utara,\r\n5173,Tellu Limpoe,\r\n5174,Citta,\r\n5175,Donri-Donri,\r\n5176,Ganra,\r\n5177,Lalabata,\r\n5178,Lili Rilau,\r\n5179,Liliraja Lili Riaja),\r\n5180,Mario Riawa,\r\n5181,Mario Riwawo,\r\n5182,Galesong,\r\n5183,Galesong Selatan,\r\n5184,Galesong Utara,\r\n5185,Mangara Bombang,\r\n5186,Mappakasunggu,\r\n5187,Patallassang,\r\n5188,Polombangkeng Selatan Polobangkeng),\r\n5189,Polombangkeng Utara Polobangkeng),\r\n5190,Sanrobone,\r\n5191,Bittuang,\r\n5192,Bonggakaradeng,\r\n5193,Gandang Batu Sillanan,\r\n5194,Kurra,\r\n5195,Makale,\r\n5196,Makale Selatan,\r\n5197,Makale Utara,\r\n5198,Malimbong Balepe,\r\n5199,Mappak,\r\n5200,Masanda,\r\n5201,Mengkendek,\r\n5202,Rano,\r\n5203,Rembon,\r\n5204,Saluputti,\r\n5205,Sangalla Sanggala),\r\n5206,Sangalla Selatan,\r\n5207,Sangalla Utara,\r\n5208,Simbuang,\r\n5209,Awan Rante Karua,\r\n5210,Balusu,\r\n5211,Bangkelekila,\r\n5212,Baruppu,\r\n5213,Buntao,\r\n5214,Buntu Pepasan,\r\n5215,Dende'',Piongan Napo,\r\n5216,Kapalla Pitu Kapala Pitu),\r\n5217,Kesu,\r\n5218,Nanggala,\r\n5219,Rantebua,\r\n5220,Rantepao,\r\n5221,Rantetayo,\r\n5222,Rindingallo,\r\n5223,Sa''''dan,\r\n5224,Sanggalangi,\r\n5225,Sesean,\r\n5226,Sesean Suloara,\r\n5227,Sopai,\r\n5228,Tallunglipu,\r\n5229,Tikala,\r\n5230,Tondon,\r\n5231,Belawa,\r\n5232,Bola,\r\n5233,Gilireng,\r\n5234,Keera,\r\n5235,Majauleng,\r\n5236,Maniang Pajo,\r\n5237,Pammana,\r\n5238,Penrang,\r\n5239,Pitumpanua,\r\n5240,Sabbang Paru,\r\n5241,Sajoanging,\r\n5242,Takkalalla,\r\n5243,Tana Sitolo,\r\n5244,Tempe,\r\n5245,Balantak,\r\n5246,Batui,\r\n5247,Bualemo Boalemo),\r\n5248,Bunta,\r\n5249,Kintom,\r\n5250,Lamala,\r\n5251,Luwuk,\r\n5252,Luwuk Timur,\r\n5253,Masama,\r\n5254,Nuhon,\r\n5255,Pagimana,\r\n5256,Toili,\r\n5257,Toili Barat,\r\n5258,Banggai,\r\n5259,Banggai Selatan,\r\n5260,Banggai Tengah,\r\n5261,Banggai Utara,\r\n5262,Bangkurung,\r\n5263,Bokan Kepulauan,\r\n5264,Buko,\r\n5265,Buko Selatan,\r\n5266,Bulagi,\r\n5267,Bulagi Selatan,\r\n5268,Bulagi Utara,\r\n5269,Labobo Lobangkurung),\r\n5270,Liang,\r\n5271,Peling Tengah,\r\n5272,Tinangkung,\r\n5273,Tinangkung Selatan,\r\n5274,Tinangkung Utara,\r\n5275,Totikum Totikung),\r\n5276,Totikum Selatan,\r\n5277,Biau,\r\n5278,Bokat,\r\n5279,Bukal,\r\n5280,Bunobogu,\r\n5281,Gadung,\r\n5282,Karamat,\r\n5283,Lipunoto,\r\n5284,Momunu,\r\n5285,Paleleh,\r\n5286,Paleleh Barat,\r\n5287,Tiloan,\r\n5288,Balaesang,\r\n5289,Banawa,\r\n5290,Banawa Selatan,\r\n5291,Banawa Tengah,\r\n5292,Damsol Dampelas Sojol),\r\n5293,Labuan,\r\n5294,Pinembani,\r\n5295,Rio Pakava Riopakawa),\r\n5296,Sindue,\r\n5297,Sindue Tobata,\r\n5298,Sindue Tombusabora,\r\n5299,Sirenja,\r\n5300,Sojol,\r\n5301,Sojol Utara,\r\n5302,Tanantovea,\r\n5303,Bahodopi,\r\n5304,Bumi Raya,\r\n5305,Bungku Barat,\r\n5306,Bungku Selatan,\r\n5307,Bungku Tengah,\r\n5308,Bungku Utara,\r\n5309,Lembo,\r\n5310,Mamosalato,\r\n5311,Menui Kepulauan,\r\n5312,Mori Atas,\r\n5313,Petasia,\r\n5314,Soyo Jaya,\r\n5315,Wita Ponda,\r\n5316,Palu Barat,\r\n5317,Palu Selatan,\r\n5318,Palu Timur,\r\n5319,Palu Utara,\r\n5320,Ampibabo,\r\n5321,Balinggi,\r\n5322,Bolano Lambunu,\r\n5323,Kasimbar,\r\n5324,Mepanga,\r\n5325,Moutong,\r\n5326,Palasa,\r\n5327,Parigi,\r\n5328,Parigi Barat,\r\n5329,Parigi Selatan,\r\n5330,Parigi Tengah,\r\n5331,Parigi Utara,\r\n5332,Sausu,\r\n5333,Siniu,\r\n5334,Taopa,\r\n5335,Tinombo,\r\n5336,Tinombo Selatan,\r\n5337,Tomini,\r\n5338,Toribulu,\r\n5339,Torue,\r\n5340,Lage,\r\n5341,Lore Barat,\r\n5342,Lore Piore,\r\n5343,Lore Selatan,\r\n5344,Lore Tengah,\r\n5345,Lore Timur,\r\n5346,Lore Utara,\r\n5347,Pamona Barat,\r\n5348,Pamona Selatan,\r\n5349,Pamona Tenggara,\r\n5350,Pamona Timur,\r\n5351,Pamona Utara,\r\n5352,Poso Kota,\r\n5353,Poso Kota Selatan,\r\n5354,Poso Kota Utara,\r\n5355,Poso Pesisir,\r\n5356,Poso Pesisir Selatan,\r\n5357,Poso Pesisir Utara,\r\n5358,Dolo,\r\n5359,Dolo Barat,\r\n5360,Dolo Selatan,\r\n5361,Gumbasa,\r\n5362,Kinovaru,\r\n5363,Kulawi,\r\n5364,Kulawi Selatan,\r\n5365,Lindu,\r\n5366,Marawola,\r\n5367,Marawola Barat,\r\n5368,Nokilalaki,\r\n5369,Palolo,\r\n5370,Pipikoro,\r\n5371,Sigi Biromaru,\r\n5372,Tanambulava,\r\n5373,Ampana Kota,\r\n5374,Ampana Tete,\r\n5375,Togean,\r\n5376,Tojo,\r\n5377,Tojo Barat,\r\n5378,Ulu Bongka,\r\n5379,Una - Una,\r\n5380,Walea Besar,\r\n5381,Walea Kepulauan,\r\n5382,Baolan,\r\n5383,Basidondo,\r\n5384,Dako Pamean,\r\n5385,Dampal Selatan,\r\n5386,Dampal Utara,\r\n5387,Dondo,\r\n5388,Galang,\r\n5389,Lampasio,\r\n5390,Ogo Deide,\r\n5391,Tolitoli Utara,\r\n5392,Betoambari,\r\n5393,Bungi,\r\n5394,Kokalukuna,\r\n5395,Murhum,\r\n5396,Sora Walio Sorowalio),\r\n5397,Wolio,\r\n5398,Kabaena,\r\n5399,Kabaena Barat,\r\n5400,Kabaena Selatan,\r\n5401,Kabaena Tengah,\r\n5402,Kabaena Timur,\r\n5403,Kabaena Utara,\r\n5404,Kepulauan Masaloka Raya,\r\n5405,Lentarai Jaya S. Lantari Jaya),\r\n5406,Mata Oleo,\r\n5407,Mata Usu,\r\n5408,Poleang,\r\n5409,Poleang Barat,\r\n5410,Poleang Selatan,\r\n5411,Poleang Tengah,\r\n5412,Poleang Tenggara,\r\n5413,Poleang Timur,\r\n5414,Poleang Utara,\r\n5415,Rarowatu,\r\n5416,Rarowatu Utara,\r\n5417,Rumbia,\r\n5418,Rumbia Tengah,\r\n5419,Tontonunu Tontonuwu),\r\n5420,Batauga,\r\n5421,Batu Atas,\r\n5422,Gu,\r\n5423,Kadatua,\r\n5424,Kapontori,\r\n5425,Lakudo,\r\n5426,Lapandewa,\r\n5427,Lasalimu,\r\n5428,Lasalimu Selatan,\r\n5429,Mawasangka,\r\n5430,Mawasangka Tengah,\r\n5431,Mawasangka Timur,\r\n5432,Pasar Wajo,\r\n5433,Sampolawa,\r\n5434,Sangia Mambulu,\r\n5435,Siompu,\r\n5436,Siompu Barat,\r\n5437,Siontapia Siontapina),\r\n5438,Talaga Raya Telaga Raya),\r\n5439,Wabula,\r\n5440,Wolowa,\r\n5441,Bonegunu,\r\n5442,Kambowa,\r\n5443,Kulisusu Kalingsusu/Kalisusu),\r\n5444,Kulisusu Barat,\r\n5445,Kulisusu Utara,\r\n5446,Wakorumba Utara,\r\n5447,Abeli,\r\n5448,Baruga,\r\n5449,Kadia,\r\n5450,Kambu,\r\n5451,Kendari,\r\n5452,Kendari Barat,\r\n5453,Mandonga,\r\n5454,Poasia,\r\n5455,Puuwatu,\r\n5456,Wua-Wua,\r\n5457,Baula,\r\n5458,Kolaka,\r\n5459,Ladongi,\r\n5460,Lalolae,\r\n5461,Lambandia Lambadia),\r\n5462,Latambaga,\r\n5463,Loea,\r\n5464,Mowewe,\r\n5465,Poli Polia,\r\n5466,Polinggona,\r\n5467,Pomalaa,\r\n5468,Samaturu,\r\n5469,Tanggetada,\r\n5470,Tinondo,\r\n5471,Tirawuta,\r\n5472,Toari,\r\n5473,Uluiwoi,\r\n5474,Watumbangga Watubanggo),\r\n5475,Wolo,\r\n5476,Wundulako,\r\n5477,Batu Putih,\r\n5478,Katoi,\r\n5479,Kodeoha,\r\n5480,Lasusua,\r\n5481,Lombai Lambai),\r\n5482,Ngapa,\r\n5483,Pakue,\r\n5484,Pakue Tengah,\r\n5485,Pakue Utara,\r\n5486,Porehu,\r\n5487,Ranteangin,\r\n5488,Watunohu,\r\n5489,Wawo,\r\n5490,Abuki,\r\n5491,Amonggedo,\r\n5492,Anggaberi,\r\n5493,Asinua,\r\n5494,Besulutu,\r\n5495,Bondoala,\r\n5496,Kapoiala Kapoyala),\r\n5497,Konawe,\r\n5498,Lambuya,\r\n5499,Latoma,\r\n5500,Meluhu,\r\n5501,Pondidaha,\r\n5502,Puriala,\r\n5503,Routa,\r\n5504,Sampara,\r\n5505,Soropia,\r\n5506,Tongauna,\r\n5507,Uepai Uwepai),\r\n5508,Unaaha,\r\n5509,Wawonii Barat,\r\n5510,Wawonii Selatan,\r\n5511,Wawonii Tengah,\r\n5512,Wawonii Timur,\r\n5513,Wawonii Utara,\r\n5514,Wawotobi,\r\n5515,Wonggeduku,\r\n5516,Andoolo,\r\n5517,Angata,\r\n5518,Baito,\r\n5519,Basala,\r\n5520,Benua,\r\n5521,Buke,\r\n5522,Kolono,\r\n5523,Konda,\r\n5524,Laeya,\r\n5525,Lainea,\r\n5526,Lalumbuu,\r\n5527,Landono,\r\n5528,Laonti,\r\n5529,Moramo,\r\n5530,Moramo Utara,\r\n5531,Mowila,\r\n5532,Palangga,\r\n5533,Palangga Selatan,\r\n5534,Ranomeeto,\r\n5535,Ranomeeto Barat,\r\n5536,Tinanggea,\r\n5537,Wolasi,\r\n5538,Asera,\r\n5539,Langgikima,\r\n5540,Lasolo,\r\n5541,Lembo,\r\n5542,Molawe,\r\n5543,Sawa,\r\n5544,Wiwirano,\r\n5545,Barangka,\r\n5546,Batalaiwaru Batalaiworu),\r\n5547,Bone Bone Tondo),\r\n5548,Duruka,\r\n5549,Kabangka,\r\n5550,Kabawo,\r\n5551,Katobu,\r\n5552,Kontunaga,\r\n5553,Kusambi,\r\n5554,Lasalepa,\r\n5555,Lawa,\r\n5556,Lohia,\r\n5557,Maginti,\r\n5558,Maligano,\r\n5559,Napabalano,\r\n5560,Parigi,\r\n5561,Pasir Putih,\r\n5562,Sawerigadi Sawerigading/Sewergadi),\r\n5563,Tiworo Kepulauan,\r\n5564,Tiworo Tengah,\r\n5565,Tongkuno,\r\n5566,Wakorumba,\r\n5567,Wakorumba Selatan,\r\n5568,Watopute,\r\n5569,Binongko,\r\n5570,Kaledupa,\r\n5571,Kaledupa Selatan,\r\n5572,Togo Binongko,\r\n5573,Tomia,\r\n5574,Tomia Timur,\r\n5575,Wangi-Wangi,\r\n5576,Wangi-Wangi Selatan,\r\n5577,Aertembaga Bitung Timur),\r\n5578,Girian,\r\n5579,Lembeh Selatan Bitung Selatan),\r\n5580,Lembeh Utara,\r\n5581,Madidir Bitung Tengah),\r\n5582,Maesa,\r\n5583,Matuari Bitung Barat),\r\n5584,Ranowulu Bitung Utara),\r\n5585,Bilalang,\r\n5586,Bolaang,\r\n5587,Bolaang Timur,\r\n5588,Dumoga Barat,\r\n5589,Dumoga Timur,\r\n5590,Dumoga Utara,\r\n5591,Lolak,\r\n5592,Lolayan,\r\n5593,Passi Barat,\r\n5594,Passi Timur,\r\n5595,Poigar,\r\n5596,Sangtombolang,\r\n5597,Bolaang Uki,\r\n5598,Pinolosian,\r\n5599,Pinolosian Tengah,\r\n5600,Pinolosian Timur,\r\n5601,Posigadan,\r\n5602,Kotabunan,\r\n5603,Modayag,\r\n5604,Modayag Barat,\r\n5605,Nuangan,\r\n5606,Tutuyan,\r\n5607,Bintauna,\r\n5608,Bolang Itang Barat,\r\n5609,Bolang Itang Timur,\r\n5610,Kaidipang,\r\n5611,Pinogaluman,\r\n5612,Sangkub,\r\n5613,Kendahe,\r\n5614,Manganitu,\r\n5615,Manganitu Selatan,\r\n5616,Nusa Tabukan,\r\n5617,Tabukan Selatan,\r\n5618,Tabukan Selatan Tengah,\r\n5619,Tabukan Selatan Tenggara,\r\n5620,Tabukan Tengah,\r\n5621,Tabukan Utara,\r\n5622,Tahuna,\r\n5623,Tahuna Barat,\r\n5624,Tahuna Timur,\r\n5625,Tamako,\r\n5626,Tatoareng,\r\n5627,Biaro,\r\n5628,Siau Barat,\r\n5629,Siau Barat Selatan,\r\n5630,Siau Barat Utara,\r\n5631,Siau Tengah,\r\n5632,Siau Timur,\r\n5633,Siau Timur Selatan,\r\n5634,Tagulandang,\r\n5635,Tagulandang Selatan,\r\n5636,Tagulandang Utara,\r\n5637,Beo,\r\n5638,Beo Selatan,\r\n5639,Beo Utara,\r\n5640,Damao Damau),\r\n5641,Essang,\r\n5642,Essang Selatan,\r\n5643,Gemeh,\r\n5644,Kabaruan,\r\n5645,Kalongan,\r\n5646,Lirung,\r\n5647,Melonguane,\r\n5648,Melonguane Timur,\r\n5649,Miangas,\r\n5650,Moronge,\r\n5651,Nanusa,\r\n5652,Pulutan,\r\n5653,Rainis,\r\n5654,Salibabu,\r\n5655,Tampan Amma,\r\n5656,Kotamobagu Barat,\r\n5657,Kotamobagu Selatan,\r\n5658,Kotamobagu Timur,\r\n5659,Kotamobagu Utara,\r\n5660,Bunaken,\r\n5661,Malalayang,\r\n5662,Mapanget,\r\n5663,Sario,\r\n5664,Singkil,\r\n5665,Tikala,\r\n5666,Tuminting,\r\n5667,Wanea,\r\n5668,Wenang,\r\n5669,Eris,\r\n5670,Kakas,\r\n5671,Kawangkoan,\r\n5672,Kombi,\r\n5673,Langowan Barat,\r\n5674,Langowan Selatan,\r\n5675,Langowan Timur,\r\n5676,Langowan Utara,\r\n5677,Lembean Timur,\r\n5678,Pineleng,\r\n5679,Remboken,\r\n5680,Sonder,\r\n5681,Tombariri,\r\n5682,Tombulu,\r\n5683,Tompaso,\r\n5684,Tondano Barat,\r\n5685,Tondano Selatan,\r\n5686,Tondano Timur,\r\n5687,Tondano Utara,\r\n5688,Amurang,\r\n5689,Amurang Barat,\r\n5690,Amurang Timur,\r\n5691,Kumelembuai,\r\n5692,Maesaan,\r\n5693,Modoinding,\r\n5694,Motoling,\r\n5695,Motoling Barat,\r\n5696,Motoling Timur,\r\n5697,Ranoyapo,\r\n5698,Sinonsayang,\r\n5699,Suluun Tareran,\r\n5700,Tareran,\r\n5701,Tatapaan,\r\n5702,Tenga,\r\n5703,Tompaso Baru,\r\n5704,Tumpaan,\r\n5705,Belang,\r\n5706,Pusomaen,\r\n5707,Ratahan,\r\n5708,Ratatotok,\r\n5709,Toluaan Touluaan),\r\n5710,Tombatu,\r\n5711,Airmadidi,\r\n5712,Dimembe,\r\n5713,Kalawat,\r\n5714,Kauditan,\r\n5715,Kema,\r\n5716,Likupang Barat,\r\n5717,Likupang Selatan,\r\n5718,Likupang Timur,\r\n5719,Talawaan,\r\n5720,Wori,\r\n5721,Tomohon Barat,\r\n5722,Tomohon Selatan,\r\n5723,Tomohon Tengah,\r\n5724,Tomohon Timur,\r\n5725,Tomohon Utara,\r\n5726,Ampek Nagari IV Nagari ),\r\n5727,Banuhampu,\r\n5728,Baso,\r\n5729,Candung,\r\n5730,IV Angkat Candung Ampek Angkek),\r\n5731,IV Koto Ampek Koto),\r\n5732,Kamang Magek,\r\n5733,Lubuk Basung,\r\n5734,Malakak,\r\n5735,Matur,\r\n5736,Palembayan,\r\n5737,Palupuh,\r\n5738,Sungai Pua Puar),\r\n5739,Tanjung Mutiara,\r\n5740,Tanjung Raya,\r\n5741,Tilatang Kamang,\r\n5742,Aur Birugo Tigo Baleh,\r\n5743,Guguk Panjang Guguak Panjang),\r\n5744,Mandiangin Koto Selayan,\r\n5745,Asam Jujuhan,\r\n5746,IX Koto,\r\n5747,Koto Baru,\r\n5748,Koto Besar,\r\n5749,Koto Salak,\r\n5750,Padang Laweh,\r\n5751,Pulau Punjung,\r\n5752,Sitiung,\r\n5753,Sungai Rumbai,\r\n5754,Timpeh,\r\n5755,Tiumang,\r\n5756,Pagai Selatan,\r\n5757,Pagai Utara,\r\n5758,Siberut Barat,\r\n5759,Siberut Barat Daya,\r\n5760,Siberut Selatan,\r\n5761,Siberut Tengah,\r\n5762,Siberut Utara,\r\n5763,Sikakap,\r\n5764,Sipora Selatan,\r\n5765,Sipora Utara,\r\n5766,Akabiluru,\r\n5767,Bukik Barisan,\r\n5768,Guguak Gugu),\r\n5769,Gunuang Omeh Gunung Mas),\r\n5770,Harau,\r\n5771,Kapur IX/Sembilan,\r\n5772,Lareh Sago Halaban,\r\n5773,Luak Luhak),\r\n5774,Mungka,\r\n5775,Pangkalan Koto Baru,\r\n5776,Payakumbuh,\r\n5777,Situjuah Limo/Lima Nagari,\r\n5778,Suliki,\r\n5779,Bungus Teluk Kabung,\r\n5780,Koto Tangah,\r\n5781,Kuranji,\r\n5782,Lubuk Begalung,\r\n5783,Lubuk Kilangan,\r\n5784,Nanggalo,\r\n5785,Padang Barat,\r\n5786,Padang Selatan,\r\n5787,Padang Timur,\r\n5788,Padang Utara,\r\n5789,Pauh,\r\n5790,Padang Panjang Barat,\r\n5791,Padang Panjang Timur,\r\n5792, X 11 Enam Lingkung,\r\n5793, X 11 Kayu Tanam,\r\n5794,Batang Anai,\r\n5795,Batang Gasan,\r\n5796,Enam Lingkung,\r\n5797,IV Koto Aur Malintang,\r\n5798,Lubuk Alung,\r\n5799,Nan Sabaris,\r\n5800,Padang Sago,\r\n5801,Patamuan,\r\n5802,Sintuk/Sintuak Toboh Gadang,\r\n5803,Sungai Geringging/Garingging,\r\n5804,Sungai Limau,\r\n5805,Ulakan Tapakih/Tapakis,\r\n5806,V Koto Kampung Dalam,\r\n5807,V Koto Timur,\r\n5808,VII Koto Sungai Sarik,\r\n5809,Pariaman Selatan,\r\n5810,Pariaman Tengah,\r\n5811,Pariaman Utara,\r\n5812,Bonjol,\r\n5813,Duo Koto II Koto),\r\n5814,Lubuk Sikaping,\r\n5815,Mapat Tunggul,\r\n5816,Mapat Tunggul Selatan,\r\n5817,Padang Gelugur,\r\n5818,Panti,\r\n5819,Rao,\r\n5820,Rao Selatan,\r\n5821,Rao Utara,\r\n5822,Simpang Alahan Mati,\r\n5823,Tigo Nagari III Nagari),\r\n5824,Gunung Tuleh,\r\n5825,Kinali,\r\n5826,Koto Balingka,\r\n5827,Lembah Melintang,\r\n5828,Luhak Nan Duo,\r\n5829,Pasaman,\r\n5830,Ranah Batahan,\r\n5831,Sasak Ranah Pasisir/Pesisie,\r\n5832,Sei Beremas,\r\n5833,Sungai Aur,\r\n5834,Talamau,\r\n5835,Lamposi Tigo Nagari,\r\n5836,Payakumbuh Barat,\r\n5837,Payakumbuh Selatan,\r\n5838,Payakumbuh Timur,\r\n5839,Payakumbuh Utara,\r\n5840,Basa Ampek/IV Balai Tapan,\r\n5841,Batang Kapas,\r\n5842,Bayang,\r\n5843,Bayang Utara IV Nagari Bayang Utara),\r\n5844,IV Jurai,\r\n5845,Koto XI Tarusan,\r\n5846,Lengayang,\r\n5847,Linggo Sari Baganti,\r\n5848,Lunang Silaut,\r\n5849,Pancung Soal,\r\n5850,Ranah Pesisir,\r\n5851,Sutera,\r\n5852,Barangin,\r\n5853,Lembah Segar,\r\n5854,Silungkang,\r\n5855,Talawi,\r\n5856,IV Nagari,\r\n5857,Kamang Baru,\r\n5858,Koto VII Tujuh),\r\n5859,Kupitan,\r\n5860,Lubuk Tarok,\r\n5861,Sijunjung,\r\n5862,Sumpur Kudus,\r\n5863,Tanjung Gadang,\r\n5864,Lubuk Sikarah,\r\n5865,Tanjung Harapan,\r\n5866,Bukit Sundi,\r\n5867,Danau Kembar,\r\n5868,Gunung Talang,\r\n5869,Hiliran Gumanti,\r\n5870,IX Koto Sungai Lasi,\r\n5871,Junjung Sirih,\r\n5872,Kubung,\r\n5873,Lembah Gumanti,\r\n5874,Lembang Jaya,\r\n5875,Pantai Cermin,\r\n5876,Payung Sekaki,\r\n5877,Sepuluh/X Koto Diatas,\r\n5878,Sepuluh/X Koto Singkarak,\r\n5879,Tigo Lurah Bajanjang,\r\n5880,Koto Parik Gadang Diateh,\r\n5881,Pauh Duo,\r\n5882,Sangir,\r\n5883,Sangir Balai Janggo,\r\n5884,Sangir Batang Hari,\r\n5885,Sangir Jujuan,\r\n5886,Sungai Pagu,\r\n5887,Batipuh,\r\n5888,Batipuh Selatan,\r\n5889,Lima Kaum,\r\n5890,Lintau Buo,\r\n5891,Lintau Buo Utara,\r\n5892,Padang Ganting,\r\n5893,Pariangan,\r\n5894,Rambatan,\r\n5895,Salimpaung,\r\n5896,Sepuluh Koto X Koto),\r\n5897,Sungai Tarab,\r\n5898,Sungayang,\r\n5899,Tanjung Baru,\r\n5900,Tanjung Emas,\r\n5901,Air Salek,\r\n5902,Banyuasin I,\r\n5903,Banyuasin II,\r\n5904,Banyuasin III,\r\n5905,Betung,\r\n5906,Makarti Jaya,\r\n5907,Muara Padang,\r\n5908,Muara Sugihan,\r\n5909,Muara Telang,\r\n5910,Pulau Rimau,\r\n5911,Rambutan,\r\n5912,Rantau Bayur,\r\n5913,Talang Kelapa,\r\n5914,Tanjung Lago,\r\n5915,Tungkal Ilir,\r\n5916,Lintang Kanan,\r\n5917,Muara Pinang,\r\n5918,Pasemah Air Keruh,\r\n5919,Pendopo,\r\n5920,Talang Padang,\r\n5921,Tebing Tinggi,\r\n5922,Ulu Musi,\r\n5923,Gumay Talang,\r\n5924,Jarai,\r\n5925,Kikim Barat,\r\n5926,Kikim Selatan,\r\n5927,Kikim Tengah,\r\n5928,Kikim Timur,\r\n5929,Kota Agung,\r\n5930,Lahat,\r\n5931,Merapi Barat,\r\n5932,Merapi Timur,\r\n5933,Mulak Ulu,\r\n5934,Pagar Gunung,\r\n5935,Pajar Bulan,\r\n5936,Pseksu,\r\n5937,Pulau Pinang,\r\n5938,Tanjung Sakti Pumi,\r\n5939,Tanjung Sakti Pumu,\r\n5940,Lubuk Linggau Barat Dua II),\r\n5941,Lubuk Linggau Barat Satu I),\r\n5942,Lubuk Linggau Selatan Dua II),\r\n5943,Lubuk Linggau Selatan Satu I),\r\n5944,Lubuk Linggau Timur Dua II),\r\n5945,Lubuk Linggau Timur Satu I),\r\n5946,Lubuk Linggau Utara Dua II),\r\n5947,Lubuk Linggau Utara Satu I),\r\n5948,Abab,\r\n5949,Benakat,\r\n5950,Gelumbang,\r\n5951,Gunung Megang,\r\n5952,Kelekar,\r\n5953,Lawang Kidul,\r\n5954,Lembak,\r\n5955,Lubai,\r\n5956,Muara Belida,\r\n5957,Muara Enim,\r\n5958,Penukal Penukal Abab),\r\n5959,Penukal Utara,\r\n5960,Rambang,\r\n5961,Rambang Dangku,\r\n5962,Semendo Darat Laut,\r\n5963,Semendo Darat Tengah,\r\n5964,Semendo Darat Ulu,\r\n5965,Sungai Rotan,\r\n5966,Talang Ubi,\r\n5967,Tanah Abang,\r\n5968,Tanjung Agung,\r\n5969,Ujan Mas,\r\n5970,Babat Toman,\r\n5971,Batanghari Leko,\r\n5972,Bayung Lencir,\r\n5973,Keluang,\r\n5974,Lais,\r\n5975,Lalan Sungai Lalan),\r\n5976,Plakat Tinggi Pelakat Tinggi),\r\n5977,Sanga Desa,\r\n5978,Sekayu,\r\n5979,Sungai Keruh,\r\n5980,Sungai Lilin,\r\n5981,Batukuning Lakitan Ulu BTS)/Cecar,\r\n5982,Jaya Loka,\r\n5983,Karang Dapo,\r\n5984,Karang Jaya,\r\n5985,Megang Sakti,\r\n5986,Muara Beliti,\r\n5987,Muara Kelingi,\r\n5988,Muara Lakitan,\r\n5989,Nibung,\r\n5990,Purwodadi,\r\n5991,Rawas Ilir,\r\n5992,Rawas Ulu,\r\n5993,Rupit,\r\n5994,Selangit,\r\n5995,STL Ulu Terawas,\r\n5996,Sukakarya,\r\n5997,Sumber Harta,\r\n5998,Tiang Pumpung Kepungut,\r\n5999,Tuah Negeri,\r\n6000,Tugumulyo,\r\n6001,Ulu Rawas,\r\n6002,Indralaya,\r\n6003,Indralaya Selatan,\r\n6004,Indralaya Utara,\r\n6005,Kandis,\r\n6006,Lubuk Keliat,\r\n6007,Muara Kuang,\r\n6008,Payaraman,\r\n6009,Pemulutan,\r\n6010,Pemulutan Barat,\r\n6011,Pemulutan Selatan,\r\n6012,Rambang Kuang,\r\n6013,Rantau Alai,\r\n6014,Rantau Panjang,\r\n6015,Sungai Pinang,\r\n6016,Tanjung Batu,\r\n6017,Tanjung Raja,\r\n6018,Air Sugihan,\r\n6019,Cengal,\r\n6020,Jejawi,\r\n6021,Kayu Agung,\r\n6022,Lempuing,\r\n6023,Lempuing Jaya,\r\n6024,Mesuji,\r\n6025,Mesuji Makmur,\r\n6026,Mesuji Raya,\r\n6027,Pampangan,\r\n6028,Pangkalan Lampam,\r\n6029,Pedamaran,\r\n6030,Pedamaran Timur,\r\n6031,Sirah Pulau Padang,\r\n6032,Sungai Menang,\r\n6033,Tanjung Lubuk,\r\n6034,Teluk Gelam,\r\n6035,Tulung Selapan,\r\n6036,Baturaja Barat,\r\n6037,Baturaja Timur,\r\n6038,Lengkiti,\r\n6039,Lubuk Batang,\r\n6040,Lubuk Raja,\r\n6041,Pengandonan,\r\n6042,Peninjauan,\r\n6043,Semidang Aji,\r\n6044,Sinar Peninjauan,\r\n6045,Sosoh Buay Rayap,\r\n6046,Ulu Ogan,\r\n6047,Banding Agung,\r\n6048,Buana Pemaca,\r\n6049,Buay Pemaca,\r\n6050,Buay Pematang Ribu Ranau Tengah,\r\n6051,Buay Rawan,\r\n6052,Buay Runjung,\r\n6053,Buay Sandang Aji,\r\n6054,Kisam Ilir,\r\n6055,Kisam Tinggi,\r\n6056,Mekakau Ilir,\r\n6057,Muaradua,\r\n6058,Muaradua Kisam,\r\n6059,Pulau Beringin,\r\n6060,Runjung Agung,\r\n6061,Simpang,\r\n6062,Sindang Danau,\r\n6063,Sungai Are,\r\n6064,Tiga Dihaji,\r\n6065,Warkuk Ranau Selatan,\r\n6066,Belitang I,\r\n6067,Belitang II,\r\n6068,Belitang III,\r\n6069,Belitang Jaya,\r\n6070,Belitang Madang Raya,\r\n6071,Belitang Mulya,\r\n6072,Buay Madang,\r\n6073,Buay Madang Timur,\r\n6074,Buay Pemuka Bangsa Raja,\r\n6075,Buay Pemuka Beliung,\r\n6076,Bunga Mayang,\r\n6077,Cempaka,\r\n6078,Jayapura,\r\n6079,Madang Suku I,\r\n6080,Madang Suku II,\r\n6081,Madang Suku III,\r\n6082,Martapura,\r\n6083,Semendawai Barat,\r\n6084,Semendawai Suku III,\r\n6085,Semendawai Timur,\r\n6086,Dempo Selatan,\r\n6087,Dempo Tengah,\r\n6088,Dempo Utara,\r\n6089,Pagar Alam Selatan,\r\n6090,Pagar Alam Utara,\r\n6091,Alang-Alang Lebar,\r\n6092,Bukit Kecil,\r\n6093,Gandus,\r\n6094,Ilir Barat I,\r\n6095,Ilir Barat II,\r\n6096,Ilir Timur I,\r\n6097,Ilir Timur II,\r\n6098,Kalidoni,\r\n6099,Kemuning,\r\n6100,Kertapati,\r\n6101,Plaju,\r\n6102,Sako,\r\n6103,Seberang Ulu I,\r\n6104,Seberang Ulu II,\r\n6105,Sematang Borang,\r\n6106,Sukarami,\r\n6107,Cambai,\r\n6108,Prabumulih Barat,\r\n6109,Prabumulih Selatan,\r\n6110,Prabumulih Timur,\r\n6111,Prabumulih Utara,\r\n6112,Rambang Kapak Tengah,\r\n6113,Aek Kuasan,\r\n6114,Aek Ledong,\r\n6115,Aek Songsongan,\r\n6116,Air Batu,\r\n6117,Air Joman,\r\n6118,Bandar Pasir Mandoge,\r\n6119,Bandar Pulau,\r\n6120,Buntu Pane,\r\n6121,Kisaran Barat Kota,\r\n6122,Kisaran Timur Kota,\r\n6123,Meranti,\r\n6124,Pulau Rakyat,\r\n6125,Pulo Bandring,\r\n6126,Rahuning,\r\n6127,Rawang Panca Arga,\r\n6128,Sei Dadap,\r\n6129,Sei Kepayang,\r\n6130,Sei Kepayang Barat,\r\n6131,Sei Kepayang Timur,\r\n6132,Setia Janji,\r\n6133,Silau Laut,\r\n6134,Simpang Empat,\r\n6135,Tanjung Balai,\r\n6136,Teluk Dalam,\r\n6137,Tinggi Raja,\r\n6138,Air Putih,\r\n6139,Limapuluh,\r\n6140,Medang Deras,\r\n6141,Sei Balai,\r\n6142,Sei Suka,\r\n6143,Talawi,\r\n6144,Tanjung Tiram,\r\n6145,Binjai Barat,\r\n6146,Binjai Kota,\r\n6147,Binjai Selatan,\r\n6148,Binjai Timur,\r\n6149,Binjai Utara,\r\n6150,Berampu Brampu),\r\n6151,Gunung Sitember,\r\n6152,Lae Parira,\r\n6153,Parbuluan,\r\n6154,Pegagan Hilir,\r\n6155,Sidikalang,\r\n6156,Siempat Nempu,\r\n6157,Siempat Nempu Hilir,\r\n6158,Siempat Nempu Hulu,\r\n6159,Silahi Sabungan,\r\n6160,Silima Pungga-Pungga,\r\n6161,Sitinjo,\r\n6162,Sumbul,\r\n6163,Tanah Pinem,\r\n6164,Tiga Lingga,\r\n6165,Bangun Purba,\r\n6166,Batang Kuis,\r\n6167,Beringin,\r\n6168,Biru-Biru,\r\n6169,Deli Tua,\r\n6170,Galang,\r\n6171,Gunung Meriah,\r\n6172,Hamparan Perak,\r\n6173,Kutalimbaru,\r\n6174,Labuhan Deli,\r\n6175,Lubuk Pakam,\r\n6176,Namo Rambe,\r\n6177,Pagar Merbau,\r\n6178,Pancur Batu,\r\n6179,Pantai Labu,\r\n6180,Patumbak,\r\n6181,Percut Sei Tuan,\r\n6182,Sibolangit,\r\n6183,Sinembah Tanjung Muda Hilir,\r\n6184,Sinembah Tanjung Muda Hulu,\r\n6185,Sunggal,\r\n6186,Tanjung Morawa,\r\n6187,Gunungsitoli,\r\n6188,Gunungsitoli Alo''''oa,\r\n6189,Gunungsitoli Barat,\r\n6190,Gunungsitoli Idanoi,\r\n6191,Gunungsitoli Selatan,\r\n6192,Gunungsitoli Utara,\r\n6193,Bakti Raja,\r\n6194,Dolok Sanggul,\r\n6195,Lintong Nihuta,\r\n6196,Onan Ganjang,\r\n6197,Pakkat,\r\n6198,Paranginan,\r\n6199,Parlilitan,\r\n6200,Pollung,\r\n6201,Sijama Polang,\r\n6202,Tara Bintang,\r\n6203,Barus Jahe,\r\n6204,Brastagi Berastagi),\r\n6205,Dolat Rayat,\r\n6206,Juhar,\r\n6207,Kabanjahe,\r\n6208,Kuta Buluh,\r\n6209,Laubaleng,\r\n6210,Mardinding,\r\n6211,Merdeka,\r\n6212,Merek,\r\n6213,Munte,\r\n6214,Nama Teran,\r\n6215,Payung,\r\n6216,Simpang Empat,\r\n6217,Tiga Binanga,\r\n6218,Tiga Panah,\r\n6219,Tiganderket,\r\n6220,Bilah Barat,\r\n6221,Bilah Hilir,\r\n6222,Bilah Hulu,\r\n6223,Panai Hilir,\r\n6224,Panai Hulu,\r\n6225,Panai Tengah,\r\n6226,Pangkatan,\r\n6227,Rantau Selatan,\r\n6228,Rantau Utara,\r\n6229,Kampung Rakyat,\r\n6230,Kota Pinang,\r\n6231,Sei/Sungai Kanan,\r\n6232,Silangkitang,\r\n6233,Torgamba,\r\n6234,Aek Kuo,\r\n6235,Aek Natas,\r\n6236,Kuala Ledong Kualuh Leidong),\r\n6237,Kualuh Hilir,\r\n6238,Kualuh Hulu,\r\n6239,Kualuh Selatan,\r\n6240,Marbau,\r\n6241,Na IX-X,\r\n6242,Babalan,\r\n6243,Bahorok,\r\n6244,Batang Serangan,\r\n6245,Besitang,\r\n6246,Binjai,\r\n6247,Brandan Barat,\r\n6248,Gebang,\r\n6249,Hinai,\r\n6250,Kuala,\r\n6251,Kutambaru,\r\n6252,Padang Tualang,\r\n6253,Pangkalan Susu,\r\n6254,Pematang Jaya,\r\n6255,Salapian,\r\n6256,Sawit Seberang,\r\n6257,Secanggang,\r\n6258,Sei Binge Bingai),\r\n6259,Sei Lepan,\r\n6260,Selesai,\r\n6261,Sirapit Serapit),\r\n6262,Stabat,\r\n6263,Tanjungpura,\r\n6264,Wampu,\r\n6265,Batahan,\r\n6266,Batang Natal,\r\n6267,Bukit Malintang,\r\n6268,Huta Bargot,\r\n6269,Kotanopan,\r\n6270,Langga Bayu Lingga Bayu),\r\n6271,Lembah Sorik Merapi,\r\n6272,Muara Batang Gadis,\r\n6273,Muara Sipongi,\r\n6274,Naga Juang,\r\n6275,Natal,\r\n6276,Pakantan,\r\n6277,Panyabungan Barat,\r\n6278,Panyabungan Kota,\r\n6279,Panyabungan Selatan,\r\n6280,Panyabungan Timur,\r\n6281,Panyabungan Utara,\r\n6282,Puncak Sorik Marapi/Merapi,\r\n6283,Ranto Baek/Baik,\r\n6284,Siabu,\r\n6285,Sinunukan,\r\n6286,Tambangan,\r\n6287,Ulu Pungkut,\r\n6288,Medan Amplas,14000\r\n6289,Medan Area,14000\r\n6290,Medan Barat,14000\r\n6291,Medan Baru,14000\r\n6292,Medan Belawan Kota,14000\r\n6293,Medan Deli,14000\r\n6294,Medan Denai,14000\r\n6295,Medan Helvetia,14000\r\n6296,Medan Johor,14000\r\n6297,Medan Kota,14000\r\n6298,Medan Labuhan,14000\r\n6299,Medan Maimun,14000\r\n6300,Medan Marelan,14000\r\n6301,Medan Perjuangan,14000\r\n6302,Medan Petisah,14000\r\n6303,Medan Polonia,14000\r\n6304,Medan Selayang,14000\r\n6305,Medan Sunggal,14000\r\n6306,Medan Tembung,14000\r\n6307,Medan Timur,14000\r\n6308,Medan Tuntungan,14000\r\n6309,Bawolato,\r\n6310,Botomuzoi,\r\n6311,Gido,\r\n6312,Hili Serangkai Hilisaranggu),\r\n6313,Hiliduho,\r\n6314,Idano Gawo,\r\n6315,Ma''''u,\r\n6316,Somolo-Molo Samolo),\r\n6317,Ulugawo,\r\n6318,Lahomi Gahori),\r\n6319,Lolofitu Moi,\r\n6320,Mandrehe,\r\n6321,Mandrehe Barat,\r\n6322,Mandrehe Utara,\r\n6323,Moro''''o,\r\n6324,Sirombu,\r\n6325,Ulu Moro''''o Ulu Narwo),\r\n6326,Amandraya,\r\n6327,Gomo,\r\n6328,Hibala,\r\n6329,Lahusa,\r\n6330,Lolomatua,\r\n6331,Lolowau,\r\n6332,Pulau-Pulau Batu,\r\n6333,Teluk Dalam,\r\n6334,Afulu,\r\n6335,Alasa,\r\n6336,Alasa Talumuzoi,\r\n6337,Lahewa,\r\n6338,Lahewa Timur,\r\n6339,Lotu,\r\n6340,Namohalu Esiwa,\r\n6341,Sawo,\r\n6342,Sitolu Ori,\r\n6343,Tugala Oyo,\r\n6344,Tuhemberua,\r\n6345,Barumun,\r\n6346,Barumun Tengah,\r\n6347,Batang Lubu Sutam,\r\n6348,Huristak,\r\n6349,Huta Raja Tinggi,\r\n6350,Lubuk Barumun,\r\n6351,Sosa,\r\n6352,Sosopan,\r\n6353,Ulu Barumun,\r\n6354,Batang Onang,\r\n6355,Dolok,\r\n6356,Dolok Sigompulon,\r\n6357,Halongonan,\r\n6358,Hulu Sihapas,\r\n6359,Padang Bolak,\r\n6360,Padang Bolak Julu,\r\n6361,Portibi,\r\n6362,Simangambat,\r\n6363,Padang Sidempuan Angkola Julu,\r\n6364,Padang Sidempuan Batunadua,\r\n6365,Padang Sidempuan Hutaimbaru,\r\n6366,Padang Sidempuan Selatan,\r\n6367,Padang Sidempuan Tenggara,\r\n6368,Padang Sidempuan Utara Padangsidimpuan),\r\n6369,Kerajaan,\r\n6370,Pagindar,\r\n6371,Pergetteng Getteng Sengkut,\r\n6372,Salak,\r\n6373,Siempat Rube,\r\n6374,Sitellu Tali Urang Jehe,\r\n6375,Sitellu Tali Urang Julu,\r\n6376,Tinada,\r\n6377,Siantar Barat,\r\n6378,Siantar Marihat,\r\n6379,Siantar Martoba,\r\n6380,Siantar Selatan,\r\n6381,Siantar Timur,\r\n6382,Siantar Utara,\r\n6383,Harian,\r\n6384,Nainggolan,\r\n6385,Onan Runggu,\r\n6386,Palipi,\r\n6387,Pangururan,\r\n6388,Ronggur Nihuta,\r\n6389,Sianjur Mula-Mula,\r\n6390,Simanindo,\r\n6391,Sitio-Tio,\r\n6392,Bandar Khalifah,\r\n6393,Bintang Bayu,\r\n6394,Dolok Masihul,\r\n6395,Dolok Merawan,\r\n6396,Kotarih,\r\n6397,Pantai Cermin,\r\n6398,Pegajahan,\r\n6399,Perbaungan,\r\n6400,Sei Bamban,\r\n6401,Sei Rampah,\r\n6402,Serba Jadi,\r\n6403,Silinda,\r\n6404,Sipispis,\r\n6405,Tanjung Beringin,\r\n6406,Tebing Syahbandar,\r\n6407,Tebing Tinggi,\r\n6408,Teluk Mengkudu,\r\n6409,Sibolga Kota,\r\n6410,Sibolga Sambas,\r\n6411,Sibolga Selatan,\r\n6412,Sibolga Utara,\r\n6413,Bandar,\r\n6414,Bandar Huluan,\r\n6415,Bandar Masilam,\r\n6416,Bosar Maligas,\r\n6417,Dolok Batu Nanggar,\r\n6418,Dolok Panribuan,\r\n6419,Dolok Pardamean,\r\n6420,Dolok Silau,\r\n6421,Girsang Sipangan Bolon,\r\n6422,Gunung Malela,\r\n6423,Gunung Maligas,\r\n6424,Haranggaol Horison,\r\n6425,Hatonduhan,\r\n6426,Huta Bayu Raja,\r\n6427,Jawa Maraja Bah Jambi,\r\n6428,Jorlang Hataran,\r\n6429,Panei,\r\n6430,Panombeian Panei,\r\n6431,Pematang Bandar,\r\n6432,Pematang Sidamanik,\r\n6433,Pematang Silima Huta,\r\n6434,Purba,\r\n6435,Raya,\r\n6436,Raya Kahean,\r\n6437,Siantar,\r\n6438,Sidamanik,\r\n6439,Silimakuta,\r\n6440,Silou Kahean,\r\n6441,Tanah Jawa,\r\n6442,Tapian Dolok,\r\n6443,Ujung Padang,\r\n6444,Datuk Bandar,\r\n6445,Datuk Bandar Timur,\r\n6446,Sei Tualang Raso,\r\n6447,Tanjung Balai Selatan,\r\n6448,Tanjung Balai Utara,\r\n6449,Teluk Nibung,\r\n6450,Aek Bilah,\r\n6451,Angkola Barat Padang Sidempuan),\r\n6452,Angkola Timur Padang Sidempuan),\r\n6453,Arse,\r\n6454,Batang Angkola,\r\n6455,Batang Toru,\r\n6456,Marancar,\r\n6457,Saipar Dolok Hole,\r\n6458,Sayur Matinggi,\r\n6459,Siais,\r\n6460,Sipirok,\r\n6461,Andam Dewi,\r\n6462,Badiri,\r\n6463,Barus,\r\n6464,Barus Utara,\r\n6465,Kolang,\r\n6466,Lumut,\r\n6467,Manduamas,\r\n6468,Pandan,\r\n6469,Pasaribu Tobing,\r\n6470,Pinangsori,\r\n6471,Sarudik,\r\n6472,Sibabangun,\r\n6473,Sirandorung,\r\n6474,Sitahuis,\r\n6475,Sorkam,\r\n6476,Sorkam Barat,\r\n6477,Sosor Gadong,\r\n6478,Suka Bangun,\r\n6479,Tapian Nauli,\r\n6480,Tukka,\r\n6481,Adian Koting,\r\n6482,Garoga,\r\n6483,Muara,\r\n6484,Pagaran,\r\n6485,Pahae Jae,\r\n6486,Pahae Julu,\r\n6487,Pangaribuan,\r\n6488,Parmonangan,\r\n6489,Purbatua,\r\n6490,Siatas Barita,\r\n6491,Siborong-Borong,\r\n6492,Simangumban,\r\n6493,Sipahutar,\r\n6494,Sipoholon,\r\n6495,Tarutung,\r\n6496,Bajenis,\r\n6497,Padang Hilir,\r\n6498,Padang Hulu,\r\n6499,Rambutan,\r\n6500,Tebing Tinggi Kota,\r\n6501,Ajibata,\r\n6502,Balige,\r\n6503,Bor-Bor,\r\n6504,Habinsaran,\r\n6505,Laguboti,\r\n6506,Lumban Julu,\r\n6507,Nassau,\r\n6508,Pintu Pohan Meranti,\r\n6509,Porsea,\r\n6510,Siantar Narumonda,\r\n6511,Sigumpar,\r\n6512,Silaen,\r\n6513,Tampahan,\r\n6514,Uluan'',', 0);

-- --------------------------------------------------------

--
-- Table structure for table `stock_status`
--

DROP TABLE IF EXISTS `stock_status`;
CREATE TABLE `stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stock_status`
--

INSERT INTO `stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days'),
(7, 2, 'In Stock'),
(8, 2, 'Pre-Order'),
(5, 2, 'Out Of Stock'),
(6, 2, '2-3 Days');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
CREATE TABLE `store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tax_class`
--

DROP TABLE IF EXISTS `tax_class`;
CREATE TABLE `tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tax_class`
--

INSERT INTO `tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `tax_rate`
--

DROP TABLE IF EXISTS `tax_rate`;
CREATE TABLE `tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tax_rate`
--

INSERT INTO `tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `tax_rate_to_customer_group`
--

DROP TABLE IF EXISTS `tax_rate_to_customer_group`;
CREATE TABLE `tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tax_rate_to_customer_group`
--

INSERT INTO `tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tax_rule`
--

DROP TABLE IF EXISTS `tax_rule`;
CREATE TABLE `tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tax_rule`
--

INSERT INTO `tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `url_alias`
--

DROP TABLE IF EXISTS `url_alias`;
CREATE TABLE `url_alias` (
  `url_alias_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `url_alias`
--

INSERT INTO `url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(852, 'manufacturer_id=13', ''),
(772, 'information_id=4', 'about_us'),
(849, 'manufacturer_id=12', ''),
(844, 'manufacturer_id=11', 'GREENISM'),
(841, 'information_id=6', 'delivery'),
(842, 'information_id=3', 'privacy'),
(843, 'information_id=5', 'terms');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '46e138622a642a50af21076c9f56985693e3e183', 'uS36TKgYN', 'Myhijab', 'Boutique', 'bambang.handoko12@gmail.com', 'catalog/logo.png', '', '::1', 1, '2016-09-07 01:20:30');

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{"access":["analytics\\/google_analytics","captcha\\/basic_captcha","captcha\\/google_captcha","catalog\\/attribute","catalog\\/attribute_group","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/option","catalog\\/product","catalog\\/recurring","catalog\\/review","common\\/column_left","common\\/filemanager","common\\/menu","common\\/profile","common\\/stats","customer\\/custom_field","customer\\/customer","customer\\/customer_group","design\\/banner","design\\/layout","extension\\/analytics","extension\\/captcha","extension\\/feed","extension\\/fraud","extension\\/installer","extension\\/modification","extension\\/module","extension\\/openbay","extension\\/payment","extension\\/shipping","extension\\/total","feed\\/google_base","feed\\/google_sitemap","feed\\/openbaypro","fraud\\/fraudlabspro","fraud\\/ip","fraud\\/maxmind","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","marketing\\/affiliate","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","module\\/account","module\\/affiliate","module\\/amazon_login","module\\/amazon_pay","module\\/banner","module\\/bestseller","module\\/carousel","module\\/category","module\\/ebay_listing","module\\/featured","module\\/filter","module\\/google_hangouts","module\\/html","module\\/information","module\\/latest","module\\/pp_button","module\\/pp_login","module\\/slideshow","module\\/special","module\\/store","openbay\\/amazon","openbay\\/amazon_listing","openbay\\/amazon_product","openbay\\/amazonus","openbay\\/amazonus_listing","openbay\\/amazonus_product","openbay\\/ebay","openbay\\/ebay_profile","openbay\\/ebay_template","openbay\\/etsy","openbay\\/etsy_product","openbay\\/etsy_shipping","openbay\\/etsy_shop","payment\\/amazon_login_pay","payment\\/authorizenet_aim","payment\\/authorizenet_sim","payment\\/bank_transfer","payment\\/bluepay_hosted","payment\\/bluepay_redirect","payment\\/cheque","payment\\/cod","payment\\/firstdata","payment\\/firstdata_remote","payment\\/free_checkout","payment\\/g2apay","payment\\/globalpay","payment\\/globalpay_remote","payment\\/klarna_account","payment\\/klarna_invoice","payment\\/liqpay","payment\\/nochex","payment\\/paymate","payment\\/paypoint","payment\\/payza","payment\\/perpetual_payments","payment\\/pp_express","payment\\/pp_payflow","payment\\/pp_payflow_iframe","payment\\/pp_pro","payment\\/pp_pro_iframe","payment\\/pp_standard","payment\\/realex","payment\\/realex_remote","payment\\/sagepay_direct","payment\\/sagepay_server","payment\\/sagepay_us","payment\\/securetrading_pp","payment\\/securetrading_ws","payment\\/skrill","payment\\/twocheckout","payment\\/web_payment_software","payment\\/worldpay","report\\/affiliate","report\\/affiliate_activity","report\\/affiliate_login","report\\/customer_activity","report\\/customer_credit","report\\/customer_login","report\\/customer_online","report\\/customer_order","report\\/customer_reward","report\\/marketing","report\\/product_purchased","report\\/product_viewed","report\\/sale_coupon","report\\/sale_order","report\\/sale_return","report\\/sale_shipping","report\\/sale_tax","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","setting\\/setting","setting\\/store","shipping\\/auspost","shipping\\/citylink","shipping\\/fedex","shipping\\/flat","shipping\\/free","shipping\\/item","shipping\\/parcelforce_48","shipping\\/pickup","shipping\\/royal_mail","shipping\\/ups","shipping\\/usps","shipping\\/weight","tool\\/backup","tool\\/error_log","tool\\/upload","total\\/coupon","total\\/credit","total\\/handling","total\\/klarna_fee","total\\/low_order_fee","total\\/reward","total\\/shipping","total\\/sub_total","total\\/tax","total\\/total","total\\/voucher","user\\/api","user\\/user","user\\/user_permission","shipping\\/flat","shipping\\/free","shipping\\/jnereg","shipping\\/jnereg","shipping\\/auspost","shipping\\/citylink","shipping\\/free","shipping\\/jnereg","shipping\\/ups","shipping\\/fedex","payment\\/bank_mandiri","payment\\/bank_transfer","payment\\/bank_bca","payment\\/cod","shipping\\/jnereg","shipping\\/jneyes","shipping\\/jneyes","shipping\\/posreg","shipping\\/tikions","shipping\\/tikireg","shipping\\/posexpress","shipping\\/jnereg","shipping\\/jneyes","shipping\\/posexpress","shipping\\/posreg","shipping\\/tikions","shipping\\/tikireg","module\\/latest","module\\/latest"],"modify":["analytics\\/google_analytics","captcha\\/basic_captcha","captcha\\/google_captcha","catalog\\/attribute","catalog\\/attribute_group","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/option","catalog\\/product","catalog\\/recurring","catalog\\/review","common\\/column_left","common\\/filemanager","common\\/menu","common\\/profile","common\\/stats","customer\\/custom_field","customer\\/customer","customer\\/customer_group","design\\/banner","design\\/layout","extension\\/analytics","extension\\/captcha","extension\\/feed","extension\\/fraud","extension\\/installer","extension\\/modification","extension\\/module","extension\\/openbay","extension\\/payment","extension\\/shipping","extension\\/total","feed\\/google_base","feed\\/google_sitemap","feed\\/openbaypro","fraud\\/fraudlabspro","fraud\\/ip","fraud\\/maxmind","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","marketing\\/affiliate","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","module\\/account","module\\/affiliate","module\\/amazon_login","module\\/amazon_pay","module\\/banner","module\\/bestseller","module\\/carousel","module\\/category","module\\/ebay_listing","module\\/featured","module\\/filter","module\\/google_hangouts","module\\/html","module\\/information","module\\/latest","module\\/pp_button","module\\/pp_login","module\\/slideshow","module\\/special","module\\/store","openbay\\/amazon","openbay\\/amazon_listing","openbay\\/amazon_product","openbay\\/amazonus","openbay\\/amazonus_listing","openbay\\/amazonus_product","openbay\\/ebay","openbay\\/ebay_profile","openbay\\/ebay_template","openbay\\/etsy","openbay\\/etsy_product","openbay\\/etsy_shipping","openbay\\/etsy_shop","payment\\/amazon_login_pay","payment\\/authorizenet_aim","payment\\/authorizenet_sim","payment\\/bank_transfer","payment\\/bluepay_hosted","payment\\/bluepay_redirect","payment\\/cheque","payment\\/cod","payment\\/firstdata","payment\\/firstdata_remote","payment\\/free_checkout","payment\\/g2apay","payment\\/globalpay","payment\\/globalpay_remote","payment\\/klarna_account","payment\\/klarna_invoice","payment\\/liqpay","payment\\/nochex","payment\\/paymate","payment\\/paypoint","payment\\/payza","payment\\/perpetual_payments","payment\\/pp_express","payment\\/pp_payflow","payment\\/pp_payflow_iframe","payment\\/pp_pro","payment\\/pp_pro_iframe","payment\\/pp_standard","payment\\/realex","payment\\/realex_remote","payment\\/sagepay_direct","payment\\/sagepay_server","payment\\/sagepay_us","payment\\/securetrading_pp","payment\\/securetrading_ws","payment\\/skrill","payment\\/twocheckout","payment\\/web_payment_software","payment\\/worldpay","report\\/affiliate","report\\/affiliate_activity","report\\/affiliate_login","report\\/customer_activity","report\\/customer_credit","report\\/customer_login","report\\/customer_online","report\\/customer_order","report\\/customer_reward","report\\/marketing","report\\/product_purchased","report\\/product_viewed","report\\/sale_coupon","report\\/sale_order","report\\/sale_return","report\\/sale_shipping","report\\/sale_tax","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","setting\\/setting","setting\\/store","shipping\\/auspost","shipping\\/citylink","shipping\\/fedex","shipping\\/flat","shipping\\/free","shipping\\/item","shipping\\/parcelforce_48","shipping\\/pickup","shipping\\/royal_mail","shipping\\/ups","shipping\\/usps","shipping\\/weight","tool\\/backup","tool\\/error_log","tool\\/upload","total\\/coupon","total\\/credit","total\\/handling","total\\/klarna_fee","total\\/low_order_fee","total\\/reward","total\\/shipping","total\\/sub_total","total\\/tax","total\\/total","total\\/voucher","user\\/api","user\\/user","user\\/user_permission","shipping\\/flat","shipping\\/free","shipping\\/jnereg","shipping\\/jnereg","shipping\\/auspost","shipping\\/citylink","shipping\\/free","shipping\\/jnereg","shipping\\/ups","shipping\\/fedex","payment\\/bank_mandiri","payment\\/bank_transfer","payment\\/bank_bca","payment\\/cod","shipping\\/jnereg","shipping\\/jneyes","shipping\\/jneyes","shipping\\/posreg","shipping\\/tikions","shipping\\/tikireg","shipping\\/posexpress","shipping\\/jnereg","shipping\\/jneyes","shipping\\/posexpress","shipping\\/posreg","shipping\\/tikions","shipping\\/tikireg","module\\/latest","module\\/latest"]}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

DROP TABLE IF EXISTS `voucher`;
CREATE TABLE `voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `voucher_history`
--

DROP TABLE IF EXISTS `voucher_history`;
CREATE TABLE `voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `voucher_theme`
--

DROP TABLE IF EXISTS `voucher_theme`;
CREATE TABLE `voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voucher_theme`
--

INSERT INTO `voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `voucher_theme_description`
--

DROP TABLE IF EXISTS `voucher_theme_description`;
CREATE TABLE `voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voucher_theme_description`
--

INSERT INTO `voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General'),
(6, 2, 'Christmas'),
(7, 2, 'Birthday'),
(8, 2, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `weight_class`
--

DROP TABLE IF EXISTS `weight_class`;
CREATE TABLE `weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `weight_class`
--

INSERT INTO `weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Table structure for table `weight_class_description`
--

DROP TABLE IF EXISTS `weight_class_description`;
CREATE TABLE `weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `weight_class_description`
--

INSERT INTO `weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz'),
(1, 2, 'Kilogram', 'kg'),
(2, 2, 'Gram', 'g'),
(5, 2, 'Pound ', 'lb'),
(6, 2, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Table structure for table `zone`
--

DROP TABLE IF EXISTS `zone`;
CREATE TABLE `zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zone`
--

INSERT INTO `zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Kab. Badung', 'BDG', 1),
(2, 1, 'Kab. Bangli', 'BGL', 1),
(3, 1, 'Kab. Buleleng', 'BLL', 1),
(4, 1, 'Kota Denpasar', 'DPS', 1),
(5, 1, 'Kab. Gianyar', 'GIA', 1),
(6, 1, 'Kab. Jembrana', 'JMB', 1),
(7, 1, 'Kab. Karangasem', 'KRA', 1),
(8, 1, 'Kab. Klungkung', 'KLK', 1),
(9, 1, 'Kab. Tabanan', 'TBN', 1),
(10, 2, 'Kab. Bangka', 'BKA', 1),
(11, 2, 'Kab. Bangka Barat', 'BBR', 1),
(12, 2, 'Kab. Bangka Selatan', 'BBS', 1),
(13, 2, 'Kab. Bangka Tengah', 'BBT', 1),
(14, 2, 'Kab. Belitung', 'BLT', 1),
(15, 2, 'Kab. Belitung Timur', 'BTM', 1),
(16, 2, 'Kota Pangkal Pinang', 'PPN', 1),
(17, 3, 'Kota Cilegon', 'CLG', 1),
(18, 3, 'Kab. Lebak', 'LBK', 1),
(19, 3, 'Kab. Pandeglang', 'PDG', 1),
(20, 3, 'Kab. Serang', 'SRG', 1),
(21, 3, 'Kota Serang', 'KSR', 1),
(22, 3, 'Kab. Tangerang', 'KTG', 1),
(23, 3, 'Kota Tangerang', 'KTN', 1),
(24, 3, 'Kota Tangerang Selatan', 'KTS', 1),
(25, 4, 'Kota Bengkulu', 'BKL', 1),
(26, 4, 'Kab. Bengkulu Selatan', 'BKS', 1),
(27, 4, 'Kab. Bengkulu Tengah', 'BKT', 1),
(28, 4, 'Kab. Bengkulu Utara', 'BKU', 1),
(29, 4, 'Kab. Kaur', 'KAU', 1),
(30, 4, 'Kab. Kepahiang', 'KPH', 1),
(31, 4, 'Kab. Lebong', 'LEB', 1),
(32, 4, 'Kab. Muko Muko', 'MUK', 1),
(33, 4, 'Kab. Rejang Lebong', 'REJ', 1),
(34, 4, 'Kab. Seluma', 'SLU', 1),
(35, 5, 'Kab. Bantul', 'BNT', 1),
(36, 5, 'Kab. Gunung Kidul', 'GKI', 1),
(37, 5, 'Kab. Kulon Progo', 'KLP', 1),
(38, 5, 'Kab. Sleman', 'SLE', 1),
(39, 5, 'Kota Yogyakarta', 'YGK', 1),
(40, 6, 'Kota Jakarta Barat', 'JKB', 1),
(41, 6, 'Kota Jakarta Pusat', 'JKP', 1),
(42, 6, 'Kota Jakarta Selatan', 'JKS', 1),
(43, 6, 'Kota Jakarta Timur', 'JKT', 1),
(44, 6, 'Kota Jakarta Utara', 'JKU', 1),
(45, 6, 'Kab. Kepulauan Seribu', 'KSU', 1),
(46, 7, 'Kab. Boalemo', 'BOA', 1),
(47, 7, 'Kab. Bone Bolango', 'BOL', 1),
(48, 7, 'Kab. Gorontalo', 'GRT', 1),
(49, 7, 'Kota Gorontalo', 'GRO', 1),
(50, 7, 'Kab. Gorontalo Utara', 'GRU', 1),
(51, 7, 'Kab. Pohuwato', 'PHU', 1),
(52, 8, 'Kab. Batang Hari', 'BTH', 1),
(53, 8, 'Kab. Bungo', 'BUN', 1),
(54, 8, 'Kota Jambi', 'JMB', 1),
(55, 8, 'Kab. Kerinci', 'KRI', 1),
(56, 8, 'Kab. Merangin', 'MRA', 1),
(57, 8, 'Kab. Muaro Jambi', 'MUA', 1),
(58, 8, 'Kab. Sarolangun', 'SAR', 1),
(59, 8, 'Kota Sungaipenuh', 'Sun', 1),
(60, 8, 'Kab. Tanjung Jabung Barat', 'TJB', 1),
(61, 8, 'Kab. Tanjung Jabung Timur', 'TJT', 1),
(62, 8, 'Kab. Tebo', 'TEB', 1),
(63, 9, 'Kab. Bandung', 'BND', 1),
(64, 9, 'Kota Bandung', 'BNU', 1),
(65, 9, 'Kab. Bandung Barat', 'BBR', 1),
(66, 9, 'Kota Banjar', 'BNJ', 1),
(67, 9, 'Kab. Bekasi', 'BKS', 1),
(68, 9, 'Kota Bekasi', 'BSI', 1),
(69, 9, 'Kab. Bogor', 'BGR', 1),
(70, 9, 'Kota Bogor', 'BOG', 1),
(71, 9, 'Kab. Ciamis', 'CIA', 1),
(72, 9, 'Kab. Cianjur', 'CNJ', 1),
(73, 9, 'Kota Cimahi', 'CMH', 1),
(74, 9, 'Kab. Cirebon', 'CRI', 1),
(75, 9, 'Kota Cirebon', 'CIR', 1),
(76, 9, 'Kota Depok', 'DPK', 1),
(77, 9, 'Kab. Garut', 'GRT', 1),
(78, 9, 'Kab. Indramayu', 'IDM', 1),
(79, 9, 'Kab. Karawang', 'KRW', 1),
(80, 9, 'Kab. Kuningan', 'KNG', 1),
(81, 9, 'Kab. Majalengka', 'MJK', 1),
(82, 9, 'Kab. Pangandaran', 'PNG', 1),
(83, 9, 'Kab. Purwakarta', 'PWK', 1),
(84, 9, 'Kab. Subang', 'SUB', 1),
(85, 9, 'Kab. Sukabumi', 'SKB', 1),
(86, 9, 'Kota Sukabumi', 'SKU', 1),
(87, 9, 'Kab. Sumedang', 'SMD', 1),
(88, 9, 'Kab. Tasikmalaya', 'TSM', 1),
(89, 9, 'Kota Tasikmalaya', 'TSY', 1),
(90, 10, 'Kab. Banjarnegara', 'BJN', 1),
(91, 10, 'Kab. Banyumas', 'BYU', 1),
(92, 10, 'Kab. Batang', 'BTG', 1),
(93, 10, 'Kab. Blora', 'BLR', 1),
(94, 10, 'Kab. Boyolali', 'BYO', 1),
(95, 10, 'Kab. Brebes', 'BRE', 1),
(96, 10, 'Kab. Cilacap', 'CLC', 1),
(97, 10, 'Kab. Demak', 'DMK', 1),
(98, 10, 'Kab. Grobogan', 'GRB', 1),
(99, 10, 'Kab. Jepara', 'JPR', 1),
(100, 10, 'Kab. Karanganyar', 'KRA', 1),
(101, 10, 'Kab. Kebumen', 'KBU', 1),
(102, 10, 'Kab. Kendal', 'KEN', 1),
(103, 10, 'Kab. Klaten', 'KLT', 1),
(104, 10, 'Kab. Kudus', 'KDS', 1),
(105, 10, 'Kab. Magelang', 'MGL', 1),
(106, 10, 'Kota Magelang', 'MGE', 1),
(107, 10, 'Kab. Pati', 'PTI', 1),
(108, 10, 'Kab. Pekalongan', 'PKL', 1),
(109, 10, 'Kota Pekalongan', 'PLO', 1),
(110, 10, 'Kab. Pemalang', 'PML', 1),
(111, 10, 'Kab. Purbalingga', 'PRB', 1),
(112, 10, 'Kab. Purworejo', 'PWR', 1),
(113, 10, 'Kab. Rembang', 'REM', 1),
(114, 10, 'Kota Salatiga', 'SLT', 1),
(115, 10, 'Kab. Semarang', 'SMG', 1),
(116, 10, 'Kota Semarang', 'SMR', 1),
(117, 10, 'Kab. Sragen', 'SRG', 1),
(118, 10, 'Kab. Sukoharjo', 'SKH', 1),
(119, 10, 'Kota Surakarta (Solo)', 'SRK', 1),
(120, 10, 'Kab. Tegal', 'TGL', 1),
(121, 10, 'Kota Tegal', 'TEG', 1),
(122, 10, 'Kab. Temanggung', 'TMG', 1),
(123, 10, 'Kab. Wonogiri', 'WNG', 1),
(124, 10, 'Kab. Wonosobo', 'WNS', 1),
(125, 11, 'Kab.Bangkalan', 'BKL', 1),
(126, 11, 'Kab. Banyuwangi', 'BNY', 1),
(127, 11, 'Kota Batu', 'BAT', 1),
(128, 11, 'Kab. Blitar', 'BLI', 1),
(129, 11, 'Kota Blitar', 'BLR', 1),
(130, 11, 'Kab. Bojonegoro', 'BJR', 1),
(131, 11, 'Kab. Bondowoso', 'BND', 1),
(132, 11, 'Kab. Gresik', 'GRK', 1),
(133, 11, 'Kab. Jember', 'JEM', 1),
(134, 11, 'Kab. Jombang', 'JMB', 1),
(135, 11, 'Kab. Kediri', 'KDR', 1),
(136, 11, 'Kota Kediri', 'KDI', 1),
(137, 11, 'Kab. Lamongan', 'LMG', 1),
(138, 11, 'Kab. Lumajang', 'LMJ', 1),
(139, 11, 'Kab. Madiun', 'MDN', 1),
(140, 11, 'Kota Madiun', 'MDU', 1),
(141, 11, 'Kab. Magetan', 'MGT', 1),
(142, 11, 'Kab. Malang', 'MLG', 1),
(143, 11, 'Kota Malang', 'MLG', 1),
(144, 11, 'Kab. Mojokerto', 'MJK', 1),
(145, 11, 'Kota Mojokerto', 'MJO', 1),
(146, 11, 'Kab. Nganjuk', 'NGA', 1),
(147, 11, 'Kab. Ngawi', 'NGW', 1),
(148, 11, 'Kab. Pacitan', 'PCT', 1),
(149, 11, 'Kab. Pamekasan', 'PMK', 1),
(150, 11, 'Kab. Pasuruan', 'PSR', 1),
(151, 11, 'Kota Pasuruan', 'PSU', 1),
(152, 11, 'Kab. Ponorogo', 'PNO', 1),
(153, 11, 'Kab. Probolinggo', 'PRB', 1),
(154, 11, 'Kota Probolinggo', 'PRO', 1),
(155, 11, 'Kab. Sampang', 'SMP', 1),
(156, 11, 'Kab. Sidoarjo', 'SDO', 1),
(157, 11, 'Kab. Situbondo', 'STU', 1),
(158, 11, 'Kab. Sumenep', 'SMP', 1),
(159, 11, 'Kota Surabaya', 'SBY', 1),
(160, 11, 'Kab. Trenggalek', 'TRK', 1),
(161, 11, 'Kab. Tuban', 'TUB', 1),
(162, 11, 'Kab. Tulungagung', 'TLG', 1),
(163, 12, 'Kab. Bengkayang', 'BKY', 1),
(164, 12, 'Kab. Kapuas Hulu', 'KPH', 1),
(165, 12, 'Kab. Kayong Utara', 'KYU', 1),
(166, 12, 'Kab. Ketapang', 'KTP', 1),
(167, 12, 'Kab. Kubu Raya', 'KRY', 1),
(168, 12, 'Kab. Landak', 'LDK', 1),
(169, 12, 'Kab. Melawi', 'MLW', 1),
(170, 12, 'Kab. Pontianak', 'PTK', 1),
(171, 12, 'Kota Pontianak', 'PON', 1),
(172, 12, 'Kab. Sambas', 'SMB', 1),
(173, 12, 'Kab. Sanggau', 'SNG', 1),
(174, 12, 'Kab. Sekadau', 'SKD', 1),
(175, 12, 'Kota Singkawang', 'SKG', 1),
(176, 12, 'Kab. Sintang', 'SNT', 1),
(177, 13, 'Kab. Balangan', 'BLG', 1),
(178, 13, 'Kab. Banjar', 'BNJ', 1),
(179, 13, 'Kota Banjarbaru', 'BNB', 1),
(180, 13, 'Kota Banjarmasin', 'BNJ', 1),
(181, 13, 'Kab. Barito Kuala', 'BRT', 1),
(182, 13, 'Kab. Hulu Sungai Selatan', 'HSS', 1),
(183, 13, 'Kab. Hulu Sungai Tengah', 'HST', 1),
(184, 13, 'Kab. Hulu Sungai Utara', 'HSU', 1),
(185, 13, 'Kab. Kotabaru', 'KTB', 1),
(186, 13, 'Kab. Tabalong', 'TBL', 1),
(187, 13, 'Kab. Tanah Bumbu', 'TBU', 1),
(188, 13, 'Kab. Tanah Laut', 'TNL', 1),
(189, 13, 'Kab. Tapin', 'TAP', 1),
(190, 14, 'Kab. Barito Selatan', 'BOS', 1),
(191, 14, 'Kab. Barito Timur', 'BOT', 1),
(192, 14, 'Kab. Barito Utara', 'BOU', 1),
(193, 14, 'Kab. Gunung Mas', 'GMS', 1),
(194, 14, 'Kab. Kapuas', 'KPS', 1),
(195, 14, 'Kab. Katingan', 'KTG', 1),
(196, 14, 'Kab. Kotawaringin Barat', 'KWB', 1),
(197, 14, 'Kab. Kotawaringin Timur', 'KWT', 1),
(198, 14, 'Kab. Lamandau', 'LMD', 1),
(199, 14, 'Kab. Murung Raya', 'MRY', 1),
(200, 14, 'Kota Palangka Raya', 'PKR', 1),
(201, 14, 'Kab. Pulang Pisau', 'PPU', 1),
(202, 14, 'Kab. Seruyan', 'SRY', 1),
(203, 14, 'Kab. Sukamara', 'SKM', 1),
(204, 15, 'Kota Balikpapan', 'BLP', 1),
(205, 15, 'Kab. Berau', 'BER', 1),
(206, 15, 'Kota Bontang', 'BON', 1),
(207, 15, 'Kab. Kutai Barat', 'KTT', 1),
(208, 15, 'Kab. Kutai Kartanegara', 'KKG', 1),
(209, 15, 'Kab. Kutai Timur', 'KTM', 1),
(210, 15, 'Kab. Paser', 'PSE', 1),
(211, 15, 'Kab. Penajam Paser Utara', 'PPU', 1),
(212, 15, 'Kota Samarinda', 'SMD', 1),
(213, 16, 'Kab. Bulungan (Bulongan)', 'BUL', 1),
(214, 16, 'Kab. Malinau', 'MLN', 1),
(215, 16, 'Kab. Nunukan', 'NNK', 1),
(216, 16, 'Kab. Tana Tidung', 'TTG', 1),
(217, 16, 'Kota Tarakan', 'TRK', 1),
(218, 17, 'Kota Batam', 'BTM', 1),
(219, 17, 'Kab. Bintan', 'BIN', 1),
(220, 17, 'Kab. Karimun', 'KRM', 1),
(221, 17, 'Kab. Kepulauan Anambas', 'KAN', 1),
(222, 17, 'Kab. Lingga', 'LIG', 1),
(223, 17, 'Kab. Natuna', 'NTN', 1),
(224, 17, 'Kota Tanjung Pinang', 'TPN', 1),
(225, 18, 'Kota Bandar Lampung', 'BLP', 1),
(226, 18, 'Kab. Lampung Barat', 'LBT', 1),
(227, 18, 'Kab. Lampung Selatan', 'LSL', 1),
(228, 18, 'Kab. Lampung Tengah', 'LTG', 1),
(229, 18, 'Kab. Lampung Timur', 'LTT', 1),
(230, 18, 'Kab. Lampung Utara', 'LTU', 1),
(231, 18, 'Kab. Mesuji', 'MSU', 1),
(232, 18, 'Kota Metro', 'MTR', 1),
(233, 18, 'Kab. Pesawaran', 'PSW', 1),
(234, 18, 'Kab. Pesisir Barat', 'PSB', 1),
(235, 18, 'Kab. Pringsewu', 'PRS', 1),
(236, 18, 'Kab. Tanggamus', 'TGS', 1),
(237, 18, 'Kab. Tulang Bawang', 'TBW', 1),
(238, 18, 'Kab. Tulang Bawang Barat', 'TBB', 1),
(239, 18, 'Kab. Way Kanan', 'WKN', 1),
(240, 19, 'Kota Ambon', 'AMB', 1),
(241, 19, 'Kab. Buru', 'BUR', 1),
(242, 19, 'Kab. Buru Selatan', 'BUS', 1),
(243, 19, 'Kab. Kepulauan Aru', 'KAR', 1),
(244, 19, 'Kab. Maluku Barat Daya', 'MBD', 1),
(245, 19, 'Kab. Maluku Tengah', 'MTT', 1),
(246, 19, 'Kab. Maluku Tenggara', 'MTN', 1),
(247, 19, 'Kab. Maluku Tenggara Barat', 'MTG', 1),
(248, 19, 'Kab. Seram Bagian Barat', 'SBB', 1),
(249, 19, 'Kab. Seram Bagian Timur', 'SBT', 1),
(250, 19, 'Kota Tual', 'TUA', 1),
(251, 20, 'Kab. Halmahera Barat', 'HHB', 1),
(252, 20, 'Kab. Halmahera Selatan', 'HHS', 1),
(253, 20, 'Kab. Halmahera Tengah', 'HLT', 1),
(254, 20, 'Kab. Halmahera Timur', 'HTM', 1),
(255, 20, 'Kab. Halmahera Utara', 'HTU', 1),
(256, 20, 'Kab. Kepulauan Sula', 'KSU', 1),
(257, 20, 'Kab. Pulau Morotai', 'PMT', 1),
(258, 20, 'Kota Ternate', 'TRT', 1),
(259, 20, 'Kota Tidore Kepulauan', 'TDK', 1),
(260, 21, 'Kab. Aceh Barat', 'ACB', 1),
(261, 21, 'Kab. Aceh Barat Daya', 'ABD', 1),
(262, 21, 'Kab. Aceh Besar', 'ACB', 1),
(263, 21, 'Kab. Aceh Jaya', 'ACJ', 1),
(264, 21, 'Kab. Aceh Selatan', 'ACS', 1),
(265, 21, 'Kab. Aceh Singkil', 'ASI', 1),
(266, 21, 'Kab. Aceh Tamiang', 'ATA', 1),
(267, 21, 'Kab. Aceh Tengah', 'ATT', 1),
(268, 21, 'Kab. Aceh Tenggara', 'ATE', 1),
(269, 21, 'Kab. Aceh Timur', 'ATU', 1),
(270, 21, 'Kab. Aceh Utara', 'AUT', 1),
(271, 21, 'Kota Banda Aceh', 'BAC', 1),
(272, 21, 'Kab. Bener Meriah', 'BME', 1),
(273, 21, 'Kab. Bireuen', 'BIR', 1),
(274, 21, 'Kab. Gayo Lues', 'GAY', 1),
(275, 21, 'Kota Langsa', 'LAN', 1),
(276, 21, 'Kota Lhokseumawe', 'LHO', 1),
(277, 21, 'Kab. Nagan Raya', 'NAG', 1),
(278, 21, 'Kab. Pidie', 'PID', 1),
(279, 21, 'Kab. Pidie Jaya', 'PIE', 1),
(280, 21, 'Kota Sabang', 'SAB', 1),
(281, 21, 'Kab. Simeulue', 'SIM', 1),
(282, 21, 'Kota Subulussalam', 'SUB', 1),
(283, 22, 'Kab. Bima', 'BIM', 1),
(284, 22, 'Kota Bima', 'IMA', 1),
(285, 22, 'Kab. Dompu', 'DOM', 1),
(286, 22, 'Kab. Lombok Barat', 'LBB', 1),
(287, 22, 'Kab. Lombok Tengah', 'LBT', 1),
(288, 22, 'Kab. Lombok Timur', 'LBM', 1),
(289, 22, 'Kab. Lombok Utara', 'LBU', 1),
(290, 22, 'Kota Mataram', 'MTM', 1),
(291, 22, 'Kab. Sumbawa', 'SUM', 1),
(292, 22, 'Kab. Sumbawa Barat', 'SBR', 1),
(293, 23, 'Kab. Alor', 'ALR', 1),
(294, 23, 'Kab. Belu', 'BEL', 1),
(295, 23, 'Kab. Ende', 'END', 1),
(296, 23, 'Kab. Flores Timur', 'FLO', 1),
(297, 23, 'Kab. Kupang', 'KUP', 1),
(298, 23, 'Kota Kupang', 'UPA', 1),
(299, 23, 'Kab. Lembata', 'LEM', 1),
(300, 23, 'Kab. Manggarai', 'MNG', 1),
(301, 23, 'Kab. Manggarai Barat', 'MBT', 1),
(302, 23, 'Kab. Manggarai Timur', 'MTT', 1),
(303, 23, 'Kab. Nagekeo', 'NAG', 1),
(304, 23, 'Kab. Ngada', 'NGA', 1),
(305, 23, 'Kab. Rote Ndao', 'ROT', 1),
(306, 23, 'Kab. Sabu Raijua', 'SAR', 1),
(307, 23, 'Kab. Sikka', 'SIK', 1),
(308, 23, 'Kab. Sumba Barat', 'SBR', 1),
(309, 23, 'Kab. Sumba Barat Daya', 'SBD', 1),
(310, 23, 'Kab. Sumba Tengah', 'SBE', 1),
(311, 23, 'Kab. Sumba Timur', 'SBI', 1),
(312, 23, 'Kab. Timor Tengah Selatan', 'TTS', 1),
(313, 23, 'Kab. Timor Tengah Utara', 'TSU', 1),
(314, 24, 'Kab. Asmat', 'ASM', 1),
(315, 24, 'Kab. Biak Numfor', 'BIA', 1),
(316, 24, 'Kab. Boven Digoel', 'BIG', 1),
(317, 24, 'Kab. Deiyai (Deliyai)', 'DEI', 1),
(318, 24, 'Kab. Dogiyai', 'DOG', 1),
(319, 24, 'Kab. Intan Jaya', 'INT', 1),
(320, 24, 'Kab. Jayapura', 'JYP', 1),
(321, 24, 'Kota Jayapura', 'JYU', 1),
(322, 24, 'Kab. Jayawijaya', 'JYJ', 1),
(323, 24, 'Kab. Keerom', 'KEE', 1),
(324, 24, 'Kab. Kepulauan Yapen (Yapen Waropen)', 'YPN', 1),
(325, 24, 'Kab. Lanny Jaya', 'LAN', 1),
(326, 24, 'Kab. Mamberamo Raya', 'MAM', 1),
(327, 24, 'Kab. Mamberamo Tengah', 'MBE', 1),
(328, 24, 'Kab. Mappi', 'MAP', 1),
(329, 24, 'Kab. Merauke', 'MRK', 1),
(330, 24, 'Kab. Mimika', 'MMK', 1),
(331, 24, 'Kab. Nabire', 'NAB', 1),
(332, 24, 'Kab. Nduga', 'NDU', 1),
(333, 24, 'Kab. Paniai', 'PAN', 1),
(334, 24, 'Kab. Pegunungan Bintang', 'BTG', 1),
(335, 24, 'Kab. Puncak', 'PCK', 1),
(336, 24, 'Kab. Puncak Jaya', 'PCJ', 1),
(337, 24, 'Kab. Sarmi', 'SAR', 1),
(338, 24, 'Kab. Supiori', 'SUP', 1),
(339, 24, 'Kab. Tolikara', 'TOL', 1),
(340, 24, 'Kab. Waropen', 'WAR', 1),
(341, 24, 'Kab. Yahukimo', 'YAH', 1),
(342, 24, 'Kab. Yalimo', 'YAL', 1),
(343, 25, 'Kab. Fakfak', 'FAK', 1),
(344, 25, 'Kab. Kaimana', 'KAI', 1),
(345, 25, 'Kab. Manokwari', 'MAN', 1),
(346, 25, 'Kab. Manokwari Selatan', 'NOK', 1),
(347, 25, 'Kab. Maybrat', 'May', 1),
(348, 25, 'Kab. Pegunungan Arfak', 'PEG', 1),
(349, 25, 'Kab. Raja Ampat', 'RAJ', 1),
(350, 25, 'Kab. Sorong', 'SOR', 1),
(351, 25, 'Kota Sorong', 'ORO', 1),
(352, 25, 'Kab. Sorong Selatan', 'RON', 1),
(353, 25, 'Kab. Tambrauw', 'TAM', 1),
(354, 25, 'Kab. Teluk Bintuni', 'TEL', 1),
(355, 25, 'Kab. Teluk Wondama', 'WON', 1),
(356, 26, 'Kab. Bengkalis', 'BEN', 1),
(357, 26, 'Kota Dumai', 'DUM', 1),
(358, 26, 'Kab. Indragiri Hilir', 'IND', 1),
(359, 26, 'Kab. Indragiri Hulu', 'HUL', 1),
(360, 26, 'Kab. Kampar', 'KAM', 1),
(361, 26, 'Kab. Kepulauan Meranti', 'PUL', 1),
(362, 26, 'Kab. Kuantan Singingi', 'KUA', 1),
(363, 26, 'Kota Pekanbaru', 'PEK', 1),
(364, 26, 'Kab. Pelalawan', 'PEL', 1),
(365, 26, 'Kab. Rokan Hilir', 'ROK', 1),
(366, 26, 'Kab. Rokan Hulu', 'ULU', 1),
(367, 26, 'Kab. Siak', 'SIA', 1),
(368, 27, 'Kab. Majene', 'MAJ', 1),
(369, 27, 'Kab. Mamasa', 'MAM', 1),
(370, 27, 'Kab. Mamuju', 'UJU', 1),
(371, 27, 'Kab. Mamuju Utara', 'UTA', 1),
(372, 27, 'Kab. Polewali Mandar', 'POL', 1),
(373, 28, 'Kab. Bantaeng', 'BAN', 1),
(374, 28, 'Kab. Barru', 'BAR', 1),
(375, 28, 'Kab. Bone', 'ONE', 1),
(376, 28, 'Kab. Bulukumba', 'KUM', 1),
(377, 28, 'Kab. Enrekang', 'ENR', 1),
(378, 28, 'Kab. Gowa', 'GOW', 1),
(379, 28, 'Kab. Jeneponto', 'JEN', 1),
(380, 28, 'Kab. Luwu', 'LUW', 1),
(381, 28, 'Kab. Luwu Timur', 'UWU', 1),
(382, 28, 'Kab. Luwu Utara', 'WUU', 1),
(383, 28, 'Kota Makassar', 'MAK', 1),
(384, 28, 'Kab. Maros', 'Mar', 1),
(385, 28, 'Kota Palopo', 'PAL', 1),
(386, 28, 'Kab. Pangkajene Kepulauan', 'PKE', 1),
(387, 28, 'Kota Parepare', 'PAR', 1),
(388, 28, 'Kab. Pinrang', 'PIN', 1),
(389, 28, 'Kab. Selayar (Kepulauan Selayar)', 'SEL', 1),
(390, 28, 'Kab. Sidenreng Rappang/Rapang', 'SID', 1),
(391, 28, 'Kab. Sinjai', 'SIN', 1),
(392, 28, 'Kab. Soppeng', 'SOP', 1),
(393, 28, 'Kab. Takalar', 'TAK', 1),
(394, 28, 'Kab. Tana Toraja', 'TAN', 1),
(395, 28, 'Kab. Toraja Utara', 'TOR', 1),
(396, 28, 'Kab. Wajo', 'WAJ', 1),
(397, 29, 'Kab. Banggai', 'BAN', 1),
(398, 29, 'Kab. Banggai Kepulauan', 'ANG', 1),
(399, 29, 'Kab. Buol', 'BUO', 1),
(400, 29, 'Kab. Donggala', 'DON', 1),
(401, 29, 'Kab. Morowali', 'ORO', 1),
(402, 29, 'Kota Palu', 'ALU', 1),
(403, 29, 'Kab. Parigi Moutong', 'ARI', 1),
(404, 29, 'Kab. Poso', 'OSO', 1),
(405, 29, 'Kab. Sigi', 'IGI', 1),
(406, 29, 'Kab. Tojo Una-Una', 'OJO', 1),
(407, 29, 'Kab. Toli-Toli', 'OLI', 1),
(408, 30, 'Kota Bau-Bau', 'BAU', 1),
(409, 30, 'Kab. Bombana', 'BOM', 1),
(410, 30, 'Kab. Buton', 'BUT', 1),
(411, 30, 'Kab. Buton Utara', 'UTO', 1),
(412, 30, 'Kota Kendari', 'KEN', 1),
(413, 30, 'Kab. Kolaka', 'KOL', 1),
(414, 30, 'Kab. Kolaka Utara', 'AKA', 1),
(415, 30, 'Kab. Konawe', 'ONA', 1),
(416, 30, 'Kab. Konawe Selatan', 'AWE', 1),
(417, 30, 'Kab. Konawe Utara', 'AWW', 1),
(418, 30, 'Kab. Muna', 'UNA', 1),
(419, 30, 'Kab. Wakatobi', 'AKA', 1),
(420, 31, 'Kota Bitung', 'BIT', 1),
(421, 31, 'Kab. Bolaang Mongondow (Bolmong)', 'OLA', 1),
(422, 31, 'Kab. Bolaang Mongondow Selatan', 'LAA', 1),
(423, 31, 'Kab. Bolaang Mongondow Timur', 'NGO', 1),
(424, 31, 'Kab. Bolaang Mongondow Utara', 'DOW', 1),
(425, 31, 'Kab. Kepulauan Sangihe', 'SAN', 1),
(426, 31, 'Kab. Kepulauan Siau Tagulandang Biaro (Sitaro)', 'BIA', 1),
(427, 31, 'Kab. Kepulauan Talaud', 'TAL', 1),
(428, 31, 'Kota Kotamobagu', 'OTA', 1),
(429, 31, 'Kota Manado', 'ANA', 1),
(430, 31, 'Kab. Minahasa', 'INA', 1),
(431, 31, 'Kab. Minahasa Selatan', 'HAS', 1),
(432, 31, 'Kab. Minahasa Tenggara', 'TEN', 1),
(433, 31, 'Kab. Minahasa Utara', 'UTA', 1),
(434, 31, 'Kota Tomohon', 'OHO', 1),
(435, 32, 'Kab. Agam', 'AGA', 1),
(436, 32, 'Kota Bukittinggi', 'UKI', 1),
(437, 32, 'Kab. Dharmasraya', 'DHA', 1),
(438, 32, 'Kab. Kepulauan Mentawai', 'EPU', 1),
(439, 32, 'Kab. Lima Puluh Koto/Kota', 'IMA', 1),
(440, 32, 'Kota Padang', 'PAD', 1),
(441, 32, 'Kota Padang Panjang', 'DAN', 1),
(442, 32, 'Kab. Padang Pariaman', 'ANG', 1),
(443, 32, 'Kota Pariaman', 'PAR', 1),
(444, 32, 'Kab. Pasaman', 'PAS', 1),
(445, 32, 'Kab. Pasaman Barat', 'BAR', 1),
(446, 32, 'Kota Payakumbuh', 'PAY', 1),
(447, 32, 'Kab. Pesisir Selatan', 'PES', 1),
(448, 32, 'Kota Sawah Lunto', 'WAH', 1),
(449, 32, 'Kab. Sijunjung (Sawah Lunto Sijunjung)', 'SIJ', 1),
(450, 32, 'Kab. Solok', 'SOL', 1),
(451, 32, 'Kota Solok', 'LOK', 1),
(452, 32, 'Kab. Solok Selatan', 'SSL', 1),
(453, 32, 'Kab. Tanah Datar', 'TDR', 1),
(454, 33, 'Kab. Banyuasin', 'ANY', 1),
(455, 33, 'Kab. Empat Lawang', 'EMP', 1),
(456, 33, 'Kab. Lahat', 'AHA', 1),
(457, 33, 'Kota Lubuk Linggau', 'UBU', 1),
(458, 33, 'Kab. Muara Enim', 'UAR', 1),
(459, 33, 'Kab. Musi Banyuasin', 'USI', 1),
(460, 33, 'Kab. Musi Rawas', 'RAW', 1),
(461, 33, 'Kab. Ogan Ilir', 'OGA', 1),
(462, 33, 'Kab. Ogan Komering Ilir', 'KOM', 1),
(463, 33, 'Kab. Ogan Komering Ulu', 'ERI', 1),
(464, 33, 'Kab. Ogan Komering Ulu Selatan', 'SEL', 1),
(465, 33, 'Kab. Ogan Komering Ulu Timur', 'TIM', 1),
(466, 33, 'Kota Pagar Alam', 'LAM', 1),
(467, 33, 'Kota Palembang', 'LEM', 1),
(468, 33, 'Kota Prabumulih', 'ABU', 1),
(469, 34, 'Kab. Asahan', 'SAH', 1),
(470, 34, 'Kab. Batu Bara', 'BAT', 1),
(471, 34, 'Kota Binjai', 'BIN', 1),
(472, 34, 'Kab. Dairi', 'DAI', 1),
(473, 34, 'Kab. Deli Serdang', 'DEL', 1),
(474, 34, 'Kota Gunungsitoli', 'GUN', 1),
(475, 34, 'Kab. Humbang Hasundutan', 'HUM', 1),
(476, 34, 'Kab. Karo', 'KAR', 1),
(477, 34, 'Kab. Labuhan Batu', 'LAB', 1),
(478, 34, 'Kab. Labuhan Batu Selatan', 'TUS', 1),
(479, 34, 'Kab. Labuhan Batu Utara', 'TUU', 1),
(480, 34, 'Kab. Langkat', 'LAN', 1),
(481, 34, 'Kab. Mandailing Natal', 'MAN', 1),
(482, 34, 'Kota Medan', 'MED', 1),
(483, 34, 'Kab. Nias', 'NIA', 1),
(484, 34, 'Kab. Nias Barat', 'IAS', 1),
(485, 34, 'Kab. Nias Selatan', 'ISA', 1),
(486, 34, 'Kab. Nias Utara', 'ASI', 1),
(487, 34, 'Kab. Padang Lawas', 'ADA', 1),
(488, 34, 'Kab. Padang Lawas Utara', 'LAU', 1),
(489, 34, 'Kota Padang Sidempuan', 'SDA', 1),
(490, 34, 'Kab. Pakpak Bharat', 'PAK', 1),
(491, 34, 'Kota Pematang Siantar', 'PEM', 1),
(492, 34, 'Kab. Samosir', 'SAM', 1),
(493, 34, 'Kab. Serdang Bedagai', 'SER', 1),
(494, 34, 'Kota Sibolga', 'SIB', 1),
(495, 34, 'Kab. Simalungun', 'SIM', 1),
(496, 34, 'Kota Tanjung Balai', 'TAN', 1),
(497, 34, 'Kab. Tapanuli Selatan', 'TAP', 1),
(498, 34, 'Kab. Tapanuli Tengah', 'ULT', 1),
(499, 34, 'Kab. Tapanuli Utara', 'UUU', 1),
(500, 34, 'Kota Tebing Tinggi', 'TEB', 1),
(501, 34, 'Kab. Toba Samosir', 'TOB', 1);

-- --------------------------------------------------------

--
-- Table structure for table `zone_to_geo_zone`
--

DROP TABLE IF EXISTS `zone_to_geo_zone`;
CREATE TABLE `zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zone_to_geo_zone`
--

INSERT INTO `zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(66, 1, 0, 5, '2014-01-04 21:41:03', '0000-00-00 00:00:00'),
(67, 2, 0, 6, '2014-01-04 21:43:16', '0000-00-00 00:00:00'),
(68, 3, 0, 7, '2014-01-04 21:43:30', '0000-00-00 00:00:00'),
(69, 4, 0, 8, '2014-01-04 21:43:58', '0000-00-00 00:00:00'),
(70, 5, 0, 9, '2014-01-04 21:44:11', '0000-00-00 00:00:00'),
(71, 6, 0, 10, '2014-01-04 21:44:30', '0000-00-00 00:00:00'),
(72, 7, 0, 11, '2014-01-04 21:44:47', '0000-00-00 00:00:00'),
(73, 8, 0, 12, '2014-01-04 21:44:59', '0000-00-00 00:00:00'),
(74, 9, 0, 13, '2014-01-04 21:45:12', '0000-00-00 00:00:00'),
(75, 10, 0, 14, '2014-01-04 21:45:25', '0000-00-00 00:00:00'),
(76, 11, 0, 15, '2014-01-04 21:45:38', '0000-00-00 00:00:00'),
(77, 12, 0, 16, '2014-01-04 21:45:50', '0000-00-00 00:00:00'),
(78, 13, 0, 17, '2014-01-04 21:46:02', '0000-00-00 00:00:00'),
(79, 14, 0, 18, '2014-01-04 21:46:14', '0000-00-00 00:00:00'),
(80, 15, 0, 19, '2014-01-04 21:46:26', '0000-00-00 00:00:00'),
(81, 16, 0, 20, '2014-01-04 21:46:40', '0000-00-00 00:00:00'),
(82, 17, 0, 21, '2014-01-04 21:46:53', '0000-00-00 00:00:00'),
(83, 18, 0, 22, '2014-01-04 21:47:07', '0000-00-00 00:00:00'),
(84, 19, 0, 23, '2014-01-04 21:47:21', '0000-00-00 00:00:00'),
(85, 20, 0, 24, '2014-01-04 21:47:41', '0000-00-00 00:00:00'),
(86, 21, 0, 25, '2014-01-04 21:47:55', '0000-00-00 00:00:00'),
(87, 22, 0, 26, '2014-01-04 21:48:18', '0000-00-00 00:00:00'),
(88, 23, 0, 27, '2014-01-04 21:48:35', '0000-00-00 00:00:00'),
(89, 24, 0, 28, '2014-01-04 21:48:46', '0000-00-00 00:00:00'),
(90, 25, 0, 29, '2014-01-04 21:48:59', '0000-00-00 00:00:00'),
(91, 26, 0, 30, '2014-01-04 21:49:11', '0000-00-00 00:00:00'),
(92, 27, 0, 31, '2014-01-04 21:49:25', '0000-00-00 00:00:00'),
(93, 28, 0, 32, '2014-01-04 21:49:37', '0000-00-00 00:00:00'),
(94, 29, 0, 33, '2014-01-04 21:49:49', '0000-00-00 00:00:00'),
(95, 30, 0, 34, '2014-01-04 21:50:03', '0000-00-00 00:00:00'),
(96, 31, 0, 35, '2014-01-04 21:50:16', '0000-00-00 00:00:00'),
(97, 32, 0, 36, '2014-01-04 21:50:33', '0000-00-00 00:00:00'),
(98, 33, 0, 37, '2014-01-04 21:50:45', '0000-00-00 00:00:00'),
(99, 34, 0, 38, '2014-01-04 21:51:02', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `affiliate`
--
ALTER TABLE `affiliate`
  ADD PRIMARY KEY (`affiliate_id`);

--
-- Indexes for table `affiliate_activity`
--
ALTER TABLE `affiliate_activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `affiliate_login`
--
ALTER TABLE `affiliate_login`
  ADD PRIMARY KEY (`affiliate_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `affiliate_transaction`
--
ALTER TABLE `affiliate_transaction`
  ADD PRIMARY KEY (`affiliate_transaction_id`);

--
-- Indexes for table `api`
--
ALTER TABLE `api`
  ADD PRIMARY KEY (`api_id`);

--
-- Indexes for table `api_ip`
--
ALTER TABLE `api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Indexes for table `api_session`
--
ALTER TABLE `api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Indexes for table `attribute`
--
ALTER TABLE `attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `attribute_description`
--
ALTER TABLE `attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Indexes for table `attribute_group`
--
ALTER TABLE `attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Indexes for table `attribute_group_description`
--
ALTER TABLE `attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `banner_image`
--
ALTER TABLE `banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Indexes for table `banner_image_description`
--
ALTER TABLE `banner_image_description`
  ADD PRIMARY KEY (`banner_image_id`,`language_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `category_description`
--
ALTER TABLE `category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `category_filter`
--
ALTER TABLE `category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Indexes for table `category_path`
--
ALTER TABLE `category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Indexes for table `category_to_layout`
--
ALTER TABLE `category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `category_to_store`
--
ALTER TABLE `category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `coupon_category`
--
ALTER TABLE `coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Indexes for table `coupon_history`
--
ALTER TABLE `coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Indexes for table `coupon_product`
--
ALTER TABLE `coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `custom_field`
--
ALTER TABLE `custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Indexes for table `custom_field_customer_group`
--
ALTER TABLE `custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Indexes for table `custom_field_description`
--
ALTER TABLE `custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Indexes for table `custom_field_value`
--
ALTER TABLE `custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Indexes for table `custom_field_value_description`
--
ALTER TABLE `custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_activity`
--
ALTER TABLE `customer_activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `customer_group`
--
ALTER TABLE `customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Indexes for table `customer_group_description`
--
ALTER TABLE `customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Indexes for table `customer_history`
--
ALTER TABLE `customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Indexes for table `customer_ip`
--
ALTER TABLE `customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `customer_login`
--
ALTER TABLE `customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `customer_online`
--
ALTER TABLE `customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Indexes for table `customer_reward`
--
ALTER TABLE `customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Indexes for table `customer_transaction`
--
ALTER TABLE `customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Indexes for table `customer_wishlist`
--
ALTER TABLE `customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `download_description`
--
ALTER TABLE `download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `extension`
--
ALTER TABLE `extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Indexes for table `filter`
--
ALTER TABLE `filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `filter_description`
--
ALTER TABLE `filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Indexes for table `filter_group`
--
ALTER TABLE `filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Indexes for table `filter_group_description`
--
ALTER TABLE `filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Indexes for table `geo_zone`
--
ALTER TABLE `geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`information_id`);

--
-- Indexes for table `information_description`
--
ALTER TABLE `information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Indexes for table `information_to_layout`
--
ALTER TABLE `information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `information_to_store`
--
ALTER TABLE `information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `layout`
--
ALTER TABLE `layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Indexes for table `layout_module`
--
ALTER TABLE `layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Indexes for table `layout_route`
--
ALTER TABLE `layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Indexes for table `length_class`
--
ALTER TABLE `length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Indexes for table `length_class_description`
--
ALTER TABLE `length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `manufacturer_to_store`
--
ALTER TABLE `manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Indexes for table `marketing`
--
ALTER TABLE `marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Indexes for table `modification`
--
ALTER TABLE `modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `option`
--
ALTER TABLE `option`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `option_description`
--
ALTER TABLE `option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Indexes for table `option_value`
--
ALTER TABLE `option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Indexes for table `option_value_description`
--
ALTER TABLE `option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_custom_field`
--
ALTER TABLE `order_custom_field`
  ADD PRIMARY KEY (`order_custom_field_id`);

--
-- Indexes for table `order_history`
--
ALTER TABLE `order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Indexes for table `order_option`
--
ALTER TABLE `order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`order_product_id`);

--
-- Indexes for table `order_recurring`
--
ALTER TABLE `order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Indexes for table `order_recurring_transaction`
--
ALTER TABLE `order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Indexes for table `order_total`
--
ALTER TABLE `order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `order_voucher`
--
ALTER TABLE `order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_attribute`
--
ALTER TABLE `product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Indexes for table `product_description`
--
ALTER TABLE `product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `product_discount`
--
ALTER TABLE `product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_filter`
--
ALTER TABLE `product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Indexes for table `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_option`
--
ALTER TABLE `product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Indexes for table `product_option_value`
--
ALTER TABLE `product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Indexes for table `product_recurring`
--
ALTER TABLE `product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Indexes for table `product_related`
--
ALTER TABLE `product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Indexes for table `product_reward`
--
ALTER TABLE `product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Indexes for table `product_special`
--
ALTER TABLE `product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_to_category`
--
ALTER TABLE `product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `product_to_download`
--
ALTER TABLE `product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Indexes for table `product_to_layout`
--
ALTER TABLE `product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `product_to_store`
--
ALTER TABLE `product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `recurring`
--
ALTER TABLE `recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Indexes for table `recurring_description`
--
ALTER TABLE `recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Indexes for table `return`
--
ALTER TABLE `return`
  ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `return_action`
--
ALTER TABLE `return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Indexes for table `return_history`
--
ALTER TABLE `return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Indexes for table `return_reason`
--
ALTER TABLE `return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Indexes for table `return_status`
--
ALTER TABLE `return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `stock_status`
--
ALTER TABLE `stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `tax_class`
--
ALTER TABLE `tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `tax_rate`
--
ALTER TABLE `tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Indexes for table `tax_rate_to_customer_group`
--
ALTER TABLE `tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Indexes for table `tax_rule`
--
ALTER TABLE `tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `url_alias`
--
ALTER TABLE `url_alias`
  ADD PRIMARY KEY (`url_alias_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Indexes for table `voucher_history`
--
ALTER TABLE `voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Indexes for table `voucher_theme`
--
ALTER TABLE `voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Indexes for table `voucher_theme_description`
--
ALTER TABLE `voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Indexes for table `weight_class`
--
ALTER TABLE `weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Indexes for table `weight_class_description`
--
ALTER TABLE `weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Indexes for table `zone`
--
ALTER TABLE `zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `zone_to_geo_zone`
--
ALTER TABLE `zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `affiliate`
--
ALTER TABLE `affiliate`
  MODIFY `affiliate_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `affiliate_activity`
--
ALTER TABLE `affiliate_activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `affiliate_login`
--
ALTER TABLE `affiliate_login`
  MODIFY `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `affiliate_transaction`
--
ALTER TABLE `affiliate_transaction`
  MODIFY `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `api`
--
ALTER TABLE `api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `api_ip`
--
ALTER TABLE `api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `api_session`
--
ALTER TABLE `api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=435;
--
-- AUTO_INCREMENT for table `attribute`
--
ALTER TABLE `attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `attribute_group`
--
ALTER TABLE `attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `banner_image`
--
ALTER TABLE `banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6515;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `coupon_history`
--
ALTER TABLE `coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `coupon_product`
--
ALTER TABLE `coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `custom_field`
--
ALTER TABLE `custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `custom_field_value`
--
ALTER TABLE `custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `customer_activity`
--
ALTER TABLE `customer_activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer_group`
--
ALTER TABLE `customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `customer_history`
--
ALTER TABLE `customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer_ip`
--
ALTER TABLE `customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `customer_login`
--
ALTER TABLE `customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer_reward`
--
ALTER TABLE `customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer_transaction`
--
ALTER TABLE `customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `extension`
--
ALTER TABLE `extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `filter`
--
ALTER TABLE `filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `filter_group`
--
ALTER TABLE `filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `geo_zone`
--
ALTER TABLE `geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `layout`
--
ALTER TABLE `layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `layout_module`
--
ALTER TABLE `layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `layout_route`
--
ALTER TABLE `layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `length_class`
--
ALTER TABLE `length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `length_class_description`
--
ALTER TABLE `length_class_description`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `marketing`
--
ALTER TABLE `marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `modification`
--
ALTER TABLE `modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `option`
--
ALTER TABLE `option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `option_value`
--
ALTER TABLE `option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `order_custom_field`
--
ALTER TABLE `order_custom_field`
  MODIFY `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_history`
--
ALTER TABLE `order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `order_option`
--
ALTER TABLE `order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `order_recurring`
--
ALTER TABLE `order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_recurring_transaction`
--
ALTER TABLE `order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `order_total`
--
ALTER TABLE `order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;
--
-- AUTO_INCREMENT for table `order_voucher`
--
ALTER TABLE `order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `product_discount`
--
ALTER TABLE `product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_image`
--
ALTER TABLE `product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2377;
--
-- AUTO_INCREMENT for table `product_option`
--
ALTER TABLE `product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_option_value`
--
ALTER TABLE `product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_reward`
--
ALTER TABLE `product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_special`
--
ALTER TABLE `product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `recurring`
--
ALTER TABLE `recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `return`
--
ALTER TABLE `return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `return_action`
--
ALTER TABLE `return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `return_history`
--
ALTER TABLE `return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `return_reason`
--
ALTER TABLE `return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `return_status`
--
ALTER TABLE `return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1372;
--
-- AUTO_INCREMENT for table `stock_status`
--
ALTER TABLE `stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tax_class`
--
ALTER TABLE `tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tax_rate`
--
ALTER TABLE `tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `tax_rule`
--
ALTER TABLE `tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `url_alias`
--
ALTER TABLE `url_alias`
  MODIFY `url_alias_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=857;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `voucher`
--
ALTER TABLE `voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `voucher_history`
--
ALTER TABLE `voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `voucher_theme`
--
ALTER TABLE `voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `weight_class`
--
ALTER TABLE `weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `weight_class_description`
--
ALTER TABLE `weight_class_description`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `zone`
--
ALTER TABLE `zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;
--
-- AUTO_INCREMENT for table `zone_to_geo_zone`
--
ALTER TABLE `zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2017 at 03:56 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buynsell`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(7) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `group` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `group`) VALUES
(1, 'Abdul', 'karim', 'karim', 'info@amadercode.com', '1111111111', '1'),
(2, 'hasan', 'mahadi', 'hasan', 'wpr@gmail.com', '123456789', '2'),
(11, 'Lokman', 'Islam', 'Nislam', 'admin@gmail.com', '123434', '4'),
(12, 'Jahir', 'Islam', 'jIslam', 'we@dfg.com', '234234', '2'),
(15, 'Nahid', 'islam', 'nahid323', 'jml@gmail.com', '213345', '3'),
(16, 'Mamun', 'Sir', 'mamunsir', 'jsdfh@gmail.com', '38274435', '4'),
(17, 'lokman', 'hossen', 'lokman', 'lokman@gmail.com', '12345', '6'),
(18, 'Golam', 'Morshed', 'moeshed', 'morshed@gmail.com', '12345', '1'),
(19, 'Md. Abdul Halim', 'Shumon', 'shumon', 'shumon@gmail.com', '122334', '1');

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE IF NOT EXISTS `area` (
  `id` int(7) NOT NULL,
  `areaname` varchar(30) NOT NULL,
  `createdate` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`id`, `areaname`, `createdate`) VALUES
(1, 'Dhaka', '2014-11-27'),
(2, 'Chittagong', '2014-11-27'),
(3, 'Sylhet', '2014-11-27'),
(4, 'Barishal', '2014-11-27'),
(5, 'Khulna', '2014-11-27'),
(6, 'Rangpur', '2014-11-27'),
(7, 'Rajshahi', '2014-11-27'),
(8, 'Noakhali', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(7) NOT NULL,
  `categoryname` varchar(40) NOT NULL,
  `categorydescription` varchar(200) NOT NULL,
  `createdate` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryname`, `categorydescription`, `createdate`) VALUES
(1, 'Books, CDs and Hobbies', 'Books, CDs and Hobbies', '2014-11-27'),
(2, 'Grand Opening', 'Grand Opening', '2014-11-27'),
(3, 'Clothing and Accessories', 'Clothing and Accessories', '2014-11-27'),
(4, 'Computer and Accessories', 'Computer and Accessories', '2014-11-27'),
(5, 'Electrics and Electronics', 'Electrics and Electronics', '2014-11-27'),
(6, 'Food and Agriculture', 'Food and Agriculture', '2014-11-27'),
(7, 'Rent', 'Rent', '2014-11-27'),
(8, 'Home appliance', 'Home appliance', '2014-11-27'),
(9, 'Job and services', 'Job and services', '2014-11-27'),
(10, 'Kids and baby', 'Kids and baby', '2014-11-27'),
(11, 'Mobile and Tablets', '', '2014-11-27'),
(12, 'Pets and Animals', '', '2014-11-27'),
(13, 'RealState', '', '2014-11-27'),
(14, 'Health and sports', '', '2014-11-27'),
(15, 'Vehicles', 'Add vehiclea for sale', '2014-11-27');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `name`, `comment`, `date`) VALUES
(7, 'mehedy', 'This is test', '0000-00-00 00:00:00'),
(8, 'mehedy', 'This is test', '0000-00-00 00:00:00'),
(9, 'kamal', 'kwqhrirjin932 9u3942r', '0000-00-00 00:00:00'),
(10, 'mehedy', 'This is test', '0000-00-00 00:00:00'),
(11, 'mehedy', 'This is test', '0000-00-00 00:00:00'),
(12, '', '', '0000-00-00 00:00:00'),
(13, 'kamal', 'name="myIframe"', '0000-00-00 00:00:00'),
(15, 'ewtw4t', '432532156', '2017-09-17 06:36:10'),
(16, 'ewtw4t', '432532156', '2017-09-17 06:54:40'),
(17, 'ewtw4t', '432532156', '2017-09-17 06:57:37'),
(18, 'ewtw4t', '432532156', '2017-09-17 06:58:37'),
(19, 'ewtw4t', '432532156', '2017-09-17 06:58:59'),
(20, 'ewtw4t', '432532156', '2017-09-17 07:00:18'),
(21, 'ewtw4t', '432532156', '2017-09-17 07:01:18'),
(22, 'ewtw4t', '432532156', '2017-09-17 07:01:43'),
(23, 'ewtw4t', '432532156', '2017-09-17 07:01:57'),
(24, 'ewtw4t', '432532156', '2017-09-17 07:02:21'),
(25, 'ewtw4t', '432532156', '2017-09-17 07:02:42'),
(26, 'ewtw4t', '432532156', '2017-09-17 07:04:45'),
(27, 'ewtw4t', '432532156', '2017-09-17 07:05:35'),
(28, 'ewtw4t', '432532156', '2017-09-17 07:06:08'),
(29, 'ewtw4t', '432532156', '2017-09-17 07:07:07'),
(30, 'ewtw4t', '432532156', '2017-09-17 07:07:35'),
(31, 'ewtw4t', '432532156', '2017-09-17 07:08:31'),
(32, 'ewtw4t', '432532156', '2017-09-17 07:08:51'),
(33, 'ewtw4t', '432532156', '2017-09-17 07:09:08'),
(34, 'ewtw4t', '432532156', '2017-09-17 07:09:25'),
(35, 'ewtw4t', '432532156', '2017-09-17 07:09:39'),
(36, 'ewtw4t', '432532156', '2017-09-17 07:10:28'),
(37, 'ewtw4t', '432532156', '2017-09-17 07:11:00'),
(38, 'ewtw4t', '432532156', '2017-09-17 07:11:42');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(7) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(40) NOT NULL,
  `description` varchar(200) NOT NULL,
  `price` varchar(20) NOT NULL,
  `image` text NOT NULL,
  `areaid` int(7) NOT NULL,
  `subareaid` int(7) NOT NULL,
  `categoryid` int(7) NOT NULL,
  `subcategoryid` int(7) NOT NULL,
  `adtype` varchar(5) NOT NULL,
  `condition` varchar(5) NOT NULL,
  `approve` tinyint(1) NOT NULL,
  `hotitem` tinyint(4) NOT NULL DEFAULT '0',
  `adddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `expiredate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `user_id`, `title`, `description`, `price`, `image`, `areaid`, `subareaid`, `categoryid`, `subcategoryid`, `adtype`, `condition`, `approve`, `hotitem`, `adddate`, `expiredate`) VALUES
(197, 4, 'Hamlet  by William Shakespeare.', ' Hamlet  by William Shakespeare.Hamlet  by William Shakespeare.Hamlet  by William Shakespeare.Hamlet  by William Shakespeare.Hamlet  by William Shakespeare.Hamlet  by William Shakespeare.', '250', 'download.jpg', 4, 18, 1, 100, 'For S', 'New', 0, 0, '2017-09-18 11:34:01', '0000-00-00 00:00:00'),
(198, 4, 'The Bluest Eye', ' nlovely and unloved, Pecola prays each night for blue eyes like those of her privileged white schoolfellows. At once intimate and expansive, unsparing in its truth-telling, The Bluest Eye shows how t', '325', '41t3bxFipLL.jpg', 1, 7, 1, 100, 'Want ', 'New', 0, 0, '2017-09-18 11:38:29', '0000-00-00 00:00:00'),
(199, 4, 'Chokher Bali', ' Chokher Bali may refer to: Chokher Bali, a Bengali novel by Rabindranath Tagore Chokher Bali may refer to: Chokher Bali, a Bengali novel by Rabindranath Tagore ', '200', 'images.jpg', 1, 7, 1, 100, 'For S', 'New', 0, 0, '2017-09-18 11:44:55', '0000-00-00 00:00:00'),
(200, 4, 'BMW i8', ' A cookie is a small text file which is copied onto your hard disk by a website. Cookies do not cause any damage to your computer and do not contain any viruses.', '15000000 tk', 'bmw_i8.png', 4, 22, 15, 3, 'Want ', 'New', 0, 0, '2017-09-18 12:25:16', '0000-00-00 00:00:00'),
(201, 4, 'BMW_X7', ' A cookie is a small text file which is copied onto your hard disk by a website. Cookies do not cause any damage to your computer and do not contain any viruses.', '15000000 TK', 'audi-tt.jpg', 7, 63, 15, 4, 'For S', 'Used', 0, 0, '2017-09-18 12:26:44', '0000-00-00 00:00:00'),
(202, 4, 'Yahama 150', ' 36/7, E36/8 Z3 two-seat convertible and coupe. E38 7 Series large sedan. E39 5 Series mid-size sedan and wagon. E46 3 Series compact sedan, coupe, convertible, wagon and hatchback. E52 Z8 two-seat co', '1500000 TK', 'v_ducati-959-panigale-abs.jpg', 5, 41, 15, 6, 'Want ', 'New', 0, 0, '2017-09-18 12:28:48', '0000-00-00 00:00:00'),
(203, 23, 'Honda_150', ' 36/7, E36/8 Z3 two-seat convertible and coupe. E38 7 Series large sedan. E39 5 Series mid-size sedan and wagon. E46 3 Series compact sedan, coupe, convertible, wagon and hatchback. E52 Z8 two-seat co', '162000 TK', 'honda-cbr-1000rr-victory-red.png', 1, 7, 15, 6, 'Want ', 'New', 0, 0, '2017-09-18 12:32:37', '0000-00-00 00:00:00'),
(204, 23, 'Saree', ' Sarees: Buy the latest trendy, wedding & designer Sarees at Amazon.in. Choose from a wide range of Sarees at amazing prices, brands, offers. Great Discounts ..', '5000TK', '1.jpg', 2, 24, 3, 20, 'Want ', 'New', 0, 0, '2017-09-18 12:34:21', '0000-00-00 00:00:00'),
(205, 23, 'I phpne 7', ' Apple recently announced its shiny new iPhone 8, iPhone 8 Plus, and iPhone X on Tuesday, and they bring new features and faster performance than any previous iPhone. ', '52000 TK', 'apple-iphone-7-red-gallery-img-1.jpg', 3, 34, 11, 82, 'Want ', 'New', 0, 0, '2017-09-18 12:36:36', '0000-00-00 00:00:00'),
(207, 23, 'Saree', ' Sarees: Buy the latest trendy, wedding & designer Sarees at Amazon.in. Choose from a wide range of Sarees at amazing prices, brands, offers. Great Discounts ..', '4500 tk', 'saree1.jpg', 1, 7, 3, 20, 'For S', 'New', 0, 0, '2017-09-18 12:46:29', '0000-00-00 00:00:00'),
(208, 23, 'Saree', ' This is test This is test This is test This is test This is test This is test ', '1515', '140993933439894386-chiffon-georgette-designer-saree-black-colour.jpg', 2, 26, 3, -1, 'For S', 'New', 0, 0, '2017-09-18 13:06:46', '0000-00-00 00:00:00'),
(209, 23, 'Hugo', ' This is test This is test This is test This is test This is test This is test This is test This is test ', '125', 'hugo.jpg', 1, 7, 1, 101, 'For S', 'New', 0, 0, '2017-09-18 13:07:33', '0000-00-00 00:00:00'),
(210, 23, 'Spider man', ' This is test This is test This is test This is test This is test This is test This is test This is test This is test This is test This is test ', '145', 'spiderman.jpg', 5, 42, 1, 101, 'Want ', 'New', 0, 0, '2017-09-18 13:08:53', '0000-00-00 00:00:00'),
(211, 23, 'Movie DVD', ' This is test This is test This is test This is test This is test This is test This is test This is test ', '155 Tk', 'as.jpg', 7, 63, 1, 101, 'Want ', 'New', 0, 0, '2017-09-18 13:09:45', '0000-00-00 00:00:00'),
(212, 23, 'Ford_GT', ' This is test of Ford_GT.This is test of Ford_GT. This is test of Ford_GT .This is test of Ford_GT.', '15000000 TK', 'ford.jpg', 6, 48, 15, 3, 'For S', 'New', 0, 0, '2017-09-18 13:20:20', '0000-00-00 00:00:00'),
(213, 23, 'Toyta', ' This is test of Ford_GTThis is test of Ford_GTThis is test of Ford_GTThis is test of Ford_GT', '15000000 TK', '2012-Toyota-Camry-Sedan-4.jpg', 3, 34, 15, -1, 'For S', 'New', 0, 0, '2017-09-18 13:19:14', '0000-00-00 00:00:00'),
(214, 23, 'House', ' This is test of house his is test of Ford_GTThis is test of Ford_GTThis is test of Ford_GT', '5500000TK', '57408851e892fa08ff9c78e7243c43ef--facade-design-exterior-design.jpg', 1, 6, 13, 95, 'For S', 'New', 0, 0, '2017-09-18 13:24:28', '0000-00-00 00:00:00'),
(215, 23, 'Rent A Flat', ' Rent A FlatRent A FlatRent A FlatRent A FlatRent A FlatRent A FlatRent A Flat', '25500 tk', 'flrant.jpg', 7, 62, 7, 50, 'For S', 'New', 0, 0, '2017-09-18 13:27:08', '0000-00-00 00:00:00'),
(216, 23, 'Panjabi', ' This is test This is testThis is testThis is testThis is testThis is testThis is test', '1850 tk', 'Panjabi1.jpg', 4, 17, 3, 20, 'Want ', 'New', 0, 0, '2017-09-18 13:46:18', '0000-00-00 00:00:00'),
(217, 23, 'Suit Pant', ' This is testThis is testThis is testThis is testThis is testThis is testThis is test', '9950 tk', 'shut.jpg', 1, 2, 3, -1, 'Want ', 'New', 0, 0, '2017-09-18 13:49:08', '0000-00-00 00:00:00'),
(218, 1, 'Panjabi', ' This is testThis is testThis is testThis is testThis is testThis is testThis is test', '3578', 'pan.jpg', 5, 38, 3, 20, 'For S', 'New', 0, 0, '2017-09-18 13:52:19', '0000-00-00 00:00:00'),
(219, 1, 'Lahenga', ' This is testThis is testThis is testThis is testThis is testThis is test', '8550 tk', 'lah.jpg', 1, 1, 3, 20, 'Want ', 'New', 0, 0, '2017-09-18 13:55:51', '0000-00-00 00:00:00'),
(220, 1, 'samsung-galaxy-s8-', ' samsung-galaxy-s8-samsung-galaxy-s8-samsung-galaxy-s8-samsung-galaxy-s8-samsung-galaxy-s8-samsung-galaxy-s8-', '58000Tk', 'samsungs8.jpg', 1, 7, 11, 83, 'Want ', 'New', 0, 0, '2017-09-18 13:59:02', '0000-00-00 00:00:00'),
(221, 1, 'Camera', ' This is test This is test This is test This is test This is test This is test This is testThis is test', '15800', 'ima.jpg', 1, 1, 5, 40, 'Want ', 'New', 0, 0, '2017-09-18 14:03:34', '0000-00-00 00:00:00'),
(222, 1, 'Cannon Camera', ' This is testThis is testThis is testThis is testThis is testThis is testThis is testThis is test', '15880', 'imges.jpg', 1, 1, 5, 40, 'For S', 'Used', 0, 0, '2017-09-18 14:04:44', '0000-00-00 00:00:00'),
(223, 10, 'Sony TV', ' This is testThis is testThis is testThis is testThis is testThis is testThis is test', '15825', 'ies.jpg', 1, 1, 5, 35, 'For S', 'Used', 0, 0, '2017-09-18 14:11:14', '0000-00-00 00:00:00'),
(224, 10, 'LED TV', ' This is testThis is testThis is testThis is testThis is testThis is testThis is testThis is test', '29999 TK', 'dow.jpg', 1, 1, 5, -1, 'For S', 'New', 0, 0, '2017-09-18 14:12:31', '0000-00-00 00:00:00'),
(225, 10, 'PlazmaTV', ' This is testThis is testThis is testThis is testThis is testThis is test', '30000 TK', 'imagijhiihiies.jpg', 1, 1, 5, 35, 'Want ', 'Used', 0, 0, '2017-09-18 14:14:15', '0000-00-00 00:00:00'),
(226, 10, 'Walton Freeze', ' This is testThis is testThis is testThis is testThis is testThis is testThis is testThis is testThis is test', '26000 TK', 'imagkkkkes.jpg', 2, 23, 5, 37, 'Want ', 'New', 0, 0, '2017-09-18 14:18:19', '0000-00-00 00:00:00'),
(227, 10, 'LG Freeze', ' This is testThis is testThis is testThis is testThis is testThis is testThis is test', '46000 TK', 'imagejihys.jpg', 7, 57, 5, 37, 'For S', 'Used', 0, 0, '2017-09-18 14:19:49', '0000-00-00 00:00:00'),
(228, 10, 'Singer Freeze', ' This is testThis is testThis is testThis is testThis is testThis is testThis is test', '30000 TK', 'iiiiimages.jpg', 3, 37, 5, 37, 'Want ', 'New', 0, 0, '2017-09-18 14:20:47', '0000-00-00 00:00:00'),
(229, 1, 'sssssssssss', ' new brand', '1200', '1.jpg', 1, 7, 4, 34, 'For S', 'Used', 0, 0, '2017-10-17 17:13:26', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_archive`
--

CREATE TABLE IF NOT EXISTS `product_archive` (
  `id` int(7) NOT NULL,
  `title` varchar(40) NOT NULL,
  `description` text NOT NULL,
  `price` varchar(20) NOT NULL,
  `areaid` int(7) NOT NULL,
  `subareaid` int(7) NOT NULL,
  `categoryid` int(7) NOT NULL,
  `subcategoryid` int(7) NOT NULL,
  `adtype` varchar(5) NOT NULL,
  `condition` varchar(5) NOT NULL,
  `approve` tinyint(1) NOT NULL,
  `hotitem` tinyint(4) NOT NULL DEFAULT '0',
  `adddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `subarea`
--

CREATE TABLE IF NOT EXISTS `subarea` (
  `id` int(7) NOT NULL,
  `subareaname` varchar(30) NOT NULL,
  `areaid` int(7) NOT NULL,
  `createdate` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=ucs2;

--
-- Dumping data for table `subarea`
--

INSERT INTO `subarea` (`id`, `subareaname`, `areaid`, `createdate`) VALUES
(1, 'Rajbari', 1, '2014-11-27'),
(2, 'Faridpur', 1, '2014-11-27'),
(3, 'Gopalganj', 1, '2014-11-27'),
(4, 'Madaripur', 1, '2014-11-27'),
(5, 'Munshiganj', 1, '2014-11-27'),
(6, 'Manikganj', 1, '2014-11-27'),
(7, 'Dhaka', 1, '2014-11-27'),
(8, 'Narayanganj', 1, '2014-11-27'),
(9, 'kishorganj', 1, '2014-11-27'),
(10, 'Maymanshing', 1, '2014-11-27'),
(11, 'tangail', 1, '2014-11-27'),
(12, 'netrokona', 1, '2014-11-27'),
(13, 'sherpur', 1, '2014-11-27'),
(14, 'jamalpur', 1, '2014-11-27'),
(15, 'gazipur', 1, '2014-11-27'),
(17, 'Barisal', 4, '2015-04-07'),
(18, 'Barguna', 4, '2015-04-07'),
(19, 'Bhola', 4, '2015-04-07'),
(20, 'Jhalokati', 4, '2015-04-07'),
(21, 'Patuakhali', 4, '2015-04-07'),
(22, 'Pirojpur', 4, '2015-04-07'),
(23, 'Chittagong', 2, '2015-04-07'),
(24, 'Bandarban', 2, '2015-04-07'),
(25, 'Brahmanbaria', 2, '2015-04-07'),
(26, 'Chandpur', 2, '2015-04-07'),
(27, 'Comilla', 2, '2015-04-07'),
(28, 'Feni', 2, '2015-04-07'),
(29, 'Khagrachhari', 2, '2015-04-07'),
(30, 'Lakshmipur', 2, '2015-04-07'),
(31, 'Noakhali', 2, '2015-04-07'),
(32, 'Rangamati', 2, '2015-04-07'),
(33, 'Cox''s Bazar', 2, '2015-04-07'),
(34, 'Sylhet', 3, '2015-04-07'),
(35, 'Moulvibazar', 3, '2015-04-07'),
(36, 'Sunamganj', 3, '2015-04-07'),
(37, 'Habiganj', 3, '2015-04-07'),
(38, 'Khulna', 5, '2015-04-07'),
(39, 'Bagerhat', 5, '2015-04-07'),
(40, 'Chuadanga', 5, '2015-04-07'),
(41, 'Jessore', 5, '2015-04-07'),
(42, 'Jhenaidah', 5, '2015-04-07'),
(43, 'Kushtia', 5, '2015-04-07'),
(44, 'Magura', 5, '2015-04-07'),
(45, 'Meherpur', 5, '2015-04-07'),
(46, 'Narail', 5, '2015-04-07'),
(47, 'Satkhira', 5, '2015-04-07'),
(48, 'Rangpur', 6, '2015-04-07'),
(49, 'Dinajpur', 6, '2015-04-07'),
(50, 'Gaibandha', 6, '2015-04-07'),
(51, 'Kurigram', 6, '2015-04-07'),
(52, 'Lalmonirhat', 6, '2015-04-07'),
(53, 'Nilphamari', 6, '2015-04-07'),
(54, 'Panchagarh', 6, '2015-04-07'),
(55, 'Thakurgaon', 6, '2015-04-07'),
(56, 'Rajshahi', 7, '2015-04-07'),
(57, 'Bogra', 7, '2015-04-07'),
(58, 'Joypurhat', 7, '2015-04-07'),
(59, 'Naogaon', 7, '2015-04-07'),
(60, 'Natore', 7, '2015-04-07'),
(61, 'Chapainawabganj', 7, '2015-04-07'),
(62, 'Pabna', 7, '2015-04-07'),
(63, 'Sirajganj', 7, '2015-04-07'),
(64, 'Shariatpur', 1, '2015-04-07'),
(65, 'Narsingdi', 1, '2015-04-07'),
(66, 'Maijdee', 8, '2017-10-18');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(7) NOT NULL,
  `subcategoryname` varchar(40) NOT NULL,
  `categoryid` int(7) NOT NULL,
  `description` varchar(200) NOT NULL,
  `createdate` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `subcategoryname`, `categoryid`, `description`, `createdate`) VALUES
(1, 'Automotive Items and parts', 15, 'Automotive Items and parts', '2015-04-25'),
(2, 'Bots ans water craft', 15, 'Bots ans water craft', '2015-04-08'),
(3, 'Cars', 15, 'Cars', '2015-04-08'),
(4, 'Classic Cars', 15, 'Classic Cars', '2015-04-08'),
(5, 'Trucks and Tructor', 15, 'Trucks and Tructor', '2015-04-08'),
(6, 'MotorCycle', 15, 'MotorCycle', '2015-04-08'),
(7, 'Microbus', 15, 'Microbus', '2015-04-08'),
(8, 'Mechanic', 15, 'Mechanic', '2015-04-08'),
(9, 'Bicycle', 15, 'Bicycle', '2015-04-08'),
(10, 'Van', 15, 'This is van area', '2015-02-10'),
(11, 'SUVs', 15, '', '2014-11-27'),
(12, 'Viewsonic', 5, '20&#34; Monitor', '2015-02-10'),
(13, 'Shopping Mall', 2, 'Shopping Mall', '2015-04-07'),
(14, 'Mega Shop', 2, 'Mega Shop', '2015-04-07'),
(15, 'Restaurant', 2, 'Restaurant', '2015-04-07'),
(16, 'Variety Shop', 2, 'Variety Shop', '2015-04-07'),
(17, 'Media station(TV, Radio,News paper)', 2, 'Media station(TV, Radio,News paper)', '2015-04-07'),
(18, 'Others', 2, 'Others', '2015-04-07'),
(19, 'Bags & Luggage', 3, 'Bags & Luggage', '2015-04-07'),
(20, 'Clothes', 3, 'Clothes', '2015-04-07'),
(21, 'Clothing Accessories', 3, 'Clothing Accessories', '2015-04-07'),
(22, 'Footwear', 3, 'Footwear', '2015-04-07'),
(23, 'Jewellery', 3, 'Jewellery', '2015-04-07'),
(24, 'Watches', 3, 'Watches', '2015-04-07'),
(25, 'Desktop package', 4, 'Desktop package', '2015-04-07'),
(26, 'Laptop', 4, 'Laptop', '2015-04-07'),
(27, 'Mouse', 4, 'Mouse', '2015-04-07'),
(28, 'Keyboard', 4, 'Keyboard', '2015-04-07'),
(29, 'Monitor', 4, 'Monitor', '2015-04-07'),
(30, 'Speaker', 4, 'Speaker', '2015-04-07'),
(31, 'WebCam', 4, 'WebCam', '2015-04-07'),
(32, 'IPs', 4, 'IPs', '2015-04-07'),
(33, 'Internet Modem', 4, 'Internet Modem', '2015-04-07'),
(34, 'Accessories', 4, 'Accessories', '2015-04-07'),
(35, 'Television', 5, 'Television', '2015-04-07'),
(36, 'CD, DVD,players', 5, 'CD, DVD,players', '2015-04-07'),
(37, 'Refrigerator(Freeze)', 5, 'Refrigerator(Freeze)', '2015-04-07'),
(38, 'Micro Woven', 5, 'Micro Woven', '2015-04-07'),
(39, 'Fans', 5, 'Fans', '2015-04-07'),
(40, 'Camera', 5, 'Camera', '2015-04-07'),
(41, 'Crops', 6, 'Crops', '2015-04-07'),
(42, 'Fish', 6, 'Fish', '2015-04-07'),
(43, 'Meat', 6, 'Meat', '2015-04-07'),
(44, 'Fruits', 6, 'Fruits', '2015-04-07'),
(45, 'Milk', 6, 'Milk', '2015-04-07'),
(46, 'Honey', 6, 'Honey', '2015-04-07'),
(47, 'Pitha', 6, 'Pitha', '2015-04-07'),
(48, 'Sweat', 6, 'Sweat', '2015-04-07'),
(49, 'First-Foods', 6, 'First-Foods', '2015-04-07'),
(50, 'Flat', 7, 'Flat', '2015-04-07'),
(51, 'Storages', 7, 'Storages', '2015-04-07'),
(52, 'Cars', 7, 'Cars', '2015-04-07'),
(53, 'Land', 7, 'Land', '2015-04-07'),
(54, 'Farms & Ranches', 7, 'Farms & Ranches', '2015-04-07'),
(55, 'Commercial Space', 7, 'Commercial Space', '2015-04-07'),
(56, 'Hotels', 7, 'Hotels', '2015-04-07'),
(57, 'Transporting vehicles', 7, 'Transporting vehicles', '2015-04-07'),
(58, 'Sofa', 8, 'Sofa', '2015-04-07'),
(59, 'Bed', 8, 'Bed', '2015-04-07'),
(60, 'WearDrop', 8, 'WearDrop', '2015-04-07'),
(61, 'Cabinet', 8, 'Cabinet', '2015-04-07'),
(62, 'Table', 8, 'Table', '2015-04-07'),
(63, 'Dressing Table', 8, 'Dressing Table', '2015-04-07'),
(64, 'Dining table', 8, 'Dining table', '2015-04-07'),
(65, 'Accounting & Bookkeeping Jobs', 9, 'Accounting & Bookkeeping Jobs', '2015-04-07'),
(66, 'Construction Work', 9, 'Construction Work', '2015-04-07'),
(67, 'Educational Jobs', 9, 'Educational Jobs', '2015-04-07'),
(68, 'Financial & Real Estate Jobs', 9, 'Financial & Real Estate Jobs', '2015-04-07'),
(69, 'IT Jobs', 9, 'IT Jobs', '2015-04-07'),
(70, 'Labor Jobs', 9, 'Labor Jobs', '2015-04-07'),
(71, 'Management Jobs', 9, 'Management Jobs', '2015-04-07'),
(72, 'Marketing Jobs', 9, 'Marketing Jobs', '2015-04-07'),
(73, 'Medical Jobs', 9, 'Medical Jobs', '2015-04-07'),
(74, 'Security & Safety Jobs', 9, 'Security & Safety Jobs', '2015-04-07'),
(75, 'Govt. Jobs', 9, 'Govt. Jobs', '2015-04-07'),
(76, 'Baby Products & Furniture', 10, 'Baby Products & Furniture', '2015-04-07'),
(77, 'Kids Clothing - Accessories', 10, 'Kids Clothing - Accessories', '2015-04-07'),
(78, 'Kids Health & Nutrition', 10, 'Kids Health & Nutrition', '2015-04-07'),
(79, 'Toys & Games', 10, 'Toys & Games', '2015-04-07'),
(80, 'Mobile phone', 11, 'Mobile phone', '2015-04-07'),
(81, 'Tablet', 11, 'Tablet', '2015-04-07'),
(82, 'iPad,iPhone,iPod etc', 11, 'iPad,iPhone,iPod etc', '2015-04-07'),
(83, 'Android phone', 11, 'Android phone', '2015-04-07'),
(84, 'Windows Phone', 11, 'Windows Phone', '2015-04-07'),
(85, 'BlackBerry', 11, 'BlackBerry', '2015-04-07'),
(86, 'Birds', 12, 'Birds', '2015-04-07'),
(87, 'Cats', 12, 'Cats', '2015-04-07'),
(88, 'Dogs', 12, 'Dogs', '2015-04-07'),
(89, 'Cow', 12, 'Cow', '2015-04-07'),
(90, 'Goats', 12, 'Goats', '2015-04-07'),
(91, 'Horses', 12, 'Horses', '2015-04-07'),
(92, 'Livestock', 12, 'Livestock', '2015-04-07'),
(93, 'Commercial Real Estate', 13, 'Commercial Real Estate', '2015-04-07'),
(94, 'Farms & Ranches', 13, 'Farms & Ranches', '2015-04-07'),
(95, 'Flat For Sale', 13, 'Flat For Sale', '2015-04-07'),
(96, 'Land For Sale', 13, 'Land For Sale', '2015-04-07'),
(97, 'Gym & Fitness', 14, 'Gym & Fitness', '2015-04-07'),
(98, 'Health & Beauty', 14, 'Health & Beauty', '2015-04-07'),
(99, 'Sport Equipment', 14, 'Sport Equipment', '2015-04-07'),
(100, 'Books & Magazines', 1, 'Books & Magazines', '2015-04-07'),
(101, 'CDs - DVDs', 1, 'CDs - DVDs', '2015-04-07'),
(102, 'Coins & Collectibles', 1, 'Coins & Collectibles', '2015-04-07'),
(103, 'Coins & Collectibles', 1, 'Coins & Collectibles', '2015-04-07'),
(104, 'Handicrafts', 1, 'Handicrafts', '2015-04-07'),
(105, 'Musical Instruments', 1, 'Musical Instruments', '2015-04-07');

-- --------------------------------------------------------

--
-- Stand-in structure for view `total_category_item`
--
CREATE TABLE IF NOT EXISTS `total_category_item` (
`categoryid` int(7)
,`totalitem` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `total_subcat_item`
--
CREATE TABLE IF NOT EXISTS `total_subcat_item` (
`subcategoryid` int(7)
,`totalitem` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE IF NOT EXISTS `userinfo` (
  `id` int(11) NOT NULL,
  `userip` varchar(15) NOT NULL,
  `referer` varchar(200) NOT NULL,
  `useragent` varchar(200) NOT NULL,
  `visittime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=293 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`id`, `userip`, `referer`, `useragent`, `visittime`) VALUES
(1, '203.82.193.66', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6MzguMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC8zOC4w', '2015-05-25 15:33:36'),
(2, '203.82.193.66', 'aHR0cDovL2wuZmFjZWJvb2suY29tL2wucGhwP3U9aHR0cCUzQSUyRiUyRmFtYWRlcmNvZGUuY29tJTJGc29iYXJiYXphYXIlMkYmaD13QVFIbUNWZnAmZW5jPUFaUHVydEdyWTFGZlJqTGgzUnJ2Z2syOFZxTXQ3UU1hcnVWRkVkXzZIeW8wTlhMcXhNbmI0aTVxeXlj', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6MzguMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC8zOC4w', '2015-05-25 15:33:59'),
(3, '203.82.193.66', 'aHR0cDovL2wuZmFjZWJvb2suY29tL2wucGhwP3U9aHR0cCUzQSUyRiUyRmFtYWRlcmNvZGUuY29tJTJGc29iYXJiYXphYXIlMkYmaD1ZQVFIQm1YX1dBUUZOUFRLellRUkRHcDlRS3lnYWJsLVpWLS1rR1QxREVIYnpyZyZlbmM9QVpNRUZudTJrOXc3S1hxSThHbDBz', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6MzguMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC8zOC4w', '2015-05-25 15:34:59'),
(4, '203.82.193.66', 'aHR0cDovL2wuZmFjZWJvb2suY29tL2wucGhwP3U9aHR0cCUzQSUyRiUyRmFtYWRlcmNvZGUuY29tJTJGc29iYXJiYXphYXIlMkYmaD1ZQVFIQm1YX1dBUUZOUFRLellRUkRHcDlRS3lnYWJsLVpWLS1rR1QxREVIYnpyZyZlbmM9QVpNRUZudTJrOXc3S1hxSThHbDBz', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6MzguMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC8zOC4w', '2015-05-25 15:50:49'),
(5, '203.82.193.66', 'aHR0cDovL2wuZmFjZWJvb2suY29tL2wucGhwP3U9aHR0cCUzQSUyRiUyRmFtYWRlcmNvZGUuY29tJTJGc29iYXJiYXphYXIlMkYmaD1ZQVFIQm1YX1dBUUZOUFRLellRUkRHcDlRS3lnYWJsLVpWLS1rR1QxREVIYnpyZyZlbmM9QVpNRUZudTJrOXc3S1hxSThHbDBz', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6MzguMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC8zOC4w', '2015-05-25 15:51:35'),
(6, '103.231.228.202', 'aHR0cHM6Ly93d3cuZmFjZWJvb2suY29tLw,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjY1IFNhZmFyaS81MzcuMzY,', '2015-05-25 16:03:44'),
(7, '103.231.228.202', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL21vcnNoZWQvcG9ydGZvbGlvL3BvcnRmb2xpby5odG1s', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjY1IFNhZmFyaS81MzcuMzY,', '2015-05-25 16:25:57'),
(8, '182.48.88.7', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDQuMC4yNDAzLjkgU2FmYXJpLzUzNy4zNg,,', '2015-05-25 17:08:15'),
(9, '182.48.88.7', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Nob3dwYWdlLnBocD9waWQ9MTk,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDQuMC4yNDAzLjkgU2FmYXJpLzUzNy4zNg,,', '2015-05-25 17:12:20'),
(10, '182.48.88.7', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2xvZ2luLnBocA,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDQuMC4yNDAzLjkgU2FmYXJpLzUzNy4zNg,,', '2015-05-25 17:15:07'),
(11, '203.82.193.66', 'aHR0cDovL2wuZmFjZWJvb2suY29tL2wucGhwP3U9aHR0cCUzQSUyRiUyRmFtYWRlcmNvZGUuY29tJTJGc29iYXJiYXphYXIlMkYmaD1rQVFHd1hXRXomZW5jPUFaUE0ybEN3WGI4bG9aWloyT0picS14YXJxWlFYOWNiNVQwYUNuVUFEeFA5V0pERVZXNHRBZ0xhWlJM', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6MzguMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC8zOC4w', '2015-05-25 17:28:02'),
(12, '203.82.193.66', 'aHR0cDovL2wuZmFjZWJvb2suY29tL2wucGhwP3U9aHR0cCUzQSUyRiUyRmFtYWRlcmNvZGUuY29tJTJGc29iYXJiYXphYXIlMkYmaD1rQVFHd1hXRXomZW5jPUFaUE0ybEN3WGI4bG9aWloyT0picS14YXJxWlFYOWNiNVQwYUNuVUFEeFA5V0pERVZXNHRBZ0xhWlJM', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6MzguMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC8zOC4w', '2015-05-25 17:28:49'),
(13, '72.14.199.43', '', 'TW96aWxsYS81LjAgKGNvbXBhdGlibGUpIEZlZWRmZXRjaGVyLUdvb2dsZTsoK2h0dHA6Ly93d3cuZ29vZ2xlLmNvbS9mZWVkZmV0Y2hlci5odG1sKQ,,', '2015-05-25 23:36:00'),
(14, '24.239.145.84', 'aHR0cHM6Ly93d3cuZmFjZWJvb2suY29tLw,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny42NSBTYWZhcmkvNTM3LjM2', '2015-05-26 01:58:09'),
(15, '212.40.56.82', '', 'TW96aWxsYS81LjAgKGNvbXBhdGlibGU7IE1KMTJib3QvdjEuNC41OyBodHRwOi8vd3d3Lm1hamVzdGljMTIuY28udWsvYm90LnBocD8rKQ,,', '2015-05-26 03:17:50'),
(16, '202.84.42.69', 'aHR0cDovL2wuZmFjZWJvb2suY29tL2wucGhwP3U9aHR0cCUzQSUyRiUyRmFtYWRlcmNvZGUuY29tJTJGc29iYXJiYXphYXIlMkYmaD1EQVFGTHF3MngmZW5jPUFaUFl0dUVRX1plSGxDb0dINkZBTGRLclFkRlVpSXdqYWNpWjNmMTNqS0FEWEgtOGRkcnk4WUtvcmph', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-05-26 04:26:02'),
(17, '202.84.42.69', 'aHR0cDovL2wuZmFjZWJvb2suY29tL2wucGhwP3U9aHR0cCUzQSUyRiUyRmFtYWRlcmNvZGUuY29tJTJGc29iYXJiYXphYXIlMkYmaD1EQVFGTHF3MngmZW5jPUFaUFl0dUVRX1plSGxDb0dINkZBTGRLclFkRlVpSXdqYWNpWjNmMTNqS0FEWEgtOGRkcnk4WUtvcmph', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-05-26 04:29:01'),
(18, '71.231.180.126', 'aHR0cHM6Ly93d3cuZmFjZWJvb2suY29tLw,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4zOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-05-26 05:39:32'),
(19, '203.82.193.66', 'aHR0cDovL2wuZmFjZWJvb2suY29tL2wucGhwP3U9aHR0cCUzQSUyRiUyRmFtYWRlcmNvZGUuY29tJTJGc29iYXJiYXphYXIlMkYmaD1SQVFGZ3lzTW4mZW5jPUFaTmJlRnI5ZUhaVW1ra1BmNWtHemlKRlhia19oMkt0aVBocU1WRDVTRW9XOXN1LUpJT3Ywa2htU1BT', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6MzguMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC8zOC4w', '2015-05-26 05:45:29'),
(20, '123.49.2.106', 'aHR0cHM6Ly93d3cuZmFjZWJvb2suY29tLw,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-05-26 05:45:55'),
(21, '63.141.217.46', 'aHR0cHM6Ly93d3cuZmFjZWJvb2suY29tLw,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-05-26 06:24:11'),
(22, '66.249.84.184', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjo2LjApIEdlY2tvLzIwMTEwODE0IEZpcmVmb3gvNi4wIEdvb2dsZSBmYXZpY29u', '2015-05-26 07:26:17'),
(23, '150.242.106.6', 'aHR0cDovL3d3dy5nb29nbGUuY29tL3NlYXJjaA,,', 'TW96aWxsYS81LjAgKFgxMTsgTGludXggeDg2XzY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvOyBHb29nbGUgV2ViIFByZXZpZXcpIENocm9tZS8yNy4wLjE0NTMgU2FmYXJpLzUzNy4zNg,,', '2015-05-26 07:26:17'),
(24, '182.48.75.58', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4zOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-05-26 09:49:00'),
(25, '182.160.113.138', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6MzQuMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC8zNC4w', '2015-05-26 13:50:44'),
(26, '58.65.224.5', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6MzQuMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC8zNC4w', '2015-05-26 14:03:45'),
(27, '182.160.113.138', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6MzQuMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC8zNC4w', '2015-05-26 14:27:46'),
(28, '209.15.21.122', '', 'TW96aWxsYS81LjAgKFgxMTsgTGludXggeDg2XzY0OyBydjoxMC4wLjEyKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzIxLjAgV29yZFByZXNzLmNvbSBtU2hvdHM,', '2015-05-26 15:07:16'),
(29, '103.231.228.202', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL21vcnNoZWQvcG9ydGZvbGlvLw,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-05-26 19:12:49'),
(30, '103.231.228.202', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL21vcnNoZWQvcG9ydGZvbGlvL3BvcnRmb2xpby5odG1s', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-05-26 19:17:27'),
(31, '103.231.228.202', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL21vcnNoZWQvcG9ydGZvbGlvL2luZGV4Lmh0bWw,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-05-26 19:36:23'),
(32, '182.160.113.138', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny42NSBTYWZhcmkvNTM3LjM2', '2015-05-27 03:36:26'),
(33, '182.160.113.138', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny42NSBTYWZhcmkvNTM3LjM2', '2015-05-27 03:37:07'),
(34, '182.160.113.138', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6MzguMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC8zOC4w', '2015-05-27 03:40:18'),
(35, '182.160.113.138', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL21vcnNoZWQvcG9ydGZvbGlvL2luZGV4Lmh0bWw,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny42NSBTYWZhcmkvNTM3LjM2', '2015-05-27 03:42:09'),
(36, '114.31.4.118', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNS4xOyBydjoxOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzE4LjA,', '2015-05-27 08:22:13'),
(37, '203.82.193.66', 'aHR0cDovL2wuZmFjZWJvb2suY29tL2wucGhwP3U9aHR0cCUzQSUyRiUyRmFtYWRlcmNvZGUuY29tJTJGc29iYXJiYXphYXIlMkYmaD1NQVFFaTNuaHkmZW5jPUFaTWp1TmNsUjNVTnJBLWJzalBwb2dCYS1JZ3Z5THlPUVdlOFF4ODZabkp4UE81MmdWcmt2MHpaektH', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6MzguMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC8zOC4w', '2015-05-27 12:59:45'),
(38, '103.231.228.202', 'aHR0cHM6Ly93d3cuZmFjZWJvb2suY29tLw,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-05-27 16:58:16'),
(39, '103.231.228.202', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL21vcnNoZWQvcG9ydGZvbGlvLw,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-05-27 17:04:57'),
(40, '103.231.228.202', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL21vcnNoZWQvcG9ydGZvbGlvL2luZGV4Lmh0bWw,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-05-28 13:48:05'),
(41, '103.231.228.202', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2xvZ2luLnBocA,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-05-28 13:49:34'),
(42, '203.82.193.66', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6MzguMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC8zOC4w', '2015-05-28 14:46:49'),
(43, '103.15.141.122', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-05-28 18:13:47'),
(44, '103.231.228.202', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL21vcnNoZWQvcG9ydGZvbGlvLw,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-05-29 14:26:30'),
(45, '103.231.228.202', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL21vcnNoZWQvcG9ydGZvbGlvLw,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-05-29 14:27:06'),
(46, '103.231.228.202', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-05-29 14:46:44'),
(47, '103.231.228.202', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-05-29 14:50:43'),
(48, '103.231.228.202', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Nob3dwYWdlLnBocD9waWQ9ODc,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-05-29 14:53:21'),
(49, '103.231.228.202', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2luZGV4LnBocA,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-05-29 14:54:05'),
(50, '103.231.228.202', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2luZGV4LnBocD9iaWdfc2VhcmNoPWNhdA,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-05-29 14:54:16'),
(51, '66.220.158.119', '', 'ZmFjZWJvb2tleHRlcm5hbGhpdC8xLjEgKCtodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9leHRlcm5hbGhpdF91YXRleHQucGhwKQ,,', '2015-05-29 20:36:43'),
(52, '203.82.193.66', 'aHR0cDovL2wuZmFjZWJvb2suY29tL2wucGhwP3U9aHR0cCUzQSUyRiUyRmFtYWRlcmNvZGUuY29tJTJGc29iYXJiYXphYXIlMkYmaD15QVFGNHZWX1omZW5jPUFaUHdFUDIzWC0wLTc4NE5WQXVrZnZNSmNqSkRFNlFlZlVmZmNhZXhNMVh6TmZHZkNrU1ppczZ3TWR2', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6MzguMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC8zOC4w', '2015-05-29 20:36:43'),
(53, '203.82.193.66', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Nob3dwYWdlLnBocD9waWQ9MTAw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6MzguMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC8zOC4w', '2015-05-29 20:37:26'),
(54, '103.231.228.202', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL21vcnNoZWQvcG9ydGZvbGlvLw,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-05-30 07:40:59'),
(55, '174.129.228.67', '', 'aWFfYXJjaGl2ZXI,', '2015-05-30 07:48:26'),
(56, '58.65.224.5', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-05-30 09:45:00'),
(57, '58.65.224.5', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-05-30 09:45:59'),
(58, '58.65.224.5', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-05-30 10:18:07'),
(59, '182.160.113.138', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-05-30 11:41:04'),
(60, '182.160.113.138', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL3dwc2ktYWRtaW4vbWFuYWdlQ2F0ZWdvcnkucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-05-30 11:43:02'),
(61, '182.160.113.138', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-05-30 11:43:34'),
(62, '150.242.106.2', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-05-31 12:04:28'),
(63, '150.242.106.2', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2xvZ2luLnBocA,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-05-31 12:15:34'),
(64, '150.242.106.2', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-05-31 12:50:59'),
(65, '150.242.106.2', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-05-31 12:52:55'),
(66, '150.242.106.2', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL3Byb2R1Y3RkZXRhaWxzLnBocD9waWQ9MTU3', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-05-31 12:53:39'),
(67, '150.242.106.2', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Nob3dwYWdlLnBocD9waWQ9MTAw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-05-31 12:54:20'),
(68, '150.242.106.2', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Nob3dwYWdlLnBocD9waWQ9MjA,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-05-31 12:55:06'),
(69, '66.249.84.178', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjo2LjApIEdlY2tvLzIwMTEwODE0IEZpcmVmb3gvNi4wIEdvb2dsZSBmYXZpY29u', '2015-05-31 14:02:29'),
(70, '203.82.193.66', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6MzguMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC8zOC4w', '2015-05-31 14:41:32'),
(71, '203.82.193.66', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6MzguMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC8zOC4w', '2015-05-31 14:43:12'),
(72, '103.49.201.230', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6NDAuMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC80MC4w', '2015-05-31 18:42:01'),
(73, '103.49.201.230', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6NDAuMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC80MC4w', '2015-05-31 18:43:30'),
(74, '103.49.201.230', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6NDAuMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC80MC4w', '2015-05-31 18:44:58'),
(75, '103.49.201.230', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6NDAuMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC80MC4w', '2015-05-31 18:46:10'),
(76, '103.49.201.230', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6NDAuMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC80MC4w', '2015-05-31 18:48:24'),
(77, '103.49.201.230', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Nob3dwYWdlLnBocD9waWQ9MTAw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6NDAuMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC80MC4w', '2015-05-31 18:48:49'),
(78, '103.49.201.230', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Nob3dwYWdlLnBocD9waWQ9NA,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6NDAuMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC80MC4w', '2015-05-31 18:51:37'),
(79, '209.15.21.122', '', 'TW96aWxsYS81LjAgKFgxMTsgTGludXggeDg2XzY0OyBydjoxMC4wLjEyKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzIxLjAgV29yZFByZXNzLmNvbSBtU2hvdHM,', '2015-06-01 01:08:40'),
(80, '202.22.195.54', 'aHR0cDovL2Jvb3N0LXdvcmsuY29tL2h0bWwtdmNhcmQtcmVzdW1lLWN2LXRlbXBsYXRlcy1mcmVlLWRvd25sb2FkLw,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4zKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-01 01:09:07'),
(81, '103.49.201.246', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzMzLjAuMTc1MC41IFNhZmFyaS81MzcuMzY,', '2015-06-01 05:13:15'),
(82, '124.6.226.246', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4zOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-06-01 05:14:57'),
(83, '64.233.172.155', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjo2LjApIEdlY2tvLzIwMTEwODE0IEZpcmVmb3gvNi4wIEdvb2dsZSBmYXZpY29u', '2015-06-01 05:57:29'),
(84, '182.160.113.138', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-01 06:04:23'),
(85, '150.242.106.2', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-06-01 07:20:07'),
(86, '203.82.193.66', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6MzguMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC8zOC4w', '2015-06-01 14:30:39'),
(87, '202.22.195.54', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-01 14:34:31'),
(88, '202.22.195.54', 'aHR0cDovL3d3dy5hbWFkZXJjb2RlLmNvbS9zb2JhcmJhemFhci9wcm9kdWN0ZGV0YWlscy5waHA_cGlkPTE0NA,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-01 14:35:46'),
(89, '182.48.64.161', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4zKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-01 15:06:42'),
(90, '182.48.64.161', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4zKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-01 15:08:21'),
(91, '182.48.64.161', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4zKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-01 15:09:32'),
(92, '182.48.64.161', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4zKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-01 15:13:02'),
(93, '182.48.64.161', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4zKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-01 15:13:44'),
(94, '182.48.64.161', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4zKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-01 15:14:11'),
(95, '182.48.64.161', 'aHR0cDovL3d3dy5hbWFkZXJjb2RlLmNvbS9zb2JhcmJhemFhci9hZHNwb3N0LnBocA,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4zKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-01 15:14:17'),
(96, '182.160.113.138', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-02 03:17:59'),
(97, '124.6.226.246', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4zOyBXT1c2NDsgcnY6MzguMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC8zOC4w', '2015-06-02 03:38:23'),
(98, '124.6.226.246', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4zOyBXT1c2NDsgcnY6MzguMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC8zOC4w', '2015-06-02 03:39:09'),
(99, '124.6.226.246', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4zOyBXT1c2NDsgcnY6MzguMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC8zOC4w', '2015-06-02 03:46:12'),
(100, '173.252.90.123', '', 'ZmFjZWJvb2tleHRlcm5hbGhpdC8xLjEgKCtodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9leHRlcm5hbGhpdF91YXRleHQucGhwKQ,,', '2015-06-02 07:01:44'),
(101, '180.211.215.247', 'aHR0cDovL2wuZmFjZWJvb2suY29tL2xzci5waHA_dT1odHRwJTNBJTJGJTJGYW1hZGVyY29kZS5jb20lMkZzb2JhcmJhemFhciZleHQ9MTQzMzIyODU2MyZoYXNoPUFjbk40enR2WGZ5NWZnekhFXzdNTE53RDJKdlBfMVBkaEMxQlRWZDY0WDhxaFE,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-02 07:01:45'),
(102, '124.6.226.246', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4zOyBXT1c2NDsgcnY6MzguMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC8zOC4w', '2015-06-02 11:16:58'),
(103, '66.249.84.178', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjo2LjApIEdlY2tvLzIwMTEwODE0IEZpcmVmb3gvNi4wIEdvb2dsZSBmYXZpY29u', '2015-06-03 15:33:42'),
(104, '150.242.106.2', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-06-04 04:54:10'),
(105, '54.164.54.74', '', '', '2015-06-04 04:55:05'),
(106, '150.242.106.2', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2xvZ2luLnBocA,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-06-04 04:57:30'),
(107, '150.242.106.2', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-06-04 05:08:58'),
(108, '123.49.2.106', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 05:56:57'),
(109, '123.49.2.106', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 05:57:13'),
(110, '123.49.2.106', '', 'TW96aWxsYS80LjAgKGNvbXBhdGlibGU7IE1TSUUgOC4wOyBXaW5kb3dzIE5UIDYuMTsgV09XNjQ7IFRyaWRlbnQvNC4wOyBTTENDMjsgLk5FVCBDTFIgMi4wLjUwNzI3OyAuTkVUIENMUiAzLjUuMzA3Mjk7IC5ORVQgQ0xSIDMuMC4zMDcyOTsgTWVkaWEgQ2VudGVy', '2015-06-04 05:57:23'),
(111, '123.49.2.106', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 06:07:52'),
(112, '123.49.2.106', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyLw,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 06:10:33'),
(113, '123.49.2.106', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 06:10:35'),
(114, '123.49.2.106', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 06:11:26'),
(115, '123.49.2.106', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 06:12:38'),
(116, '123.49.2.106', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 06:13:26'),
(117, '123.49.2.106', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 06:16:08'),
(118, '123.49.2.106', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 06:16:55'),
(119, '123.49.2.106', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 06:17:57'),
(120, '123.49.2.106', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 06:37:50'),
(121, '123.49.2.106', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 06:39:37'),
(122, '123.49.2.106', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL3Byb2R1Y3RkZXRhaWxzLnBocD9waWQ9MzE,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 06:41:10'),
(123, '182.160.113.138', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6MzguMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC8zOC4w', '2015-06-04 06:43:11'),
(124, '123.49.2.106', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 06:45:16'),
(125, '123.49.2.106', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 06:46:27'),
(126, '123.49.2.106', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Nob3dwYWdlLnBocD9waWQ9MTAw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 06:46:40'),
(127, '123.49.2.106', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 06:46:48'),
(128, '123.49.2.106', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 06:47:36'),
(129, '123.49.2.106', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 06:48:51'),
(130, '123.49.2.106', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 06:48:56'),
(131, '123.49.2.106', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Nob3dwYWdlLnBocD9waWQ9MTAx', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 06:49:30'),
(132, '123.49.2.106', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 06:49:38'),
(133, '123.49.2.106', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Nob3dwYWdlLnBocD9waWQ9MTAx', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 06:49:48'),
(134, '123.49.2.106', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Nob3dwYWdlLnBocD9waWQ9MTAw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 06:50:18'),
(135, '123.49.2.106', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 06:50:41'),
(136, '123.49.2.106', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Nob3dwYWdlLnBocD9waWQ9NTA,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 06:51:12'),
(137, '123.49.2.106', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Nob3dwYWdlLnBocD9waWQ9NTA,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 06:51:21'),
(138, '182.160.113.138', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6MzguMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC8zOC4w', '2015-06-04 06:52:02'),
(139, '123.49.2.106', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Nob3dwYWdlLnBocD9waWQ9MTAy', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 06:52:26'),
(140, '123.49.2.106', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 06:52:38'),
(141, '123.49.2.106', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 06:52:51'),
(142, '182.160.113.138', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6MzguMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC8zOC4w', '2015-06-04 06:54:09'),
(143, '202.22.195.54', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-04 10:13:49'),
(144, '202.22.195.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-04 10:18:48'),
(145, '202.22.195.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-04 10:19:48'),
(146, '202.22.195.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2luZGV4LnBocA,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-04 11:31:33'),
(147, '202.22.195.54', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 11:43:49'),
(148, '202.22.195.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL3Byb2R1Y3RkZXRhaWxzLnBocD9waWQ9MTU5', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-04 11:56:54'),
(149, '202.22.195.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL3Byb2R1Y3RkZXRhaWxzLnBocD9waWQ9MTU5', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-04 11:57:08'),
(150, '202.22.195.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-04 11:57:35'),
(151, '202.22.195.54', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 12:35:57'),
(152, '103.49.201.246', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzMzLjAuMTc1MC41IFNhZmFyaS81MzcuMzY,', '2015-06-04 12:38:22'),
(153, '202.22.195.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2xvZ2luLnBocA,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 12:41:24'),
(154, '202.22.195.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2xvZ2luLnBocA,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 12:42:18'),
(155, '202.22.195.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2xvZ2luLnBocA,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 12:46:46'),
(156, '202.22.195.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2xvZ2luLnBocA,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 12:48:30'),
(157, '202.22.195.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2luZGV4LnBocA,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 13:21:14'),
(158, '202.22.195.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2xvZ2luLnBocA,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 13:21:28'),
(159, '202.22.195.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL3VzZXJzaW5ndXAucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 13:25:53'),
(160, '202.22.195.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL3VzZXJzaW5ndXAucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 13:26:38'),
(161, '202.22.195.54', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 13:42:44'),
(162, '202.22.195.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 14:14:31'),
(163, '202.22.195.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 14:34:04'),
(164, '202.22.195.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 14:35:06'),
(165, '202.22.195.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 14:36:05'),
(166, '202.22.195.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 14:42:34'),
(167, '202.22.195.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL3VzZXJzaW5ndXAucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 14:42:56'),
(168, '202.22.195.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-04 15:03:35'),
(169, '202.22.195.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 15:06:03'),
(170, '202.22.195.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2luZGV4LnBocA,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 15:08:14'),
(171, '202.22.195.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-04 15:15:45'),
(172, '202.22.195.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL3Byb2R1Y3RkZXRhaWxzLnBocA,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 15:35:19'),
(173, '202.22.195.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-04 16:24:48'),
(174, '103.231.228.202', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL21vcnNoZWQvcG9ydGZvbGlvLw,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-04 17:04:25'),
(175, '103.231.228.202', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-04 17:06:25'),
(176, '103.231.228.202', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL21vcnNoZWQvcG9ydGZvbGlvLw,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-04 17:34:02'),
(177, '103.231.228.202', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Nob3dwYWdlLnBocD9waWQ9MTAx', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-04 17:34:47'),
(178, '202.134.10.138', 'aHR0cDovL2wuZmFjZWJvb2suY29tL2xzci5waHA_dT1odHRwJTNBJTJGJTJGYW1hZGVyY29kZS5jb20lMkZzb2JhcmJhemFhciUyRiZleHQ9MTQzMzQ0NTE1MyZoYXNoPUFjbjN6SmVybzYzbEJIQ0xDd2NIRGJXbkdpeFNJLWVJb0hKYlhIQW0zYTRHWnc,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozNy4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM3LjA,', '2015-06-04 19:11:35'),
(179, '182.48.95.98', 'aHR0cDovL3BsdXMudXJsLmdvb2dsZS5jb20vdXJsP3NhPWomdXJsPWh0dHAlM0ElMkYlMkZhbWFkZXJjb2RlLmNvbSUyRnNvYmFyYmF6YWFyJTJGJnVjdD0xNDMzNDMyMTI2JnVzZz1Kbkd4ajVESm9BTTNNMWJoUWplblBSR3FBcHMu', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6MzguMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC8zOC4w', '2015-06-04 20:05:27'),
(180, '182.48.95.98', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL3Byb2R1Y3RkZXRhaWxzLnBocD9waWQ9MTQ4', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6MzguMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC8zOC4w', '2015-06-04 20:06:35'),
(181, '182.48.95.98', 'aHR0cDovL3BsdXMudXJsLmdvb2dsZS5jb20vdXJsP3NhPWomdXJsPWh0dHAlM0ElMkYlMkZhbWFkZXJjb2RlLmNvbSUyRnNvYmFyYmF6YWFyJTJGJnVjdD0xNDMzNDMyMTI2JnVzZz1Kbkd4ajVESm9BTTNNMWJoUWplblBSR3FBcHMu', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6MzguMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC8zOC4w', '2015-06-04 20:06:48'),
(182, '66.249.84.170', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjo2LjApIEdlY2tvLzIwMTEwODE0IEZpcmVmb3gvNi4wIEdvb2dsZSBmYXZpY29u', '2015-06-05 04:39:03'),
(183, '150.242.106.2', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-06-05 04:46:19'),
(184, '202.4.104.186', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-05 04:46:25'),
(185, '202.22.195.54', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-05 04:51:33'),
(186, '150.242.106.2', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-06-05 04:54:33'),
(187, '202.22.195.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL3VzZXJzaW5ndXAucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-05 04:58:51'),
(188, '202.22.195.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2luZGV4LnBocA,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-05 04:59:33'),
(189, '202.22.195.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2luZGV4LnBocA,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-05 05:00:03'),
(190, '202.22.195.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2luZGV4LnBocA,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-05 05:00:24'),
(191, '150.242.106.2', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-06-05 12:40:08'),
(192, '150.242.106.2', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-06-05 12:51:10'),
(193, '202.22.195.54', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-05 14:40:58'),
(194, '202.22.195.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-05 16:04:18'),
(195, '66.249.84.170', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjo2LjApIEdlY2tvLzIwMTEwODE0IEZpcmVmb3gvNi4wIEdvb2dsZSBmYXZpY29u', '2015-06-06 04:43:16'),
(196, '103.49.201.230', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4zOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-06-06 05:23:29'),
(197, '103.49.201.230', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2xvZ2luLnBocA,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4zOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-06-06 05:24:28'),
(198, '103.49.201.230', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2luZGV4LnBocA,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4zOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-06-06 05:27:56'),
(199, '103.49.201.230', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4zOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-06-06 05:28:14'),
(200, '103.49.201.230', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Nob3dwYWdlLnBocD9waWQ9ODA,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4zOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-06-06 05:29:13'),
(201, '103.49.201.230', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4zOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-06-06 05:38:13'),
(202, '103.49.201.230', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4zOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-06-06 05:42:04'),
(203, '103.49.201.230', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4zOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-06-06 05:42:51'),
(204, '103.19.253.122', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4yOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-06-06 06:02:07'),
(205, '202.22.195.54', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-06 06:05:01'),
(206, '202.22.195.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-06 06:06:26'),
(207, '103.19.253.122', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4yOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-06-06 06:14:45'),
(208, '103.19.253.122', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4yOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-06-06 06:15:51'),
(209, '202.22.195.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-06 06:54:58'),
(210, '202.22.195.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-06 06:55:24'),
(211, '173.252.90.122', '', 'ZmFjZWJvb2tleHRlcm5hbGhpdC8xLjEgKCtodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9leHRlcm5hbGhpdF91YXRleHQucGhwKQ,,', '2015-06-06 07:14:05'),
(212, '103.231.228.202', 'aHR0cHM6Ly93d3cuZmFjZWJvb2suY29tLw,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-06 07:14:05'),
(213, '103.49.201.230', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4zOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-06-06 10:25:46'),
(214, '103.49.201.230', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4zOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-06-06 10:30:43'),
(215, '203.82.193.66', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6MzguMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC8zOC4w', '2015-06-06 13:29:42'),
(216, '203.82.193.66', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyLw,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6MzguMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC8zOC4w', '2015-06-06 13:30:58'),
(217, '202.22.195.54', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-07 06:11:13'),
(218, '202.22.195.54', 'aHR0cDovL3d3dy5hbWFkZXJjb2RlLmNvbS9zb2JhcmJhemFhci8,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-07 06:14:19'),
(219, '202.22.195.54', 'aHR0cDovL3d3dy5hbWFkZXJjb2RlLmNvbS9zb2JhcmJhemFhci8,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-07 06:14:44'),
(220, '202.22.195.54', 'aHR0cDovL3d3dy5hbWFkZXJjb2RlLmNvbS9zb2JhcmJhemFhci9hZHNzaG93cGFnZS5waHA_cGlkPTk5', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-07 06:29:54'),
(221, '202.22.195.54', 'aHR0cDovL3d3dy5hbWFkZXJjb2RlLmNvbS9zb2JhcmJhemFhci9hZHNzaG93cGFnZS5waHA_cGlkPTk5', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-07 06:29:58'),
(222, '202.22.195.54', 'aHR0cDovL3d3dy5hbWFkZXJjb2RlLmNvbS9zb2JhcmJhemFhci9hZHNzaG93cGFnZS5waHA_cGlkPTk5', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-07 06:30:02'),
(223, '202.22.195.54', 'aHR0cDovL3d3dy5hbWFkZXJjb2RlLmNvbS9zb2JhcmJhemFhci9hZHNzaG93cGFnZS5waHA_cGlkPTEz', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-07 06:31:03'),
(224, '202.22.195.54', 'aHR0cDovL3d3dy5hbWFkZXJjb2RlLmNvbS9zb2JhcmJhemFhci9hZHNzaG93cGFnZS5waHA_cGlkPTEz', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-07 06:31:28'),
(225, '202.22.195.54', 'aHR0cDovL3d3dy5hbWFkZXJjb2RlLmNvbS9zb2JhcmJhemFhci9hZHNzaG93cGFnZS5waHA_cGlkPTEwMA,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-07 07:05:41'),
(226, '202.22.195.54', 'aHR0cDovL3d3dy5hbWFkZXJjb2RlLmNvbS9zb2JhcmJhemFhci9hZHNzaG93cGFnZS5waHA_cGlkPTEwMA,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-07 07:05:44'),
(227, '202.22.195.54', 'aHR0cDovL3d3dy5hbWFkZXJjb2RlLmNvbS9zb2JhcmJhemFhci9hZHNzaG93cGFnZS5waHA_cGlkPTEwMA,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-07 07:05:48'),
(228, '202.22.195.54', 'aHR0cDovL3d3dy5hbWFkZXJjb2RlLmNvbS9zb2JhcmJhemFhci9hZHNzaG93cGFnZS5waHA_cGlkPTEwMQ,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-07 07:07:40'),
(229, '103.49.201.230', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4zOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-06-07 07:08:44'),
(230, '202.22.195.54', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-07 07:09:00'),
(231, '123.49.2.106', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-07 07:09:27'),
(232, '123.49.2.106', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-07 08:10:03'),
(233, '103.231.228.202', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL21vcnNoZWQvcG9ydGZvbGlvL2luZGV4Lmh0bWw,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-07 12:16:55'),
(234, '103.231.228.202', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL21vcnNoZWQvcG9ydGZvbGlvL2luZGV4Lmh0bWw,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-07 12:17:38'),
(235, '103.231.228.202', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Nob3dwYWdlLnBocD9waWQ9MTM,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-07 12:18:19'),
(236, '202.22.195.54', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-07 13:27:59');
INSERT INTO `userinfo` (`id`, `userip`, `referer`, `useragent`, `visittime`) VALUES
(237, '103.231.228.202', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-07 17:35:27'),
(238, '103.231.228.202', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Nob3dwYWdlLnBocD9waWQ9MTAx', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-07 17:36:14'),
(239, '103.231.228.202', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-07 17:40:32'),
(240, '103.231.228.202', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL3Byb2R1Y3RkZXRhaWxzLnBocD9waWQ9MTcw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-07 17:46:21'),
(241, '103.231.228.202', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Nob3dwYWdlLnBocD9waWQ9MTI,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-07 17:48:09'),
(242, '103.231.228.202', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Nob3dwYWdlLnBocD9waWQ9MjY,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-07 17:48:29'),
(243, '103.231.228.202', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Nob3dwYWdlLnBocD9waWQ9MTM,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-07 17:49:22'),
(244, '103.231.228.202', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Nob3dwYWdlLnBocD9waWQ9NDY,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-07 17:50:15'),
(245, '103.231.228.202', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Nob3dwYWdlLnBocD9waWQ9NDY,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-07 17:51:18'),
(246, '103.231.228.202', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Nob3dwYWdlLnBocD9waWQ9NDY,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-07 17:52:15'),
(247, '124.6.238.245', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6MzguMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC8zOC4w', '2015-06-08 06:03:36'),
(248, '103.231.162.34', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-08 13:15:32'),
(249, '103.231.162.34', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-08 13:19:50'),
(250, '103.19.253.122', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4yOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-06-08 13:37:44'),
(251, '202.126.124.130', 'aHR0cDovL3d3dy5nb29nbGUuY29tL3VybD9xPWh0dHAlM0ElMkYlMkZhbWFkZXJjb2RlLmNvbSUyRnNvYmFyYmF6YWFyJTJGJnNhPUQmc250ej0xJnVzZz1BRlFqQ05Hd3Z0ckJjd1dHQjB4Zld1OS00NUtYUkdMRE5R', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBydjozOC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzM4LjA,', '2015-06-08 15:02:51'),
(252, '103.231.228.202', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL21vcnNoZWQvcG9ydGZvbGlvL3BvcnRmb2xpby5odG1s', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-08 17:35:56'),
(253, '103.231.162.34', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-08 20:45:00'),
(254, '103.230.105.24', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-06-09 06:16:32'),
(255, '103.230.105.24', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-06-09 06:29:40'),
(256, '202.22.195.54', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-09 07:41:53'),
(257, '202.22.195.54', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-09 07:51:53'),
(258, '202.22.195.54', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-09 07:52:59'),
(259, '202.22.195.54', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-09 07:53:06'),
(260, '202.22.195.54', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-09 08:10:57'),
(261, '202.22.195.54', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-09 08:11:59'),
(262, '202.22.195.54', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-09 08:26:02'),
(263, '202.22.195.54', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-09 11:03:47'),
(264, '103.230.106.2', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-06-09 14:34:43'),
(265, '202.22.195.54', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-09 14:35:02'),
(266, '103.230.106.2', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL3Byb2R1Y3RkZXRhaWxzLnBocD9waWQ9MTI3', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-06-09 14:38:14'),
(267, '202.4.173.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-06-09 14:39:41'),
(268, '202.4.173.54', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-06-09 14:45:21'),
(269, '103.231.228.202', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-09 18:58:24'),
(270, '103.231.228.202', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Nob3dwYWdlLnBocD9waWQ9MTAw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xKSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNDMuMC4yMzU3LjgxIFNhZmFyaS81MzcuMzY,', '2015-06-09 19:00:24'),
(271, '103.49.201.230', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4zOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-06-10 02:46:12'),
(272, '103.49.201.230', 'aHR0cDovL2FtYWRlcmNvZGUuY29tL3NvYmFyYmF6YWFyL2Fkc3Bvc3QucGhw', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4zOyBXT1c2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzQzLjAuMjM1Ny44MSBTYWZhcmkvNTM3LjM2', '2015-06-10 02:51:16'),
(273, '::1', 'aHR0cDovL2xvY2FsaG9zdC9yMzAvcHJvamVjdC8,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNTQuMC4yODQwLjk5IFNhZmFyaS81MzcuMzY,', '2016-11-22 09:44:57'),
(274, '::1', 'aHR0cDovL2xvY2FsaG9zdC9yMzAvcHJvamVjdC8,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNTQuMC4yODQwLjk5IFNhZmFyaS81MzcuMzY,', '2016-11-22 09:51:02'),
(275, '::1', 'aHR0cDovL2xvY2FsaG9zdC9yMzAvcHJvamVjdC9zb2JhcmJhemFhci9hZHNzaG93cGFnZS5waHA_cGlkPTEwNQ,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNTQuMC4yODQwLjk5IFNhZmFyaS81MzcuMzY,', '2016-11-22 09:52:00'),
(276, '::1', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNTQuMC4yODQwLjk5IFNhZmFyaS81MzcuMzY,', '2016-11-22 09:56:01'),
(277, '::1', 'aHR0cDovL2xvY2FsaG9zdC9yMzAvcHJvamVjdC9zb2JhcmJhemFhci9hZHNwb3N0LnBocA,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNTQuMC4yODQwLjk5IFNhZmFyaS81MzcuMzY,', '2016-11-22 10:03:01'),
(278, '::1', 'aHR0cDovL2xvY2FsaG9zdC9yMzAvcHJvamVjdC9zb2JhcmJhemFhci9wcm9kdWN0ZGV0YWlscy5waHA_cGlkPTE3NA,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNTQuMC4yODQwLjk5IFNhZmFyaS81MzcuMzY,', '2016-11-22 10:04:29'),
(279, '::1', 'aHR0cDovL2xvY2FsaG9zdC9yMzAvcHJvamVjdC9zb2JhcmJhemFhci9wcm9kdWN0ZGV0YWlscy5waHA_cGlkPTE1MQ,,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNTQuMC4yODQwLjk5IFNhZmFyaS81MzcuMzY,', '2016-11-22 10:08:32'),
(280, '::1', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNTQuMC4yODQwLjk5IFNhZmFyaS81MzcuMzY,', '2016-11-22 10:10:57'),
(281, '::1', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNTQuMC4yODQwLjk5IFNhZmFyaS81MzcuMzY,', '2016-11-22 10:12:33'),
(282, '::1', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNTQuMC4yODQwLjk5IFNhZmFyaS81MzcuMzY,', '2016-11-22 10:13:05'),
(283, '::1', 'aHR0cDovL2xvY2FsaG9zdC9yMzAvcHJvamVjdC8,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNTQuMC4yODQwLjk5IFNhZmFyaS81MzcuMzY,', '2016-11-22 10:22:32'),
(284, '192.168.0.115', 'aHR0cDovLzE5Mi4xNjguMC4xMDcvcjMwL3Byb2plY3Qv', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXaW42NDsgeDY0OyBydjo1MC4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzUwLjA,', '2016-11-23 09:30:54'),
(285, '192.168.0.131', 'aHR0cDovLzE5Mi4xNjguMC4xMjkvcjMwL3Byb2plY3Qv', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6NTAuMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC81MC4w', '2016-11-24 12:10:57'),
(286, '192.168.0.131', 'aHR0cDovLzE5Mi4xNjguMC4xMjkvcjMwL3Byb2plY3Qvc29iYXJiYXphYXIv', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6NTAuMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC81MC4w', '2016-11-24 12:12:21'),
(287, '192.168.0.131', 'aHR0cDovLzE5Mi4xNjguMC4xMjkvcjMwL3Byb2plY3Qv', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6NTAuMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC81MC4w', '2016-11-24 12:13:12'),
(288, '192.168.0.126', 'aHR0cDovLzE5Mi4xNjguMC4xMDUvcjMwL3Byb2plY3Qv', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6NTAuMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC81MC4w', '2016-12-01 09:32:51'),
(289, '192.168.0.126', '', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6NTAuMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC81MC4w', '2016-12-01 09:33:58'),
(290, '192.168.0.110', 'aHR0cDovLzE5Mi4xNjguMC4xMDAvcjMwL3Byb2plY3Qv', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXaW42NDsgeDY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvNTQuMC4yODQwLjk5IFNhZmFyaS81MzcuMzY,', '2016-12-03 10:41:32'),
(291, '192.168.0.123', 'aHR0cDovLzE5Mi4xNjguMC4xMDQvcjMwL3Byb2plY3Qv', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXT1c2NDsgcnY6NTAuMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC81MC4w', '2016-12-04 09:34:28'),
(292, '192.168.1.8', 'aHR0cDovLzE5Mi4xNjguMS4yMS9yMzAvcHJvamVjdC8,', 'TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgNi4xOyBXaW42NDsgeDY0OyBydjo1My4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzUzLjA,', '2017-05-13 07:00:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(7) NOT NULL,
  `name` varchar(40) NOT NULL,
  `username` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `usertype` varchar(15) NOT NULL,
  `registrationdate` datetime NOT NULL,
  `lastlogindate` datetime NOT NULL,
  `blocked` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `phone`, `usertype`, `registrationdate`, `lastlogindate`, `blocked`) VALUES
(1, 'Lokman Hossen', 'lokman', 'lokman@gmail.com', '12345', '01712314259', 'Individual', '2015-04-12 01:07:36', '0000-00-00 00:00:00', 'N'),
(2, 'Azimul Haque', 'xion', 'xion@gmail.com', '123456', '01711123456', 'Business', '2015-04-15 00:00:00', '2015-04-15 00:00:00', 'N'),
(3, 'amra', 'kojon', 'amara@gmail.com', 'admin', '1234565', 'Individual', '2015-04-21 04:46:59', '0000-00-00 00:00:00', 'N'),
(4, 'jahir', 'jahir', 'jahir@gmail.com', '123456', '12357689', 'Individual', '2015-04-21 04:48:07', '0000-00-00 00:00:00', ''),
(5, 'tareq', 'hasan', 'tareq@gamil.com', '12345', '12345', 'Individual', '2015-04-21 04:50:18', '0000-00-00 00:00:00', ''),
(7, 'momen', 'bdmomen', 'bobbysanders399@gmail.com', '@bobby399@', '01957021260', 'Individual', '2015-04-21 05:48:22', '0000-00-00 00:00:00', ''),
(8, 'Golam Morshed', 'Morshed', 'asik@gmail.com', '12345', '01918306970', 'Individual', '2015-04-21 06:24:28', '0000-00-00 00:00:00', ''),
(9, 'newcat', 'newcat', 'new@gmail.com', '12345', '34545', 'Individual', '2015-05-23 04:16:37', '0000-00-00 00:00:00', ''),
(10, 'kamal', 'kamal', 'kamal@gmail.com', 'kamal', '3132365', 'Individual', '2015-05-24 02:27:42', '0000-00-00 00:00:00', ''),
(11, 'Md.Atiar Rahman', 'atik', 'atik0908@gmail.com', 'atik', '01917163005', 'Business', '2015-05-31 06:11:09', '0000-00-00 00:00:00', ''),
(12, 'Atiar', 'atiar', 'atik0908@gmail.com', 'atik0908', '01917163005', 'Individual', '2015-06-04 11:13:15', '0000-00-00 00:00:00', ''),
(13, 'amra kojon', 'amadercode', 'amadercode@gmail.com', '123456', '123456789', 'Individual', '2015-06-06 11:33:46', '0000-00-00 00:00:00', ''),
(18, 'aaaaaaaaaaaaaaaa', 'aaaaaaaaaaaa', 'aaaaaaaaa@gmail.com', '123456789', '123456789', 'Individual', '2017-08-16 05:55:01', '0000-00-00 00:00:00', ''),
(16, 'Hafizur Rahman', 'hafiz', 'hafiz.ubikm@gmail.com', '123456', '123456', 'Individual', '2015-06-08 07:18:11', '0000-00-00 00:00:00', ''),
(17, 'idbbisewnew', 'idb bisew', 'idbbisewnew@gmail.com', '12345', '09090909', 'Individual', '2016-11-22 03:53:58', '0000-00-00 00:00:00', ''),
(19, 'bbbb', 'bbbbbbbbb', 'bbbb@llgmail.com', '1234', '123456', 'Individual', '2017-08-16 06:08:55', '0000-00-00 00:00:00', ''),
(20, 'cccccc', 'cccccccccccc', 'ccccc@gmail.com', '12345', '123456', 'Individual', '2017-08-16 06:11:21', '0000-00-00 00:00:00', ''),
(21, 'ssss', 'sssssssssss', 'sssssss@gmail.com', 'md5123456)', '123456', 'Individual', '2017-08-16 06:20:16', '0000-00-00 00:00:00', ''),
(22, 'kkkk', 'kkkkkkkkkkkkkk', 'kkk@gmail.com', '123456', '123456', 'Individual', '2017-08-16 06:35:53', '0000-00-00 00:00:00', ''),
(23, 'mehedy', 'mehedy', 'mehedy19@gmail.com', 'mehedy19', '123456', 'Individual', '2017-08-19 07:21:15', '0000-00-00 00:00:00', ''),
(24, 'shumon', 'shumon', 'ah.shumon.bd@fgfg.fgf', '12345', '123456', 'Individual', '2017-10-17 07:16:11', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Structure for view `total_category_item`
--
DROP TABLE IF EXISTS `total_category_item`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `total_category_item` AS select `product`.`categoryid` AS `categoryid`,count(0) AS `totalitem` from `product` group by `product`.`categoryid` order by `product`.`categoryid`;

-- --------------------------------------------------------

--
-- Structure for view `total_subcat_item`
--
DROP TABLE IF EXISTS `total_subcat_item`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `total_subcat_item` AS select `product`.`subcategoryid` AS `subcategoryid`,count(0) AS `totalitem` from `product` group by `product`.`subcategoryid` order by `product`.`subcategoryid`;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD FULLTEXT KEY `description` (`description`);

--
-- Indexes for table `product_archive`
--
ALTER TABLE `product_archive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subarea`
--
ALTER TABLE `subarea`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=230;
--
-- AUTO_INCREMENT for table `product_archive`
--
ALTER TABLE `product_archive`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subarea`
--
ALTER TABLE `subarea`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=293;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

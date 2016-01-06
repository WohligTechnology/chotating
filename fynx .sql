-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 14, 2015 at 08:28 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fynx`
--

-- --------------------------------------------------------

--
-- Table structure for table `accesslevel`
--

CREATE TABLE IF NOT EXISTS `accesslevel` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accesslevel`
--

INSERT INTO `accesslevel` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'Operator'),
(3, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `telephone`, `comment`, `timestamp`) VALUES
(1, 'Wohlig', 'wohlig@wohlig.com', '02227691245', 'Very Good', '2015-12-01 09:45:09');

-- --------------------------------------------------------

--
-- Table structure for table `fynx_cart`
--

CREATE TABLE IF NOT EXISTS `fynx_cart` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `design` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fynx_cart`
--

INSERT INTO `fynx_cart` (`id`, `user`, `quantity`, `product`, `timestamp`, `design`) VALUES
(4, 7, 1, '3', '2015-12-12 07:14:36', '');

-- --------------------------------------------------------

--
-- Table structure for table `fynx_category`
--

CREATE TABLE IF NOT EXISTS `fynx_category` (
  `id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fynx_category`
--

INSERT INTO `fynx_category` (`id`, `order`, `name`, `parent`, `status`, `image1`, `image2`) VALUES
(1, 0, 'Men', '', '1', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `fynx_color`
--

CREATE TABLE IF NOT EXISTS `fynx_color` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fynx_color`
--

INSERT INTO `fynx_color` (`id`, `name`, `status`, `timestamp`) VALUES
(1, 'Black', '1', '2015-12-11 06:44:44'),
(2, 'Blue', '1', '2015-12-11 06:44:45');

-- --------------------------------------------------------

--
-- Table structure for table `fynx_config`
--

CREATE TABLE IF NOT EXISTS `fynx_config` (
  `id` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fynx_config`
--

INSERT INTO `fynx_config` (`id`, `text`, `content`) VALUES
(1, 'Enter Text For Config', 'Enter Content For Config');

-- --------------------------------------------------------

--
-- Table structure for table `fynx_credit`
--

CREATE TABLE IF NOT EXISTS `fynx_credit` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `credit` int(11) NOT NULL,
  `addcredit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fynx_designer`
--

CREATE TABLE IF NOT EXISTS `fynx_designer` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `noofdesigns` int(11) NOT NULL,
  `designerid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `commission` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fynx_designer`
--

INSERT INTO `fynx_designer` (`id`, `email`, `noofdesigns`, `designerid`, `name`, `contact`, `commission`) VALUES
(1, 'pooja1@wohlig.com', 2, 'AS123', 'Aditya', '57876', '40'),
(2, 'jagruti@wohlig.com', 2, 'J12', 'Jagruti Patil', '79798', '10');

-- --------------------------------------------------------

--
-- Table structure for table `fynx_designs`
--

CREATE TABLE IF NOT EXISTS `fynx_designs` (
  `id` int(11) NOT NULL,
  `designer` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fynx_designs`
--

INSERT INTO `fynx_designs` (`id`, `designer`, `image`, `status`, `timestamp`) VALUES
(4, 2, '3Q9Q53316.JPG', '2', '2015-12-02 05:31:50'),
(6, 1, 'schools-rugby_1417187c1.jpg', '1', '2015-12-02 14:21:15');

-- --------------------------------------------------------

--
-- Table structure for table `fynx_homeslide`
--

CREATE TABLE IF NOT EXISTS `fynx_homeslide` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `centeralign` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fynx_homeslide`
--

INSERT INTO `fynx_homeslide` (`id`, `name`, `link`, `target`, `status`, `image`, `template`, `class`, `text`, `centeralign`) VALUES
(1, 'Demo', 'demo.com', 'demo', '2', '61fWioKx9aL._SX522__9.jpg', 'demo', 'demo', 'demo', 'demo');

-- --------------------------------------------------------

--
-- Table structure for table `fynx_newsletter`
--

CREATE TABLE IF NOT EXISTS `fynx_newsletter` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fynx_newsletter`
--

INSERT INTO `fynx_newsletter` (`id`, `user`, `email`, `status`) VALUES
(1, '1', 'poojathakare55@gmail.com', '2');

-- --------------------------------------------------------

--
-- Table structure for table `fynx_offer`
--

CREATE TABLE IF NOT EXISTS `fynx_offer` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `fromdate` date NOT NULL,
  `todate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fynx_offerproduct`
--

CREATE TABLE IF NOT EXISTS `fynx_offerproduct` (
  `id` int(11) NOT NULL,
  `offer` int(11) NOT NULL,
  `product` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fynx_order`
--

CREATE TABLE IF NOT EXISTS `fynx_order` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `billingaddress` varchar(255) NOT NULL,
  `billingcontact` varchar(255) NOT NULL,
  `billingcity` varchar(255) NOT NULL,
  `billingstate` varchar(255) NOT NULL,
  `billingpincode` varchar(255) NOT NULL,
  `billingcountry` varchar(255) NOT NULL,
  `shippingcity` varchar(255) NOT NULL,
  `shippingaddress` varchar(255) NOT NULL,
  `shippingname` varchar(255) NOT NULL,
  `shippingcountry` varchar(255) NOT NULL,
  `shippingcontact` varchar(255) NOT NULL,
  `shippingstate` varchar(255) NOT NULL,
  `shippingpincode` varchar(255) NOT NULL,
  `trackingcode` varchar(255) NOT NULL,
  `defaultcurrency` varchar(255) NOT NULL,
  `shippingmethod` varchar(255) NOT NULL,
  `orderstatus` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fynx_order`
--

INSERT INTO `fynx_order` (`id`, `user`, `firstname`, `lastname`, `email`, `billingaddress`, `billingcontact`, `billingcity`, `billingstate`, `billingpincode`, `billingcountry`, `shippingcity`, `shippingaddress`, `shippingname`, `shippingcountry`, `shippingcontact`, `shippingstate`, `shippingpincode`, `trackingcode`, `defaultcurrency`, `shippingmethod`, `orderstatus`, `timestamp`) VALUES
(1, 1, 'Sachin', 'Patil', 'poojathakare55@gmail.com', 'huh', 'yugh', 'u', 'h', 'hu', 'yh', 'y', 'h', 'uh', 'u', 'yu', 'u', 'h', 'yu', 'u', 'u', '1', '2015-12-02 14:19:04'),
(2, 1, 'Ramesh', 'Pal', 'wohlig@wohlig.com', 'arioli', '987987', 'navimumbai', 'maharashtra', '400708', 'india', 'navimumbai', 'arioli', 'puja', 'india', '987987', 'maharashtra', '400709', '789', '987', 'road', '1', '2015-12-02 14:20:06'),
(3, 2, 'Pooja', 'Thakare', 'pthakare33@email.com', 'sion', '0221978622', 'mum', 'mah', '400506', 'ind', 'nmum', 'airoli', 'abcxyz', 'india', '02214668', 'maharashra', '400708', '', '', 'gjgj', '1', '2015-12-08 06:44:22');

-- --------------------------------------------------------

--
-- Table structure for table `fynx_orderitem`
--

CREATE TABLE IF NOT EXISTS `fynx_orderitem` (
  `id` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `product` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `finalprice` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fynx_orderitem`
--

INSERT INTO `fynx_orderitem` (`id`, `discount`, `order`, `product`, `quantity`, `price`, `finalprice`) VALUES
(1, 79, 1, '2', '1', '500', '700'),
(3, 200, 2, '2', '1', '500', '750');

-- --------------------------------------------------------

--
-- Table structure for table `fynx_product`
--

CREATE TABLE IF NOT EXISTS `fynx_product` (
  `id` int(11) NOT NULL,
  `subcategory` int(11) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `visibility` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `relatedproduct` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `sizechart` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `image4` varchar(255) NOT NULL,
  `image5` varchar(255) NOT NULL,
  `baseproduct` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fynx_product`
--

INSERT INTO `fynx_product` (`id`, `subcategory`, `quantity`, `name`, `type`, `description`, `visibility`, `price`, `relatedproduct`, `category`, `color`, `size`, `sizechart`, `status`, `sku`, `image1`, `image2`, `image3`, `image4`, `image5`, `baseproduct`) VALUES
(1, 1, '1', 'Polo', '1', 'Polo Tshirt', '1', '800', '', '1', '1', '1', '1', '2', 'A110', 't1.jpg', 't2.jpg', 't3.jpg', 't4.jpg', 't5.jpg', ''),
(2, 2, '1', 'Graphics', '2', 'Round Graphics shirt', '1', '750', '', '1', '2', '2', '2', '2', 'Z123', 't11.jpg', 't21.jpg', 't31.jpg', 't41.jpg', 't51.jpg', 'polo'),
(3, 3, '1', 'Adidas', '3', 'Good quality Chain ', '1', '680', '', '1', '1', '1', '3', '2', 'G12d', 't12.jpg', 't22.jpg', 't32.jpg', 't42.jpg', 't52.jpg', 'graphics');

-- --------------------------------------------------------

--
-- Table structure for table `fynx_productimage`
--

CREATE TABLE IF NOT EXISTS `fynx_productimage` (
  `id` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fynx_size`
--

CREATE TABLE IF NOT EXISTS `fynx_size` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fynx_size`
--

INSERT INTO `fynx_size` (`id`, `status`, `name`) VALUES
(1, 1, 'xxl'),
(2, 1, 'xl');

-- --------------------------------------------------------

--
-- Table structure for table `fynx_sizechart`
--

CREATE TABLE IF NOT EXISTS `fynx_sizechart` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fynx_sizechart`
--

INSERT INTO `fynx_sizechart` (`id`, `name`, `image`) VALUES
(1, 'For Shirt', ''),
(2, 'For Graphics', ''),
(3, 'For Hoodies', '');

-- --------------------------------------------------------

--
-- Table structure for table `fynx_subcategory`
--

CREATE TABLE IF NOT EXISTS `fynx_subcategory` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `order` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fynx_subcategory`
--

INSERT INTO `fynx_subcategory` (`id`, `category`, `name`, `order`, `status`, `image1`, `image2`) VALUES
(1, 1, 'T-shirt', '', '1', '', ''),
(2, 1, 'Caps', '', '1', '', ''),
(3, 1, 'Shoes', '', '1', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `fynx_type`
--

CREATE TABLE IF NOT EXISTS `fynx_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `subcategory` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fynx_type`
--

INSERT INTO `fynx_type` (`id`, `name`, `status`, `timestamp`, `subcategory`) VALUES
(1, 'Polo Shirts', '1', '2015-12-14 07:17:07', 1),
(2, 'Graphic T-Shirts', '1', '2015-12-14 07:17:09', 1),
(3, 'Tanks', '1', '2015-12-14 07:17:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fynx_useraddress`
--

CREATE TABLE IF NOT EXISTS `fynx_useraddress` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `billingcity` varchar(255) NOT NULL,
  `billingstate` varchar(255) NOT NULL,
  `billingcountry` varchar(255) NOT NULL,
  `shippingcity` varchar(255) NOT NULL,
  `shippingstate` varchar(255) NOT NULL,
  `shippingcountry` varchar(255) NOT NULL,
  `shippingpincode` varchar(255) NOT NULL,
  `billingaddress` text NOT NULL,
  `shippingaddress` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fynx_wishlist`
--

CREATE TABLE IF NOT EXISTS `fynx_wishlist` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `product` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `design` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fynx_wishlist`
--

INSERT INTO `fynx_wishlist` (`id`, `user`, `product`, `timestamp`, `design`) VALUES
(7, 7, '3', '2015-12-12 07:32:15', '1');

-- --------------------------------------------------------

--
-- Table structure for table `logintype`
--

CREATE TABLE IF NOT EXISTS `logintype` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logintype`
--

INSERT INTO `logintype` (`id`, `name`) VALUES
(1, 'Facebook'),
(2, 'Twitter'),
(3, 'Email'),
(4, 'Google');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `linktype` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `isactive` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `description`, `keyword`, `url`, `linktype`, `parent`, `isactive`, `order`, `icon`) VALUES
(1, 'Users', '', '', 'site/viewusers', 1, 0, 1, 1, 'icon-user'),
(2, 'Dashboard', '', '', 'site/index', 1, 0, 1, 0, 'icon-dashboard'),
(3, 'Product', '', '', 'site/viewproduct', 1, 0, 1, 2, 'icon-dashboard'),
(4, 'Designer\n', '', '', 'site/viewdesigner\n', 1, 0, 1, 3, 'icon-dashboard'),
(5, 'Homeslide\n\n', '', '', 'site/viewhomeslide\n', 1, 0, 1, 4, 'icon-dashboard'),
(6, 'Sub Category\r\n\r\n', '', '', 'site/viewsubcategory\r\n\r\n\r\n', 1, 0, 1, 4, 'icon-dashboard'),
(7, 'Type\n', '', '', 'site/viewtype\r\n', 1, 0, 1, 4, 'icon-dashboard'),
(8, 'Category\n', '', '', 'site/viewcategory \r\n\r\n', 1, 0, 1, 4, 'icon-dashboard'),
(9, 'Color\n', '', '', 'site/viewcolor\r\n\r\n', 1, 0, 1, 4, 'icon-dashboard'),
(10, 'Offer\n', '', '', 'site/viewoffer\r\n\r\n', 1, 0, 1, 4, 'icon-dashboard'),
(11, 'Order\n', '', '', 'site/vieworder\r\n\r\n', 1, 0, 1, 4, 'icon-dashboard'),
(12, 'Newsletter', '', '', 'site/viewnewsletter\r\n\r\n\r\n', 1, 0, 1, 4, 'icon-dashboard'),
(14, 'Size\r\n', '', '', 'site/viewsize\r\n\r\n\r\n', 1, 0, 1, 4, 'icon-dashboard'),
(15, 'Size Chart\r\n\r\n', '', '', 'site/viewsizechart\r\n\r\n\r\n', 1, 0, 1, 4, 'icon-dashboard'),
(16, 'Config\r\n\r\n', '', '', 'site/viewconfig\r\n\r\n\r\n', 1, 0, 1, 4, 'icon-dashboard'),
(17, 'Contact us\n\n', '', '', 'site/viewcontact\r\n\r\n', 1, 0, 1, 4, 'icon-dashboard');

-- --------------------------------------------------------

--
-- Table structure for table `menuaccess`
--

CREATE TABLE IF NOT EXISTS `menuaccess` (
  `menu` int(11) NOT NULL,
  `access` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menuaccess`
--

INSERT INTO `menuaccess` (`menu`, `access`) VALUES
(1, 1),
(4, 1),
(2, 1),
(3, 1),
(5, 1),
(6, 1),
(7, 1),
(7, 3),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orderstatus`
--

CREATE TABLE IF NOT EXISTS `orderstatus` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderstatus`
--

INSERT INTO `orderstatus` (`id`, `name`) VALUES
(1, 'Pending'),
(2, 'Processing'),
(3, 'Shipping'),
(4, 'Delivered'),
(5, 'Cancel');

-- --------------------------------------------------------

--
-- Table structure for table `relatedproduct`
--

CREATE TABLE IF NOT EXISTS `relatedproduct` (
  `id` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `relatedproduct` int(11) NOT NULL,
  `design` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `relatedproduct`
--

INSERT INTO `relatedproduct` (`id`, `product`, `relatedproduct`, `design`) VALUES
(1, 2, 1, '4'),
(2, 3, 1, '6'),
(3, 3, 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE IF NOT EXISTS `statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`) VALUES
(1, 'Disable'),
(2, 'Enable');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `accesslevel` int(11) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `socialid` varchar(255) NOT NULL,
  `logintype` varchar(255) NOT NULL,
  `json` text NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `billingaddress` text NOT NULL,
  `billingcity` varchar(255) NOT NULL,
  `billingstate` varchar(255) NOT NULL,
  `billingcountry` varchar(255) NOT NULL,
  `billingcontact` varchar(255) NOT NULL,
  `billingpincode` varchar(255) NOT NULL,
  `shippingaddress` text NOT NULL,
  `shippingcity` varchar(255) NOT NULL,
  `shippingcountry` varchar(255) NOT NULL,
  `shippingstate` varchar(255) NOT NULL,
  `shippingpincode` varchar(255) NOT NULL,
  `shippingname` varchar(255) NOT NULL,
  `shippingcontact` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `registrationno` varchar(255) NOT NULL,
  `vatnumber` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `google` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `email`, `accesslevel`, `timestamp`, `status`, `image`, `username`, `socialid`, `logintype`, `json`, `firstname`, `lastname`, `phone`, `billingaddress`, `billingcity`, `billingstate`, `billingcountry`, `billingcontact`, `billingpincode`, `shippingaddress`, `shippingcity`, `shippingcountry`, `shippingstate`, `shippingpincode`, `shippingname`, `shippingcontact`, `currency`, `credit`, `companyname`, `registrationno`, `vatnumber`, `country`, `fax`, `gender`, `facebook`, `google`, `twitter`, `street`, `address`, `pincode`, `state`, `dob`, `city`) VALUES
(1, 'wohlig', 'a63526467438df9566c508027d9cb06b', 'wohlig@wohlig.com', 1, '0000-00-00 00:00:00', 1, 'images_(2)1.jpg', '', '', 'Facebook', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '0000-00-00', ''),
(6, 'Pooja Thakare', '', 'pooja.wohlig@gmail.com', 3, '2015-12-09 06:02:37', 1, 'https://lh5.googleusercontent.com/-5B1PwZZrwdI/AAAAAAAAAAI/AAAAAAAAABw/J3Hf871N8IE/photo.jpg', '', '103402210128529539675', 'Google', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '103402210128529539675', '', '', '', '', '', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL,
  `onuser` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `onuser`, `status`, `description`, `timestamp`) VALUES
(1, 1, 1, 'User Address Edited', '2014-05-12 06:50:21'),
(2, 1, 1, 'User Details Edited', '2014-05-12 06:51:43'),
(3, 1, 1, 'User Details Edited', '2014-05-12 06:51:53'),
(4, 4, 1, 'User Created', '2014-05-12 06:52:44'),
(5, 4, 1, 'User Address Edited', '2014-05-12 12:31:48'),
(6, 23, 2, 'User Created', '2014-10-07 06:46:55'),
(7, 24, 2, 'User Created', '2014-10-07 06:48:25'),
(8, 25, 2, 'User Created', '2014-10-07 06:49:04'),
(9, 26, 2, 'User Created', '2014-10-07 06:49:16'),
(10, 27, 2, 'User Created', '2014-10-07 06:52:18'),
(11, 28, 2, 'User Created', '2014-10-07 06:52:45'),
(12, 29, 2, 'User Created', '2014-10-07 06:53:10'),
(13, 30, 2, 'User Created', '2014-10-07 06:53:33'),
(14, 31, 2, 'User Created', '2014-10-07 06:55:03'),
(15, 32, 2, 'User Created', '2014-10-07 06:55:33'),
(16, 33, 2, 'User Created', '2014-10-07 06:59:32'),
(17, 34, 2, 'User Created', '2014-10-07 07:01:18'),
(18, 35, 2, 'User Created', '2014-10-07 07:01:50'),
(19, 34, 2, 'User Details Edited', '2014-10-07 07:04:34'),
(20, 18, 2, 'User Details Edited', '2014-10-07 07:05:11'),
(21, 18, 2, 'User Details Edited', '2014-10-07 07:05:45'),
(22, 18, 2, 'User Details Edited', '2014-10-07 07:06:03'),
(23, 7, 6, 'User Created', '2014-10-17 06:22:29'),
(24, 7, 6, 'User Details Edited', '2014-10-17 06:32:22'),
(25, 7, 6, 'User Details Edited', '2014-10-17 06:32:37'),
(26, 8, 6, 'User Created', '2014-11-15 12:05:52'),
(27, 9, 6, 'User Created', '2014-12-02 10:46:36'),
(28, 9, 6, 'User Details Edited', '2014-12-02 10:47:34'),
(29, 4, 6, 'User Details Edited', '2014-12-03 10:34:49'),
(30, 4, 6, 'User Details Edited', '2014-12-03 10:36:34'),
(31, 4, 6, 'User Details Edited', '2014-12-03 10:36:49'),
(32, 8, 6, 'User Details Edited', '2014-12-03 10:47:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accesslevel`
--
ALTER TABLE `accesslevel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fynx_cart`
--
ALTER TABLE `fynx_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fynx_category`
--
ALTER TABLE `fynx_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fynx_color`
--
ALTER TABLE `fynx_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fynx_config`
--
ALTER TABLE `fynx_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fynx_credit`
--
ALTER TABLE `fynx_credit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fynx_designer`
--
ALTER TABLE `fynx_designer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fynx_designs`
--
ALTER TABLE `fynx_designs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fynx_homeslide`
--
ALTER TABLE `fynx_homeslide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fynx_newsletter`
--
ALTER TABLE `fynx_newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fynx_offer`
--
ALTER TABLE `fynx_offer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fynx_offerproduct`
--
ALTER TABLE `fynx_offerproduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fynx_order`
--
ALTER TABLE `fynx_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fynx_orderitem`
--
ALTER TABLE `fynx_orderitem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fynx_product`
--
ALTER TABLE `fynx_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fynx_productimage`
--
ALTER TABLE `fynx_productimage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fynx_size`
--
ALTER TABLE `fynx_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fynx_sizechart`
--
ALTER TABLE `fynx_sizechart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fynx_subcategory`
--
ALTER TABLE `fynx_subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fynx_type`
--
ALTER TABLE `fynx_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fynx_useraddress`
--
ALTER TABLE `fynx_useraddress`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fynx_wishlist`
--
ALTER TABLE `fynx_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logintype`
--
ALTER TABLE `logintype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderstatus`
--
ALTER TABLE `orderstatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relatedproduct`
--
ALTER TABLE `relatedproduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accesslevel`
--
ALTER TABLE `accesslevel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `fynx_cart`
--
ALTER TABLE `fynx_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `fynx_category`
--
ALTER TABLE `fynx_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `fynx_color`
--
ALTER TABLE `fynx_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `fynx_config`
--
ALTER TABLE `fynx_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `fynx_credit`
--
ALTER TABLE `fynx_credit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fynx_designer`
--
ALTER TABLE `fynx_designer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `fynx_designs`
--
ALTER TABLE `fynx_designs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `fynx_homeslide`
--
ALTER TABLE `fynx_homeslide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `fynx_newsletter`
--
ALTER TABLE `fynx_newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `fynx_offer`
--
ALTER TABLE `fynx_offer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fynx_offerproduct`
--
ALTER TABLE `fynx_offerproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fynx_order`
--
ALTER TABLE `fynx_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `fynx_orderitem`
--
ALTER TABLE `fynx_orderitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `fynx_product`
--
ALTER TABLE `fynx_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `fynx_productimage`
--
ALTER TABLE `fynx_productimage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fynx_size`
--
ALTER TABLE `fynx_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `fynx_sizechart`
--
ALTER TABLE `fynx_sizechart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `fynx_subcategory`
--
ALTER TABLE `fynx_subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `fynx_type`
--
ALTER TABLE `fynx_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `fynx_useraddress`
--
ALTER TABLE `fynx_useraddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fynx_wishlist`
--
ALTER TABLE `fynx_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `logintype`
--
ALTER TABLE `logintype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `relatedproduct`
--
ALTER TABLE `relatedproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

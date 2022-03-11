-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2022 at 05:24 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `com_logo` varchar(100) DEFAULT NULL,
  `com_name` varchar(100) NOT NULL,
  `com_email` varchar(60) NOT NULL,
  `com_phone` varchar(15) DEFAULT NULL,
  `com_address` varchar(255) DEFAULT NULL,
  `cur_format` varchar(10) NOT NULL,
  `admin_role` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `username`, `password`, `com_logo`, `com_name`, `com_email`, `com_phone`, `com_address`, `cur_format`, `admin_role`) VALUES
(1, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', NULL, 'Inventory', 'inventory@gmail.com', NULL, NULL, '$', 1);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_title` text NOT NULL,
  `brand_cat` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`, `brand_cat`) VALUES
(13, 'Realme', 9),
(12, 'Lenovo', 9),
(11, 'LG', 9),
(10, 'Samsung', 9);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL,
  `products` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `products`) VALUES
(9, 'Electronics', 0),
(10, 'Men', 0),
(11, 'Women', 0),
(12, 'Furniture', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `monumber` varchar(10) NOT NULL,
  `userdate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `name`, `email`, `monumber`, `userdate`) VALUES
(157, '', '', '', '2022-01-20 09:28:16'),
(158, '', '', '', '2022-01-20 09:30:23'),
(159, '', '', '', '2022-01-20 09:33:41'),
(160, '', '', '', '2022-01-20 18:03:25'),
(161, '', '', '', '2022-01-20 18:03:28'),
(162, '', '', '', '2022-01-20 18:04:51'),
(163, '', '', '', '2022-01-20 18:07:32'),
(164, '', '', '', '2022-01-20 19:01:14'),
(165, '', '', '', '2022-01-20 19:01:17'),
(166, '', '', '', '2022-01-20 19:01:46'),
(167, '', '', '', '2022-01-20 19:09:05'),
(168, '', '', '', '2022-01-20 19:09:07'),
(169, '', '', '', '2022-01-23 17:34:32');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `s_no` int(11) NOT NULL,
  `site_name` varchar(100) NOT NULL,
  `site_title` varchar(100) DEFAULT NULL,
  `site_logo` varchar(100) NOT NULL,
  `site_desc` varchar(255) DEFAULT NULL,
  `footer_text` varchar(100) NOT NULL,
  `currency_format` varchar(20) NOT NULL,
  `contact_phone` varchar(15) DEFAULT NULL,
  `contact_email` varchar(100) DEFAULT NULL,
  `contact_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`s_no`, `site_name`, `site_title`, `site_logo`, `site_desc`, `footer_text`, `currency_format`, `contact_phone`, `contact_email`, `contact_address`) VALUES
(1, 'Indian Coffee Bazaar', 'Online Coffee Shop', 'logo.png', 'With it being February and still too cold to do any exploring outside, for this bit of description practice, I decided to visit a new, interesting indoor place. One where I could still find a lot to describe without having to freeze my butt off in the pro', 'Created By Sanket Prajapati | All Rights Reserved', 'Rs.', '9904491017', 'indiancoffee@gmail.com', '#123, Lorem Ipsum');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `order_id` int(11) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `product_qty` varchar(100) NOT NULL,
  `total_amount` varchar(10) NOT NULL,
  `product_user` int(11) NOT NULL,
  `order_date` varchar(11) NOT NULL,
  `pay_req_id` varchar(100) DEFAULT NULL,
  `confirm` tinyint(4) NOT NULL DEFAULT 0,
  `delivery` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`order_id`, `product_id`, `product_qty`, `total_amount`, `product_user`, `order_date`, `pay_req_id`, `confirm`, `delivery`) VALUES
(22, '12', '1', '299', 2, '2020-11-17', '8b0791e3eb764e45b497b0f0c401d9d6', 1, 0),
(23, '12', '1', '299', 2, '2020-11-17', '92c9c474ae864d01b81f7e2f4d3a098e', 1, 0),
(41, '11,12,', '1,1,', '1058', 2, '2020-12-01', '792c6616026948e48a2fcc07eb35c158', 0, 1),
(43, '11,12,', '1,1,', '1058', 2, '2020-12-02', '37473185580340ab8c54d102204c7bf9', 0, 1),
(53, '4,', '1,', '40', 15, '2022-01-19', 'd49df3ede85246b99e241ae697984b77', 0, 0),
(52, '7,', '6,', '240', 15, '2022-01-19', '9fbdcaa9826e48718c91e55556d29980', 0, 0),
(51, '4,', '2,', '80', 15, '2022-01-19', 'e6029350cbe04abebc2963eb6c763c27', 0, 1),
(47, '4,', '1,', '40', 2, '2022-01-18', 'ab924d0853b544b88ac0c5c41df0a330', 0, 1),
(48, '7,', '4,', '160', 2, '2022-01-18', 'e315448e22ee4646ac606bcb7fe4a5d7', 0, 1),
(49, '7,', '1,', '40', 2, '2022-01-18', 'adf663c80d3c49bf8fb735d3d2a57a95', 0, 1),
(50, '7,', '12,', '480', 2, '2022-01-18', 'ea0eda57e1b84480924933a6814b637c', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `item_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `txn_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `payment_gross` float(10,2) NOT NULL,
  `currency_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `item_number`, `txn_id`, `payment_gross`, `currency_code`, `payment_status`) VALUES
(44, '4,', 'e6029350cbe04abebc2963eb6c763c27', 80.00, '', 'credit'),
(45, '7,', '9fbdcaa9826e48718c91e55556d29980', 240.00, '', 'credit'),
(46, '4,', 'd49df3ede85246b99e241ae697984b77', 40.00, '', 'credit');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_code` varchar(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_sub_cat` int(11) NOT NULL,
  `product_brand` int(100) DEFAULT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_desc` text NOT NULL,
  `featured_image` text NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `product_keywords` text DEFAULT NULL,
  `product_views` int(11) DEFAULT 0,
  `product_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `product_cat`, `product_sub_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `featured_image`, `qty`, `product_keywords`, `product_views`, `product_status`) VALUES
(2, '5fc500f4330ad', 9, 18, 10, 'Tasty And Healthy', '25', 'We’re starting the delicious coffee recipe train strong with this recipe for vanilla-almond coffee. It’s as simple as adding some vanilla and almond extract, which add no calories, no sugar, and no fat, all while providing some warm and delicious flavors to your coffee. It’s the perfect coffee drink to enjoy early in the morning, and it will wake your senses up from the first sip', 'menu-1.png', 10, NULL, 1, 1),
(3, '5fc500ec98a64', 9, 18, 13, 'Iced Coffee', '30', 'We’re starting the delicious coffee recipe train strong with this recipe for vanilla-almond coffee. It’s as simple as adding some vanilla and almond extract, which add no calories, no sugar, and no fat, all while providing some warm and delicious flavors to your coffee. It’s the perfect coffee drink to enjoy early in the morning, and it will wake your senses up from the first sip', 'menu-2.png', 5, NULL, 40, 1),
(4, '5fc500e4de9c2', 9, 19, 12, 'Brewed Coffee', '40', 'We’re starting the delicious coffee recipe train strong with this recipe for vanilla-almond coffee. It’s as simple as adding some vanilla and almond extract, which add no calories, no sugar, and no fat, all while providing some warm and delicious flavors to your coffee. It’s the perfect coffee drink to enjoy early in the morning, and it will wake your senses up from the first sip', 'menu-3.png', 17, NULL, 13, 1),
(5, '5fc500decacd2', 9, 19, 12, 'Almond Milk', '25', 'We’re starting the delicious coffee recipe train strong with this recipe for vanilla-almond coffee. It’s as simple as adding some vanilla and almond extract, which add no calories, no sugar, and no fat, all while providing some warm and delicious flavors to your coffee. It’s the perfect coffee drink to enjoy early in the morning, and it will wake your senses up from the first sip', 'menu-4.png', 3, NULL, 1, 1),
(6, '5fc500d9502a7', 12, 25, 0, 'Black Coffee', '35', 'We’re starting the delicious coffee recipe train strong with this recipe for vanilla-almond coffee. It’s as simple as adding some vanilla and almond extract, which add no calories, no sugar, and no fat, all while providing some warm and delicious flavors to your coffee. It’s the perfect coffee drink to enjoy early in the morning, and it will wake your senses up from the first sip', 'menu7.png', 7, NULL, 1, 1),
(7, '5fc500d3ae088', 12, 25, 0, 'Nitro Cold Coffee', '40', 'We’re starting the delicious coffee recipe train strong with this recipe for vanilla-almond coffee. It’s as simple as adding some vanilla and almond extract, which add no calories, no sugar, and no fat, all while providing some warm and delicious flavors to your coffee. It’s the perfect coffee drink to enjoy early in the morning, and it will wake your senses up from the first sip', 'menu8.png', 2, NULL, 5, 1),
(8, '5fc500cd9a2c4', 12, 24, 0, 'Cappucino', '50', 'We’re starting the delicious coffee recipe train strong with this recipe for vanilla-almond coffee. It’s as simple as adding some vanilla and almond extract, which add no calories, no sugar, and no fat, all while providing some warm and delicious flavors to your coffee. It’s the perfect coffee drink to enjoy early in the morning, and it will wake your senses up from the first sip', 'menu9.png', 9, NULL, 2, 1),
(14, '5fc500cd9a2c6', 12, 24, 0, 'Americano Coffee', '45', 'We’re starting the delicious coffee recipe train strong with this recipe for vanilla-almond coffee. It’s as simple as adding some vanilla and almond extract, which add no calories, no sugar, and no fat, all while providing some warm and delicious flavors to your coffee. It’s the perfect coffee drink to enjoy early in the morning, and it will wake your senses up from the first sip', 'menu10.png', 10, NULL, 2, 1),
(15, '5fc500cd9a2c8', 12, 24, 0, 'Expresso Coffee', '60', 'We’re starting the delicious coffee recipe train strong with this recipe for vanilla-almond coffee. It’s as simple as adding some vanilla and almond extract, which add no calories, no sugar, and no fat, all while providing some warm and delicious flavors to your coffee. It’s the perfect coffee drink to enjoy early in the morning, and it will wake your senses up from the first sip', 'menu11.png', 5, NULL, 2, 1),
(16, '5fc500cd9a2c7', 12, 24, 0, 'Latte Coffee', '50', 'We’re starting the delicious coffee recipe train strong with this recipe for vanilla-almond coffee. It’s as simple as adding some vanilla and almond extract, which add no calories, no sugar, and no fat, all while providing some warm and delicious flavors to your coffee. It’s the perfect coffee drink to enjoy early in the morning, and it will wake your senses up from the first sip', 'menu12.png', 9, NULL, 2, 1),
(17, '5fc500decacd3', 9, 19, 12, 'Mocha Coffee', '60', 'We’re starting the delicious coffee recipe train strong with this recipe for vanilla-almond coffee. It’s as simple as adding some vanilla and almond extract, which add no calories, no sugar, and no fat, all while providing some warm and delicious flavors to your coffee. It’s the perfect coffee drink to enjoy early in the morning, and it will wake your senses up from the first sip', 'menu13.png', 4, NULL, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_cart`
--

CREATE TABLE `product_cart` (
  `s_no` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `sub_cat_id` int(11) NOT NULL,
  `sub_cat_title` varchar(100) NOT NULL,
  `cat_parent` int(11) NOT NULL,
  `cat_products` int(11) NOT NULL DEFAULT 0,
  `show_in_header` tinyint(4) NOT NULL DEFAULT 1,
  `show_in_footer` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`sub_cat_id`, `sub_cat_title`, `cat_parent`, `cat_products`, `show_in_header`, `show_in_footer`) VALUES
(19, 'Black Coffee', 9, 2, 1, 0),
(21, 'Brewed Coffee', 9, 0, 1, 0),
(20, 'Cappucino', 9, 0, 1, 0),
(18, 'Latte Coffee', 9, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `city` text NOT NULL,
  `user_role` int(11) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `f_name`, `l_name`, `username`, `email`, `password`, `mobile`, `address`, `city`, `user_role`) VALUES
(2, 'user12', 'user', 'user@gmail.com', '', '24c9e15e52afc47c225b757e7bee1f9d', '9856231042', '#1234', 'delhi', 1),
(15, 'aayush', 'PRAJAPATI', 'aayush@gmail.com', '', '6bc80b9416b95aac0cf7757fc1bb1e65', '07990676037', '301-JANKI AVENUE , DWARKAPURI SOC, NR.GOKUL PARTY PLOT, GOTRI ,VADODARA,GUJARAT', 'vadodara', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_cart`
--
ALTER TABLE `product_cart`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`sub_cat_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product_cart`
--
ALTER TABLE `product_cart`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `sub_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

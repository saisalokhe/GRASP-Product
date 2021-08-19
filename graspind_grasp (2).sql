-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2021 at 02:31 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `graspind_grasp`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(12, 'Milk', 'Annapurna Milk', '2021-08-18 13:17:47', NULL),
(13, 'Water', 'Haripriya', '2021-08-19 07:55:13', NULL),
(14, 'Clothing', 'Mens Clothing', '2021-08-19 08:33:51', '19-08-2021 02:28:19 PM'),
(15, 'KIDS Clothing', 'All Size Kids Clothing ', '2021-08-19 08:34:59', NULL),
(18, 'Mobile', 'Brand New Mobile', '2021-08-19 08:59:49', '19-08-2021 02:30:05 PM'),
(19, 'Laptop', 'Very Good Laptops.', '2021-08-19 09:04:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(22, 18, 18, 'M33', 'Vivo', 500, 100000, 'Bhari Ahe Gheun Tak', 'Screenshot (243).png', 'Screenshot (244).png', 'Screenshot (238).png', 200, 'In Stock', '2021-08-19 09:02:44', NULL),
(23, 19, 19, 'Abhi', 'Ryzon', 79999, 80000, 'Khel Tu Khel', 'Screenshot (235).png', 'Screenshot (236).png', 'Screenshot (243).png', 500, 'In Stock', '2021-08-19 09:07:19', NULL),
(24, 19, 20, 'Inspiron 3232', 'Dell', 35220, 35000, 'Hard', 'Screenshot (241).png', 'Screenshot (244).png', 'Screenshot (243).png', 500, 'Out of Stock', '2021-08-19 09:08:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(13, 7, 'Gokul', '2021-08-18 11:53:40', NULL),
(16, 12, 'Gokul', '2021-08-18 13:18:05', '18-08-2021 06:48:22 PM'),
(17, 18, 'Oppo', '2021-08-19 09:00:23', '19-08-2021 02:31:27 PM'),
(18, 18, 'Vivo', '2021-08-19 09:00:44', NULL),
(19, 19, 'Gaming Laptop', '2021-08-19 09:05:05', NULL),
(20, 19, 'Working Laptop', '2021-08-19 09:05:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcollector`
--

CREATE TABLE `tblcollector` (
  `id` bigint(20) NOT NULL,
  `pass` text CHARACTER SET utf8 NOT NULL,
  `fname` text CHARACTER SET utf8 NOT NULL,
  `mname` text CHARACTER SET utf8 NOT NULL,
  `lname` text CHARACTER SET utf8 NOT NULL,
  `address` text CHARACTER SET utf8 NOT NULL,
  `post` text CHARACTER SET utf8 NOT NULL,
  `taluka` text CHARACTER SET utf8 NOT NULL,
  `district` text CHARACTER SET utf8 NOT NULL,
  `pin` text CHARACTER SET utf8 NOT NULL,
  `mobile1` varchar(20) CHARACTER SET utf8 NOT NULL,
  `bank` text CHARACTER SET utf8 NOT NULL,
  `branch` text CHARACTER SET utf8 NOT NULL,
  `accno` text CHARACTER SET utf8 NOT NULL,
  `ifsc` varchar(15) CHARACTER SET utf8 NOT NULL,
  `dp` text CHARACTER SET utf8 NOT NULL,
  `fileadd` text CHARACTER SET utf8 NOT NULL,
  `filepass` text CHARACTER SET utf8 NOT NULL,
  `file712` text CHARACTER SET utf8 NOT NULL,
  `userid` varchar(20) NOT NULL,
  `ip` varchar(30) NOT NULL,
  `commission` decimal(4,2) DEFAULT NULL,
  `collectorid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcollector`
--

INSERT INTO `tblcollector` (`id`, `pass`, `fname`, `mname`, `lname`, `address`, `post`, `taluka`, `district`, `pin`, `mobile1`, `bank`, `branch`, `accno`, `ifsc`, `dp`, `fileadd`, `filepass`, `file712`, `userid`, `ip`, `commission`, `collectorid`) VALUES
(4, '7c222fb2927d828af22f592134e8932480637c0d', 'Yatin', 'A', 'Shevade', 'Kolhapur', 'Bhogawati', 'karveer', 'Maharashtra', '416003', '8055357111', 'HDFC', 'Tarabai Park branch', '22221111333311', 'SBIN0000415', '', '', '', '', '1', '::1', '3.00', 'COLLECTOR4'),
(6, '7c222fb2927d828af22f592134e8932480637c0d', 'Vinit', 'A', 'Shevade', 'Kolhapur', 'Karveer', 'Karvee', 'Maharashtra', '416003', '9423825117', 'HDFC', 'Tarabai Park branch', '2222111133335', 'SBIN0000415', '', '', '', '', '4', '103.200.107.238', '5.00', 'Collector6'),
(7, '7c222fb2927d828af22f592134e8932480637c0d', 'Ajinkya', 'Anil', 'Adekar', 'Salokhenagar', 'Kolhapur', 'Panhala', 'Pune', '416654', '9595014400', 'sbi', 'pune', '12345679956', 'SBIN0005963', '', '', '', '', '4', '::1', '5.00', 'COLLECTOR7');

-- --------------------------------------------------------

--
-- Table structure for table `tblcollectorfarmer`
--

CREATE TABLE `tblcollectorfarmer` (
  `collectorid` int(11) NOT NULL,
  `farmerid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcollectorfarmer`
--

INSERT INTO `tblcollectorfarmer` (`collectorid`, `farmerid`) VALUES
(7, 'GRASP2'),
(7, 'GRASP3'),
(7, 'GRASP5');

-- --------------------------------------------------------

--
-- Table structure for table `tblfarmer`
--

CREATE TABLE `tblfarmer` (
  `id` bigint(20) NOT NULL,
  `rocid` text CHARACTER SET utf8 NOT NULL,
  `farmerid` varchar(50) NOT NULL,
  `pass` text CHARACTER SET utf8 NOT NULL,
  `fname` text CHARACTER SET utf8 NOT NULL,
  `mname` text CHARACTER SET utf8 NOT NULL,
  `lname` text CHARACTER SET utf8 NOT NULL,
  `father` text CHARACTER SET utf8 NOT NULL,
  `address` text CHARACTER SET utf8 NOT NULL,
  `post` text CHARACTER SET utf8 NOT NULL,
  `taluka` text CHARACTER SET utf8 NOT NULL,
  `district` text CHARACTER SET utf8 NOT NULL,
  `pin` text CHARACTER SET utf8 NOT NULL,
  `mobile1` varchar(10) CHARACTER SET utf8 NOT NULL,
  `mobile2` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8 NOT NULL,
  `aadhaar` varchar(20) CHARACTER SET utf8 NOT NULL,
  `cownos` int(11) NOT NULL,
  `cowlts` float NOT NULL,
  `buffnos` int(11) NOT NULL,
  `bufflts` float NOT NULL,
  `groupno` text CHARACTER SET utf8 NOT NULL,
  `acre` float NOT NULL,
  `bagayat` varchar(100) CHARACTER SET utf8 NOT NULL,
  `jirayat` varchar(100) CHARACTER SET utf8 NOT NULL,
  `padsar` varchar(100) CHARACTER SET utf8 NOT NULL,
  `organic` text CHARACTER SET utf8 NOT NULL,
  `dose` varchar(20) CHARACTER SET utf8 NOT NULL,
  `water` varchar(20) CHARACTER SET utf8 NOT NULL,
  `ditch` varchar(20) CHARACTER SET utf8 NOT NULL,
  `ready` varchar(20) CHARACTER SET utf8 NOT NULL,
  `tonic` varchar(20) CHARACTER SET utf8 NOT NULL,
  `bank` text CHARACTER SET utf8 NOT NULL,
  `branch` text CHARACTER SET utf8 NOT NULL,
  `accno` text CHARACTER SET utf8 NOT NULL,
  `ifsc` varchar(15) CHARACTER SET utf8 NOT NULL,
  `serviceperson` text CHARACTER SET utf8 NOT NULL,
  `dp` text NOT NULL,
  `fileadd` text NOT NULL,
  `filepass` text NOT NULL,
  `file712` text NOT NULL,
  `file8a` text NOT NULL,
  `userid` varchar(20) NOT NULL,
  `ip` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblfarmer`
--

INSERT INTO `tblfarmer` (`id`, `rocid`, `farmerid`, `pass`, `fname`, `mname`, `lname`, `father`, `address`, `post`, `taluka`, `district`, `pin`, `mobile1`, `mobile2`, `phone`, `aadhaar`, `cownos`, `cowlts`, `buffnos`, `bufflts`, `groupno`, `acre`, `bagayat`, `jirayat`, `padsar`, `organic`, `dose`, `water`, `ditch`, `ready`, `tonic`, `bank`, `branch`, `accno`, `ifsc`, `serviceperson`, `dp`, `fileadd`, `filepass`, `file712`, `file8a`, `userid`, `ip`) VALUES
(1, '', 'GRASP1', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 'Vinit', 'Atul', 'Shevade', 'Atul', 'Tarabai Park 232', 'Karveer', 'Karveer', 'Kolhapur', '416006', '8856924050', '8856924050', '8856924050', '111111111111', 5, 100, 5, 100, '21', 5, 'India', 'India', 'India', 'yes', 'mix', 'other', 'yes', 'no', 'yes', 'SBI', 'Kolhapur', '2222222222222222', 'SBIN0000413', 'Yatin', '1_Mr.-Vinit-Atul-Shevade2.jpg', '', '', '', '', '4', '106.76.78.154'),
(2, '', 'GRASP2', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 'Adish', 'V', 'Bhogaonkar', 'V', 'BazarBhogaon', 'BazarBhogaon', 'Panhala', 'Kolhapur', '416205', '7620444435', '8600426427', '02312664460', '111111111111', 5, 100, 10, 200, '10', 30, '10', '10', '10', 'yes', 'both', 'own', 'yes', 'yes', 'yes', 'SBI', 'Kolhapur', '222222222222', 'SBIN0000413', 'Yatin', '', '', '', '', '', '4', '117.222.9.18'),
(3, '5469', 'GRASP3', '7c222fb2927d828af22f592134e8932480637c0d', 'Abhishek', 'Dilip', 'Sawant', 'Dilip', 'Gandhinagar', 'Kolhapur', 'karveer', 'kop', '416119', '8983245149', '8983245149', '', '122334455612', 3, 15, 2, 10, '7', 20, '5', '6', '9', 'yes', 'mix', 'own', 'no', 'yes', 'no', 'ICICI', 'gnr', '30004005000', 'ICIC0004053', 'Abhishek', '3_WhatsApp Image 2021-06-10 at 20.51.43.jpeg', '3_WhatsApp Image 2021-06-17 at 15.05.09.jpeg', '3_Screenshot (16).png', '3_E5.png', '3_Screenshot (14).png', '4', '::1'),
(4, '6549', 'GRASP4', '7c222fb2927d828af22f592134e8932480637c0d', 'Om', 'Dilip', 'Sawant', 'Dilip', 'gnr', 'Kolhapur', 'karveer', 'kop', '416116', '7796734131', '7796734131', '', '258741369012', 6, 20, 3, 10, '78', 9, '3', '1', '5', 'yes', 'straight', 'own', 'yes', 'yes', 'yes', 'ICICI', 'kop', '789456123456852', 'ICIC0004055', 'Om', '', '4_E2_1.png', '4_E3.png', '4_E3.1.png', '4_E23.png', '4', '::1'),
(5, '564', 'GRASP5', '7c222fb2927d828af22f592134e8932480637c0d', 'Vinod', 'Sambhaji', 'Patak', 'Sambhaji', 'Csiber', 'Rajarampuri', 'Kolhapur', 'Kolhapur', '412563', '9350013339', '', '', '999990501892', 9, 20, 5, 25, '65', 20, '6', '5', '9', 'yes', 'mix', 'own', 'no', 'yes', 'no', 'sbi', 'Sangli', '7894562581473695', 'SBIN0005947', 'Vinod Pathak', '5_WhatsApp Image 2021-06-10 at 20.51.43.jpeg', '5_WhatsApp Image 2021-05-27 at 12.59.47.jpeg', '5_WhatsApp Image 2021-06-16 at 20.50.54.jpeg', '5_WhatsApp Image 2021-05-26 at 11.21.40.jpeg', '5_WhatsApp Image 2021-06-16 at 23.00.17.jpeg', '9', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `lname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) CHARACTER SET utf8 NOT NULL,
  `mobile` varchar(10) CHARACTER SET utf8 NOT NULL,
  `password` varchar(200) CHARACTER SET utf8 NOT NULL,
  `utype` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`id`, `fname`, `lname`, `email`, `mobile`, `password`, `utype`) VALUES
(1, 'Admin', 'Admin', 'bhushan.dcs@gmail.com', '9880917783', '1f9760bc7f91177b00da6192a7093af6dd72e0e4', 1),
(4, 'Admin', 'Admin', '', '8055357118', '7c222fb2927d828af22f592134e8932480637c0d', 1),
(6, 'Yatin', 'Shevade', 'yatinshevade@gmail.com', '9423825117', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 0),
(9, 'A', 'S', 'as@gmail.com', '7896541230', 'f63036841208c85f367cbb2680dea8125d001372', 0),
(11, 'Saideep', 'Salokhe', 'saideepsalokhe4957@gmail.com', '7058173956', 'bd208843440edbdbd4af8354336eebbd4ada2691', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_history`
--

CREATE TABLE `transaction_history` (
  `id` int(11) NOT NULL,
  `collector_id` varchar(15) NOT NULL,
  `farmer_id` varchar(10) NOT NULL,
  `datetime` datetime NOT NULL,
  `SNF` text NOT NULL,
  `fat` text NOT NULL,
  `quantity` text NOT NULL,
  `f_commission` text NOT NULL,
  `c_commission` text NOT NULL,
  `rate` text NOT NULL,
  `payment_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_history`
--

INSERT INTO `transaction_history` (`id`, `collector_id`, `farmer_id`, `datetime`, `SNF`, `fat`, `quantity`, `f_commission`, `c_commission`, `rate`, `payment_status`) VALUES
(1, 'COLLECTOR4', 'GRASP1', '2021-06-15 05:05:05', '20.5', '15.01', '10', '15', '30', '45', 1),
(2, 'collector6', 'GRASP2', '2021-06-06 05:55:55', '20.5', '15.01', '45', '35', '10', '40', 0),
(3, 'collector6', 'GRASP2', '0000-00-00 00:00:00', '23', '56', '57', '36', '15', '50', 0),
(4, 'collector6', 'GRASP2', '2021-07-13 12:30:59', '30', '56', '25', '36', '45', '0', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcollector`
--
ALTER TABLE `tblcollector`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblfarmer`
--
ALTER TABLE `tblfarmer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mobile1` (`mobile1`),
  ADD UNIQUE KEY `mobile2_2` (`mobile2`),
  ADD UNIQUE KEY `mobile1_2` (`mobile1`,`mobile2`),
  ADD KEY `mobile1_3` (`mobile1`,`mobile2`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`,`mobile`);

--
-- Indexes for table `transaction_history`
--
ALTER TABLE `transaction_history`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblcollector`
--
ALTER TABLE `tblcollector`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblfarmer`
--
ALTER TABLE `tblfarmer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `transaction_history`
--
ALTER TABLE `transaction_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2019 at 01:20 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant_o_s`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminstrator`
--

CREATE TABLE `adminstrator` (
  `Admin` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `Menu_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminstrator`
--

INSERT INTO `adminstrator` (`Admin`, `name`, `username`, `password`, `Menu_id`) VALUES
('000001', 'subin', 'subin@2', '1234', '01'),
('000002', 'rana', 'rana@3', '4321', '02'),
('000003', 'sakib', 'sakib@4', '98765', '03');

-- --------------------------------------------------------

--
-- Table structure for table `backup`
--

CREATE TABLE `backup` (
  `user` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `O_id` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `backup`
--

INSERT INTO `backup` (`user`, `email`, `O_id`, `password`) VALUES
('000001', 'subin@gmail.com', '01', '1234'),
('000002', 'rana@gmail.com', '02', '4321'),
('000003', 'sakib@gmail.com', '03', '98765');

-- --------------------------------------------------------

--
-- Table structure for table `chef`
--

CREATE TABLE `chef` (
  `Chef_id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile_no` int(20) NOT NULL,
  `O_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chef`
--

INSERT INTO `chef` (`Chef_id`, `name`, `mobile_no`, `O_id`) VALUES
('10011', 'KALAM', 1912923904, '01'),
('10012', 'RAHMAN', 1719302738, '02'),
('10013', 'MUMIN', 1501918384, '03');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `C_id` varchar(20) NOT NULL,
  `mobile_no` int(20) NOT NULL,
  `C_name` varchar(20) NOT NULL,
  `Payment_id` varchar(20) NOT NULL,
  `Food_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`C_id`, `mobile_no`, `C_name`, `Payment_id`, `Food_id`) VALUES
('10011', 1918819204, 'NILA', '001', '0001'),
('10012', 1420010283, 'jhuma', '002', '0002'),
('10013', 1712034876, 'aronno', '003', '0003');

-- --------------------------------------------------------

--
-- Table structure for table `fooditem`
--

CREATE TABLE `fooditem` (
  `Food_id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `Quantity` int(10) NOT NULL,
  `Price` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fooditem`
--

INSERT INTO `fooditem` (`Food_id`, `name`, `Quantity`, `Price`) VALUES
('0001', 'indian Maharaja Thal', 2, '900'),
('0002', 'chinese to set menu', 2, '1000'),
('0003', 'bangali set menu', 2, '930');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `Menu_id` varchar(20) NOT NULL,
  `Price` int(20) NOT NULL,
  `Food_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`Menu_id`, `Price`, `Food_id`) VALUES
('01', 900, '0001'),
('02', 1000, '0002'),
('03', 930, '0003');

-- --------------------------------------------------------

--
-- Table structure for table `order001`
--

CREATE TABLE `order001` (
  `O_id` varchar(20) NOT NULL,
  `O_date` varchar(20) NOT NULL,
  `C_id` varchar(20) NOT NULL,
  `Quantity` int(10) NOT NULL,
  `Pickup_date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order001`
--

INSERT INTO `order001` (`O_id`, `O_date`, `C_id`, `Quantity`, `Pickup_date`) VALUES
('01', '09 dec 19', '10011', 2, '09 dec 19'),
('02', '09 dec 19', '10012', 2, '09 dec 19'),
('03', '08 dec 19', '10013', 2, '08 dec 19');

-- --------------------------------------------------------

--
-- Table structure for table `orderitem`
--

CREATE TABLE `orderitem` (
  `O_id` varchar(20) NOT NULL,
  `Quantity` varchar(20) NOT NULL,
  `Price` varchar(10) NOT NULL,
  `Food_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderitem`
--

INSERT INTO `orderitem` (`O_id`, `Quantity`, `Price`, `Food_id`) VALUES
('01', '2', '900', '0001'),
('02', '2', '1000', '0002'),
('03', '2', '930', '0003');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Pay_id` varchar(20) NOT NULL,
  `c_d` varchar(20) NOT NULL,
  `O_id` varchar(20) NOT NULL,
  `payment_date` varchar(20) NOT NULL,
  `amount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Pay_id`, `c_d`, `O_id`, `payment_date`, `amount`) VALUES
('00001', '100012', '01', '09 dec 19', 900),
('00002', '100012', '02', '09 dec 19', 1000),
('00003', '100013', '03', '08 dec 19', 930);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminstrator`
--
ALTER TABLE `adminstrator`
  ADD PRIMARY KEY (`Admin`),
  ADD KEY `Menu_id` (`Menu_id`);

--
-- Indexes for table `backup`
--
ALTER TABLE `backup`
  ADD PRIMARY KEY (`user`),
  ADD KEY `O_id` (`O_id`);

--
-- Indexes for table `chef`
--
ALTER TABLE `chef`
  ADD PRIMARY KEY (`Chef_id`),
  ADD KEY `O_id` (`O_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`C_id`);

--
-- Indexes for table `fooditem`
--
ALTER TABLE `fooditem`
  ADD PRIMARY KEY (`Food_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`Menu_id`),
  ADD KEY `Food_id` (`Food_id`);

--
-- Indexes for table `order001`
--
ALTER TABLE `order001`
  ADD PRIMARY KEY (`O_id`),
  ADD KEY `C_id` (`C_id`);

--
-- Indexes for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD PRIMARY KEY (`O_id`),
  ADD KEY `Food_id` (`Food_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Pay_id`),
  ADD KEY `O_id` (`O_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chef`
--
ALTER TABLE `chef`
  ADD CONSTRAINT `chef_ibfk_1` FOREIGN KEY (`O_id`) REFERENCES `order001` (`O_id`);

--
-- Constraints for table `fooditem`
--
ALTER TABLE `fooditem`
  ADD CONSTRAINT `fooditem_ibfk_1` FOREIGN KEY (`Food_id`) REFERENCES `menu` (`Food_id`) ON UPDATE CASCADE;

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`Menu_id`) REFERENCES `adminstrator` (`Menu_id`) ON UPDATE CASCADE;

--
-- Constraints for table `order001`
--
ALTER TABLE `order001`
  ADD CONSTRAINT `order001_ibfk_1` FOREIGN KEY (`C_id`) REFERENCES `customer` (`C_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `order001_ibfk_2` FOREIGN KEY (`O_id`) REFERENCES `orderitem` (`O_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `order001_ibfk_4` FOREIGN KEY (`O_id`) REFERENCES `payment` (`O_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `order001_ibfk_5` FOREIGN KEY (`O_id`) REFERENCES `backup` (`O_id`) ON UPDATE CASCADE;

--
-- Constraints for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD CONSTRAINT `orderitem_ibfk_1` FOREIGN KEY (`Food_id`) REFERENCES `fooditem` (`Food_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2017 at 07:37 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `billingdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `addcategory`
--

CREATE TABLE IF NOT EXISTS `addcategory` (
  `Category` varchar(50) NOT NULL,
  PRIMARY KEY (`Category`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addcategory`
--

INSERT INTO `addcategory` (`Category`) VALUES
('Burger'),
('Coffee'),
('Pizza'),
('Sandwich');

-- --------------------------------------------------------

--
-- Table structure for table `additem`
--

CREATE TABLE IF NOT EXISTS `additem` (
  `ItemCode` int(10) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `SubCategory` varchar(50) NOT NULL,
  `ItemName` varchar(50) NOT NULL,
  `Rate` int(50) NOT NULL,
  `Description` varchar(500) NOT NULL,
  PRIMARY KEY (`ItemCode`),
  KEY `Category` (`Category`),
  KEY `SubCategory` (`SubCategory`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `additem`
--

INSERT INTO `additem` (`ItemCode`, `Category`, `SubCategory`, `ItemName`, `Rate`, `Description`) VALUES
(100, 'Burger', 'Bun', 'Brown Base', 25, 'Made of Whole Wheat Atta. No Maida. '),
(101, 'Burger', 'Bun', 'White Bun', 20, 'Made of 100% maida. \nNot good for health.\nCauses cancer'),
(103, 'Burger', 'Cream', 'Brown', 20, 'Low fat'),
(104, 'Burger', 'Cream', 'White', 10, 'High fat'),
(105, 'Burger', 'Sauce', 'Mustard', 25, 'Delicious'),
(106, 'Burger', 'Sauce', 'tomato', 20, 'Made of fresh tomatoes\n'),
(107, 'Pizza', 'Base', 'pan', 45, 'Made of Maida'),
(108, 'Pizza', 'Base', 'Cheese', 60, 'made of Maida filled with cheese'),
(109, 'Pizza', 'Cheese', 'Mozrella', 90, 'Yummmmmmmmmmyyyyyyyyyyyyy'),
(110, 'Pizza', 'Cheese', 'Cheese Slice', 50, 'Low chlosterol'),
(111, 'Coffee', 'Coffee Beans', 'Whole Beans', 50, 'Supirior'),
(112, 'Coffee', 'Coffee Beans', 'VIA', 100, 'Alternate'),
(113, 'Coffee', 'Milk', 'Low Fat', 20, 'Cow Milk'),
(114, 'Coffee', 'Milk', 'High fat', 35, 'Buffalo Milk'),
(115, 'Coffee', 'Sugar', 'Brown ', 20, ''),
(116, 'Coffee', 'Sugar', 'White', 15, ''),
(117, 'Sandwich', 'Bread', 'Brown', 20, 'Made of Wheat'),
(118, 'Sandwich', 'Bread', 'White', 15, 'Made of maida'),
(119, 'Sandwich', 'Sandwich Cream', 'mayonies', 90, 'Delicious'),
(120, 'Sandwich', 'Sandwich Cream', 'White', 70, '							'),
(121, 'Sandwich', 'Sandwich Filling', 'Cabbage with cream', 60, ''),
(122, 'Sandwich', 'Sandwich Filling', 'Mix veg filling', 50, ''),
(123, 'Pizza', 'Pizza Sauce', 'Mustard', 50, 'Made of mustard'),
(124, 'Pizza', 'Pizza Sauce', 'Tomato', 40, 'Made of tomatoes\n'),
(125, 'Pizza', 'Toppings', 'Olives', 40, ''),
(126, 'Pizza', 'Toppings', 'Jalepeno', 50, ''),
(127, 'Burger', 'Filling', 'Potatoe Spicy Filling', 50, 'Made of Potatoes'),
(128, 'Burger', 'Filling', 'Potatoe Low Spicy Filling', 40, 'NA'),
(129, 'Burger', 'Filling', 'Cheese Slice', 25, '');

-- --------------------------------------------------------

--
-- Table structure for table `addsubcategory`
--

CREATE TABLE IF NOT EXISTS `addsubcategory` (
  `Category` varchar(50) NOT NULL,
  `subcategory` varchar(50) NOT NULL,
  PRIMARY KEY (`subcategory`),
  KEY `Category` (`Category`),
  KEY `Category_2` (`Category`),
  KEY `Category_3` (`Category`),
  KEY `Category_4` (`Category`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addsubcategory`
--

INSERT INTO `addsubcategory` (`Category`, `subcategory`) VALUES
('Burger', 'Bun'),
('Burger', 'Cream'),
('Burger', 'Filling'),
('Burger', 'Sauce'),
('Coffee', 'Coffee Beans'),
('Coffee', 'Milk'),
('Coffee', 'Sugar'),
('Pizza', 'Base'),
('Pizza', 'Cheese'),
('Pizza', 'Pizza Sauce'),
('Pizza', 'Toppings'),
('Sandwich', 'Bread'),
('Sandwich', 'Sandwich Cream'),
('Sandwich', 'Sandwich Filling');

-- --------------------------------------------------------

--
-- Table structure for table `adduser`
--

CREATE TABLE IF NOT EXISTS `adduser` (
  `Name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `phonenumber` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `UserType` varchar(50) NOT NULL,
  `DOB` date NOT NULL,
  `userpic` varchar(150) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `phonenumber` (`phonenumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adduser`
--

INSERT INTO `adduser` (`Name`, `address`, `city`, `state`, `phonenumber`, `gender`, `country`, `username`, `password`, `UserType`, `DOB`, `userpic`) VALUES
('Manish', '213, UE - II', 'Jalandhar', 'Punjab', '7894561230', 'Male', 'India', 'manish', '123', 'Admin', '0000-00-00', ''),
('Navkaran', '213 Model Town', 'Jalandhar', 'Punjab', '8974562233', 'Male', 'India', 'navkaran', '123', 'Admin', '1993-11-15', 'uploads\\default.jpg'),
('Navkaran', '213 Model Town', 'Jalandhar', 'Punjab', '7974562233', 'Male', 'India', 'navkaran1', '123', 'Admin', '1993-11-15', 'uploads\\1492163382416healingtool.jpg'),
('Rahul Ahuja', '123, UE - II', 'Jalandhar', 'Punjab', '7874561230', 'Male', 'India', 'rahula', '123', 'Employee', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `billdetails`
--

CREATE TABLE IF NOT EXISTS `billdetails` (
  `SrNo` int(10) NOT NULL AUTO_INCREMENT,
  `BillNo` int(10) NOT NULL,
  `ItemNo` varchar(50) NOT NULL,
  `ItemName` varchar(50) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `SubCategory` varchar(50) NOT NULL,
  `Price` int(10) NOT NULL,
  PRIMARY KEY (`SrNo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Dumping data for table `billdetails`
--

INSERT INTO `billdetails` (`SrNo`, `BillNo`, `ItemNo`, `ItemName`, `Category`, `SubCategory`, `Price`) VALUES
(1, 7, '', 'Brown', 'Sandwich', 'Bread', 20),
(2, 8, '', 'Brown Base', 'Burger', 'Bun', 25),
(3, 8, '', 'Potatoe Low Spicy Filling', 'Burger', 'Filling', 40),
(4, 8, '', 'Brown', 'Burger', 'Cream', 20),
(5, 9, '', 'Brown Base', 'Burger', 'Bun', 25),
(6, 9, '', 'Brown', 'Burger', 'Cream', 20),
(7, 9, '', 'pan', 'Pizza', 'Base', 45),
(8, 9, '', 'Jalepeno', 'Pizza', 'Toppings', 50),
(9, 9, '', 'Mozrella', 'Pizza', 'Cheese', 90),
(10, 10, '', 'Mozrella', 'Pizza', 'Cheese', 90),
(11, 11, '', 'Cheese Slice', 'Pizza', 'Cheese', 50),
(12, 12, '', 'Brown Base', 'Burger', 'Bun', 25),
(13, 12, '', 'Cheese Slice', 'Burger', 'Filling', 25),
(14, 13, '', 'Brown Base', 'Burger', 'Bun', 25),
(15, 14, '', 'Brown Base', 'Burger', 'Bun', 25),
(16, 14, '', 'Potatoe Low Spicy Filling', 'Burger', 'Filling', 40),
(17, 14, '', 'Potatoe Low Spicy Filling', 'Burger', 'Filling', 40),
(18, 15, '', 'Brown Base', 'Burger', 'Bun', 25),
(19, 15, '', 'Potatoe Spicy Filling', 'Burger', 'Filling', 50),
(20, 15, '', 'Mustard', 'Burger', 'Sauce', 25),
(21, 16, '', 'Brown Base', 'Burger', 'Bun', 25),
(22, 16, '', 'Brown', 'Burger', 'Cream', 20),
(23, 17, '', 'Whole Beans', 'Coffee', 'Coffee Beans', 50),
(24, 17, '', 'Low Fat', 'Coffee', 'Milk', 20),
(25, 18, '', 'White', 'Burger', 'Cream', 10),
(26, 19, '', 'Brown Base', 'Burger', 'Bun', 25),
(27, 20, '', 'Brown Base', 'Burger', 'Bun', 25),
(28, 21, '', 'Brown Base', 'Burger', 'Bun', 25),
(29, 21, '', 'Brown', 'Burger', 'Cream', 20),
(30, 21, '', 'Potatoe Spicy Filling', 'Burger', 'Filling', 50),
(31, 21, '', 'Mustard', 'Burger', 'Sauce', 25),
(32, 22, '', 'Whole Beans', 'Coffee', 'Coffee Beans', 50),
(33, 22, '', 'Low Fat', 'Coffee', 'Milk', 20),
(34, 22, '', 'Brown Base', 'Burger', 'Bun', 25),
(35, 22, '', 'Brown', 'Burger', 'Cream', 20),
(36, 22, '', 'mayonies', 'Sandwich', 'Sandwich Cream', 90),
(37, 22, '', 'Mix veg filling', 'Sandwich', 'Sandwich Filling', 50),
(38, 23, '', 'Brown Base', 'Burger', 'Bun', 25),
(39, 23, '', 'tomato', 'Burger', 'Sauce', 20),
(40, 23, '', 'pan', 'Pizza', 'Base', 45),
(41, 24, '', 'Low Fat', 'Coffee', 'Milk', 20),
(42, 25, '', 'Brown Base', 'Burger', 'Bun', 25),
(43, 25, '', 'Whole Beans', 'Coffee', 'Coffee Beans', 50),
(44, 28, 'Item 1', 'Brown Base', 'Burger', 'Bun', 25),
(45, 28, 'Item 2', 'Brown Base', 'Burger', 'Bun', 25),
(46, 29, 'Item 2', 'Brown Base', 'Burger', 'Bun', 25);

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE IF NOT EXISTS `billing` (
  `BillNumber` int(10) NOT NULL,
  `CusName` varchar(50) NOT NULL,
  `CusCon` varchar(50) NOT NULL,
  `BillTotal` int(10) NOT NULL,
  `BillDate` date NOT NULL,
  PRIMARY KEY (`BillNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`BillNumber`, `CusName`, `CusCon`, `BillTotal`, `BillDate`) VALUES
(1, '345689987', 'Rakesh', 55, '2017-04-04'),
(2, '', '', 385, '2017-04-04'),
(3, '', '', 385, '2017-04-04'),
(4, 'Rahul', '9876543210', 380, '2017-04-04'),
(5, '', '', 175, '2017-04-04'),
(6, 'Jaspreet', '7894561230', 415, '2017-04-04'),
(7, 'Manish', '9874561102', 230, '2017-04-04'),
(8, '', '', 220, '2017-04-04'),
(9, 'Piyush', '9874621212', 230, '2017-04-04'),
(10, 'shubu', '789465212', 90, '2017-04-04'),
(11, 'navu', '458795252', 50, '2017-04-12'),
(12, 'navi', '478964221', 50, '2017-04-04'),
(13, 'yushui', '456756145252', 25, '2017-04-04'),
(14, '', '', 105, '2017-04-04'),
(15, 'Manish', '9876543210', 100, '2017-04-04'),
(16, 'Rajesh', '7894561230', 45, '2017-04-04'),
(17, 'Tejinder', '7894561230', 70, '2017-04-04'),
(18, 'asd', '23452354', 10, '2017-04-04'),
(19, '', '', 45, '2017-04-05'),
(20, '', '', 95, '2017-04-05'),
(21, 'Manish', '9876543210', 120, '2017-04-05'),
(22, 'Rajesh', '9876543210', 255, '2017-04-06'),
(23, 'Rajesh', '9874864534', 90, '2017-04-06'),
(24, '', '', 20, '2017-04-10'),
(25, '', '', 75, '2017-04-11'),
(26, '', '', 95, '2017-04-11'),
(27, '', '', 70, '2017-04-11'),
(28, '', '', 50, '2017-04-11'),
(29, '', '', 25, '2017-04-18');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `additem`
--
ALTER TABLE `additem`
  ADD CONSTRAINT `catfk` FOREIGN KEY (`Category`) REFERENCES `addcategory` (`Category`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subcatfk` FOREIGN KEY (`SubCategory`) REFERENCES `addsubcategory` (`subcategory`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `addsubcategory`
--
ALTER TABLE `addsubcategory`
  ADD CONSTRAINT `catforeignkey` FOREIGN KEY (`Category`) REFERENCES `addcategory` (`Category`) ON DELETE CASCADE ON UPDATE CASCADE;
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

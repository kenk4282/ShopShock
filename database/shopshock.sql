-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2018 at 05:32 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopshock`
--
CREATE DATABASE IF NOT EXISTS `shopshock` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `shopshock`;

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
CREATE TABLE IF NOT EXISTS `bill` (
  `Bill_id` int(4) NOT NULL,
  `Cus_ID` int(4) DEFAULT NULL,
  `Emp_id` int(4) DEFAULT NULL,
  `Bill_Date` date DEFAULT NULL,
  `Bill_Status` int(2) DEFAULT NULL,
  `Remark` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`Bill_id`),
  KEY `bill_ibfk_1` (`Cus_ID`),
  KEY `bill_ibfk_2` (`Emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `bill_detail`
--

DROP TABLE IF EXISTS `bill_detail`;
CREATE TABLE IF NOT EXISTS `bill_detail` (
  `Bill_id` int(4) NOT NULL,
  `Product_ID` int(4) NOT NULL,
  `Quantity` int(4) DEFAULT NULL,
  `Unit_Price` int(4) DEFAULT NULL,
  PRIMARY KEY (`Bill_id`,`Product_ID`),
  KEY `Product_ID` (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
CREATE TABLE IF NOT EXISTS `brand` (
  `Brand_id` int(4) NOT NULL,
  `Brand_name` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`Brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`Brand_id`, `Brand_name`) VALUES
(1, 'VBK'),
(2, 'Acer'),
(3, 'NanMee Book');

-- --------------------------------------------------------

--
-- Table structure for table `catagory`
--

DROP TABLE IF EXISTS `catagory`;
CREATE TABLE IF NOT EXISTS `catagory` (
  `Cat_id` int(4) NOT NULL,
  `Cat_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `Description` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`Cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `catagory`
--

INSERT INTO `catagory` (`Cat_id`, `Cat_name`, `Description`) VALUES
(1, 'Book', 'หนังสือ'),
(2, 'Hardware', 'เครื่องใช้ไฟฟ้า'),
(3, 'Accessories', 'ของใช้ทั่วไป');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `Cus_id` int(4) NOT NULL,
  `Cus_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `Cus_phone` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`Cus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Cus_id`, `Cus_name`, `Cus_phone`) VALUES
(1, 'Customer1', '666666');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `Emp_id` int(4) NOT NULL,
  `Emp_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `Emp_phone` varchar(50) COLLATE utf8_bin NOT NULL,
  `Emp_salary` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Emp_status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`Emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Emp_id`, `Emp_name`, `Emp_phone`, `Emp_salary`, `Emp_status`) VALUES
(1204, 'staff1', '123456', '12500', '1');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `member_id` int(4) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `user` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(50) COLLATE utf8_bin NOT NULL,
  `type` varchar(2) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `name`, `user`, `password`, `type`) VALUES
(1, 'user1', 'test', '1234', '01'),
(2, 'sale1', 'sele1', 'admin', '02');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `Pay_id` int(4) NOT NULL,
  `Pay_code` int(4) DEFAULT NULL,
  `Bill_id` int(4) DEFAULT NULL,
  `Pay_date` date DEFAULT NULL,
  PRIMARY KEY (`Pay_id`),
  KEY `Bill_id` (`Bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `po`
--

DROP TABLE IF EXISTS `po`;
CREATE TABLE IF NOT EXISTS `po` (
  `PO_id` int(4) NOT NULL,
  `Emp_ID` int(4) DEFAULT NULL,
  `Sup_id` int(4) DEFAULT NULL,
  `PO_Date` date DEFAULT NULL,
  `PO_Status` int(2) DEFAULT NULL,
  `Remark` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`PO_id`),
  KEY `Emp_ID` (`Emp_ID`),
  KEY `Sup_id` (`Sup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `po`
--

INSERT INTO `po` (`PO_id`, `Emp_ID`, `Sup_id`, `PO_Date`, `PO_Status`, `Remark`) VALUES
(1, 1204, 1, '2018-04-01', 1, '-');

-- --------------------------------------------------------

--
-- Table structure for table `po_detail`
--

DROP TABLE IF EXISTS `po_detail`;
CREATE TABLE IF NOT EXISTS `po_detail` (
  `PO_id` int(4) NOT NULL,
  `Product_ID` int(4) NOT NULL,
  `Quantity` int(4) DEFAULT NULL,
  `Unit_Price` int(4) DEFAULT NULL,
  PRIMARY KEY (`PO_id`,`Product_ID`),
  KEY `Product_ID` (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `po_detail`
--

INSERT INTO `po_detail` (`PO_id`, `Product_ID`, `Quantity`, `Unit_Price`) VALUES
(1, 1, 20, 40);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `Product_id` int(4) NOT NULL,
  `Product_code` varchar(50) COLLATE utf8_bin NOT NULL,
  `Product_Name` varchar(50) COLLATE utf8_bin NOT NULL,
  `Cat_ID` int(4) NOT NULL,
  `Brand_ID` int(4) DEFAULT NULL,
  `Unit_ID` int(4) NOT NULL,
  `Cost` int(4) NOT NULL,
  `Stock_Quantity` int(4) DEFAULT NULL,
  `Order_Point` int(4) DEFAULT NULL,
  PRIMARY KEY (`Product_id`),
  KEY `Cat_ID` (`Cat_ID`),
  KEY `Unit_ID` (`Unit_ID`),
  KEY `Brand_ID` (`Brand_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Product_id`, `Product_code`, `Product_Name`, `Cat_ID`, `Brand_ID`, `Unit_ID`, `Cost`, `Stock_Quantity`, `Order_Point`) VALUES
(0, 'CNY15C10', 'ยอดนักสืบโคนัน ปี15 เล่มที่ 10', 1, 1, 1, 75, 50, 20),
(1, 'CNY15C09', 'ยอดนักสืบโคนัน ปี15 เล่มที่ 9', 1, 1, 1, 50, 20, 5),
(2, 'CNY15C10', 'ยอดนักสืบโคนัน ปี15 เล่มที่ 19', 1, 1, 1, 100, 50, 20),
(3, 'AMDZENNOTEBOOK', 'AMD ZEN2 SWIFT3', 2, 2, 2, 25000, 25, 1000),
(4, 'SUNSET', 'เก็บตะวัน', 1, 3, 1, 150, 25, 10);

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
CREATE TABLE IF NOT EXISTS `shop` (
  `Shop_id` int(4) NOT NULL,
  `Shop_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `Shop_phone` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`Shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`Shop_id`, `Shop_name`, `Shop_phone`) VALUES
(1, 'ShopShock', '9999999');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
CREATE TABLE IF NOT EXISTS `supplier` (
  `Sup_id` int(4) NOT NULL,
  `Sup_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `Sup_phone` varchar(50) COLLATE utf8_bin NOT NULL,
  `Contect_Person` varchar(50) COLLATE utf8_bin NOT NULL,
  `Contect_Phone` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`Sup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`Sup_id`, `Sup_name`, `Sup_phone`, `Contect_Person`, `Contect_Phone`) VALUES
(1, 'MegaTrade', '999999', 'nopphagaw t.', '999999');

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

DROP TABLE IF EXISTS `unit`;
CREATE TABLE IF NOT EXISTS `unit` (
  `Unit_id` int(4) NOT NULL,
  `Unit_name` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`Unit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`Unit_id`, `Unit_name`) VALUES
(1, 'เล่ม'),
(2, 'เครื่อง'),
(3, 'ชิ้น');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`Cus_ID`) REFERENCES `customer` (`Cus_id`) ON DELETE NO ACTION ON UPDATE SET NULL,
  ADD CONSTRAINT `bill_ibfk_2` FOREIGN KEY (`Emp_id`) REFERENCES `employee` (`Emp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD CONSTRAINT `bill_detail_ibfk_1` FOREIGN KEY (`Bill_id`) REFERENCES `bill` (`Bill_id`),
  ADD CONSTRAINT `bill_detail_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`Bill_id`) REFERENCES `bill` (`Bill_id`);

--
-- Constraints for table `po`
--
ALTER TABLE `po`
  ADD CONSTRAINT `po_ibfk_1` FOREIGN KEY (`Emp_ID`) REFERENCES `employee` (`Emp_id`),
  ADD CONSTRAINT `po_ibfk_2` FOREIGN KEY (`Sup_id`) REFERENCES `supplier` (`Sup_id`);

--
-- Constraints for table `po_detail`
--
ALTER TABLE `po_detail`
  ADD CONSTRAINT `po_detail_ibfk_1` FOREIGN KEY (`PO_id`) REFERENCES `po` (`PO_id`),
  ADD CONSTRAINT `po_detail_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`Cat_ID`) REFERENCES `catagory` (`Cat_id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`Unit_ID`) REFERENCES `unit` (`Unit_id`),
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`Brand_ID`) REFERENCES `brand` (`Brand_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

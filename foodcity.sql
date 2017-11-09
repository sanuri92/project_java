-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2016 at 03:51 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `foodcity`
--

-- --------------------------------------------------------

--
-- Table structure for table `boader`
--

CREATE TABLE IF NOT EXISTS `boader` (
  `BoaderID` varchar(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `NIC` varchar(10) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `ContactMobile` int(10) NOT NULL,
  `ContactHome` int(11) NOT NULL,
  `Image` varchar(100) DEFAULT NULL,
  `QR` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`BoaderID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boader`
--

INSERT INTO `boader` (`BoaderID`, `FirstName`, `LastName`, `NIC`, `Address`, `ContactMobile`, `ContactHome`, `Image`, `QR`) VALUES
('1', 'Sanu', 'Isara', '27913534v', '', 710000000, 0, NULL, NULL),
('2', 'AAA', 'AAA', '9876445v', '8765hh', 65432220, 0, NULL, NULL),
('3', 'null', 'qwww', 'wwwee', 'iuytr', 9876543, 9877888, 'gghjjj', 'dfghjk'),
('4', 'SSS', 'SSS', '765', 'gsdfghj		', 11111, 22222, 'gghjjj', 'dfghjk'),
('5', 'ttrr', 'ytrr', 'wwww3333', 'eeeeee		', 7657, 0, 'gghjjj', 'dfghjk'),
('6', 'eee', 'eeee', 'eeeee', 'eeeeeee', 111111, 333333, 'gghjjj', 'dfghjk'),
('7', 'gf', 'tttt', 'ttttt', '6t54e5t6', 888888, 976543, 'gghjjj', 'dfghjk'),
('8', 'www', 'www', 'ww', 'ugg	', 6655, 876, 'gghjjj', 'dfghjk');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `BoaderID` varchar(50) NOT NULL,
  `PaymentType` varchar(50) NOT NULL,
  `PaymentAmount` varchar(20) NOT NULL,
  `PaymentDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `RoomID` varchar(20) NOT NULL,
  `Floor` int(11) NOT NULL,
  `Appartment` varchar(10) NOT NULL,
  `RoomNo` int(11) NOT NULL,
  `NoOFTotalBeads` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(30) NOT NULL,
  UNIQUE KEY `UserName` (`UserName`,`Password`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserName`, `Password`) VALUES
('admin', '123');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

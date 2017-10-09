-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2017 at 02:34 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `santoshjain2198`
--

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `PID` int(1) NOT NULL,
  `Producttype` text NOT NULL,
  `Productname` text NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Unit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`PID`, `Producttype`, `Productname`, `Quantity`, `Unit`) VALUES
(1, 'Stationary', 'Eraser', 25, 'pieces'),
(2, 'grocery', 'spinach', 30, 'kg'),
(3, 'diary', 'cheese', 20, 'kg'),
(4, 'canned', 'peas', 80, 'cans'),
(6, 'Dairy', 'Milk', 80, 'litres'),
(7, 'kuch', 'bhi', 25, 'hh');

-- --------------------------------------------------------

--
-- Table structure for table `listofexe`
--

CREATE TABLE `listofexe` (
  `EID` int(1) NOT NULL,
  `Firstname` text NOT NULL,
  `Middlename` text NOT NULL,
  `Lastname` text NOT NULL,
  `Email` text NOT NULL,
  `Salary` int(11) NOT NULL,
  `Increment` float NOT NULL,
  `Nationality` text NOT NULL,
  `Gender` text NOT NULL,
  `DOB` date NOT NULL,
  `Accesscode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `listofexe`
--

INSERT INTO `listofexe` (`EID`, `Firstname`, `Middlename`, `Lastname`, `Email`, `Salary`, `Increment`, `Nationality`, `Gender`, `DOB`, `Accesscode`) VALUES
(1, 'Jain', 'Santosh', 'Chhogalal', 'santoshjain2198@gmail.com', 1655566, 666, 'India', 'Male', '1998-01-01', 5555),
(2, 'patel', 'JIgnesh', 'magnesh', 'santosmangesh198@gmail.com', 1655566, 666, 'India', 'Male', '1998-01-01', 6666),
(6, 'bkbsjbk', 'bkck', 'kbkcsb', 'bkbbxb', 434, 44, 'London', 'Male', '2017-01-01', 9606);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `SCODE` int(11) NOT NULL,
  `Sales_Target` int(11) NOT NULL DEFAULT '65',
  `Sales_Achieved` int(11) NOT NULL,
  `Start_Date` date NOT NULL,
  `End_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`SCODE`, `Sales_Target`, `Sales_Achieved`, `Start_Date`, `End_Date`) VALUES
(1, 65, 50, '2017-01-01', '2017-02-01'),
(2, 65, 80, '2017-02-01', '2017-03-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `listofexe`
--
ALTER TABLE `listofexe`
  ADD PRIMARY KEY (`EID`),
  ADD UNIQUE KEY `Accesscode` (`Accesscode`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`SCODE`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `PID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `listofexe`
--
ALTER TABLE `listofexe`
  MODIFY `EID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `SCODE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

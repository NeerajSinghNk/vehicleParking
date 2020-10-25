-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 25, 2020 at 10:48 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vpmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `adminregdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `adminregdate`) VALUES
(1, 'Kishor Kadam', 'kishor', 7276763515, 'kadamk329@yahoo.com', 'java@1991', '2020-06-09 06:44:02');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(11) NOT NULL,
  `VehicleCat` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `VehicleCat`, `CreationDate`) VALUES
(1, 'Six Wheeler Vehicles', '2020-05-22 15:01:49'),
(2, 'Four Wheeler Vehicle', '2020-05-22 15:02:10'),
(3, 'Two Wheeler Vehicle', '2020-05-22 15:02:22'),
(4, 'Bicycles', '2020-05-22 15:02:39');

-- --------------------------------------------------------

--
-- Table structure for table `tblparkingseatcapacity`
--

CREATE TABLE `tblparkingseatcapacity` (
  `parking_seat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblparkingseatcapacity`
--

INSERT INTO `tblparkingseatcapacity` (`parking_seat`) VALUES
(25);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(400) DEFAULT NULL,
  `uname` varchar(45) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`id`, `fullname`, `mobile`, `email`, `address`, `uname`, `password`) VALUES
(1, 'Kishor Kadam', '7276763516', 'kadamk33@gmail.com', 'Wakad,Pune', 'kishor', 'java@1991'),
(2, 'Sagar Kharmale', '7278487576', 'sagarkharmale@gmail.com', 'Malwadi,Pune', 'sagar', 'sagar@123'),
(3, 'Arun Shivaji Pandit', '8275684132', 'arunpandit@gmail.com', 'Kharwandi, Ahmednagar', 'arun', 'arun@123'),
(5, 'Govind Raut', '9856321478', 'govindraut@yahoo.com', 'Patoda, Beed.', 'govind', '12345'),
(6, 'Javed Tamboli', '8855223369', 'javedtamboli33@gmail.com', 'Charoli,Pune', 'javed', 'java@1991');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicle`
--

CREATE TABLE `tblvehicle` (
  `ID` int(11) NOT NULL,
  `ParkingNumber` varchar(120) DEFAULT NULL,
  `VehicleCategory` varchar(120) NOT NULL,
  `VehicleCompanyname` varchar(120) DEFAULT NULL,
  `RegistrationNumber` varchar(120) DEFAULT NULL,
  `OwnerName` varchar(120) DEFAULT NULL,
  `OwnerContactNumber` bigint(20) DEFAULT NULL,
  `InTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `OutTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `parkingcharge` varchar(120) DEFAULT NULL,
  `remark` mediumtext,
  `status` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicle`
--

INSERT INTO `tblvehicle` (`ID`, `ParkingNumber`, `VehicleCategory`, `VehicleCompanyname`, `RegistrationNumber`, `OwnerName`, `OwnerContactNumber`, `InTime`, `OutTime`, `parkingcharge`, `remark`, `status`) VALUES
(1, '9523521', 'Bicycles', 'Atlas', 'AT-255266', 'Kishor Kadam', 9404308673, '2020-05-23 14:10:33', '2020-05-31 07:03:07', '12', 'NA', 'Out'),
(2, '7100365', 'Four Wheeler Vehicle', 'Innova', 'INO-256347', 'Sagar Kharmale', 7276763516, '2020-05-23 14:12:59', '2020-05-31 07:03:37', '120', 'NA', 'Out'),
(3, '1648760', 'Bicycles', 'Activa', 'AC-255288', 'Arun Shivaji Pandit', 8258631478, '2020-05-23 14:15:00', '2020-05-31 07:03:54', '12', 'NA', 'Out'),
(5, '4285240', 'Two Wheeler Vehicle', 'Activa', 'AC-585263', 'Govind Raut', 7456893516, '2020-05-24 03:03:17', '2020-05-31 07:04:51', '45', 'NA', 'Out'),
(7, '7460074', 'Six Wheeler Vehicles', 'Hero Honda', 'HR-252369', 'Javed Tamboli', 8258631478, '2020-05-24 09:51:37', '2020-06-09 06:18:26', '150', 'NA', 'Out'),
(8, '9915681', 'Six Wheeler Vehicles', 'Tata', 'ST-258963', 'Kishor Kadam', 7276763516, '2020-05-26 03:11:17', '2020-05-31 07:04:15', '150', 'NA', 'Out'),
(9, '5208856', 'Four Wheeler Vehicle', 'Audi', 'AU-258963', 'Kishor Kadam', 7276763516, '2020-05-31 06:48:24', '2020-05-31 07:02:36', '30', 'NA', ''),
(10, '1377145', 'Four Wheeler Vehicle', 'TATA', 'TA-258698', 'Arvind Kadam', 9874563210, '2020-06-09 06:17:43', '2020-06-09 06:40:01', '30', 'NA', 'Out');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicle`
--
ALTER TABLE `tblvehicle`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblvehicle`
--
ALTER TABLE `tblvehicle`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

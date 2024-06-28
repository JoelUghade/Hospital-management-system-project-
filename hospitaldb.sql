-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2021 at 08:38 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitaldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `billno` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `doc_charge` float NOT NULL,
  `med_charge` float NOT NULL,
  `room_charge` float NOT NULL,
  `operation_charge` float NOT NULL,
  `no_of_days` int(11) NOT NULL,
  `nursing_charge` float NOT NULL,
  `advance` float NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`billno`, `pid`, `doc_charge`, `med_charge`, `room_charge`, `operation_charge`, `no_of_days`, `nursing_charge`, `advance`, `total`) VALUES
(1001, 15, 149000, 74500, 298000, 0, 149, 44700, 1000, 565200);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctorid` int(11) NOT NULL,
  `doctorname` varchar(20) NOT NULL,
  `dept` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctorid`, `doctorname`, `dept`) VALUES
(1, 'Dr.Miss Avani', 'OT'),
(2, 'Dr. Miss. Rani', 'OPD'),
(3, 'Dr. Mr. Utkarsh', 'IP'),
(4, 'Dr. Mr.Devendra', 'Pharmacy'),
(5, 'Dr.Mr. Bharat', 'Radiology'),
(6, 'Dr.Mr. Ravi', 'Paramedical'),
(7, 'Dr. Mr. Sunil', 'Nursing'),
(8, 'Dr. Miss Devika', 'Medical'),
(9, 'Dr. Mr. Adarsh', 'Purschasing'),
(10, 'Mr. Amit ', 'Mechanical'),
(11, 'Dr. Miss Nisha', 'MRD'),
(12, 'Dr. Mr. Varun', 'Central Supply Pastorial'),
(13, 'Dr. Miss. Tina', 'Social Service');

-- --------------------------------------------------------

--
-- Table structure for table `hosp_login`
--

CREATE TABLE `hosp_login` (
  `user_id` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hosp_login`
--

INSERT INTO `hosp_login` (`user_id`, `password`) VALUES
('ramesh', 'ra12345'),
('sameer', 'sa12345'),
('adesh', 'ad12345'),
('user', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `inpatient`
--

CREATE TABLE `inpatient` (
  `pid` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `date_of_admit` date NOT NULL,
  `date_of_discharge` date NOT NULL,
  `advance` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inpatient`
--

INSERT INTO `inpatient` (`pid`, `room_id`, `date_of_admit`, `date_of_discharge`, `advance`) VALUES
(15, 1, '2021-01-01', '2021-05-30', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `pid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `weight` float NOT NULL,
  `gender` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phoneno` bigint(20) NOT NULL,
  `disease` varchar(50) NOT NULL,
  `blood_grp` varchar(10) NOT NULL,
  `doctorid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`pid`, `name`, `age`, `weight`, `gender`, `address`, `phoneno`, `disease`, `blood_grp`, `doctorid`) VALUES
(15, 'Rupesh', 34, 78, 'male', 'ngp-10', 9786548970, 'abcd', 'o+', 5);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `room_type` varchar(50) NOT NULL,
  `charge_per_day` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_type`, `charge_per_day`) VALUES
(1, 'Non Ac Single', 2000),
(2, 'AC Single', 3000),
(3, 'Non AC Sharing', 500),
(4, 'AC Sharing', 1000),
(5, 'Deluxe', 3000),
(6, 'Premium Deluxe', 5000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctorid`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doctorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

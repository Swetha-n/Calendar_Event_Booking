-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2020 at 04:39 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registrationdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`name`, `email`, `date`) VALUES
('swetha', 'swesree@gmail.com', '2020-06-14');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Active, 0=Block'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `date`, `created`, `modified`, `status`) VALUES
(1, 'PHP : Today PHP Event Calendar Class', '2017-04-22', '2017-04-22 06:15:17', '2017-04-22 06:15:17', 1),
(2, 'Laravel: Laravel - The PHP Framework Class', '2017-04-10', '2017-04-10 06:15:17', '2017-04-10 06:15:17', 1),
(3, 'javascript onchange event example class', '2017-04-03', '2017-04-03 06:15:17', '2017-04-03 06:15:17', 1),
(4, 'mailchimp integration in php', '2017-04-26', '2017-04-26 06:15:17', '2017-04-26 06:15:17', 1),
(5, 'api laravel tutorial', '2017-04-29', '2017-04-29 06:15:17', '2017-04-29 06:15:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(11) NOT NULL,
  `Firstname` varchar(255) NOT NULL,
  `Lastname` varchar(255) NOT NULL,
  `Gender` varchar(7) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `Firstname`, `Lastname`, `Gender`, `Email`, `Password`) VALUES
(1, '', '', '', '', 'd41d8cd98f00b204e9800998ecf8427e'),
(2, 'swe', 'N', 'Female', 'swe@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(3, 'swetha', 'N', 'Female', 'swe@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f'),
(4, 's', 'g', 'Female', 'swethanarayanan00@gmail.com', '2708c3704f3c6a7b3a9e685289b412aa'),
(5, 'g', 's', 'Female', 'gg@gmail.com', '73c18c59a39b18382081ec00bb456d43'),
(6, 'sree', 'gg', 'Female', 'gnanasreeg5@gmail.com', 'fbc6ee8f1f3d04721858f89e32aa85f6'),
(7, 'sree', 'gg', 'Female', 'gnanasree.gajarajan2016@vitstudent.ac.in', '2708c3704f3c6a7b3a9e685289b412aa'),
(8, 'swe', 'N', 'Female', 'n.swetha2016@vitstudent.ac.in', '2708c3704f3c6a7b3a9e685289b412aa'),
(9, 'swetha', 'G', 'Female', 'swesree@gmail.com', '2708c3704f3c6a7b3a9e685289b412aa'),
(10, 'swetha', 'sree', 'Female', 'sree@gmail.com', 'fbc6ee8f1f3d04721858f89e32aa85f6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

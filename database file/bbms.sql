-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2023 at 03:25 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `mobile`) VALUES
(1, 'ADMIN\r\nSnehal', 'admin@gmail.com', 'admin123', 8888888888);

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `id` int(11) NOT NULL,
  `donor_id` int(11) NOT NULL,
  `blood_group` varchar(100) NOT NULL,
  `no_units` int(11) NOT NULL,
  `disease` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`id`, `donor_id`, `blood_group`, `no_units`, `disease`, `status`) VALUES
(301, 101, 'B+', 20, 'Nothing', 1),
(302, 102, 'AB+', 15, 'Nothing', 1),
(1005, 101, 'B+', 5, 'No disease', 1),
(1006, 104, 'A', 10, 'Noo', 2),
(1008, 104, 'A', 5, 'No nothing', 1),
(1009, 105, 'O+', 18, 'I do not have any disease', 1),
(1010, 105, 'O+', 5, 'Nothing', 1),
(1018, 108, 'A-', 24, 'Nothing', 1),
(1019, 109, 'B', 30, 'Nothing', 1),
(1020, 110, 'O-', 18, 'Nothing', 1),
(1021, 112, 'B+', 1, 'No', 1),
(1022, 113, 'O+', 1, 'Nothing', 1);

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE `donors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`id`, `name`, `email`, `password`, `mobile`) VALUES
(101, 'Test donor', 'testdonor@gmail.com', 'test123', 9999999999),
(102, 'Neeraj', 'neeraj@gmail.com', '123456', 8888888899),
(104, 'Donor Name 1', 'donor1@gmail.com', '12345', 9878584516),
(105, 'Donor Name 2', 'donor2@gmail.com', '12345', 8458748452),
(108, 'Donor Name 3', 'donor3@gmail.com', '12345', 9999999999),
(109, 'Donor Name 4', 'donor4@gmail.com', '12345', 8888888888),
(110, 'Donor Name 5', 'donor5@gmail.com', '12345', 6666666666),
(111, 'snehal', 'snehal@gmail.com', '123456', 8796513213),
(112, 'rutu', 'rutu@gmail.com', '123456', 8974561230),
(113, 'Swapnil Lokhande', 'lokhande43@gmail.com', '123456', 9923088908),
(114, 'Bunty', 'maroti@gmail.com', '123456', 8794561233);

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `email`, `password`, `mobile`) VALUES
(501, 'Patient Name 1', 'patient1@gmail.com', '12345', 2147483647),
(503, 'Patient Name 2', 'patient2@gmail.com', '12345', 2147483647),
(505, 'Patient Name 3', 'patient3@gmail.com', '12345', 9898989898),
(506, 'Patient Name 4', 'patient4@gmail.com', '12345', 7777777777),
(507, 'Patient Name 5', 'patient5@gmail.com', '12345', 5555555555),
(508, 'Puja Patil', 'puja@gmail.com', '123456', 7894561230),
(509, 'Swapna Patil', 'patil123@gmail.com', '123456', 9874561230),
(512, 'sneha', 'Sne@', '123456', 8671767678),
(513, 'Suman', 'suman', '123456', 9874561230),
(514, 'Shilpa', 'shilpa', '123456', 9775546276),
(515, 'Bhushan', 'patil@gmail.com', '123456', 9726677867),
(516, 'Roshan', 'rj@gmail.com', '123456', 9874561230);

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `no_units` int(11) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `reason` varchar(250) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `patient_id`, `no_units`, `blood_group`, `reason`, `status`) VALUES
(1105, 505, 2, 'A+', 'High fever', 1),
(1106, 505, 2, 'A-', 'Dengue', 1),
(1109, 507, 2, 'O-', 'ABC', 1),
(1110, 508, 1, 'B+', 'by suggestion of doctor lack of blood in the body', 1),
(1111, 509, 2, 'B+', 'Accident', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `sno` int(11) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`sno`, `blood_group`, `stock`) VALUES
(1, 'A', 5),
(2, 'A+', 11),
(3, 'A-', 22),
(4, 'B', 30),
(5, 'B+', 13),
(6, 'B-', 0),
(7, 'AB+', 15),
(8, 'AB-', 0),
(9, 'O+', 24),
(10, 'O-', 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1023;

--
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=517;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1112;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

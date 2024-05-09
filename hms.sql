-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2023 at 12:54 PM
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
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `isread` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `message`, `isread`) VALUES
(1, 'Khan zafar', 'khan.zafar@gmail.com', 'Admission', 'Unable to find hostel', 1),
(2, 'john', 'john@gmail.com', 'Need information', 'Provides an HTTP header for the information/value of the content attribute', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE `hostel` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `incharge` varchar(255) NOT NULL,
  `incharge_contact` varchar(255) NOT NULL,
  `uploaded_by` varchar(255) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hostel`
--

INSERT INTO `hostel` (`id`, `name`, `incharge`, `incharge_contact`, `uploaded_by`, `address`) VALUES
(7, 'VIP Hostel', 'Ismail Ahmad', '03210078654', 'admin@gmail.com', 'Shaheen Town,University Road Peshawar'),
(9, 'Flex Hostel', 'Zuhaib Ali khan', '03422343221', 'wardan@gmail.com', 'Arbab Road, University Road Peshawar'),
(10, 'Al Karim Hostel', 'Mujahid Khan MK', '03400000000', 'admin@gmail.com', 'University Road, near ICMS school Peshawar');

-- --------------------------------------------------------

--
-- Table structure for table `hostel_info`
--

CREATE TABLE `hostel_info` (
  `hostel_info_id` int(11) NOT NULL,
  `hostel_id` varchar(255) NOT NULL,
  `seater` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `food` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hostel_info`
--

INSERT INTO `hostel_info` (`hostel_info_id`, `hostel_id`, `seater`, `price`, `food`) VALUES
(1, '7', '1,2,,', '12000', 'yes'),
(3, '9', '1,2,3,4', '11000', 'yes'),
(4, '10', '1,2,,', '10000', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `hostel_pic`
--

CREATE TABLE `hostel_pic` (
  `image_id` int(11) NOT NULL,
  `hostel_id` varchar(255) NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hostel_pic`
--

INSERT INTO `hostel_pic` (`image_id`, `hostel_id`, `images`) VALUES
(7, '9', 'beds.jpg'),
(9, '7', 'hero-background.jpg'),
(10, '7', 'about-img.jpg'),
(11, '10', '3.jpg'),
(12, '10', '2.jpg'),
(13, '10', '1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contact`, `address`, `password`, `role`) VALUES
(1, 'Admin', 'admin@gmail.com', '0998766', 'Peshawar Shaheen town kpk', '112233', 'admin'),
(2, 'Wardan', 'wardan@gmail.com', '03212343009', 'peshawar saddar, street no 5 railway', '112233', 'wardan'),
(4, 'Student', 'student@gmail.com', '03454433332', 'Warsak road peshawar', '112233', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostel_info`
--
ALTER TABLE `hostel_info`
  ADD PRIMARY KEY (`hostel_info_id`);

--
-- Indexes for table `hostel_pic`
--
ALTER TABLE `hostel_pic`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hostel`
--
ALTER TABLE `hostel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hostel_info`
--
ALTER TABLE `hostel_info`
  MODIFY `hostel_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hostel_pic`
--
ALTER TABLE `hostel_pic`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

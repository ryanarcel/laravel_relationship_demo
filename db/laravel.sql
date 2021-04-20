-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2021 at 08:30 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `families`
--

CREATE TABLE `families` (
  `id` int(10) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `families`
--

INSERT INTO `families` (`id`, `lastname`, `created_at`, `updated_at`) VALUES
(1, 'Galendez', '0000-00-00 00:00:00.000000', '2021-04-19 02:40:48.608058'),
(2, 'Reyes', '2021-04-18 18:40:58.000000', '2021-04-18 18:40:58.000000'),
(3, 'Ansit', '2021-04-18 18:40:58.000000', '2021-04-18 18:40:58.000000'),
(4, 'Nola', '2021-04-18 18:40:58.000000', '2021-04-18 18:40:58.000000'),
(16, 'Castillo', '2021-04-19 20:54:01.000000', '2021-04-19 20:54:01.000000'),
(17, 'Jati', '2021-04-19 21:52:38.000000', '2021-04-19 21:52:38.000000');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(254) NOT NULL,
  `firstname` varchar(254) NOT NULL,
  `family_id` int(254) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `firstname`, `family_id`, `created_at`, `updated_at`) VALUES
(19, 'Anthony', 3, '2021-04-19 22:01:54.000000', '2021-04-19 22:01:54.000000'),
(20, 'Jay', 3, '2021-04-19 22:01:54.000000', '2021-04-19 22:01:54.000000'),
(21, 'Rose', 3, '2021-04-19 22:01:54.000000', '2021-04-19 22:01:54.000000'),
(22, 'Ryan', 1, '2021-04-19 22:09:39.000000', '2021-04-19 22:09:39.000000'),
(23, 'Arcel', 1, '2021-04-19 22:09:39.000000', '2021-04-19 22:09:39.000000'),
(24, 'Handsome', 1, '2021-04-19 22:09:40.000000', '2021-04-19 22:09:40.000000'),
(25, 'Mia', 16, '2021-04-19 22:16:41.000000', '2021-04-19 22:16:41.000000'),
(26, 'Mayong', 16, '2021-04-19 22:16:41.000000', '2021-04-19 22:16:41.000000'),
(27, 'Mia', 16, '2021-04-19 22:16:58.000000', '2021-04-19 22:16:58.000000'),
(28, 'Mayong', 16, '2021-04-19 22:16:58.000000', '2021-04-19 22:16:58.000000'),
(29, 'Bibing', 16, '2021-04-19 22:16:58.000000', '2021-04-19 22:16:58.000000'),
(30, 'Rose', 4, '2021-04-19 22:17:30.000000', '2021-04-19 22:17:30.000000'),
(31, 'Daisy', 4, '2021-04-19 22:17:30.000000', '2021-04-19 22:17:30.000000'),
(32, 'Tulip', 4, '2021-04-19 22:17:30.000000', '2021-04-19 22:17:30.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `families`
--
ALTER TABLE `families`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `families`
--
ALTER TABLE `families`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(254) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2023 at 07:03 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `esaloon`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `time_from` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `service` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `time_from`, `email`, `service`, `date`) VALUES
(18, '09:00', '09:00', '', ''),
(25, '16:00', 'mitalsheladiya7121@gmail.com', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `token` mediumtext NOT NULL,
  `email` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `token`, `email`) VALUES
(1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjUwMDAiLCJzdWIiOiJlc2Fsb29uLWFjY2VzcyIsInVzZXIiOiJ2aXNoQGdtYWlsLmNvbSJ9.PuWxad7VlK2RsiuTZBsfPyKXaFArfD1sHshQ3OuVrYQ', 'vish@gmail.com'),
(2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjUwMDAiLCJzdWIiOiJlc2Fsb29uLWFjY2VzcyIsInVzZXIiOiJ2aXNoQGdtYWlsLmNvbSJ9.PuWxad7VlK2RsiuTZBsfPyKXaFArfD1sHshQ3OuVrYQ', 'vish@gmail.com'),
(3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjUwMDAiLCJzdWIiOiJlc2Fsb29uLWFjY2VzcyIsInVzZXIiOiJ2aXNoMUBnYW1pbC5jb20ifQ.91vtWkfImquePpxdPnrraCm43mfWY8eszmvslY1Q6xI', 'vish1@gamil.com'),
(4, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjUwMDAiLCJzdWIiOiJlc2Fsb29uLWFjY2VzcyIsInVzZXIiOiJ2aXNoMUBnbWFpbC5jb20ifQ.5VxyYz1XYMIz5YAEqfGeZYQpu3c4NuzdbQsUMmNLZG8', 'vish1@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `fullname` text NOT NULL,
  `phone` int(25) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` mediumtext NOT NULL,
  `creation_date` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `fullname`, `phone`, `email`, `password`, `creation_date`) VALUES
(1, 'c3baaf8c-8328-4de1-97b6-a039ce7af079', 'vish shukla', 2147483647, 'vish@gmail.com', '$2b$12$UkrYl.AGPIZIWIdtfH9fwOjUWD6cUtKCHnLy2p2CHLoyDaJdJOCHy', '2023-01-04 14:34:09.867885'),
(2, '225c04ab-4424-480a-958c-7dfc78ded2c4', 'vish1 shukla', 2147483647, 'vish1@gamil.com', '$2b$12$1LLCknirZxPL87KFOSOTi.c81VWdem39/SBZApQxps.zFuGZA7s6G', '2023-01-04 14:36:37.528923'),
(3, '0abbefd0-94b0-4f3a-9d25-edac44cd8e9b', 'vish demo', 2147483647, 'vish1@gmail.com', '$2b$12$A//xXdCF8GeO3PsyODw8DO4hc/OCY/z.8vKBoqkrcIPh2z7AlW.VW', '2023-01-05 15:09:21.113895');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_email_uindex` (`email`),
  ADD UNIQUE KEY `user_user_id_uindex` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

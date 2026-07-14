-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2026 at 10:09 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finorix_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `balance` decimal(10,2) DEFAULT 0.00,
  `approved` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `balance`, `approved`) VALUES
(1, 'jalil', 'yousufakhatun745@gmail.com', '$2y$10$ptGDPU4EnA3zarQeeJszhuxguBhGUXdqLMLYwcRIwIfR43mtWLZOC', 0.00, 0),
(2, '125', 'yousufakhatun7145@gmail.com', '$2y$10$YGFq8yoPKDeoJLgVqqUzjOAvzuU2K9NjuSDP3uxX6VMiflOfgppmu', 0.00, 0),
(3, 'milon', 'milonhasans722@gmail.com', '$2y$10$3VBLIX0POvxKI04wqQXY/OQQKGeuX1fu.ajJz/mzs.RmVKOIHp0.m', 0.00, 0),
(4, 'milon', 'milon@gmail.com', '$2y$10$4aZkFm/KkvEPONyOR753UOJPBONyhJbHTMD.KbDwwxpQDG/gEOU4i', 0.00, 0),
(5, 'milonhasans71', 'milonhasans712@gmail.com', '$2y$10$qmyMml9miZ/Mnz5EAhEov.GGVzzsl6VoZJCs1K/4TS3p/BjvNm7c.', 0.00, 0),
(6, 'JALIL', 'jalil@gmail.com', '$2y$10$C/FNl5NZdL0QY0/L34BHp.nm3iCnG8qMqEdnNFchL2TYdBBjfgMde', 0.00, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

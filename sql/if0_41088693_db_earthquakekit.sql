-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql107.infinityfree.com
-- Generation Time: Feb 09, 2026 at 09:02 AM
-- Server version: 11.4.10-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_41088693_db_earthquakekit`
--

-- --------------------------------------------------------

--
-- Table structure for table `kits`
--

CREATE TABLE `kits` (
  `id` int(11) NOT NULL,
  `kit_type` varchar(100) NOT NULL,
  `location` varchar(100) DEFAULT NULL,
  `status` enum('Currently Stocked','Needs Restock') NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kits`
--

INSERT INTO `kits` (`id`, `kit_type`, `location`, `status`, `created_at`, `updated_at`) VALUES
(35, 'First Aid Kit', 'Caloocan City', 'Needs Restock', '2026-02-08 23:49:27', '2026-02-08 23:49:27'),
(14, 'Rescue Kit', 'Qc', 'Needs Restock', '2026-02-07 15:50:25', '2026-02-09 04:11:00'),
(15, 'Family Kit', 'Manila City', 'Currently Stocked', '2026-02-07 15:59:51', '2026-02-08 14:16:03'),
(18, 'First Aid Kit', 'Pampanga', 'Needs Restock', '2026-02-08 04:28:17', '2026-02-08 14:38:02'),
(36, 'Rescue Kit', 'Taguig City', 'Currently Stocked', '2026-02-08 23:50:07', '2026-02-08 23:50:07'),
(19, 'Family Kit', 'Caloocan City', 'Currently Stocked', '2026-02-08 04:28:29', '2026-02-08 14:16:17'),
(29, 'Family Kit', 'Naga', 'Currently Stocked', '2026-02-08 11:01:50', '2026-02-08 14:16:27'),
(28, 'First Aid Kit', 'Bulacan', 'Needs Restock', '2026-02-08 10:36:06', '2026-02-08 10:36:06'),
(31, 'First Aid Kit', 'Manila City', 'Needs Restock', '2026-02-08 12:00:49', '2026-02-08 14:30:00'),
(34, 'Rescue Kit', 'Olongapo', 'Needs Restock', '2026-02-08 15:08:15', '2026-02-08 15:08:27'),
(38, 'First Aid Kit', 'Fairview, Quezon City', 'Currently Stocked', '2026-02-09 02:11:32', '2026-02-09 02:11:32');

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id` int(11) NOT NULL,
  `adm_user` varchar(100) NOT NULL,
  `adm_pass` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id`, `adm_user`, `adm_pass`) VALUES
(1, 'admin', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kits`
--
ALTER TABLE `kits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kits`
--
ALTER TABLE `kits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

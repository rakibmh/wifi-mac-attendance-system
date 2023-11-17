-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2023 at 03:19 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `students`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(50) NOT NULL,
  `name` varchar(191) NOT NULL,
  `ssid` varchar(100) NOT NULL,
  `macAddress` varchar(191) NOT NULL,
  `course` varchar(191) NOT NULL,
  `time_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deviceMac` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `name`, `ssid`, `macAddress`, `course`, `time_date`, `deviceMac`) VALUES
(76, 'Hridoy Bepari', 'ok', '4E:7F:5D:2A:1C:9t', 'EEE', '2023-11-08 14:48:19', '4a:13:3c:62:b6:31'),
(12503, 'Trisha', 'Trisha', '36:c5:5b:21:1d:72', 'cse', '2023-11-15 11:42:07', '4a:13:3c:62:b6:31'),
(2147483647, 'Mahmudul Hassan Rakib', '', '28:1d:21:16:38:36', 'Cse', '2023-11-15 11:30:02', '4a:13:3c:62:b6:31');

-- --------------------------------------------------------

--
-- Table structure for table `routine`
--

CREATE TABLE `routine` (
  `id` int(11) NOT NULL,
  `c_code` text NOT NULL,
  `scanner` text NOT NULL,
  `stTime` time NOT NULL,
  `endTime` time NOT NULL,
  `day` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `routine`
--

INSERT INTO `routine` (`id`, `c_code`, `scanner`, `stTime`, `endTime`, `day`) VALUES
(1, 'CSE 101', 'ClassRoom_B1-301', '19:00:00', '23:00:00', 'Wednesday');

-- --------------------------------------------------------

--
-- Table structure for table `scan`
--

CREATE TABLE `scan` (
  `id` int(20) NOT NULL,
  `ssid` varchar(20) NOT NULL,
  `mac` varchar(20) NOT NULL,
  `access_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `scan`
--

INSERT INTO `scan` (`id`, `ssid`, `mac`, `access_time`) VALUES
(1163, 'PS_Office', 'b8:a3:86:61:56:9a', '2023-11-15 13:58:14'),
(1167, 'NOBONI', '18:d6:c7:eb:94:be', '0000-00-00 00:00:00'),
(1178, 'Aminul', '18:a6:f7:99:b3:1a', '2023-11-15 13:58:48'),
(1179, 'Sahar@wifi', '5c:a6:e6:19:2b:32', '2023-11-15 01:48:44'),
(1184, 'APON', 'f0:b4:d2:3e:20:e0', '2023-11-15 13:57:58'),
(1186, 'Android_AP', 'a8:9c:ed:83:88:22', '2023-11-15 13:23:35'),
(1187, 'AYAN', '38:6b:1c:2a:62:fc', '0000-00-00 00:00:00'),
(1190, 'realme_C25s', '6a:c7:f:ee:ce:40', '0000-00-00 00:00:00'),
(1194, 'I_care', '64:ee:b7:f0:5c:0', '2023-11-15 13:58:55'),
(1195, 'Tasrif', 'c8:3a:35:5d:cb:38', '2023-11-15 13:59:50'),
(1196, 'TP-LINK_9650', 'd4:6e:e:e6:96:50', '2023-11-15 14:00:51'),
(1198, 'Ratan', 'c8:3a:35:1a:25:10', '2023-11-15 14:00:46'),
(1200, 'GHOST', 'c8:3a:35:58:c9:60', '2023-11-15 13:59:39'),
(1201, 'Raju', 'e0:1c:fc:a3:f9:f0', '2023-11-15 13:56:24'),
(1203, 'Bachelor_point', 'c0:25:2f:9f:1:f4', '2023-11-15 13:26:53'),
(1204, 'pagol', '60:63:4c:5f:fd:fa', '2023-11-15 13:59:54'),
(1205, 'Faculty_Room_321', '9c:c9:eb:f8:f1:5', '2023-11-15 13:54:37'),
(1206, 'Josna', 'e0:1c:fc:3d:ba:c4', '2023-11-15 14:00:44'),
(1207, 'Faculty_Room_621', '9c:c9:eb:f8:f4:3e', '2023-11-15 13:54:28'),
(1208, 'Super_Home_SH4_A4_R4', '4c:ed:fb:57:3a:28', '2023-11-15 13:38:07'),
(1209, 'BUBT_Cafeteria_North', '58:c1:7a:e5:1c:0', '2023-11-15 13:40:43'),
(1210, 'Living_Room_speaker.', 'fa:8f:ca:63:20:93', '2023-11-15 13:58:53'),
(1211, 'BAPPI_4G', '8c:de:f9:ab:a4:72', '2023-11-15 13:42:36'),
(1212, 'OPPO_A9_2020', '3a:6b:54:d9:13:e4', '2023-11-15 13:55:12'),
(1213, 'UNOPS_BGD_4G/GP', '7e:69:78:ef:53:53', '2023-11-15 13:57:06'),
(1214, 'vivo_Y02A', 'fa:19:45:23:40:23', '2023-11-15 13:58:02'),
(1215, 'Galaxy_M127A77', '1e:4e:f0:2f:70:e8', '2023-11-15 13:59:01'),
(1216, 'vivo_1908_19', 'da:a3:15:89:27:99', '2023-11-15 13:59:08'),
(1217, 'ZUNAIRAH', '70:4f:57:b4:15:ca', '2023-11-15 14:01:21'),
(1220, 'Sandhita_', '98:de:d0:72:c4:34', '2023-11-15 14:01:28'),
(1222, 'Galaxy_M02s5808', '66:2e:d0:e2:63:68', '2023-11-15 14:01:33'),
(1223, 'mah_125', '92:a4:5d:c1:20:39', '2023-11-15 14:01:38'),
(1242, 'Jarir_UMN', '18:a6:f7:c4:8d:bc', '2023-11-15 14:02:32'),
(1243, 'BUBT_Computer_Lab', '58:c1:7a:d8:85:50', '2023-11-15 14:02:35'),
(1245, 'Md._Ariful_Alam_Shoh', 'd8:d:17:47:95:90', '2023-11-15 14:02:39'),
(1246, 't.me/pac0pai', 'da:d:17:57:95:90', '2023-11-15 14:02:41'),
(1247, 'Sifat', '5c:62:8b:df:80:4', '2023-11-15 14:02:43'),
(1248, 'vritinna', '60:32:b1:18:be:8b', '2023-11-15 14:02:46'),
(1249, 'Magic', 'b4:f:3b:7a:1b:40', '2023-11-15 14:02:48'),
(1250, 'MIRZA', 'c4:e9:84:31:50:48', '2023-11-15 14:02:50'),
(1251, 'Senjuti_Shahtab', '48:22:54:14:7c:9', '2023-11-15 14:02:52'),
(1252, 'Faculty_Room_413', '14:59:c0:c8:7f:bc', '2023-11-15 14:02:55'),
(1253, 'Diya_5G', '14:4d:67:56:58:4', '2023-11-15 14:02:57'),
(1254, 'vivo_1811', '8:7f:98:1:81:75', '2023-11-15 14:02:59'),
(1255, 'KHURSHID', '14:4d:67:30:47:f4', '2023-11-15 14:03:01'),
(1256, 'Eshan', 'c8:3a:35:5b:85:d8', '2023-11-15 14:03:04'),
(1257, 'restricted_plus', '88:c3:97:ec:c6:3', '2023-11-15 14:03:06'),
(1258, 'BUBT_Student_4th', 'b4:a2:5c:56:df:50', '2023-11-15 14:03:08'),
(1259, 'ZAHIR_SIR', '98:da:c4:1:7d:ba', '2023-11-15 14:03:10'),
(1260, 'Super_Home_SH4_A5R4', '4:92:26:c5:d5:8', '2023-11-15 14:03:12'),
(1261, 'Super_Home_SH4_A3_R4', '18:31:bf:1:4c:a8', '2023-11-15 14:03:14'),
(1262, 'FAST_NET', 'e8:de:27:b6:45:28', '2023-11-15 14:03:17'),
(1263, 'Faculty_Room_421', '9c:c9:eb:f8:f3:2d', '2023-11-15 14:03:22'),
(1264, 'BUBT_Computer_Lab-52', 'b4:a2:5c:56:7d:f0', '2023-11-15 14:03:24'),
(1265, 'ELIAS', '4:95:e6:37:a4:0', '2023-11-15 14:03:26'),
(1266, 'Zubair', '64:ee:b7:c1:39:3b', '2023-11-15 14:03:29');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(50) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `ssid` varchar(100) NOT NULL,
  `macAddress` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `course` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `ssid`, `macAddress`, `phone`, `course`) VALUES
(76, 'Hridoy Bepari', 'okdfdf', '4E:7F:5D:2A:1C:9t', '0179172265', 'EEE'),
(111, 'dfdsf', 'Mh_rakib', '92:a4:5d:c1:20:39', '7398432', ''),
(456, 'khan', '564f', '3D:5A:2C:9F:1B:8P', '5646', 'EEE'),
(1271, 'Hridoy', 'ok', '4a:16:3a:62:b6:31', '0194658758', 'EEE'),
(4501, 'Sojib Khan', 'hgfgdf', '7e:e:7e:ed:4f:66', '0195568758', 'EEE'),
(4567, 'Akash Rahman', 'ok', '80:35:c1:72:2a:93', '0194658757', 'EEE'),
(4573, 'Shuvo Islam', '', '3D:5A:2C:9F:1B:8E', '0135750330', 'EEE'),
(4574, 'Sakil Islam', 'sdfsds', '1A:2E:4F:7D:8C:9B', '0179573265', 'CSE'),
(12503, 'Trisha', 'Trisha', '36:c5:5b:21:1d:72', '852', 'cse'),
(2147483647, 'Mahmudul Hassan Rakib', '', '28:1d:21:16:38:36', '+8801551061265', 'Cse');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `routine`
--
ALTER TABLE `routine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scan`
--
ALTER TABLE `scan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `routine`
--
ALTER TABLE `routine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `scan`
--
ALTER TABLE `scan`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1267;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

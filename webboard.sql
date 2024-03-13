-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2024 at 10:44 AM
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
-- Database: `webboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'เรื่องทั่วไป'),
(2, 'เรื่องเรียน'),
(3, 'เรื่องกีฬา');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `content` mediumtext NOT NULL,
  `post_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `content`, `post_date`, `user_id`, `post_id`) VALUES
(1, 'เม้นแรกคับ', '2024-03-06 20:03:02', 6, 2),
(2, 'เห็นด้วยคับมวยไทยชนะใสๆ เขมรอ่อนแอมากๆ ', '2024-03-06 20:07:16', 7, 2),
(4, 'เห็นด้วยคับ คนนี้สุดยอดจริง', '2024-03-13 15:37:46', 6, 3),
(5, 'คนนี้ระดับตำนาน แค่ได้ยินชื่อก็สั่นแล้วคับ +1', '2024-03-13 15:38:19', 9, 3);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` varchar(2048) NOT NULL,
  `post_date` datetime NOT NULL,
  `cat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `content`, `post_date`, `cat_id`, `user_id`) VALUES
(2, 'มวยไทย VS กุมขแมร์', 'มวยไทยชนะใสๆ', '2024-02-28 17:02:55', 3, 6),
(3, 'กีฬาในร่ม ก้มแล้วแทง', 'ธนพล ครองแชมป์ 10 สมัย', '2024-03-13 15:37:16', 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `login` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `gender` char(1) NOT NULL,
  `email` varchar(32) NOT NULL,
  `role` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `name`, `gender`, `email`, `role`) VALUES
(6, 'admin', '8dc9fa69ec51046b4472bb512e292d959edd2aef', 'adminza', 'm', 'adminstator@gmail.com', 'a'),
(7, 'Prasitthichoke', 'c9deba1e15cbdddeaa9b714a59af5ce192717ff0', 'ประสิทธิโชค', 'm', 'Prasit123@gmail.com', 'm'),
(8, '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', '', '', 'm'),
(9, 'Nitipoom', '2890f2764f9ba29c3a0eac5cd92298fb5706684b', 'นิติภูมิ', 'm', 'nitipoom@gmail.com', 'm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

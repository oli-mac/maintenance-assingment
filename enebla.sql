-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8111
-- Generation Time: May 08, 2022 at 10:33 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `enebla`
--

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(20) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `user_phone` varchar(10) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_city` varchar(50) NOT NULL,
  `user_role` varchar(20) NOT NULL,
  `user_gender` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='this is user table';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `full_name`, `user_phone`, `user_email`, `user_city`, `user_role`, `user_gender`, `date`, `password`) VALUES
(1, 'oli-mac', 'Olyad Mulugeta', '0912297301', 'adumulugeta21@gmail.com', 'Addis ababa', 'Admin', 'male', '2022-03-06 15:01:25', '25d55ad283aa400af464c76d713c07ad'),
(2, 'mike123', 'mikael belachw', '0912297301', 'mike12@gmail.com', '007', 'User', 'male', '2022-03-06 15:47:06', '25d55ad283aa400af464c76d713c07ad'),
(3, 'tare333', 'Tarik Teshome', '09568473', 'tarik333@gmail.com', 'bahrdar', 'User', 'male', '2022-03-06 15:48:07', '25d55ad283aa400af464c76d713c07ad'),
(4, 'rolary', 'Hamilton Alvarado', '930', 'kuni@mailinator.com', 'In et est recusandae', 'User', 'female', '2022-03-06 19:39:35', 'b0a054442627608fe7be26d388d59c9f'),
(5, 'mykarek', 'Ramona Ortiz', '319', 'tikod@mailinator.com', 'Ea ut aliquip in qui', 'Manager', 'other', '2022-03-06 19:39:49', 'b7d0fe463bd5284ada2f75161875bc07'),
(6, 'pawaqyjy', 'Silas Kelley', '98', 'keloku@mailinator.com', 'Perspiciatis et qui', 'Admin', 'male', '2022-03-06 19:40:05', 'efa4981c112f3a9f668c5ec3f3c83c49'),
(7, 'visyweson', 'Neve Oneill', '861', 'salivuhu@mailinator.com', 'Unde deserunt atque ', 'User', 'female', '2022-03-06 20:38:20', '613c2f1bbf84e08877e02a6e08f21f82'),
(8, 'fyqeta', 'Marny Bernard', '270', 'xuroben@mailinator.com', 'Magni id omnis aut q', 'Manager', 'male', '2022-03-06 20:38:33', 'f5e6f200eef87f57fd9f4c13d1338c36'),
(9, 'elu123', 'eleni maru', '0912297301', 'elup@gmail.com', '007', 'User', 'female', '2022-03-08 14:57:20', '25d55ad283aa400af464c76d713c07ad'),
(10, 'efe588', 'eferata ', '0912297301', 'efrata122@gamil.com', '007', 'User', 'female', '2022-03-08 15:40:18', '25d55ad283aa400af464c76d713c07ad'),
(11, 'tomi123', 'tomas', '0912297301', 'adumulugeta21@gmail.com', '007', 'User', 'male', '2022-03-08 15:42:21', '25d55ad283aa400af464c76d713c07ad'),
(12, 'marefu123', 'marefu ', '0912297301', 'adumulugeta21@gmail.com', '007', 'User', 'male', '2022-03-08 17:04:07', '25d55ad283aa400af464c76d713c07ad'),
(13, 'olyad', 'Iris Head', '257', 'rizevy@mailinator.com', '1234', 'User', 'male', '2022-05-07 20:20:46', '81dc9bdb52d04dc20036dbd8313ed055'),
(14, 'steak', 'steak house ', '359', 'pahejot@mailinator.com', '1234', 'User', 'male', '2022-05-07 20:26:38', '81dc9bdb52d04dc20036dbd8313ed055'),
(15, 'steak', 'steak house', '896', 'qymaxyh@mailinator.com', 'steak', 'Customer', 'male', '2022-05-07 20:33:18', '35e244830bde1d967298fb9a585854f7'),
(16, 'steak', 'steak house', '2', 'qetipypu@mailinator.com', 'steak', 'Customer', 'male', '2022-05-07 20:37:11', '35e244830bde1d967298fb9a585854f7'),
(17, 'steak', 'Alden Delaney', '918', 'relule@mailinator.com', 'Incidunt voluptas s', 'Customer', 'male', '2022-05-07 20:38:57', '35e244830bde1d967298fb9a585854f7'),
(18, 'steak', 'Serena Mosley', '636', 'qahasy@mailinator.com', 'Cumque reprehenderit', 'Customer', 'female', '2022-05-07 21:02:15', '35e244830bde1d967298fb9a585854f7'),
(19, 'steack', 'Cheryl Shannon', '394', 'bemem@mailinator.com', 'Quia dolor facere in', 'Customer', 'female', '2022-05-07 21:40:22', '112d5b08f89a0e147f97a0b4731ee055'),
(20, 'steack', 'Aladdin Erickson', '124', 'tyjyryxav@mailinator.com', 'Aspernatur quo obcae', 'Customer', 'female', '2022-05-08 10:16:55', '112d5b08f89a0e147f97a0b4731ee055');

-- --------------------------------------------------------

-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_name` (`user_name`),
  ADD KEY `user_phone` (`user_phone`),
  ADD KEY `user_email` (`user_email`),
  ADD KEY `password` (`password`),
  ADD KEY `full_name` (`full_name`),
  ADD KEY `user_city` (`user_city`),
  ADD KEY `user_role` (`user_role`),
  ADD KEY `user_gender` (`user_gender`),
  ADD KEY `date` (`date`);

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2022 at 04:19 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasi_inventaris`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `user` text NOT NULL,
  `ip_address` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `title`, `user`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 'Administrator (admin) Logged in', '1', '::1', '2022-06-05 02:53:17', '0000-00-00 00:00:00'),
(2, 'Data Inventaris Ditambahkan 0 Created by User:Administrator', '1', '::1', '2022-06-05 02:54:04', '0000-00-00 00:00:00'),
(3, 'New Permission #19 Created by User: #1', '1', '::1', '2022-06-05 03:22:15', '0000-00-00 00:00:00'),
(4, 'Permission #19 Updated by User: #1', '1', '::1', '2022-06-05 03:22:50', '0000-00-00 00:00:00'),
(5, 'Permission #19 Updated by User: #1', '1', '::1', '2022-06-05 03:23:17', '0000-00-00 00:00:00'),
(6, 'New Permission #20 Created by User: #1', '1', '::1', '2022-06-05 03:25:38', '0000-00-00 00:00:00'),
(7, 'Role #1 Updated by User: #1', '1', '::1', '2022-06-05 03:28:04', '0000-00-00 00:00:00'),
(8, 'New Permission #21 Created by User: #1', '1', '::1', '2022-06-05 03:32:03', '0000-00-00 00:00:00'),
(9, 'Role #1 Updated by User: #1', '1', '::1', '2022-06-05 03:33:44', '0000-00-00 00:00:00'),
(10, 'New Role #3 Created by User: #1', '1', '::1', '2022-06-05 03:34:52', '0000-00-00 00:00:00'),
(11, 'New Role #4 Created by User: #1', '1', '::1', '2022-06-05 03:35:15', '0000-00-00 00:00:00'),
(12, 'New Permission #22 Created by User: #1', '1', '::1', '2022-06-05 03:40:16', '0000-00-00 00:00:00'),
(13, 'Role #1 Updated by User: #1', '1', '::1', '2022-06-05 03:40:25', '0000-00-00 00:00:00'),
(14, 'Data Inventaris #0 Updated by User:Administrator', '1', '::1', '2022-06-05 04:02:45', '0000-00-00 00:00:00'),
(15, 'Data Inventaris Ditambahkan 0 Created by User:Administrator', '1', '::1', '2022-06-05 04:04:37', '0000-00-00 00:00:00'),
(16, 'Data Inventaris Ditambahkan 0 Created by User:Administrator', '1', '::1', '2022-06-05 04:06:25', '0000-00-00 00:00:00'),
(17, 'Data Inventaris Ditambahkan 0 Created by User:Administrator', '1', '::1', '2022-06-05 04:06:55', '0000-00-00 00:00:00'),
(18, 'Data Inventaris Ditambahkan 2 Created by User:Administrator', '1', '::1', '2022-06-05 04:07:55', '0000-00-00 00:00:00'),
(19, 'Data Inventaris #1 Updated by User:Administrator', '1', '::1', '2022-06-05 04:08:18', '0000-00-00 00:00:00'),
(20, 'Data Inventaris #1 Updated by User:Administrator', '1', '::1', '2022-06-05 04:09:45', '0000-00-00 00:00:00'),
(21, 'Data Inventaris #1 Updated by User:Administrator', '1', '::1', '2022-06-05 04:10:42', '0000-00-00 00:00:00'),
(22, 'New Permission #23 Created by User: #1', '1', '::1', '2022-06-05 04:15:16', '0000-00-00 00:00:00'),
(23, 'Role #1 Updated by User: #1', '1', '::1', '2022-06-05 04:15:24', '0000-00-00 00:00:00'),
(24, 'Administrator (admin) Logged in', '1', '::1', '2022-06-12 01:56:05', '0000-00-00 00:00:00'),
(25, 'New Permission #24 Created by User: #1', '1', '::1', '2022-06-12 01:56:40', '0000-00-00 00:00:00'),
(26, 'New Permission #25 Created by User: #1', '1', '::1', '2022-06-12 01:56:55', '0000-00-00 00:00:00'),
(27, 'New Permission #26 Created by User: #1', '1', '::1', '2022-06-12 01:57:05', '0000-00-00 00:00:00'),
(28, 'New Permission #27 Created by User: #1', '1', '::1', '2022-06-12 01:57:17', '0000-00-00 00:00:00'),
(29, 'Role #1 Updated by User: #1', '1', '::1', '2022-06-12 01:57:29', '0000-00-00 00:00:00'),
(30, 'User #1 updated the profile', '1', '::1', '2022-06-12 02:04:51', '0000-00-00 00:00:00'),
(31, 'Administrator (admin) Logged in', '1', '::1', '2022-06-12 02:09:58', '0000-00-00 00:00:00'),
(32, 'Data Inventaris Ditambahkan 3 Created by User:Administrator', '1', '::1', '2022-06-12 02:12:02', '0000-00-00 00:00:00'),
(33, 'Data Inventaris #3 Updated by User:Administrator', '1', '::1', '2022-06-12 02:12:26', '0000-00-00 00:00:00'),
(34, 'Data Fasilitas Ditambahkan 2 Created by User:Administrator', '1', '::1', '2022-06-12 02:13:38', '0000-00-00 00:00:00'),
(35, 'Role #4 Updated by User: #1', '1', '::1', '2022-06-12 02:15:54', '0000-00-00 00:00:00'),
(36, 'User #1 updated the profile', '1', '::1', '2022-06-12 02:16:29', '0000-00-00 00:00:00'),
(37, 'New Permission #28 Created by User: #1', '1', '::1', '2022-06-12 02:47:52', '0000-00-00 00:00:00'),
(38, 'Role #1 Updated by User: #1', '1', '::1', '2022-06-12 02:48:06', '0000-00-00 00:00:00'),
(39, 'New Permission #29 Created by User: #1', '1', '::1', '2022-06-12 02:57:50', '0000-00-00 00:00:00'),
(40, 'Role #1 Updated by User: #1', '1', '::1', '2022-06-12 02:57:57', '0000-00-00 00:00:00'),
(41, 'Data Pinjaman Ditambahkan 1 Created by User:Administrator', '1', '::1', '2022-06-12 03:00:42', '0000-00-00 00:00:00'),
(42, 'Data Pinjaman Ditambahkan 2 Created by User:Administrator', '1', '::1', '2022-06-12 03:04:37', '0000-00-00 00:00:00'),
(43, 'New Permission #30 Created by User: #1', '1', '::1', '2022-06-12 03:06:35', '0000-00-00 00:00:00'),
(44, 'Role #1 Updated by User: #1', '1', '::1', '2022-06-12 03:06:45', '0000-00-00 00:00:00'),
(45, 'New Permission #31 Created by User: #1', '1', '::1', '2022-06-12 03:07:06', '0000-00-00 00:00:00'),
(46, 'Role #1 Updated by User: #1', '1', '::1', '2022-06-12 03:07:21', '0000-00-00 00:00:00'),
(47, ' #1 Deleted by User:Administrator', '1', '::1', '2022-06-12 03:07:56', '0000-00-00 00:00:00'),
(48, 'Data Pinjaman Ditambahkan 3 Created by User:Administrator', '1', '::1', '2022-06-12 03:08:42', '0000-00-00 00:00:00'),
(49, 'Data Pinjaman Ditambahkan 4 Created by User:Administrator', '1', '::1', '2022-06-12 03:53:02', '0000-00-00 00:00:00'),
(50, 'Administrator (admin) Logged in', '1', '::1', '2022-06-18 13:58:24', '0000-00-00 00:00:00'),
(51, 'Administrator (admin) Logged in', '1', '::1', '2022-06-19 01:50:04', '0000-00-00 00:00:00'),
(52, 'New User $2 Created by User:Administrator', '1', '::1', '2022-06-19 01:51:48', '0000-00-00 00:00:00'),
(53, 'Role #4 Updated by User: #1', '1', '::1', '2022-06-19 01:52:40', '0000-00-00 00:00:00'),
(54, 'User: Administrator Logged Out', '1', '::1', '2022-06-19 01:52:46', '0000-00-00 00:00:00'),
(55, 'Rifqi Riza Irfansyah (rifqi_riza_irfansyah) Logged in', '2', '::1', '2022-06-19 01:52:52', '0000-00-00 00:00:00'),
(56, 'User: Rifqi Riza Irfansyah Logged Out', '2', '::1', '2022-06-19 01:53:09', '0000-00-00 00:00:00'),
(57, 'Administrator (admin) Logged in', '1', '::1', '2022-06-19 01:53:15', '0000-00-00 00:00:00'),
(58, 'User: Administrator Logged Out', '1', '::1', '2022-06-19 01:54:51', '0000-00-00 00:00:00'),
(59, 'Rifqi Riza Irfansyah (rifqi_riza_irfansyah) Logged in', '2', '::1', '2022-06-19 01:54:58', '0000-00-00 00:00:00'),
(60, 'User: Rifqi Riza Irfansyah Logged Out', '2', '::1', '2022-06-19 01:55:15', '0000-00-00 00:00:00'),
(61, 'Administrator (admin) Logged in', '1', '::1', '2022-06-19 01:55:19', '0000-00-00 00:00:00'),
(62, 'User: Administrator Logged Out', '1', '::1', '2022-06-19 01:58:11', '0000-00-00 00:00:00'),
(63, 'Rifqi Riza Irfansyah (rifqi_riza_irfansyah) Logged in', '2', '::1', '2022-06-19 01:58:16', '0000-00-00 00:00:00'),
(64, 'Data Pinjaman Ditambahkan 5 Created by User:Rifqi Riza Irfansyah', '2', '::1', '2022-06-19 01:58:43', '0000-00-00 00:00:00'),
(65, 'User: Rifqi Riza Irfansyah Logged Out', '2', '::1', '2022-06-19 02:01:02', '0000-00-00 00:00:00'),
(66, 'Administrator (admin) Logged in', '1', '::1', '2022-06-19 02:01:12', '0000-00-00 00:00:00'),
(67, 'Data Pinjaman Ditambahkan 6 Created by User:Administrator', '1', '::1', '2022-06-19 02:15:36', '0000-00-00 00:00:00'),
(68, 'New Permission #32 Created by User: #1', '1', '::1', '2022-06-19 02:20:32', '0000-00-00 00:00:00'),
(69, 'Role #1 Updated by User: #1', '1', '::1', '2022-06-19 02:20:42', '0000-00-00 00:00:00'),
(70, 'Data Pinjaman Inventaris #4 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2022-06-19 02:34:44', '0000-00-00 00:00:00'),
(71, 'Data Pinjaman Inventaris #5 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2022-06-19 02:35:07', '0000-00-00 00:00:00'),
(72, 'Data Pinjaman Inventaris #6 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2022-06-19 02:35:37', '0000-00-00 00:00:00'),
(73, 'Data Pinjaman Ditambahkan 7 Created by User:Administrator', '1', '::1', '2022-06-19 02:36:21', '0000-00-00 00:00:00'),
(74, 'Data Pinjaman Inventaris #7 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2022-06-19 02:36:27', '0000-00-00 00:00:00'),
(75, 'User: Administrator Logged Out', '1', '::1', '2022-06-19 02:36:44', '0000-00-00 00:00:00'),
(76, 'Rifqi Riza Irfansyah (rifqi_riza_irfansyah) Logged in', '2', '::1', '2022-06-19 02:36:50', '0000-00-00 00:00:00'),
(77, 'User: Rifqi Riza Irfansyah Logged Out', '2', '::1', '2022-06-19 02:37:27', '0000-00-00 00:00:00'),
(78, 'Administrator (admin) Logged in', '1', '::1', '2022-06-19 02:37:30', '0000-00-00 00:00:00'),
(79, 'User: Administrator Logged Out', '1', '::1', '2022-06-19 02:49:46', '0000-00-00 00:00:00'),
(80, 'Administrator (admin) Logged in', '1', '::1', '2022-06-19 02:49:52', '0000-00-00 00:00:00'),
(81, 'New Permission #33 Created by User: #1', '1', '::1', '2022-06-19 02:50:18', '0000-00-00 00:00:00'),
(82, 'New Permission #34 Created by User: #1', '1', '::1', '2022-06-19 02:50:37', '0000-00-00 00:00:00'),
(83, 'New Permission #35 Created by User: #1', '1', '::1', '2022-06-19 02:50:59', '0000-00-00 00:00:00'),
(84, 'Role #1 Updated by User: #1', '1', '::1', '2022-06-19 02:52:58', '0000-00-00 00:00:00'),
(85, 'Role #4 Updated by User: #1', '1', '::1', '2022-06-19 02:53:13', '0000-00-00 00:00:00'),
(86, 'Data Pinjaman Dikembalikan 1 Created by User:Administrator', '1', '::1', '2022-06-19 03:48:53', '0000-00-00 00:00:00'),
(87, 'Data Pinjaman Dikembalikan 2 Created by User:Administrator', '1', '::1', '2022-06-19 03:52:01', '0000-00-00 00:00:00'),
(88, 'Data Pinjaman Dikembalikan 4 Created by User:Administrator', '1', '::1', '2022-06-19 03:57:00', '0000-00-00 00:00:00'),
(89, 'Data Pinjaman Dikembalikan 4 Created by User:Administrator', '1', '::1', '2022-06-19 04:06:27', '0000-00-00 00:00:00'),
(90, 'Data Pinjaman Dikembalikan 4 Created by User:Administrator', '1', '::1', '2022-06-19 04:08:19', '0000-00-00 00:00:00'),
(91, 'User: Administrator Logged Out', '1', '::1', '2022-06-19 04:26:55', '0000-00-00 00:00:00'),
(92, 'Administrator (admin) Logged in', '1', '::1', '2022-06-19 04:27:13', '0000-00-00 00:00:00'),
(93, 'User: Administrator Logged Out', '1', '::1', '2022-06-19 04:34:16', '0000-00-00 00:00:00'),
(94, 'Rifqi Riza Irfansyah (rifqi_riza_irfansyah) Logged in', '2', '::1', '2022-06-19 04:34:22', '0000-00-00 00:00:00'),
(95, 'User: Rifqi Riza Irfansyah Logged Out', '2', '::1', '2022-06-19 04:35:50', '0000-00-00 00:00:00'),
(96, 'Administrator (admin) Logged in', '1', '::1', '2022-06-19 04:35:55', '0000-00-00 00:00:00'),
(97, 'New User $3 Created by User:Administrator', '1', '::1', '2022-06-19 04:36:54', '0000-00-00 00:00:00'),
(98, 'User: Administrator Logged Out', '1', '::1', '2022-06-19 04:37:04', '0000-00-00 00:00:00'),
(99, 'Administrator (admin) Logged in', '1', '::1', '2022-06-19 04:37:15', '0000-00-00 00:00:00'),
(100, 'Role #3 Updated by User: #1', '1', '::1', '2022-06-19 04:38:33', '0000-00-00 00:00:00'),
(101, 'User: Administrator Logged Out', '1', '::1', '2022-06-19 04:38:36', '0000-00-00 00:00:00'),
(102, 'operator (operator) Logged in', '3', '::1', '2022-06-19 04:38:42', '0000-00-00 00:00:00'),
(103, 'User: operator Logged Out', '3', '::1', '2022-06-19 04:40:56', '0000-00-00 00:00:00'),
(104, 'Administrator (admin) Logged in', '1', '::1', '2022-06-19 04:41:04', '0000-00-00 00:00:00'),
(105, 'Role #3 Updated by User: #1', '1', '::1', '2022-06-19 04:41:57', '0000-00-00 00:00:00'),
(106, 'User: Administrator Logged Out', '1', '::1', '2022-06-19 04:42:00', '0000-00-00 00:00:00'),
(107, 'operator (operator) Logged in', '3', '::1', '2022-06-19 04:42:07', '0000-00-00 00:00:00'),
(108, 'Administrator (admin) Logged in', '1', '::1', '2022-06-26 01:52:39', '0000-00-00 00:00:00'),
(109, 'New Permission #36 Created by User: #1', '1', '::1', '2022-06-26 01:58:54', '0000-00-00 00:00:00'),
(110, 'New Permission #37 Created by User: #1', '1', '::1', '2022-06-26 01:59:34', '0000-00-00 00:00:00'),
(111, 'New Permission #38 Created by User: #1', '1', '::1', '2022-06-26 01:59:43', '0000-00-00 00:00:00'),
(112, 'New Permission #39 Created by User: #1', '1', '::1', '2022-06-26 02:02:28', '0000-00-00 00:00:00'),
(113, 'Role #1 Updated by User: #1', '1', '::1', '2022-06-26 02:02:47', '0000-00-00 00:00:00'),
(114, 'Role #3 Updated by User: #1', '1', '::1', '2022-06-26 02:03:19', '0000-00-00 00:00:00'),
(115, 'Data Ruangan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2022-06-26 02:05:37', '0000-00-00 00:00:00'),
(116, 'Data Ruangan Ditambahkan 1 Created by User:Administrator', '1', '::1', '2022-06-26 02:07:32', '0000-00-00 00:00:00'),
(117, 'New Permission #40 Created by User: #1', '1', '::1', '2022-06-26 02:31:15', '0000-00-00 00:00:00'),
(118, 'Role #1 Updated by User: #1', '1', '::1', '2022-06-26 02:31:23', '0000-00-00 00:00:00'),
(119, 'New Permission #41 Created by User: #1', '1', '::1', '2022-06-26 02:48:09', '0000-00-00 00:00:00'),
(120, 'New Permission #42 Created by User: #1', '1', '::1', '2022-06-26 02:48:28', '0000-00-00 00:00:00'),
(121, 'Role #1 Updated by User: #1', '1', '::1', '2022-06-26 02:50:10', '0000-00-00 00:00:00'),
(122, 'Role #3 Updated by User: #1', '1', '::1', '2022-06-26 02:50:23', '0000-00-00 00:00:00'),
(123, 'New Permission #43 Created by User: #1', '1', '::1', '2022-06-26 02:51:06', '0000-00-00 00:00:00'),
(124, 'Permission #43 Updated by User: #1', '1', '::1', '2022-06-26 02:53:12', '0000-00-00 00:00:00'),
(125, 'Role #1 Updated by User: #1', '1', '::1', '2022-06-26 02:53:32', '0000-00-00 00:00:00'),
(126, 'Data Perawatan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2022-06-26 03:05:49', '0000-00-00 00:00:00'),
(127, 'Data Perawatan Ditambahkan 2 Created by User:Administrator', '1', '::1', '2022-06-26 03:07:16', '0000-00-00 00:00:00'),
(128, ' #1 Deleted by User:Administrator', '1', '::1', '2022-06-26 03:09:41', '0000-00-00 00:00:00'),
(129, ' #1 Deleted by User:Administrator', '1', '::1', '2022-06-26 03:10:24', '0000-00-00 00:00:00'),
(130, ' #1 Deleted by User:Administrator', '1', '::1', '2022-06-26 03:10:32', '0000-00-00 00:00:00'),
(131, ' #1 Deleted by User:Administrator', '1', '::1', '2022-06-26 03:14:17', '0000-00-00 00:00:00'),
(132, ' #1 Deleted by User:Administrator', '1', '::1', '2022-06-26 03:14:39', '0000-00-00 00:00:00'),
(133, ' #1 Deleted by User:Administrator', '1', '::1', '2022-06-26 03:19:07', '0000-00-00 00:00:00'),
(134, ' #1 Deleted by User:Administrator', '1', '::1', '2022-06-26 03:20:32', '0000-00-00 00:00:00'),
(135, 'Data Perawatan Ditambahkan 3 Created by User:Administrator', '1', '::1', '2022-06-26 03:25:00', '0000-00-00 00:00:00'),
(136, 'Data Ruangan Ditambahkan 2 Created by User:Administrator', '1', '::1', '2022-06-26 03:50:12', '0000-00-00 00:00:00'),
(137, 'Data Perawatan Ditambahkan 4 Created by User:Administrator', '1', '::1', '2022-06-26 03:50:51', '0000-00-00 00:00:00'),
(138, 'Data Pinjaman Ditambahkan 8 Created by User:Administrator', '1', '::1', '2022-06-26 03:51:36', '0000-00-00 00:00:00'),
(139, 'User: Administrator Logged Out', '1', '::1', '2022-06-26 03:52:09', '0000-00-00 00:00:00'),
(140, 'operator (operator) Logged in', '3', '::1', '2022-06-26 03:52:16', '0000-00-00 00:00:00'),
(141, 'Data Pinjaman Inventaris #8 Dikonfirmasi Oleh Operator :operator', '3', '::1', '2022-06-26 03:52:53', '0000-00-00 00:00:00'),
(142, 'Data Pinjaman Dikembalikan 8 Created by User:operator', '3', '::1', '2022-06-26 03:53:50', '0000-00-00 00:00:00'),
(143, 'User: operator Logged Out', '3', '::1', '2022-06-26 03:54:32', '0000-00-00 00:00:00'),
(144, 'Administrator (admin) Logged in', '1', '::1', '2022-06-26 03:54:41', '0000-00-00 00:00:00'),
(145, 'User: Administrator Logged Out', '1', '::1', '2022-06-26 03:54:52', '0000-00-00 00:00:00'),
(146, 'Rifqi Riza Irfansyah (rifqi_riza_irfansyah) Logged in', '2', '::1', '2022-06-26 03:54:56', '0000-00-00 00:00:00'),
(147, 'Data Pinjaman Ditambahkan 9 Created by User:Rifqi Riza Irfansyah', '2', '::1', '2022-06-26 03:56:19', '0000-00-00 00:00:00'),
(148, 'Data Pinjaman Ditambahkan 10 Created by User:Rifqi Riza Irfansyah', '2', '::1', '2022-06-26 03:57:27', '0000-00-00 00:00:00'),
(149, 'User: Rifqi Riza Irfansyah Logged Out', '2', '::1', '2022-06-26 04:00:17', '0000-00-00 00:00:00'),
(150, 'Administrator (admin) Logged in', '1', '::1', '2022-06-26 04:00:21', '0000-00-00 00:00:00'),
(151, 'User: Administrator Logged Out', '1', '::1', '2022-06-26 04:17:17', '0000-00-00 00:00:00'),
(152, 'Administrator (admin) Logged in', '1', '::1', '2022-06-26 04:17:25', '0000-00-00 00:00:00'),
(153, 'User: Administrator Logged Out', '1', '::1', '2022-06-26 04:17:29', '0000-00-00 00:00:00'),
(154, 'Rifqi Riza Irfansyah (rifqi_riza_irfansyah) Logged in', '2', '::1', '2022-06-26 04:17:35', '0000-00-00 00:00:00'),
(155, 'Administrator (admin) Logged in', '1', '::1', '2022-07-24 01:10:19', '0000-00-00 00:00:00'),
(156, 'Data Inventaris Ditambahkan 4 Created by User:Administrator', '1', '::1', '2022-07-24 01:11:16', '0000-00-00 00:00:00'),
(157, 'New Permission #44 Created by User: #1', '1', '::1', '2022-07-24 01:15:12', '0000-00-00 00:00:00'),
(158, 'New Permission #45 Created by User: #1', '1', '::1', '2022-07-24 01:15:25', '0000-00-00 00:00:00'),
(159, 'New Permission #46 Created by User: #1', '1', '::1', '2022-07-24 01:15:44', '0000-00-00 00:00:00'),
(160, 'New Permission #47 Created by User: #1', '1', '::1', '2022-07-24 01:16:14', '0000-00-00 00:00:00'),
(161, 'New Permission #48 Created by User: #1', '1', '::1', '2022-07-24 01:17:24', '0000-00-00 00:00:00'),
(162, 'Role #1 Updated by User: #1', '1', '::1', '2022-07-24 01:17:53', '0000-00-00 00:00:00'),
(163, 'Role #3 Updated by User: #1', '1', '::1', '2022-07-24 01:18:11', '0000-00-00 00:00:00'),
(164, 'Data Kategori Ditambahkan 0 Created by User:Administrator', '1', '::1', '2022-07-24 01:21:34', '0000-00-00 00:00:00'),
(165, 'Data Kategori Ditambahkan 0 Created by User:Administrator', '1', '::1', '2022-07-24 01:22:26', '0000-00-00 00:00:00'),
(166, 'Data Kategori Ditambahkan 0 Created by User:Administrator', '1', '::1', '2022-07-24 01:32:21', '0000-00-00 00:00:00'),
(167, 'Data Kategori Ditambahkan 0 Created by User:Administrator', '1', '::1', '2022-07-24 01:33:00', '0000-00-00 00:00:00'),
(168, 'Data Kategori Ditambahkan 3 Created by User:Administrator', '1', '::1', '2022-07-24 01:33:47', '0000-00-00 00:00:00'),
(169, 'Data Kategori Ditambahkan 4 Created by User:Administrator', '1', '::1', '2022-07-24 01:33:57', '0000-00-00 00:00:00'),
(170, 'Data Ruangan Ditambahkan 3 Created by User:Administrator', '1', '::1', '2022-07-24 01:34:44', '0000-00-00 00:00:00'),
(171, 'Data Ruangan Ditambahkan 4 Created by User:Administrator', '1', '::1', '2022-07-24 01:34:54', '0000-00-00 00:00:00'),
(172, 'Data Ruangan Ditambahkan 5 Created by User:Administrator', '1', '::1', '2022-07-24 01:35:04', '0000-00-00 00:00:00'),
(173, 'Data Ruangan Ditambahkan 6 Created by User:Administrator', '1', '::1', '2022-07-24 01:35:40', '0000-00-00 00:00:00'),
(174, 'Data Ruangan #4 Updated by User: #1', '1', '::1', '2022-07-24 01:35:54', '0000-00-00 00:00:00'),
(175, 'Data Ruangan #5 Updated by User: #1', '1', '::1', '2022-07-24 01:35:58', '0000-00-00 00:00:00'),
(176, 'Data Ruangan #6 Updated by User: #1', '1', '::1', '2022-07-24 01:36:02', '0000-00-00 00:00:00'),
(177, 'Data Ruangan Ditambahkan 7 Created by User:Administrator', '1', '::1', '2022-07-24 01:36:21', '0000-00-00 00:00:00'),
(178, 'Data Ruangan Ditambahkan 8 Created by User:Administrator', '1', '::1', '2022-07-24 01:36:44', '0000-00-00 00:00:00'),
(179, 'Data Ruangan Ditambahkan 9 Created by User:Administrator', '1', '::1', '2022-07-24 01:36:54', '0000-00-00 00:00:00'),
(180, 'Data Fasilitas Ditambahkan 3 Created by User:Administrator', '1', '::1', '2022-07-24 01:39:12', '0000-00-00 00:00:00'),
(181, 'Data Fasilitas Ditambahkan 4 Created by User:Administrator', '1', '::1', '2022-07-24 01:39:22', '0000-00-00 00:00:00'),
(182, 'Data Fasilitas Ditambahkan 5 Created by User:Administrator', '1', '::1', '2022-07-24 01:39:39', '0000-00-00 00:00:00'),
(183, 'Data Fasilitas Ditambahkan 6 Created by User:Administrator', '1', '::1', '2022-07-24 01:39:54', '0000-00-00 00:00:00'),
(184, 'Data Inventaris Ditambahkan 5 Created by User:Administrator', '1', '::1', '2022-07-24 01:41:19', '0000-00-00 00:00:00'),
(185, 'Data Inventaris Ditambahkan 6 Created by User:Administrator', '1', '::1', '2022-07-24 01:43:04', '0000-00-00 00:00:00'),
(186, 'Data Inventaris Ditambahkan 7 Created by User:Administrator', '1', '::1', '2022-07-24 01:43:44', '0000-00-00 00:00:00'),
(187, 'Data Inventaris Ditambahkan 8 Created by User:Administrator', '1', '::1', '2022-07-24 01:44:27', '0000-00-00 00:00:00'),
(188, 'Data Inventaris Ditambahkan 9 Created by User:Administrator', '1', '::1', '2022-07-24 01:45:22', '0000-00-00 00:00:00'),
(189, 'Data Inventaris Ditambahkan 10 Created by User:Administrator', '1', '::1', '2022-07-24 01:46:12', '0000-00-00 00:00:00'),
(190, 'Data Inventaris #10 Updated by User:Administrator', '1', '::1', '2022-07-24 01:46:33', '0000-00-00 00:00:00'),
(191, 'Data Inventaris Ditambahkan 11 Created by User:Administrator', '1', '::1', '2022-07-24 01:47:52', '0000-00-00 00:00:00'),
(192, 'Data Inventaris Ditambahkan 12 Created by User:Administrator', '1', '::1', '2022-07-24 02:05:04', '0000-00-00 00:00:00'),
(193, 'Data Inventaris Ditambahkan 13 Created by User:Administrator', '1', '::1', '2022-07-24 02:06:13', '0000-00-00 00:00:00'),
(194, 'Data Inventaris Ditambahkan 14 Created by User:Administrator', '1', '::1', '2022-07-24 02:09:01', '0000-00-00 00:00:00'),
(195, 'Data Inventaris Ditambahkan 15 Created by User:Administrator', '1', '::1', '2022-07-24 02:11:03', '0000-00-00 00:00:00'),
(196, 'Data Inventaris Ditambahkan 16 Created by User:Administrator', '1', '::1', '2022-07-24 02:12:41', '0000-00-00 00:00:00'),
(197, 'Data Inventaris Ditambahkan 17 Created by User:Administrator', '1', '::1', '2022-07-24 02:14:46', '0000-00-00 00:00:00'),
(198, 'Data Inventaris Ditambahkan 18 Created by User:Administrator', '1', '::1', '2022-07-24 02:16:41', '0000-00-00 00:00:00'),
(199, 'Data Inventaris Ditambahkan 19 Created by User:Administrator', '1', '::1', '2022-07-24 02:17:31', '0000-00-00 00:00:00'),
(200, 'Data Inventaris Ditambahkan 20 Created by User:Administrator', '1', '::1', '2022-07-24 02:18:10', '0000-00-00 00:00:00'),
(201, 'Data Inventaris Ditambahkan 21 Created by User:Administrator', '1', '::1', '2022-07-24 02:18:58', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `alat_sedang_dipakais`
--

CREATE TABLE `alat_sedang_dipakais` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(32) NOT NULL,
  `kode_ruangan` int(11) NOT NULL,
  `id_fasilitas` int(11) NOT NULL,
  `tanggal_terpakai` date NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alat_sedang_dipakais`
--

INSERT INTO `alat_sedang_dipakais` (`id`, `kode_barang`, `kode_ruangan`, `id_fasilitas`, `tanggal_terpakai`, `id_pengguna`, `status`) VALUES
(5, '13.56.09.201', 0, 2, '2022-06-20', 2, 'Dikonfirmasi - Belum Dikembalikan'),
(6, '13.56.09.201', 0, 2, '2022-06-23', 2, 'Dikonfirmasi - Belum Dikembalikan'),
(7, '13.56.09.201', 0, 2, '2022-06-20', 2, 'Dikonfirmasi - Belum Dikembalikan'),
(9, '12.54.120', 0, 2, '2022-06-30', 2, 'Menunggu Konfirmasi'),
(10, '13.56.09.201', 0, 2, '2022-06-23', 2, 'Menunggu Konfirmasi');

-- --------------------------------------------------------

--
-- Table structure for table `data_inventaris`
--

CREATE TABLE `data_inventaris` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(100) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `id` int(11) NOT NULL,
  `merek` varchar(100) NOT NULL,
  `asal_usul` varchar(100) NOT NULL,
  `tahun_peredaran` date NOT NULL,
  `ukuran` varchar(100) NOT NULL,
  `satuan` varchar(100) NOT NULL,
  `kondisi` varchar(100) NOT NULL,
  `harga_barang` int(11) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `masa_hidup_alat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_inventaris`
--

INSERT INTO `data_inventaris` (`id`, `kode_barang`, `nama_barang`, `id`, `merek`, `asal_usul`, `tahun_peredaran`, `ukuran`, `satuan`, `kondisi`, `harga_barang`, `keterangan`, `masa_hidup_alat`) VALUES
(1, '12.54.120', 'Meja Rucika', 0, 'Rucika', 'PABD', '2019-01-20', '20', 'm2', 'rusak', 5000, 'ksds', '1 Tahun'),
(3, '13.56.09.201', 'Kursi', 0, 'Chiose', 'APBD Negara', '2022-09-20', '-', 'unit', 'baik', 360000, 'Kursi pada kelas A', '3 Tahun'),
(4, '12.20.23.12.22', 'Komputer 1', 0, 'Acer', 'APBD Negara', '2022-07-24', '1', 'unit', 'baik', 5000000, 'Komputer lab', '5 Tahun'),
(5, '13.56.09.202', 'Komputer 2', 0, 'Acer', 'APBD Negara', '2022-07-24', '1', 'unit', 'baik', 5500000, 'Komputer 2\r\n', '1 Tahun'),
(6, '13.56.09.203', 'Komputer 3', 0, 'Acer', 'APBD Negara', '2022-07-24', '1', 'unit', 'baik', 5500000, 'Komputer Lab\r\n', '1 Tahun'),
(7, '13.56.09.204', 'Komputer 4', 0, 'Acer', 'APBD Negara', '2022-07-24', '1', 'unit', 'baik', 5500000, 'Komputer\r\n', '1 Tahun'),
(8, '13.56.09.205', 'Komputer 6', 0, 'Acer', 'APBD Negara', '2022-07-24', '1', 'unit', 'baik', 0, 'Komputer\r\n', '1 Tahun'),
(9, '13.56.09.100', 'Buku Negara', 0, 'Buku Sinar Jaya', 'APBD NEgara', '0000-00-00', '1', 'unit', 'baik', 550000, 'Buku Negara', '1 Tahun'),
(10, '13.56.09.101', 'Buku Tulis', 0, 'Sinar Jaya', 'APBD Negara', '2022-07-24', '1', 'buah', 'baik', 0, '0', '1 Tahun'),
(11, '13.56.09.103', 'Buku Akademik', 0, 'Buku Sinar', 'Akademik', '2022-07-24', '1', 'buah', 'baik', 500000, 'Buku Akademik\r\n', '1 Tahun'),
(12, '13.56.09.106', 'Buku Indonesia', 0, 'Sinar', 'APBD Negara', '2022-07-24', '1', 'buah', 'baik', 500000, 'Buku indonesia\r\n', '1 Tahun'),
(13, '13.56.09.210', 'Speaker 1', 0, 'DBE', 'APBD Negara', '2022-07-24', '1', 'unit', 'baik', 450000, 'Speaker Kelas\r\n', '3 Tahun'),
(14, '13.56.09.211', 'Speaker 2', 0, 'DBE', 'APBD Negara', '2022-07-24', '1', 'unit', 'baik', 54000, 'Speaker Kelas', '1 Tahun'),
(15, '13.56.09.212', 'Headset 1', 0, 'DBE', 'APBD Negara', '2022-07-24', '1', 'unit', 'baik', 30000, 'Headet 1', '1 Tahun'),
(16, '13.56.09.212', 'Monitor', 0, 'Acer', 'APBD Negara', '2022-07-24', '1', 'buah', 'baik', 40050, 'Monitor Acer', '1 Tahun'),
(17, '13.56.09.214', 'Monitor 3', 0, 'Acer ', 'APBD Negara', '2022-07-24', '1', 'unit', 'baik', 450000, 'Acer Monitor', '1 Tahun'),
(18, '13.56.09.220', 'Meja 5', 0, 'Chitose', 'APBD', '2020-07-24', '1', 'buah', 'baik', 50000, 'Meja Kelas', '1 Tahun'),
(19, '13.56.09.221', 'Meja4', 0, 'Chitose', 'APBD Negara', '2022-07-24', '1', 'buah', 'baik', 500000, 'Meja Kelas', '1 Tahun'),
(20, '13.56.09.224', 'Meja 5', 0, 'Chitose', 'APBD Negara', '2020-09-07', '1', 'buah', 'baik', 500000, 'Meja\r\n', '1 Tahun'),
(21, '13.56.09.228', 'Kursi 8', 0, 'Chitose', 'APBD Negara', '2020-07-07', '1', 'buah', 'baik', 60000, 'Kursi 8', '1 Tahun');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `code` text NOT NULL,
  `data` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `name`, `code`, `data`, `created_at`) VALUES
(1, 'Reset Password Template', 'reset_password', '<h1><strong>{company_name}</strong></h1>\r\n\r\n<h3>Click on Reset Link to Proceed : <a href=\"{reset_link}\">Reset Now</a></h3>\r\n', '2020-01-03 04:10:14');

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas`
--

CREATE TABLE `fasilitas` (
  `id` int(11) NOT NULL,
  `nama_fasilitas` text NOT NULL,
  `jenis_fasilitas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fasilitas`
--

INSERT INTO `fasilitas` (`id`, `nama_fasilitas`, `jenis_fasilitas`) VALUES
(1, 'Kelas', 'Kelas'),
(2, 'Lab Komputer', 'Lab'),
(3, 'Lab Kimia', 'Lab Kimia'),
(4, 'Lab Fisika', 'Lab Fisika'),
(5, 'Ruang Audiotorium', 'Ruangan'),
(6, 'Lapang Bola', 'Lapangan');

-- --------------------------------------------------------

--
-- Table structure for table `historys`
--

CREATE TABLE `historys` (
  `id_history` int(11) NOT NULL,
  `kode_barang` varchar(50) NOT NULL,
  `tahun` date NOT NULL,
  `kode_ruangan` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `nama_pemindah_barang` varchar(255) NOT NULL,
  `total_waktu_pemakaian` int(11) NOT NULL,
  `kondisi_barang` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `historys`
--

INSERT INTO `historys` (`id_history`, `kode_barang`, `tahun`, `kode_ruangan`, `keterangan`, `tanggal_masuk`, `tanggal_keluar`, `nama_pemindah_barang`, `total_waktu_pemakaian`, `kondisi_barang`) VALUES
(5, '12.54.120', '2019-01-20', 0, 'Sudah dikembalikan', '2022-06-13', '2022-06-20', 'Rifqi Riza Irfansyah', 0, 'baik'),
(6, '12.54.120', '2019-01-20', 0, 'Barang kursi sudah dikembalikan', '2022-06-30', '2022-06-26', 'Rifqi Riza Irfansyah', 0, 'baik');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_inventaris`
--

CREATE TABLE `kategori_inventaris` (
  `id` int(11) NOT NULL,
  `jenis_barang` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori_inventaris`
--

INSERT INTO `kategori_inventaris` (`id`, `jenis_barang`, `keterangan`) VALUES
(1, 'Furnitur Kelas', 'Kebutuhan Kelas'),
(2, 'Elektronik', 'Elektronik Barang'),
(3, 'Buku', 'Buku'),
(4, 'Alat Tulis', 'Alat Tulis');

-- --------------------------------------------------------

--
-- Table structure for table `perawatans`
--

CREATE TABLE `perawatans` (
  `id` int(11) NOT NULL,
  `tanggal_perawatan` date NOT NULL,
  `keterangan` text NOT NULL,
  `kode_barang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `perawatans`
--

INSERT INTO `perawatans` (`id`, `tanggal_perawatan`, `keterangan`, `kode_barang`) VALUES
(1, '2022-06-27', 'Barang sudah tidak memungkinkan', '12.54.120'),
(3, '2022-06-30', 'ini edited', '12.54.120'),
(4, '2022-06-27', 'Kursi rusak kakinya', '13.56.09.201');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `code` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `code`) VALUES
(1, 'Users List', 'users_list'),
(2, 'Add Users', 'users_add'),
(3, 'Edit Users', 'users_edit'),
(4, 'Delete Users', 'users_delete'),
(5, 'Users View', 'users_view'),
(6, 'Activity Logs List', 'activity_log_list'),
(7, 'Acivity Log View', 'activity_log_view'),
(8, 'Roles List', 'roles_list'),
(9, 'Add Roles', 'roles_add'),
(10, 'Edit Roles', 'roles_edit'),
(11, 'Permissions List', 'permissions_list'),
(12, 'Add Permissions', 'permissions_add'),
(13, 'Permissions Edit', 'permissions_edit'),
(14, 'Delete Permissions', 'permissions_delete'),
(15, 'Company Settings', 'company_settings'),
(16, 'Backup', 'backup_db'),
(17, 'Manage Email Templates', 'email_templates'),
(18, 'General Settings', 'general_settings'),
(19, 'Inventaris List', 'inventaris_list'),
(20, 'Add Data Inventaris', 'inventaris_add'),
(21, 'Inventaris Delete', 'inventaris_delete'),
(22, 'Inventaris Edit', 'inventaris_edit'),
(23, 'Inventaris View', 'inventaris_view'),
(24, 'Fasilitas List', 'fasilitas_list'),
(25, 'Fasilitas Add', 'fasilitas_add'),
(26, 'Fasilitas Edit', 'fasilitas_edit'),
(27, 'Fasilitas Delete', 'fasilitas_delete'),
(28, 'Pinjaman List', 'pinjaman_list'),
(29, 'Pinjaman Add', 'pinjaman_add'),
(30, 'Pinjaman Delete', 'pinjaman_delete'),
(31, 'Pinjaman Edit', 'pinjaman_edit'),
(32, 'Konfirmasi Peminjaman', 'pinjaman_confirmation'),
(33, 'Pengembalian List', 'pengembalian_list'),
(34, 'Pengembalian Add', 'pengembalian_add'),
(35, 'List History', 'history_list'),
(36, 'Ruangan List', 'ruangan_list'),
(37, 'Ruangan Add', 'ruangan_add'),
(38, 'Ruangan Edit', 'ruangan_edit'),
(39, 'Ruangan Delete', 'ruangan_delete'),
(40, 'Perawatan List', 'perawatan_list'),
(41, 'Perawatan Add', 'perawatan_add'),
(42, 'Perawatan Delete', 'perawatan_delete'),
(43, 'Perawatan Edit', 'perawatan_edit'),
(44, 'kategori list', 'kategori_list'),
(45, 'kategori add', 'kategori_add'),
(46, 'kategori delete', 'kategori_delete'),
(47, 'kategori edit', 'kategori_edit'),
(48, 'kategori view', 'kategori_view');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`) VALUES
(1, 'Admin'),
(2, 'Manager'),
(3, 'Operator'),
(4, 'Mahasiswa');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`id`, `role`, `permission`) VALUES
(1, 1, 'users_list'),
(2, 1, 'users_add'),
(3, 1, 'users_edit'),
(4, 1, 'users_delete'),
(5, 1, 'users_view'),
(6, 1, 'activity_log_view'),
(7, 1, 'roles_list'),
(8, 1, 'roles_add'),
(9, 1, 'roles_edit'),
(10, 1, 'permissions_list'),
(11, 1, 'permissions_add'),
(12, 1, 'permissions_edit'),
(13, 1, 'permissions_delete'),
(14, 1, 'company_settings'),
(15, 1, 'activity_log_list'),
(16, 1, 'email_templates'),
(17, 1, 'general_settings'),
(18, 1, 'backup_db'),
(19, 2, 'users_list'),
(20, 2, 'users_add'),
(21, 2, 'users_edit'),
(22, 2, 'users_delete'),
(23, 2, 'users_view'),
(24, 2, 'roles_list'),
(25, 2, 'roles_add'),
(26, 2, 'roles_edit'),
(27, 2, 'permissions_list'),
(28, 2, 'permissions_add'),
(29, 2, 'permissions_edit'),
(30, 2, 'permissions_delete'),
(31, 1, 'inventaris_list'),
(32, 1, 'inventaris_add'),
(33, 1, 'inventaris_delete'),
(34, 1, 'inventaris_edit'),
(35, 1, 'inventaris_view'),
(36, 1, 'fasilitas_list'),
(37, 1, 'fasilitas_add'),
(38, 1, 'fasilitas_edit'),
(39, 1, 'fasilitas_delete'),
(40, 4, 'inventaris_list'),
(41, 1, 'pinjaman_list'),
(42, 1, 'pinjaman_add'),
(43, 1, 'pinjaman_delete'),
(44, 1, 'pinjaman_edit'),
(45, 4, 'fasilitas_list'),
(46, 4, 'pinjaman_list'),
(47, 4, 'pinjaman_add'),
(48, 1, 'pinjaman_confirmation'),
(49, 1, 'pengembalian_list'),
(50, 1, 'pengembalian_add'),
(51, 1, 'history_list'),
(52, 4, 'pengembalian_list'),
(53, 4, 'pengembalian_add'),
(54, 4, 'history_list'),
(60, 3, 'activity_log_list'),
(61, 3, 'activity_log_view'),
(62, 3, 'inventaris_list'),
(63, 3, 'inventaris_add'),
(64, 3, 'inventaris_delete'),
(65, 3, 'inventaris_edit'),
(66, 3, 'inventaris_view'),
(67, 3, 'fasilitas_list'),
(68, 3, 'fasilitas_add'),
(69, 3, 'fasilitas_edit'),
(70, 3, 'fasilitas_delete'),
(71, 3, 'pinjaman_list'),
(72, 3, 'pinjaman_add'),
(73, 3, 'pinjaman_delete'),
(74, 3, 'pinjaman_edit'),
(75, 3, 'pinjaman_confirmation'),
(76, 3, 'pengembalian_list'),
(77, 3, 'pengembalian_add'),
(78, 3, 'history_list'),
(79, 1, 'ruangan_list'),
(80, 1, 'ruangan_add'),
(81, 1, 'ruangan_edit'),
(82, 1, 'ruangan_delete'),
(83, 3, 'ruangan_list'),
(84, 3, 'ruangan_add'),
(85, 3, 'ruangan_edit'),
(86, 3, 'ruangan_delete'),
(87, 1, 'perawatan_list'),
(88, 1, 'perawatan_add'),
(89, 1, 'perawatan_delete'),
(90, 3, 'perawatan_list'),
(91, 3, 'perawatan_add'),
(92, 3, 'perawatan_delete'),
(93, 1, 'perawatan_edit'),
(94, 1, 'kategori_list'),
(95, 1, 'kategori_add'),
(96, 1, 'kategori_delete'),
(97, 1, 'kategori_edit'),
(98, 1, 'kategori_view'),
(99, 3, 'perawatan_edit'),
(100, 3, 'kategori_list'),
(101, 3, 'kategori_add'),
(102, 3, 'kategori_delete'),
(103, 3, 'kategori_edit'),
(104, 3, 'kategori_view');

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `id` int(11) NOT NULL,
  `nama_ruangan` text NOT NULL,
  `kapasitas_ruangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`id`, `nama_ruangan`, `kapasitas_ruangan`) VALUES
(1, 'Ruangan 17 Kelas Lantai 4', '40 Orang'),
(2, 'Ruangan Lantai 2', '50 Orang'),
(3, 'Ruangan 5 Kelas', '30 Orang'),
(4, 'Lab 3', '20'),
(5, 'Lab 4', '10'),
(6, 'Lab Komputer 5', '15'),
(7, 'Kelas Ruangan 8', '45'),
(8, 'Kelas Ruangan 9', '40'),
(9, 'Kelas Ruangan 10', '45');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `key` text NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`) VALUES
(1, 'company_name', 'AdminPRO', '2018-06-21 05:07:59'),
(2, 'company_email', 'ramansaluja849@gmail.com', '2018-07-10 22:39:58'),
(3, 'timezone', 'Asia/Kolkata', '2018-07-15 07:24:17'),
(4, 'login_theme', '1', '2019-06-06 01:34:28'),
(5, 'date_format', 'd F, Y', '2020-01-03 13:01:45'),
(6, 'datetime_format', 'h:m a - d M, Y ', '2020-01-03 13:02:24'),
(7, 'google_recaptcha_enabled', '0', '2020-01-04 12:14:03'),
(8, 'google_recaptcha_sitekey', '6LdIWswUAAAAAMRp6xt2wBu7V59jUvZvKWf_rbJc', '2020-01-04 12:14:17'),
(9, 'google_recaptcha_secretkey', '6LdIWswUAAAAAIsdboq_76c63PHFsOPJHNR-z-75', '2020-01-04 12:14:40'),
(10, 'bg_img_type', 'jpeg', '2020-01-06 11:23:33'),
(11, 'default_lang', 'en', '2021-04-12 03:23:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `username` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `phone` text NOT NULL,
  `address` longtext NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `role` int(11) NOT NULL,
  `reset_token` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `img_type` varchar(3000) NOT NULL DEFAULT 'png',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `phone`, `address`, `last_login`, `role`, `reset_token`, `status`, `img_type`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin', 'admin@gmail.com', '240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9', '123456', 'Puricipageran Indah 1 Blog G', '2022-07-23 23:07:40', 1, '', 1, 'png', '2018-06-27 06:00:16', '0000-00-00 00:00:00'),
(2, 'Rifqi Riza Irfansyah', 'rifqi_riza_irfansyah', 'rifqi@gmail.com', '65e84be33532fb784c48129675f9eff3a682b27168c0ea744b2cf58ee02337c5', '081214698881', 'pruicpageran', '2022-06-26 02:06:47', 4, '', 1, 'jpg', '2022-06-19 01:51:48', '0000-00-00 00:00:00'),
(3, 'operator', 'operator', 'operator@gmail.com', '65e84be33532fb784c48129675f9eff3a682b27168c0ea744b2cf58ee02337c5', '09128302183', 'operator address', '2022-06-26 02:06:22', 3, '', 1, 'png', '2022-06-19 04:36:54', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alat_sedang_dipakais`
--
ALTER TABLE `alat_sedang_dipakais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_inventaris`
--
ALTER TABLE `data_inventaris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `historys`
--
ALTER TABLE `historys`
  ADD PRIMARY KEY (`id_history`);

--
-- Indexes for table `kategori_inventaris`
--
ALTER TABLE `kategori_inventaris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perawatans`
--
ALTER TABLE `perawatans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `alat_sedang_dipakais`
--
ALTER TABLE `alat_sedang_dipakais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `data_inventaris`
--
ALTER TABLE `data_inventaris`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fasilitas`
--
ALTER TABLE `fasilitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `historys`
--
ALTER TABLE `historys`
  MODIFY `id_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kategori_inventaris`
--
ALTER TABLE `kategori_inventaris`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `perawatans`
--
ALTER TABLE `perawatans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `ruangan`
--
ALTER TABLE `ruangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

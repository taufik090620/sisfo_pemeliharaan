-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jun 2023 pada 05.15
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

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
-- Struktur dari tabel `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `user` text NOT NULL,
  `ip_address` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `activity_logs`
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
(117, 'New Permission #40 Created by User: #1', '1', '::1', '2022-07-02 13:23:49', '0000-00-00 00:00:00'),
(118, 'Role #1 Updated by User: #1', '1', '::1', '2022-07-02 13:23:56', '0000-00-00 00:00:00'),
(119, 'New Permission #41 Created by User: #1', '1', '::1', '2022-07-02 13:25:34', '0000-00-00 00:00:00'),
(120, 'Role #1 Updated by User: #1', '1', '::1', '2022-07-02 13:25:40', '0000-00-00 00:00:00'),
(121, 'Data Inventaris Dipindahkan Ke Ruangan # Updated by User: #1', '1', '::1', '2022-07-02 14:05:50', '0000-00-00 00:00:00'),
(122, 'Data Inventaris Dipindahkan Ke Ruangan # Updated by User: #1', '1', '::1', '2022-07-02 14:06:44', '0000-00-00 00:00:00'),
(123, 'Data Pinjaman Ditambahkan 8 Created by User:Administrator', '1', '::1', '2022-07-02 14:20:45', '0000-00-00 00:00:00'),
(124, ' #1 Deleted by User:Administrator', '1', '::1', '2022-07-02 14:23:57', '0000-00-00 00:00:00'),
(125, 'Data Pinjaman Ditambahkan 9 Created by User:Administrator', '1', '::1', '2022-07-02 14:44:06', '0000-00-00 00:00:00'),
(126, 'Administrator (admin) Logged in', '1', '::1', '2023-05-03 01:45:03', '0000-00-00 00:00:00'),
(127, 'New User $4 Created by User:Administrator', '1', '::1', '2023-05-03 01:46:07', '0000-00-00 00:00:00'),
(128, 'New User $5 Created by User:Administrator', '1', '::1', '2023-05-03 01:47:30', '0000-00-00 00:00:00'),
(129, 'New User $6 Created by User:Administrator', '1', '::1', '2023-05-03 01:48:36', '0000-00-00 00:00:00'),
(130, 'Administrator (admin) Logged in', '1', '127.0.0.1', '2023-05-04 01:00:05', '0000-00-00 00:00:00'),
(131, 'Administrator (admin) Logged in', '1', '::1', '2023-05-04 02:21:29', '0000-00-00 00:00:00'),
(132, 'User: Administrator Logged Out', '1', '::1', '2023-05-04 02:47:05', '0000-00-00 00:00:00'),
(133, 'Administrator (admin) Logged in', '1', '::1', '2023-05-04 02:47:19', '0000-00-00 00:00:00'),
(134, 'Administrator (admin) Logged in', '1', '::1', '2023-05-07 06:53:42', '0000-00-00 00:00:00'),
(135, 'Data Inventaris Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-05-07 08:23:09', '0000-00-00 00:00:00'),
(136, 'Data Inventaris Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-05-07 08:24:22', '0000-00-00 00:00:00'),
(137, 'Data Inventaris Ditambahkan 4 Created by User:Administrator', '1', '::1', '2023-05-07 08:25:40', '0000-00-00 00:00:00'),
(138, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-07 08:55:35', '0000-00-00 00:00:00'),
(139, 'Data Inventaris Ditambahkan 5 Created by User:Administrator', '1', '::1', '2023-05-07 08:57:52', '0000-00-00 00:00:00'),
(140, 'Data Inventaris Ditambahkan 6 Created by User:Administrator', '1', '::1', '2023-05-07 08:59:12', '0000-00-00 00:00:00'),
(141, 'Data Inventaris Ditambahkan 1 Created by User:Administrator', '1', '::1', '2023-05-07 09:02:23', '0000-00-00 00:00:00'),
(142, 'Data Inventaris Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-05-07 09:03:22', '0000-00-00 00:00:00'),
(143, 'Data Inventaris Ditambahkan 7 Created by User:Administrator', '1', '::1', '2023-05-07 09:04:41', '0000-00-00 00:00:00'),
(144, 'Administrator (admin) Logged in', '1', '::1', '2023-05-14 04:55:24', '0000-00-00 00:00:00'),
(145, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-14 04:56:37', '0000-00-00 00:00:00'),
(146, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-14 04:56:47', '0000-00-00 00:00:00'),
(147, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-14 04:56:52', '0000-00-00 00:00:00'),
(148, 'Data Inventaris Ditambahkan 8 Created by User:Administrator', '1', '::1', '2023-05-14 05:06:50', '0000-00-00 00:00:00'),
(149, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-14 05:06:59', '0000-00-00 00:00:00'),
(150, 'Data Inventaris Ditambahkan 9 Created by User:Administrator', '1', '::1', '2023-05-14 05:09:42', '0000-00-00 00:00:00'),
(151, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-14 05:18:52', '0000-00-00 00:00:00'),
(152, 'Data Inventaris Ditambahkan 10 Created by User:Administrator', '1', '::1', '2023-05-14 05:19:36', '0000-00-00 00:00:00'),
(153, 'Data Inventaris #10 Updated by User:Administrator', '1', '::1', '2023-05-14 05:21:32', '0000-00-00 00:00:00'),
(154, 'Data Inventaris #10 Updated by User:Administrator', '1', '::1', '2023-05-14 05:21:49', '0000-00-00 00:00:00'),
(155, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-14 05:23:54', '0000-00-00 00:00:00'),
(156, 'Data Inventaris #1 Updated by User:Administrator', '1', '::1', '2023-05-14 05:24:45', '0000-00-00 00:00:00'),
(157, 'Data Inventaris #1 Updated by User:Administrator', '1', '::1', '2023-05-14 05:24:55', '0000-00-00 00:00:00'),
(158, 'Data Inventaris Ditambahkan 11 Created by User:Administrator', '1', '::1', '2023-05-14 05:25:33', '0000-00-00 00:00:00'),
(159, 'Data Inventaris #11 Updated by User:Administrator', '1', '::1', '2023-05-14 05:25:43', '0000-00-00 00:00:00'),
(160, 'Data Inventaris #11 Updated by User:Administrator', '1', '::1', '2023-05-14 05:26:02', '0000-00-00 00:00:00'),
(161, 'Data Inventaris #11 Updated by User:Administrator', '1', '::1', '2023-05-14 05:26:42', '0000-00-00 00:00:00'),
(162, 'Data Ruangan #2 Updated by User: #1', '1', '::1', '2023-05-14 05:27:01', '0000-00-00 00:00:00'),
(163, 'Data Ruangan #1 Updated by User: #1', '1', '::1', '2023-05-14 05:27:10', '0000-00-00 00:00:00'),
(164, 'Data Inventaris #11 Updated by User: #1', '1', '::1', '2023-05-14 05:38:54', '0000-00-00 00:00:00'),
(165, 'Data Inventaris #11 Updated by User: #1', '1', '::1', '2023-05-14 05:39:12', '0000-00-00 00:00:00'),
(166, 'Data Inventaris #11 Updated by User: #1', '1', '::1', '2023-05-14 05:39:21', '0000-00-00 00:00:00'),
(167, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-14 05:39:35', '0000-00-00 00:00:00'),
(168, 'Data Inventaris Ditambahkan 12 Created by User:Administrator', '1', '::1', '2023-05-14 05:47:17', '0000-00-00 00:00:00'),
(169, 'Data Inventaris #12 Updated by User: #1', '1', '::1', '2023-05-14 05:47:38', '0000-00-00 00:00:00'),
(170, 'Data Pinjaman Ditambahkan 10 Created by User:Administrator', '1', '::1', '2023-05-14 05:59:10', '0000-00-00 00:00:00'),
(171, 'Data Pinjaman Inventaris #10 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-05-14 06:46:19', '0000-00-00 00:00:00'),
(172, 'Data Pinjaman Dikembalikan 10 Created by User:Administrator', '1', '::1', '2023-05-14 06:46:58', '0000-00-00 00:00:00'),
(173, 'Administrator (admin) Logged in', '1', '::1', '2023-05-17 13:32:50', '0000-00-00 00:00:00'),
(174, 'User #6 Updated by User:Administrator', '1', '::1', '2023-05-17 13:33:52', '0000-00-00 00:00:00'),
(175, 'wahyu saepudin (wahyu) Logged in', '6', '::1', '2023-05-17 13:34:06', '0000-00-00 00:00:00'),
(176, 'User: Administrator Logged Out', '1', '::1', '2023-05-17 13:40:52', '0000-00-00 00:00:00'),
(177, 'Data Pinjaman Ditambahkan 11 Created by User:wahyu saepudin', '6', '::1', '2023-05-17 13:55:07', '0000-00-00 00:00:00'),
(178, 'Administrator (admin) Logged in', '1', '::1', '2023-05-17 13:55:35', '0000-00-00 00:00:00'),
(179, 'Administrator (admin) Logged in', '1', '::1', '2023-05-18 05:19:40', '0000-00-00 00:00:00'),
(180, 'wahyu saepudin (wahyu) Logged in', '6', '::1', '2023-05-18 05:20:56', '0000-00-00 00:00:00'),
(181, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-18 05:24:29', '0000-00-00 00:00:00'),
(182, 'Data Pinjaman Ditambahkan 12 Created by User:wahyu saepudin', '6', '::1', '2023-05-18 05:24:55', '0000-00-00 00:00:00'),
(183, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-18 05:34:27', '0000-00-00 00:00:00'),
(184, 'Data Pinjaman Ditambahkan 13 Created by User:wahyu saepudin', '6', '::1', '2023-05-18 05:34:48', '0000-00-00 00:00:00'),
(185, 'Data Pinjaman Inventaris #13 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-05-18 05:35:01', '0000-00-00 00:00:00'),
(186, 'Data Pinjaman Dikembalikan 13 Created by User:wahyu saepudin', '6', '::1', '2023-05-18 05:38:46', '0000-00-00 00:00:00'),
(187, 'Data Pinjaman Ditambahkan 14 Created by User:wahyu saepudin', '6', '::1', '2023-05-18 05:39:04', '0000-00-00 00:00:00'),
(188, 'Data Pinjaman Ditambahkan 15 Created by User:Administrator', '1', '::1', '2023-05-18 05:39:58', '0000-00-00 00:00:00'),
(189, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-18 05:40:13', '0000-00-00 00:00:00'),
(190, 'Data Pinjaman Ditambahkan 16 Created by User:Administrator', '1', '::1', '2023-05-18 05:40:43', '0000-00-00 00:00:00'),
(191, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-18 05:40:54', '0000-00-00 00:00:00'),
(192, 'Data Pinjaman Ditambahkan 17 Created by User:Administrator', '1', '::1', '2023-05-18 05:44:28', '0000-00-00 00:00:00'),
(193, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-18 05:44:37', '0000-00-00 00:00:00'),
(194, 'Data Pinjaman Ditambahkan 18 Created by User:Administrator', '1', '::1', '2023-05-18 06:01:45', '0000-00-00 00:00:00'),
(195, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-18 06:02:04', '0000-00-00 00:00:00'),
(196, 'Data Pinjaman Ditambahkan 19 Created by User:Administrator', '1', '::1', '2023-05-18 06:02:24', '0000-00-00 00:00:00'),
(197, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-18 06:02:30', '0000-00-00 00:00:00'),
(198, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-18 06:02:33', '0000-00-00 00:00:00'),
(199, 'Role #1 Updated by User: #1', '1', '::1', '2023-05-18 06:05:43', '0000-00-00 00:00:00'),
(200, 'Role #1 Updated by User: #1', '1', '::1', '2023-05-18 06:20:32', '0000-00-00 00:00:00'),
(201, 'Data Pinjaman Ditambahkan 20 Created by User:wahyu saepudin', '6', '::1', '2023-05-18 06:20:53', '0000-00-00 00:00:00'),
(202, 'Administrator (admin) Logged in', '1', '::1', '2023-05-19 00:27:32', '0000-00-00 00:00:00'),
(203, 'wahyu saepudin (wahyu) Logged in', '6', '::1', '2023-05-19 00:28:23', '0000-00-00 00:00:00'),
(204, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-19 00:47:48', '0000-00-00 00:00:00'),
(205, 'Data Pinjaman Ditambahkan 21 Created by User:wahyu saepudin', '6', '::1', '2023-05-19 00:49:50', '0000-00-00 00:00:00'),
(206, 'Role #4 Updated by User: #1', '1', '::1', '2023-05-19 00:51:08', '0000-00-00 00:00:00'),
(207, ' #1 Deleted by User:wahyu saepudin', '6', '::1', '2023-05-19 00:51:25', '0000-00-00 00:00:00'),
(208, 'Data Pinjaman Ditambahkan 22 Created by User:Administrator', '1', '::1', '2023-05-19 00:58:32', '0000-00-00 00:00:00'),
(209, 'Data Pinjaman Inventaris #22 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-05-19 00:59:52', '0000-00-00 00:00:00'),
(210, 'Data Pinjaman Inventaris #22 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-05-19 01:01:27', '0000-00-00 00:00:00'),
(211, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-19 01:01:52', '0000-00-00 00:00:00'),
(212, 'Data Pinjaman Ditambahkan 23 Created by User:wahyu saepudin', '6', '::1', '2023-05-19 01:02:10', '0000-00-00 00:00:00'),
(213, 'Data Pinjaman Inventaris #23 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-05-19 01:02:17', '0000-00-00 00:00:00'),
(214, ' #1 Deleted by User:wahyu saepudin', '6', '::1', '2023-05-19 01:02:38', '0000-00-00 00:00:00'),
(215, 'Data Pinjaman Ditambahkan 24 Created by User:wahyu saepudin', '6', '::1', '2023-05-19 01:02:55', '0000-00-00 00:00:00'),
(216, 'Data Pinjaman Inventaris #24 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-05-19 01:03:37', '0000-00-00 00:00:00'),
(217, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-19 01:04:13', '0000-00-00 00:00:00'),
(218, 'Administrator (admin) Logged in', '1', '::1', '2023-05-19 02:33:11', '0000-00-00 00:00:00'),
(219, 'Data Pinjaman Ditambahkan 25 Created by User:Administrator', '1', '::1', '2023-05-19 02:33:29', '0000-00-00 00:00:00'),
(220, 'Data Pinjaman Inventaris #25 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-05-19 02:33:31', '0000-00-00 00:00:00'),
(221, 'Data Pinjaman Inventaris #25 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-05-19 02:34:28', '0000-00-00 00:00:00'),
(222, 'wahyu saepudin (wahyu) Logged in', '6', '::1', '2023-05-19 02:34:46', '0000-00-00 00:00:00'),
(223, ' #1 Deleted by User:wahyu saepudin', '6', '::1', '2023-05-19 02:35:01', '0000-00-00 00:00:00'),
(224, 'Data Pinjaman Ditambahkan 26 Created by User:wahyu saepudin', '6', '::1', '2023-05-19 02:35:31', '0000-00-00 00:00:00'),
(225, 'Data Pinjaman Inventaris #26 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-05-19 02:35:43', '0000-00-00 00:00:00'),
(226, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-19 02:38:09', '0000-00-00 00:00:00'),
(227, 'Data Pinjaman Ditambahkan 27 Created by User:Administrator', '1', '::1', '2023-05-19 02:38:33', '0000-00-00 00:00:00'),
(228, 'Data Pinjaman Inventaris #27 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-05-19 02:38:35', '0000-00-00 00:00:00'),
(229, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-19 02:38:43', '0000-00-00 00:00:00'),
(230, 'Data Pinjaman Ditambahkan 28 Created by User:Administrator', '1', '::1', '2023-05-19 02:53:14', '0000-00-00 00:00:00'),
(231, 'Data Pinjaman Inventaris #28 Dikonfirmasi Oleh Operator :', '1', '::1', '2023-05-19 03:02:17', '0000-00-00 00:00:00'),
(232, 'Data Pinjaman Inventaris #28 Dikonfirmasi Oleh Operator :', '1', '::1', '2023-05-19 03:02:20', '0000-00-00 00:00:00'),
(233, 'Data Pinjaman Inventaris #28 Dikonfirmasi Oleh Operator :', '1', '::1', '2023-05-19 03:03:32', '0000-00-00 00:00:00'),
(234, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-19 03:03:36', '0000-00-00 00:00:00'),
(235, ' #1 Deleted by User:wahyu saepudin', '6', '::1', '2023-05-19 03:03:45', '0000-00-00 00:00:00'),
(236, 'Data Pinjaman Ditambahkan 29 Created by User:Administrator', '1', '::1', '2023-05-19 03:08:41', '0000-00-00 00:00:00'),
(237, 'Data Pinjaman Inventaris #29 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-05-19 03:08:43', '0000-00-00 00:00:00'),
(238, 'Data Pinjaman Inventaris #29 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-05-19 03:08:46', '0000-00-00 00:00:00'),
(239, 'Data Pinjaman Inventaris #29 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-05-19 03:10:02', '0000-00-00 00:00:00'),
(240, 'Data Pinjaman Inventaris #29 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-05-19 03:10:34', '0000-00-00 00:00:00'),
(241, 'Administrator (admin) Logged in', '1', '::1', '2023-05-19 04:37:31', '0000-00-00 00:00:00'),
(242, 'Data Inventaris Ditambahkan 13 Created by User:Administrator', '1', '::1', '2023-05-19 04:38:24', '0000-00-00 00:00:00'),
(243, 'New User $7 Created by User:Administrator', '1', '::1', '2023-05-19 04:39:09', '0000-00-00 00:00:00'),
(244, 'Irni (irni) Logged in', '7', '::1', '2023-05-19 04:39:32', '0000-00-00 00:00:00'),
(245, ' #1 Deleted by User:Irni', '7', '::1', '2023-05-19 04:39:40', '0000-00-00 00:00:00'),
(246, 'Data Pinjaman Ditambahkan 30 Created by User:Irni', '7', '::1', '2023-05-19 04:40:03', '0000-00-00 00:00:00'),
(247, 'Data Pinjaman Inventaris #30 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-05-19 04:40:11', '0000-00-00 00:00:00'),
(248, 'User #7 Updated by User:Administrator', '1', '::1', '2023-05-19 04:41:51', '0000-00-00 00:00:00'),
(249, 'Data Inventaris Ditambahkan 14 Created by User:Administrator', '1', '::1', '2023-05-19 04:43:34', '0000-00-00 00:00:00'),
(250, 'Data Pinjaman Ditambahkan 31 Created by User:XI-A', '7', '::1', '2023-05-19 04:43:57', '0000-00-00 00:00:00'),
(251, 'Data Inventaris #13 Updated by User: #1', '1', '::1', '2023-05-19 04:44:19', '0000-00-00 00:00:00'),
(252, 'Data Inventaris #14 Updated by User: #1', '1', '::1', '2023-05-19 04:44:35', '0000-00-00 00:00:00'),
(253, 'Data Inventaris Ditambahkan 15 Created by User:Administrator', '1', '::1', '2023-05-19 04:46:19', '0000-00-00 00:00:00'),
(254, 'Data Pinjaman Ditambahkan 32 Created by User:XI-A', '7', '::1', '2023-05-19 04:47:09', '0000-00-00 00:00:00'),
(255, 'Data Pinjaman Inventaris #31 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-05-19 04:47:28', '0000-00-00 00:00:00'),
(256, 'Data Pinjaman Inventaris #32 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-05-19 04:47:30', '0000-00-00 00:00:00'),
(257, 'Administrator (admin) Logged in', '1', '::1', '2023-05-20 04:34:37', '0000-00-00 00:00:00'),
(258, 'wahyu saepudin (wahyu) Logged in', '6', '::1', '2023-05-20 04:46:16', '0000-00-00 00:00:00'),
(259, 'New Permission #42 Created by User: #1', '1', '::1', '2023-05-20 05:19:49', '0000-00-00 00:00:00'),
(260, 'Role #1 Updated by User: #1', '1', '::1', '2023-05-20 05:20:02', '0000-00-00 00:00:00'),
(261, 'New Permission #43 Created by User: #1', '1', '::1', '2023-05-20 07:25:53', '0000-00-00 00:00:00'),
(262, 'Role #4 Updated by User: #1', '1', '::1', '2023-05-20 07:26:07', '0000-00-00 00:00:00'),
(263, 'wahyu saepudin (wahyu) Logged in', '6', '::1', '2023-05-20 07:26:23', '0000-00-00 00:00:00'),
(264, 'Role #4 Updated by User: #1', '1', '::1', '2023-05-20 07:27:04', '0000-00-00 00:00:00'),
(265, 'Administrator (admin) Logged in', '1', '::1', '2023-05-20 13:40:09', '0000-00-00 00:00:00'),
(266, 'Permission # Deleted by User: #1', '1', '::1', '2023-05-20 13:42:22', '0000-00-00 00:00:00'),
(267, 'Permission # Deleted by User: #1', '1', '::1', '2023-05-20 13:42:35', '0000-00-00 00:00:00'),
(268, 'Permission # Deleted by User: #1', '1', '::1', '2023-05-20 13:42:43', '0000-00-00 00:00:00'),
(269, 'Permission # Deleted by User: #1', '1', '::1', '2023-05-20 13:42:49', '0000-00-00 00:00:00'),
(270, 'Permission # Deleted by User: #1', '1', '::1', '2023-05-20 13:42:55', '0000-00-00 00:00:00'),
(271, 'Permission # Deleted by User: #1', '1', '::1', '2023-05-20 13:43:43', '0000-00-00 00:00:00'),
(272, 'Permission # Deleted by User: #1', '1', '::1', '2023-05-20 13:43:48', '0000-00-00 00:00:00'),
(273, 'New Permission #44 Created by User: #1', '1', '::1', '2023-05-20 13:54:23', '0000-00-00 00:00:00'),
(274, 'Role #1 Updated by User: #1', '1', '::1', '2023-05-20 13:54:34', '0000-00-00 00:00:00'),
(275, 'New Permission #45 Created by User: #1', '1', '::1', '2023-05-20 13:55:06', '0000-00-00 00:00:00'),
(276, 'Role #1 Updated by User: #1', '1', '::1', '2023-05-20 13:55:19', '0000-00-00 00:00:00'),
(277, 'New Permission #46 Created by User: #1', '1', '::1', '2023-05-20 13:56:06', '0000-00-00 00:00:00'),
(278, 'New Permission #47 Created by User: #1', '1', '::1', '2023-05-20 13:56:56', '0000-00-00 00:00:00'),
(279, 'Role #1 Updated by User: #1', '1', '::1', '2023-05-20 13:57:12', '0000-00-00 00:00:00'),
(280, 'Data Ruangan #1 Updated by User: #1', '1', '::1', '2023-05-20 13:57:18', '0000-00-00 00:00:00'),
(281, 'Administrator (admin) Logged in', '1', '::1', '2023-05-22 02:11:21', '0000-00-00 00:00:00'),
(282, 'New Permission #48 Created by User: #1', '1', '::1', '2023-05-22 02:14:42', '0000-00-00 00:00:00'),
(283, 'Role #1 Updated by User: #1', '1', '::1', '2023-05-22 02:15:00', '0000-00-00 00:00:00'),
(284, 'Role #1 Updated by User: #1', '1', '::1', '2023-05-22 02:17:06', '0000-00-00 00:00:00'),
(285, 'New Permission #49 Created by User: #1', '1', '::1', '2023-05-22 02:18:45', '0000-00-00 00:00:00'),
(286, 'Role #1 Updated by User: #1', '1', '::1', '2023-05-22 02:18:55', '0000-00-00 00:00:00'),
(287, 'Role #1 Updated by User: #1', '1', '::1', '2023-05-22 02:20:50', '0000-00-00 00:00:00'),
(288, 'Permission #49 Updated by User: #1', '1', '::1', '2023-05-22 02:22:00', '0000-00-00 00:00:00'),
(289, 'Role #1 Updated by User: #1', '1', '::1', '2023-05-22 02:22:09', '0000-00-00 00:00:00'),
(290, 'Permission # Deleted by User: #1', '1', '::1', '2023-05-22 02:37:43', '0000-00-00 00:00:00'),
(291, 'Permission # Deleted by User: #1', '1', '::1', '2023-05-22 02:38:00', '0000-00-00 00:00:00'),
(292, 'New Permission #50 Created by User: #1', '1', '::1', '2023-05-22 02:39:23', '0000-00-00 00:00:00'),
(293, 'Role #1 Updated by User: #1', '1', '::1', '2023-05-22 02:39:40', '0000-00-00 00:00:00'),
(294, 'New Permission #51 Created by User: #1', '1', '::1', '2023-05-22 02:40:31', '0000-00-00 00:00:00'),
(295, 'Role #1 Updated by User: #1', '1', '::1', '2023-05-22 02:40:43', '0000-00-00 00:00:00'),
(296, 'New Permission #52 Created by User: #1', '1', '::1', '2023-05-22 03:13:49', '0000-00-00 00:00:00'),
(297, 'Role #1 Updated by User: #1', '1', '::1', '2023-05-22 03:13:59', '0000-00-00 00:00:00'),
(298, 'Data Perawatan Ditambahkan 1 Created by User:Administrator', '1', '::1', '2023-05-22 03:14:23', '0000-00-00 00:00:00'),
(299, 'Administrator (admin) Logged in', '1', '::1', '2023-05-23 01:16:36', '0000-00-00 00:00:00'),
(300, 'Data Perawatan Ditambahkan 2 Created by User:Administrator', '1', '::1', '2023-05-23 01:23:39', '0000-00-00 00:00:00'),
(301, 'New Permission #53 Created by User: #1', '1', '::1', '2023-05-23 01:25:22', '0000-00-00 00:00:00'),
(302, 'Role #1 Updated by User: #1', '1', '::1', '2023-05-23 01:25:36', '0000-00-00 00:00:00'),
(303, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-23 01:25:43', '0000-00-00 00:00:00'),
(304, 'Data Perawatan Ditambahkan 3 Created by User:Administrator', '1', '::1', '2023-05-23 01:30:54', '0000-00-00 00:00:00'),
(305, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-23 01:31:03', '0000-00-00 00:00:00'),
(306, 'Data Perawatan Ditambahkan 4 Created by User:Administrator', '1', '::1', '2023-05-23 02:22:58', '0000-00-00 00:00:00'),
(307, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-23 02:23:03', '0000-00-00 00:00:00'),
(308, 'New Permission #54 Created by User: #1', '1', '::1', '2023-05-23 02:41:38', '0000-00-00 00:00:00'),
(309, 'Role #1 Updated by User: #1', '1', '::1', '2023-05-23 02:41:48', '0000-00-00 00:00:00'),
(310, 'Data Perawatan Ditambahkan 5 Created by User:Administrator', '1', '::1', '2023-05-23 02:42:13', '0000-00-00 00:00:00'),
(311, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-23 02:42:43', '0000-00-00 00:00:00'),
(312, 'Administrator (admin) Logged in', '1', '::1', '2023-06-14 00:14:02', '0000-00-00 00:00:00'),
(313, 'Data Perawatan Ditambahkan 6 Created by User:Administrator', '1', '::1', '2023-06-14 00:26:43', '0000-00-00 00:00:00'),
(314, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-14 00:26:48', '0000-00-00 00:00:00'),
(315, 'Data Perawatan Ditambahkan 7 Created by User:Administrator', '1', '::1', '2023-06-14 00:31:33', '0000-00-00 00:00:00'),
(316, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-14 00:36:00', '0000-00-00 00:00:00'),
(317, 'Data Perawatan Ditambahkan 8 Created by User:Administrator', '1', '::1', '2023-06-14 00:36:16', '0000-00-00 00:00:00'),
(318, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-14 00:57:01', '0000-00-00 00:00:00'),
(319, 'Data Perawatan Ditambahkan 9 Created by User:Administrator', '1', '::1', '2023-06-14 00:57:15', '0000-00-00 00:00:00'),
(320, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-14 00:57:20', '0000-00-00 00:00:00'),
(321, 'Permission #51 Updated by User: #1', '1', '::1', '2023-06-14 02:04:02', '0000-00-00 00:00:00'),
(322, 'Permission #52 Updated by User: #1', '1', '::1', '2023-06-14 02:04:25', '0000-00-00 00:00:00'),
(323, 'Permission #53 Updated by User: #1', '1', '::1', '2023-06-14 02:04:51', '0000-00-00 00:00:00'),
(324, 'Permission #54 Updated by User: #1', '1', '::1', '2023-06-14 02:05:13', '0000-00-00 00:00:00'),
(325, 'Role #1 Updated by User: #1', '1', '::1', '2023-06-14 02:05:29', '0000-00-00 00:00:00'),
(326, 'Data Pemeliharaan Ditambahkan 1 Created by User:Administrator', '1', '::1', '2023-06-14 02:06:59', '0000-00-00 00:00:00'),
(327, 'Administrator (admin) Logged in', '1', '::1', '2023-06-15 00:05:33', '0000-00-00 00:00:00'),
(328, 'Data Pemeliharaan Ditambahkan 2 Created by User:Administrator', '1', '::1', '2023-06-15 00:17:00', '0000-00-00 00:00:00'),
(329, 'Data pemeliharaan #2 Updated by User: #1', '1', '::1', '2023-06-15 01:24:52', '0000-00-00 00:00:00'),
(330, 'Data pemeliharaan #2 Updated by User: #1', '1', '::1', '2023-06-15 01:26:52', '0000-00-00 00:00:00'),
(331, 'Data pemeliharaan #2 Updated by User: #1', '1', '::1', '2023-06-15 02:15:29', '0000-00-00 00:00:00'),
(332, 'Data pemeliharaan #2 Updated by User: #1', '1', '::1', '2023-06-15 04:08:35', '0000-00-00 00:00:00'),
(333, 'Data Pemeliharaan Ditambahkan 3 Created by User:Administrator', '1', '::1', '2023-06-15 04:16:14', '0000-00-00 00:00:00'),
(334, 'Data Pemeliharaan Ditambahkan 4 Created by User:Administrator', '1', '::1', '2023-06-15 04:32:07', '0000-00-00 00:00:00'),
(335, 'Data Inventaris Ditambahkan 16 Created by User:Administrator', '1', '::1', '2023-06-15 05:37:27', '0000-00-00 00:00:00'),
(336, 'Administrator (admin) Logged in', '1', '::1', '2023-06-16 00:29:03', '0000-00-00 00:00:00'),
(337, 'Data pemeliharaan #4 Updated by User: #1', '1', '::1', '2023-06-16 01:18:08', '0000-00-00 00:00:00'),
(338, 'Data pemeliharaan #4 Updated by User: #1', '1', '::1', '2023-06-16 01:19:14', '0000-00-00 00:00:00'),
(339, 'Data pemeliharaan #4 Updated by User: #1', '1', '::1', '2023-06-16 02:10:35', '0000-00-00 00:00:00'),
(340, 'Data Pemeliharaan Ditambahkan 5 Created by User:Administrator', '1', '::1', '2023-06-16 02:49:11', '0000-00-00 00:00:00'),
(341, 'Data pemeliharaan #4 Updated by User: #1', '1', '::1', '2023-06-16 02:51:03', '0000-00-00 00:00:00'),
(342, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-16 02:57:18', '0000-00-00 00:00:00'),
(343, 'Data Pemeliharaan Ditambahkan 6 Created by User:Administrator', '1', '::1', '2023-06-16 02:57:36', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pinjam`
--

CREATE TABLE `data_pinjam` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(32) NOT NULL,
  `kode_ruangan` int(11) NOT NULL,
  `id_fasilitas` int(11) NOT NULL,
  `tanggal_terpakai` date NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `kelas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_pinjam`
--

INSERT INTO `data_pinjam` (`id`, `kode_barang`, `kode_ruangan`, `id_fasilitas`, `tanggal_terpakai`, `id_pengguna`, `status`, `kelas`) VALUES
(30, '0001', 0, 2, '2023-05-19', 7, 'Dikonfirmasi - Belum Dikembalikan', 'xi-a'),
(31, '0002', 0, 2, '2023-05-19', 7, 'Dikonfirmasi - Belum Dikembalikan', 'xi-a'),
(32, '0007', 0, 2, '2023-05-19', 7, 'Dikonfirmasi - Belum Dikembalikan', 'xi-a');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_inventaris`
--

CREATE TABLE `data_inventaris` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(100) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `merek` varchar(100) NOT NULL,
  `asal_usul` varchar(100) NOT NULL,
  `tahun_peredaran` date NOT NULL,
  `harga_barang` int(11) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `masa_hidup_alat` varchar(100) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `kondisi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_inventaris`
--

INSERT INTO `data_inventaris` (`id`, `kode_barang`, `nama_barang`, `merek`, `asal_usul`, `tahun_peredaran`, `harga_barang`, `keterangan`, `masa_hidup_alat`, `kategori`, `kondisi`) VALUES
(13, '0002', 'Arduino No.2', 'Arduino', 'BOPD', '2023-05-19', 200000, '0', '1 Tahun', 'furniture kelas', 'rusak'),
(14, '0007', 'Arduino No.7', 'Arduino', 'BOPD', '2023-05-19', 200000, '0', '1 Tahun', 'furniture kelas', ''),
(15, '0001', 'Arduino 01', 'Arduino', 'BOPD', '2023-05-19', 200000, '0', '1 Tahun', 'elektronik', ''),
(16, '00123', 'Laptop', 'Asus', 'BOPD', '2023-06-15', 500000, 'Laptop Jurusan', '1 Tahun', 'elektronik', 'baik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `code` text NOT NULL,
  `data` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `email_templates`
--

INSERT INTO `email_templates` (`id`, `name`, `code`, `data`, `created_at`) VALUES
(1, 'Reset Password Template', 'reset_password', '<h1><strong>{company_name}</strong></h1>\r\n\r\n<h3>Click on Reset Link to Proceed : <a href=\"{reset_link}\">Reset Now</a></h3>\r\n', '2020-01-03 04:10:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fasilitas`
--

CREATE TABLE `fasilitas` (
  `id` int(11) NOT NULL,
  `nama_fasilitas` text NOT NULL,
  `jenis_fasilitas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `fasilitas`
--

INSERT INTO `fasilitas` (`id`, `nama_fasilitas`, `jenis_fasilitas`) VALUES
(1, 'Kelas', 'Kelas'),
(2, 'Lab Komputer', 'Lab');

-- --------------------------------------------------------

--
-- Struktur dari tabel `historys`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_inventaris`
--

CREATE TABLE `kategori_inventaris` (
  `id_kategori` int(11) NOT NULL,
  `jenis_barang` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori_inventaris`
--

INSERT INTO `kategori_inventaris` (`id_kategori`, `jenis_barang`, `keterangan`) VALUES
(1, 'Furnitur Kelas', 'Kebutuhan Kelas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemeliharaan`
--

CREATE TABLE `pemeliharaan` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(32) NOT NULL,
  `tanggal_pemeliharaan` date NOT NULL,
  `keterangan` text NOT NULL,
  `id_fasilitas` int(11) NOT NULL,
  `kondisi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pemeliharaan`
--

INSERT INTO `pemeliharaan` (`id`, `nama_barang`, `tanggal_pemeliharaan`, `keterangan`, `id_fasilitas`, `kondisi`) VALUES
(4, 'Arduino No.2', '2023-06-15', 'Mati Total', 2, 'rusak'),
(6, 'Laptop', '2023-06-16', 'bisa digunakan', 2, 'baik');

--
-- Trigger `pemeliharaan`
--
DELIMITER $$
CREATE TRIGGER `insert_data_inventaris_kondisi` AFTER INSERT ON `pemeliharaan` FOR EACH ROW BEGIN
    UPDATE data_inventaris
    SET kondisi = NEW.kondisi
    WHERE data_inventaris.nama_barang = NEW.nama_barang;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_data_inventaris_kondisi` AFTER UPDATE ON `pemeliharaan` FOR EACH ROW BEGIN
    UPDATE data_inventaris
    SET kondisi = NEW.kondisi
    WHERE data_inventaris.nama_barang = NEW.nama_barang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `code` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `permissions`
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
(40, 'Pindah Inventaris', 'move_inventory'),
(44, 'ruangan list', 'ruangan_list'),
(45, 'ruangan add', 'ruangan_add'),
(46, 'ruangan edit', 'ruangan_edit'),
(47, 'ruangan delete', 'ruangan_delete'),
(50, 'maintenance list', 'maintenance_list'),
(51, 'pemeliharaan list', 'pemeliharaan_list'),
(52, 'pemeliharaan add', 'pemeliharaan_add'),
(53, 'pemeliharaan delete', 'pemeliharaan_delete'),
(54, 'pemeliharaan edit', 'pemeliharaan_edit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `title`) VALUES
(1, 'Sarana'),
(2, 'Kajur'),
(3, 'Teknisi'),
(4, 'Siswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `role_permissions`
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
(83, 3, 'ruangan_list'),
(84, 3, 'ruangan_add'),
(85, 3, 'ruangan_edit'),
(86, 3, 'ruangan_delete'),
(87, 1, 'move_inventory'),
(89, 1, 'pinjaman_edit'),
(90, 4, 'pinjaman_delete'),
(93, 4, 'print_bukti'),
(94, 1, 'ruangan_add'),
(95, 1, 'ruangan_edit'),
(96, 1, 'ruangan_delete'),
(99, 1, 'maintenance_list'),
(104, 1, 'pemeliharaan_list'),
(105, 1, 'pemeliharaan_add'),
(106, 1, 'pemeliharaan_delete'),
(107, 1, 'pemeliharaan_edit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruangan`
--

CREATE TABLE `ruangan` (
  `id` int(11) NOT NULL,
  `nama_ruangan` text NOT NULL,
  `kapasitas_ruangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ruangan`
--

INSERT INTO `ruangan` (`id`, `nama_ruangan`, `kapasitas_ruangan`) VALUES
(1, 'Gudang', '40 Orang'),
(2, 'Kelas B', '10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `key` text NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`) VALUES
(1, 'company_name', 'SMKN 1 Cimahi', '2018-06-21 05:07:59'),
(2, 'company_email', 'smkn1cmi.gmail.com', '2018-07-10 22:39:58'),
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
-- Struktur dari tabel `users`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `phone`, `address`, `last_login`, `role`, `reset_token`, `status`, `img_type`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin', 'admin@gmail.com', '240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9', '123456', 'Puricipageran Indah 1 Blog G', '2023-06-15 22:06:59', 1, '', 1, 'png', '2018-06-27 06:00:16', '0000-00-00 00:00:00'),
(4, 'Kajur', 'kajur', 'kajur@gmail.com', '4e108d67fae799c3f141706cb8a3be7290540b80a7881adc58f5f98a50965df1', '081312589637', 'cimahi', '2023-05-03 01:46:07', 2, '', 1, 'png', '2023-05-03 01:46:07', '0000-00-00 00:00:00'),
(5, 'Taufik Hidayat', 'taufik', 'taufik78964@gmail.com', '96eab8aec7841ecc477465c904f0ddcf5a556c95701f12de82b227aa81af5209', '081312589637', 'Jl. Mahar Martanegara No.48, Utama, Kec. Cimahi Sel., Kota Cimahi, Jawa Barat 40521', '2023-05-03 01:47:29', 3, '', 1, 'png', '2023-05-03 01:47:29', '0000-00-00 00:00:00'),
(6, 'wahyu saepudin', 'wahyu', 'wahyu123@gmail.com', 'b36c0e9c1331c8ec00d7ddb7a798fed43a9f845503a009cdc0b9280c08329220', '08765361568', 'cimahi', '2023-05-20 05:05:56', 4, '', 1, 'png', '2023-05-03 01:48:36', '0000-00-00 00:00:00'),
(7, 'XI-A', 'irni', 'irni@gmail.com', '886865827b60e425a35580304e7aef96f706183f0af8ffb36721dad10e146e7e', '013719873089', '0', '2023-05-19 04:41:51', 4, '', 1, 'png', '2023-05-19 04:39:09', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_pinjam`
--
ALTER TABLE `data_pinjam`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_inventaris`
--
ALTER TABLE `data_inventaris`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `historys`
--
ALTER TABLE `historys`
  ADD PRIMARY KEY (`id_history`);

--
-- Indeks untuk tabel `kategori_inventaris`
--
ALTER TABLE `kategori_inventaris`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `pemeliharaan`
--
ALTER TABLE `pemeliharaan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=344;

--
-- AUTO_INCREMENT untuk tabel `data_pinjam`
--
ALTER TABLE `data_pinjam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `data_inventaris`
--
ALTER TABLE `data_inventaris`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `fasilitas`
--
ALTER TABLE `fasilitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `historys`
--
ALTER TABLE `historys`
  MODIFY `id_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `pemeliharaan`
--
ALTER TABLE `pemeliharaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT untuk tabel `ruangan`
--
ALTER TABLE `ruangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

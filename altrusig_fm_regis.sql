-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 27, 2026 at 04:28 PM
-- Server version: 8.0.44-cll-lve
-- PHP Version: 8.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `altrusig_fm_regis`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_02_27_033120_create_penonton_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penonton`
--

CREATE TABLE `penonton` (
  `id_pk_penonton` bigint UNSIGNED NOT NULL,
  `kode_penonton` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_penonton` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipe_penonton` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nohp_penonton` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_penonton` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_penonton` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `waktu_checking_penonton` datetime DEFAULT NULL,
  `catatan_penonton` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penonton`
--

INSERT INTO `penonton` (`id_pk_penonton`, `kode_penonton`, `nama_penonton`, `tipe_penonton`, `nohp_penonton`, `email_penonton`, `status_penonton`, `waktu_checking_penonton`, `catatan_penonton`, `created_at`, `updated_at`) VALUES
(1, 'FEB2442', 'Febe', 'Pengunjung Umum', '6282262122442', NULL, 'Sudah Checkin', '2026-02-27 08:50:29', NULL, '2026-02-27 01:48:51', '2026-02-27 01:50:29'),
(2, 'STE6803', 'Stevan Nathan', 'Pengunjung Umum', '6289691336803', NULL, 'Belum Checkin', '2026-02-27 08:48:51', NULL, '2026-02-27 01:48:51', '2026-02-27 01:48:51'),
(3, 'DEN9009', 'Denny Arfianto', 'Pengunjung Umum', '628112829009', NULL, 'Belum Checkin', '2026-02-27 08:48:51', NULL, '2026-02-27 01:48:51', '2026-02-27 01:48:51'),
(4, 'JOS1915', 'Joshua Natan Wijaya', 'Pengunjung Umum', '6289616961915', NULL, 'Belum Checkin', '2026-02-27 08:48:51', NULL, '2026-02-27 01:48:51', '2026-02-27 01:48:51'),
(5, 'DAV3887', 'Davin', 'OTS', '089737373887', NULL, 'Sudah Checkin', '2026-02-27 08:50:46', NULL, '2026-02-27 01:50:46', '2026-02-27 01:50:46'),
(6, 'AYO5799', 'Ayodya Habel', 'Pengunjung Umum', '6282128915799', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:06', '2026-02-27 01:54:06'),
(7, 'ADE4175', 'Adeline Joanne Kwok', 'Pengunjung Umum', '628176734175', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:07', '2026-02-27 01:54:07'),
(8, 'YES3556', 'Yessica Alexandra', 'Pengunjung Umum', '6285215493556', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:07', '2026-02-27 01:54:07'),
(9, 'NAT1088', 'Natalia', 'Pengunjung Umum', '628176951088', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:07', '2026-02-27 01:54:07'),
(10, 'YAN0182', 'Yanto Kamarudin', 'Pengunjung Umum', '62811820182', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:07', '2026-02-27 01:54:07'),
(11, 'HEN8674', 'Henry Manullang', 'Pengunjung Umum', '62811838674', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:07', '2026-02-27 01:54:07'),
(12, 'JOV5452', 'Jovan Nathaniel ', 'Pengunjung Umum', '6285782305452', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:07', '2026-02-27 01:54:07'),
(13, 'DWI6656', 'Dwight Fanuel', 'Pengunjung Umum', '6289698896656', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:07', '2026-02-27 01:54:07'),
(14, 'MAR3866', 'Marvin Januarta', 'Pengunjung Umum', '6285946023866', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:07', '2026-02-27 01:54:07'),
(15, 'MIC0973', 'Michael', 'Pengunjung Umum', '628170070973', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:07', '2026-02-27 01:54:07'),
(16, 'AME3998', 'Amelia Jennifer Kwok', 'Pengunjung Umum', '628174913998', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:07', '2026-02-27 01:54:07'),
(17, 'FUL4320', 'Fulbert Evan Hianni', 'Pengunjung Umum', '6287712214320', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:07', '2026-02-27 01:54:07'),
(18, 'JOS1639', 'Josh Halim Pratama', 'Pengunjung Umum', '6287883251639', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:07', '2026-02-27 01:54:07'),
(19, 'MAG2068', 'Maggie Manuel ', 'Pengunjung Umum', '6287880822068', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:07', '2026-02-27 01:54:07'),
(20, 'RAP2332', 'Raphael Friedrich Liauw', 'Pengunjung Umum', '628129852332', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:07', '2026-02-27 01:54:07'),
(21, 'MAU2322', 'Maudy Manuel', 'Pengunjung Umum', '6287893832322', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:07', '2026-02-27 01:54:07'),
(22, 'JAS2432', 'Jason Anartha', 'Pengunjung Umum', '6281295922432', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:07', '2026-02-27 01:54:07'),
(23, 'AIL9250', 'Aileen Nathania Daun Putri', 'Pengunjung Umum', '6281314999250', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:07', '2026-02-27 01:54:07'),
(24, 'JES2926', 'Jessica Handijaya', 'Pengunjung Umum', '6281289722926', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:07', '2026-02-27 01:54:07'),
(25, 'DOM4929', 'Dominique Angelica', 'Pengunjung Umum', '6282311294929', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:08', '2026-02-27 01:54:08'),
(26, 'NAT0788', 'Nathania Keishya Hartanto', 'Pengunjung Umum', '6285158570788', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:08', '2026-02-27 01:54:08'),
(27, 'BEV1312', 'Beverly Chloe', 'Pengunjung Umum', '628119521312', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:08', '2026-02-27 01:54:08'),
(28, 'CLA0070', 'Clarisa Tessalonica', 'Pengunjung Umum', '6281211380070', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:08', '2026-02-27 01:54:08'),
(29, 'FAI3213', 'faith benita', 'Pengunjung Umum', '6282111673213', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:08', '2026-02-27 01:54:08'),
(30, 'NIC1821', 'Nicholas Edbert Bernadus', 'Pengunjung Umum', '628111121821', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(31, 'CAT0510', 'Catherine Andrea', 'Pengunjung Umum', '6281908310510', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(32, 'GIS6688', 'Giselle Anastasia ', 'Pengunjung Umum', '6281808956688', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(33, 'ORL2888', 'Orlando Rich Jefah', 'Pengunjung Umum', '62817442888', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(34, 'HOS3049', 'hosea', 'Pengunjung Umum', '6289660693049', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(35, 'NIS3989', 'Nissi Kristo', 'Pengunjung Umum', '628118103989', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(36, 'HAR3888', 'Harley Huray', 'Pengunjung Umum', '6285885123888', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(37, 'LAD4336', 'Lady', 'Pengunjung Umum', '628891674336', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(38, 'ANJ5850', 'Anjani Pevita Estherleen Tjhai', 'Pengunjung Umum', '6287772315850', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(39, 'ANG9553', 'Angeline Kho', 'Pengunjung Umum', '6287778369553', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(40, 'NOE5755', 'Noel Enrico Widjaja', 'Pengunjung Umum', '6281285565755', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(41, 'HEN0102', 'Hendra Roesli', 'Pengunjung Umum', '6285710100102', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(42, 'SAN5152', 'Sanny Tjamin', 'Pengunjung Umum', '6285618195152', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(43, 'MAR6277', 'Marvel Sanvio', 'Pengunjung Umum', '6282113146277', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(44, 'ALA0404', 'Alan', 'Pengunjung Umum', '6281617340404', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(45, 'MIC09730', 'Michael widjaja', 'Pengunjung Umum', '628170070973', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(46, 'SHE3351', 'Sherlly', 'Pengunjung Umum', '628988833351', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(47, 'TAT5157', 'Tatyana Lemuel', 'Pengunjung Umum', '628561005157', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(48, 'JOA2268', 'Joan abdiel kam', 'Pengunjung Umum', '6289622682268', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(49, 'JAC7554', 'Jacqueline abdiel kam ', 'Pengunjung Umum', '6281283807554', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(50, 'JOS7118', 'Josiah Timothy Harsojo', 'Pengunjung Umum', '6281320007118', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(51, 'FRA8988', 'Fransisca sri meyta', 'Pengunjung Umum', '6282193268988', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(52, 'SYL1933', 'Sylvia Dewi Setiawan', 'Pengunjung Umum', '6285312001933', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(53, 'GRA0997', 'Gracelynn Amadea Huang', 'Pengunjung Umum', '6281586770997', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(54, 'YUN2830', 'Yunti', 'Pengunjung Umum', '6285719892830', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(55, 'LYL7198', 'LYLY TANDINATA ', 'Pengunjung Umum', '6281361757198', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(56, 'LAN8000', 'Lanny elham', 'Pengunjung Umum', '628159538000', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(57, 'SHA6695', 'Shannon Froehlich Superanto', 'Pengunjung Umum', '6287888866695', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(58, 'EMI5880', 'Emily Widjanarko ', 'Pengunjung Umum', '6281513355880', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(59, 'ERI4245', 'Erik widjanarko', 'Pengunjung Umum', '6281586604245', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(60, 'AMA5658', 'Amarissa Beatrice Kubijanto', 'Pengunjung Umum', '6281322525658', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(61, 'EVA3637', 'Evangeline Viona Atmarumeksa ', 'Pengunjung Umum', '6287731123637', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(62, 'JUA3342', 'Juan Farrel Perdana', 'Pengunjung Umum', '628999333342', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(63, 'ADI3000', 'aditya chai', 'Pengunjung Umum', '628170823000', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(64, 'YEN0201', 'Yenly', 'Pengunjung Umum', '62818130201', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(65, 'KEI8845', 'Keirra valesqa wen ', 'Pengunjung Umum', '6287883668845', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(66, 'QIN2013', 'Qing Qing', 'Pengunjung Umum', '628161842013', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(67, 'ZOE2332', 'Zoe Angelica Liauw', 'Pengunjung Umum', '628129852332', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(68, 'IE2768', 'Ie fangky ', 'Pengunjung Umum', '628161112768', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(69, 'LIL5884', 'Lily Chen has ', 'Pengunjung Umum', '6285883105884', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(70, 'MAR2990', 'Marnani', 'Pengunjung Umum', '6281283262990', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:09', '2026-02-27 01:54:09'),
(71, 'LIL9797', 'Lily Mulijana ', 'Pengunjung Umum', '62818149797', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:10', '2026-02-27 01:54:10'),
(72, 'LIL4715', 'Liliana Admojo', 'Pengunjung Umum', '6287789914715', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:10', '2026-02-27 01:54:10'),
(73, 'TEN0616', 'Teng bi giok', 'Pengunjung Umum', '6289686210616', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:10', '2026-02-27 01:54:10'),
(74, 'DAN6465', 'Daniel Tandoko', 'Pengunjung Umum', '6285810856465', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:10', '2026-02-27 01:54:10'),
(75, 'IND6007', 'Indriati ', 'Pengunjung Umum', '6287883506007', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:10', '2026-02-27 01:54:10'),
(76, 'JOS19150', 'Joshua Natan Wijaya', 'Pengunjung Umum', '6289616961915', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:10', '2026-02-27 01:54:10'),
(77, 'WIV7707', 'Wivina Daicy', 'Pengunjung Umum', '62892153967707', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:10', '2026-02-27 01:54:10'),
(78, 'LEW3807', 'Lewyandi', 'Pengunjung Umum', '6289651513807', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:10', '2026-02-27 01:54:10'),
(79, 'MAR', 'Marta', 'Pengunjung Umum', '', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:10', '2026-02-27 01:54:10'),
(80, 'SUS8800', 'Susana Jonathan', 'Pengunjung Umum', '628129268800', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:10', '2026-02-27 01:54:10'),
(81, 'RIN3175', 'Rinto wiharjo', 'Pengunjung Umum', '628111343175', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:10', '2026-02-27 01:54:10'),
(82, 'KIR7790', 'Kirsty Aurelia Wisanto', 'Pengunjung Umum', '6281398617790', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:10', '2026-02-27 01:54:10'),
(83, 'JOY2158', 'Joyce Gracia Sylvia Simanullang', 'Pengunjung Umum', '6281346362158', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:10', '2026-02-27 01:54:10'),
(84, 'FON3805', 'Fonny Yulika', 'Pengunjung Umum', '628161873805', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:10', '2026-02-27 01:54:10'),
(85, 'EMM7002', 'Emma Faith Nicolaus', 'Pengunjung Umum', '6282220807002', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:10', '2026-02-27 01:54:10'),
(86, 'FEN4545', 'Fenny Setiawati', 'Pengunjung Umum', '628158714545', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:10', '2026-02-27 01:54:10'),
(87, 'JEN3168', 'Jenni Susantijo Ng ', 'Pengunjung Umum', '6281310083168', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(88, 'LEO7584', 'Leonardo Engstein Ng', 'Pengunjung Umum', '628128977584', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(89, 'KIR8874', 'Kirana Casey', 'Pengunjung Umum', '6289655978874', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(90, 'KAT2008', 'Katherine C Wargono', 'Pengunjung Umum', '6281805092008', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(91, 'CHR5355', 'Chris Nicolaus', 'Pengunjung Umum', '62818665355', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(92, 'DAR1177', 'Darell Chong', 'Pengunjung Umum', '628561191177', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(93, 'LIN6980', 'Linda', 'Pengunjung Umum', '62816226980', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(94, 'SYA9179', 'Syanne Gracetine', 'Pengunjung Umum', '6287888999179', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(95, 'STE9179', 'Steven', 'Pengunjung Umum', '6287888999179', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(96, 'IWA2439', 'Iwan Tandiah', 'Pengunjung Umum', '62816752439', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(97, 'AYO57990', 'Ayodya Habel', 'Pengunjung Umum', '6282128915799', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(98, 'JIN9707', 'Jinnij Yapar', 'Pengunjung Umum', '62818749707', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(99, 'ADE41750', 'Adeline Joanne Kwok', 'Pengunjung Umum', '628176734175', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(100, 'IAN7001', 'Ian Jethro nicolaus', 'Pengunjung Umum', '6282220807001', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(101, 'YES35560', 'Yessica Alexandra', 'Pengunjung Umum', '6285215493556', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(102, 'ERL2158', 'Erlin', 'Pengunjung Umum', '6281806262158', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(103, 'NAT10880', 'Natalia', 'Pengunjung Umum', '628176951088', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(104, 'JEV9795', 'jevienne solagratia ho', 'Pengunjung Umum', '6285117789795', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(105, 'ROS0246', 'ROSALINA JUANY', 'Pengunjung Umum', '62818760246', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(106, 'YAN01820', 'Yanto Kamarudin', 'Pengunjung Umum', '62811820182', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(107, 'LIE0573', 'LIE DAVID ROBINSON', 'Pengunjung Umum', '628568850573', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(108, 'HEN86740', 'Henry Manullang', 'Pengunjung Umum', '62811838674', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(109, 'HOL8483', 'hollyana', 'Pengunjung Umum', '628993958483', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(110, 'JOV54520', 'Jovan Nathaniel ', 'Pengunjung Umum', '6285782305452', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(111, 'LOV8283', 'Lovlayna Annelie Tamin', 'Pengunjung Umum', '6281219198283', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(112, 'DWI66560', 'Dwight Fanuel', 'Pengunjung Umum', '6289698896656', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(113, 'LEO0929', 'Leon Frits Yosianro Lindia', 'Pengunjung Umum', '6285281660929', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(114, 'IME1108', 'Imelda. Murti', 'Pengunjung Umum', '6287739871108', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(115, 'DIA6928', 'Diana Nicolaus ', 'Pengunjung Umum', '628122036928', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(116, 'MAR38660', 'Marvin Januarta', 'Pengunjung Umum', '6285946023866', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(117, 'ALV3811', 'Alvin', 'Pengunjung Umum', '6281914593811', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(118, 'MIC09731', 'Michael', 'Pengunjung Umum', '628170070973', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(119, 'AME39980', 'Amelia Jennifer Kwok', 'Pengunjung Umum', '628174913998', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(120, 'OFF1025', 'Offin do gili', 'Pengunjung Umum', '6287750221025', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(121, 'FUL43200', 'Fulbert Evan Hianni', 'Pengunjung Umum', '6287712214320', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(122, 'JOS16390', 'Josh Halim Pratama', 'Pengunjung Umum', '6287883251639', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(123, 'MAG20680', 'Maggie Manuel ', 'Pengunjung Umum', '6287880822068', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(124, 'RAP23320', 'Raphael Friedrich Liauw', 'Pengunjung Umum', '628129852332', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(125, 'HER5906', 'hermone do gili', 'Pengunjung Umum', '6281280045906', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(126, 'MAU23220', 'Maudy Manuel', 'Pengunjung Umum', '6287893832322', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(127, 'JAS24320', 'Jason Anartha', 'Pengunjung Umum', '6281295922432', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(128, 'TIW7522', 'tiwenny do gili', 'Pengunjung Umum', '6282267277522', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(129, 'AIL92500', 'Aileen Nathania Daun Putri', 'Pengunjung Umum', '6281314999250', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(130, 'JES29260', 'Jessica Handijaya', 'Pengunjung Umum', '6281289722926', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(131, 'YAN4858', 'Yanti tirtaredja', 'Pengunjung Umum', '6281213874858', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(132, 'DOM49290', 'Dominique Angelica', 'Pengunjung Umum', '6282311294929', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(133, 'RUD8187', 'Rudolof Gili', 'Pengunjung Umum', '628129308187', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(134, 'KAR7012', 'Karista ', 'Pengunjung Umum', '628131227012', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(135, 'NAT07880', 'Nathania Keishya Hartanto', 'Pengunjung Umum', '6285158570788', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(136, 'AMR9234', 'Amran ', 'Pengunjung Umum', '6281212769234', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(137, 'BEV13120', 'Beverly Chloe', 'Pengunjung Umum', '628119521312', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(138, 'CLA00700', 'Clarisa Tessalonica', 'Pengunjung Umum', '6281211380070', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(139, 'FAI32130', 'faith benita', 'Pengunjung Umum', '6282111673213', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(140, 'PUT1792', 'Putri Gili', 'Pengunjung Umum', '6287786391792', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(141, 'NIC18210', 'Nicholas Edbert Bernadus', 'Pengunjung Umum', '628111121821', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(142, 'ELK6666', 'Elke Salim', 'Pengunjung Umum', '628128006666', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(143, 'CAT05100', 'Catherine Andrea', 'Pengunjung Umum', '6281908310510', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(144, 'HEN5495', 'Henry Manullang', 'Pengunjung Umum', '6285282225495', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(145, 'GIS66880', 'Giselle Anastasia ', 'Pengunjung Umum', '6281808956688', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(146, 'DAV5495', 'Dave Natahanael Manullang', 'Pengunjung Umum', '6285282225495', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(147, 'ORL28880', 'Orlando Rich Jefah', 'Pengunjung Umum', '62817442888', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(148, 'HOS30490', 'hosea', 'Pengunjung Umum', '6289660693049', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(149, 'LIA5495', 'Liana Susanti', 'Pengunjung Umum', '6285282225495', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(150, 'NIS39890', 'Nissi Kristo', 'Pengunjung Umum', '628118103989', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(151, 'CHR2754', 'Christin Natalia Picanussa', 'Pengunjung Umum', '6285796002754', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(152, 'HAR38880', 'Harley Huray', 'Pengunjung Umum', '6285885123888', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(153, 'ARI5716', 'Arista Anugrah Bili', 'Pengunjung Umum', '6283817585716', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(154, 'LAD43360', 'Lady', 'Pengunjung Umum', '628891674336', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(155, 'ANJ58500', 'Anjani Pevita Estherleen Tjhai', 'Pengunjung Umum', '6287772315850', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(156, 'MEY7036', 'Meysterlia Angreini Burunaung', 'Pengunjung Umum', '6281357827036', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(157, 'YOS0999', 'Yosefin Y', 'Pengunjung Umum', '628176300999', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(158, 'ANG95530', 'Angeline Kho', 'Pengunjung Umum', '6287778369553', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:11', '2026-02-27 01:54:11'),
(159, 'JEA1582', 'Jeannette', 'Pengunjung Umum', '628158941582', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(160, 'NOE57550', 'Noel Enrico Widjaja', 'Pengunjung Umum', '6281285565755', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(161, 'PER1582', 'Perdana ', 'Pengunjung Umum', '628158941582', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(162, 'HEN01020', 'Hendra Roesli', 'Pengunjung Umum', '6285710100102', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(163, 'BEN1822', 'Bennet Sastra', 'Pengunjung Umum', '6285776711822', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(164, 'SAN51520', 'Sanny Tjamin', 'Pengunjung Umum', '6285618195152', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(165, 'HAN1582', 'Hanny Sutrisna', 'Pengunjung Umum', '628158941582', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(166, 'MAR62770', 'Marvel Sanvio', 'Pengunjung Umum', '6282113146277', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(167, 'MON2100', 'Monique', 'Pengunjung Umum', '6287880422100', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(168, 'MEL5636', 'Meli yanti', 'Pengunjung Umum', '6281310295636', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(169, 'ALA04040', 'Alan', 'Pengunjung Umum', '6281617340404', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(170, 'ROG5926', 'Roger Sandjaya ', 'Pengunjung Umum', '6285283815926', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(171, 'THE7771', 'Theressa', 'Pengunjung Umum', '628170177771', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(172, 'MIC5994', 'Michael Cang', 'Pengunjung Umum', '6282267715994', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(173, 'DAR6666', 'Darren Timothy Zhang', 'Pengunjung Umum', '628197806666', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(174, 'ERN1775', 'Ernie', 'Pengunjung Umum', '6289676961775', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(175, 'JON0920', 'Jonathan Hizkia Widjaja', 'Pengunjung Umum', '6287808910920', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(176, 'MIC09732', 'Michael widjaja', 'Pengunjung Umum', '628170070973', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(177, 'SHE33510', 'Sherlly', 'Pengunjung Umum', '628988833351', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(178, 'RAY1110', 'Rayida Lungguk Lisbet', 'Pengunjung Umum', '6282211951110', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(179, 'TAT51570', 'Tatyana Lemuel', 'Pengunjung Umum', '628561005157', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(180, 'KEN1503', 'Kenosis Miracle Yani', 'Pengunjung Umum', '6282121211503', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(181, 'ROB0347', 'Robert Supriadi', 'Pengunjung Umum', '6281511100347', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(182, 'HET8402', 'Heti', 'Pengunjung Umum', '628161998402', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(183, 'JOA22680', 'Joan abdiel kam', 'Pengunjung Umum', '6289622682268', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(184, 'YEN1957', 'Yen Lie', 'Pengunjung Umum', '628128111957', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(185, 'MEL8626', 'Melina Jonas', 'Pengunjung Umum', '628112208626', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(186, 'NAW6569', 'Nawi', 'Pengunjung Umum', '628159236569', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(187, 'JAC75540', 'Jacqueline abdiel kam ', 'Pengunjung Umum', '6281283807554', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(188, 'CEN2260', 'Cendra Harsojo', 'Pengunjung Umum', '6281398462260', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(189, 'JOS71180', 'Josiah Timothy Harsojo', 'Pengunjung Umum', '6281320007118', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(190, 'REG6886', 'Regina Rosa', 'Pengunjung Umum', '6287884646886', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(191, 'FRA89880', 'Fransisca sri meyta', 'Pengunjung Umum', '6282193268988', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(192, 'RAT8068', 'Ratu Esther Eldi', 'Pengunjung Umum', '6282364078068', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(193, 'SYL19330', 'Sylvia Dewi Setiawan', 'Pengunjung Umum', '6285312001933', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(194, 'VIV2733', 'Vivica michelle lo', 'Pengunjung Umum', '6285973242733', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(195, 'GRA09970', 'Gracelynn Amadea Huang', 'Pengunjung Umum', '6281586770997', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(196, 'YUN28300', 'Yunti', 'Pengunjung Umum', '6285719892830', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(197, 'LIL8518', 'Lily', 'Pengunjung Umum', '6281281768518', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(198, 'LYL71980', 'LYLY TANDINATA ', 'Pengunjung Umum', '6281361757198', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(199, 'ALA04041', 'Alan', 'Pengunjung Umum', '6281617340404', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(200, 'LAN80000', 'Lanny elham', 'Pengunjung Umum', '628159538000', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(201, 'ROB2344', 'Robert Christian Lahagu', 'Pengunjung Umum', '6281382852344', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(202, 'SHA66950', 'Shannon Froehlich Superanto', 'Pengunjung Umum', '6287888866695', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(203, 'HOS30491', 'Hosea Hariputera', 'Pengunjung Umum', '6289660693049', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(204, 'EMI58800', 'Emily Widjanarko ', 'Pengunjung Umum', '6281513355880', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(205, 'NJO1468', 'Njoo mee fang', 'Pengunjung Umum', '628119321468', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(206, 'ERI42450', 'Erik widjanarko', 'Pengunjung Umum', '6281586604245', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(207, 'AMA56580', 'Amarissa Beatrice Kubijanto', 'Pengunjung Umum', '6281322525658', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(208, 'MAR1468', 'Margiman', 'Pengunjung Umum', '628119321468', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(209, 'EVA36370', 'Evangeline Viona Atmarumeksa ', 'Pengunjung Umum', '6287731123637', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(210, 'AMA7893', 'Amabel Joshlyn Kubijanto', 'Pengunjung Umum', '6281291817893', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(211, 'JUA33420', 'Juan Farrel Perdana', 'Pengunjung Umum', '628999333342', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(212, 'ALI2009', 'Alie Zoey Ardhaniputri ', 'Pengunjung Umum', '6281916082009', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(213, 'ADI30000', 'aditya chai', 'Pengunjung Umum', '628170823000', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(214, 'NAT8567', 'Natasha.Febriany', 'Pengunjung Umum', '6287880518567', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(215, 'YEN02010', 'Yenly', 'Pengunjung Umum', '62818130201', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(216, 'KEI88450', 'Keirra valesqa wen ', 'Pengunjung Umum', '6287883668845', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(217, 'NIC4340', 'nicole carissa tan ', 'Pengunjung Umum', '6281572274340', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(218, 'QIN20130', 'Qing Qing', 'Pengunjung Umum', '628161842013', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(219, 'VEV2331', 'Vevila Brilian Putri ', 'Pengunjung Umum', '6285282402331', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(220, 'ZOE23320', 'Zoe Angelica Liauw', 'Pengunjung Umum', '628129852332', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(221, 'VEV23310', 'Vevila Brilian Putri ', 'Pengunjung Umum', '6285282402331', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(222, 'IE27680', 'Ie fangky ', 'Pengunjung Umum', '628161112768', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(223, 'SUS7531', 'Susanti Indra Wijaya ', 'Pengunjung Umum', '628121357531', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(224, 'LIL58840', 'Lily Chen has ', 'Pengunjung Umum', '6285883105884', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(225, 'RAF0153', 'Raffael Khaeren', 'Pengunjung Umum', '6285711710153', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(226, 'WHA5675', 'Whaty Mudak', 'Pengunjung Umum', '6285215665675', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(227, 'MAR29900', 'Marnani', 'Pengunjung Umum', '6281283262990', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(228, 'GED5887', 'Gedeo Billy Aleva Goenawan', 'Pengunjung Umum', '628118085887', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(229, 'LIL97970', 'Lily Mulijana ', 'Pengunjung Umum', '62818149797', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(230, 'SRI4200', 'Sri Ria', 'Pengunjung Umum', '628161944200', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(231, 'LIL47150', 'Liliana Admojo', 'Pengunjung Umum', '6287789914715', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(232, 'TJI9065', 'Tjintarto', 'Pengunjung Umum', '62816999065', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(233, 'TEN06160', 'Teng bi giok', 'Pengunjung Umum', '6289686210616', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(234, 'SAR0151', 'Sari Anna', 'Pengunjung Umum', '6287878190151', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(235, 'FEL9901', 'Felincia Mikki Lai', 'Pengunjung Umum', '62885182169901', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(236, 'DAN64650', 'Daniel Tandoko', 'Pengunjung Umum', '6285810856465', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(237, 'HAN7559', 'Hanken benedict', 'Pengunjung Umum', '6283170287559', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(238, 'IND60070', 'Indriati ', 'Pengunjung Umum', '6287883506007', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(239, 'LIA1910', 'Liani Endang', 'Pengunjung Umum', '6287878991910', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(240, 'HER4980', 'Herbet', 'Pengunjung Umum', '62811154980', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(241, 'JOS19151', 'Joshua Natan Wijaya', 'Pengunjung Umum', '6289616961915', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(242, 'THE5069', 'Theodore Kan', 'Pengunjung Umum', '6287887935069', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(243, 'WIV77070', 'Wivina Daicy', 'Pengunjung Umum', '62892153967707', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(244, 'TIR4688', 'TIRTA BAMBANGWIRAWAN', 'Pengunjung Umum', '62857705774688', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(245, 'LEW38070', 'Lewyandi', 'Pengunjung Umum', '6289651513807', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(246, 'STE4688', 'STEPHANIE CHANDRA', 'Pengunjung Umum', '6285770574688', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(247, 'WIW2801', 'Wiwin Suwandhari', 'Pengunjung Umum', '6287887472801', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(248, 'MAR0', 'Marta', 'Pengunjung Umum', '', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(249, 'VAL', 'Vallerie.t.', 'Pengunjung Umum', '000', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(250, 'SUS88000', 'Susana Jonathan', 'Pengunjung Umum', '628129268800', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(251, 'ALE6865', 'Alexander HARYANTO Hartono', 'Pengunjung Umum', '628111176865', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(252, 'RIN31750', 'Rinto wiharjo', 'Pengunjung Umum', '628111343175', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(253, 'RIT4499', 'Ritha', 'Pengunjung Umum', '628170184499', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(254, 'KIR77900', 'Kirsty Aurelia Wisanto', 'Pengunjung Umum', '6281398617790', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(255, 'SET9010', 'Setyawati', 'Pengunjung Umum', '628568809010', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(256, 'JOY21580', 'Joyce Gracia Sylvia Simanullang', 'Pengunjung Umum', '6281346362158', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(257, 'CAR7178', 'Carolina kalalo', 'Pengunjung Umum', '6281354537178', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(258, 'FON38050', 'Fonny Yulika', 'Pengunjung Umum', '628161873805', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(259, 'KEL3033', 'Kelly', 'Pengunjung Umum', '6289522233033', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(260, 'EMM70020', 'Emma Faith Nicolaus', 'Pengunjung Umum', '6282220807002', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(261, 'FEN45450', 'Fenny Setiawati', 'Pengunjung Umum', '628158714545', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(262, 'BEA2288', 'beatrice helena venturo😛😛', 'Pengunjung Umum', '6289672012288😏😏😏😏', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(263, 'JEN31680', 'Jenni Susantijo Ng ', 'Pengunjung Umum', '6281310083168', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(264, 'TOM7003', 'Tommy Setiawan', 'Pengunjung Umum', '62818397003', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(265, 'LEO75840', 'Leonardo Engstein Ng', 'Pengunjung Umum', '628128977584', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(266, 'ARE7003', 'Areta Angti', 'Pengunjung Umum', '62818397003', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(267, 'KIR88740', 'Kirana Casey', 'Pengunjung Umum', '6289655978874', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(268, 'IND7003', 'Indayani Moeljo', 'Pengunjung Umum', '62818397003', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(269, 'KAT20080', 'Katherine C Wargono', 'Pengunjung Umum', '6281805092008', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(270, 'KO8361', 'ko jeff', 'Pengunjung Umum', '628158808361', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(271, 'CHR53550', 'Chris Nicolaus', 'Pengunjung Umum', '62818665355', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(272, 'ANN9535', 'Anna K', 'Pengunjung Umum', '6281288509535', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(273, 'KIR6536', 'Kirniawan', 'Pengunjung Umum', '6281381096536', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(274, 'DAR11770', 'Darell Chong', 'Pengunjung Umum', '628561191177', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(275, 'LIN69800', 'Linda', 'Pengunjung Umum', '62816226980', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(276, 'CLA0172', 'Clarabella', 'Pengunjung Umum', '628889830172', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(277, 'SYA91790', 'Syanne Gracetine', 'Pengunjung Umum', '6287888999179', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(278, 'STE91790', 'Steven', 'Pengunjung Umum', '6287888999179', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(279, 'ELI5259', 'Elizabeth Halley Hardyeth ', 'Pengunjung Umum', '6281399385259', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(280, 'IWA24390', 'Iwan Tandiah', 'Pengunjung Umum', '62816752439', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(281, 'S0', 'S', 'Pengunjung Umum', '62', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(282, 'JIN97070', 'Jinnij Yapar', 'Pengunjung Umum', '62818749707', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(283, 'SAM7627', 'samantha lemuel', 'Pengunjung Umum', '628568777627', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(284, 'IAN70010', 'Ian Jethro nicolaus', 'Pengunjung Umum', '6282220807001', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(285, 'ERL21580', 'Erlin', 'Pengunjung Umum', '6281806262158', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(286, 'JEV97950', 'jevienne solagratia ho', 'Pengunjung Umum', '6285117789795', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(287, 'ROS02460', 'ROSALINA JUANY', 'Pengunjung Umum', '62818760246', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(288, 'KAY7981', 'Kayleen', 'Pengunjung Umum', '6281316777981', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(289, 'LIE05730', 'LIE DAVID ROBINSON', 'Pengunjung Umum', '628568850573', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(290, 'RAN3980', 'Randy Christopher Lie', 'Pengunjung Umum', '6281932073980', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(291, 'HOL84830', 'hollyana', 'Pengunjung Umum', '628993958483', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(292, 'RAC0183', 'Rachel Annabelle', 'Pengunjung Umum', '62817800183', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(293, 'LOV82830', 'Lovlayna Annelie Tamin', 'Pengunjung Umum', '6281219198283', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(294, 'GWE8150', 'Gwenneth Annabelle H', 'Pengunjung Umum', '6287739488150', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(295, 'LEO09290', 'Leon Frits Yosianro Lindia', 'Pengunjung Umum', '6285281660929', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(296, 'CHR1858', 'Christabel cindy loisa ', 'Pengunjung Umum', '6282210761858', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(297, 'IME11080', 'Imelda. Murti', 'Pengunjung Umum', '6287739871108', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(298, 'BRI1133', 'Brianne Allegra Pratomo', 'Pengunjung Umum', '6281380601133', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(299, 'DIA69280', 'Diana Nicolaus ', 'Pengunjung Umum', '628122036928', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(300, 'KAY2013', 'Kayleen Mercy Lieora', 'Pengunjung Umum', '6281803112013', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(301, 'ALV38110', 'Alvin', 'Pengunjung Umum', '6281914593811', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(302, 'NAT2277', 'Natanael Dominggus Bagus JP', 'Pengunjung Umum', '6281931692277', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(303, 'OFF10250', 'Offin do gili', 'Pengunjung Umum', '6287750221025', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(304, 'WID1722', 'Widdy Wuisang', 'Pengunjung Umum', '6287859371722', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(305, 'NAT22770', 'Natanael DBJ Pratama', 'Pengunjung Umum', '6281931692277', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(306, 'HER59060', 'hermone do gili', 'Pengunjung Umum', '6281280045906', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(307, 'WID17220', 'Widdy Wuisang', 'Pengunjung Umum', '6287859371722', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(308, 'TIW75220', 'tiwenny do gili', 'Pengunjung Umum', '6282267277522', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(309, 'ELO4752', 'Eloise Anaya Kosasih', 'Pengunjung Umum', '6281384464752', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(310, 'YAN48580', 'Yanti tirtaredja', 'Pengunjung Umum', '6281213874858', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(311, 'CHR1185', 'Christopher matthew lasmana ', 'Pengunjung Umum', '6287778881185', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(312, 'SIU1717', 'Siutje Yulis', 'Pengunjung Umum', '6281316401717', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(313, 'RUD81870', 'Rudolof Gili', 'Pengunjung Umum', '628129308187', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(314, 'LIN9257', 'Linda Kurniawan', 'Pengunjung Umum', '62895352409257', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(315, 'JOC0163', 'Jocelyn Emmanuela Tan ', 'Pengunjung Umum', '6281350500163', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(316, 'KAR70120', 'Karista ', 'Pengunjung Umum', '628131227012', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(317, 'SOP4546', 'Sophia Vivimulyani', 'Pengunjung Umum', '628161604546', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(318, 'RIA1183', 'Ria Paulina', 'Pengunjung Umum', '6281932241183', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(319, 'AMR92340', 'Amran ', 'Pengunjung Umum', '6281212769234', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(320, 'GRA1183', 'Grace Emmanuela Tan', 'Pengunjung Umum', '6281932341183', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(321, 'PUT17920', 'Putri Gili', 'Pengunjung Umum', '6287786391792', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(322, 'ABI1800', 'Abigail Muljono', 'Pengunjung Umum', '6281286691800', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(323, 'ELK66660', 'Elke Salim', 'Pengunjung Umum', '628128006666', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(324, 'JHO5998', 'Jhonatan ', 'Pengunjung Umum', '628161915998', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(325, 'HEN54950', 'Henry Manullang', 'Pengunjung Umum', '6285282225495', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(326, 'PUT9278', 'Putri Sastra', 'Pengunjung Umum', '628161669278', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(327, 'DAV54950', 'Dave Natahanael Manullang', 'Pengunjung Umum', '6285282225495', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(328, 'LIA54950', 'Liana Susanti', 'Pengunjung Umum', '6285282225495', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12');
INSERT INTO `penonton` (`id_pk_penonton`, `kode_penonton`, `nama_penonton`, `tipe_penonton`, `nohp_penonton`, `email_penonton`, `status_penonton`, `waktu_checking_penonton`, `catatan_penonton`, `created_at`, `updated_at`) VALUES
(329, 'CHR27540', 'Christin Natalia Picanussa', 'Pengunjung Umum', '6285796002754', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(330, 'DAN6768', 'Daniel Kubijanto', 'Pengunjung Umum', '6281291716768', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(331, 'ARI57160', 'Arista Anugrah Bili', 'Pengunjung Umum', '6283817585716', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:12', '2026-02-27 01:54:12'),
(332, 'MEY70360', 'Meysterlia Angreini Burunaung', 'Pengunjung Umum', '6281357827036', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(333, 'WOE9889', 'Woentarini Irawan', 'Pengunjung Umum', '6281283539889', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(334, 'YOS09990', 'Yosefin Y', 'Pengunjung Umum', '628176300999', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(335, 'IND60071', 'Indriati', 'Pengunjung Umum', '6287883506007', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(336, 'JEA15820', 'Jeannette', 'Pengunjung Umum', '628158941582', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(337, 'VIC9361', 'Victoria Alexander Yap', 'Pengunjung Umum', '62818909361', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(338, 'PER15820', 'Perdana ', 'Pengunjung Umum', '628158941582', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(339, 'DED3681', 'Dedi', 'Pengunjung Umum', '62811913681', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(340, 'BEN18220', 'Bennet Sastra', 'Pengunjung Umum', '6285776711822', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(341, 'LAT3989', 'Latisha Iris Kosasih', 'Pengunjung Umum', '6285186653989', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(342, 'HAN15820', 'Hanny Sutrisna', 'Pengunjung Umum', '628158941582', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(343, 'MON21000', 'Monique', 'Pengunjung Umum', '6287880422100', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(344, 'LAU8199', 'Laura Ludiarto', 'Pengunjung Umum', '62818708199', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(345, 'MEL56360', 'Meli yanti', 'Pengunjung Umum', '6281310295636', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(346, 'LIA9800', 'Liam Theodore Kosasih', 'Pengunjung Umum', '628161119800', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(347, 'ROG59260', 'Roger Sandjaya ', 'Pengunjung Umum', '6285283815926', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(348, 'LIA8199', 'Liam Theodore Kosasih (anak)', 'Pengunjung Umum', '62818708199', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(349, 'THE77710', 'Theressa', 'Pengunjung Umum', '628170177771', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(350, 'TAN7418', 'Tan Kian Guan', 'Pengunjung Umum', '628561037418', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(351, 'MIC59940', 'Michael Cang', 'Pengunjung Umum', '6282267715994', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(352, 'LIE9380', 'Lie Suan', 'Pengunjung Umum', '6281805129380', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(353, 'DAR66660', 'Darren Timothy Zhang', 'Pengunjung Umum', '628197806666', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(354, 'ERN17750', 'Ernie', 'Pengunjung Umum', '6289676961775', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(355, 'JON09200', 'Jonathan Hizkia Widjaja', 'Pengunjung Umum', '6287808910920', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(356, 'RAY11100', 'Rayida Lungguk Lisbet', 'Pengunjung Umum', '6282211951110', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(357, 'HEN5326', 'Hendrik T', 'Pengunjung Umum', '6282113875326', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(358, 'KEN15030', 'Kenosis Miracle Yani', 'Pengunjung Umum', '6282121211503', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(359, 'MER3643', 'Mery chandra', 'Pengunjung Umum', '6285770813643', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(360, 'ROB03470', 'Robert Supriadi', 'Pengunjung Umum', '6281511100347', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(361, 'HET84020', 'Heti', 'Pengunjung Umum', '628161998402', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(362, 'LIN3643', 'Lina lim', 'Pengunjung Umum', '6285770813643', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(363, 'YEN19570', 'Yen Lie', 'Pengunjung Umum', '628128111957', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(364, 'ABI3643', 'Abigail naomi ', 'Pengunjung Umum', '6285770813643', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(365, 'MEL86260', 'Melina Jonas', 'Pengunjung Umum', '628112208626', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(366, 'HIL4000', 'Hillary heriyati', 'Pengunjung Umum', '6282113264000', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(367, 'NAW65690', 'Nawi', 'Pengunjung Umum', '628159236569', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(368, 'CEN22600', 'Cendra Harsojo', 'Pengunjung Umum', '6281398462260', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(369, 'JOC7820', 'Jocelyn Michelle Kho', 'Pengunjung Umum', '6281320567820', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(370, 'REG68860', 'Regina Rosa', 'Pengunjung Umum', '6287884646886', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(371, 'VIN7417', 'Vincent Hans Lee', 'Pengunjung Umum', '6287878487417', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(372, 'RAT80680', 'Ratu Esther Eldi', 'Pengunjung Umum', '6282364078068', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(373, 'YUL0913', 'Yuliani Widjaja', 'Pengunjung Umum', '6281210600913', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(374, 'JAD7703', 'jade sherard irawan', 'Pengunjung Umum', '6281211997703', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(375, 'VIV27330', 'Vivica michelle lo', 'Pengunjung Umum', '6285973242733', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(376, 'LIG3643', 'Liga ', 'Pengunjung Umum', '6285770813643', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(377, 'LIL85180', 'Lily', 'Pengunjung Umum', '6281281768518', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(378, 'ALA04042', 'Alan', 'Pengunjung Umum', '6281617340404', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(379, 'JEN9932', 'Jenny', 'Pengunjung Umum', '62811119932', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(380, 'ROB23440', 'Robert Christian Lahagu', 'Pengunjung Umum', '6281382852344', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(381, 'CAL7661', 'Calista', 'Pengunjung Umum', '6281310457661', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(382, 'HOS30492', 'Hosea Hariputera', 'Pengunjung Umum', '6289660693049', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(383, 'ALV7321', 'Alvaro', 'Pengunjung Umum', '6283198237321', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(384, 'CHL8300', 'Chloe Adelia Nugroho', 'Pengunjung Umum', '6282111818300', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(385, 'NJO14680', 'Njoo mee fang', 'Pengunjung Umum', '628119321468', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(386, 'MAR14680', 'Margiman', 'Pengunjung Umum', '628119321468', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(387, 'GRA8819', 'Grace ', 'Pengunjung Umum', '6281916888819', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(388, 'AMA78930', 'Amabel Joshlyn Kubijanto', 'Pengunjung Umum', '6281291817893', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(389, 'LUS8887', 'LUSY SETIAWATY', 'Pengunjung Umum', '628179868887', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(390, 'ALI20090', 'Alie Zoey Ardhaniputri ', 'Pengunjung Umum', '6281916082009', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(391, 'STE5836', 'Steven soesanto', 'Pengunjung Umum', '6287792845836', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(392, 'NAT85670', 'Natasha.Febriany', 'Pengunjung Umum', '6287880518567', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(393, 'JOS3909', 'Joshua Songmin', 'Pengunjung Umum', '62818393909', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(394, 'NIC43400', 'nicole carissa tan ', 'Pengunjung Umum', '6281572274340', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(395, 'JOE3370', 'Joel Evandra', 'Pengunjung Umum', '628113313370', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(396, 'VEV23311', 'Vevila Brilian Putri ', 'Pengunjung Umum', '6285282402331', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(397, 'TIO4138', 'Tiomer mewati hutauruk', 'Pengunjung Umum', '6285882064138', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(398, 'VEV23312', 'Vevila Brilian Putri ', 'Pengunjung Umum', '6285282402331', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(399, 'SUS75310', 'Susanti Indra Wijaya ', 'Pengunjung Umum', '628121357531', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(400, 'AGU3946', 'Agus Susanto', 'Pengunjung Umum', '62818393946', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(401, 'VAN1969', 'Vania', 'Pengunjung Umum', '6285281791969', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(402, 'RAF01530', 'Raffael Khaeren', 'Pengunjung Umum', '6285711710153', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(403, 'DAN8425', 'Daniel ', 'Pengunjung Umum', '6281295988425', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(404, 'WHA56750', 'Whaty Mudak', 'Pengunjung Umum', '6285215665675', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(405, 'BER6033', 'Bernand', 'Pengunjung Umum', '6285187846033', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(406, 'GED58870', 'Gedeo Billy Aleva Goenawan', 'Pengunjung Umum', '628118085887', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(407, 'MIC5920', 'Michael law', 'Pengunjung Umum', '62895334435920', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(408, 'SRI42000', 'Sri Ria', 'Pengunjung Umum', '628161944200', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(409, 'NOE8853', 'Noeke Anggreani', 'Pengunjung Umum', '628170708853', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(410, 'TJI90650', 'Tjintarto', 'Pengunjung Umum', '62816999065', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(411, 'SYD0557', 'Sydney shannon lie', 'Pengunjung Umum', '622111000557', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(412, 'SAR01510', 'Sari Anna', 'Pengunjung Umum', '6287878190151', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(413, 'LIV2950', 'Livia', 'Pengunjung Umum', '6287883202950', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(414, 'JER0555', 'Jeremiah', 'Pengunjung Umum', '6287876610555', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(415, 'FEL99010', 'Felincia Mikki Lai', 'Pengunjung Umum', '62885182169901', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(416, 'MUL8211', 'Muliyana Chandra', 'Pengunjung Umum', '628119138211', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(417, 'HAN75590', 'Hanken benedict', 'Pengunjung Umum', '6283170287559', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(418, 'VAN5002', 'Vania Madeline', 'Pengunjung Umum', '6281807875002', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(419, 'LIA19100', 'Liani Endang', 'Pengunjung Umum', '6287878991910', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(420, 'HER49800', 'Herbet', 'Pengunjung Umum', '62811154980', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(421, 'JAM2788', 'James hagata', 'Pengunjung Umum', '6285691942788', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(422, 'GAV8174', 'GAVRIELIN GINARID JAYASUKMA', 'Pengunjung Umum', '6281280398174', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(423, 'THE50690', 'Theodore Kan', 'Pengunjung Umum', '6287887935069', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(424, 'LIN1846', 'Lina Tjandra', 'Pengunjung Umum', '628159111846', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(425, 'JUL0320', 'Julius Tedja Setiawan', 'Pengunjung Umum', '6281932020320', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(426, 'TIR46880', 'TIRTA BAMBANGWIRAWAN', 'Pengunjung Umum', '62857705774688', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(427, 'VIC0254', 'Victor Dianata ', 'Pengunjung Umum', '6285920570254', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(428, 'STE46880', 'STEPHANIE CHANDRA', 'Pengunjung Umum', '6285770574688', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(429, 'JER05550', 'Jeremiah Bumi', 'Pengunjung Umum', '6287876610555', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(430, 'WIW28010', 'Wiwin Suwandhari', 'Pengunjung Umum', '6287887472801', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(431, 'VAL0', 'Vallerie.t.', 'Pengunjung Umum', '000', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(432, 'MAS7890', 'Masaria', 'Pengunjung Umum', '6285217237890', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(433, 'HEN1125', 'Henny Pradiastuti Naibaho ', 'Pengunjung Umum', '6281290681125', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(434, 'ALE68650', 'Alexander HARYANTO Hartono', 'Pengunjung Umum', '628111176865', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(435, 'HAN0238', 'Hansller Lokito', 'Pengunjung Umum', '6282261110238', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(436, 'RIT44990', 'Ritha', 'Pengunjung Umum', '628170184499', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(437, 'GRA5327', 'Grace Dwiyana Chan', 'Pengunjung Umum', '628111555327', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(438, 'CHI4257', 'Chika Agatha', 'Pengunjung Umum', '6288214744257', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(439, 'SET90100', 'Setyawati', 'Pengunjung Umum', '628568809010', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(440, 'BU6855', 'Bu yayang ', 'Pengunjung Umum', '6285934246855', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(441, 'SAM1900', 'Samuel Affandi', 'Pengunjung Umum', '6287884221900', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(442, 'CAR71780', 'Carolina kalalo', 'Pengunjung Umum', '6281354537178', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(443, 'ROC6545', 'Rocky Fulmer Wien', 'Pengunjung Umum', '6282177776545', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(444, 'ANT4811', 'Anton , Pauline , Sean (1)', 'Pengunjung Umum', '628129494811', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(445, 'JOL0036', 'Jolyn Petra', 'Pengunjung Umum', '628118130036', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(446, 'SUT0036', 'Sutomo', 'Pengunjung Umum', '628118120036', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(447, 'KEL30330', 'Kelly', 'Pengunjung Umum', '6289522233033', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(448, 'ELI6819', 'Elizabeth ', 'Pengunjung Umum', '628161166819', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(449, 'BEA22880', 'beatrice helena venturo😛😛', 'Pengunjung Umum', '6289672012288😏😏😏😏', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(450, 'JON7787', 'Jong wie pin', 'Pengunjung Umum', '62811967787', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(451, 'ARN7788', 'Arni Susanti', 'Pengunjung Umum', '62811967788', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(452, 'TOM70030', 'Tommy Setiawan', 'Pengunjung Umum', '62818397003', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(453, 'CLA7787', 'Clayton Abner Yang', 'Pengunjung Umum', '62811967787', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(454, 'ARE70030', 'Areta Angti', 'Pengunjung Umum', '62818397003', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(455, 'KRI8889', 'Kristian Aliwarga', 'Pengunjung Umum', '6287811228889', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(456, 'IND70030', 'Indayani Moeljo', 'Pengunjung Umum', '62818397003', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(457, 'JOR8389', 'Jordan Widianto Pradipta', 'Pengunjung Umum', '6287887568389', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(458, 'AGO6007', 'Agoeng Widjaja', 'Pengunjung Umum', '628111786007', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(459, 'KO83610', 'ko jeff', 'Pengunjung Umum', '628158808361', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(460, 'LIL6008', 'Lily Wongso', 'Pengunjung Umum', '628118606008', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(461, 'CHE2460', 'Chen tianci ', 'Pengunjung Umum', '6285817092460', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(462, 'ANN95350', 'Anna K', 'Pengunjung Umum', '6281288509535', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(463, 'KIR65360', 'Kirniawan', 'Pengunjung Umum', '6281381096536', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(464, 'CHE24600', 'Chen shangen', 'Pengunjung Umum', '6285817092460', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(465, 'SHA3366', 'Sharon Moze El-Gibbor Aoetpah ', 'Pengunjung Umum', '6285282683366', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(466, 'CLA01720', 'Clarabella', 'Pengunjung Umum', '628889830172', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(467, 'YOS2241', 'Yosua Putra Jayanto', 'Pengunjung Umum', '6281221702241', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(468, 'ELI52590', 'Elizabeth Halley Hardyeth ', 'Pengunjung Umum', '6281399385259', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(469, 'NIN2125', 'Ningsih', 'Pengunjung Umum', '‪62 856‑9189‑2125‬', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(470, 'S00', 'S', 'Pengunjung Umum', '62', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(471, 'ALE7330', 'Alexandra Michelle Pangestu', 'Pengunjung Umum', '628111747330', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:13', '2026-02-27 01:54:13'),
(472, 'SAM76270', 'samantha lemuel', 'Pengunjung Umum', '628568777627', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(473, 'VIN4802', 'Vinche Innel', 'Pengunjung Umum', '6281949974802', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(474, 'MOL8752', 'Moladiana D.Y.Taneo', 'Pengunjung Umum', '6281383248752', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(475, 'KAY79810', 'Kayleen', 'Pengunjung Umum', '6281316777981', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(476, 'NIC8283', 'Nicole Irwanto', 'Pengunjung Umum', '6281219198283', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(477, 'ETI4287', 'Eti', 'Pengunjung Umum', '6289617344287', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(478, 'RAN39800', 'Randy Christopher Lie', 'Pengunjung Umum', '6281932073980', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(479, 'RAC01830', 'Rachel Annabelle', 'Pengunjung Umum', '62817800183', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(480, 'GWE81500', 'Gwenneth Annabelle H', 'Pengunjung Umum', '6287739488150', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(481, 'DAR9180', 'Darien Immanuel', 'Pengunjung Umum', '6281316859180', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(482, 'QIN20131', 'Qing', 'Pengunjung Umum', '628161842013', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(483, 'CHR18580', 'Christabel cindy loisa ', 'Pengunjung Umum', '6282210761858', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(484, 'JOH7198', 'johan', 'Pengunjung Umum', '6281361757198', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(485, 'BRI11330', 'Brianne Allegra Pratomo', 'Pengunjung Umum', '6281380601133', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(486, 'GRA3258', 'Grace Thomas', 'Pengunjung Umum', '6281384173258', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(487, 'ELY6428', 'Elys', 'Pengunjung Umum', '6285718376428', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(488, 'KAY20130', 'Kayleen Mercy Lieora', 'Pengunjung Umum', '6281803112013', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(489, 'HEL8548', 'Helsa', 'Pengunjung Umum', '6285693408548', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(490, 'RAJ3216', 'Raja Solomon F', 'Pengunjung Umum', '6282361373216', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(491, 'NAT22771', 'Natanael Dominggus Bagus JP', 'Pengunjung Umum', '6281931692277', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(492, 'YEH3682', 'Yehezkiel dicky utomo', 'Pengunjung Umum', '6281388543682', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(493, 'WID17221', 'Widdy Wuisang', 'Pengunjung Umum', '6287859371722', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(494, 'LOU1343', 'Louisa Pangestu', 'Pengunjung Umum', '6281283151343', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(495, 'NAT22772', 'Natanael DBJ Pratama', 'Pengunjung Umum', '6281931692277', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(496, 'DAV5570', 'David Bumi', 'Pengunjung Umum', '6281280555570', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(497, 'EST4707', 'Esther Iskandar', 'Pengunjung Umum', '62818894707', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(498, 'WID17222', 'Widdy Wuisang', 'Pengunjung Umum', '6287859371722', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(499, 'NAT9841', 'Natalia ', 'Pengunjung Umum', '6281297989841', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(500, 'ELO47520', 'Eloise Anaya Kosasih', 'Pengunjung Umum', '6281384464752', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(501, 'HIZ9841', 'Hizkia ', 'Pengunjung Umum', '6281297989841', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(502, 'EUG1668', 'eugene lionel kuswanto', 'Pengunjung Umum', '6287873001668', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(503, 'CHR11850', 'Christopher matthew lasmana ', 'Pengunjung Umum', '6287778881185', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(504, 'FEL3595', 'Felicia Emeline Suhendra', 'Pengunjung Umum', '628988133595', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(505, 'SIU17170', 'Siutje Yulis', 'Pengunjung Umum', '6281316401717', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(506, 'SIL2323', 'Silvi', 'Pengunjung Umum', '6287893832323', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(507, 'VIC9741', 'Victoria Annabelle Suryo', 'Pengunjung Umum', '628158219741', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(508, 'LIN92570', 'Linda Kurniawan', 'Pengunjung Umum', '62895352409257', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(509, 'JOH', 'johan  nugroho', 'Pengunjung Umum', '000', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(510, 'JOC01630', 'Jocelyn Emmanuela Tan ', 'Pengunjung Umum', '6281350500163', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(511, 'MEL1804', 'Melody Feodora Shallom', 'Pengunjung Umum', '62818141804', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(512, 'EMY9872', 'Emy Tandiah', 'Pengunjung Umum', '6281218989872', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(513, 'ALE6545', 'Alethea ', 'Pengunjung Umum', '62811766545', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(514, 'ALV5790', 'Alvaro Gavriel', 'Pengunjung Umum', '6281958015790', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(515, 'SOP45460', 'Sophia Vivimulyani', 'Pengunjung Umum', '628161604546', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(516, 'SIS3388', 'Siska Cokro', 'Pengunjung Umum', '6285391733388', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(517, 'WIN6700', 'Winny', 'Pengunjung Umum', '6285960206700', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(518, 'RIA11830', 'Ria Paulina', 'Pengunjung Umum', '6281932241183', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(519, 'GRA11830', 'Grace Emmanuela Tan', 'Pengunjung Umum', '6281932341183', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(520, 'LEO8149', 'Leonardo Nathaniel Lembono', 'Pengunjung Umum', '6281225338149', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(521, 'ABI18000', 'Abigail Muljono', 'Pengunjung Umum', '6281286691800', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(522, 'RIR7048', 'Ririn Saprina Kadang', 'Pengunjung Umum', '6285241107048', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(523, 'JHO59980', 'Jhonatan ', 'Pengunjung Umum', '628161915998', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(524, 'LIN9913', 'Lincoln Widjaya', 'Pengunjung Umum', '628882209913', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(525, 'MAD6700', 'Madison widjaya', 'Pengunjung Umum', '6285960206700', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(526, 'WIL6700', 'Wilson Widjaya', 'Pengunjung Umum', '6285960206700', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(527, 'PUT92780', 'Putri Sastra', 'Pengunjung Umum', '628161669278', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(528, 'DAN67680', 'Daniel Kubijanto', 'Pengunjung Umum', '6281291716768', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(529, 'APR1638', 'Aprillyo Tristan', 'Pengunjung Umum', '6285882071638', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(530, 'WOE98890', 'Woentarini Irawan', 'Pengunjung Umum', '6281283539889', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(531, 'THI6227', 'Thio Johan', 'Pengunjung Umum', '628113426227', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(532, 'DEW0426', 'Dewi Yusuf ', 'Pengunjung Umum', '6289608020426', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(533, 'IND60072', 'Indriati', 'Pengunjung Umum', '6287883506007', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(534, 'MEI5698', 'Mei Lauwuna', 'Pengunjung Umum', '6281258175698', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(535, 'VIC93610', 'Victoria Alexander Yap', 'Pengunjung Umum', '62818909361', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(536, 'PAO8383', 'Paola Yuktipada', 'Pengunjung Umum', '62811938383', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(537, 'DIN5244', 'Dinila Gea', 'Pengunjung Umum', '6281324905244', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(538, 'DED36810', 'Dedi', 'Pengunjung Umum', '62811913681', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(539, 'FRE6799', 'Fredella Gea', 'Pengunjung Umum', '6281398396799', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(540, 'YUL8554', 'Yuliani tedja', 'Pengunjung Umum', '628121018554', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(541, 'LAT39890', 'Latisha Iris Kosasih', 'Pengunjung Umum', '6285186653989', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(542, 'YAN9305', 'Yansen', 'Pengunjung Umum', '6285694759305', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(543, 'LAU81990', 'Laura Ludiarto', 'Pengunjung Umum', '62818708199', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(544, 'LIA98000', 'Liam Theodore Kosasih', 'Pengunjung Umum', '628161119800', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(545, 'STE5880', 'Steven Lim', 'Pengunjung Umum', '62811575880', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(546, 'NAT9911', 'Nathanael Owen Mackenzie ', 'Pengunjung Umum', '6282261609911', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(547, 'LIA81990', 'Liam Theodore Kosasih (anak)', 'Pengunjung Umum', '62818708199', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(548, 'CLA5219', 'clarissa violin ', 'Pengunjung Umum', '6283130765219', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(549, 'TAN74180', 'Tan Kian Guan', 'Pengunjung Umum', '628561037418', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(550, 'LIE93800', 'Lie Suan', 'Pengunjung Umum', '6281805129380', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(551, 'HEN53260', 'Hendrik T', 'Pengunjung Umum', '6282113875326', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(552, 'MER36430', 'Mery chandra', 'Pengunjung Umum', '6285770813643', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(553, 'WIL1460', 'wilda aisyah juniari ', 'Pengunjung Umum', '6281296751460', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(554, 'LIN36430', 'Lina lim', 'Pengunjung Umum', '6285770813643', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(555, 'ABI36430', 'Abigail naomi ', 'Pengunjung Umum', '6285770813643', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(556, 'DHA9940', 'Dharma Arya Putra', 'Pengunjung Umum', '6287744689940', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(557, 'SUS1213', 'SUSANTO ALIWARGA', 'Pengunjung Umum', '62817121213', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(558, 'HIL40000', 'Hillary heriyati', 'Pengunjung Umum', '6282113264000', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(559, 'ALE1928', 'alexandra joanna olivia (mama)', 'Pengunjung Umum', '6281289511928', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(560, 'SUG8870', 'Suganda Gunawan', 'Pengunjung Umum', '6281315168870', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(561, 'JOC78200', 'Jocelyn Michelle Kho', 'Pengunjung Umum', '6281320567820', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(562, 'SAN2013', 'Santoso Qing', 'Pengunjung Umum', '628161842013', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(563, 'ALE2013', 'Alex Qing', 'Pengunjung Umum', '628161842013', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(564, 'MEI4596', 'Meiti Sions', 'Pengunjung Umum', '628129964596', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(565, 'DED7116', 'Dedy Susanto', 'Pengunjung Umum', '628111557116', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(566, 'PRI', 'Priyana', 'Pengunjung Umum', '000', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(567, 'LIA', 'Liana Priyana', 'Pengunjung Umum', '000', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(568, 'VIN74170', 'Vincent Hans Lee', 'Pengunjung Umum', '6287878487417', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(569, 'HEN', 'Hendrik Yong', 'Pengunjung Umum', '000', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:14', '2026-02-27 01:54:14'),
(570, 'HEN0', 'Hendrik Yong Istri', 'Pengunjung Umum', '000', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(571, 'YUL09130', 'Yuliani Widjaja', 'Pengunjung Umum', '6281210600913', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(572, 'LIS1275', 'Lisna', 'Pengunjung Umum', '6289519521275', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(573, 'YON1275', 'Yonatan', 'Pengunjung Umum', '6289519521275', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(574, 'JAD77030', 'jade sherard irawan', 'Pengunjung Umum', '6281211997703', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(575, 'DEC', 'Decky Yuzar', 'Pengunjung Umum', '000', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(576, 'LIG36430', 'Liga ', 'Pengunjung Umum', '6285770813643', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(577, 'ELS8795', 'Elsha Graciana Putri Suwarno', 'Pengunjung Umum', '6285211488795', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(578, 'JEN99320', 'Jenny', 'Pengunjung Umum', '62811119932', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(579, 'YOH3455', 'Yohanes Marella', 'Pengunjung Umum', '6281223893455', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(580, 'CAL76610', 'Calista', 'Pengunjung Umum', '6281310457661', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(581, 'KAT0900', 'Katherine Maria Wijaya ', 'Pengunjung Umum', '6288808900900', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(582, 'ALV73210', 'Alvaro', 'Pengunjung Umum', '6283198237321', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(583, 'KRI6415', 'Kristiyani Kan', 'Pengunjung Umum', '628152316415', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(584, 'CHL83000', 'Chloe Adelia Nugroho', 'Pengunjung Umum', '6282111818300', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(585, 'DAV6622', 'Dave Benedict Chandra', 'Pengunjung Umum', '6282310756622', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(586, 'GRA88190', 'Grace ', 'Pengunjung Umum', '6281916888819', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(587, 'STE5471', 'Stephen Chandra', 'Pengunjung Umum', '628161635471', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(588, 'RIN2785', 'Rini Gozali', 'Pengunjung Umum', '628161302785', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(589, 'LUS88870', 'LUSY SETIAWATY', 'Pengunjung Umum', '628179868887', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(590, 'STE58360', 'Steven soesanto', 'Pengunjung Umum', '6287792845836', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(591, 'JOS3808', 'Jose Caydenz Houten', 'Pengunjung Umum', '6281323423808', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(592, 'PHO3818', 'Phoebe Chantal Houten', 'Pengunjung Umum', '6281323423818', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(593, 'JOS39090', 'Joshua Songmin', 'Pengunjung Umum', '62818393909', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(594, 'NIC4899', 'Nico Pratomo', 'Pengunjung Umum', '628151614899', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(595, 'JOE33700', 'Joel Evandra', 'Pengunjung Umum', '628113313370', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(596, 'TIO41380', 'Tiomer mewati hutauruk', 'Pengunjung Umum', '6285882064138', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(597, 'SUN5064', 'sunarti feronika', 'Pengunjung Umum', '6282310815064', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(598, 'AGU39460', 'Agus Susanto', 'Pengunjung Umum', '62818393946', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(599, 'VAN19690', 'Vania', 'Pengunjung Umum', '6285281791969', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(600, 'GUN8968', 'Gunawan Yap', 'Pengunjung Umum', '628128888968', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(601, 'DAN84250', 'Daniel ', 'Pengunjung Umum', '6281295988425', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(602, 'JIM7326', 'Jimmy', 'Pengunjung Umum', '628111777326', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(603, 'BER60330', 'Bernand', 'Pengunjung Umum', '6285187846033', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(604, 'VER4177', 'Vergin', 'Pengunjung Umum', '62811844177', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(605, 'MIC59200', 'Michael law', 'Pengunjung Umum', '62895334435920', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(606, 'NOE88530', 'Noeke Anggreani', 'Pengunjung Umum', '628170708853', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(607, 'SYD05570', 'Sydney shannon lie', 'Pengunjung Umum', '622111000557', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(608, 'CEL1046', 'Celina Gresiana', 'Pengunjung Umum', '6281319031046', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(609, 'LIV29500', 'Livia', 'Pengunjung Umum', '6287883202950', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(610, 'MEL6151', 'Melody', 'Pengunjung Umum', '628129626151', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(611, 'PAU5410', 'Paul', 'Pengunjung Umum', '6287808555410', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(612, 'JER05551', 'Jeremiah', 'Pengunjung Umum', '6287876610555', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(613, 'MUL82110', 'Muliyana Chandra', 'Pengunjung Umum', '628119138211', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(614, 'VAN50020', 'Vania Madeline', 'Pengunjung Umum', '6281807875002', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(615, 'JAM27880', 'James hagata', 'Pengunjung Umum', '6285691942788', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(616, 'JAM1468', 'James Preston Kurniawan', 'Pengunjung Umum', '6281388881468', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(617, 'GAV81740', 'GAVRIELIN GINARID JAYASUKMA', 'Pengunjung Umum', '6281280398174', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(618, 'DEV3300', 'Devi Ligo', 'Pengunjung Umum', '62817163300', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(619, 'DER3300', 'Derren', 'Pengunjung Umum', '62817163300', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(620, 'LIN18460', 'Lina Tjandra', 'Pengunjung Umum', '628159111846', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(621, 'DRE3300', 'Dreysen', 'Pengunjung Umum', '62817163300', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(622, 'JUL03200', 'Julius Tedja Setiawan', 'Pengunjung Umum', '6281932020320', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(623, 'ENJ6676', 'Enjelita', 'Pengunjung Umum', '628159976676', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(624, 'VIC02540', 'Victor Dianata ', 'Pengunjung Umum', '6285920570254', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(625, 'RIN31751', 'Rinto', 'Pengunjung Umum', '628111343175', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(626, 'WUL2357', 'Wulandari', 'Pengunjung Umum', '6281802352357', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(627, 'JER05552', 'Jeremiah Bumi', 'Pengunjung Umum', '6287876610555', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(628, 'JOS5403', 'Josephine Abigail', 'Pengunjung Umum', '6281286545403', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(629, 'FEL1998', 'Felicia Hanna', 'Pengunjung Umum', '6287822321998', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(630, 'MAS78900', 'Masaria', 'Pengunjung Umum', '6285217237890', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(631, 'JER8797', 'Jeremia kevin', 'Pengunjung Umum', '6281932028797', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(632, 'HEN11250', 'Henny Pradiastuti Naibaho ', 'Pengunjung Umum', '6281290681125', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(633, 'BIA5065', 'Bianca Marchia Yap', 'Pengunjung Umum', '6281908195065', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(634, 'HAN02380', 'Hansller Lokito', 'Pengunjung Umum', '6282261110238', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(635, 'UUN5558', 'Uun Sugianto', 'Pengunjung Umum', '62818695558', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(636, 'KRI2853', 'Kristin Nur Hayati', 'Pengunjung Umum', '6281555612853', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(637, 'JOS3388', 'Jose Fernando Mackenzie', 'Pengunjung Umum', '6285391733388', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(638, 'GRA53270', 'Grace Dwiyana Chan', 'Pengunjung Umum', '628111555327', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(639, 'KIA7738', 'Kiana William Ng ', 'Pengunjung Umum', '6281280007738', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(640, 'EUG2782', 'Eugenie Lee ', 'Pengunjung Umum', '6285711792782', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(641, 'AME7550', 'Amelia Fransiska', 'Pengunjung Umum', '628151617550', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(642, 'CHI42570', 'Chika Agatha', 'Pengunjung Umum', '6288214744257', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(643, 'WIT9601', 'Witarsa Nagasari', 'Pengunjung Umum', '628161429601', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(644, 'LYO2829', 'Lyonita Tan', 'Pengunjung Umum', '62817312829', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(645, 'AND1319', 'Andreas', 'Pengunjung Umum', '6281355731319', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(646, 'CHL', 'Chloe & fumiko & charlton (1)', 'Pengunjung Umum', '000', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(647, 'FRA0858', 'Frankie Arief Wibowo', 'Pengunjung Umum', '628161990858', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(648, 'GRA7738', 'Grace Agustina ', 'Pengunjung Umum', '6281280007738', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(649, 'BU68550', 'Bu yayang ', 'Pengunjung Umum', '6285934246855', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(650, 'KEN7738', 'Kent William ', 'Pengunjung Umum', '6281280007738', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(651, 'RIO5990', 'Rio Tandoko', 'Pengunjung Umum', '6285780895990', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(652, 'SAM19000', 'Samuel Affandi', 'Pengunjung Umum', '6287884221900', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(653, 'GRA6126', 'Grand Moze El Gibbor Aoetpah', 'Pengunjung Umum', '6285717596126', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(654, 'CHR7301', 'Christopher Aleph Alexanderlie', 'Pengunjung Umum', '6285711807301', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(655, 'ROC65450', 'Rocky Fulmer Wien', 'Pengunjung Umum', '6282177776545', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(656, 'SAN2103', 'Sansan', 'Pengunjung Umum', '6285765562103', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(657, 'RIC2103', 'Ricky', 'Pengunjung Umum', '6285765562103', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(658, 'ANT48110', 'Anton , Pauline , Sean (1)', 'Pengunjung Umum', '628129494811', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15');
INSERT INTO `penonton` (`id_pk_penonton`, `kode_penonton`, `nama_penonton`, `tipe_penonton`, `nohp_penonton`, `email_penonton`, `status_penonton`, `waktu_checking_penonton`, `catatan_penonton`, `created_at`, `updated_at`) VALUES
(659, 'MIC2103', 'Michella', 'Pengunjung Umum', '6285765562103', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(660, 'JOL00360', 'Jolyn Petra', 'Pengunjung Umum', '628118130036', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(661, 'JES5822', 'Jesselyn Andrea Santoso', 'Pengunjung Umum', '6287875885822', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(662, 'SUT00360', 'Sutomo', 'Pengunjung Umum', '628118120036', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(663, 'GRE6360', 'Grecia Evelyn Lawalata', 'Pengunjung Umum', '6281316566360', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(664, 'ELI68190', 'Elizabeth ', 'Pengunjung Umum', '628161166819', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(665, 'CAL76611', 'callysta ramadhani setiawan ', 'Pengunjung Umum', '6281310457661', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(666, 'JON77870', 'Jong wie pin', 'Pengunjung Umum', '62811967787', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(667, 'XIX2000', 'Xixi Ruth Sufianto', 'Pengunjung Umum', '628119482000', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(668, 'ARN77880', 'Arni Susanti', 'Pengunjung Umum', '62811967788', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(669, 'CAR8262', 'Caroline Setiawan', 'Pengunjung Umum', '6281315178262', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(670, 'JAS9077', 'jasmine arthalia tan', 'Pengunjung Umum', '6281218889077', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(671, 'CLA77870', 'Clayton Abner Yang', 'Pengunjung Umum', '62811967787', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(672, 'KRI88890', 'Kristian Aliwarga', 'Pengunjung Umum', '6287811228889', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(673, 'JER6330', 'Jeremy Nathanael Gunawan', 'Pengunjung Umum', '6287782046330', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(674, 'NAN0018', 'Nansy', 'Pengunjung Umum', '6287780900018', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(675, 'ALE19280', 'alexandra joanna olivia (papa)', 'Pengunjung Umum', '6281289511928', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(676, 'JOR83890', 'Jordan Widianto Pradipta', 'Pengunjung Umum', '6287887568389', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(677, 'SER6789', 'Seraphina Freya Roseno', 'Pengunjung Umum', '6281586336789', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(678, 'AGO60070', 'Agoeng Widjaja', 'Pengunjung Umum', '628111786007', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(679, 'TON8298', 'Toni karmawan ', 'Pengunjung Umum', '62811178298', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(680, 'LIL60080', 'Lily Wongso', 'Pengunjung Umum', '628118606008', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(681, 'JOV2401', 'Jovita aurelia marpaung', 'Pengunjung Umum', '628119742401', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(682, 'LIE5537', 'Lie Benedict Yahliel', 'Pengunjung Umum', '6287796135537', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(683, 'ABI5758', 'Abigail Christabel Pangemanan', 'Pengunjung Umum', '6285282405758', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(684, 'MAN4000', 'Mandy Theab', 'Pengunjung Umum', '62811814000', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(685, 'CHE24601', 'Chen tianci ', 'Pengunjung Umum', '6285817092460', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(686, 'DAR', 'Darwin Susanto', 'Pengunjung Umum', '000', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(687, 'DAR0', 'Darson', 'Pengunjung Umum', '000', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(688, 'CHE24602', 'Chen shangen', 'Pengunjung Umum', '6285817092460', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(689, 'PHI1236', 'Phinsen Renaldo', 'Pengunjung Umum', '6289615261236', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(690, 'SAP6770', 'Sapto Santoso', 'Pengunjung Umum', '62818886770', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(691, 'SHA33660', 'Sharon Moze El-Gibbor Aoetpah ', 'Pengunjung Umum', '6285282683366', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(692, 'VAN3358', 'Vania Priskila', 'Pengunjung Umum', '6285215003358', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(693, 'YOS22410', 'Yosua Putra Jayanto', 'Pengunjung Umum', '6281221702241', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(694, 'HAD3173', 'Hadijah', 'Pengunjung Umum', '6281211093173', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(695, 'NIN21250', 'Ningsih', 'Pengunjung Umum', '‪62 856‑9189‑2125‬', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(696, 'GRA3045', 'Grant', 'Pengunjung Umum', '6281283273045', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(697, 'ALE73300', 'Alexandra Michelle Pangestu', 'Pengunjung Umum', '628111747330', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(698, 'NAO3589', 'Naomi merci marsaulina simanjuntak', 'Pengunjung Umum', '6287884943589', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(699, 'VIN48020', 'Vinche Innel', 'Pengunjung Umum', '6281949974802', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(700, 'SAN', 'Santoso SS', 'Pengunjung Umum', '', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(701, 'MOL87520', 'Moladiana D.Y.Taneo', 'Pengunjung Umum', '6281383248752', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(702, 'MER9795', 'mery widjaja', 'Pengunjung Umum', '628111909795', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(703, 'JON2942', 'jonny harianto ', 'Pengunjung Umum', '628121322942', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(704, 'NIC82830', 'Nicole Irwanto', 'Pengunjung Umum', '6281219198283', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(705, 'FIO6226', 'Fiona Hansel', 'Pengunjung Umum', '6285158936226', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(706, 'ETI42870', 'Eti', 'Pengunjung Umum', '6289617344287', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(707, 'FEL6226', 'Felicia Hansel', 'Pengunjung Umum', '6285158956226', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(708, 'DAR91800', 'Darien Immanuel', 'Pengunjung Umum', '6281316859180', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(709, 'CHL0', 'Chloe & fumiko & charlton (2)', 'Pengunjung Umum', '', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(710, 'QIN20132', 'Qing', 'Pengunjung Umum', '628161842013', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(711, 'CHL1', 'Chloe & fumiko & charlton (3)', 'Pengunjung Umum', '', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(712, 'JOH71980', 'johan', 'Pengunjung Umum', '6281361757198', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(713, 'ANT', 'Anton , Pauline , Sean (2)', 'Pengunjung Umum', '', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(714, 'GRA32580', 'Grace Thomas', 'Pengunjung Umum', '6281384173258', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(715, 'ANT0', 'Anton , Pauline , Sean (3)', 'Pengunjung Umum', '', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(716, 'ELY64280', 'Elys', 'Pengunjung Umum', '6285718376428', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(717, 'JOA9795', 'Joachim ', 'Pengunjung Umum', '6285173059795', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(718, 'HEL85480', 'Helsa', 'Pengunjung Umum', '6285693408548', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(719, 'GER2891', 'Geraldi', 'Pengunjung Umum', '6281295492891', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(720, 'RAJ32160', 'Raja Solomon F', 'Pengunjung Umum', '6282361373216', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(721, 'YEH36820', 'Yehezkiel dicky utomo', 'Pengunjung Umum', '6281388543682', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(722, 'JOA6747', 'Joanne', 'Pengunjung Umum', '6285211526747', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(723, 'GAB0879', 'gabriela', 'Pengunjung Umum', '6285811850879', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(724, 'LOU13430', 'Louisa Pangestu', 'Pengunjung Umum', '6281283151343', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(725, 'SAM4440', 'Samuel Baulu', 'Pengunjung Umum', '6281296824440', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(726, 'DAV55700', 'David Bumi', 'Pengunjung Umum', '6281280555570', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(727, 'GAB6182', 'gabriel ian noni', 'Pengunjung Umum', '6282191596182', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(728, 'EST47070', 'Esther Iskandar', 'Pengunjung Umum', '62818894707', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(729, 'EST5442', 'Ester', 'Pengunjung Umum', '6287827935442', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(730, 'SAT3470', 'Satya', 'Pengunjung Umum', '6287872003470', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(731, 'MIK8303', 'Mikaella', 'Pengunjung Umum', '628561488303', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(732, 'NAT98410', 'Natalia ', 'Pengunjung Umum', '6281297989841', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:15', '2026-02-27 01:54:15'),
(733, 'HIZ98410', 'Hizkia ', 'Pengunjung Umum', '6281297989841', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(734, 'EUG16680', 'eugene lionel kuswanto', 'Pengunjung Umum', '6287873001668', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(735, 'FEL35950', 'Felicia Emeline Suhendra', 'Pengunjung Umum', '628988133595', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(736, 'SIL23230', 'Silvi', 'Pengunjung Umum', '6287893832323', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(737, 'VIC97410', 'Victoria Annabelle Suryo', 'Pengunjung Umum', '628158219741', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(738, 'JOH0', 'johan  nugroho', 'Pengunjung Umum', '000', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(739, 'MEL18040', 'Melody Feodora Shallom', 'Pengunjung Umum', '62818141804', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(740, 'EMY98720', 'Emy Tandiah', 'Pengunjung Umum', '6281218989872', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(741, 'ALE65450', 'Alethea ', 'Pengunjung Umum', '62811766545', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(742, 'ALV57900', 'Alvaro Gavriel', 'Pengunjung Umum', '6281958015790', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(743, 'SIS33880', 'Siska Cokro', 'Pengunjung Umum', '6285391733388', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(744, 'WIN67000', 'Winny', 'Pengunjung Umum', '6285960206700', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(745, 'LEO81490', 'Leonardo Nathaniel Lembono', 'Pengunjung Umum', '6281225338149', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(746, 'RIR70480', 'Ririn Saprina Kadang', 'Pengunjung Umum', '6285241107048', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(747, 'LIN99130', 'Lincoln Widjaya', 'Pengunjung Umum', '628882209913', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(748, 'MAD67000', 'Madison widjaya', 'Pengunjung Umum', '6285960206700', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(749, 'WIL67000', 'Wilson Widjaya', 'Pengunjung Umum', '6285960206700', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(750, 'APR16380', 'Aprillyo Tristan', 'Pengunjung Umum', '6285882071638', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(751, 'THI62270', 'Thio Johan', 'Pengunjung Umum', '628113426227', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(752, 'DEW04260', 'Dewi Yusuf ', 'Pengunjung Umum', '6289608020426', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(753, 'MEI56980', 'Mei Lauwuna', 'Pengunjung Umum', '6281258175698', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(754, 'PAO83830', 'Paola Yuktipada', 'Pengunjung Umum', '62811938383', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(755, 'DIN52440', 'Dinila Gea', 'Pengunjung Umum', '6281324905244', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(756, 'FRE67990', 'Fredella Gea', 'Pengunjung Umum', '6281398396799', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(757, 'YUL85540', 'Yuliani tedja', 'Pengunjung Umum', '628121018554', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(758, 'YAN93050', 'Yansen', 'Pengunjung Umum', '6285694759305', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(759, 'STE58800', 'Steven Lim', 'Pengunjung Umum', '62811575880', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(760, 'NAT99110', 'Nathanael Owen Mackenzie ', 'Pengunjung Umum', '6282261609911', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(761, 'CLA52190', 'clarissa violin ', 'Pengunjung Umum', '6283130765219', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(762, 'WIL14600', 'wilda aisyah juniari ', 'Pengunjung Umum', '6281296751460', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(763, 'DHA99400', 'Dharma Arya Putra', 'Pengunjung Umum', '6287744689940', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(764, 'SUS12130', 'SUSANTO ALIWARGA', 'Pengunjung Umum', '62817121213', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(765, 'ALE19281', 'alexandra joanna olivia (mama)', 'Pengunjung Umum', '6281289511928', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(766, 'SUG88700', 'Suganda Gunawan', 'Pengunjung Umum', '6281315168870', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(767, 'SAN20130', 'Santoso Qing', 'Pengunjung Umum', '628161842013', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(768, 'ALE20130', 'Alex Qing', 'Pengunjung Umum', '628161842013', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(769, 'MEI45960', 'Meiti Sions', 'Pengunjung Umum', '628129964596', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(770, 'DED71160', 'Dedy Susanto', 'Pengunjung Umum', '628111557116', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(771, 'PRI0', 'Priyana', 'Pengunjung Umum', '000', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(772, 'LIA0', 'Liana Priyana', 'Pengunjung Umum', '000', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(773, 'HEN1', 'Hendrik Yong', 'Pengunjung Umum', '000', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(774, 'HEN2', 'Hendrik Yong Istri', 'Pengunjung Umum', '000', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(775, 'LIS12750', 'Lisna', 'Pengunjung Umum', '6289519521275', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(776, 'YON12750', 'Yonatan', 'Pengunjung Umum', '6289519521275', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(777, 'DEC0', 'Decky Yuzar', 'Pengunjung Umum', '000', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(778, 'ELS87950', 'Elsha Graciana Putri Suwarno', 'Pengunjung Umum', '6285211488795', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(779, 'YOH34550', 'Yohanes Marella', 'Pengunjung Umum', '6281223893455', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(780, 'KAT09000', 'Katherine Maria Wijaya ', 'Pengunjung Umum', '6288808900900', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(781, 'KRI64150', 'Kristiyani Kan', 'Pengunjung Umum', '628152316415', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(782, 'DAV66220', 'Dave Benedict Chandra', 'Pengunjung Umum', '6282310756622', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(783, 'STE54710', 'Stephen Chandra', 'Pengunjung Umum', '628161635471', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(784, 'RIN27850', 'Rini Gozali', 'Pengunjung Umum', '628161302785', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(785, 'JOS38080', 'Jose Caydenz Houten', 'Pengunjung Umum', '6281323423808', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(786, 'PHO38180', 'Phoebe Chantal Houten', 'Pengunjung Umum', '6281323423818', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(787, 'NIC48990', 'Nico Pratomo', 'Pengunjung Umum', '628151614899', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(788, 'SUN50640', 'sunarti feronika', 'Pengunjung Umum', '6282310815064', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(789, 'GUN89680', 'Gunawan Yap', 'Pengunjung Umum', '628128888968', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(790, 'JIM73260', 'Jimmy', 'Pengunjung Umum', '628111777326', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(791, 'VER41770', 'Vergin', 'Pengunjung Umum', '62811844177', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(792, 'CEL10460', 'Celina Gresiana', 'Pengunjung Umum', '6281319031046', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(793, 'MEL61510', 'Melody', 'Pengunjung Umum', '628129626151', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(794, 'PAU54100', 'Paul', 'Pengunjung Umum', '6287808555410', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(795, 'JAM14680', 'James Preston Kurniawan', 'Pengunjung Umum', '6281388881468', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(796, 'DEV33000', 'Devi Ligo', 'Pengunjung Umum', '62817163300', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(797, 'DER33000', 'Derren', 'Pengunjung Umum', '62817163300', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(798, 'DRE33000', 'Dreysen', 'Pengunjung Umum', '62817163300', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(799, 'ENJ66760', 'Enjelita', 'Pengunjung Umum', '628159976676', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(800, 'RIN31752', 'Rinto', 'Pengunjung Umum', '628111343175', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(801, 'WUL23570', 'Wulandari', 'Pengunjung Umum', '6281802352357', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(802, 'JOS54030', 'Josephine Abigail', 'Pengunjung Umum', '6281286545403', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(803, 'FEL19980', 'Felicia Hanna', 'Pengunjung Umum', '6287822321998', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(804, 'JER87970', 'Jeremia kevin', 'Pengunjung Umum', '6281932028797', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(805, 'BIA50650', 'Bianca Marchia Yap', 'Pengunjung Umum', '6281908195065', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(806, 'UUN55580', 'Uun Sugianto', 'Pengunjung Umum', '62818695558', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(807, 'KRI28530', 'Kristin Nur Hayati', 'Pengunjung Umum', '6281555612853', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(808, 'JOS33880', 'Jose Fernando Mackenzie', 'Pengunjung Umum', '6285391733388', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(809, 'KIA77380', 'Kiana William Ng ', 'Pengunjung Umum', '6281280007738', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(810, 'EUG27820', 'Eugenie Lee ', 'Pengunjung Umum', '6285711792782', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(811, 'AME75500', 'Amelia Fransiska', 'Pengunjung Umum', '628151617550', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(812, 'WIT96010', 'Witarsa Nagasari', 'Pengunjung Umum', '628161429601', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(813, 'LYO28290', 'Lyonita Tan', 'Pengunjung Umum', '62817312829', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(814, 'AND13190', 'Andreas', 'Pengunjung Umum', '6281355731319', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(815, 'CHL2', 'Chloe & fumiko & charlton (1)', 'Pengunjung Umum', '000', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(816, 'FRA08580', 'Frankie Arief Wibowo', 'Pengunjung Umum', '628161990858', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(817, 'GRA77380', 'Grace Agustina ', 'Pengunjung Umum', '6281280007738', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(818, 'KEN77380', 'Kent William ', 'Pengunjung Umum', '6281280007738', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(819, 'RIO59900', 'Rio Tandoko', 'Pengunjung Umum', '6285780895990', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(820, 'GRA61260', 'Grand Moze El Gibbor Aoetpah', 'Pengunjung Umum', '6285717596126', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(821, 'CHR73010', 'Christopher Aleph Alexanderlie', 'Pengunjung Umum', '6285711807301', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(822, 'SAN21030', 'Sansan', 'Pengunjung Umum', '6285765562103', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(823, 'RIC21030', 'Ricky', 'Pengunjung Umum', '6285765562103', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(824, 'MIC21030', 'Michella', 'Pengunjung Umum', '6285765562103', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(825, 'JES58220', 'Jesselyn Andrea Santoso', 'Pengunjung Umum', '6287875885822', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(826, 'GRE63600', 'Grecia Evelyn Lawalata', 'Pengunjung Umum', '6281316566360', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(827, 'CAL76612', 'callysta ramadhani setiawan ', 'Pengunjung Umum', '6281310457661', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(828, 'XIX20000', 'Xixi Ruth Sufianto', 'Pengunjung Umum', '628119482000', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(829, 'CAR82620', 'Caroline Setiawan', 'Pengunjung Umum', '6281315178262', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(830, 'JAS90770', 'jasmine arthalia tan', 'Pengunjung Umum', '6281218889077', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(831, 'JER63300', 'Jeremy Nathanael Gunawan', 'Pengunjung Umum', '6287782046330', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(832, 'NAN00180', 'Nansy', 'Pengunjung Umum', '6287780900018', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(833, 'ALE19282', 'alexandra joanna olivia (papa)', 'Pengunjung Umum', '6281289511928', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(834, 'SER67890', 'Seraphina Freya Roseno', 'Pengunjung Umum', '6281586336789', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(835, 'TON82980', 'Toni karmawan ', 'Pengunjung Umum', '62811178298', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(836, 'JOV24010', 'Jovita aurelia marpaung', 'Pengunjung Umum', '628119742401', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(837, 'LIE55370', 'Lie Benedict Yahliel', 'Pengunjung Umum', '6287796135537', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(838, 'ABI57580', 'Abigail Christabel Pangemanan', 'Pengunjung Umum', '6285282405758', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(839, 'MAN40000', 'Mandy Theab', 'Pengunjung Umum', '62811814000', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(840, 'DAR1', 'Darwin Susanto', 'Pengunjung Umum', '000', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(841, 'DAR2', 'Darson', 'Pengunjung Umum', '000', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(842, 'PHI12360', 'Phinsen Renaldo', 'Pengunjung Umum', '6289615261236', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(843, 'SAP67700', 'Sapto Santoso', 'Pengunjung Umum', '62818886770', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(844, 'VAN33580', 'Vania Priskila', 'Pengunjung Umum', '6285215003358', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(845, 'HAD31730', 'Hadijah', 'Pengunjung Umum', '6281211093173', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(846, 'GRA30450', 'Grant', 'Pengunjung Umum', '6281283273045', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(847, 'NAO35890', 'Naomi merci marsaulina simanjuntak', 'Pengunjung Umum', '6287884943589', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(848, 'SAN0', 'Santoso SS', 'Pengunjung Umum', '', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(849, 'MER97950', 'mery widjaja', 'Pengunjung Umum', '628111909795', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(850, 'JON29420', 'jonny harianto ', 'Pengunjung Umum', '628121322942', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(851, 'FIO62260', 'Fiona Hansel', 'Pengunjung Umum', '6285158936226', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(852, 'FEL62260', 'Felicia Hansel', 'Pengunjung Umum', '6285158956226', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(853, 'CHL3', 'Chloe & fumiko & charlton (2)', 'Pengunjung Umum', '', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(854, 'CHL4', 'Chloe & fumiko & charlton (3)', 'Pengunjung Umum', '', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(855, 'ANT1', 'Anton , Pauline , Sean (2)', 'Pengunjung Umum', '', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(856, 'ANT2', 'Anton , Pauline , Sean (3)', 'Pengunjung Umum', '', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(857, 'JOA97950', 'Joachim ', 'Pengunjung Umum', '6285173059795', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(858, 'GER28910', 'Geraldi', 'Pengunjung Umum', '6281295492891', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(859, 'JOA67470', 'Joanne', 'Pengunjung Umum', '6285211526747', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(860, 'GAB08790', 'gabriela', 'Pengunjung Umum', '6285811850879', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(861, 'SAM44400', 'Samuel Baulu', 'Pengunjung Umum', '6281296824440', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(862, 'GAB61820', 'gabriel ian noni', 'Pengunjung Umum', '6282191596182', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(863, 'EST54420', 'Ester', 'Pengunjung Umum', '6287827935442', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(864, 'SAT34700', 'Satya', 'Pengunjung Umum', '6287872003470', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16'),
(865, 'MIK83030', 'Mikaella', 'Pengunjung Umum', '628561488303', NULL, 'Belum Checkin', NULL, NULL, '2026-02-27 01:54:16', '2026-02-27 01:54:16');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('74KTzd1WlccOaiY36CHQ2zo5lof4plgaeBiL3koO', NULL, '2001:448a:2042:550e:feff:9741:1dcc:4197', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM3FkeUZWYWMwSjI1R0xsR3dOeThiYmhNdk5OU3J3aDZlQ04xTklTWiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTI6Imh0dHBzOi8vcmVnaXMtZm0uYWx0cnVzaWdodHMtdGVhbS5jb20vdGFibGUtcGVub250b24iO3M6NToicm91dGUiO3M6MTQ6InBlbm9udG9uLnRhYmxlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1772182253),
('FbSngFfu0FilidVDQMOlafNahOepIhxyeh0VuyaP', NULL, '54.212.224.142', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.7632.116 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRTI0dDZyOWsxdFMxS21Ha0pOQ3lnOG5XWGxudEdZUzZoQVFpZk4xaSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vd3d3LnJlZ2lzLWZtLmFsdHJ1c2lnaHRzLXRlYW0uY29tIjtzOjU6InJvdXRlIjtzOjE0OiJwZW5vbnRvbi5pbmRleCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1772182557),
('ilPlIKiA1MmiNNrOBQtvwSpdbM95SYI2MUov7qMg', NULL, '54.212.224.142', 'Mozilla/5.0 (Linux; Android 8.0.0; SM-G965U Build/R16NW) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.7632.116 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMEN6MGV0WUV0bGNHVElBM1phRlh1cE96ektkWHJ0MGdBTGx2NzNHNyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vd3d3LnJlZ2lzLWZtLmFsdHJ1c2lnaHRzLXRlYW0uY29tIjtzOjU6InJvdXRlIjtzOjE0OiJwZW5vbnRvbi5pbmRleCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1772182562),
('jZWThyZ8HthN5XtRzZkJHcqrvGgeMGkfxPSDfGhW', NULL, '45.8.25.31', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0lmZDY5V0dzcFBsZTVqcXhTc3FZY2R0bEQ5eXhqR200dldRQVpxRCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vcmVnaXMtZm0uYWx0cnVzaWdodHMtdGVhbS5jb20iO3M6NToicm91dGUiO3M6MTQ6InBlbm9udG9uLmluZGV4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1772182514),
('PSfqdmBKL38YjTfQJmLg8QVdbQAhT7o1mMO5g4or', NULL, '36.77.234.225', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZWx6YVRIdTVCM1libUVsTkNyQWIydWZBc0E5djE2ZVBjdkNwcDNRcSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vcmVnaXMtZm0uYWx0cnVzaWdodHMtdGVhbS5jb20iO3M6NToicm91dGUiO3M6MTQ6InBlbm9udG9uLmluZGV4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1772182421),
('ZFAiOxmMG7POtpZbhwuXjsKsdKkMAtePXLAvM01q', NULL, '2001:448a:2042:550e:3c6f:3660:e4ac:f3aa', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU1dsYmdUTTBaMkh2TGFGYmdTRFdqZVdPaDVZUDRZQTd6aUI0ekZsaCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTM6Imh0dHBzOi8vcmVnaXMtZm0uYWx0cnVzaWdodHMtdGVhbS5jb20vaW1wb3J0LXBlbm9udG9uIjtzOjU6InJvdXRlIjtzOjE1OiJwZW5vbnRvbi5pbXBvcnQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1772182456);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `penonton`
--
ALTER TABLE `penonton`
  ADD PRIMARY KEY (`id_pk_penonton`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `penonton`
--
ALTER TABLE `penonton`
  MODIFY `id_pk_penonton` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=866;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

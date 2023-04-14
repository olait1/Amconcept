-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 14, 2022 at 04:30 PM
-- Server version: 5.7.34-log
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amconcept`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `eMail` varchar(100) NOT NULL,
  `passWord` varchar(100) NOT NULL,
  `last_log_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `eMail`, `passWord`, `last_log_date`) VALUES
(1, 'Akanni Samuel', 'aksamtech@gmail.com', 'Samuel1243', '2021-04-08 10:51:25');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_id` bigint(20) NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `booking_reference` bigint(11) NOT NULL,
  `status` enum('Pending','In Progress','Completed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `discount` int(225) NOT NULL,
  `amount_paid` int(225) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `customer_name`, `phone`, `referer`, `service_id`, `category`, `description`, `booking_reference`, `status`, `discount`, `amount_paid`, `created_at`, `updated_at`) VALUES
(2, 'Pastor Okediji Julius', '07038590702', '', 1, '1', 'Engagement, Church and Reception plus Wedding Teaser (6)', 8584112, 'Completed', 5, 2850, '2021-08-10 09:45:38', '2021-08-10 09:45:38'),
(3, 'Olawale Irin-ajo', '08064036777', 'Olawale Irin-ajo', 2, '7', 'Partnership discount for Music  Album titled JABURATA', 9531726, 'Completed', 40, 21000, '2021-09-17 17:25:02', '2021-09-17 17:25:02'),
(4, 'Agunbiade Grace', '07038590702', 'Johnny', 3, '25', 'Joining of footages and subtitles', 8876794, 'Completed', 0, 5000, '2021-10-03 10:25:30', '2021-10-03 10:25:30'),
(5, 'Dr Ogunlaja', '08052273290', 'self', 6, '26', '40mins full Video and\n10mins teaser (short video)', 8533766, 'Completed', 0, 40000, '2021-10-07 06:57:18', '2021-10-07 06:57:18'),
(6, 'Dorcas', '08064036777', 'Olawale Irinajo', 2, '3', 'Birthday shout out to Helen Oluwajomiloju Adedeji 10th Oct', 4623337, 'Completed', 20, 2000, '2021-10-07 15:31:41', '2021-10-07 15:31:41'),
(7, 'Olawale Irin-ajo', '08064036777', '', 3, '8', 'Birthday Skit for Oct 25', 9567484, 'Completed', 0, 1500, '2021-10-22 17:24:07', '2021-10-22 17:24:07'),
(8, 'Olawale Irinajo', '08064036777', '', 2, '3', 'Music for Imuse', 6052243, 'Completed', 0, 3000, '2021-11-17 16:21:41', '2021-11-17 16:21:41'),
(9, 'Josmart', '09033766751', '', 3, '28', 'What is Love Episode 1', 3135228, 'Completed', 20, 2000, '2021-12-02 09:20:04', '2021-12-02 09:20:04'),
(10, 'Josmart', '09033766751', '', 3, '13', 'EKUN ONI FILM EDITING INCLUDING(25000) SUBTITLED IN ENGLISH AND TEASER (5000)', 5900327, 'Completed', 0, 30000, '2021-12-02 09:28:35', '2021-12-02 09:28:35'),
(11, 'Josmart', '09033766751', '', 3, '28', 'What\'s love Episode 2', 6564043, 'Completed', 20, 2000, '2021-12-09 18:44:28', '2021-12-09 18:44:28'),
(12, 'Josmart', '09033766751', '', 3, '28', 'What is love episode 3', 9194018, 'Completed', 20, 2000, '2021-12-14 20:49:35', '2021-12-14 20:49:35'),
(13, 'Josmart', '09033766751', '', 3, '28', 'What\'s love Episode 4', 7818961, 'Completed', 20, 2000, '2021-12-23 16:16:42', '2021-12-23 16:16:42'),
(14, 'Olawale Irin-ajo', '08064036777', '', 1, '1', 'Event Boxing', 2442323, 'Completed', 33, 2010, '2021-12-31 23:49:39', '2021-12-31 23:49:39'),
(15, 'Dr Oladeji', '08060300520', '', 4, '16', '5 Year anniversary of Mainspring hospital', 7084516, 'Completed', 0, 18500, '2022-01-10 19:32:52', '2022-01-10 19:32:52'),
(16, 'Pastor Julius', '07038590702', '', 1, '29', 'Linear Editing with Teaser for 3 weddings ceremony for Pastors Seun, Pastor Taiwo, Pastor Joseph', 8207387, 'Completed', 30, 10500, '2022-01-11 08:25:21', '2022-01-11 08:25:21'),
(18, 'Olawale Irinajo', '08064036777', '', 1, '1', 'Burial Pastor David Adekunle Akinkunmi', 8328657, 'Completed', 34, 1980, '2022-01-29 13:34:11', '2022-01-29 13:34:11'),
(19, 'Olawale Irinajo', '08064036777', '', 2, '3', 'Birthday Skit for the Husband of Dorcas Oyelekan\nCourtesy: Dorcas Oyelekan', 3222940, 'Completed', 20, 2000, '2022-02-03 16:08:47', '2022-02-03 16:08:47'),
(20, 'Adepoju Timothy', '08136460065', 'Olawale Irin-ajo', 3, '13', 'Eje Orisa \r\nFilm produced by Ayo Igbala Baptist Church', 6122736, 'In Progress', 28, 18000, '2022-02-13 08:53:45', '2022-02-13 08:53:45'),
(21, 'Olawale Irinajo', '08064036777', '', 3, '12', 'Editing Spanner (Wale-Irinajo Film)', 9469189, 'In Progress', 20, 10000, '2022-02-23 16:08:48', '2022-02-23 16:08:48'),
(22, 'Ojeleye Canada', '15875734935', 'Dr Ogunlaja', 6, '23', 'Birthday tribute to Folasade Ojeleye for her 40th birthday', 9534967, 'Completed', 0, 5000, '2022-02-23 16:16:59', '2022-02-23 16:16:59'),
(23, 'Olawale Irinajo', '08064036777', 'Olawale Irinajo', 2, '4', 'Wumi Ibikunle Single', 4297094, 'Completed', 20, 4000, '2022-04-01 16:18:58', '2022-04-01 16:18:58'),
(24, 'Pastor Julius', '07038590702', '', 1, '1', 'Wedding Anniversary for Baba and Mama Adeoye\'s', 2699759, 'Completed', 17, 2490, '2022-04-27 14:33:17', '2022-04-27 14:33:17'),
(25, 'Olawale Irinajo', '08064036777', '', 2, '4', 'Birthday Music Video for Mrs Folashade Aremu', 2146298, 'Completed', 40, 3000, '2022-04-28 14:51:06', '2022-04-28 14:51:06'),
(26, 'Waheed Titilola', '08030968471', 'Akuko', 3, '25', 'Subtitling the whole film titled ASSIGNMENT', 4549449, 'Completed', 20, 4000, '2022-05-04 15:59:41', '2022-05-04 15:59:41'),
(27, 'Olawale Irinajo', '08064036777', '', 2, '3', 'Birthday For May 28', 6488582, 'Completed', 20, 2000, '2022-05-18 16:59:33', '2022-05-18 16:59:33'),
(28, 'Wale Irinajo', '08064036777', 'Olawale Irin-ajo', 2, '32', 'For Sarah Afolabi Music from Minna', 5028011, 'In Progress', 0, 20000, '2022-05-22 08:01:15', '2022-05-22 08:01:15'),
(29, 'Mr Olayinka', '08064036777', '', 2, '32', '5 tracks', 7094828, 'Pending', 10, 18000, '2022-06-14 18:02:57', '2022-06-14 18:02:57'),
(30, 'Olawale Irin-ajo', '08064036777', '', 2, '3', 'June Celebrant', 3413642, 'Completed', 0, 2500, '2022-06-14 18:10:30', '2022-06-14 18:10:30'),
(31, 'Evang. Olumide Popoola', '09074442286', '', 3, '13', 'Editing of Majemu Isodahoro produced by Higher Ground Ministry', 8336081, 'In Progress', 20, 20000, '2022-06-29 07:47:00', '2022-06-29 07:47:00'),
(32, 'Pastor Julius', '07038590702', '', 1, '31', 'Wedding - Engagement, Church, Reception and Teaser for Pastor Temitayo', 2566044, 'Completed', 20, 4000, '2022-06-29 11:04:50', '2022-06-29 11:04:50'),
(33, 'Jo Gun Omi', '08067704190', '', 2, '32', '4 tracks Album', 5868460, 'Completed', 25, 15000, '2022-07-12 09:02:47', '2022-07-12 09:02:47'),
(34, 'Olawale Irin-ajo', '08064036777', '', 2, '4', 'Kidding two tracks song', 4606191, 'Completed', 20, 4000, '2022-07-15 21:48:31', '2022-07-15 21:48:31'),
(35, 'Olawale Irinajo', '08064036777', '', 3, '8', 'Possessing the Land', 9868701, 'In Progress', 0, 1500, '2022-08-16 15:46:41', '2022-08-16 15:46:41'),
(36, 'Olawale Irin-ajo', '08064036777', 'Olawale Irin-ajo', 3, '13', 'Agbara re', 9452780, 'In Progress', 20, 20000, '2022-09-08 19:34:04', '2022-09-08 19:34:04'),
(37, 'Olawale Irin-ajo', '08064036777', '', 2, '6', 'Music for Bisi Ojo, 5 tracks', 8330922, 'In Progress', 0, 15000, '2022-09-24 10:27:03', '2022-09-24 10:27:03'),
(38, 'Pastor Okediji Julius', '09033766751', '', 1, '1', 'Event', 3358408, 'In Progress', 0, 3000, '2022-10-18 17:05:36', '2022-10-18 17:05:36');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_id` bigint(20) NOT NULL,
  `fixed_amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `service_id`, `fixed_amount`, `created_at`, `updated_at`) VALUES
(1, 'Linear Editing (without teaser)', 1, '3000.00', '2021-08-01 16:12:44', '2021-08-01 16:12:44'),
(2, 'Non Linear Editing (with teaser)', 1, '7000.00', '2021-08-01 18:58:49', '2021-08-01 18:58:49'),
(3, 'Editing Single Track <3minutes', 2, '2500.00', '2021-08-01 19:29:26', '2021-08-01 19:29:26'),
(4, 'Editing Single Track within 4 to 5minutes', 2, '5000.00', '2021-08-01 19:33:26', '2021-08-01 19:33:26'),
(5, 'Editing Single Track Within 6 To 10minutes', 2, '7500.00', '2021-08-01 19:38:45', '2021-08-01 19:38:45'),
(6, 'Editing Single Track <25minutes', 2, '15000.00', '2021-08-01 19:42:57', '2021-08-01 19:42:57'),
(7, 'Editing Album Within 45 To 50 miutes', 2, '40000.00', '2021-08-01 19:46:26', '2021-08-01 19:46:26'),
(8, 'Average 3mins SKIT', 3, '1500.00', '2021-08-01 19:46:27', '2021-08-01 19:46:27'),
(9, 'Average 10mins SKIT', 3, '4200.00', '2021-08-03 11:10:11', '2021-08-03 11:10:11'),
(10, 'Average 20mins Playlet', 3, '8400.00', '2021-08-03 11:10:11', '2021-08-03 11:10:11'),
(11, 'Average 25mins Playlet', 3, '10400.00', '2021-08-03 12:11:07', '2021-08-03 12:11:07'),
(12, 'Average 30mins Playlet', 3, '12500.00', '2021-08-03 12:14:03', '2021-08-03 12:14:03'),
(13, 'Average 60mins Film', 3, '25000.00', '2021-08-03 12:16:52', '2021-08-03 12:16:52'),
(14, 'Average 80mins Film', 3, '35000.00', '2021-08-03 12:25:38', '2021-08-03 12:25:38'),
(15, '3hrs Ordinary Recording plus Editing', 4, '10000.00', '2021-08-03 12:30:28', '2021-08-03 12:30:28'),
(16, '3hrs Pro Event Recording plus Editing', 4, '18500.00', '2021-08-03 12:39:25', '2021-08-03 12:39:25'),
(17, 'Music Shooting with Sony 4K FDR AX33 Per Day', 5, '8000.00', '2021-08-03 12:39:25', '2021-08-03 12:39:25'),
(18, 'Film Shooting with Sony 4K FDR AX33 Per Day', 5, '8000.00', '2021-08-03 12:47:55', '2021-08-03 12:47:55'),
(19, 'Editing CV Video', 6, '1500.00', '2021-08-03 12:53:10', '2021-08-03 12:53:10'),
(20, 'Editing 2 To 5 Minutes Trailer', 6, '2500.00', '2021-08-03 12:54:51', '2021-08-03 12:54:51'),
(21, 'Business Video', 6, '12000.00', '2021-08-03 13:00:09', '2021-08-03 13:00:09'),
(22, 'Editing Photo Slide', 6, '2000.00', '2021-08-18 14:46:11', '2021-08-18 14:46:11'),
(23, 'Editing Ads', 6, '5000.00', '2021-08-18 14:46:11', '2021-08-18 14:46:11'),
(24, 'Director Of Photography (DP)', 5, '3000.00', '2021-08-18 14:49:53', '2021-08-18 14:49:53'),
(25, 'Subtitles', 3, '5000.00', '2021-10-03 09:58:26', '2021-10-03 09:58:26'),
(26, 'Tribute Video', 6, '35000.00', '2021-10-07 06:40:11', '2021-10-07 06:40:11'),
(27, 'Editing Album <45 minutes', 2, '25000.00', '2021-11-23 08:52:59', '2021-11-23 08:52:59'),
(28, 'Average 5mins SKIT', 3, '2500.00', '2021-12-02 09:10:57', '2021-12-02 09:10:57'),
(29, 'A week Linear Editing (with Teaser)', 1, '15000.00', '2022-01-07 15:57:14', '2022-01-07 15:57:14'),
(30, 'Non Linear Editing (without Teaser)', 1, '5500.00', '2022-01-07 15:58:29', '2022-01-07 15:58:29'),
(31, 'Linear Editing (with Teaser)', 1, '5000.00', '2022-01-11 09:49:24', '2022-01-11 09:49:24'),
(32, 'Music Album Less Than 35mins', 2, '20000.00', '2022-05-22 07:54:08', '2022-05-22 07:54:08');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `eMail` varchar(100) NOT NULL,
  `passWord` varchar(100) NOT NULL,
  `last_log_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `name`, `eMail`, `passWord`, `last_log_date`) VALUES
(1, 'Akanni Samuel', 'aksamtech@gmail.com', 'Samuel1243', '2021-04-08 10:52:19'),
(3, 'Akanni Oyedunsi', 'oyedunsi@gmail.com', 'Samuel1243', '2021-04-08 10:52:58');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` bigint(20) NOT NULL,
  `amount_paid` decimal(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `booking_id`, `amount_paid`, `created_at`, `updated_at`) VALUES
(1, 4, '1000.00', '2021-10-04 15:18:38', '2021-10-04 15:18:38'),
(2, 5, '5000.00', '2021-11-09 19:51:35', '2021-11-09 19:51:35');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_07_24_062430_create_services_table', 1),
(5, '2021_07_24_062532_create_bookings_table', 1),
(6, '2021_07_24_063841_create_payments_table', 1),
(7, '2021_07_28_182059_create_expenses_table', 2),
(8, '2021_07_30_155338_create_categories_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` bigint(20) NOT NULL,
  `amount_paid` decimal(8,2) NOT NULL DEFAULT '0.00',
  `total` decimal(11,0) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `booking_id`, `amount_paid`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, '2850.00', '2850', '2021-08-10 13:40:31', '2021-08-10 13:40:31'),
(2, 2, '2650.00', '2650', '2021-08-10 14:01:55', '2021-08-10 14:01:55'),
(3, 2, '200.00', '2850', '2021-09-15 16:41:22', '2021-09-15 16:41:22'),
(4, 3, '10000.00', '10000', '2021-09-23 13:38:20', '2021-09-23 13:38:20'),
(5, 4, '5000.00', '5000', '2021-10-04 15:17:47', '2021-10-04 15:17:47'),
(6, 5, '20000.00', '20000', '2021-10-07 06:58:21', '2021-10-07 06:58:21'),
(7, 6, '2000.00', '2000', '2021-10-07 16:05:06', '2021-10-07 16:05:06'),
(8, 7, '1500.00', '1500', '2021-10-22 17:32:48', '2021-10-22 17:32:48'),
(9, 5, '10000.00', '30000', '2021-10-26 07:27:26', '2021-10-26 07:27:26'),
(10, 3, '11000.00', '21000', '2021-11-08 19:24:44', '2021-11-08 19:24:44'),
(11, 5, '10000.00', '40000', '2021-11-09 19:50:12', '2021-11-09 19:50:12'),
(12, 9, '2000.00', '2000', '2021-12-02 14:36:27', '2021-12-02 14:36:27'),
(13, 10, '7000.00', '7000', '2021-12-03 14:10:44', '2021-12-03 14:10:44'),
(14, 8, '3000.00', '3000', '2021-12-03 19:08:03', '2021-12-03 19:08:03'),
(15, 11, '2000.00', '2000', '2021-12-09 19:34:07', '2021-12-09 19:34:07'),
(16, 10, '5000.00', '12000', '2021-12-10 12:37:28', '2021-12-10 12:37:28'),
(17, 12, '2000.00', '2000', '2021-12-14 20:51:19', '2021-12-14 20:51:19'),
(18, 14, '2010.00', '2010', '2021-12-31 23:51:13', '2021-12-31 23:51:13'),
(19, 10, '7900.00', '19900', '2022-01-16 17:56:27', '2022-01-16 17:56:27'),
(20, 18, '1980.00', '1980', '2022-01-29 13:35:05', '2022-01-29 13:35:05'),
(21, 16, '5000.00', '5000', '2022-02-05 06:14:23', '2022-02-05 06:14:23'),
(22, 19, '2000.00', '2000', '2022-02-05 11:05:53', '2022-02-05 11:05:53'),
(23, 10, '4500.00', '24400', '2022-02-10 18:48:13', '2022-02-10 18:48:13'),
(24, 20, '9000.00', '9000', '2022-02-13 08:58:00', '2022-02-13 08:58:00'),
(25, 16, '2000.00', '7000', '2022-02-14 07:06:25', '2022-02-14 07:06:25'),
(26, 21, '2000.00', '2000', '2022-02-23 16:15:23', '2022-02-23 16:15:23'),
(27, 21, '3000.00', '5000', '2022-02-24 04:37:53', '2022-02-24 04:37:53'),
(28, 22, '5000.00', '5000', '2022-02-24 18:38:18', '2022-02-24 18:38:18'),
(29, 10, '5600.00', '30000', '2022-03-04 11:09:32', '2022-03-04 11:09:32'),
(30, 21, '5000.00', '10000', '2022-03-21 13:58:40', '2022-03-21 13:58:40'),
(31, 16, '3500.00', '10500', '2022-03-22 08:22:44', '2022-03-22 08:22:44'),
(32, 23, '4000.00', '4000', '2022-04-01 16:22:00', '2022-04-01 16:22:00'),
(33, 24, '2490.00', '2490', '2022-04-27 15:27:04', '2022-04-27 15:27:04'),
(34, 25, '3000.00', '3000', '2022-04-28 14:53:24', '2022-04-28 14:53:24'),
(35, 26, '2000.00', '2000', '2022-05-05 16:57:45', '2022-05-05 16:57:45'),
(36, 27, '2000.00', '2000', '2022-05-18 16:59:56', '2022-05-18 16:59:56'),
(37, 28, '10000.00', '10000', '2022-05-22 08:05:29', '2022-05-22 08:05:29'),
(38, 30, '2500.00', '2500', '2022-06-14 18:11:18', '2022-06-14 18:11:18'),
(39, 26, '2000.00', '4000', '2022-06-27 15:15:15', '2022-06-27 15:15:15'),
(40, 32, '4000.00', '4000', '2022-06-29 12:44:37', '2022-06-29 12:44:37'),
(41, 33, '5000.00', '5000', '2022-07-12 09:03:47', '2022-07-12 09:03:47'),
(42, 34, '4000.00', '4000', '2022-07-15 21:50:31', '2022-07-15 21:50:31'),
(43, 33, '2000.00', '7000', '2022-07-18 13:55:50', '2022-07-18 13:55:50'),
(44, 33, '5000.00', '12000', '2022-07-25 13:25:20', '2022-07-25 13:25:20'),
(45, 33, '3000.00', '15000', '2022-08-09 15:01:44', '2022-08-09 15:01:44'),
(46, 15, '5000.00', '5000', '2022-08-12 04:27:11', '2022-08-12 04:27:11'),
(47, 28, '10000.00', '20000', '2022-08-12 14:19:37', '2022-08-12 14:19:37'),
(48, 35, '1500.00', '1500', '2022-08-16 15:47:14', '2022-08-16 15:47:14'),
(49, 31, '5000.00', '5000', '2022-08-27 07:43:56', '2022-08-27 07:43:56'),
(50, 36, '5000.00', '5000', '2022-09-08 19:35:04', '2022-09-08 19:35:04'),
(51, 29, '5000.00', '5000', '2022-09-12 07:22:04', '2022-09-12 07:22:04'),
(52, 37, '1500.00', '15000', '2022-09-24 10:30:30', '2022-09-24 10:30:30'),
(53, 36, '5000.00', '10000', '2022-10-07 06:55:54', '2022-10-07 06:55:54'),
(54, 38, '3000.00', '3000', '2022-10-18 17:05:59', '2022-10-18 17:05:59'),
(55, 20, '9000.00', '18000', '2022-10-27 13:43:01', '2022-10-27 13:43:01');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Pro Events Editing', 'Wedding/burial/birthday party/launching/concert less than 3hrs total clips', '2021-08-01 07:04:06', '2021-08-01 07:04:06'),
(2, 'Pro Music Editing', 'For all types of Music Generic', '2021-08-01 07:04:19', '2021-08-01 07:04:19'),
(3, 'Pro Films Editing', 'For all types of Films/Drama/Playlet/Skits ... charges 1min/420', '2021-08-01 07:09:16', '2021-08-01 07:09:16'),
(4, 'Event Recording and Documentary', 'Maximum of 3hours\nEquipment requirements camera, Mics, Tripod Stand, DOP Workmanship, Editing', '2021-08-01 07:39:15', '2021-08-01 07:39:15'),
(5, 'Cinematography', 'Shooting of Music, Films and other videos', '2021-08-01 08:03:47', '2021-08-01 08:03:47'),
(6, 'Documentary', 'Documentary videos based on storyline', '2021-08-01 08:11:30', '2021-08-01 08:11:30'),
(7, 'Web Development', 'Excluding the deployment', '2021-08-01 11:11:38', '2021-08-01 11:11:38'),
(8, 'Training', 'From Novice to Pro', '2021-08-01 11:11:38', '2021-08-01 11:11:38'),
(9, 'Consultative Jobs', 'Jobs done directly by other party excluding web development', '2021-08-01 11:11:38', '2021-08-01 11:11:38'),
(10, 'Rentages', 'Equipment Rental', '2021-08-01 11:11:38', '2021-08-01 11:11:38'),
(11, 'Web Development', 'Excluding the deployment', '2021-08-01 11:11:38', '2021-08-01 11:11:38'),
(12, 'Web Development', 'Excluding the deployment', '2021-08-01 11:11:38', '2021-08-01 11:11:38');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `teamId` int(11) NOT NULL,
  `surName` varchar(35) NOT NULL,
  `otherNames` varchar(50) NOT NULL,
  `phoneNo` varchar(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `biography` text NOT NULL,
  `jobTitle` varchar(30) NOT NULL,
  `facebook` varchar(255) NOT NULL DEFAULT '#',
  `twitter` varchar(255) DEFAULT '#',
  `linkedin` varchar(255) NOT NULL DEFAULT '#',
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`teamId`, `surName`, `otherNames`, `phoneNo`, `email`, `biography`, `jobTitle`, `facebook`, `twitter`, `linkedin`, `date_added`) VALUES
(1, 'Akanni', 'Samuel O', '08035551849', 'aksamtech@gmail.com', 'information about me will be updated later', 'DP / Editor', 'https://www.facebook.com/aksamtech', 'https://www.twitter.com/aksamtech', 'https://www.linkedin.com/in/aksamtech', '2018-09-20 00:00:00'),
(2, 'Odeyemi', 'Kolawole', '', '', '', 'DP/Editor Ass', '', '#', '#', '2018-09-20 00:00:00'),
(3, 'Magbagbeola', 'Olawale', '', '', '', 'Film Director', 'https://www.facebook.com/magbagbeolaolawale.oladeji1', 'https://www.twitter.com/olawale_magbagbeola', '#', '2018-09-20 00:00:00'),
(4, 'Joseph', 'Amos T', '', '', '', 'Web Programmer', 'https://www.facebook.com/amos.taiwo.927', '#', '#', '2018-09-20 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `cname` varchar(200) NOT NULL,
  `amount_received` varchar(200) NOT NULL,
  `amount_total` varchar(200) NOT NULL DEFAULT '0',
  `discount` varchar(200) NOT NULL DEFAULT '0',
  `ticket_id` varchar(100) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avata2.png',
  `gender` enum('Male','Female','') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_login` datetime DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `passport`, `gender`, `last_login`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Akanni Samuel', 'aksamtech@gmail.com', NULL, '$2y$10$mTgPp31ZUk9n5iiUoJlhxuWJnl0eAB1/ktUgCzmEV.5TfuKNk.Zfa', '08035551849', 'avata2.png', 'Male', '2021-08-01 06:19:08', 'DvEvDCAG0UDu3MQ6HBK6RNONOJHRF9YIb5lcy5fToHN6s7ipHnttLYEvdkvw', '2021-08-01 05:19:08', '2021-08-04 13:48:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_service_id_index` (`service_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_service_id_index` (`service_id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_booking_id_index` (`booking_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_booking_id_index` (`booking_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`teamId`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `teamId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

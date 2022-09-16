-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2022 at 06:47 PM
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
-- Database: `healthcare`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `client_id`, `doctor_id`, `date`, `time`, `description`) VALUES
(11, 5, 1, '2022-07-16', '3:00 PM', 'Headaches'),
(12, 5, 6, '2022-07-09', '5:00 PM', 'Stomach Aches'),
(13, 5, 7, '2022-07-13', '8:00 AM', 'Allergies'),
(15, 5, 10, '2022-07-26', '9:00 AM', 'Headaches'),
(16, 5, 4, '2022-07-04', '8:00 AM', 'Mononucleosis'),
(18, 6, 4, '2022-07-04', '8:00 AM', 'Allergies'),
(19, 6, 5, '2022-07-04', '8:00 AM', 'Stomach Aches'),
(20, 6, 1, '2022-07-16', '6:00 AM', 'Headaches'),
(21, 6, 8, '2022-07-30', '3:00 PM', 'Colds and Flu'),
(23, 5, 6, '2022-07-22', '6:00 AM', 'Headache'),
(25, 5, 2, '2022-07-06', '6:00 AM', 'Fever'),
(26, 6, 2, '2022-07-04', '8:00 AM', 'Fever'),
(27, 5, 10, '2022-08-27', '6:00 AM', 'Minor Problem');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_bg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `client_name`, `client_email`, `client_password`, `client_dob`, `client_gender`, `client_bg`, `client_phone`, `client_address`) VALUES
(5, 'Saif Fahad', 'fahad@gmail.com', '12345678', '1997-06-04', 'male', 'O+', '01936755437', '167, Agargaon'),
(6, 'Rafi', 'rafi@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2000-07-04', 'male', 'B+', '01836461137', '128, Mirpur'),
(7, 'Anik', 'anik578@gmail.com', '25d55ad283aa400af464c76d713c07ad', '1998-07-20', 'male', 'A+', '01836441137', '128, Dhanmondi'),
(8, 'Taosif', 'tao@gmail.com', '25d55ad283aa400af464c76d713c07ad', '1997-07-20', 'male', 'O+', '01836445437', '127, Jigatola'),
(9, 'Sabbir', 'sabbir@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2000-07-09', 'male', 'A+', '01836441137', '27, Kazipara'),
(10, 'Ahmed', 'ahmed@gmail.com', '25d55ad283aa400af464c76d713c07ad', '1990-07-04', 'male', 'A+', '01836445117', '45, Kazipara'),
(11, 'Nahid', 'nahid@gmail.com', '25d55ad283aa400af464c76d713c07ad', '1999-07-04', 'male', 'AB+', '01836461137', '78, Mirpur'),
(65, 'Anik Rahman', 'eoin.morgan693@gmail.com', '12345678', '01-03-2022', 'Male', 'A+', '01830233695', 'Dhaka, Mirpur'),
(78, 'Riadx', 'riadkowser@gmail.com', '12345678', '12-12-1990', 'Male', 'A+', '01832333212', 'Dhaka'),
(79, 'kowserria', 'kowserriad@gmail.com', '12345678', '12-12-1990', 'Male', 'A+', '01830233212', 'Dhaka'),
(81, 'Anik Rahman', 'anik.rahman191@gmail.com', '12345678', '12-12-1990', 'Male', 'A+', '01830233123', 'Dhaka, Mirpur');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_bg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_specialized` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `doctor_name`, `doctor_email`, `doctor_password`, `doctor_gender`, `doctor_bg`, `doctor_phone`, `doctor_specialized`) VALUES
(1, 'Dr. Kabir', 'kabir@gmail.com', '12345678', 'Male', 'A+', '017856444578', 'Medicine'),
(2, 'Dr. Jubayer', 'jubayer@gmail.com', '12345678', 'Male', 'A+', '01865644523', 'Dermatology'),
(3, 'Dr. Ahad', 'ahad@gmail.com', 'ahad123ahad', 'Male', 'A+', '019875655432', 'Neurology'),
(4, 'Dr. Sakib', 'sakib@yahoo.com', 'sakib@124522112', 'Male', 'AB+', '017625667362', 'Pediatrics'),
(5, 'Dr. Rohit', 'rohit12@gmail.com', '12334ro452323', 'Male', 'O+', '01982566321', 'Urology'),
(6, 'Dr. Nila', 'nil@gmail.com', '12323123341', 'Female', 'A+', '01872377123', 'Ophthalmology'),
(7, 'Dr. Minhaz', 'minhaz@gmail.com', '12342342124', 'Male', 'B+', '01986655231', 'Neurology'),
(8, 'Dr. Fahim', 'fahim@gmail.com', '019273121231', 'Male', 'AB+', '019875566426', 'Medicine'),
(9, 'Dr. Mahmud', 'mahmud@gmail.com', '123456723', 'Male', 'O+', '01982233123', 'Surgery'),
(10, 'Dr. Taosif', 'taosif@gmail.com', '123456789', 'Male', 'AB+', '01982233178', 'Medicine'),
(36, 'Dr. Karim', 'karim1@yahoo.com', '12345678', 'Male', 'A', '01832233223', 'Medicine');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_19_171944_create_doctors_table', 1),
(6, '2022_06_19_183926_create_clients_table', 1),
(7, '2022_06_24_042639_create_admins_table', 1),
(8, '2022_07_02_190659_create_appointments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `token` varchar(64) NOT NULL,
  `created_at` datetime NOT NULL,
  `expired_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `userid`, `token`, `created_at`, `expired_at`) VALUES
(1, 12, 'YRQsmOeBYhNnvQYTHC8wNIXTO10Quxjl3bUuLeZpzeCdLkUkXaaArul75A18zWae', '2022-08-05 18:38:59', NULL),
(2, 5, '4D0q4EuLFn8WLPaCkJucThJaTKBVPrPldnf8SKVtoQe6U3kj6sdmjU2Xp0iKwt3V', '2022-08-05 18:40:03', NULL),
(3, 5, 'j4D5tCqXpivBSuGYjOTFKOZHyHG7L7BQIsbUOJfVi6wJjQLi09IJzUzXbbztuu9z', '2022-08-05 18:41:33', '2022-08-06 00:51:08'),
(4, 5, 'M0mQElJpigGAUEZRxgPHWVQNHAhHvR5zqiQ1PU00bm024Kh7BkaWe8WDEfCSQOd7', '2022-08-05 18:51:41', '2022-08-06 00:52:13'),
(7, 5, 'kcj1NsnzVzgKvI8KVZGaUXAjY4lNIa0z8ypYdJgFRu0uynHXAyK1SEP1713Lwu5v', '2022-08-05 19:45:42', '2022-08-06 01:47:04'),
(8, 5, 'babwuPjpNuAdBphyblFyKl0kX1aUsQ9bzNvtBjNyWH8RdmaV0FAE6v60JAtHA1wt', '2022-08-05 19:47:39', '2022-08-06 01:48:52'),
(11, 5, '43Qjr0WgwQ9XSz2agYnvapv8TyfW23MsjFSwHgKDJxoF1BDSdhlfb7pellHuAKW7', '2022-08-05 20:03:47', '2022-08-06 02:04:20'),
(12, 5, 'U6iwgvWVPKIAlYdbhXEnc00BeAyhDcprYMnVEZJID2RS58WSKhUQkNJkdv8ZCOBK', '2022-08-05 20:07:39', '2022-08-06 02:09:24'),
(13, 5, 'L5sXuMQTCiRVclqrAXBMMLuZue4TgkXgUDR1GxVWHuWaS8nO3WZrYrpoDBzzdabn', '2022-08-05 20:23:24', '2022-08-06 02:23:49'),
(14, 5, 'oWo3Oh6eqcVB5IbhPaIlv2SiJ8vqr5jtSHr6E1hsysFXy4iu3QkcBLWXB0AfHDYK', '2022-08-06 04:49:42', NULL),
(15, 5, 'JUZA9DErfOQpCG9mgNKBe1WwCS3ygbQSc9wlO2dWMdR6NlQiRstj593KT3zpIHK4', '2022-08-06 04:56:12', NULL),
(16, 5, 'IHUMvVzCjaW3ymvprO5Dn8kbuS87YyNr0vxNC8MReP9pBUQ48ejLvHfDCZSG6daQ', '2022-08-06 04:58:02', NULL),
(17, 12, 'wpjVTwzXkBotyNRSjz2xnZHSw5JYnJkD3p2fG7nPqBZ70zny0rmiMDJJd1KhesB3', '2022-08-06 04:58:24', NULL),
(18, 12, 'uYoksdL6PF0iBt27Z3OOi8Sd7dxzrEXvw8GM3QPrnMaSo2MkDrMwY6hAyQUIy9co', '2022-08-06 06:08:57', '2022-08-06 14:55:39'),
(19, 5, 'LniMkMHcMBqe1HFBh57RywNlGosmscJGFNgHuDfdnf2IOYMDkO196O4xn99Y9xlG', '2022-08-06 08:57:41', '2022-08-06 14:58:09'),
(20, 5, 'VID649sWPBOeAc91aTAfbV8Stxk8yjOTvkSyfreV6Vk1fSLUfaP4JGB6IA1tyhjE', '2022-08-06 09:10:13', '2022-08-06 16:10:05'),
(21, 12, 'B95BNRGNGsjtcMv8Gys5iPfw2MZk5aPW6F5c6Q1ZmYoERGHf5j80SQFueguQ7g4c', '2022-08-06 12:44:45', NULL),
(22, 12, 'dcrVglTWOz9mqoLyEP4bxGPO0pVCODY5onVCbTaNhdDDZeaPIbfcybF7pOdiuRWB', '2022-08-06 12:46:03', '2022-08-06 18:46:18'),
(23, 20, 'oztBqEEjGuTOZu0bkYPtSdwmUBPQ4UXsKTmpO9gT7xEHDDU7kG41lPV6KU8xcWz3', '2022-08-06 15:19:50', '2022-08-06 21:20:19'),
(24, 59, 'SPQaIkODNPzj5rzUotsbVgGBP9AOHDZIxSoeeJAiEoyLaGKIfwW3SKGewau0yA0M', '2022-08-07 17:25:10', '2022-08-07 23:54:32'),
(25, 5, 'rbCTHs6uM2eNDNapteIXLoRytOCh6j9sJaBvXXVGXXHHor9yBHe1ayLGxnlhbcyM', '2022-08-07 17:58:17', '2022-08-08 00:32:34'),
(26, 5, 'jkJbjXzaBmy9vy0sME2f3JUfEjwCR08T6WLOFBWYOctinQzaWVYnGK8tvVnbq06b', '2022-08-07 19:44:46', '2022-08-08 01:45:16'),
(27, 66, 'rtugBT0mHpFdlP1f9Nayqg4qAcYjYKK0vAEFU8tAzGR4rhRiTlzmkrl69qrqJOjo', '2022-08-07 20:13:18', '2022-08-08 02:14:06'),
(28, 5, 'WjaP2tLKWNCrqokErLt7QjafOjSOGTxUYklQmSC1KAxin1KMEtDhPRb3kR9XTCEe', '2022-08-07 20:25:42', '2022-08-07 20:28:56'),
(29, 5, '1FZCPYniiiZFY8uIS8bhsR3QhFWGjkwJ6E0meM9nxOWznq3YtZxlopfbJ56QPdVq', '2022-08-07 20:29:18', '2022-08-07 20:29:30'),
(30, 66, 'NGayrv4fA1oORDyWJ5EnOKSYW7R5me4Q6Os6IRlxDB5GHgfuBV2H0MByHvSwTz2t', '2022-08-07 20:30:39', '2022-08-07 20:36:36'),
(31, 68, 'MO8c2ykXJmCiRfUPttni704MZITmNB0NeW8A0CoKRL5GTtkOos07S2NTBNA9ihrm', '2022-08-07 20:47:50', '2022-08-07 20:48:05'),
(32, 68, 'DrFoHbdxCv4YyGgkparrwJ4KeLVYWxmxS4BpxBAx2S92hbvIFxvzS7OGJkhTzL7R', '2022-08-07 20:49:05', NULL),
(33, 5, 'nHrfqxOeI7vT6jYicvOYMErI2SaLZZLI6hJEsVLD43GlDAazAb1SP0OsXwo9obDS', '2022-08-08 02:24:18', '2022-08-08 02:24:42'),
(34, 70, 'PfqYsVHLMrhc7WYUxgQz64Y5Vc0xN7z0x5DNQAj2F2AHbDyDpLPCM502mApYkspP', '2022-08-08 02:33:52', '2022-08-08 08:45:32'),
(35, 5, 'ksm3h0Vm62peSHNUkUQF9bFv1NHhwHagZsMn09vvIEBHRWTr4Bp8xyo2xWSmWLxL', '2022-08-08 02:56:23', '2022-08-08 02:56:32'),
(36, 5, '4Ab15yRBhhN93lAxNNJdQVGWmJRBmCk4kPTpWdUXCkz8scrloH6sAJ28sInigb7k', '2022-08-08 03:30:04', '2022-08-08 03:30:37'),
(37, 5, 'k8FSUtWhWalmn9SlXqmX3Z36dc0bKlCSyvUEgGPCTw0c5IjGg6tB6oNL5579SO5T', '2022-08-08 03:38:00', '2022-08-08 04:13:29'),
(38, 5, 'anzvKoWqAq4MUL46Ppi7wLREmCUKn3CJc3pNShxkLABNO6TCMZPqzd2AVE1EfyX9', '2022-08-08 04:14:13', NULL),
(39, 71, 'mVvKIKEpmKccAziTWcCeYwXTzWJQrDS5dMveLsxU89R07MJN4698INQL1emyDiSO', '2022-08-08 09:29:32', '2022-08-08 09:29:39'),
(40, 71, 'CAkmeaVR5aTWiUGmsg10ihtwODnPjrGOJ7s0vX65mxchwt5FvBKw3dZieYZY1SB3', '2022-08-08 09:29:53', '2022-08-08 09:30:07'),
(41, 72, 'VMaaSqpFhnZhTNR9SvR3APuRW7mfBrh9wiMtgNXgSUcWQCtBrFl33d7RkWOWAWxx', '2022-08-08 10:39:39', '2022-08-08 10:39:53'),
(42, 73, 'dvix9xSzMzAMJjqUgA2xLwlqj9PFojgYJoSOi7wUqsf1q5E4GDfdpsFXucRNuqjM', '2022-08-08 10:45:23', '2022-08-08 10:45:36'),
(43, 74, 'V0esf6lAniHOSXLXYjBFAHJ0mtN9JwGat0aOt3M3IAMVOoyUBXi2blhs4crAVSBB', '2022-08-08 13:02:50', '2022-08-08 13:03:11'),
(44, 75, 'iEykcXlMTNJN7z3xIvjLMtKAQ4GYUtv85oGNVU3jAYYN8864jptmDptYnm4HtEy6', '2022-08-08 13:19:38', '2022-08-08 13:20:06'),
(45, 5, 'Ryc4KPAKhaVTrKKTntMfdVV4IZFzNOrIiEx79vOYQ3XEvpl44myhABHnwa1XC37x', '2022-08-09 18:04:20', '2022-08-09 18:04:26'),
(46, 5, 'XppevveBlZ25JcozcnD2nsuTB5UXfwGIBNTnfhsmYvk7y7VQygMorJLwGjlAGHoT', '2022-08-09 18:19:34', NULL),
(47, 5, 'j28Rkhor1isYsMFuM9qJX4BjWNul476EwHXbNiXa2Ax1whynvKGBWdaBAxjD327Z', '2022-08-09 20:23:37', '2022-08-09 20:23:46'),
(48, 5, 'aMPRPUibow9XEL9hZUaYySDiyP6oLcy2VMZCdEp5G4GwCLOZb1e9mz8FwxGExvjv', '2022-08-09 20:27:57', '2022-08-09 20:40:17'),
(49, 76, 'z7vbNLlOABlamfF3rmQXYKIlKkl1L0qEVFtqxXw2bxPQ9segC8XmGEZZPGo0Xh7R', '2022-08-09 20:42:18', '2022-08-09 20:42:43'),
(50, 76, 'umdL6a5rFuhLzZTvyh7iVfF5j6g34VkwbDJ98Vf6rpGPlrkAqhOCTr3VMqpeVsiy', '2022-08-09 20:42:49', '2022-08-09 20:42:57'),
(51, 5, 'cPlgbxLmB6Tuwe7PcsxOFmVtjKn1ZsYK2Ykhk4YuVp7JhQWFGuzjxc9V1oJWhXo3', '2022-08-09 20:48:08', '2022-08-09 20:48:25'),
(52, 5, 'DpxjGmshEapx0inPwYGmqHcHo1HbGnQP39RFtCZkeNedOUcNatLCw2fLYvliA7W3', '2022-08-09 20:49:03', '2022-08-09 20:49:10'),
(53, 5, 'A7QVRv0kiHsuGlRYGn1MRls3vxJkqH1SOazZhkTDhrM3aj9E9idCAdo5FA8fySej', '2022-08-10 02:27:53', '2022-08-10 02:28:31'),
(54, 5, 'GHdOoOwlz8FbXHRsqhtQYxvln0TCu8935qnVDB7Xo8PvCVXoEbvlZdwgSTaxQuUi', '2022-08-10 02:39:49', '2022-08-10 02:40:18'),
(55, 78, 'Beip2MmIvKcz0g2BXXxA0oOkRbkAnA7t5tfSDknxRdh4UmsLmZvDtTX0zqaGgp07', '2022-08-10 02:45:22', NULL),
(56, 5, 'NPxRjJksCVBsjS8y53zt0Wo5jT6DA8TjSNCLPyjpwQEN1JFTPtd5zfLgLzYP6SvH', '2022-08-10 02:48:57', NULL),
(57, 5, '5NtzAJVUd5ugz27C43RpCeX3gAjEZ8lw79ujWZQkNF0uYN39TZrzJZC1kv6bAdNK', '2022-08-10 02:48:58', '2022-08-10 02:49:09'),
(58, 79, '4OlOyExmi0pQ6Ot5AzuwcjXDFJlckDwmQaD6Wcb8zHUfSKO5b2EAbXYSEFYp5Sex', '2022-08-10 02:52:12', '2022-08-10 02:54:44'),
(59, 80, 'fhJoNgkHGRtJ9sWwDxAZS95od2l3wSgKG1wSNKYqaiOOorMeJ8vIwwKhPny5cAep', '2022-08-10 02:56:08', '2022-08-10 02:58:10'),
(60, 80, 'MHRhtBEl48EUr62nfj50WmN9jKqU4ISCtleQkZZDI8HPcJ40TJLScks7h0cE4H9V', '2022-08-10 02:59:13', NULL),
(61, 80, 'dz9cJbHXR297MzS9tRV16hKYRKaWr6BIv3YNkGo2T7M8yZOe6UOpvHexIw3qZq0i', '2022-08-10 02:59:14', '2022-08-10 03:00:00'),
(62, 80, 'nEXIw5Znsuq1qTBPMSzfggaiTwhorULQJeW1adGF3M83tENYovDSG7CXBGQDt2Mv', '2022-08-10 03:03:24', '2022-08-10 03:03:30'),
(63, 5, 'mNjJKEt5bIVqBACzEa88NO0jiBBWuMXA09J8AFh6QMiEM2x38tvVdLk9djwr2Vfw', '2022-08-10 03:17:56', NULL),
(64, 5, 'f1ByDI0SXHV2vQno6ayZ3WzGFosDHD8kY2OlBRzoQJ2JBIGzURKT3kOG0lJGnMJK', '2022-08-10 03:17:56', '2022-08-10 03:18:25'),
(65, 5, 'MMnWXeCH4InEZoIFN7nSMRm48MxS7saQKuQ0DCEraGvtjsMLDr9bNi7UCRc9ujyX', '2022-08-17 19:01:30', NULL),
(66, 5, 'UUJrtLmuhPuNSBTwHy2wTgTpvr5G1D2cQxfM832df8yYD7EMtYQDthIOV3kMp49x', '2022-08-17 19:02:51', '2022-08-17 19:09:46'),
(67, 5, 'wotQ2kD75lyftonzNT8S8iHSsKBczZ96EbJ1LirqKZKb9wZwdKSyWRXS9MoJ7CWR', '2022-08-17 19:10:51', '2022-08-17 19:11:16'),
(68, 5, '2l8YIEdzWADgWbCynPnDWOabFSsK1LgXJhlpAlv2aHE5Xb9rASipd3aZFaVtEmM2', '2022-08-17 19:11:40', '2022-08-17 19:13:21'),
(69, 5, 'EWmKxjclrq37EyO1nwSktQeJfr4EozE06B2tsbMDeJSy0tR23qeW2zKT5O8inzij', '2022-08-17 19:20:58', '2022-08-17 19:21:10'),
(70, 5, 'F9q3D3p5aYBaEWqUJBYKQYYdFLQuOOT4ZSnl4yKBKTbqxQudRHCLcsz7GIehuBSZ', '2022-08-17 19:21:47', '2022-08-17 19:25:08'),
(71, 81, 'soW1pIhqdSLid4KDDeZTvGnJwkjunymCyCJtNfiGiei8hHWlq0GgQLxZgq6ILh80', '2022-08-17 19:28:23', '2022-08-17 19:35:00');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointments_client_id_foreign` (`client_id`),
  ADD KEY `appointments_doctor_id_foreign` (`doctor_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_client_email_unique` (`client_email`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `doctors_doctor_email_unique` (`doctor_email`);

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

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
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `appointments_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

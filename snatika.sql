-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2022 at 06:40 PM
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
-- Database: `snatika`
--

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `option_a` varchar(240) DEFAULT NULL,
  `option_b` varchar(240) DEFAULT NULL,
  `option_c` varchar(240) DEFAULT NULL,
  `option_d` varchar(240) DEFAULT NULL,
  `answer` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `answer`, `created_at`, `created_by`, `updated_at`) VALUES
(4, 'Which of these are the 5 generic software engineering framework activities?', 'communication, planning, modeling, construction, deployment', 'communication, risk management, measurement, production, reviewing', 'analysis, designing, programming, debugging, maintenance', 'analysis, planning, designing, programming, testing', 'A', '2022-12-11 15:44:32', 'admin', NULL),
(5, 'Command to create middleware in laravel application?', 'php artisan make:middleware Mymiddleware', 'php artisan middleware Mymiddleware', 'php artisan create:middleware Mymiddleware', 'php artisan middleware:make Mymiddleware', 'A', '2022-12-11 15:53:35', 'admin', NULL),
(6, 'What are the ways to get the data from database in laravel?', 'Query Builder', 'Eloquent ORM', 'Both A & B', 'None of these', 'C', '2022-12-11 15:54:30', 'admin', NULL),
(7, 'What will be the output of following code?\n<br><br>\nprint(len([\"hello\",21, 10, 19]))', '15', '3', '4', 'None of these', 'C', '2022-12-11 15:55:14', 'admin', NULL),
(8, 'Method to determine if the user is authenticated?', 'Auth::check()', 'Auth::user()', 'Auth::authenticated()', 'None of the these', 'A', '2022-12-11 15:56:04', 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `test_no` bigint(100) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `user_id`, `test_no`, `question_id`, `answer`, `created_at`) VALUES
(1, 11, 11221211052352, 4, 'A', '2022-12-11 17:23:52'),
(2, 11, 11221211052352, 5, NULL, '2022-12-11 17:23:52'),
(3, 11, 11221211052352, 6, NULL, '2022-12-11 17:23:52'),
(4, 11, 11221211052352, 7, NULL, '2022-12-11 17:23:52'),
(5, 11, 11221211052352, 8, NULL, '2022-12-11 17:23:52'),
(6, 11, 11221211052418, 4, 'A', '2022-12-11 17:24:18'),
(7, 11, 11221211052418, 5, NULL, '2022-12-11 17:24:19'),
(8, 11, 11221211052418, 6, NULL, '2022-12-11 17:24:19'),
(9, 11, 11221211052418, 7, NULL, '2022-12-11 17:24:19'),
(10, 11, 11221211052418, 8, NULL, '2022-12-11 17:24:19'),
(11, 11, 11221211053303, 4, 'C', '2022-12-11 17:33:03'),
(12, 11, 11221211053303, 5, 'C', '2022-12-11 17:33:04'),
(13, 11, 11221211053303, 6, 'C', '2022-12-11 17:33:04'),
(14, 11, 11221211053303, 7, 'B', '2022-12-11 17:33:04'),
(15, 11, 11221211053303, 8, 'D', '2022-12-11 17:33:04'),
(16, 11, 11221211053933, 4, NULL, '2022-12-11 17:39:33'),
(17, 11, 11221211053933, 5, 'C', '2022-12-11 17:39:33'),
(18, 11, 11221211053933, 6, 'B', '2022-12-11 17:39:33'),
(19, 11, 11221211053933, 7, 'C', '2022-12-11 17:39:33'),
(20, 11, 11221211053933, 8, 'A', '2022-12-11 17:39:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `contry_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `_token`, `name`, `email`, `email_verified_at`, `password`, `type`, `contry_code`, `phone`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'admin', 'admin@gmail.com', NULL, '$2y$10$8lJ1W30Xo2xBoUUIRkvbKuhhPXSZOIgr4Bs0/cWs7OplfD9MW7vOm', 'admin', NULL, NULL, NULL, '2022-12-11 02:01:37', '2022-12-11 02:01:37'),
(11, NULL, 'jhamlal sahu', 'jhamlal.sahu92@gmail.com', NULL, '$2y$10$9LFjqn6TNh6tc4Y12F3T/ukmb.s9BFvU.iWShznxaUvX3TRrtt4c2', 'user', '91', '8109831915', NULL, '2022-12-11 11:51:32', '2022-12-11 11:51:32');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

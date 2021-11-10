-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 10, 2021 at 09:09 PM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_molcolm`
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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(7, '2016_06_01_000004_create_oauth_clients_table', 1),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2021_11_10_143617_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('1d32f76074fe750606bc119f91fc34066be875b73a4ef70c7ff035fcad1adfffd0559fc2a65011b3', 10, 1, 'florida@rida.com.ngmolcolmflorida', '[]', 0, '2021-11-10 18:28:12', '2021-11-10 18:28:12', '2022-11-10 19:28:12'),
('34f40ed0a12b4e04e20c382790eba26005e80928b51fbbf469cedb9709f0e20579a26528061197a6', 3, 1, 'PassportExample@Section.io', '[]', 0, '2021-11-10 15:01:19', '2021-11-10 15:01:19', '2022-11-10 16:01:19'),
('666664905801e721907378a9f73c0325de99792c4bc57c2ddfae0e59bdef2e5aeca77c684d67d8c3', 12, 1, 'admin', '[]', 0, '2021-11-10 19:40:22', '2021-11-10 19:40:22', '2022-11-10 20:40:22'),
('6b5a14a6803ad3bb3dcbf2e86c3c1e23458b90d97794ef707e21e28e32554d17b123400574185b1e', 12, 1, 'admin', '[]', 0, '2021-11-10 19:53:56', '2021-11-10 19:53:56', '2022-11-10 20:53:56'),
('6e4a2edc5b9269c8109a10a9b94143eecd7635a3ad1cc331b3118c233f48b9d9fd5b78a02074c64c', 1, 1, 'MolcolmConcept.com', '[]', 0, '2021-11-10 14:53:32', '2021-11-10 14:53:32', '2022-11-10 15:53:32'),
('7ca0819ba045b5c1b92238e60308bd01445cbc54a395e6cd4455ecd630efeb402add2ab829e10c06', 2, 1, 'PassportExample@Section.io', '[]', 0, '2021-11-10 14:53:59', '2021-11-10 14:53:59', '2022-11-10 15:53:59'),
('885a5b37e6caa509cfc4f13bb52a57f9509740063a461040f6e0fa1869685cc912bd1154d40010bf', 5, 1, 'molcolm', '[]', 0, '2021-11-10 18:09:22', '2021-11-10 18:09:22', '2022-11-10 19:09:22'),
('99b28ca8664af81893482beebef826a8e3f7886a1623ae766386585413041b147ff4d946d3039f9c', 9, 1, 'perdir@mail.comewmolcolmperdir213', '[]', 0, '2021-11-10 18:20:03', '2021-11-10 18:20:03', '2022-11-10 19:20:03'),
('9db69c47d5ea74a9e616469c3ada28955ca8852561082847ca752cac95f932c838ed2f8740b6feac', 6, 1, 'molcolm', '[]', 0, '2021-11-10 18:13:21', '2021-11-10 18:13:21', '2022-11-10 19:13:21'),
('a576410244bfd9d3fc4cb4049a1da543660a94f27ea37fdf2aec05d56874dc7805be3bf30e5c1fe0', 7, 1, 'molcolmbarrackjunior@obama.com', '[]', 0, '2021-11-10 18:14:22', '2021-11-10 18:14:22', '2022-11-10 19:14:22'),
('af8015f2b045505608db7307fe1b1b7d23da422ce32242dd8283876b705edc412ac4fdf11e3a2ba9', 8, 1, 'molcolmperdir@mail.com', '[]', 0, '2021-11-10 18:18:19', '2021-11-10 18:18:19', '2022-11-10 19:18:19'),
('be24c4451347ff27062284e91832eec230e221c2aa75b4a2cc3d85b6e07551b944b746244c8960e1', 11, 1, 'generator@gen.ngmolcolmgenertator', '[]', 0, '2021-11-10 19:37:29', '2021-11-10 19:37:29', '2022-11-10 20:37:29'),
('e338caa6b1b222c135ffeeebce754aea5c76f7e0d944469d99ee545078963f67e3a60ce0b58d9b29', 4, 1, 'molcolm', '[]', 0, '2021-11-10 18:02:53', '2021-11-10 18:02:53', '2022-11-10 19:02:53');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'GOAOccTWkp5Bb10W24CDB0zfbB6IqwDcQzhSmIfZ', NULL, 'http://localhost', 1, 0, 0, '2021-11-10 14:11:05', '2021-11-10 14:11:05'),
(2, NULL, 'Laravel Password Grant Client', 'PGENWMUvxV3wu1pjIF5zkLRnKqYORO6eZUgGwt4f', 'users', 'http://localhost', 0, 1, 0, '2021-11-10 14:11:05', '2021-11-10 14:11:05'),
(3, 1, 'client', 'vlVcofNWMq9UiMg1gz4g0C0z8cZUPK8ejVRAwYw5', NULL, 'y', 0, 0, 0, '2021-11-10 19:52:09', '2021-11-10 19:52:09');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-11-10 14:11:05', '2021-11-10 14:11:05');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0OuCQqUlrnG1KotAZGeaWoy6srRh3TbBeAMfSOTH', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiclR0aWNXczNRNmx4QzBCVzZUNFJGbE9ob2VPV1FlSDJ6ZnRMUjBkQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1636558829),
('6dUoieqXr3G1ESHElTe58rGnM8tQycgqduQZzANG', NULL, '127.0.0.1', 'PostmanRuntime/7.28.4', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWTh5WnVCS0FSNE1vUHZPZWFBdmQ5cXdDWG1oTmhKYldMYTU1d0NTTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1636571234),
('Ba7gl367NzPexGVr2ElDxSQ9CfPDFC6lC8onJ9sk', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSTQyTVZ4WWtzMVBpTG96RmtOTDFRaFpCSzJBdTVMNzU1YjVod3RkbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9yZWdpc3RlciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1636559628),
('d2JiSkahREgqCb9kFAjAd1wX26G8wAYcTLorTA78', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUFF6ajRuVjBsVmxZeERicHpVaFJFSW9RM3RzTFJvOUJUVlRFTTU5ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9yZWdpc3RlciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1636560010),
('qMIsn2vbIC0mBOROUFop1TeXfBQxOk3yg3Bv6Qv8', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT1E3WHpKcXZwUGIwQkJKWkRtQkVuaTdvb0JldEVKbGdpazF4WlB2bSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1636559914);

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Vakpo Okagbare', 'vakporize@gmail.com', NULL, '$2y$10$vAOiofR0VzbpOIJ460Fy..ovBX52ByFo9QOysU9qqeK1df3TOY0/O', NULL, NULL, NULL, NULL, NULL, '2021-11-10 14:53:32', '2021-11-10 14:53:32'),
(2, 'Vax Okagbare', 'vakpo.okagbare@gmail.com', NULL, '$2y$10$pmp8qgmWzKHCLMfBI0EdSOSWEZtpY9t5ZGx3OQyWghLeZt91UJ5dW', NULL, NULL, NULL, NULL, NULL, '2021-11-10 14:53:59', '2021-11-10 14:53:59'),
(3, 'molcolm concept', 'molcolm@mail.com', NULL, '$2y$10$sjcU5trCQ0Hgf9YknygZk.zAEg8wjQT0TyIKjHrmVAMVqblW0HRpS', NULL, NULL, NULL, NULL, NULL, '2021-11-10 15:01:19', '2021-11-10 15:01:19'),
(4, 'vax okagbare', 'vax@gmail.com', NULL, '$2y$10$AIG9aJawhAy2YQQJEChNLu6DDtMRZDUPYvfSkHou/mc6XhppNXfo6', NULL, NULL, NULL, NULL, NULL, '2021-11-10 18:02:53', '2021-11-10 18:02:53'),
(5, 'destiny coza', 'destiny@coza.com', NULL, '$2y$10$NNjOjcBQQsYEox50VpwP3OqDzaJJTFobCXVZ6.wIV028rku4mvu5a', NULL, NULL, NULL, NULL, NULL, '2021-11-10 18:09:22', '2021-11-10 18:09:22'),
(6, 'Barrack Obama', 'barrack@obama.com', NULL, '$2y$10$UvwPo9S8mlnKO8eQybBGQOE1d3NEsOk3WMyvH0nNf7KCgMYiSlnva', NULL, NULL, NULL, NULL, NULL, '2021-11-10 18:13:21', '2021-11-10 18:13:21'),
(7, 'Barrack Obama junior', 'barrackjunior@obama.com', NULL, '$2y$10$kbUcMINVbNwU/SHg5YmgbeSOOorO83yN5CxT53Qo7gXaRfFNzqs7.', NULL, NULL, NULL, NULL, NULL, '2021-11-10 18:14:22', '2021-11-10 18:14:22'),
(8, 'perdir', 'perdir@mail.com', NULL, '$2y$10$UjVKih8G8ldYdKkEQbB4Wu3eAX7MWjcv1FM/O.QNGCNpmDJ.qatwK', NULL, NULL, NULL, NULL, NULL, '2021-11-10 18:18:19', '2021-11-10 18:18:19'),
(9, 'perdir213', 'perdir@mail.comew', NULL, '$2y$10$Rqm3.PomP.WPaLjB8DUw3OrQsqJLQ3zJHoPuEFhTQoSGJ4g9Gzdja', NULL, NULL, NULL, NULL, NULL, '2021-11-10 18:20:03', '2021-11-10 18:20:03'),
(10, 'florida', 'florida@rida.com.ng', NULL, '$2y$10$a1rC.cufsPpMwFl4q2vth.ZY52KQ7x9csb3sQ0Soqj.yj6Kz1kF.m', NULL, NULL, NULL, NULL, NULL, '2021-11-10 18:28:12', '2021-11-10 18:28:12'),
(11, 'genertator', 'generator@gen.ng', NULL, '$2y$10$tpvBsDc.njkfHauoiRJu/Oeb2CDrCkwcIEdwQQdmuompWV7qA0ajW', NULL, NULL, NULL, NULL, NULL, '2021-11-10 19:37:29', '2021-11-10 19:37:29'),
(12, 'bisi', 'bisi@mail.com', NULL, '$2y$10$GMdpbIkEu6xqToN.Y4.b9.tlwB/iG7tTpyPbeGJmHqgi80zbmdVZ2', NULL, NULL, NULL, NULL, NULL, '2021-11-10 19:38:37', '2021-11-10 19:38:37');

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
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

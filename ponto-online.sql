-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 14-Dez-2022 às 20:17
-- Versão do servidor: 8.0.21
-- versão do PHP: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tudoshop_po`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int UNSIGNED NOT NULL,
  `newTypeLog` char(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `oldTypeLog` char(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateLog` timestamp NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edited_by` int UNSIGNED NOT NULL,
  `record_id` int UNSIGNED NOT NULL,
  `owner` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `newTypeLog`, `oldTypeLog`, `dateLog`, `description`, `edited_by`, `record_id`, `owner`, `created_at`, `updated_at`) VALUES
(1, 'O', 'O', '2022-12-14 19:10:53', 'Erro', 2, 4, 1, '2022-12-14 19:12:55', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_10_11_200537_create_records_table', 1),
(4, '2018_10_11_204509_create_roles_table', 1),
(5, '2018_10_11_212753_add_fk_user_table', 1),
(6, '2018_10_11_225240_add_lastlogin_user', 1),
(7, '2018_10_14_150313_create_activity_logs_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `records`
--

CREATE TABLE `records` (
  `record_id` int UNSIGNED NOT NULL,
  `type` char(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `records`
--

INSERT INTO `records` (`record_id`, `type`, `date`, `ip`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'I', '2022-12-14 19:07:44', '127.0.0.1', 1, '2022-12-14 19:07:44', '2022-12-14 19:07:44'),
(2, 'II', '2022-12-14 19:10:33', '127.0.0.1', 1, '2022-12-14 19:10:33', '2022-12-14 19:10:33'),
(3, 'OI', '2022-12-14 19:10:45', '127.0.0.1', 1, '2022-12-14 19:10:45', '2022-12-14 19:10:45'),
(4, 'O', '2022-12-14 19:12:00', '127.0.0.1', 1, '2022-12-14 19:10:53', '2022-12-14 19:12:55');

-- --------------------------------------------------------

--
-- Estrutura da tabela `roles`
--

CREATE TABLE `roles` (
  `role_id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `roles`
--

INSERT INTO `roles` (`role_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Colaborador', 'Colaborador do Sistema', '2022-12-14 19:07:10', '2022-12-14 19:07:10'),
(2, 'Administrador', 'Administrador do Sistema', '2022-12-14 19:07:10', '2022-12-14 19:07:10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int UNSIGNED NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Gustavo Colaborador', 'teste@teste.com', '$2y$10$VEWs893a6WklRs3duWPJ4enZY.gYktiyzdQ5xlxSJ20OrUAQTO7cu', 1, 'uilyCg80pD4cScn0ZN03KKb2BLquandvMus5r9Lj0qDBby66ecYVwkeXfmmC', '2022-12-14 19:07:10', '2022-12-14 19:07:10'),
(2, 'Gustavo Administrador', 'admin@teste.com', '$2y$10$z7Ynf2ErAsa/2Jd8jAu6le2jkFg4QKSLQrSt3HwUXtz4u4q3QOrRW', 2, 'LdbhgPZeleoRKCpXBkyG6Iircsx8sofueWm6pksTwfb2aoV4PqTu8Ag0OCNG', '2022-12-14 19:07:10', '2022-12-14 19:07:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_logs_edited_by_foreign` (`edited_by`),
  ADD KEY `activity_logs_owner_foreign` (`owner`),
  ADD KEY `activity_logs_record_id_foreign` (`record_id`);

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
-- Indexes for table `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`record_id`),
  ADD KEY `records_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `records`
--
ALTER TABLE `records`
  MODIFY `record_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `activity_logs_edited_by_foreign` FOREIGN KEY (`edited_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `activity_logs_owner_foreign` FOREIGN KEY (`owner`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `activity_logs_record_id_foreign` FOREIGN KEY (`record_id`) REFERENCES `records` (`record_id`);

--
-- Limitadores para a tabela `records`
--
ALTER TABLE `records`
  ADD CONSTRAINT `records_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Limitadores para a tabela `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

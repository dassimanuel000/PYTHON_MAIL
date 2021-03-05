-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 03 mars 2020 à 15:01
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `unity`
--

-- --------------------------------------------------------

--
-- Structure de la table `client_agence_A`
--

CREATE TABLE `client_agence_A` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_client` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `adress_client` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `telephone_client` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `entreprise_client` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `sexe_client` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `account_client` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `client_agence_A`
--

INSERT INTO `client_agence_A` (`id`, `name_client`, `adress_client`, `telephone_client`, `entreprise_client`, `sexe_client`, `account_client`, `created_at`, `updated_at`) VALUES
(1, 'client_1', 'ucac', '123456', 'camtel', 'male', 10000, NULL, NULL),
(2, 'video client', 'icam', '12345678', 'client_agence_A', 'femme', 10000, NULL, '2020-03-01 00:24:01'),
(3, 'dassi', 'ucac', '12345678', 'yansoki', 'male', 0, '2020-02-27 18:52:25', '2020-02-27 18:52:25'),
(4, 'achillo', 'orange', '000', 'douala', 'male', 10000, '2020-02-27 19:03:34', '2020-02-27 19:03:34'),
(5, 'sergio', 'maroua', '2', 'razel', 'male', 20, '2020-02-28 11:27:07', '2020-02-28 11:27:07'),
(6, 'effort2', '33e rue paris', '2', 'yde', 'femme', 20, '2020-02-28 12:11:19', '2020-02-28 18:49:32');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_02_06_030721_stock_agence__a', 1),
(5, '2020_02_27_180706_client_agence__a', 2);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stock_agence_A`
--

CREATE TABLE `stock_agence_A` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `referent` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `price_min` double(25,5) NOT NULL,
  `price_max` double(25,5) NOT NULL,
  `alarm_stock` decimal(8,2) NOT NULL,
  `image` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `provider` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `tax` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `stock_agence_A`
--

INSERT INTO `stock_agence_A` (`id`, `referent`, `title`, `description`, `category`, `quantity`, `price_min`, `price_max`, `alarm_stock`, `image`, `product_type`, `provider`, `tax`, `created_at`, `updated_at`) VALUES
(4, 'test2 modif', 'produit2', 'test2', 'Plomberies', '1.00', 1.00000, 1.00000, '1.00', '1582232867.jpg', '1', '1', 1, '2020-02-20 19:07:47', '2020-02-20 19:07:47'),
(5, 'test2', 'fer', 'test2', 'Plomberies', '1.00', 1.00000, 1.00000, '1.00', '1582232926.jpg', '1', '1', 1, '2020-02-20 19:08:46', '2020-02-20 19:08:46'),
(6, 'test3', 'canal', 'test2', 'Tuyaux', '1.00', 1.00000, 1.00000, '1.00', '1582233430.jpg', 'test1', '1', 1, '2020-02-20 19:13:03', '2020-02-20 19:17:10'),
(7, 'test2 2', 'test2', 'test2', 'Plomberies', '1.00', 1.00000, 1.00000, '1.00', '1582233214.jpg', 'test1', '1', 1, '2020-02-20 19:13:34', '2020-02-20 19:13:34'),
(8, 'cadena1', 'cadena force', 'cadena acier', 'Outis', '20.00', 1000.00000, 1500.00000, '2.00', '1582891980.png', 'cadena', 'ucac', 0, '2020-02-28 10:07:35', '2020-02-28 11:13:00'),
(9, 'video ajout', 'video', 'video', 'Electriques', '60.00', 40.00000, 150.00000, '4.00', '1582892287.png', 'video modifie', 'test2', 108, '2020-02-28 11:18:07', '2020-02-28 11:18:07'),
(10, 'ajout', 'f', 'a', 'Electriques', '55.00', 40.00000, 150.00000, '4.00', '1582892382.jpg', 'video aamazon', 'test2', 108, '2020-02-28 11:18:53', '2020-02-28 11:19:42');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `usertype` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `usertype`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '12345678', 'admin', 'admin@admin.com', NULL, '$2y$10$YABUvpA7H/9qRPjIlDCbHu.CGh3NvWDUmG6lwSvdOFbOX.qCAik46', NULL, '2020-02-20 05:27:02', '2020-02-20 05:27:02'),
(3, 'user', '12345678', 'Chef_agence_A', 'user@user.com', NULL, '$2y$10$mfzsnATtXk6Lu5tZHAeTHOHca6FqRg6kF3IkZzydvAkMOJu2hO4Nq', NULL, '2020-02-20 10:21:34', '2020-02-20 10:21:34');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client_agence_A`
--
ALTER TABLE `client_agence_A`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `stock_agence_A`
--
ALTER TABLE `stock_agence_A`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client_agence_A`
--
ALTER TABLE `client_agence_A`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `stock_agence_A`
--
ALTER TABLE `stock_agence_A`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : dim. 25 fév. 2024 à 20:35
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `rendunode`
--

-- --------------------------------------------------------

--
-- Structure de la table `champion`
--

CREATE TABLE `champion` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `champion`
--

INSERT INTO `champion` (`id`, `name`, `role`) VALUES
(1, 'vayne', 'tireur'),
(2, 'Sion', 'tank'),
(4, 'Kalista', 'marksmen'),
(5, 'Viego', 'fighter'),
(6, 'Lee Sin', 'fighter'),
(7, 'Alistar', 'support'),
(8, 'Ivern', 'support'),
(9, 'Gnar', 'tank'),
(10, 'Briar', 'assassin'),
(11, 'Aatrox', 'tank'),
(12, 'Ahri', 'assassin'),
(13, 'Lilia', 'fighter'),
(14, 'Jax', 'fighter'),
(15, 'Kennen', 'mage'),
(16, 'Leblanc', 'mage'),
(17, 'Ezreal', 'marksmen'),
(18, 'Vayne', 'marksmen'),
(19, 'Zed', 'assassin'),
(20, 'Jarvan IV', 'tank'),
(21, 'Kayn', 'assassin'),
(22, 'Sett', 'fighter'),
(23, 'Swain', 'tank'),
(24, 'Draven', 'marksmen');

-- --------------------------------------------------------

--
-- Structure de la table `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('a6536556-c2ed-4a46-8103-fed998f74737', '2228e530ac7255361bd040b6a2fe272415ed7b29d40bcbd1c4aae0eb9b434d4e', '2024-02-25 18:15:00.656', '20240225181500_create_champion', NULL, NULL, '2024-02-25 18:15:00.629', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `champion`
--
ALTER TABLE `champion`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `champion`
--
ALTER TABLE `champion`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

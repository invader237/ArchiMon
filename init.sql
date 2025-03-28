-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Mar 28, 2025 at 03:51 PM
-- Server version: 10.5.28-MariaDB-ubu2004
-- PHP Version: 8.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trivino7u_ArchiMon`
--

-- --------------------------------------------------------

--
-- Table structure for table `archimon`
--

CREATE TABLE `archimon` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `url_image` text NOT NULL,
  `pv` int(11) NOT NULL,
  `atk` int(11) NOT NULL,
  `sp_atk` int(11) NOT NULL,
  `def` int(11) NOT NULL,
  `sp_def` int(11) NOT NULL,
  `spd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `archimon`
--

INSERT INTO `archimon` (`id`, `nom`, `description`, `url_image`, `pv`, `atk`, `sp_atk`, `def`, `sp_def`, `spd`) VALUES
(1, 'salut', 'cc', 'cc', -175, 10, 10, 10, 10, 10),
(6, 'salut', 'desxci', 'https://www.google.com', 600, 5, 5, 5, 5, 10),
(7, 'aa', 'a', 'a', 10, 10, 10, 10, 10, 10),
(8, 'Flareclaw', 'Un archimon félin au pelage ardent, vif et agile.', 'https://example.com/img/flareclaw.png', 70, 85, 65, 60, 50, 95),
(9, 'Aqualith', 'Créature rocheuse imprégnée de pouvoir aquatique.', 'https://example.com/img/aqualith.png', 90, 70, 80, 100, 90, 40),
(10, 'Psychowl', 'Un hibou mystique aux pouvoirs psychiques étonnants.', 'https://example.com/img/psychowl.png', 60, 45, 95, 55, 85, 80),
(11, 'Terragron', 'Un mastodonte terrestre au dos couvert de mousse et de pierre.', 'https://example.com/img/terragron.png', 110, 100, 50, 120, 80, 30),
(12, 'Voltsharp', 'Un serpent rapide générant de l\'électricité statique.', 'https://example.com/img/voltsharp.png', 65, 55, 95, 50, 60, 115),
(13, 'Nébulara', 'Être spectral enveloppé de brume cosmique.', 'https://example.com/img/nebulara.png', 75, 60, 105, 60, 105, 70),
(14, 'Venoflame', 'Une salamandre toxique dont les flammes brûlent violemment.', 'https://example.com/img/venoflame.png', 68, 90, 90, 60, 60, 85),
(15, 'Cryorune', 'Statue ancienne de glace animée par une énergie mystique.', 'https://example.com/img/cryorune.png', 80, 60, 70, 120, 110, 40),
(16, 'Aerokid', 'Petit archimon plein d\'énergie, courant dans les airs.', 'https://example.com/img/aerokid.png', 50, 55, 45, 40, 40, 130),
(17, 'Drakilux', 'Dragon céleste au regard perçant, gardien des cieux anciens.', 'https://example.com/img/drakilux.png', 95, 110, 90, 85, 80, 75),
(18, 'xxx@gmail.com', 'a', 'https://oaidalleapiprodscus.blob.core.windows.net/private/org-CHR2TDfocQTL9DabkzkDxA1A/user-Cvl5ioxKMALAMNnNS07SQFk8/img-WsI93Jx4cMYnoFwLnMBm9yIg.png?st=2025-03-27T16%3A16%3A09Z&se=2025-03-27T18%3A16%3A09Z&sp=r&sv=2024-08-04&sr=b&rscd=inline&rsct=image/png&skoid=d505667d-d6c1-4a0a-bac7-5c84a87759f8&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2025-03-27T01%3A10%3A22Z&ske=2025-03-28T01%3A10%3A22Z&sks=b&skv=2024-08-04&sig=B52b0XARi1Gm3tDVlFWrKNdrKufzmWb7OXzUSopZyQE%3D', 1, 1, 1, 1, 1, 1),
(19, 'DiegoLexplorateur', 'Le cousin De dora en Pokemon', 'https://oaidalleapiprodscus.blob.core.windows.net/private/org-CHR2TDfocQTL9DabkzkDxA1A/user-Cvl5ioxKMALAMNnNS07SQFk8/img-SzPS6GhGkCFxoHtxsrXZvv5F.png?st=2025-03-27T16%3A17%3A43Z&se=2025-03-27T18%3A17%3A43Z&sp=r&sv=2024-08-04&sr=b&rscd=inline&rsct=image/png&skoid=d505667d-d6c1-4a0a-bac7-5c84a87759f8&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2025-03-27T16%3A53%3A51Z&ske=2025-03-28T16%3A53%3A51Z&sks=b&skv=2024-08-04&sig=Gg6d14J9UZDshsW3hoclJpS%2BTciax8GEqVWc6AeWuoc%3D', 1, 1, 1, 1, 1, 1),
(20, 'Dora Lexploratrice', 'Dora mais en Pokemon', 'https://oaidalleapiprodscus.blob.core.windows.net/private/org-CHR2TDfocQTL9DabkzkDxA1A/user-Cvl5ioxKMALAMNnNS07SQFk8/img-WvK8XEMdzxWod8nrLr7VjNAe.png?st=2025-03-27T16%3A18%3A26Z&se=2025-03-27T18%3A18%3A26Z&sp=r&sv=2024-08-04&sr=b&rscd=inline&rsct=image/png&skoid=d505667d-d6c1-4a0a-bac7-5c84a87759f8&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2025-03-27T02%3A18%3A33Z&ske=2025-03-28T02%3A18%3A33Z&sks=b&skv=2024-08-04&sig=/g3VCEPWRxvyQRCrdiv%2BPdRUr6yQ87bXN8FQ5qUCgQU%3D', 300, 120, 100, 50, 2, 123),
(21, 'salut', 'bb', 'https://oaidalleapiprodscus.blob.core.windows.net/private/org-CHR2TDfocQTL9DabkzkDxA1A/user-Cvl5ioxKMALAMNnNS07SQFk8/img-MBagP206p3lEm62W0l3Y768s.png?st=2025-03-27T16%3A21%3A00Z&se=2025-03-27T18%3A21%3A00Z&sp=r&sv=2024-08-04&sr=b&rscd=inline&rsct=image/png&skoid=d505667d-d6c1-4a0a-bac7-5c84a87759f8&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2025-03-27T01%3A11%3A04Z&ske=2025-03-28T01%3A11%3A04Z&sks=b&skv=2024-08-04&sig=teiPUSrYKLEG/m5kiIUQplOCzWn7RgwFIka9030K0HA%3D', -1, -3, -4, -4, -4, -4),
(22, 'salut', 'desxci', 'https://oaidalleapiprodscus.blob.core.windows.net/private/org-CHR2TDfocQTL9DabkzkDxA1A/user-Cvl5ioxKMALAMNnNS07SQFk8/img-tD3fjvQqD3vJGMBRuLJVw5Yq.png?st=2025-03-28T14%3A42%3A17Z&se=2025-03-28T16%3A42%3A17Z&sp=r&sv=2024-08-04&sr=b&rscd=inline&rsct=image/png&skoid=d505667d-d6c1-4a0a-bac7-5c84a87759f8&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2025-03-28T14%3A10%3A20Z&ske=2025-03-29T14%3A10%3A20Z&sks=b&skv=2024-08-04&sig=gTpn65fK0LByhrmkreXv7jWjAlkULwEbwo3lkvmjp9M%3D', 5, 5, 5, 5, 5, 10),
(23, 'salut', 'desxci', 'imageUrl', 5, 5, 5, 5, 5, 10),
(24, 'salut', 'desxci', 'imageUrl', 5, 5, 5, 5, 5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `archimon_combat`
--

CREATE TABLE `archimon_combat` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `url_image` varchar(255) DEFAULT NULL,
  `pv` int(11) DEFAULT NULL,
  `atk` int(11) DEFAULT NULL,
  `sp_atk` int(11) DEFAULT NULL,
  `def` int(11) DEFAULT NULL,
  `sp_def` int(11) DEFAULT NULL,
  `spd` int(11) DEFAULT NULL,
  `combat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `archimon_combat`
--

INSERT INTO `archimon_combat` (`id`, `nom`, `description`, `url_image`, `pv`, `atk`, `sp_atk`, `def`, `sp_def`, `spd`, `combat_id`) VALUES
(1, 'salut', 'cc', 'cc', -175, 10, 10, 10, 10, 10, NULL),
(2, 'salut', 'desxci', 'https://www.google.com', 540, 5, 5, 5, 5, 10, NULL),
(3, 'salut', 'cc', 'cc', -175, 10, 10, 10, 10, 10, NULL),
(4, 'salut', 'desxci', 'https://www.google.com', 540, 5, 5, 5, 5, 10, NULL),
(5, 'salut', 'cc', 'cc', -175, 10, 10, 10, 10, 10, NULL),
(6, 'salut', 'desxci', 'https://www.google.com', 540, 5, 5, 5, 5, 10, NULL),
(7, 'salut', 'cc', 'cc', -175, 10, 10, 10, 10, 10, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `archimon_team`
--

CREATE TABLE `archimon_team` (
  `archimon_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `archimon_team`
--

INSERT INTO `archimon_team` (`archimon_id`, `team_id`) VALUES
(1, 1),
(7, 3),
(8, 3),
(9, 4),
(12, 4);

-- --------------------------------------------------------

--
-- Table structure for table `capacites`
--

CREATE TABLE `capacites` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `puissance` double DEFAULT NULL,
  `precision` double DEFAULT NULL,
  `id_type` int(11) NOT NULL,
  `effet_secondaire` text NOT NULL,
  `categorie` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `capacites`
--

INSERT INTO `capacites` (`id`, `nom`, `description`, `puissance`, `precision`, `id_type`, `effet_secondaire`, `categorie`) VALUES
(1, 'Charge', 'Le lanceur charge la cible et la percute de tout son poids.', 60, 100, 10, '', 'physique'),
(2, 'Vive-Attaque', 'Le lanceur fonce sur la cible si rapidement qu\'on parvient à peine à le discerner. Frappe en priorité.', 40, 100, 10, '', 'physique'),
(3, 'Hâte', 'Le lanceur se relaxe et allège son corps pour beaucoup augmenter sa Vitesse.', NULL, NULL, 13, 'vitesse2', 'statut'),
(4, 'Mousse Gluante', 'Le lanceur jette de la mousse gluante sur la cible pour beaucoup diminuer sa vitesse', NULL, 90, 4, 'vitesse-2', 'statut'),
(5, 'Sheauriken', 'Le lanceur attaque la cible avec des shuriken de mucus. Cette capacité frappe en priorité deux à cinq fois d\'affilée en un tour.', 20, 100, 4, 'priorite1, attSupp2à5', 'spéciale'),
(6, 'Vibraqua', 'Le lanceur projette une aura aquatique sur la cible, et peut la rendre confuse.', 60, 100, 4, 'confusion20', 'spéciale'),
(9, 'Tête de Fer', 'Le lanceur attaque avec sa tête dure comme de l\'acier. Peut apeurer la cible.', 80, 100, 1, 'peur30', 'physique'),
(10, 'Luminocanon', 'Projette un rayon lumineux intense. Peut baisser la Défense Spéciale.', 80, 100, 1, 'defSpe-10', 'spéciale'),
(11, 'Mur de Fer', 'Le lanceur solidifie son corps d\'acier, augmentant beaucoup sa Défense.', NULL, NULL, 1, 'defense2', 'statut'),
(12, 'Queue de Fer', 'Une attaque puissante avec une queue d\'acier, pouvant baisser la Défense adverse.', 100, 75, 1, 'def-10', 'physique'),
(13, 'Gyroballe', 'Le lanceur tourne sur lui-même pour heurter l\'adversaire. Plus le lanceur est lent, plus l\'attaque est forte.', NULL, 100, 1, '', 'physique'),
(14, 'Casse-Brique', 'Frappe la cible d\'un coup de poing puissant capable de briser barrières et murs.', 75, 100, 2, '', 'physique'),
(15, 'Aurasphère', 'Projette une sphère d\'énergie combattive. Ne rate jamais.', 80, NULL, 2, '', 'spéciale'),
(16, 'Mach Punch', 'Une attaque éclair qui permet de frapper en premier.', 40, 100, 2, 'priorite1', 'physique'),
(17, 'Stratopercut', 'Un puissant uppercut capable de frapper les adversaires dans les airs.', 85, 90, 2, '', 'physique'),
(18, 'Gonflette', 'Le lanceur tend ses muscles pour augmenter Attaque et Défense.', NULL, NULL, 2, 'attaque1,defense1', 'statut'),
(19, 'Dracogriffe', 'Le lanceur attaque la cible avec des griffes acérées.', 80, 100, 3, '', 'physique'),
(20, 'Dracochoc', 'Un choc violent de puissance draconique qui peut rendre confus.', 85, 100, 3, 'confusion20', 'spéciale'),
(21, 'Ouragan', 'Le lanceur crée un vent puissant qui peut apeurer.', 40, 100, 3, 'peur20', 'spéciale'),
(22, 'Colère', 'Le lanceur attaque 2 à 3 tours de suite, puis devient confus.', 120, 100, 3, 'confusionPost', 'physique'),
(23, 'Danse Draco', 'Augmente l\'Attaque et la Vitesse du lanceur.', NULL, NULL, 3, 'attaque1,vitesse1', 'statut'),
(24, 'Mousse Gluante', 'Le lanceur jette de la mousse gluante sur la cible pour beaucoup diminuer sa vitesse', NULL, 90, 4, 'vitesse-2', 'statut'),
(25, 'Sheauriken', 'Le lanceur attaque la cible avec des shuriken de mucus. Cette capacité frappe en priorité deux à cinq fois d\'affilée en un tour.', 20, 100, 4, 'priorite1, attSupp2à5', 'spéciale'),
(26, 'Vibraqua', 'Le lanceur projette une aura aquatique sur la cible, et peut la rendre confuse.', 60, 100, 4, 'confusion20', 'spéciale'),
(27, 'Surf', 'Déchaîne une énorme vague qui touche tous les Pokémon autour.', 90, 100, 4, '', 'spéciale'),
(28, 'Ébullition', 'Lance de l\'eau bouillante pouvant brûler la cible.', 80, 100, 4, 'brulure30', 'spéciale'),
(29, 'Danse Pluie', 'Invoque de la pluie pendant 5 tours, boostant les capacités Eau.', NULL, NULL, 4, 'pluie5t', 'statut'),
(30, 'Éclair', 'Une petite décharge électrique pouvant paralyser.', 40, 100, 5, 'paralysie10', 'spéciale'),
(31, 'Tonnerre', 'Une puissante attaque électrique pouvant paralyser.', 90, 100, 5, 'paralysie10', 'spéciale'),
(32, 'Fatal-Foudre', 'Une énorme décharge électrique, mais peu précise.', 110, 70, 5, 'paralysie30', 'spéciale'),
(33, 'Cage-Éclair', 'Immobilise l\'ennemi avec de l\'électricité statique. Paralyse toujours.', NULL, 90, 5, 'paralysie100', 'statut'),
(34, 'Change Éclair', 'Le lanceur attaque puis revient aussitôt pour être remplacé.', 70, 100, 5, '', 'spéciale'),
(35, 'Pouvoir Lunaire', 'Libère une lumière mystique. Peut baisser l\'Attaque Spéciale.', 95, 100, 6, 'attSpe-30', 'spéciale'),
(36, 'Vœu Soin', 'Le lanceur sacrifie son tour pour restaurer les PV d\'un allié au tour suivant.', NULL, NULL, 6, 'soinTourSuivant', 'statut'),
(37, 'Charme', 'Fait les yeux doux pour baisser fortement l\'Attaque de l\'adversaire.', NULL, 100, 6, 'attaque-2', 'statut'),
(38, 'Baiser Voleur', 'Le lanceur vole de l\'énergie à la cible. Restaure des PV.', 50, 100, 6, 'drain', 'spéciale'),
(39, 'Brume', 'Crée un brouillard empêchant la baisse des stats de l\'équipe.', NULL, NULL, 6, 'immunStats-', 'statut'),
(40, 'Flammèche', 'Petite attaque de feu pouvant brûler la cible.', 40, 100, 7, 'brulure10', 'spéciale'),
(41, 'Lance-Flammes', 'Lance un puissant jet de flammes. Peut brûler.', 90, 100, 7, 'brulure10', 'spéciale'),
(42, 'Déflagration', 'Explosion massive de feu. Moins précise.', 110, 85, 7, 'brulure10', 'spéciale'),
(43, 'Nitrocharge', 'Charge enflammée augmentant la Vitesse du lanceur.', 50, 100, 7, 'vitesse1', 'physique'),
(44, 'Danse Flamme', 'Enferme l\'ennemi dans un tourbillon de feu pendant plusieurs tours.', 35, 85, 7, 'piegeFeu', 'spéciale'),
(45, 'Poudreuse', 'Envoie de la poudre de glace. Peut geler.', 40, 100, 8, 'gel10', 'spéciale'),
(46, 'Laser Glace', 'Un rayon de glace pouvant geler l\'ennemi.', 90, 100, 8, 'gel10', 'spéciale'),
(47, 'Blizzard', 'Déchaîne une tempête de neige violente. Moins précise.', 110, 70, 8, 'gel10', 'spéciale'),
(48, 'Éclats Glace', 'Attaque prioritaire avec un éclat de glace.', 40, 100, 8, 'priorite1', 'physique'),
(49, 'Vent Glace', 'Un souffle glacial qui baisse la Vitesse.', 55, 95, 8, 'vitesse-1', 'spéciale'),
(50, 'Taillade', 'Une attaque qui devient plus puissante si utilisée plusieurs fois d\'affilée.', 40, 95, 9, 'puissanceX2', 'physique'),
(51, 'Plaie-Croix', 'Frappe en croix avec des pinces acérées.', 80, 100, 9, '', 'physique'),
(52, 'Piqûre', 'Attaque de base de type Insecte.', 60, 100, 9, '', 'physique'),
(53, 'Survinsecte', 'Tire des projectiles d\'insectes. Peut baisser l\'Attaque Spéciale.', 90, 100, 9, 'attSpe-10', 'spéciale'),
(54, 'Poudre Dodo', 'Endort l\'ennemi avec une poudre somnifère.', NULL, 75, 9, 'sommeil', 'statut'),
(55, 'Charge', 'Le lanceur charge la cible et la percute de tout son poids.', 60, 100, 10, '', 'physique'),
(56, 'Vive-Attaque', 'Le lanceur fonce sur la cible si rapidement qu\'on parvient à peine à le discerner. Frappe en priorité.', 40, 100, 10, '', 'physique'),
(57, 'Jet de Sable', 'Projette du sable pour baisser la Précision.', NULL, 100, 10, 'precision-1', 'statut'),
(58, 'Coup d\'Main', 'Augmente fortement la puissance de l\'attaque d\'un allié.', NULL, NULL, 10, 'boostAllié', 'statut'),
(59, 'Clonage', 'Crée un clone pour encaisser les dégâts à la place du lanceur.', NULL, NULL, 10, 'clone', 'statut'),
(60, 'Fouet Lianes', 'Frappe la cible avec des lianes.', 45, 100, 11, '', 'physique'),
(61, 'Tranch\'Herbe', 'Lance des feuilles tranchantes pouvant faire un coup critique.', 55, 95, 11, 'critique+', 'physique'),
(62, 'Canon Graine', 'Tire des graines avec force.', 80, 100, 11, '', 'physique'),
(63, 'Vampigraine', 'Plante une graine qui absorbe des PV à chaque tour.', NULL, 90, 11, 'drainPVtours', 'statut'),
(64, 'Croissance', 'Augmente l\'Attaque et l\'Attaque Spéciale.', NULL, NULL, 11, 'attaque1,attSpe1', 'statut'),
(65, 'Dard-Venin', 'Pique la cible avec un dard empoisonné.', 15, 100, 12, 'poison30', 'physique'),
(66, 'Bomb-Beurk', 'Lance une masse de boue toxique. Peut empoisonner.', 90, 100, 12, 'poison30', 'spéciale'),
(67, 'Gaz Toxik', 'Envoie un gaz toxique qui empoisonne toujours.', NULL, 90, 12, 'poison100', 'statut'),
(68, 'Crochet Venin', 'Un coup de crochet qui fait plus de dégâts si la cible est empoisonnée.', 50, 100, 12, 'bonusVSpoison', 'physique'),
(69, 'Toxik', 'Empoisonne gravement la cible. Les dégâts augmentent chaque tour.', NULL, 90, 12, 'poisonGrave', 'statut'),
(70, 'Choc Mental', 'Une attaque mentale pouvant apeurer la cible.', 50, 100, 13, 'peur10', 'spéciale'),
(71, 'Psyko', 'Attaque psychique puissante pouvant baisser la Défense Spéciale.', 90, 100, 13, 'defSpe-10', 'spéciale'),
(72, 'Hâte', 'Le lanceur se relaxe et allège son corps pour beaucoup augmenter sa Vitesse.', NULL, NULL, 13, 'vitesse2', 'statut'),
(73, 'Plénitude', 'Augmente l\'Attaque Spéciale et la Défense Spéciale.', NULL, NULL, 13, 'attSpe1,defSpe1', 'statut'),
(74, 'Choc Psy', 'Utilise la Défense de la cible au lieu de la Défense Spéciale pour infliger des dégâts.', 80, 100, 13, 'ignoreDefSpe', 'spéciale'),
(75, 'Jet-Pierres', 'Lance une pierre sur l\'adversaire.', 50, 90, 14, '', 'physique'),
(76, 'Éboulement', 'Déclenche une avalanche de rochers. Peut apeurer.', 75, 90, 14, 'peur30', 'physique'),
(77, 'Lame de Roc', 'Frappe avec une lame tranchante. Taux de critique élevé.', 100, 80, 14, 'critique+', 'physique'),
(78, 'Piège de Roc', 'Pose des rochers autour du terrain. Inflige des dégâts à l\'entrée.', NULL, NULL, 14, 'piege', 'statut'),
(79, 'Pouvoir Antique', 'Attaque ancienne pouvant augmenter toutes les stats.', 60, 100, 14, 'boostStats10', 'spéciale'),
(80, 'Séisme', 'Provoque un violent tremblement de terre.', 100, 100, 15, '', 'physique'),
(81, 'Tunnelier', 'Le lanceur creuse au 1er tour et attaque au 2e.', 80, 100, 15, 'tourCharge', 'physique'),
(82, 'Piétisol', 'Frappe le sol pour diminuer la Vitesse de la cible.', 60, 100, 15, 'vitesse-1', 'physique'),
(83, 'Abîme', 'Creuse un trou sous l\'ennemi pour le mettre K.O. instantanément.', NULL, 30, 15, 'OHKO', 'physique'),
(84, 'Sable', 'Crée une tempête de sable pendant 5 tours.', NULL, NULL, 15, 'tempeteSable5t', 'statut'),
(85, 'Châtiment', 'Inflige plus de dégâts si la cible a un problème de statut.', 65, 100, 16, 'puissanceX2statut', 'spéciale'),
(86, 'Ball’Ombre', 'Lance une boule d\'ombre. Peut baisser la Défense Spéciale.', 80, 100, 16, 'defSpe-20', 'spéciale'),
(87, 'Feu Follet', 'Brûle la cible.', NULL, 85, 16, 'brulure', 'statut'),
(88, 'Ombre Nocturne', 'Inflige des dégâts équivalents au niveau du lanceur.', NULL, 100, 16, 'degatsLvl', 'spéciale'),
(89, 'Reflet', 'Crée des illusions pour augmenter l\'Esquive.', NULL, NULL, 16, 'esquive1', 'statut'),
(90, 'Morsure', 'Mord la cible. Peut apeurer.', 60, 100, 17, 'peur30', 'physique'),
(91, 'Tricherie', 'Utilise l\'Attaque de la cible pour infliger des dégâts.', 95, 100, 17, 'utiliseAttCible', 'physique'),
(92, 'Feinte', 'Ne rate jamais sa cible.', 60, NULL, 17, '', 'physique'),
(93, 'Provoc', 'Empêche la cible d\'utiliser des capacités de statut.', NULL, 100, 17, 'bloqueStatut', 'statut'),
(94, 'Sabotage', 'Frappe et supprime l\'objet tenu par la cible.', 65, 100, 17, 'supprimeObjet', 'physique'),
(95, 'Cru-Ailes', 'Un battement d\'ailes tranchant.', 60, 100, 18, '', 'physique'),
(96, 'Vol', 'Le lanceur s\'élève au 1er tour et attaque au second.', 90, 95, 18, 'tourCharge', 'physique'),
(97, 'Atterrissage', 'Le lanceur récupère des PV.', NULL, NULL, 18, 'soin50', 'statut'),
(98, 'Rapace', 'Attaque violente, mais blesse aussi le lanceur.', 120, 100, 18, 'recul33', 'physique'),
(99, 'Vent Arrière', 'Double la Vitesse de l\'équipe pendant 4 tours.', NULL, NULL, 18, 'vitesseEquipe4t', 'statut');

-- --------------------------------------------------------

--
-- Table structure for table `combat`
--

CREATE TABLE `combat` (
  `id` int(11) NOT NULL,
  `first_team` int(11) NOT NULL,
  `second_team` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `team_turn` int(11) NOT NULL,
  `winner` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `combat`
--

INSERT INTO `combat` (`id`, `first_team`, `second_team`, `date`, `status`, `team_turn`, `winner`) VALUES
(3, 1, 3, '2025-03-22', 'BEGINSTARTED', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `combats`
--

CREATE TABLE `combats` (
  `id_combat` int(11) NOT NULL,
  `id_e1` int(11) NOT NULL,
  `id_e2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `deroule_combats`
--

CREATE TABLE `deroule_combats` (
  `id_combat` int(11) NOT NULL,
  `num_tour` int(11) NOT NULL,
  `id_evo_e1` int(11) NOT NULL,
  `id_evo_e2` int(11) NOT NULL,
  `equipe_lanceur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `equipes`
--

CREATE TABLE `equipes` (
  `id_equipe` int(11) NOT NULL,
  `id_a1` int(11) NOT NULL,
  `id_a2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `evolution_archimon`
--

CREATE TABLE `evolution_archimon` (
  `id_evo_archimon` int(11) NOT NULL,
  `pv_actuels` int(11) NOT NULL,
  `atk_modif` int(11) NOT NULL,
  `sp_atk_modif` int(11) NOT NULL,
  `def_modif` int(11) NOT NULL,
  `sp_def_modif` int(11) NOT NULL,
  `spd_modif` int(11) NOT NULL,
  `accuracy_modif` int(11) NOT NULL,
  `dodge_modif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `evolution_equipes`
--

CREATE TABLE `evolution_equipes` (
  `id_evo_equipe` int(11) NOT NULL,
  `id_evo_a1` int(11) NOT NULL,
  `id_evo_a2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `pokemon_capacity`
--

CREATE TABLE `pokemon_capacity` (
  `archimon_id` int(11) NOT NULL,
  `capacity_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pokemon_capacity`
--

INSERT INTO `pokemon_capacity` (`archimon_id`, `capacity_id`) VALUES
(1, 1),
(24, 2);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `nom`) VALUES
(1, 'sa'),
(3, 'Equipe du turfu'),
(4, 'Equipe Sexy');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `libelle` varchar(8) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `libelle`, `image`) VALUES
(1, 'Acier', 'https://www.pokepedia.fr/images/2/27/Miniature_Type_Acier_EV.png'),
(2, 'Combat', 'https://www.pokepedia.fr/images/9/96/Miniature_Type_Combat_EV.png'),
(3, 'Dragon', 'https://www.pokepedia.fr/images/3/3d/Miniature_Type_Dragon_EV.png'),
(4, 'Eau', 'https://www.pokepedia.fr/images/3/3d/Miniature_Type_Eau_EV.png'),
(5, 'Électrik', 'https://www.pokepedia.fr/images/6/6d/Miniature_Type_Électrik_EV.png'),
(6, 'Fée', 'https://www.pokepedia.fr/images/5/58/Miniature_Type_Fée_EV.png'),
(7, 'Feu', 'https://www.pokepedia.fr/images/c/c7/Miniature_Type_Feu_EV.png'),
(8, 'Glace', 'https://www.pokepedia.fr/images/e/e7/Miniature_Type_Glace_EV.png'),
(9, 'Insecte', 'https://www.pokepedia.fr/images/a/a9/Miniature_Type_Insecte_EV.png'),
(10, 'Normal', 'https://www.pokepedia.fr/images/b/bf/Miniature_Type_Normal_EV.png'),
(11, 'Plante', 'https://www.pokepedia.fr/images/d/d9/Miniature_Type_Plante_EV.png'),
(12, 'Poison', 'https://www.pokepedia.fr/images/1/1c/Miniature_Type_Poison_EV.png'),
(13, 'Psy', 'https://www.pokepedia.fr/images/8/81/Miniature_Type_Psy_EV.png'),
(14, 'Roche', 'https://www.pokepedia.fr/images/f/fe/Miniature_Type_Roche_EV.png'),
(15, 'Sol', 'https://www.pokepedia.fr/images/4/40/Miniature_Type_Sol_EV.png'),
(16, 'Spectre', 'https://www.pokepedia.fr/images/4/43/Miniature_Type_Spectre_EV.png'),
(17, 'Ténèbres', 'https://www.pokepedia.fr/images/b/bc/Miniature_Type_Ténèbres_EV.png'),
(18, 'Vol', 'https://www.pokepedia.fr/images/9/99/Miniature_Type_Vol_EV.png');

-- --------------------------------------------------------

--
-- Table structure for table `type_archimon`
--

CREATE TABLE `type_archimon` (
  `archimon_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `type_archimon`
--

INSERT INTO `type_archimon` (`archimon_id`, `type_id`) VALUES
(1, 1),
(1, 3),
(6, 1),
(6, 2),
(18, 1),
(19, 1),
(20, 2),
(21, 4),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2);

-- --------------------------------------------------------

--
-- Table structure for table `type_multiplicateur`
--

CREATE TABLE `type_multiplicateur` (
  `type_off` int(11) NOT NULL,
  `type_def` int(11) NOT NULL,
  `multiplicateur` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `type_multiplicateur`
--

INSERT INTO `type_multiplicateur` (`type_off`, `type_def`, `multiplicateur`) VALUES
(1, 1, 0.5),
(1, 2, 1),
(1, 3, 1),
(1, 4, 0.5),
(1, 5, 0.5),
(1, 6, 2),
(1, 7, 0.5),
(1, 8, 2),
(1, 9, 1),
(1, 10, 1),
(1, 11, 1),
(1, 12, 1),
(1, 13, 1),
(1, 14, 2),
(1, 15, 1),
(1, 16, 1),
(1, 17, 1),
(1, 18, 1),
(2, 1, 2),
(2, 2, 1),
(2, 3, 1),
(2, 4, 1),
(2, 5, 1),
(2, 6, 0.5),
(2, 7, 1),
(2, 8, 2),
(2, 9, 0.5),
(2, 10, 2),
(2, 11, 1),
(2, 12, 0.5),
(2, 13, 0.5),
(2, 14, 2),
(2, 15, 1),
(2, 16, 0),
(2, 17, 2),
(2, 18, 0.5),
(3, 1, 0.5),
(3, 2, 1),
(3, 3, 2),
(3, 4, 1),
(3, 5, 1),
(3, 6, 0),
(3, 7, 1),
(3, 8, 1),
(3, 9, 1),
(3, 10, 1),
(3, 11, 1),
(3, 12, 1),
(3, 13, 1),
(3, 14, 1),
(3, 15, 1),
(3, 16, 1),
(3, 17, 1),
(3, 18, 1),
(4, 1, 1),
(4, 2, 1),
(4, 3, 0.5),
(4, 4, 0.5),
(4, 5, 1),
(4, 6, 1),
(4, 7, 2),
(4, 8, 1),
(4, 9, 1),
(4, 10, 1),
(4, 11, 0.5),
(4, 12, 1),
(4, 13, 1),
(4, 14, 2),
(4, 15, 2),
(4, 16, 1),
(4, 17, 1),
(4, 18, 1),
(5, 1, 1),
(5, 2, 1),
(5, 3, 0.5),
(5, 4, 2),
(5, 5, 0.5),
(5, 6, 1),
(5, 7, 1),
(5, 8, 1),
(5, 9, 1),
(5, 10, 1),
(5, 11, 0.5),
(5, 12, 1),
(5, 13, 1),
(5, 14, 1),
(5, 15, 0),
(5, 16, 1),
(5, 17, 1),
(5, 18, 2),
(6, 1, 0.5),
(6, 2, 2),
(6, 3, 2),
(6, 4, 1),
(6, 5, 1),
(6, 6, 1),
(6, 7, 0.5),
(6, 8, 1),
(6, 9, 1),
(6, 10, 1),
(6, 11, 1),
(6, 12, 0.5),
(6, 13, 1),
(6, 14, 1),
(6, 15, 1),
(6, 16, 1),
(6, 17, 2),
(6, 18, 1),
(7, 1, 2),
(7, 2, 1),
(7, 3, 0.5),
(7, 4, 0.5),
(7, 5, 1),
(7, 6, 1),
(7, 7, 0.5),
(7, 8, 2),
(7, 9, 2),
(7, 10, 1),
(7, 11, 2),
(7, 12, 1),
(7, 13, 1),
(7, 14, 0.5),
(7, 15, 1),
(7, 16, 1),
(7, 17, 1),
(7, 18, 1),
(8, 1, 0.5),
(8, 2, 1),
(8, 3, 2),
(8, 4, 0.5),
(8, 5, 1),
(8, 6, 1),
(8, 7, 0.5),
(8, 8, 0.5),
(8, 9, 1),
(8, 10, 1),
(8, 11, 2),
(8, 12, 1),
(8, 13, 1),
(8, 14, 1),
(8, 15, 2),
(8, 16, 1),
(8, 17, 1),
(8, 18, 2),
(9, 1, 0.5),
(9, 2, 0.5),
(9, 3, 1),
(9, 4, 1),
(9, 5, 1),
(9, 6, 0.5),
(9, 7, 0.5),
(9, 8, 1),
(9, 9, 1),
(9, 10, 1),
(9, 11, 2),
(9, 12, 0.5),
(9, 13, 2),
(9, 14, 1),
(9, 15, 1),
(9, 16, 0.5),
(9, 17, 2),
(9, 18, 0.5),
(10, 1, 0.5),
(10, 2, 1),
(10, 3, 1),
(10, 4, 1),
(10, 5, 1),
(10, 6, 1),
(10, 7, 1),
(10, 8, 1),
(10, 9, 1),
(10, 10, 1),
(10, 11, 1),
(10, 12, 1),
(10, 13, 1),
(10, 14, 0.5),
(10, 15, 1),
(10, 16, 0),
(10, 17, 1),
(10, 18, 1),
(11, 1, 0.5),
(11, 2, 1),
(11, 3, 0.5),
(11, 4, 2),
(11, 5, 1),
(11, 6, 1),
(11, 7, 0.5),
(11, 8, 1),
(11, 9, 0.5),
(11, 10, 1),
(11, 11, 0.5),
(11, 12, 0.5),
(11, 13, 1),
(11, 14, 2),
(11, 15, 2),
(11, 16, 1),
(11, 17, 1),
(11, 18, 0.5),
(12, 1, 0),
(12, 2, 1),
(12, 3, 1),
(12, 4, 1),
(12, 5, 1),
(12, 6, 2),
(12, 7, 1),
(12, 8, 1),
(12, 9, 1),
(12, 10, 1),
(12, 11, 2),
(12, 12, 0.5),
(12, 13, 1),
(12, 14, 0.5),
(12, 15, 0.5),
(12, 16, 0.5),
(12, 17, 1),
(12, 18, 1),
(13, 1, 0.5),
(13, 2, 2),
(13, 3, 1),
(13, 4, 1),
(13, 5, 1),
(13, 6, 1),
(13, 7, 1),
(13, 8, 1),
(13, 9, 1),
(13, 10, 1),
(13, 11, 1),
(13, 12, 2),
(13, 13, 0.5),
(13, 14, 1),
(13, 15, 1),
(13, 16, 1),
(13, 17, 0),
(13, 18, 1),
(14, 1, 0.5),
(14, 2, 0.5),
(14, 3, 1),
(14, 4, 1),
(14, 5, 1),
(14, 6, 1),
(14, 7, 2),
(14, 8, 2),
(14, 9, 2),
(14, 10, 1),
(14, 11, 1),
(14, 12, 1),
(14, 13, 1),
(14, 14, 1),
(14, 15, 0.5),
(14, 16, 1),
(14, 17, 1),
(14, 18, 2),
(15, 1, 2),
(15, 2, 1),
(15, 3, 1),
(15, 4, 1),
(15, 5, 2),
(15, 6, 1),
(15, 7, 2),
(15, 8, 1),
(15, 9, 0.5),
(15, 10, 1),
(15, 11, 0.5),
(15, 12, 2),
(15, 13, 1),
(15, 14, 2),
(15, 15, 1),
(15, 16, 1),
(15, 17, 1),
(15, 18, 0),
(16, 1, 1),
(16, 2, 1),
(16, 3, 1),
(16, 4, 1),
(16, 5, 1),
(16, 6, 1),
(16, 7, 1),
(16, 8, 1),
(16, 9, 1),
(16, 10, 0),
(16, 11, 1),
(16, 12, 1),
(16, 13, 2),
(16, 14, 1),
(16, 15, 1),
(16, 16, 2),
(16, 17, 0.5),
(16, 18, 1),
(17, 1, 1),
(17, 2, 0.5),
(17, 3, 1),
(17, 4, 1),
(17, 5, 1),
(17, 6, 0.5),
(17, 7, 1),
(17, 8, 1),
(17, 9, 1),
(17, 10, 1),
(17, 11, 1),
(17, 12, 1),
(17, 13, 2),
(17, 14, 1),
(17, 15, 1),
(17, 16, 2),
(17, 17, 0.5),
(17, 18, 1),
(18, 1, 0.5),
(18, 2, 2),
(18, 3, 1),
(18, 4, 1),
(18, 5, 0.5),
(18, 6, 1),
(18, 7, 1),
(18, 8, 1),
(18, 9, 2),
(18, 10, 1),
(18, 11, 2),
(18, 12, 1),
(18, 13, 1),
(18, 14, 0.5),
(18, 15, 1),
(18, 16, 1),
(18, 17, 1),
(18, 18, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archimon`
--
ALTER TABLE `archimon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `archimon_combat`
--
ALTER TABLE `archimon_combat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_combat` (`combat_id`);

--
-- Indexes for table `archimon_team`
--
ALTER TABLE `archimon_team`
  ADD PRIMARY KEY (`archimon_id`,`team_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `capacites`
--
ALTER TABLE `capacites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_type` (`id_type`);

--
-- Indexes for table `combat`
--
ALTER TABLE `combat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_first_team` (`first_team`),
  ADD KEY `fk_second_team` (`second_team`);

--
-- Indexes for table `combats`
--
ALTER TABLE `combats`
  ADD PRIMARY KEY (`id_combat`);

--
-- Indexes for table `deroule_combats`
--
ALTER TABLE `deroule_combats`
  ADD PRIMARY KEY (`id_combat`,`num_tour`),
  ADD KEY `fk_id_evo_e1` (`id_evo_e1`),
  ADD KEY `fk_id_evo_e2` (`id_evo_e2`);

--
-- Indexes for table `equipes`
--
ALTER TABLE `equipes`
  ADD PRIMARY KEY (`id_equipe`);

--
-- Indexes for table `evolution_archimon`
--
ALTER TABLE `evolution_archimon`
  ADD PRIMARY KEY (`id_evo_archimon`);

--
-- Indexes for table `evolution_equipes`
--
ALTER TABLE `evolution_equipes`
  ADD PRIMARY KEY (`id_evo_equipe`),
  ADD KEY `fk_id_evo_a1` (`id_evo_a1`),
  ADD KEY `fk_id_evo_a2` (`id_evo_a2`);

--
-- Indexes for table `pokemon_capacity`
--
ALTER TABLE `pokemon_capacity`
  ADD PRIMARY KEY (`archimon_id`,`capacity_id`),
  ADD KEY `capacity_id` (`capacity_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_archimon`
--
ALTER TABLE `type_archimon`
  ADD PRIMARY KEY (`archimon_id`,`type_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `type_multiplicateur`
--
ALTER TABLE `type_multiplicateur`
  ADD PRIMARY KEY (`type_off`,`type_def`),
  ADD KEY `fk_id_type_def` (`type_def`),
  ADD KEY `fk_id_type_off` (`type_off`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `archimon`
--
ALTER TABLE `archimon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `archimon_combat`
--
ALTER TABLE `archimon_combat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `capacites`
--
ALTER TABLE `capacites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `combat`
--
ALTER TABLE `combat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `combats`
--
ALTER TABLE `combats`
  MODIFY `id_combat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `equipes`
--
ALTER TABLE `equipes`
  MODIFY `id_equipe` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `evolution_archimon`
--
ALTER TABLE `evolution_archimon`
  MODIFY `id_evo_archimon` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `evolution_equipes`
--
ALTER TABLE `evolution_equipes`
  MODIFY `id_evo_equipe` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `archimon_combat`
--
ALTER TABLE `archimon_combat`
  ADD CONSTRAINT `fk_combat` FOREIGN KEY (`combat_id`) REFERENCES `combat` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `archimon_team`
--
ALTER TABLE `archimon_team`
  ADD CONSTRAINT `archimon_team_ibfk_1` FOREIGN KEY (`archimon_id`) REFERENCES `archimon` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `archimon_team_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `capacites`
--
ALTER TABLE `capacites`
  ADD CONSTRAINT `fk_id_type` FOREIGN KEY (`id_type`) REFERENCES `types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `combat`
--
ALTER TABLE `combat`
  ADD CONSTRAINT `fk_first_team` FOREIGN KEY (`first_team`) REFERENCES `team` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_second_team` FOREIGN KEY (`second_team`) REFERENCES `team` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `deroule_combats`
--
ALTER TABLE `deroule_combats`
  ADD CONSTRAINT `fk_id_combat` FOREIGN KEY (`id_combat`) REFERENCES `combats` (`id_combat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_evo_e1` FOREIGN KEY (`id_evo_e1`) REFERENCES `evolution_equipes` (`id_evo_equipe`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_evo_e2` FOREIGN KEY (`id_evo_e2`) REFERENCES `evolution_equipes` (`id_evo_equipe`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `evolution_equipes`
--
ALTER TABLE `evolution_equipes`
  ADD CONSTRAINT `fk_id_evo_a1` FOREIGN KEY (`id_evo_a1`) REFERENCES `evolution_archimon` (`id_evo_archimon`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_evo_a2` FOREIGN KEY (`id_evo_a2`) REFERENCES `evolution_archimon` (`id_evo_archimon`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pokemon_capacity`
--
ALTER TABLE `pokemon_capacity`
  ADD CONSTRAINT `pokemon_capacity_ibfk_1` FOREIGN KEY (`archimon_id`) REFERENCES `archimon` (`id`),
  ADD CONSTRAINT `pokemon_capacity_ibfk_2` FOREIGN KEY (`capacity_id`) REFERENCES `capacites` (`id`);

--
-- Constraints for table `type_archimon`
--
ALTER TABLE `type_archimon`
  ADD CONSTRAINT `type_archimon_ibfk_1` FOREIGN KEY (`archimon_id`) REFERENCES `archimon` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `type_archimon_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `type_multiplicateur`
--
ALTER TABLE `type_multiplicateur`
  ADD CONSTRAINT `fk_id_type_def` FOREIGN KEY (`type_def`) REFERENCES `types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_type_off` FOREIGN KEY (`type_off`) REFERENCES `types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

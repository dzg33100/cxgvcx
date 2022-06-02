-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 13 mai 2022 à 18:43
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `final`
--

-- --------------------------------------------------------

--
-- Structure de la table `account_info`
--

CREATE TABLE `account_info` (
  `account_id` int(11) NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `steam` varchar(22) COLLATE utf8mb4_bin DEFAULT NULL,
  `xbl` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `live` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `fivem` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `ip` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `guid` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `first_connection` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `account_info`
--

INSERT INTO `account_info` (`account_id`, `license`, `steam`, `xbl`, `discord`, `live`, `fivem`, `name`, `ip`, `guid`, `first_connection`) VALUES
(2, 'license:869b0188c0f7a642d5b51d38a001bab349264fcc', 'steam:1100001366a1521', '', 'discord:724059763641417750', '', '', 'Naza LaD', '192.168.1.48', '148618792007806696', '2022-05-13 09:54:03');

-- --------------------------------------------------------

--
-- Structure de la table `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('property_dirtycash', 'Argent Sale Propriété', 0),
('society_ambulance', 'Ambulance', 1),
('society_avocat', 'Avocat', 1),
('society_ballas', 'ballas', 1),
('society_boatshop', 'Concessionnaire Bateaux', 1),
('society_carshop', 'Concessionnaire Voitures', 1),
('society_families', 'families', 1),
('society_journalist', 'Journaliste', 1),
('society_marabunta', 'marabunta', 1),
('society_mecano', 'Mécano', 1),
('society_planeshop', 'Concessionnaire Avions', 1),
('society_police', 'Police', 1),
('society_realestateagent', 'Agent immobilier', 1),
('society_tabac', 'Tabac', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1),
('society_vagos', 'vagos', 1),
('society_vigne', 'Vigneron', 1),
('trunk_dirtycash', 'Argent Sale Coffre Véhicule', 0);

-- --------------------------------------------------------

--
-- Structure de la table `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` double NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(478, 'society_avocat', 0, NULL),
(479, 'society_ballas', 0, NULL),
(480, 'society_carshop', 0, NULL),
(481, 'society_ambulance', 0, NULL),
(482, 'society_families', 0, NULL),
(483, 'society_boatshop', 0, NULL),
(484, 'society_mecano', 327, NULL),
(485, 'society_vagos', 0, NULL),
(486, 'society_unicorn', 0, NULL),
(487, 'society_taxi', 0, NULL),
(488, 'society_journalist', 0, NULL),
(489, 'society_planeshop', 0, NULL),
(490, 'society_realestateagent', 0, NULL),
(491, 'society_marabunta', 0, NULL),
(492, 'society_tabac', 0, NULL),
(493, 'society_police', 0, NULL),
(494, 'society_vigne', 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `addon_inventory`
--

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
('property', 'Propriété', 0),
('society_ambulance', 'Ambulance', 1),
('society_avocat', 'Avocat', 1),
('society_ballas', 'ballas', 1),
('society_boatshop', 'Concessionnaire Bateaux', 1),
('society_carshop', 'Concessionnaire Voitures', 1),
('society_casino', 'Casino', 1),
('society_families', 'families', 1),
('society_journalist', 'Journaliste', 1),
('society_krzcorp', 'Korioz Corp.', 1),
('society_marabunta', 'marabunta', 1),
('society_mecano', 'Mécano', 1),
('society_planeshop', 'Concessionnaire Avions', 1),
('society_police', 'Police', 1),
('society_realestateagent', 'Agent immobilier', 1),
('society_tabac', 'Tabac', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1),
('society_unicorn_fridge', 'Unicorn (frigo)', 1),
('society_vagos', 'vagos', 1),
('society_vigne', 'Vigneron', 1),
('trunk', 'Coffre Véhicule', 0);

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `banlist`
--

CREATE TABLE `banlist` (
  `licenseid` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetName` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `sourceName` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` int(11) NOT NULL,
  `expiration` int(11) NOT NULL,
  `permanent` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `banlisthistory`
--

CREATE TABLE `banlisthistory` (
  `id` int(11) NOT NULL,
  `licenseid` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetName` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `sourceName` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` int(11) NOT NULL,
  `expiration` int(11) NOT NULL,
  `permanent` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `sender` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `target_type` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `cardealer_vehicles`
--

CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL,
  `society` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT 'carshop'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `characters`
--

CREATE TABLE `characters` (
  `id` int(11) NOT NULL,
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `dateofbirth` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `sex` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT 'M',
  `height` varchar(128) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `datastore`
--

CREATE TABLE `datastore` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `datastore`
--

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('property', 'Propriété', 0),
('society_ambulance', 'Ambulance', 1),
('society_avocat', 'Avocat', 1),
('society_ballas', 'ballas', 1),
('society_boatshop', 'Concessionnaire Bateaux', 1),
('society_carshop', 'Concessionnaire Voitures', 1),
('society_families', 'families', 1),
('society_journalist', 'Journaliste', 1),
('society_marabunta', 'marabunta', 1),
('society_mecano', 'Mécano', 1),
('society_planeshop', 'Concessionnaire Avions', 1),
('society_police', 'Police', 1),
('society_realestateagent', 'Agent immobilier', 1),
('society_tabac', 'Tabac', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1),
('society_vagos', 'vagos', 1),
('society_vigne', 'Vigneron', 1),
('trunk', 'Coffre Véhicule', 0),
('user_ears', 'Ears', 0),
('user_glasses', 'Glasses', 0),
('user_helmet', 'Helmet', 0),
('user_mask', 'Mask', 0);

-- --------------------------------------------------------

--
-- Structure de la table `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `data` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `data`, `owner`) VALUES
(132, 'user_glasses', '{\"hasGlasses\":true,\"skin\":{\"glasses_1\":1,\"glasses_2\":0}}', 'license:869b0188c0f7a642d5b51d38a001bab349264fcc'),
(174, 'society_ballas', '{\"garage\":[]}', NULL),
(483, 'society_ambulance', '{}', NULL),
(484, 'society_avocat', '{}', NULL),
(485, 'society_boatshop', '{}', NULL),
(486, 'society_carshop', '{}', NULL),
(487, 'society_families', '{}', NULL),
(488, 'society_journalist', '{}', NULL),
(489, 'society_marabunta', '{}', NULL),
(490, 'society_mecano', '{}', NULL),
(491, 'society_planeshop', '{}', NULL),
(492, 'society_police', '{}', NULL),
(493, 'society_realestateagent', '{}', NULL),
(494, 'society_tabac', '{}', NULL),
(495, 'society_taxi', '{}', NULL),
(496, 'society_unicorn', '{}', NULL),
(497, 'society_vagos', '{}', NULL),
(498, 'society_vigne', '{}', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `dpkeybinds`
--

CREATE TABLE `dpkeybinds` (
  `id` varchar(50) DEFAULT NULL,
  `keybind1` varchar(50) DEFAULT 'num4',
  `emote1` varchar(255) DEFAULT '',
  `keybind2` varchar(50) DEFAULT 'num5',
  `emote2` varchar(255) DEFAULT '',
  `keybind3` varchar(50) DEFAULT 'num6',
  `emote3` varchar(255) DEFAULT '',
  `keybind4` varchar(50) DEFAULT 'num7',
  `emote4` varchar(255) DEFAULT '',
  `keybind5` varchar(50) DEFAULT 'num8',
  `emote5` varchar(255) DEFAULT '',
  `keybind6` varchar(50) DEFAULT 'num9',
  `emote6` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dpkeybinds`
--

INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
('steam:1100001366a1521', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');

-- --------------------------------------------------------

--
-- Structure de la table `fine_types`
--

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Usage abusif du klaxon', 50, 0),
(2, 'Franchir une ligne continue', 100, 0),
(3, 'Circulation à contresens', 150, 0),
(4, 'Demi-tour non autorisé', 250, 0),
(5, 'Circulation hors-route', 300, 0),
(6, 'Non-respect des distances de sécurité', 100, 0),
(7, 'Arrêt dangereux / interdit', 300, 0),
(8, 'Stationnement gênant / interdit', 300, 0),
(9, 'Non respect  de la priorité à droite', 200, 0),
(10, 'Non-respect à un véhicule prioritaire', 300, 0),
(11, 'Non-respect d\'un stop', 200, 0),
(12, 'Non-respect d\'un feu rouge', 400, 0),
(13, 'Dépassement dangereux', 500, 0),
(14, 'Véhicule non en état', 600, 0),
(15, 'Conduite sans permis', 2000, 0),
(16, 'Délit de fuite', 19680, 0),
(17, 'Excès de vitesse < 5 kmh', 2450, 0),
(18, 'Excès de vitesse 5-15 kmh', 4800, 0),
(19, 'Excès de vitesse 15-30 kmh', 8450, 0),
(20, 'Excès de vitesse > 30 kmh', 9980, 0),
(21, 'Entrave de la circulation', 2130, 1),
(22, 'Dégradation de la voie publique', 1300, 1),
(23, 'Trouble à l\'ordre publique', 1970, 1),
(24, 'Entrave opération de police', 15630, 1),
(25, 'Insulte envers / entre civils', 14300, 1),
(26, 'Outrage à agent de police', 19600, 1),
(27, 'Menace verbale ou intimidation evers civils', 9630, 1),
(28, 'Menace verbale ou intimidation envers policier', 8600, 1),
(29, 'Manifestation illégale', 4960, 1),
(30, 'Tentative de corruption', 17800, 1),
(31, 'Arme blanche sortie en ville', 21500, 2),
(32, 'Arme léthale sortie en ville', 27830, 2),
(33, 'Port d\'arme non autorisé (défaut de license)', 24600, 2),
(34, 'Port d\'arme illégal', 28900, 2),
(35, 'Pris en flag lockpick', 14600, 2),
(36, 'Vol de voiture', 13300, 2),
(37, 'Vente de drogue', 45600, 2),
(38, 'Fabriquation de drogue', 34650, 2),
(39, 'Possession de drogue', 39650, 2),
(40, 'Prise d\'ôtage civil', 75000, 2),
(41, 'Prise d\'ôtage agent de l\'état', 125000, 2),
(42, 'Braquage particulier', 86000, 2),
(43, 'Braquage magasin', 52000, 2),
(44, 'Braquage de banque', 136000, 2),
(45, 'Tir sur civil', 56300, 3),
(46, 'Tir sur agent de l\'état', 65300, 3),
(47, 'Tentative de meurtre sur civil', 65300, 3),
(48, 'Tentative de meurtre sur agent de l\'état', 72300, 3),
(49, 'Meurtre sur civil', 82300, 3),
(50, 'Meurte sur agent de l\'état', 102300, 3),
(51, 'Meurtre involontaire', 36000, 3),
(52, 'Escroquerie à l\'entreprise', 82360, 2),
(53, 'Vol de Vehicule Aeriens', 62220, 1),
(54, 'Default de permis Aeriens', 28920, 1),
(55, 'Default de permis de BATEAU', 22630, 1),
(56, 'Vol de Vehicule Aquatique', 42560, 1),
(57, 'Refus d\'obtempérer', 21300, 2),
(58, 'Usurpation d\'identité', 22300, 2),
(59, 'Complice du meurtre ', 35600, 2),
(60, 'Tentative de kidnapping', 36500, 2);

-- --------------------------------------------------------

--
-- Structure de la table `items`
--

CREATE TABLE `items` (
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `weight` float NOT NULL DEFAULT 1,
  `rare` tinyint(1) NOT NULL DEFAULT 0,
  `can_remove` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `items`
--

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
('armor', 'Kevlar', 3, 0, 1),
('bandage', 'Bandage', 0.2, 0, 1),
('basic_cuff', 'Menottes Basique', 0.3, 0, 1),
('basic_key', 'Clefs de Menottes Basique', 0.1, 0, 1),
('beer', 'Bière', 0.1, 0, 1),
('blowpipe', 'Chalumeaux', 1.5, 0, 1),
('bread', 'Pain', 0.1, 0, 1),
('burger', 'Burger', 0.3, 0, 1),
('carokit', 'Kit carosserie', 3, 0, 1),
('carotool', 'Outils carosserie', 4, 0, 1),
('chip', 'Jeton', 0, 0, 1),
('cigarette', 'Cigarette', 0.1, 0, 1),
('clip', 'Chargeur', 0.3, 0, 1),
('coca', 'Coca', 0.1, 0, 1),
('coke', 'Coke', 1, 0, 1),
('coke_pooch', 'Pochon de coke', 0.25, 0, 1),
('cola', 'Cola', 0.2, 0, 1),
('defibrillateur', 'Défibrillateur', 2, 0, 1),
('feuille_coca', 'Feuille de coca', 1, 0, 1),
('firstaidkit', 'Trousse premier secours', 1, 0, 1),
('fixkit', 'Kit réparation', 1.5, 0, 1),
('fixtool', 'Outils réparation', 2, 0, 1),
('gazbottle', 'Bouteille de gaz', 2, 0, 1),
('gitanes', 'Gitanes', 0.1, 0, 1),
('grand_cru', 'Grand cru', 0.2, 0, 1),
('grapperaisin', 'Grappe de raisin', 0.3, 0, 1),
('handcuff', 'Serre câble ', 0.3, 0, 1),
('ice', 'Glaçon', 0.1, 0, 1),
('jager', 'Jägermeister', 0.5, 0, 1),
('jagerbomb', 'Jägermeister', 0.5, 0, 1),
('jagercerbere', 'Jäger Cerbère', 0.5, 0, 1),
('jumelles', 'Jumelles', 0.25, 0, 1),
('jus_coca', 'Jus de coca', 0.5, 0, 1),
('jus_raisin', 'Jus de raisin', 0.5, 0, 1),
('jusfruit', 'Jus de fruits', 0.5, 0, 1),
('limonade', 'Limonade', 0.5, 0, 1),
('lockpick', 'Pied de Biche', 1, 0, 1),
('malbora', 'Malboro', 0.1, 0, 1),
('martini', 'Martini blanc', 1, 0, 1),
('meat', 'Viande', 0.3, 0, 1),
('medikit', 'Medikit', 2, 0, 1),
('menthe', 'Feuille de menthe', 1, 0, 1),
('meth', 'Meth', 1, 0, 1),
('meth_pooch', 'Pochon de meth', 0.25, 0, 1),
('metreshooter', 'Mètre de shooter', 0.1, 0, 1),
('mixapero', 'Mix Apéritif', 0.1, 0, 1),
('mojito', 'Mojito', 0.1, 0, 1),
('opium', 'Opium', 1, 0, 1),
('opium_pooch', 'Pochon d\'opium', 0.25, 0, 1),
('orange', 'Orange', 0.1, 0, 1),
('orange_juice', 'Jus d\'orange', 0.3, 0, 1),
('oxygen_mask', 'Masque à Oxygène', 0.6, 0, 1),
('pepperspray', 'Gazeuse', 1, 0, -1),
('phone', 'Téléphone', 0.3, 0, 1),
('piluleoubli', 'GHB', 1, 0, 1),
('police_cuff', 'Menottes LSPD', 0.3, 0, 1),
('police_key', 'Clefs de Menottes LSPD', 0.1, 0, 1),
('pomme', 'Pomme', 0.1, 0, 1),
('radio', 'Radio', 0.5, 0, 1),
('raisin', 'Raisin', 0.3, 0, 1),
('redbull', 'Redbull', 0.3, 0, 1),
('repairkit', 'Repairkit', 2, 0, 1),
('rhum', 'Rhum', 0.4, 0, 1),
('rhumcoca', 'Rhum-Coca', 0.5, 0, 1),
('rhumfruit', 'Rhum-Jus de fruits', 0.5, 0, 1),
('tabac', 'Tabac', 0.5, 0, 1),
('tabacblond', 'Tabac Blond', 0.5, 0, 1),
('tabacblondsec', 'Tabac Blond Séché', 0.5, 0, 1),
('tabacbrun', 'Tabac Brun', 0.5, 0, 1),
('tabacbrunsec', 'Tabac Brun Séché', 0.5, 0, 1),
('tarte_pomme', 'Tarte aux Pommes', 0.3, 0, 1),
('teqpaf', 'Teq\'paf', 0.5, 0, 1),
('tequila', 'Tequila', 0.5, 0, 1),
('vine', 'Vin', 0.5, 0, 1),
('vittvin', 'Vin Blanc', 0.5, 0, 1),
('vodka', 'Vodka', 0.3, 0, 1),
('vodkaenergy', 'Vodka-Energy', 0.4, 0, 1),
('vodkafruit', 'Vodka-Jus de fruits', 0.3, 0, 1),
('vodkaredbull', 'Vodka-Redbull', 0.3, 0, 1),
('water', 'Bouteille d\'eau', 0.1, 0, 1),
('weed', 'Weed', 1, 0, 1),
('weed_pooch', 'Pochon de weed', 0.25, 0, 1),
('whisky', 'Whisky', 0.4, 0, 1),
('whiskycoca', 'Whisky-coca', 0.5, 0, 1),
('zetony', 'Jetons', -1, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('ambulance', 'Ambulance', 1),
('avocat', 'Avocat', 1),
('ballas', 'ballas', 1),
('boatshop', 'Concessionnaire Bateaux', 1),
('carshop', 'Concessionnaire Voitures', 1),
('families', 'families', 1),
('journalist', 'Journaliste', 1),
('marabunta', 'marabunta', 1),
('mecano', 'Mécano', 1),
('planeshop', 'Concessionnaire Avions', 1),
('police', '‍L.S.P.D', 1),
('realestateagent', 'Agent immobilier', 1),
('taxi', 'Taxi', 1),
('unemployed', 'Chomeur', 0),
('unemployed2', 'Aucune', 1),
('unicorn', 'Unicorn', 1),
('vagos', 'vagos', 1),
('vigne', 'Vigneron', 1);

-- --------------------------------------------------------

--
-- Structure de la table `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext COLLATE utf8mb4_bin NOT NULL,
  `skin_female` longtext COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'ambulance', 0, 'ambulance', 'Ambulancier', 350, '{\"beard_1\":0,\"eye_color\":0,\"makeup_3\":0,\"blemishes_1\":0,\"mask_1\":0,\"glasses_1\":0,\"bproof_2\":0,\"lipstick_3\":0,\"beard_2\":0,\"torso_1\":249,\"pants_1\":24,\"blush_3\":0,\"torso_2\":0,\"blush_2\":0,\"complexion_1\":0,\"lipstick_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"sun_2\":0,\"complexion_2\":0,\"chain_2\":0,\"sun_1\":0,\"eyebrows_3\":0,\"tshirt_1\":94,\"hair_color_1\":0,\"eyebrows_2\":0,\"mask_2\":0,\"helmet_2\":0,\"hair_2\":0,\"beard_3\":0,\"moles_2\":0,\"bags_1\":0,\"arms_2\":0,\"decals_2\":0,\"age_1\":0,\"ears_1\":-1,\"moles_1\":0,\"bracelets_2\":0,\"watches_1\":-1,\"face\":0,\"bags_2\":0,\"pants_2\":5,\"chest_3\":0,\"blemishes_2\":0,\"chest_1\":0,\"hair_color_2\":0,\"blush_1\":0,\"tshirt_2\":0,\"helmet_1\":-1,\"hair_1\":0,\"shoes_2\":0,\"lipstick_4\":0,\"eyebrows_4\":0,\"ears_2\":0,\"watches_2\":0,\"bodyb_2\":0,\"bodyb_1\":0,\"eyebrows_1\":0,\"decals_1\":57,\"makeup_4\":0,\"glasses_2\":0,\"age_2\":0,\"shoes_1\":8,\"arms\":90,\"chain_1\":126,\"bracelets_1\":-1,\"chest_2\":0,\"beard_4\":0,\"makeup_1\":0,\"lipstick_1\":0,\"skin\":0,\"sex\":0}', '{\"age_1\":0,\"blush_3\":0,\"complexion_2\":0,\"bracelets_2\":0,\"chain_2\":0,\"bodyb_1\":0,\"pants_1\":23,\"hair_1\":4,\"lipstick_4\":0,\"bproof_2\":0,\"bodyb_2\":0,\"shoes_2\":1,\"sun_2\":0,\"blush_1\":0,\"shoes_1\":4,\"decals_1\":65,\"eyebrows_2\":10,\"makeup_1\":6,\"glasses\":0,\"chest_3\":0,\"bags_2\":0,\"arms\":105,\"watches_1\":2,\"arms_2\":0,\"hair_color_1\":28,\"beard_3\":0,\"chain_1\":96,\"chest_1\":0,\"mask_1\":0,\"sex\":1,\"decals_2\":0,\"bproof_1\":0,\"hair_color_2\":28,\"eyebrows_3\":61,\"makeup_2\":8,\"helmet_1\":-1,\"bags_1\":0,\"lipstick_3\":23,\"face\":45,\"bracelets_1\":-1,\"tshirt_1\":29,\"beard_4\":0,\"moles_2\":10,\"mask_2\":0,\"helmet_2\":0,\"makeup_3\":25,\"skin\":10,\"beard_2\":0,\"shoes\":1,\"blemishes_2\":0,\"moles_1\":0,\"pants_2\":0,\"complexion_1\":0,\"glasses_2\":1,\"age_2\":0,\"ears_1\":12,\"watches_2\":0,\"eyebrows_4\":0,\"eye_color\":3,\"lipstick_2\":4,\"glasses_1\":11,\"eyebrows_1\":1,\"ears_2\":0,\"makeup_4\":18,\"sun_1\":0,\"blush_2\":0,\"torso_2\":0,\"chest_2\":0,\"hair_2\":0,\"tshirt_2\":0,\"torso_1\":257,\"lipstick_1\":1,\"blemishes_1\":0,\"beard_1\":0}'),
(2, 'ambulance', 1, 'doctor', 'Medecin', 500, '{\"beard_1\":0,\"eye_color\":0,\"makeup_3\":0,\"blemishes_1\":0,\"mask_1\":0,\"glasses_1\":0,\"bproof_2\":0,\"lipstick_3\":0,\"beard_2\":0,\"torso_1\":13,\"pants_1\":24,\"blush_3\":0,\"torso_2\":3,\"blush_2\":0,\"complexion_1\":0,\"lipstick_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"sun_2\":0,\"complexion_2\":0,\"chain_2\":0,\"sun_1\":0,\"eyebrows_3\":0,\"tshirt_1\":15,\"hair_color_1\":0,\"eyebrows_2\":0,\"mask_2\":0,\"helmet_2\":0,\"hair_2\":0,\"beard_3\":0,\"moles_2\":0,\"bags_1\":0,\"arms_2\":0,\"decals_2\":0,\"age_1\":0,\"ears_1\":-1,\"moles_1\":0,\"bracelets_2\":0,\"watches_1\":-1,\"face\":0,\"bags_2\":0,\"pants_2\":5,\"chest_3\":0,\"blemishes_2\":0,\"chest_1\":0,\"hair_color_2\":0,\"blush_1\":0,\"tshirt_2\":0,\"helmet_1\":-1,\"hair_1\":0,\"shoes_2\":9,\"lipstick_4\":0,\"eyebrows_4\":0,\"ears_2\":0,\"watches_2\":0,\"bodyb_2\":0,\"bodyb_1\":0,\"eyebrows_1\":0,\"decals_1\":57,\"makeup_4\":0,\"glasses_2\":0,\"age_2\":0,\"shoes_1\":57,\"arms\":92,\"chain_1\":126,\"bracelets_1\":-1,\"chest_2\":0,\"beard_4\":0,\"makeup_1\":0,\"lipstick_1\":0,\"skin\":0,\"sex\":0}', '{\"age_1\":0,\"blush_3\":0,\"complexion_2\":0,\"bracelets_2\":0,\"chain_2\":0,\"bodyb_1\":0,\"pants_1\":51,\"hair_1\":4,\"lipstick_4\":0,\"bproof_2\":0,\"bodyb_2\":0,\"shoes_2\":7,\"sun_2\":0,\"blush_1\":0,\"shoes_1\":1,\"decals_1\":66,\"eyebrows_2\":10,\"makeup_1\":6,\"glasses\":0,\"chest_3\":0,\"bags_2\":0,\"arms\":106,\"watches_1\":2,\"arms_2\":0,\"hair_color_1\":28,\"beard_3\":0,\"chain_1\":96,\"chest_1\":0,\"mask_1\":0,\"sex\":1,\"decals_2\":0,\"bproof_1\":0,\"hair_color_2\":28,\"eyebrows_3\":61,\"makeup_2\":8,\"helmet_1\":-1,\"bags_1\":0,\"lipstick_3\":23,\"face\":45,\"bracelets_1\":-1,\"tshirt_1\":29,\"beard_4\":0,\"moles_2\":10,\"mask_2\":0,\"helmet_2\":0,\"makeup_3\":25,\"skin\":10,\"beard_2\":0,\"shoes\":1,\"blemishes_2\":0,\"moles_1\":0,\"pants_2\":0,\"complexion_1\":0,\"glasses_2\":1,\"age_2\":0,\"ears_1\":12,\"watches_2\":0,\"eyebrows_4\":0,\"eye_color\":3,\"lipstick_2\":4,\"glasses_1\":11,\"eyebrows_1\":1,\"ears_2\":0,\"makeup_4\":18,\"sun_1\":0,\"blush_2\":0,\"torso_2\":2,\"chest_2\":0,\"hair_2\":0,\"tshirt_2\":0,\"torso_1\":9,\"lipstick_1\":1,\"blemishes_1\":0,\"beard_1\":0}'),
(3, 'ambulance', 2, 'chief_doctor', 'Médecin-Chef', 700, '{\"beard_1\":0,\"eye_color\":0,\"makeup_3\":0,\"blemishes_1\":0,\"mask_1\":0,\"glasses_1\":0,\"bproof_2\":0,\"lipstick_3\":0,\"beard_2\":0,\"torso_1\":250,\"pants_1\":24,\"blush_3\":0,\"torso_2\":0,\"blush_2\":0,\"complexion_1\":0,\"lipstick_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"sun_2\":0,\"complexion_2\":0,\"chain_2\":0,\"sun_1\":0,\"eyebrows_3\":0,\"tshirt_1\":15,\"hair_color_1\":0,\"eyebrows_2\":0,\"mask_2\":0,\"helmet_2\":0,\"hair_2\":0,\"beard_3\":0,\"moles_2\":0,\"bags_1\":0,\"arms_2\":0,\"decals_2\":0,\"age_1\":0,\"ears_1\":-1,\"moles_1\":0,\"bracelets_2\":0,\"watches_1\":-1,\"face\":0,\"bags_2\":0,\"pants_2\":5,\"chest_3\":0,\"blemishes_2\":0,\"chest_1\":0,\"hair_color_2\":0,\"blush_1\":0,\"tshirt_2\":0,\"helmet_1\":-1,\"hair_1\":0,\"shoes_2\":0,\"lipstick_4\":0,\"eyebrows_4\":0,\"ears_2\":0,\"watches_2\":0,\"bodyb_2\":0,\"bodyb_1\":0,\"eyebrows_1\":0,\"decals_1\":57,\"makeup_4\":0,\"glasses_2\":0,\"age_2\":0,\"shoes_1\":26,\"arms\":74,\"chain_1\":126,\"bracelets_1\":-1,\"chest_2\":0,\"beard_4\":0,\"makeup_1\":0,\"lipstick_1\":0,\"skin\":0,\"sex\":0}', '{\"age_1\":0,\"blush_3\":0,\"complexion_2\":0,\"bracelets_2\":0,\"chain_2\":0,\"bodyb_1\":0,\"pants_1\":50,\"hair_1\":4,\"lipstick_4\":0,\"bproof_2\":0,\"bodyb_2\":0,\"shoes_2\":2,\"sun_2\":0,\"blush_1\":0,\"shoes_1\":4,\"decals_1\":66,\"eyebrows_2\":10,\"makeup_1\":6,\"glasses\":0,\"chest_3\":0,\"bags_2\":0,\"arms\":96,\"watches_1\":2,\"arms_2\":0,\"hair_color_1\":28,\"beard_3\":0,\"chain_1\":96,\"chest_1\":0,\"mask_1\":0,\"sex\":1,\"decals_2\":0,\"bproof_1\":0,\"hair_color_2\":28,\"eyebrows_3\":61,\"makeup_2\":8,\"helmet_1\":-1,\"bags_1\":0,\"lipstick_3\":23,\"face\":45,\"bracelets_1\":-1,\"tshirt_1\":29,\"beard_4\":0,\"moles_2\":10,\"mask_2\":0,\"helmet_2\":0,\"makeup_3\":25,\"skin\":10,\"beard_2\":0,\"shoes\":1,\"blemishes_2\":0,\"moles_1\":0,\"pants_2\":0,\"complexion_1\":0,\"glasses_2\":1,\"age_2\":0,\"ears_1\":12,\"watches_2\":0,\"eyebrows_4\":0,\"eye_color\":3,\"lipstick_2\":4,\"glasses_1\":11,\"eyebrows_1\":1,\"ears_2\":0,\"makeup_4\":18,\"sun_1\":0,\"blush_2\":0,\"torso_2\":0,\"chest_2\":0,\"hair_2\":0,\"tshirt_2\":0,\"torso_1\":258,\"lipstick_1\":1,\"blemishes_1\":0,\"beard_1\":0}'),
(4, 'ambulance', 3, 'boss', 'Directeur', 900, '{\"beard_1\":0,\"eye_color\":0,\"makeup_3\":0,\"blemishes_1\":0,\"mask_1\":0,\"glasses_1\":5,\"bproof_2\":0,\"lipstick_3\":0,\"eyebrows_4\":0,\"torso_1\":102,\"pants_1\":24,\"blush_3\":0,\"torso_2\":1,\"blush_2\":0,\"complexion_1\":0,\"lipstick_2\":0,\"makeup_2\":0,\"bproof_1\":35,\"sun_2\":0,\"makeup_4\":0,\"chain_2\":0,\"sun_1\":0,\"eyebrows_3\":0,\"tshirt_1\":72,\"hair_color_1\":14,\"hair_1\":49,\"mask_2\":0,\"helmet_2\":0,\"hair_2\":0,\"beard_3\":0,\"moles_2\":0,\"bags_1\":0,\"arms_2\":0,\"decals_2\":0,\"age_1\":0,\"ears_1\":-1,\"moles_1\":0,\"lipstick_4\":0,\"arms\":75,\"face\":0,\"eyebrows_1\":0,\"pants_2\":5,\"chest_3\":0,\"chest_1\":0,\"bodyb_2\":0,\"beard_2\":0,\"glasses_2\":1,\"tshirt_2\":4,\"helmet_1\":-1,\"blush_1\":0,\"bags_2\":0,\"decals_1\":0,\"watches_1\":1,\"chain_1\":126,\"watches_2\":0,\"bracelets_1\":-1,\"bodyb_1\":0,\"bracelets_2\":0,\"ears_2\":0,\"lipstick_1\":0,\"blemishes_2\":0,\"age_2\":0,\"shoes_2\":1,\"complexion_2\":0,\"shoes_1\":30,\"beard_4\":0,\"chest_2\":0,\"hair_color_2\":0,\"makeup_1\":0,\"eyebrows_2\":0,\"skin\":0,\"sex\":0}', '{\"age_1\":0,\"blush_3\":0,\"complexion_2\":0,\"bracelets_2\":0,\"chain_2\":0,\"bodyb_1\":0,\"pants_1\":51,\"hair_1\":4,\"lipstick_4\":0,\"bproof_2\":0,\"bodyb_2\":0,\"shoes_2\":2,\"sun_2\":0,\"blush_1\":0,\"shoes_1\":81,\"decals_1\":66,\"eyebrows_2\":10,\"makeup_1\":6,\"glasses\":0,\"chest_3\":0,\"bags_2\":0,\"arms\":96,\"watches_1\":2,\"arms_2\":0,\"hair_color_1\":28,\"beard_3\":0,\"chain_1\":96,\"chest_1\":0,\"mask_1\":0,\"sex\":1,\"decals_2\":0,\"bproof_1\":0,\"hair_color_2\":28,\"eyebrows_3\":61,\"makeup_2\":8,\"helmet_1\":-1,\"bags_1\":0,\"lipstick_3\":23,\"face\":45,\"bracelets_1\":-1,\"tshirt_1\":29,\"beard_4\":0,\"moles_2\":10,\"mask_2\":0,\"helmet_2\":0,\"makeup_3\":25,\"skin\":10,\"beard_2\":0,\"shoes\":1,\"blemishes_2\":0,\"moles_1\":0,\"pants_2\":0,\"complexion_1\":0,\"glasses_2\":1,\"age_2\":0,\"ears_1\":12,\"watches_2\":0,\"eyebrows_4\":0,\"eye_color\":3,\"lipstick_2\":4,\"glasses_1\":11,\"eyebrows_1\":1,\"ears_2\":0,\"makeup_4\":18,\"sun_1\":0,\"blush_2\":0,\"torso_2\":2,\"chest_2\":0,\"hair_2\":0,\"tshirt_2\":0,\"torso_1\":14,\"lipstick_1\":1,\"blemishes_1\":0,\"beard_1\":0}'),
(7, 'avocat', 0, 'recruit', 'Recrue', 350, '{\"tshirt_1\":57,\"torso_1\":55,\"arms\":0,\"pants_1\":35,\"glasses\":0,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":5,\"face\":19,\"glasses_2\":1,\"torso_2\":0,\"shoes\":24,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"pants_2\":0,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":8}', '{\"tshirt_1\":34,\"torso_1\":48,\"shoes\":24,\"pants_1\":34,\"torso_2\":0,\"decals_2\":0,\"hair_color_2\":0,\"glasses\":0,\"helmet_2\":0,\"hair_2\":3,\"face\":21,\"decals_1\":0,\"glasses_2\":1,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"pants_2\":0,\"arms\":14,\"hair_color_1\":10,\"tshirt_2\":0,\"helmet_1\":57}'),
(8, 'avocat', 1, 'boss', 'Patron', 400, '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":41,\"torso_2\":0,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"decals_1\":8,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":44,\"pants_1\":34,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":21,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"hair_color_1\":10,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"shoes\":24,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}'),
(43, 'mecano', 0, 'recrue', 'Recrue', 450, '{}', '{}'),
(44, 'mecano', 1, 'novice', 'Novice', 350, '{}', '{}'),
(45, 'mecano', 2, 'experimente', 'Experimente', 450, '{}', '{}'),
(46, 'mecano', 3, 'chief', 'Chef d\'equipe', 550, '{}', '{}'),
(47, 'mecano', 4, 'boss', 'Patron', 500, '{}', '{}'),
(50, 'police', 0, 'recruit', 'Recrue', 100, '{}', '{}'),
(51, 'police', 1, 'officer', 'Officier', 200, '{}', '{}'),
(52, 'police', 2, 'sergeant', 'Caporal', 300, '{}', '{}'),
(53, 'police', 3, 'chef', 'Sergent', 400, '{}', '{}'),
(54, 'police', 4, 'lieutenant', 'Lieutenant', 500, '{}', '{}'),
(55, 'police', 5, 'intendent', 'Capitaine', 600, '{}', '{}'),
(56, 'police', 6, 'boss', 'Chef de police', 800, '{}', '{}'),
(66, 'taxi', 0, 'recrue', 'Recrue', 350, '{}', '{}'),
(67, 'taxi', 1, 'novice', 'Novice', 350, '{}', '{}'),
(68, 'taxi', 2, 'experimente', 'Experimente', 350, '{}', '{}'),
(69, 'taxi', 3, 'uber', 'Uber', 350, '{}', '{}'),
(70, 'taxi', 4, 'boss', 'Patron', 350, '{}', '{}'),
(74, 'unemployed', 0, 'unemployed', 'RSA', 25, '{}', '{}'),
(75, 'unicorn', 0, 'barman', 'Barman', 400, '{}', '{}'),
(76, 'unicorn', 1, 'dancer', 'Videur', 300, '{}', '{}'),
(77, 'unicorn', 2, 'viceboss', 'Co-gérant', 300, '{}', '{}'),
(78, 'unicorn', 3, 'boss', 'Gérant', 200, '{}', '{}'),
(79, 'vigne', 0, 'recrue', 'Recrue', 100, '{\"tshirt_1\":59,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(80, 'vigne', 1, 'novice', 'Novice', 500, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(81, 'vigne', 2, 'cdisenior', 'Chef de Chai', 300, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(82, 'vigne', 3, 'boss', 'Patron', 200, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(148, 'realestateagent', 0, 'location', 'Location', 250, '{}', '{}'),
(149, 'realestateagent', 1, 'vendeur', 'Vendeur', 350, '{}', '{}'),
(150, 'realestateagent', 2, 'gestion', 'Gestion', 450, '{}', '{}'),
(151, 'realestateagent', 3, 'boss', 'Patron', 300, '{}', '{}'),
(157, 'unemployed2', 0, 'unemployed2', 'Citoyen', 0, '{}', '{}'),
(182, 'journalist', 0, 'stagiaire', 'Stagiaire', 250, '{}', '{}'),
(183, 'journalist', 1, 'reporter', 'Reporter', 200, '{}', '{}'),
(184, 'journalist', 2, 'investigator', 'Investigateur', 200, '{}', '{}'),
(185, 'journalist', 3, 'boss', 'Directeur', 200, '{}', '{}'),
(462, 'carshop', 0, 'novice', 'Novice', 200, '{}', '{}'),
(463, 'carshop', 1, 'sergeant', 'Intermediaire', 200, '{}', '{}'),
(464, 'carshop', 2, 'experienced', 'Experimente', 200, '{}', '{}'),
(465, 'carshop', 3, 'boss', 'Patron', 200, '{}', '{}'),
(466, 'planeshop', 3, 'boss', 'Patron', 200, '{}', '{}'),
(467, 'planeshop', 2, 'experienced', 'Experimente', 200, '{}', '{}'),
(468, 'planeshop', 1, 'sergeant', 'Intermediaire', 200, '{}', '{}'),
(469, 'planeshop', 0, 'novice', 'Novice', 200, '{}', '{}'),
(470, 'boatshop', 3, 'boss', 'Patron', 200, '{}', '{}'),
(471, 'boatshop', 2, 'experienced', 'Experimente', 200, '{}', '{}'),
(472, 'boatshop', 1, 'sergeant', 'Intermediaire', 100, '{}', '{}'),
(473, 'boatshop', 0, 'novice', 'Novice', 100, '{}', '{}'),
(487, 'ballas', 0, 'rookie', 'Associé', 0, '{}', '{}'),
(488, 'ballas', 1, 'member', 'Soldat', 0, '{}', '{}'),
(489, 'ballas', 2, 'elite', 'Elite', 0, '{}', '{}'),
(490, 'ballas', 3, 'lieutenant', 'Lieutenant', 0, '{}', '{}'),
(491, 'ballas', 4, 'viceboss', 'Bras Droit', 0, '{}', '{}'),
(492, 'ballas', 5, 'boss', 'Patron', 0, '{}', '{}'),
(493, 'families', 0, 'rookie', 'Associé', 0, '{}', '{}'),
(494, 'families', 1, 'member', 'Soldat', 0, '{}', '{}'),
(495, 'families', 2, 'elite', 'Elite', 0, '{}', '{}'),
(496, 'families', 3, 'lieutenant', 'Lieutenant', 0, '{}', '{}'),
(497, 'families', 4, 'viceboss', 'Bras Droit', 0, '{}', '{}'),
(498, 'families', 5, 'boss', 'Patron', 0, '{}', '{}'),
(499, 'vagos', 0, 'rookie', 'Associé', 0, '{}', '{}'),
(500, 'vagos', 1, 'member', 'Soldat', 0, '{}', '{}'),
(501, 'vagos', 2, 'elite', 'Elite', 0, '{}', '{}'),
(502, 'vagos', 3, 'lieutenant', 'Lieutenant', 0, '{}', '{}'),
(503, 'vagos', 4, 'viceboss', 'Bras Droit', 0, '{}', '{}'),
(504, 'vagos', 5, 'boss', 'Patron', 0, '{}', '{}'),
(505, 'marabunta', 0, 'rookie', 'Associé', 0, '{}', '{}'),
(506, 'marabunta', 1, 'member', 'Soldat', 0, '{}', '{}'),
(507, 'marabunta', 2, 'elite', 'Elite', 0, '{}', '{}'),
(508, 'marabunta', 3, 'lieutenant', 'Lieutenant', 0, '{}', '{}'),
(509, 'marabunta', 4, 'viceboss', 'Bras Droit', 0, '{}', '{}'),
(510, 'marabunta', 5, 'boss', 'Patron', 0, '{}', '{}');

-- --------------------------------------------------------

--
-- Structure de la table `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(60) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('dmv', 'Code de la route'),
('drive', 'Permis de conduire'),
('drive_bike', 'Permis moto'),
('drive_truck', 'Permis camion'),
('weapon', 'PPA 1'),
('weapon2', 'PPA 2');

-- --------------------------------------------------------

--
-- Structure de la table `open_car`
--

CREATE TABLE `open_car` (
  `id` int(11) NOT NULL,
  `owner` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `plate` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL,
  `NB` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `owned_properties`
--

CREATE TABLE `owned_properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `owner` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `plate` varchar(12) COLLATE utf8mb4_bin NOT NULL,
  `vehicle` longtext COLLATE utf8mb4_bin NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT 'car',
  `state` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `phone_app_chat`
--

CREATE TABLE `phone_app_chat` (
  `id` int(11) NOT NULL,
  `channel` varchar(20) CHARACTER SET utf8 NOT NULL,
  `message` varchar(255) CHARACTER SET utf8 NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `phone_calls`
--

CREATE TABLE `phone_calls` (
  `id` int(11) NOT NULL,
  `owner` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL,
  `transmitter` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `receiver` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `phone_users_contacts`
--

CREATE TABLE `phone_users_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `number` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `display` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `playerstattoos`
--

CREATE TABLE `playerstattoos` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `tattoos` longtext COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `playerstattoos`
--

INSERT INTO `playerstattoos` (`identifier`, `tattoos`) VALUES
('license:869b0188c0f7a642d5b51d38a001bab349264fcc', '[]');

-- --------------------------------------------------------

--
-- Structure de la table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `entering` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `exit` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `inside` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `outside` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ipls` varchar(255) COLLATE utf8mb4_bin DEFAULT '[]',
  `gateway` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `properties`
--

INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{\"y\":564.89,\"z\":182.959,\"x\":119.384}', '{\"x\":117.347,\"y\":559.506,\"z\":183.304}', '{\"y\":557.032,\"z\":183.301,\"x\":118.037}', '{\"y\":567.798,\"z\":182.131,\"x\":119.249}', '[]', NULL, 1, 1, 0, '{\"x\":118.748,\"y\":566.573,\"z\":175.697}', 1500000),
(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{\"x\":372.796,\"y\":428.327,\"z\":144.685}', '{\"x\":373.548,\"y\":422.982,\"z\":144.907},', '{\"y\":420.075,\"z\":145.904,\"x\":372.161}', '{\"x\":372.454,\"y\":432.886,\"z\":143.443}', '[]', NULL, 1, 1, 0, '{\"x\":377.349,\"y\":429.422,\"z\":137.3}', 1500000),
(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}', '{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}', '{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}', '{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}', '[]', NULL, 1, 1, 0, '{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}', 1700000),
(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{\"y\":440.8,\"z\":146.702,\"x\":346.964}', '{\"y\":437.456,\"z\":148.394,\"x\":341.683}', '{\"y\":435.626,\"z\":148.394,\"x\":339.595}', '{\"x\":350.535,\"y\":443.329,\"z\":145.764}', '[]', NULL, 1, 1, 0, '{\"x\":337.726,\"y\":436.985,\"z\":140.77}', 1500000),
(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{\"y\":502.696,\"z\":136.421,\"x\":-176.003}', '{\"y\":497.817,\"z\":136.653,\"x\":-174.349}', '{\"y\":495.069,\"z\":136.666,\"x\":-173.331}', '{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}', '[]', NULL, 1, 1, 0, '{\"x\":-174.725,\"y\":493.095,\"z\":129.043}', 1500000),
(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{\"y\":596.58,\"z\":142.641,\"x\":-686.554}', '{\"y\":591.988,\"z\":144.392,\"x\":-681.728}', '{\"y\":590.608,\"z\":144.392,\"x\":-680.124}', '{\"y\":599.019,\"z\":142.059,\"x\":-689.492}', '[]', NULL, 1, 1, 0, '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', 1500000),
(7, 'LowEndApartment', 'Appartement de base', '{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}', '{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}', '{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}', '{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}', '[]', NULL, 1, 1, 0, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 562500),
(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}', '{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}', '{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}', '{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}', '[]', NULL, 1, 1, 0, '{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}', 1500000),
(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{\"x\":-853.346,\"y\":696.678,\"z\":147.782}', '{\"y\":690.875,\"z\":151.86,\"x\":-859.961}', '{\"y\":688.361,\"z\":151.857,\"x\":-859.395}', '{\"y\":701.628,\"z\":147.773,\"x\":-855.007}', '[]', NULL, 1, 1, 0, '{\"x\":-858.543,\"y\":697.514,\"z\":144.253}', 1500000),
(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{\"y\":620.494,\"z\":141.588,\"x\":-752.82}', '{\"y\":618.62,\"z\":143.153,\"x\":-759.317}', '{\"y\":617.629,\"z\":143.153,\"x\":-760.789}', '{\"y\":621.281,\"z\":141.254,\"x\":-750.919}', '[]', NULL, 1, 1, 0, '{\"x\":-762.504,\"y\":618.992,\"z\":135.53}', 1500000),
(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{\"y\":37.025,\"z\":42.58,\"x\":-618.299}', '{\"y\":58.898,\"z\":97.2,\"x\":-603.301}', '{\"y\":58.941,\"z\":97.2,\"x\":-608.741}', '{\"y\":30.603,\"z\":42.524,\"x\":-620.017}', '[]', NULL, 1, 1, 0, '{\"x\":-622.173,\"y\":54.585,\"z\":96.599}', 1700000),
(12, 'MiltonDrive', 'Milton Drive', '{\"x\":-775.17,\"y\":312.01,\"z\":84.658}', NULL, NULL, '{\"x\":-775.346,\"y\":306.776,\"z\":84.7}', '[]', NULL, 0, 0, 1, NULL, 0),
(13, 'Modern1Apartment', 'Appartement Moderne 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_01_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":210.396}', 1300000),
(14, 'Modern2Apartment', 'Appartement Moderne 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_01_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":186.313}', 1300000),
(15, 'Modern3Apartment', 'Appartement Moderne 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_01_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":195.08}', 1300000),
(16, 'Mody1Apartment', 'Appartement Mode 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_02_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.615,\"y\":327.878,\"z\":210.396}', 1300000),
(17, 'Mody2Apartment', 'Appartement Mode 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_02_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.297,\"y\":327.092,\"z\":186.313}', 1300000),
(18, 'Mody3Apartment', 'Appartement Mode 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_02_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.303,\"y\":330.932,\"z\":195.085}', 1300000),
(19, 'Vibrant1Apartment', 'Appartement Vibrant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_03_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.885,\"y\":327.641,\"z\":210.396}', 1300000),
(20, 'Vibrant2Apartment', 'Appartement Vibrant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_03_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.607,\"y\":327.344,\"z\":186.313}', 1300000),
(21, 'Vibrant3Apartment', 'Appartement Vibrant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_03_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.525,\"y\":330.851,\"z\":195.085}', 1300000),
(22, 'Sharp1Apartment', 'Appartement Persan 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_04_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.527,\"y\":327.89,\"z\":210.396}', 1300000),
(23, 'Sharp2Apartment', 'Appartement Persan 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_04_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.642,\"y\":326.497,\"z\":186.313}', 1300000),
(24, 'Sharp3Apartment', 'Appartement Persan 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_04_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.503,\"y\":331.318,\"z\":195.085}', 1300000),
(25, 'Monochrome1Apartment', 'Appartement Monochrome 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_05_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.289,\"y\":328.086,\"z\":210.396}', 1300000),
(26, 'Monochrome2Apartment', 'Appartement Monochrome 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_05_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.692,\"y\":326.762,\"z\":186.313}', 1300000),
(27, 'Monochrome3Apartment', 'Appartement Monochrome 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_05_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.094,\"y\":330.976,\"z\":195.085}', 1300000),
(28, 'Seductive1Apartment', 'Appartement Séduisant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_06_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.263,\"y\":328.104,\"z\":210.396}', 1300000),
(29, 'Seductive2Apartment', 'Appartement Séduisant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_06_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.655,\"y\":326.611,\"z\":186.313}', 1300000),
(30, 'Seductive3Apartment', 'Appartement Séduisant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_06_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.3,\"y\":331.414,\"z\":195.085}', 1300000),
(31, 'Regal1Apartment', 'Appartement Régal 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_07_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.956,\"y\":328.257,\"z\":210.396}', 1300000),
(32, 'Regal2Apartment', 'Appartement Régal 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_07_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.545,\"y\":326.659,\"z\":186.313}', 1300000),
(33, 'Regal3Apartment', 'Appartement Régal 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_07_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.087,\"y\":331.429,\"z\":195.123}', 1300000),
(34, 'Aqua1Apartment', 'Appartement Aqua 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_08_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.187,\"y\":328.47,\"z\":210.396}', 1300000),
(35, 'Aqua2Apartment', 'Appartement Aqua 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_08_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.658,\"y\":326.563,\"z\":186.313}', 1300000),
(36, 'Aqua3Apartment', 'Appartement Aqua 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_08_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.287,\"y\":331.084,\"z\":195.086}', 1300000),
(37, 'IntegrityWay', '4 Integrity Way', '{\"x\":-47.804,\"y\":-585.867,\"z\":36.956}', NULL, NULL, '{\"x\":-54.178,\"y\":-583.762,\"z\":35.798}', '[]', NULL, 0, 0, 1, NULL, 0),
(38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{\"x\":-31.409,\"y\":-594.927,\"z\":79.03}', '{\"x\":-26.098,\"y\":-596.909,\"z\":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-11.923,\"y\":-597.083,\"z\":78.43}', 1700000),
(39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{\"x\":-17.702,\"y\":-588.524,\"z\":89.114}', '{\"x\":-16.21,\"y\":-582.569,\"z\":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-26.327,\"y\":-588.384,\"z\":89.123}', 1700000),
(40, 'DellPerroHeights', 'Dell Perro Heights', '{\"x\":-1447.06,\"y\":-538.28,\"z\":33.74}', NULL, NULL, '{\"x\":-1440.022,\"y\":-548.696,\"z\":33.74}', '[]', NULL, 0, 0, 1, NULL, 0),
(41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{\"x\":-1452.125,\"y\":-540.591,\"z\":73.044}', '{\"x\":-1455.435,\"y\":-535.79,\"z\":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1467.058,\"y\":-527.571,\"z\":72.443}', 1700000),
(42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{\"x\":-1451.562,\"y\":-523.535,\"z\":55.928}', '{\"x\":-1456.02,\"y\":-519.209,\"z\":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1457.026,\"y\":-530.219,\"z\":55.937}', 1700000);

-- --------------------------------------------------------

--
-- Structure de la table `rented_vehicles`
--

CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `plate` varchar(12) COLLATE utf8mb4_bin NOT NULL,
  `player_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `society` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT 'carshop'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `shops`
--

CREATE TABLE `shops` (
  `item` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `shops`
--

INSERT INTO `shops` (`item`, `price`) VALUES
('bread', 5),
('phone', 200),
('water', 7);

-- --------------------------------------------------------

--
-- Structure de la table `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `society` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `truck_inventory`
--

CREATE TABLE `truck_inventory` (
  `id` int(11) NOT NULL,
  `item` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `count` int(11) NOT NULL,
  `plate` varchar(8) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `twitter_accounts`
--

CREATE TABLE `twitter_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `twitter_likes`
--

CREATE TABLE `twitter_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `twitter_tweets`
--

CREATE TABLE `twitter_tweets` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `character_id` int(11) NOT NULL,
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `permission_group` varchar(50) COLLATE utf8mb4_bin DEFAULT 'user',
  `permission_level` int(11) DEFAULT 0,
  `position` longtext COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`position`)),
  `skin` longtext COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`skin`)),
  `accounts` longtext COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`accounts`)),
  `inventory` longtext COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`inventory`)),
  `loadout` longtext COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`loadout`)),
  `job` varchar(50) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `job2` varchar(50) COLLATE utf8mb4_bin DEFAULT 'unemployed2',
  `job2_grade` int(11) DEFAULT 0,
  `isDead` int(11) DEFAULT 0,
  `status` longtext COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`status`)),
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL,
  `phone_number` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `animations` longtext COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`character_id`, `identifier`, `permission_group`, `permission_level`, `position`, `skin`, `accounts`, `inventory`, `loadout`, `job`, `job_grade`, `job2`, `job2_grade`, `isDead`, `status`, `last_property`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `phone_number`, `animations`) VALUES
(2, 'license:869b0188c0f7a642d5b51d38a001bab349264fcc', 'superadmin', 0, '{\"x\":-47.59999847412109,\"y\":-1469.5999755859376,\"z\":31.29999923706054}', '{\"hair_1\":53,\"chest_1\":0,\"makeup_4\":0,\"eyebrows_1\":0,\"makeup_1\":0,\"age_1\":0,\"helmet_1\":-1,\"ears_1\":-1,\"beard_4\":0,\"lipstick_3\":0,\"chain_2\":0,\"chest_2\":0,\"chain_1\":0,\"bracelets_1\":-1,\"blemishes_2\":0,\"skin\":0,\"tshirt_2\":0,\"sun_2\":0,\"beard_1\":0,\"bodyb_2\":0,\"bproof_2\":0,\"lipstick_1\":0,\"shoes_2\":0,\"decals_2\":0,\"pants_1\":0,\"watches_1\":-1,\"arms_2\":0,\"decals_1\":0,\"ears_2\":0,\"tshirt_1\":15,\"bags_1\":0,\"beard_3\":0,\"torso_1\":117,\"complexion_2\":0,\"blemishes_1\":0,\"age_2\":0,\"hair_color_1\":0,\"torso_2\":0,\"sex\":0,\"hair_2\":0,\"pants_2\":0,\"lipstick_4\":0,\"eyebrows_4\":0,\"eyebrows_3\":0,\"helmet_2\":0,\"eyebrows_2\":0,\"makeup_2\":0,\"eye_color\":0,\"glasses_2\":0,\"makeup_3\":0,\"moles_2\":0,\"face\":0,\"bodyb_1\":0,\"bags_2\":0,\"arms\":0,\"sun_1\":0,\"blush_3\":0,\"complexion_1\":0,\"mask_2\":0,\"bproof_1\":0,\"beard_2\":0,\"glasses_1\":1,\"watches_2\":0,\"shoes_1\":0,\"blush_1\":0,\"blush_2\":0,\"bracelets_2\":0,\"lipstick_2\":0,\"moles_1\":0,\"hair_color_2\":0,\"chest_3\":0,\"mask_1\":0}', '[{\"name\":\"cash\",\"money\":121},{\"name\":\"dirtycash\",\"money\":0},{\"name\":\"bank\",\"money\":500},{\"name\":\"chip\",\"money\":0}]', '[{\"count\":2,\"name\":\"water\"},{\"count\":62,\"name\":\"clip\"},{\"count\":2,\"name\":\"bread\"},{\"count\":2,\"name\":\"phone\"},{\"count\":2,\"name\":\"weed\"}]', '[{\"components\":[],\"label\":\"Batte\",\"ammo\":42,\"name\":\"WEAPON_BAT\"},{\"components\":[],\"label\":\"Couteau\",\"ammo\":42,\"name\":\"WEAPON_KNIFE\"},{\"components\":[],\"label\":\"Couteau à cran d\'arrêt\",\"ammo\":42,\"name\":\"WEAPON_SWITCHBLADE\"},{\"components\":[],\"label\":\"Double-Action Revolver\",\"ammo\":42,\"name\":\"WEAPON_DOUBLEACTION\"},{\"components\":[],\"label\":\"Hachette\",\"ammo\":42,\"name\":\"WEAPON_HATCHET\"},{\"components\":[],\"label\":\"Lampe torche\",\"ammo\":42,\"name\":\"WEAPON_FLASHLIGHT\"},{\"components\":[],\"label\":\"Machette\",\"ammo\":42,\"name\":\"WEAPON_MACHETE\"},{\"components\":[],\"label\":\"Pistolet\",\"ammo\":42,\"name\":\"WEAPON_PISTOL\"},{\"components\":[],\"label\":\"Pistolet calibre 50\",\"ammo\":42,\"name\":\"WEAPON_PISTOL50\"},{\"components\":[],\"label\":\"Pistolet lourd\",\"ammo\":42,\"name\":\"WEAPON_HEAVYPISTOL\"},{\"components\":[],\"label\":\"Pistolet sns\",\"ammo\":42,\"name\":\"WEAPON_SNSPISTOL\"},{\"components\":[],\"label\":\"Pistolet vintage\",\"ammo\":42,\"name\":\"WEAPON_VINTAGEPISTOL\"},{\"components\":[],\"label\":\"Poignard\",\"ammo\":42,\"name\":\"WEAPON_DAGGER\"},{\"components\":[],\"label\":\"Poing américain\",\"ammo\":42,\"name\":\"WEAPON_KNUCKLE\"}]', 'mecano', 4, 'marabunta', 3, 0, '[{\"val\":788800,\"name\":\"hunger\",\"percent\":78.88},{\"val\":788800,\"name\":\"thirst\",\"percent\":78.88},{\"val\":0,\"name\":\"drunk\",\"percent\":0.0},{\"val\":0,\"name\":\"drug\",\"percent\":0.0}]', NULL, 'Fsdf', 'Fsdf', '12/12/2000', 'm', '186', '757-8807', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `user_licenses`
--

INSERT INTO `user_licenses` (`id`, `type`, `owner`) VALUES
(1, 'weapon', 'license:869b0188c0f7a642d5b51d38a001bab349264fcc'),
(2, 'weapon', 'license:869b0188c0f7a642d5b51d38a001bab349264fcc');

-- --------------------------------------------------------

--
-- Structure de la table `user_parkings`
--

CREATE TABLE `user_parkings` (
  `id` int(11) NOT NULL,
  `identifier` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `garage` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `zone` int(11) NOT NULL,
  `vehicle` longtext COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `vehicles`
--

CREATE TABLE `vehicles` (
  `model` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `vehicles`
--

INSERT INTO `vehicles` (`model`, `name`, `price`, `category`) VALUES
('adder', 'Adder', 500000, 'super'),
('akuma', 'Akuma', 17500, 'motorcycles'),
('alpha', 'Alpha', 95000, 'sports'),
('asea', 'Asea', 15000, 'sedans'),
('autarch', 'Autarch', 900000, 'super'),
('avarus', 'Avarus', 42000, 'motorcycles'),
('bagger', 'Bagger', 14000, 'motorcycles'),
('baller2', 'Baller', 50000, 'suvs'),
('baller3', 'Baller Sport', 75000, 'suvs'),
('banshee', 'Banshee', 70000, 'sports'),
('banshee2', 'Banshee 900R', 125000, 'super'),
('bati', 'Bati 801', 38500, 'motorcycles'),
('bati2', 'Bati 801RR', 14000, 'motorcycles'),
('bestiagts', 'Bestia GTS', 55000, 'sports'),
('bf400', 'BF400', 13500, 'motorcycles'),
('bfinjection', 'Bf Injection', 16000, 'offroad'),
('bifta', 'Bifta', 12000, 'offroad'),
('bison', 'Bison', 45000, 'vans'),
('blade', 'Blade', 15000, 'muscle'),
('blazer', 'Blazer', 6500, 'offroad'),
('blazer4', 'Blazer Sport', 8500, 'offroad'),
('blista', 'Blista', 7000, 'compacts'),
('bmci', 'BMW M5', 91900000, 'imports'),
('bmx', 'BMX (velo)', 150, 'motorcycles'),
('bobcatxl', 'Bobcat XL', 32000, 'vans'),
('brawler', 'Brawler', 125000, 'offroad'),
('brioso', 'Brioso R/A', 7000, 'compacts'),
('btype', 'Btype', 110000, 'sportsclassics'),
('btype2', 'Btype Hotroad', 155000, 'sportsclassics'),
('btype3', 'Btype Luxe', 120000, 'sportsclassics'),
('buccaneer', 'Buccaneer', 18000, 'muscle'),
('buccaneer2', 'Buccaneer Rider', 15000, 'muscle'),
('buffalo', 'Buffalo', 16000, 'sports'),
('buffalo2', 'Buffalo S', 26000, 'sports'),
('bullet', 'Bullet', 90000, 'super'),
('burrito3', 'Burrito', 19000, 'vans'),
('c63', 'Mercedes C63 AMG', 94000000, 'imports'),
('camper', 'Camper', 35000, 'vans'),
('carbonizzare', 'Carbonizzare', 75000, 'sports'),
('carbonrs', 'Carbon RS', 14500, 'motorcycles'),
('casco', 'Casco', 30000, 'sportsclassics'),
('cavalcade2', 'Cavalcade', 40000, 'suvs'),
('cb500f', 'Honda CB500F 2018', 500000, 'imports'),
('cheetah', 'Cheetah', 22000, 'super'),
('chimera', 'Chimera', 12800, 'motorcycles'),
('chino', 'Chino', 18000, 'muscle'),
('chino2', 'Chino Luxe', 18000, 'muscle'),
('cliffhanger', 'Cliffhanger', 12000, 'motorcycles'),
('cls53', 'Mercedes CLS53 AMG', 95000000, 'imports'),
('cogcabrio', 'Cognoscenti Cabrio', 55000, 'coupes'),
('cognoscenti', 'Cognoscenti', 19000, 'sedans'),
('comet2', 'Comet', 75000, 'sports'),
('comet5', 'Comet 5', 800000, 'sports'),
('contender', 'Contender', 35000, 'suvs'),
('coquette', 'Coquette', 65000, 'sports'),
('coquette2', 'Coquette Classic', 40000, 'sportsclassics'),
('coquette3', 'Coquette BlackFin', 55000, 'muscle'),
('cruiser', 'Cruiser (velo)', 180, 'motorcycles'),
('cyclone', 'Cyclone', 1890000, 'super'),
('daemon', 'Daemon', 11500, 'motorcycles'),
('daemon2', 'Daemon High', 19000, 'motorcycles'),
('defiler', 'Defiler', 20000, 'motorcycles'),
('dinghy3', 'Dinghy', 15000000, 'superboat'),
('dominator', 'Dominator', 35000, 'muscle'),
('double', 'Double T', 15000, 'motorcycles'),
('dubsta', 'Dubsta', 45000, 'suvs'),
('dubsta2', 'Dubsta Luxuary', 60000, 'suvs'),
('dubsta3', 'Bubsta 6x6', 235000, 'offroad'),
('dukes', 'Dukes', 28000, 'muscle'),
('dune', 'Dune Buggy', 8000, 'offroad'),
('elegy2', 'Elegy', 38500, 'sports'),
('emperor', 'Emperor', 8500, 'sedans'),
('enduro', 'Enduro', 10500, 'motorcycles'),
('entityxf', 'Entity XF', 210000, 'super'),
('esskey', 'Esskey', 14000, 'motorcycles'),
('exemplar', 'Exemplar', 25500, 'coupes'),
('f620', 'F620', 22000, 'coupes'),
('faction', 'Faction', 20000, 'muscle'),
('faction2', 'Faction Rider', 30000, 'muscle'),
('faction3', 'Faction XL', 40000, 'muscle'),
('faggio', 'Faggio', 1900, 'motorcycles'),
('faggio2', 'Vespa', 4500, 'motorcycles'),
('fct', 'Ferrari Californiat 2017', 90000000, 'imports'),
('felon', 'Felon', 42000, 'coupes'),
('felon2', 'Felon GT', 18000, 'coupes'),
('feltzer2', 'Feltzer', 62000, 'sports'),
('feltzer3', 'Stirling GT', 65000, 'sportsclassics'),
('fixter', 'Fixter (velo)', 50, 'motorcycles'),
('fmj', 'FMJ', 185000, 'super'),
('fq2', 'Fhantom', 12500, 'suvs'),
('frogger', 'Frogger', 45000000, 'avionfdp'),
('fugitive', 'Fugitive', 12000, 'sedans'),
('furoregt', 'Furore GT', 45000, 'sports'),
('fusilade', 'Fusilade', 40000, 'sports'),
('gargoyle', 'Gargoyle', 24000, 'motorcycles'),
('gauntlet', 'Gauntlet', 30000, 'muscle'),
('gburrito', 'Gang Burrito', 45000, 'vans'),
('gburrito2', 'Burrito', 29000, 'vans'),
('glendale', 'Glendale', 12300, 'sedans'),
('granger', 'Grabger', 50000, 'suvs'),
('gresley', 'Gresley', 30000, 'suvs'),
('gt500', 'GT 500', 785000, 'sportsclassics'),
('guardian', 'Guardian', 45000, 'offroad'),
('hakuchou', 'Hakuchou', 39000, 'motorcycles'),
('hakuchou2', 'Hakuchou Sport', 47000, 'motorcycles'),
('hermes', 'Hermes', 535000, 'muscle'),
('hexer', 'Hexer', 7500, 'motorcycles'),
('hotknife', 'Hotknife', 125000, 'muscle'),
('huntley', 'Huntley S', 40000, 'suvs'),
('hustler', 'Hustler', 530000, 'muscle'),
('infernus', 'Infernus', 180000, 'super'),
('innovation', 'Innovation', 8000, 'motorcycles'),
('intruder', 'Intruder', 7500, 'sedans'),
('issi2', 'Issi', 5000, 'compacts'),
('jackal', 'Jackal', 42000, 'coupes'),
('jester', 'Jester', 65000, 'sports'),
('jester2', 'Jester(Racecar)', 135000, 'sports'),
('jetmax', 'Jetmax', 14000000, 'superboat'),
('journey', 'Journey', 6500, 'vans'),
('kamacho', 'Kamacho', 345000, 'offroad'),
('khamelion', 'Khamelion', 75000, 'sports'),
('kuruma', 'Kuruma', 175000, 'sports'),
('landstalker', 'Landstalker', 35000, 'suvs'),
('le7b', 'RE-7B', 325000, 'super'),
('luxor', 'Luxor', 40000000, 'avionfdp'),
('luxor2', 'Luxor Deluxe', 45000000, 'avionfdp'),
('lynx', 'Lynx', 40000, 'sports'),
('macla', 'Mercedes Class A', 92000000, 'imports'),
('mamba', 'Mamba', 90000, 'sports'),
('mammatus', 'Mammatus', 29000000, 'avionfdp'),
('manana', 'Manana', 12800, 'sportsclassics'),
('manchez', 'Manchez', 19000, 'motorcycles'),
('marquis', 'Marquis', 11000000, 'superboat'),
('massacro', 'Massacro', 65000, 'sports'),
('massacro2', 'Massacro(Racecar)', 130000, 'sports'),
('mesa', 'Mesa', 16000, 'suvs'),
('mesa3', 'Mesa Trail', 32500, 'suvs'),
('minivan', 'Minivan', 8000, 'vans'),
('mlbrabus', 'ML Brabus', 90000000, 'imports'),
('monroe', 'Monroe', 55000, 'sportsclassics'),
('moonbeam', 'Moonbeam', 18000, 'vans'),
('moonbeam2', 'Moonbeam Rider', 35000, 'vans'),
('nemesis', 'Nemesis', 19000, 'motorcycles'),
('neon', 'Neon', 600000, 'sports'),
('nightblade', 'Nightblade', 45000, 'motorcycles'),
('nightshade', 'Nightshade', 110000, 'muscle'),
('ninef', '9F', 65000, 'sports'),
('ninef2', '9F Cabrio', 80000, 'sports'),
('omnis', 'Omnis', 120000, 'sports'),
('oracle2', 'Oracle XS', 13000, 'coupes'),
('osiris', 'Osiris', 190000, 'super'),
('panto', 'Panto', 2000, 'compacts'),
('paradise', 'Paradise', 10000, 'vans'),
('pariah', 'Pariah', 1420000, 'sports'),
('patriot', 'Patriot', 35000, 'suvs'),
('pcj', 'PCJ-600', 14000, 'motorcycles'),
('penumbra', 'Penumbra', 28000, 'sports'),
('pfister811', 'Pfister', 145000, 'super'),
('phoenix', 'Phoenix', 12500, 'muscle'),
('picador', 'Picador', 18000, 'muscle'),
('pigalle', 'Pigalle', 20000, 'sportsclassics'),
('prairie', 'Prairie', 6000, 'compacts'),
('premier', 'Premier', 8000, 'sedans'),
('primo2', 'Primo Custom', 14000, 'sedans'),
('prototipo', 'X80 Proto', 2500000, 'super'),
('radi', 'Radius', 29000, 'suvs'),
('raiden', 'raiden', 1375000, 'sports'),
('rapidgt', 'Rapid GT', 55000, 'sports'),
('rapidgt2', 'Rapid GT Convertible', 75000, 'sports'),
('rapidgt3', 'Rapid GT3', 88500, 'sportsclassics'),
('reaper', 'Reaper', 150000, 'super'),
('rebel2', 'Rebel', 35000, 'offroad'),
('regina', 'Regina', 5000, 'sedans'),
('retinue', 'Retinue', 61500, 'sportsclassics'),
('riata', 'riata', 380000, 'offroad'),
('rocoto', 'Rocoto', 33000, 'suvs'),
('rogue', 'Rogue', 30000000, 'avionfdp'),
('rs3', 'Audi RS3', 90000000, 'imports'),
('ruffian', 'Ruffian', 12000, 'motorcycles'),
('rumpo', 'Rumpo', 15000, 'vans'),
('rumpo3', 'Rumpo Trail', 19500, 'vans'),
('sabregt', 'Sabre Turbo', 20000, 'muscle'),
('sabregt2', 'Sabre GT', 25000, 'muscle'),
('sanchez', 'Sanchez', 13000, 'motorcycles'),
('sanchez2', 'Sanchez Sport', 18000, 'motorcycles'),
('sanctus', 'Sanctus', 55000, 'motorcycles'),
('sandking', 'Sandking', 55000, 'offroad'),
('savestra', 'Savestra', 990000, 'sportsclassics'),
('sc1', 'SC 1', 800000, 'super'),
('schafter2', 'Schafter', 80000, 'sedans'),
('schafter3', 'Schafter V12', 190000, 'sports'),
('scorcher', 'Scorcher (velo)', 100, 'motorcycles'),
('seashark', 'SeaShark', 11000000, 'superboat'),
('seashark2', 'Seashark2', 12500000, 'superboat'),
('seminole', 'Seminole', 150000, 'suvs'),
('sentinel', 'Sentinel', 32000, 'coupes'),
('sentinel2', 'Sentinel XS', 15500, 'coupes'),
('sentinel3', 'Sentinel3', 11500, 'sports'),
('seven70', 'Seven 70', 39500, 'sports'),
('sheava', 'ETR1', 220000, 'super'),
('slamvan3', 'Slam Van', 11500, 'muscle'),
('sovereign', 'Sovereign', 20000, 'motorcycles'),
('speeder', 'Speeder', 14000000, 'superboat'),
('squalo', 'Squalo', 11000000, 'superboat'),
('stinger', 'Stinger', 80000, 'sportsclassics'),
('stingergt', 'Stinger GT', 75000, 'sportsclassics'),
('streiter', 'Streiter', 500000, 'sports'),
('stretch', 'Stretch', 90000, 'sedans'),
('stromberg', 'Stromberg', 3185350, 'sports'),
('sultan', 'Sultan', 52000, 'sports'),
('sultanrs', 'Sultan RS', 200000, 'super'),
('suntrap', 'Stuntrap', 12500000, 'superboat'),
('superd', 'Super Diamond', 130000, 'sedans'),
('supervolito', 'SuperVolito', 40000000, 'avionfdp'),
('surano', 'Surano', 50000, 'sports'),
('surfer', 'Surfer', 12000, 'vans'),
('swift', 'Swift', 50000000, 'avionfdp'),
('swift2', 'Swift Deluxe', 60000000, 'avionfdp'),
('t20', 'T20', 500000, 'super'),
('tailgater', 'Tailgater', 30000, 'sedans'),
('tampa', 'Tampa', 16000, 'muscle'),
('tampa2', 'Drift Tampa', 80000, 'sports'),
('thrust', 'Thrust', 22000, 'motorcycles'),
('tmax', 'Yamaha TMax', 600000, 'imports'),
('toro', 'Toro', 12500000, 'superboat'),
('tribike3', 'Tri bike (velo)', 150, 'motorcycles'),
('trophytruck', 'Trophy Truck', 60000, 'offroad'),
('trophytruck2', 'Trophy Truck Limited', 80000, 'offroad'),
('tropic', 'Tropic', 11500000, 'superboat'),
('tropos', 'Tropos', 175000, 'sports'),
('turismor', 'Turismo R', 340000, 'super'),
('tyrus', 'Tyrus', 600000, 'super'),
('urus2018', 'Urus2018 Edition Limié', 70000000, 'imports'),
('vacca', 'Vacca', 120000, 'super'),
('vader', 'Vader', 9000, 'motorcycles'),
('velum', 'Velum', 35000000, 'avionfdp'),
('verlierer2', 'Verlierer', 70000, 'sports'),
('vestra', 'Vestra', 32000000, 'avionfdp'),
('vigero', 'Vigero', 12500, 'muscle'),
('virgo', 'Virgo', 14000, 'muscle'),
('viseris', 'Viseris', 875000, 'sportsclassics'),
('visione', 'Visione', 2250000, 'super'),
('voltic', 'Voltic', 900000, 'super'),
('voodoo', 'Voodoo', 7200, 'muscle'),
('vortex', 'Vortex', 15000, 'motorcycles'),
('warrener', 'Warrener', 4000, 'sedans'),
('washington', 'Washington', 9000, 'sedans'),
('windsor', 'Windsor', 95000, 'coupes'),
('windsor2', 'Windsor Drop', 42000, 'coupes'),
('wolfsbane', 'Woflsbane', 18000, 'motorcycles'),
('xls', 'XLS', 21000, 'suvs'),
('yosemite', 'Yosemite', 120000, 'muscle'),
('youga', 'Youga', 10800, 'vans'),
('youga2', 'Youga Luxuary', 6000, 'vans'),
('z190', 'Z190', 90000, 'sportsclassics'),
('zentorno', 'Zentorno', 700000, 'super'),
('zion', 'Zion', 36000, 'coupes'),
('zion2', 'Zion Cabrio', 12500, 'coupes'),
('zombiea', 'Zombie', 9500, 'motorcycles'),
('zombieb', 'Zombie Luxuary', 10000, 'motorcycles'),
('ztype', 'Z-Type', 22000, 'sportsclassics');

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `society` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT 'carshop'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`, `society`) VALUES
('avionfdp', 'Avion - Hélico', 'planeshop'),
('compacts', 'Compacts', 'carshop'),
('coupes', 'Coupes', 'carshop'),
('imports', 'Imports', 'carshop'),
('motorcycles', 'Motos', 'carshop'),
('muscle', 'Muscle', 'carshop'),
('offroad', 'Off Road', 'carshop'),
('sedans', 'Sedans', 'carshop'),
('sports', 'Sports', 'carshop'),
('sportsclassics', 'Sports Classics', 'carshop'),
('super', 'Super', 'carshop'),
('superboat', 'Bateau', 'boatshop'),
('suvs', 'SUVs', 'carshop'),
('vans', 'Vans', 'carshop');

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_sold`
--

CREATE TABLE `vehicle_sold` (
  `client` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `model` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `plate` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `soldby` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `date` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `society` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT 'carshop'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `votehistory`
--

CREATE TABLE `votehistory` (
  `ip` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `pseudo` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `whitelist`
--

CREATE TABLE `whitelist` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `account_info`
--
ALTER TABLE `account_info`
  ADD PRIMARY KEY (`account_id`),
  ADD UNIQUE KEY `license` (`license`);

--
-- Index pour la table `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`) USING BTREE;

--
-- Index pour la table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_addon_account_data_account_name` (`account_name`) USING BTREE,
  ADD KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`) USING BTREE;

--
-- Index pour la table `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`name`) USING BTREE;

--
-- Index pour la table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`) USING BTREE,
  ADD KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`) USING BTREE,
  ADD KEY `index_addon_inventory_inventory_name` (`inventory_name`) USING BTREE;

--
-- Index pour la table `banlist`
--
ALTER TABLE `banlist`
  ADD PRIMARY KEY (`licenseid`);

--
-- Index pour la table `banlisthistory`
--
ALTER TABLE `banlisthistory`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_billing_identifier` (`identifier`) USING BTREE;

--
-- Index pour la table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_characters_identifier` (`identifier`) USING BTREE;

--
-- Index pour la table `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`name`) USING BTREE;

--
-- Index pour la table `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_datastore_data_name` (`name`) USING BTREE,
  ADD KEY `index_datastore_data_name_owner` (`name`,`owner`) USING BTREE;

--
-- Index pour la table `fine_types`
--
ALTER TABLE `fine_types`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`) USING BTREE;

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`) USING BTREE;

--
-- Index pour la table `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`) USING BTREE;

--
-- Index pour la table `open_car`
--
ALTER TABLE `open_car`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_open_car_owner` (`owner`) USING BTREE,
  ADD KEY `index_open_car_owner_plate` (`owner`,`plate`) USING BTREE;

--
-- Index pour la table `owned_properties`
--
ALTER TABLE `owned_properties`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_owned_properties_owner` (`owner`) USING BTREE,
  ADD KEY `index_owned_properties_rented` (`rented`) USING BTREE,
  ADD KEY `index_owned_properties_owner_name` (`owner`,`name`) USING BTREE;

--
-- Index pour la table `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`) USING BTREE,
  ADD KEY `index_owned_vehicles_owner` (`owner`) USING BTREE,
  ADD KEY `index_owned_vehicles_owner_plate` (`owner`,`plate`) USING BTREE,
  ADD KEY `index_owned_vehicles_owner_type` (`owner`,`type`) USING BTREE,
  ADD KEY `index_owned_vehicles_owner_type_state` (`owner`,`type`,`state`) USING BTREE;

--
-- Index pour la table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_phone_app_chat_channel` (`channel`) USING BTREE;

--
-- Index pour la table `phone_calls`
--
ALTER TABLE `phone_calls`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_phone_calls_owner` (`owner`) USING BTREE,
  ADD KEY `index_phone_calls_owner_num` (`owner`,`num`) USING BTREE;

--
-- Index pour la table `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_phone_messages_receiver` (`receiver`) USING BTREE,
  ADD KEY `index_phone_messages_receiver_transmitter` (`receiver`,`transmitter`) USING BTREE;

--
-- Index pour la table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_phone_users_contacts_identifier` (`identifier`) USING BTREE;

--
-- Index pour la table `playerstattoos`
--
ALTER TABLE `playerstattoos`
  ADD PRIMARY KEY (`identifier`) USING BTREE;

--
-- Index pour la table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `rented_vehicles`
--
ALTER TABLE `rented_vehicles`
  ADD PRIMARY KEY (`plate`) USING BTREE;

--
-- Index pour la table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`item`) USING BTREE;

--
-- Index pour la table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `truck_inventory`
--
ALTER TABLE `truck_inventory`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `item` (`item`,`plate`) USING BTREE;

--
-- Index pour la table `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`) USING BTREE;

--
-- Index pour la table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `FK_twitter_likes_twitter_accounts` (`authorId`) USING BTREE,
  ADD KEY `FK_twitter_likes_twitter_tweets` (`tweetId`) USING BTREE;

--
-- Index pour la table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `FK_twitter_tweets_twitter_accounts` (`authorId`) USING BTREE;

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`character_id`),
  ADD UNIQUE KEY `identifier` (`identifier`);

--
-- Index pour la table `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `user_parkings`
--
ALTER TABLE `user_parkings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`) USING BTREE;

--
-- Index pour la table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`name`) USING BTREE;

--
-- Index pour la table `vehicle_sold`
--
ALTER TABLE `vehicle_sold`
  ADD PRIMARY KEY (`plate`) USING BTREE;

--
-- Index pour la table `whitelist`
--
ALTER TABLE `whitelist`
  ADD PRIMARY KEY (`identifier`) USING BTREE;

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `account_info`
--
ALTER TABLE `account_info`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=495;

--
-- AUTO_INCREMENT pour la table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `banlisthistory`
--
ALTER TABLE `banlisthistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=499;

--
-- AUTO_INCREMENT pour la table `fine_types`
--
ALTER TABLE `fine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT pour la table `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=511;

--
-- AUTO_INCREMENT pour la table `open_car`
--
ALTER TABLE `open_car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `owned_properties`
--
ALTER TABLE `owned_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `phone_calls`
--
ALTER TABLE `phone_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `truck_inventory`
--
ALTER TABLE `truck_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `character_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `user_parkings`
--
ALTER TABLE `user_parkings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  ADD CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

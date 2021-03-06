-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 22 avr. 2019 à 11:02
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `snowtricks`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `title`, `description`) VALUES
(1, 'Grabs', 'Un grab consiste à attraper la planche avec la main pendant le saut.'),
(6, 'Rotations', 'Le principe est d\'effectuer une rotation horizontale pendant le saut, puis d\'attérir en position switch ou normal. La nomenclature se base sur le nombre de degrés de rotation effectués.'),
(7, 'Flips', 'Un flip est une rotation verticale. On distingue les front flips, rotations en avant, et les back flips, rotations en arrière.'),
(8, 'Rotations désaxées', 'Une rotation désaxée est une rotation initialement horizontale mais lancée avec un mouvement des épaules particulier qui désaxe la rotation.'),
(9, 'Slides', 'Un slide consiste à glisser sur une barre de slide. Le slide se fait soit avec la planche dans l\'axe de la barre, soit perpendiculaire, soit plus ou moins désaxé.');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trick_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9474526CB281BE2E` (`trick_id`),
  KEY `IDX_9474526CA76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `trick_id`, `user_id`, `content`, `created_at`) VALUES
(2, 13, 1, 'Test', '2019-04-16 12:54:45'),
(3, 13, 1, 'Test', '2019-04-16 12:54:51'),
(4, 13, 1, 'Test', '2019-04-16 12:54:56'),
(5, 13, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eleifend gravida tellus, quis vehicula justo pharetra vitae. Maecenas rhoncus nulla in sem ultrices ultrices ac sed turpis. Nam efficitur, diam sed ornare blandit, neque augue iaculis sapien, at auctor nibh lectus ut est. Aenean in dolor fermentum, luctus arcu nec, facilisis ex. In accumsan urna massa, sit amet dictum ligula euismod id. Integer porta tortor non nisi euismod, ut tempus orci fringilla. Donec iaculis enim ac vestibulum pretium. Nunc leo dui, pellentesque vitae tristique in, fermentum at sapien. Nulla pulvinar urna ac risus lacinia accumsan.e', '2019-04-20 12:37:14'),
(6, 12, 1, 'Test', '2019-04-20 10:08:57');

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE IF NOT EXISTS `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trick_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C53D045FB281BE2E` (`trick_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `image`
--

INSERT INTO `image` (`id`, `trick_id`, `name`) VALUES
(4, 12, 'stalefish-1.jpg'),
(5, 12, 'stalefish-2.jpg'),
(7, 14, '1080-1.jpg'),
(8, 16, 'backflip-1.jpg'),
(9, 16, 'backflip-2.jpg'),
(10, 15, 'frontflip-1.jpg'),
(11, 15, 'frontflip-2.jpg'),
(12, 18, 'rodeo-1.jpg'),
(13, 17, 'cork-1.jpg'),
(33, 20, 'b63d5647aa08ed0fabed45967085f2a4.jpeg'),
(34, 13, '0638ae1be04ee1d3520ee520c79a39ea.jpeg'),
(35, 13, '850bbf2474c7cb2c5edb99a52b22ee4d.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20190226205822', '2019-02-26 21:00:02'),
('20190302131417', '2019-03-02 13:16:48'),
('20190302135355', '2019-03-02 13:54:49'),
('20190306160656', '2019-03-06 16:10:00'),
('20190312172036', '2019-03-12 17:22:44'),
('20190319103625', '2019-03-19 10:36:58'),
('20190319124554', '2019-03-19 12:46:39'),
('20190319124719', '2019-03-19 12:47:23'),
('20190319124933', '2019-03-19 12:49:39'),
('20190319125106', '2019-03-19 12:51:12');

-- --------------------------------------------------------

--
-- Structure de la table `trick`
--

DROP TABLE IF EXISTS `trick`;
CREATE TABLE IF NOT EXISTS `trick` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `lead` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D8F0A91E12469DE2` (`category_id`),
  KEY `IDX_D8F0A91EA76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `trick`
--

INSERT INTO `trick` (`id`, `title`, `image`, `content`, `created_at`, `category_id`, `user_id`, `lead`, `updated_at`) VALUES
(12, 'Stalefish', 'stalefish.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus est diam, tincidunt ac lorem sed, vehicula lobortis ligula. Nullam id scelerisque magna, et cursus arcu. Proin eleifend lacus sit amet bibendum imperdiet. Fusce a iaculis ex, eu euismod nisl. Proin ut fringilla nunc, ac suscipit magna. Curabitur mollis in ipsum vitae ullamcorper. In quis diam ut eros faucibus accumsan in ut est. In nec finibus ex. Etiam vulputate aliquet tortor ac consectetur. Etiam ac tortor aliquet, aliquam lacus efficitur, blandit nisl. Vestibulum in orci ut massa semper ultrices ut et nibh. Sed laoreet cursus libero eget maximus. Integer non lacus cursus tellus porttitor placerat ut sit amet magna.\r\n\r\nPellentesque sagittis fringilla massa eget bibendum. Etiam vestibulum pretium risus, in sollicitudin nisl mollis nec. Integer quis turpis vulputate, volutpat ligula nec, dignissim dolor. Suspendisse potenti. Sed eget nunc vitae urna sodales euismod. Vestibulum mollis, metus at gravida malesuada, enim leo pharetra eros, at volutpat sem odio a lacus. Donec rutrum nisl in metus vehicula, in bibendum sapien vestibulum. Donec porttitor nisi risus, ut dignissim sem iaculis eget. Suspendisse condimentum congue ex, sed placerat nibh vehicula vel. Vestibulum aliquam lobortis dapibus. Donec pharetra posuere sapien a fermentum. Duis turpis nibh, viverra vel risus vel, varius blandit dolor. Praesent fringilla, lectus malesuada dapibus pharetra, risus lorem interdum turpis, id efficitur elit quam a eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer eu convallis libero.\r\n\r\nAliquam sed enim lorem. Nunc ullamcorper bibendum mauris molestie ullamcorper. In euismod egestas felis. Vivamus interdum iaculis eros eget pretium. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce non metus non urna hendrerit bibendum. Phasellus et viverra ex, ut maximus urna. Sed non justo id dolor mattis placerat eget commodo velit. Donec ut metus lacus. Proin eget eros eget elit bibendum blandit. Cras volutpat accumsan nunc in molestie. Nunc ultrices nibh ut ornare vulputate. Morbi sed efficitur sem.', '2019-03-05 08:19:12', 1, 1, 'Saisie de la carre backside de la planche entre les deux pieds avec la main arrière.', NULL),
(13, 'FS 720', '720.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus est diam, tincidunt ac lorem sed, vehicula lobortis ligula. Nullam id scelerisque magna, et cursus arcu. Proin eleifend lacus sit amet bibendum imperdiet. Fusce a iaculis ex, eu euismod nisl. Proin ut fringilla nunc, ac suscipit magna. Curabitur mollis in ipsum vitae ullamcorper. In quis diam ut eros faucibus accumsan in ut est. In nec finibus ex. Etiam vulputate aliquet tortor ac consectetur. Etiam ac tortor aliquet, aliquam lacus efficitur, blandit nisl. Vestibulum in orci ut massa semper ultrices ut et nibh. Sed laoreet cursus libero eget maximus. Integer non lacus cursus tellus porttitor placerat ut sit amet magna.\r\n\r\nPellentesque sagittis fringilla massa eget bibendum. Etiam vestibulum pretium risus, in sollicitudin nisl mollis nec. Integer quis turpis vulputate, volutpat ligula nec, dignissim dolor. Suspendisse potenti. Sed eget nunc vitae urna sodales euismod. Vestibulum mollis, metus at gravida malesuada, enim leo pharetra eros, at volutpat sem odio a lacus. Donec rutrum nisl in metus vehicula, in bibendum sapien vestibulum. Donec porttitor nisi risus, ut dignissim sem iaculis eget. Suspendisse condimentum congue ex, sed placerat nibh vehicula vel. Vestibulum aliquam lobortis dapibus. Donec pharetra posuere sapien a fermentum. Duis turpis nibh, viverra vel risus vel, varius blandit dolor. Praesent fringilla, lectus malesuada dapibus pharetra, risus lorem interdum turpis, id efficitur elit quam a eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer eu convallis libero.\r\n\r\nAliquam sed enim lorem. Nunc ullamcorper bibendum mauris molestie ullamcorper. In euismod egestas felis. Vivamus interdum iaculis eros eget pretium. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce non metus non urna hendrerit bibendum. Phasellus et viverra ex, ut maximus urna. Sed non justo id dolor mattis placerat eget commodo velit. Donec ut metus lacus. Proin eget eros eget elit bibendum blandit. Cras volutpat accumsan nunc in molestie. Nunc ultrices nibh ut ornare vulputate. Morbi sed efficitur sem.', '2019-03-05 10:19:19', 6, 1, 'Deux tours complets en front-side.', '2019-04-11 08:07:29'),
(14, 'Backside Rodeo 1080', '1080.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus est diam, tincidunt ac lorem sed, vehicula lobortis ligula. Nullam id scelerisque magna, et cursus arcu. Proin eleifend lacus sit amet bibendum imperdiet. Fusce a iaculis ex, eu euismod nisl. Proin ut fringilla nunc, ac suscipit magna. Curabitur mollis in ipsum vitae ullamcorper. In quis diam ut eros faucibus accumsan in ut est. In nec finibus ex. Etiam vulputate aliquet tortor ac consectetur. Etiam ac tortor aliquet, aliquam lacus efficitur, blandit nisl. Vestibulum in orci ut massa semper ultrices ut et nibh. Sed laoreet cursus libero eget maximus. Integer non lacus cursus tellus porttitor placerat ut sit amet magna.\r\n\r\nPellentesque sagittis fringilla massa eget bibendum. Etiam vestibulum pretium risus, in sollicitudin nisl mollis nec. Integer quis turpis vulputate, volutpat ligula nec, dignissim dolor. Suspendisse potenti. Sed eget nunc vitae urna sodales euismod. Vestibulum mollis, metus at gravida malesuada, enim leo pharetra eros, at volutpat sem odio a lacus. Donec rutrum nisl in metus vehicula, in bibendum sapien vestibulum. Donec porttitor nisi risus, ut dignissim sem iaculis eget. Suspendisse condimentum congue ex, sed placerat nibh vehicula vel. Vestibulum aliquam lobortis dapibus. Donec pharetra posuere sapien a fermentum. Duis turpis nibh, viverra vel risus vel, varius blandit dolor. Praesent fringilla, lectus malesuada dapibus pharetra, risus lorem interdum turpis, id efficitur elit quam a eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer eu convallis libero.\r\n\r\nAliquam sed enim lorem. Nunc ullamcorper bibendum mauris molestie ullamcorper. In euismod egestas felis. Vivamus interdum iaculis eros eget pretium. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce non metus non urna hendrerit bibendum. Phasellus et viverra ex, ut maximus urna. Sed non justo id dolor mattis placerat eget commodo velit. Donec ut metus lacus. Proin eget eros eget elit bibendum blandit. Cras volutpat accumsan nunc in molestie. Nunc ultrices nibh ut ornare vulputate. Morbi sed efficitur sem.', '2019-03-05 08:21:00', 6, 1, 'Trois tours avec une rotation désaxée (Rodeo).', NULL),
(15, 'Frontflip', 'frontflip.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus est diam, tincidunt ac lorem sed, vehicula lobortis ligula. Nullam id scelerisque magna, et cursus arcu. Proin eleifend lacus sit amet bibendum imperdiet. Fusce a iaculis ex, eu euismod nisl. Proin ut fringilla nunc, ac suscipit magna. Curabitur mollis in ipsum vitae ullamcorper. In quis diam ut eros faucibus accumsan in ut est. In nec finibus ex. Etiam vulputate aliquet tortor ac consectetur. Etiam ac tortor aliquet, aliquam lacus efficitur, blandit nisl. Vestibulum in orci ut massa semper ultrices ut et nibh. Sed laoreet cursus libero eget maximus. Integer non lacus cursus tellus porttitor placerat ut sit amet magna.\r\n\r\nPellentesque sagittis fringilla massa eget bibendum. Etiam vestibulum pretium risus, in sollicitudin nisl mollis nec. Integer quis turpis vulputate, volutpat ligula nec, dignissim dolor. Suspendisse potenti. Sed eget nunc vitae urna sodales euismod. Vestibulum mollis, metus at gravida malesuada, enim leo pharetra eros, at volutpat sem odio a lacus. Donec rutrum nisl in metus vehicula, in bibendum sapien vestibulum. Donec porttitor nisi risus, ut dignissim sem iaculis eget. Suspendisse condimentum congue ex, sed placerat nibh vehicula vel. Vestibulum aliquam lobortis dapibus. Donec pharetra posuere sapien a fermentum. Duis turpis nibh, viverra vel risus vel, varius blandit dolor. Praesent fringilla, lectus malesuada dapibus pharetra, risus lorem interdum turpis, id efficitur elit quam a eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer eu convallis libero.\r\n\r\nAliquam sed enim lorem. Nunc ullamcorper bibendum mauris molestie ullamcorper. In euismod egestas felis. Vivamus interdum iaculis eros eget pretium. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce non metus non urna hendrerit bibendum. Phasellus et viverra ex, ut maximus urna. Sed non justo id dolor mattis placerat eget commodo velit. Donec ut metus lacus. Proin eget eros eget elit bibendum blandit. Cras volutpat accumsan nunc in molestie. Nunc ultrices nibh ut ornare vulputate. Morbi sed efficitur sem.', '2019-03-05 15:38:36', 7, 1, 'Rotation en avant.', NULL),
(16, 'Backflip', 'backflip.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus est diam, tincidunt ac lorem sed, vehicula lobortis ligula. Nullam id scelerisque magna, et cursus arcu. Proin eleifend lacus sit amet bibendum imperdiet. Fusce a iaculis ex, eu euismod nisl. Proin ut fringilla nunc, ac suscipit magna. Curabitur mollis in ipsum vitae ullamcorper. In quis diam ut eros faucibus accumsan in ut est. In nec finibus ex. Etiam vulputate aliquet tortor ac consectetur. Etiam ac tortor aliquet, aliquam lacus efficitur, blandit nisl. Vestibulum in orci ut massa semper ultrices ut et nibh. Sed laoreet cursus libero eget maximus. Integer non lacus cursus tellus porttitor placerat ut sit amet magna.\r\n\r\nPellentesque sagittis fringilla massa eget bibendum. Etiam vestibulum pretium risus, in sollicitudin nisl mollis nec. Integer quis turpis vulputate, volutpat ligula nec, dignissim dolor. Suspendisse potenti. Sed eget nunc vitae urna sodales euismod. Vestibulum mollis, metus at gravida malesuada, enim leo pharetra eros, at volutpat sem odio a lacus. Donec rutrum nisl in metus vehicula, in bibendum sapien vestibulum. Donec porttitor nisi risus, ut dignissim sem iaculis eget. Suspendisse condimentum congue ex, sed placerat nibh vehicula vel. Vestibulum aliquam lobortis dapibus. Donec pharetra posuere sapien a fermentum. Duis turpis nibh, viverra vel risus vel, varius blandit dolor. Praesent fringilla, lectus malesuada dapibus pharetra, risus lorem interdum turpis, id efficitur elit quam a eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer eu convallis libero.\r\n\r\nAliquam sed enim lorem. Nunc ullamcorper bibendum mauris molestie ullamcorper. In euismod egestas felis. Vivamus interdum iaculis eros eget pretium. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce non metus non urna hendrerit bibendum. Phasellus et viverra ex, ut maximus urna. Sed non justo id dolor mattis placerat eget commodo velit. Donec ut metus lacus. Proin eget eros eget elit bibendum blandit. Cras volutpat accumsan nunc in molestie. Nunc ultrices nibh ut ornare vulputate. Morbi sed efficitur sem.', '2019-03-05 09:23:25', 7, 1, 'Rotation en arrière.', '2019-04-20 14:58:04'),
(17, 'Cork', 'cork.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus est diam, tincidunt ac lorem sed, vehicula lobortis ligula. Nullam id scelerisque magna, et cursus arcu. Proin eleifend lacus sit amet bibendum imperdiet. Fusce a iaculis ex, eu euismod nisl. Proin ut fringilla nunc, ac suscipit magna. Curabitur mollis in ipsum vitae ullamcorper. In quis diam ut eros faucibus accumsan in ut est. In nec finibus ex. Etiam vulputate aliquet tortor ac consectetur. Etiam ac tortor aliquet, aliquam lacus efficitur, blandit nisl. Vestibulum in orci ut massa semper ultrices ut et nibh. Sed laoreet cursus libero eget maximus. Integer non lacus cursus tellus porttitor placerat ut sit amet magna.\r\n\r\nPellentesque sagittis fringilla massa eget bibendum. Etiam vestibulum pretium risus, in sollicitudin nisl mollis nec. Integer quis turpis vulputate, volutpat ligula nec, dignissim dolor. Suspendisse potenti. Sed eget nunc vitae urna sodales euismod. Vestibulum mollis, metus at gravida malesuada, enim leo pharetra eros, at volutpat sem odio a lacus. Donec rutrum nisl in metus vehicula, in bibendum sapien vestibulum. Donec porttitor nisi risus, ut dignissim sem iaculis eget. Suspendisse condimentum congue ex, sed placerat nibh vehicula vel. Vestibulum aliquam lobortis dapibus. Donec pharetra posuere sapien a fermentum. Duis turpis nibh, viverra vel risus vel, varius blandit dolor. Praesent fringilla, lectus malesuada dapibus pharetra, risus lorem interdum turpis, id efficitur elit quam a eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer eu convallis libero.\r\n\r\nAliquam sed enim lorem. Nunc ullamcorper bibendum mauris molestie ullamcorper. In euismod egestas felis. Vivamus interdum iaculis eros eget pretium. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce non metus non urna hendrerit bibendum. Phasellus et viverra ex, ut maximus urna. Sed non justo id dolor mattis placerat eget commodo velit. Donec ut metus lacus. Proin eget eros eget elit bibendum blandit. Cras volutpat accumsan nunc in molestie. Nunc ultrices nibh ut ornare vulputate. Morbi sed efficitur sem.', '2019-03-05 10:22:21', 8, 1, 'Un cork est une rotation horizontale plus ou moins désaxée, selon un mouvement d\'épaules effectué juste au moment du saut.', NULL),
(18, 'Rodeo', 'rodeo.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus est diam, tincidunt ac lorem sed, vehicula lobortis ligula. Nullam id scelerisque magna, et cursus arcu. Proin eleifend lacus sit amet bibendum imperdiet. Fusce a iaculis ex, eu euismod nisl. Proin ut fringilla nunc, ac suscipit magna. Curabitur mollis in ipsum vitae ullamcorper. In quis diam ut eros faucibus accumsan in ut est. In nec finibus ex. Etiam vulputate aliquet tortor ac consectetur. Etiam ac tortor aliquet, aliquam lacus efficitur, blandit nisl. Vestibulum in orci ut massa semper ultrices ut et nibh. Sed laoreet cursus libero eget maximus. Integer non lacus cursus tellus porttitor placerat ut sit amet magna.\r\n\r\nPellentesque sagittis fringilla massa eget bibendum. Etiam vestibulum pretium risus, in sollicitudin nisl mollis nec. Integer quis turpis vulputate, volutpat ligula nec, dignissim dolor. Suspendisse potenti. Sed eget nunc vitae urna sodales euismod. Vestibulum mollis, metus at gravida malesuada, enim leo pharetra eros, at volutpat sem odio a lacus. Donec rutrum nisl in metus vehicula, in bibendum sapien vestibulum. Donec porttitor nisi risus, ut dignissim sem iaculis eget. Suspendisse condimentum congue ex, sed placerat nibh vehicula vel. Vestibulum aliquam lobortis dapibus. Donec pharetra posuere sapien a fermentum. Duis turpis nibh, viverra vel risus vel, varius blandit dolor. Praesent fringilla, lectus malesuada dapibus pharetra, risus lorem interdum turpis, id efficitur elit quam a eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer eu convallis libero.\r\n\r\nAliquam sed enim lorem. Nunc ullamcorper bibendum mauris molestie ullamcorper. In euismod egestas felis. Vivamus interdum iaculis eros eget pretium. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce non metus non urna hendrerit bibendum. Phasellus et viverra ex, ut maximus urna. Sed non justo id dolor mattis placerat eget commodo velit. Donec ut metus lacus. Proin eget eros eget elit bibendum blandit. Cras volutpat accumsan nunc in molestie. Nunc ultrices nibh ut ornare vulputate. Morbi sed efficitur sem.', '2019-03-05 21:41:38', 8, 1, 'Le rodeo est une rotation désaxée, qui se reconnaît par son aspect vrillé.', NULL),
(19, 'Nose Slide', 'noseslide.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus est diam, tincidunt ac lorem sed, vehicula lobortis ligula. Nullam id scelerisque magna, et cursus arcu. Proin eleifend lacus sit amet bibendum imperdiet. Fusce a iaculis ex, eu euismod nisl. Proin ut fringilla nunc, ac suscipit magna. Curabitur mollis in ipsum vitae ullamcorper. In quis diam ut eros faucibus accumsan in ut est. In nec finibus ex. Etiam vulputate aliquet tortor ac consectetur. Etiam ac tortor aliquet, aliquam lacus efficitur, blandit nisl. Vestibulum in orci ut massa semper ultrices ut et nibh. Sed laoreet cursus libero eget maximus. Integer non lacus cursus tellus porttitor placerat ut sit amet magna.\r\n\r\nPellentesque sagittis fringilla massa eget bibendum. Etiam vestibulum pretium risus, in sollicitudin nisl mollis nec. Integer quis turpis vulputate, volutpat ligula nec, dignissim dolor. Suspendisse potenti. Sed eget nunc vitae urna sodales euismod. Vestibulum mollis, metus at gravida malesuada, enim leo pharetra eros, at volutpat sem odio a lacus. Donec rutrum nisl in metus vehicula, in bibendum sapien vestibulum. Donec porttitor nisi risus, ut dignissim sem iaculis eget. Suspendisse condimentum congue ex, sed placerat nibh vehicula vel. Vestibulum aliquam lobortis dapibus. Donec pharetra posuere sapien a fermentum. Duis turpis nibh, viverra vel risus vel, varius blandit dolor. Praesent fringilla, lectus malesuada dapibus pharetra, risus lorem interdum turpis, id efficitur elit quam a eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer eu convallis libero.\r\n\r\nAliquam sed enim lorem. Nunc ullamcorper bibendum mauris molestie ullamcorper. In euismod egestas felis. Vivamus interdum iaculis eros eget pretium. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce non metus non urna hendrerit bibendum. Phasellus et viverra ex, ut maximus urna. Sed non justo id dolor mattis placerat eget commodo velit. Donec ut metus lacus. Proin eget eros eget elit bibendum blandit. Cras volutpat accumsan nunc in molestie. Nunc ultrices nibh ut ornare vulputate. Morbi sed efficitur sem.', '2019-03-05 09:32:30', 9, 1, 'Un nose slide consiste à glisser sur une barre de slide avec l\'avant de la planche sur la barre.', NULL),
(20, 'Tail Slide', 'tailslide.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus est diam, tincidunt ac lorem sed, vehicula lobortis ligula. Nullam id scelerisque magna, et cursus arcu. Proin eleifend lacus sit amet bibendum imperdiet. Fusce a iaculis ex, eu euismod nisl. Proin ut fringilla nunc, ac suscipit magna. Curabitur mollis in ipsum vitae ullamcorper. In quis diam ut eros faucibus accumsan in ut est. In nec finibus ex. Etiam vulputate aliquet tortor ac consectetur. Etiam ac tortor aliquet, aliquam lacus efficitur, blandit nisl. Vestibulum in orci ut massa semper ultrices ut et nibh. Sed laoreet cursus libero eget maximus. Integer non lacus cursus tellus porttitor placerat ut sit amet magna.\r\n\r\nPellentesque sagittis fringilla massa eget bibendum. Etiam vestibulum pretium risus, in sollicitudin nisl mollis nec. Integer quis turpis vulputate, volutpat ligula nec, dignissim dolor. Suspendisse potenti. Sed eget nunc vitae urna sodales euismod. Vestibulum mollis, metus at gravida malesuada, enim leo pharetra eros, at volutpat sem odio a lacus. Donec rutrum nisl in metus vehicula, in bibendum sapien vestibulum. Donec porttitor nisi risus, ut dignissim sem iaculis eget. Suspendisse condimentum congue ex, sed placerat nibh vehicula vel. Vestibulum aliquam lobortis dapibus. Donec pharetra posuere sapien a fermentum. Duis turpis nibh, viverra vel risus vel, varius blandit dolor. Praesent fringilla, lectus malesuada dapibus pharetra, risus lorem interdum turpis, id efficitur elit quam a eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer eu convallis libero.\r\n\r\nAliquam sed enim lorem. Nunc ullamcorper bibendum mauris molestie ullamcorper. In euismod egestas felis. Vivamus interdum iaculis eros eget pretium. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce non metus non urna hendrerit bibendum. Phasellus et viverra ex, ut maximus urna. Sed non justo id dolor mattis placerat eget commodo velit. Donec ut metus lacus. Proin eget eros eget elit bibendum blandit. Cras volutpat accumsan nunc in molestie. Nunc ultrices nibh ut ornare vulputate. Morbi sed efficitur sem.', '2019-03-05 09:24:26', 9, 1, 'Un tail slide consiste à glisser sur une barre de slide avec l\'arrière de la planche sur la barre.', '2019-04-11 08:04:53');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  `confirmation_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `avatar`, `website`, `description`, `created_at`, `confirmed`, `confirmation_token`, `role`) VALUES
(1, 'Admin', 'jean.webdev@gmail.com', '$argon2i$v=19$m=1024,t=2,p=2$TjBSMUFib0tDc1Q5dUdMNg$BIroF8SZWbkd1ZLPxO6xt7dWJf0Naw2FBDnsUGCREbQ', 'default-avatar.jpg', 'http://jeandescorps.fr', NULL, '2019-03-02 00:00:00', 1, NULL, 'ROLE_ADMIN'),
(2, 'User', 'jean.descorps@laposte.net', '$argon2i$v=19$m=1024,t=2,p=2$Z2J0Nk9wdDQ4akREL0wwMQ$ywl/WlvWkwcE3xzkBQhcpHfP/Hgd+m0RNV5TZxfbpTQ', 'default-avatar.jpg', NULL, NULL, '2019-04-22 11:00:23', 1, '', 'ROLE_USER');

-- --------------------------------------------------------

--
-- Structure de la table `video`
--

DROP TABLE IF EXISTS `video`;
CREATE TABLE IF NOT EXISTS `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trick_id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_7CC7DA2CB281BE2E` (`trick_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `video`
--

INSERT INTO `video` (`id`, `trick_id`, `url`) VALUES
(3, 12, 'https://www.youtube.com/embed/0Oez89EoE_c'),
(4, 12, 'https://www.youtube.com/embed/f9FjhCt_w2U'),
(6, 14, 'https://www.youtube.com/embed/vquZvxGMJT0'),
(7, 16, 'https://www.youtube.com/embed/SlhGVnFPTDE'),
(8, 16, 'https://www.youtube.com/embed/c6ry31Wc8sI'),
(9, 15, 'https://www.youtube.com/embed/xhvqu2XBvI0'),
(10, 15, 'https://www.youtube.com/embed/eGJ8keB1-JM'),
(11, 17, 'https://www.youtube.com/embed/FMHiSF0rHF8'),
(12, 18, 'https://www.youtube.com/embed/vf9Z05XY79A');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_9474526CB281BE2E` FOREIGN KEY (`trick_id`) REFERENCES `trick` (`id`);

--
-- Contraintes pour la table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `FK_C53D045FB281BE2E` FOREIGN KEY (`trick_id`) REFERENCES `trick` (`id`);

--
-- Contraintes pour la table `trick`
--
ALTER TABLE `trick`
  ADD CONSTRAINT `FK_D8F0A91E12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_D8F0A91EA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `FK_7CC7DA2CB281BE2E` FOREIGN KEY (`trick_id`) REFERENCES `trick` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 15 mars 2021 à 17:50
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `dcs_avionjkas`
--

-- --------------------------------------------------------

--
-- Structure de la table `avions`
--

CREATE TABLE `avions` (
  `id_avion` int(3) NOT NULL,
  `description` text NOT NULL,
  `image_cockpit` varchar(255) NOT NULL,
  `image_ext` varchar(255) NOT NULL,
  `movie` varchar(255) NOT NULL,
  `plane_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `avions`
--

INSERT INTO `avions` (`id_avion`, `description`, `image_cockpit`, `image_ext`, `movie`, `plane_name`) VALUES
(1, 'Le Hornet est un chasseur réellement multi-rôles, qui peut passer de l\'attaque de cibles au sol au combat air-air d\'un simple \r\nappui sur un bouton. Aussi à l\'aise sur un porte-avions que sur une base aérienne terrestre, le Hornet est équipé d\'une vaste \r\ngamme de capteurs comprenant un radar, un pod de désignation et un viseur de casque. Au delà de son canon interne de 20 mm, \r\nle Hornet peut être armé d\'une large panoplie de bombes et de roquettes non guidées, de bombes guidées laser ou GPS, de missiles \r\nair-sol de toutes sortes et missiles air-air à guidage radar ou infrarouge.\r\n\r\nDCS World constitue le théâtre de bataille numérique le plus riche et le plus authentique pour le Hornet.\r\n\r\nFonctionnalités clé de DCS: F/A-18C Hornet :\r\n\r\nModèle de vol professionnel (PFM) et système de commandes de vol (FCS) authentique\r\nModèle 3D du F/A-18C, réaliste jusqu\'au moindre rivet\r\nSimulation détaillée des nombreux systèmes du Hornet comme les moteurs, le carburant, l\'électricité, l\'hydraulique, les radios, l\'éclairage, les modes d\'urgences et bien d\'autres.\r\nSystèmes de navigation inertiels et GPS avec carte défilante\r\nPratiquement toutes les armes et tous les capteurs utilisés par les F/A-18C de l\'US Navy au milieu des années 2000\r\nCockpit ultra-réaliste, et bien sûr interactif avec la souris (\"cliquable\")\r\nSystème de récupération de vrille\r\nSons authentiques du Hornet, réalisés avec l\'aide de Boeing\r\nNouveaux effets comme la vapeur de condensation au-dessus des ailes\r\nPrise en charge de la réalité virtuelle\r\nMultiples livrées', 'img/f18/cockpit1.jpg', 'img/f18/f18_pav.jpg', '', 'F18'),
(2, 'Le M-2000C est un chasseur de 4ème génération multi-rôle, de conception française. Il fût conçu dans les années 70 comme \r\nchasseur léger et plus de 600 M-2000C ont été produits à ce jour. Le M-2000C est un monoréacteur avec une aile delta \"pure\" \r\n(sans plan horizontal séparé à l\'empennage). Son système de commandes de vol électriques et sa stabilité réduite lui procurent \r\nune excellente manœuvrabilité. Le M-2000C est équipé d’un radar multi-mode RDI capable de suivre et d’engager des cibles hors de \r\nportée visuelle. En plus de pouvoir engager les autres appareils avec ses missiles et ses canons, le M-2000C peut attaquer des cibles au sol avec ses canons, des roquettes ou des bombes. Le M-2000C est parfaitement adapté aux champs de bataille de \r\nDCS World !\r\n\r\nLe M-2000C est fortement optimisé pour fonctionner dans DCS World et profiter avantageusement de l’environnement que seul Eagle Dynamics peut offrir. ', 'img/m2000/cockpit1.jpg', 'img/m2000/m2000face.jpg', '', 'M2000'),
(3, 'Le Hornet est un chasseur réellement multi-rôles, qui peut passer de l\'attaque de cibles au sol au combat air-air d\'un simple \r\nappui sur un bouton. Aussi à l\'aise sur un porte-avions que sur une base aérienne terrestre, le Hornet est équipé d\'une vaste \r\ngamme de capteurs comprenant un radar, un pod de désignation et un viseur de casque. Au delà de son canon interne de 20 mm, \r\nle Hornet peut être armé d\'une large panoplie de bombes et de roquettes non guidées, de bombes guidées laser ou GPS, de missiles \r\nair-sol de toutes sortes et missiles air-air à guidage radar ou infrarouge.\r\n\r\nDCS World constitue le théâtre de bataille numérique le plus riche et le plus authentique pour le Hornet.\r\n\r\nFonctionnalités clé de DCS: F/A-18C Hornet :\r\n\r\nModèle de vol professionnel (PFM) et système de commandes de vol (FCS) authentique\r\nModèle 3D du F/A-18C, réaliste jusqu\'au moindre rivet\r\nSimulation détaillée des nombreux systèmes du Hornet comme les moteurs, le carburant, l\'électricité, l\'hydraulique, les radios, l\'éclairage, les modes d\'urgences et bien d\'autres.\r\nSystèmes de navigation inertiels et GPS avec carte défilante\r\nPratiquement toutes les armes et tous les capteurs utilisés par les F/A-18C de l\'US Navy au milieu des années 2000\r\nCockpit ultra-réaliste, et bien sûr interactif avec la souris (\"cliquable\")\r\nSystème de récupération de vrille\r\nSons authentiques du Hornet, réalisés avec l\'aide de Boeing\r\nNouveaux effets comme la vapeur de condensation au-dessus des ailes\r\nPrise en charge de la réalité virtuelle\r\nMultiples livrées', 'img/f18/cockpit1.jpg', 'img/f18/f18_pav.jpg', '', 'F16'),
(4, 'Le Hornet est un chasseur réellement multi-rôles, qui peut passer de l\'attaque de cibles au sol au combat air-air d\'un simple \r\nappui sur un bouton. Aussi à l\'aise sur un porte-avions que sur une base aérienne terrestre, le Hornet est équipé d\'une vaste \r\ngamme de capteurs comprenant un radar, un pod de désignation et un viseur de casque. Au delà de son canon interne de 20 mm, \r\nle Hornet peut être armé d\'une large panoplie de bombes et de roquettes non guidées, de bombes guidées laser ou GPS, de missiles \r\nair-sol de toutes sortes et missiles air-air à guidage radar ou infrarouge.\r\n\r\nDCS World constitue le théâtre de bataille numérique le plus riche et le plus authentique pour le Hornet.\r\n\r\nFonctionnalités clé de DCS: F/A-18C Hornet :\r\n\r\nModèle de vol professionnel (PFM) et système de commandes de vol (FCS) authentique\r\nModèle 3D du F/A-18C, réaliste jusqu\'au moindre rivet\r\nSimulation détaillée des nombreux systèmes du Hornet comme les moteurs, le carburant, l\'électricité, l\'hydraulique, les radios, l\'éclairage, les modes d\'urgences et bien d\'autres.\r\nSystèmes de navigation inertiels et GPS avec carte défilante\r\nPratiquement toutes les armes et tous les capteurs utilisés par les F/A-18C de l\'US Navy au milieu des années 2000\r\nCockpit ultra-réaliste, et bien sûr interactif avec la souris (\"cliquable\")\r\nSystème de récupération de vrille\r\nSons authentiques du Hornet, réalisés avec l\'aide de Boeing\r\nNouveaux effets comme la vapeur de condensation au-dessus des ailes\r\nPrise en charge de la réalité virtuelle\r\nMultiples livrées', 'img/f18/cockpit1.jpg', 'img/f18/f18_pav.jpg', '', 'F14'),
(5, 'Le Hornet est un chasseur réellement multi-rôles, qui peut passer de l\'attaque de cibles au sol au combat air-air d\'un simple \r\nappui sur un bouton. Aussi à l\'aise sur un porte-avions que sur une base aérienne terrestre, le Hornet est équipé d\'une vaste \r\ngamme de capteurs comprenant un radar, un pod de désignation et un viseur de casque. Au delà de son canon interne de 20 mm, \r\nle Hornet peut être armé d\'une large panoplie de bombes et de roquettes non guidées, de bombes guidées laser ou GPS, de missiles \r\nair-sol de toutes sortes et missiles air-air à guidage radar ou infrarouge.\r\n\r\nDCS World constitue le théâtre de bataille numérique le plus riche et le plus authentique pour le Hornet.\r\n\r\nFonctionnalités clé de DCS: F/A-18C Hornet :\r\n\r\nModèle de vol professionnel (PFM) et système de commandes de vol (FCS) authentique\r\nModèle 3D du F/A-18C, réaliste jusqu\'au moindre rivet\r\nSimulation détaillée des nombreux systèmes du Hornet comme les moteurs, le carburant, l\'électricité, l\'hydraulique, les radios, l\'éclairage, les modes d\'urgences et bien d\'autres.\r\nSystèmes de navigation inertiels et GPS avec carte défilante\r\nPratiquement toutes les armes et tous les capteurs utilisés par les F/A-18C de l\'US Navy au milieu des années 2000\r\nCockpit ultra-réaliste, et bien sûr interactif avec la souris (\"cliquable\")\r\nSystème de récupération de vrille\r\nSons authentiques du Hornet, réalisés avec l\'aide de Boeing\r\nNouveaux effets comme la vapeur de condensation au-dessus des ailes\r\nPrise en charge de la réalité virtuelle\r\nMultiples livrées', 'img/f18/cockpit1.jpg', 'img/f18/f18_pav.jpg', '', 'F4U');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `avions`
--
ALTER TABLE `avions`
  ADD PRIMARY KEY (`id_avion`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `avions`
--
ALTER TABLE `avions`
  MODIFY `id_avion` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

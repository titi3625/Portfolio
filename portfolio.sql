-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Lun 21 Janvier 2013 à 15:31
-- Version du serveur: 5.5.24-log
-- Version de PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `portfolio`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `id_categorie` int(10) NOT NULL AUTO_INCREMENT,
  `nom_categorie` varchar(25) NOT NULL,
  `balise_categorie` varchar(10) NOT NULL,
  PRIMARY KEY (`id_categorie`),
  KEY `id_categorie` (`id_categorie`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`id_categorie`, `nom_categorie`, `balise_categorie`) VALUES
(1, 'Java', 'java'),
(2, 'C#.NET', 'csharp'),
(3, 'Web', 'web'),
(4, 'PHP', 'php'),
(5, 'BDD', 'bdd');

-- --------------------------------------------------------

--
-- Structure de la table `posseder`
--

CREATE TABLE IF NOT EXISTS `posseder` (
  `id_projet` int(10) NOT NULL,
  `id_categorie` int(10) NOT NULL,
  PRIMARY KEY (`id_projet`,`id_categorie`),
  KEY `id_categorie` (`id_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `posseder`
--

INSERT INTO `posseder` (`id_projet`, `id_categorie`) VALUES
(2, 2),
(1, 3),
(1, 4),
(1, 5);

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE IF NOT EXISTS `projet` (
  `id_projet` int(10) NOT NULL AUTO_INCREMENT,
  `nom_projet` varchar(25) NOT NULL,
  `description_projet` text NOT NULL,
  `image_projet` varchar(60) NOT NULL,
  `duree_projet` int(3) NOT NULL,
  PRIMARY KEY (`id_projet`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `projet`
--

INSERT INTO `projet` (`id_projet`, `nom_projet`, `description_projet`, `image_projet`, `duree_projet`) VALUES
(1, 'GSB Admin (web)', 'Ce projet consistait à développer la partie administration (back-office) d''un site marchand fictif. Nous devions créer une interface permettant de gérer les commandes, les produits ainsi que les clients et utilisateurs dont les informations sont contenues dans une base de données au format MySql. Les communications avec la BDD se font en PHP. L''inferface est en HTML-CSS-JavaScript(JQuery).', 'images/projet_gsbadmin.jpg', 6),
(2, 'GSB Admin (C#)', 'Ce projet fait suite au premier projet GSBadmin sauf que cette fois-ci la mission consistait à créer une interface de gestion (back-office) en C#.\nL''application est autonome et permet de gérer les commandes, les produits et les clients et utilisateurs.\nCette application communique continuellement avec la base de données et les modifications sont effectuées en temps réel.\nAttention : Cette application nécéssite le .NET Framework 4.0 pour fonctionner ainsi que le fichier de configuration qui contient les informations de connexion à la BDD.', 'images/projet_gsbadmincsharp.jpg', 6);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `posseder`
--
ALTER TABLE `posseder`
  ADD CONSTRAINT `posseder_ibfk_1` FOREIGN KEY (`id_projet`) REFERENCES `projet` (`id_projet`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posseder_ibfk_2` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id_categorie`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

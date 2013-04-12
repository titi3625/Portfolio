-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Ven 12 Avril 2013 à 10:05
-- Version du serveur: 5.5.24-log
-- Version de PHP: 5.4.3

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`id_categorie`, `nom_categorie`, `balise_categorie`) VALUES
(1, 'Java', 'java'),
(2, 'C#.NET', 'csharp'),
(3, 'Web', 'web');

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
(5, 3),
(6, 3);

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
  `situation_projet` text NOT NULL,
  `activite_projet` text NOT NULL,
  PRIMARY KEY (`id_projet`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `projet`
--

INSERT INTO `projet` (`id_projet`, `nom_projet`, `description_projet`, `image_projet`, `duree_projet`, `situation_projet`, `activite_projet`) VALUES
(1, 'GSB Admin (PHP)', 'Ce projet consistait à développer la partie administration (back-office) d''un site marchand fictif. Nous devions créer une interface permettant de gérer les commandes, les produits ainsi que les clients et utilisateurs dont les informations sont contenues dans une base de données au format MySql. Les communications avec la BDD se font en PHP. L''inferface est en HTML-CSS-JavaScript(JQuery).', 'images/projet_gsbadmin.jpg', 6, 'Production d’une solution logicielle et d’infrastructure<br>\r\nÉlaboration de documents relatifs à la production et à la fourniture de services<br>', 'A1.1.1 Analyse du cahier des charges d''un service à produire<br>\nA4.1.1 Proposition d''une solution applicative<br>\nA4.1.3 Conception ou adaptation d''une base de données<br>\nA4.1.4 Définition des caractéristiques d''une solution applicative<br>\nA4.1.6 Gestion d''environnements de développement et de test<br>\nA4.1.7 Développement, utilisation ou adaptation de composants logiciels<br>\nA4.1.8 Réalisation des tests nécessaires à la validation d''éléments adaptés ou développés<br>\nA4.1.9 Rédaction d''une documentation technique<br>\nA4.1.10 Rédaction d''une documentation d''utilisation<br>\nA4.2.1 Analyse et correction d''un dysfonctionnement, d''un problème de qualité de service ou de sécurité<br>'),
(2, 'GSB Admin (C#)', 'Ce projet fait suite au premier projet GSBadmin sauf que cette fois-ci la mission consistait à créer une interface de gestion (back-office) en C#.\nL''application est autonome et permet de gérer les commandes, les produits et les clients et utilisateurs.\nCette application communique continuellement avec la base de données et les modifications sont effectuées en temps réel.\nAttention : Cette application nécéssite le .NET Framework 4.0 pour fonctionner ainsi que le fichier de configuration qui contient les informations de connexion à la BDD.', 'images/projet_gsbadmincsharp.jpg', 6, 'Production d’une solution logicielle et d’infrastructure<br>\r\nÉlaboration de documents relatifs à la production et à la fourniture de services<br>\r\nMise en place d’un dispositif de veille technologique<br>\r\n', 'A1.1.1 Analyse du cahier des charges d''un service à produire<br>\r\nA1.2.2 Rédaction des spécifications techniques de la solution retenue (adaptation d''une solution existante ou réalisation d''une nouvelle solution)<br>\r\nA4.1.1 Proposition d''une solution applicative<br>\r\nA4.1.2 Conception ou adaptation de l''interface utilisateur d''une solution applicative<br>\r\nA4.1.3 Conception ou adaptation d''une base de données<br>\r\nA4.1.4 Définition des caractéristiques d''une solution applicative<br>\r\nA4.1.6 Gestion d''environnements de développement et de test<br>\r\nA4.1.7 Développement, utilisation ou adaptation de composants logiciels<br>\r\nA4.1.8 Réalisation des tests nécessaires à la validation d''éléments adaptés ou développés<br>\r\nA4.1.1 Rédaction d''une documentation d''utilisation<br>\r\nA4.2.1 Analyse et correction d''un dysfonctionnement, d''un problème de qualité de service ou de sécurité<br>'),
(5, 'Projet Courrier', 'J''ai réalisé ce projet dans le cadre de mon stage de deuxième année de BTS SIO. Ce projet consistait à développer un logiciel de gestion des courriers postaux de l''entreprise. Le logiciel devait gérer les courriers postaux de tout type (colis, recommandé,...) aussi bien interne qu''externe ainsi que les accusés de réception. Le logiciel est également doté d''un système d''identification des utilisateurs et d''un interface d''administration.\r\nLe site utilise du PHP  et du javascript (jQuery, AjaX).', 'images/projet_courrier.jpg', 8, 'Production d’une solution logicielle et d’infrastructure<br>\r\nÉlaboration de documents relatifs à la production et à la fourniture de services<br>', 'A1.1.1 Analyse du cahier des charges d''un service à produire<br>\r\nA1.3.3 Accompagnement de la mise en place d''un nouveau service<br>\r\nA4.1.2 Conception ou adaptation de l''interface utilisateur d''une solution applicative<br>\r\nA4.1.3 Conception ou adaptation d''une base de données<br>\r\nA4.1.4 Définition des caractéristiques d''une solution applicative<br>\r\nA4.1.6 Gestion d''environnements de développement et de test<br>\r\nA4.1.7 Développement, utilisation ou adaptation de composants logiciels<br>\r\nA4.1.8 Réalisation des tests nécessaires à la validation d''éléments adaptés ou développés<br>\r\nA4.1.1 Rédaction d''une documentation d''utilisation<br>\r\nA4.2.1 Analyse et correction d''un dysfonctionnement, d''un problème de qualité de service ou de sécurité<br>\r\n'),
(6, 'Projet TDWebShop', 'J''ai effectué cette activité au cours de mon stage de première année. J''avais pour mission de configurer un site marchand TDWebShop. C''est un fournisseur de site marchand payant destiné aux entreprises. Ce genre de site permet de faire l''intermédiaire entre un grossiste (aux choix parmi ceux proposé) et l''entreprise elle même.', 'images/projet_tdwebshop.jpg', 4, 'Mise en place d’un dispositif de veille technologique<br>', 'A3.3.1 Administration sur site ou à distance des éléments d''un réseau, de serveurs, de services et d''équipements terminaux<br>\r\nA4.1.7 Développement, utilisation ou adaptation de composants logiciels<br>\r\nA4.2.3 Réalisation des tests nécessaires à la mise en production d''éléments mis à jour<br>\r\nA5.2.4 Étude d‘une technologie, d''un composant, d''un outil ou d''une méthode<br>');

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

-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mar 16 Avril 2013 à 10:58
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
  PRIMARY KEY (`id_categorie`)
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
  `competences_projet` text NOT NULL,
  PRIMARY KEY (`id_projet`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `projet`
--

INSERT INTO `projet` (`id_projet`, `nom_projet`, `description_projet`, `image_projet`, `duree_projet`, `situation_projet`, `activite_projet`, `competences_projet`) VALUES
(1, 'GSB Admin (PHP)', 'Ce projet consistait à développer la partie administration (back-office) d''un site marchand fictif. Nous devions créer une interface permettant de gérer les commandes, les produits ainsi que les clients et utilisateurs dont les informations sont contenues dans une base de données au format MySql. Les communications avec la BDD se font en PHP. L''inferface est en HTML-CSS-JavaScript(JQuery).', 'images/projet_gsbadmin.jpg', 6, 'Production d’une solution logicielle et d’infrastructure<br>\r\nÉlaboration de documents relatifs à la production et à la fourniture de services<br>', 'A1.1.1 Analyse du cahier des charges d''un service à produire<br>\nA4.1.1 Proposition d''une solution applicative<br>\nA4.1.3 Conception ou adaptation d''une base de données<br>\nA4.1.4 Définition des caractéristiques d''une solution applicative<br>\nA4.1.6 Gestion d''environnements de développement et de test<br>\nA4.1.7 Développement, utilisation ou adaptation de composants logiciels<br>\nA4.1.8 Réalisation des tests nécessaires à la validation d''éléments adaptés ou développés<br>\nA4.1.9 Rédaction d''une documentation technique<br>\nA4.1.10 Rédaction d''une documentation d''utilisation<br>\nA4.2.1 Analyse et correction d''un dysfonctionnement, d''un problème de qualité de service ou de sécurité<br>', 'C1.1.1.1 Recenser et caractériser les contextes d''utilisation, les processus et les acteurs sur lesquels le service à produire aura un impact<br>\nC1.1.1.2 Identifier les fonctionnalités attendues du service à produire<br>\nC1.1.1.3 Préparer sa participation à une réunion<br>\nC1.1.1.4 Rédiger un compte-rendu d''entretien, de réunion<br>\nC4.1.1.1 Identifier les composants logiciels nécessaires à la conception de la solution<br>\nC4.1.1.2 Estimer les éléments de coût et le délai de mise en œuvre de la solution<br>\nC4.1.2.1 Définir les spécifications de l''interface utilisateur de la solution applicative<br>\nC4.1.2.2 Maquetter un élément de la solution applicative<br>\nC4.1.2.3 Concevoir et valider la maquette en collaboration avec des utilisateurs<br>\nC4.1.3.1 Modéliser le schéma de données nécessaire à la mise en place de la solution applicative<br>\nC4.1.3.2 Implémenter le schéma de données dans un SGBD<br>\nC4.1.3.3 Programmer des éléments de la solution applicative dans le langage d''un SGBD<br>\nC4.1.3.4 Manipuler les données liées à la solution applicative à travers un langage de requête<br>\nC4.1.4.1 Recenser et caractériser les composants existants ou à développer utiles à la réalisation de la solution applicative dans le respect des budgets et planning prévisionnels<br>\nC4.1.6.1 Mettre en place et exploiter un environnement de développement<br>\nC4.1.6.2 Mettre en place et exploiter un environnement de test<br>\nC4.1.7.1 Développer les éléments d''une solution<br>\nC4.1.7.2 Créer un composant logiciel<br>\nC4.1.7.3 Analyser et modifier le code d''un composant logiciel<br>\nC4.1.7.4 Utiliser des composants d''accès aux données<br>\nC4.1.7.5 Mettre en place des éléments de sécurité liés à l''utilisation d''un composant logiciel<br>\nC4.1.8.1 Élaborer et réaliser des tests unitaires<br>\nC4.1.8.2 Mettre en évidence et corriger les écarts<br>\nC4.1.9.1 Produire ou mettre à jour la documentation technique d''une solution applicative et de ses composants logiciels<br>\nC4.1.10.1 Rédiger la documentation d''utilisation, une aide en ligne, une FAQ<br>\nC4.1.10.2 Adapter la documentation d''utilisation à chaque contexte d''utilisation<br>\nC4.2.1.1 Élaborer un jeu d''essai permettant de reproduire le dysfonctionnement<br>\nC4.2.1.2 Repérer les composants à l''origine du dysfonctionnement<br>\nC4.2.1.3 Concevoir les mises à jour à effectuer<br>\nC4.2.1.4 Réaliser les mises à jour<br>'),
(2, 'GSB Admin (C#)', 'Ce projet fait suite au premier projet GSBadmin sauf que cette fois-ci la mission consistait à créer une interface de gestion (back-office) en C#.\nL''application est autonome et permet de gérer les commandes, les produits et les clients et utilisateurs.\nCette application communique continuellement avec la base de données et les modifications sont effectuées en temps réel.\nAttention : Cette application nécéssite le .NET Framework 4.0 pour fonctionner ainsi que le fichier de configuration qui contient les informations de connexion à la BDD.', 'images/projet_gsbadmincsharp.jpg', 6, 'Production d’une solution logicielle et d’infrastructure<br>\r\nÉlaboration de documents relatifs à la production et à la fourniture de services<br>\r\nMise en place d’un dispositif de veille technologique<br>\r\n', 'A1.1.1 Analyse du cahier des charges d''un service à produire<br>\r\nA1.2.2 Rédaction des spécifications techniques de la solution retenue (adaptation d''une solution existante ou réalisation d''une nouvelle solution)<br>\r\nA4.1.1 Proposition d''une solution applicative<br>\r\nA4.1.2 Conception ou adaptation de l''interface utilisateur d''une solution applicative<br>\r\nA4.1.3 Conception ou adaptation d''une base de données<br>\r\nA4.1.4 Définition des caractéristiques d''une solution applicative<br>\r\nA4.1.6 Gestion d''environnements de développement et de test<br>\r\nA4.1.7 Développement, utilisation ou adaptation de composants logiciels<br>\r\nA4.1.8 Réalisation des tests nécessaires à la validation d''éléments adaptés ou développés<br>\r\nA4.1.1 Rédaction d''une documentation d''utilisation<br>\r\nA4.2.1 Analyse et correction d''un dysfonctionnement, d''un problème de qualité de service ou de sécurité<br>', 'C1.1.1.1 Recenser et caractériser les contextes d''utilisation, les processus et les acteurs sur lesquels le service à produire aura un impact<br>\nC1.1.1.2 Identifier les fonctionnalités attendues du service à produire<br>\nC1.1.1.3 Préparer sa participation à une réunion<br>\nC1.1.1.4 Rédiger un compte-rendu d''entretien, de réunion<br>\nC1.2.2.1 Recenser les composants nécessaires à la réalisation de la solution retenue<br>\nC1.2.2.2 Décrire l''implantation des différents composants de la solution et les échanges entre eux <br>\nC1.2.2.3 Rédiger les spécifications fonctionnelles et techniques de la solution retenue dans le formalisme exigé par l''organisation<br>\nC4.1.1.1 Identifier les composants logiciels nécessaires à la conception de la solution<br>\nC4.1.1.2 Estimer les éléments de coût et le délai de mise en œuvre de la solution<br>\nC4.1.2.1 Définir les spécifications de l''interface utilisateur de la solution applicative<br>\nC4.1.2.2 Maquetter un élément de la solution applicative<br>\nC4.1.2.3 Concevoir et valider la maquette en collaboration avec des utilisateurs<br>\nC4.1.3.1 Modéliser le schéma de données nécessaire à la mise en place de la solution applicative<br>\nC4.1.3.2 Implémenter le schéma de données dans un SGBD<br>\nC4.1.3.3 Programmer des éléments de la solution applicative dans le langage d''un SGBD<br>\nC4.1.3.4 Manipuler les données liées à la solution applicative à travers un langage de requête<br>\nC4.1.4.1 Recenser et caractériser les composants existants ou à développer utiles à la réalisation de la solution applicative dans le respect des budgets et planning prévisionnels<br>\nC4.1.6.1 Mettre en place et exploiter un environnement de développement<br>\nC4.1.6.2 Mettre en place et exploiter un environnement de test<br>\nC4.1.7.1 Développer les éléments d''une solution<br>\nC4.1.7.2 Créer un composant logiciel<br>\nC4.1.7.3 Analyser et modifier le code d''un composant logiciel<br>\nC4.1.7.4 Utiliser des composants d''accès aux données<br>\nC4.1.7.5 Mettre en place des éléments de sécurité liés à l''utilisation d''un composant logiciel<br>\nC4.1.8.1 Élaborer et réaliser des tests unitaires<br>\nC4.1.8.2 Mettre en évidence et corriger les écarts<br>\nC4.1.10.1 Rédiger la documentation d''utilisation, une aide en ligne, une FAQ<br>\nC4.1.10.2 Adapter la documentation d''utilisation à chaque contexte d''utilisation<br>\nC4.2.1.1 Élaborer un jeu d''essai permettant de reproduire le dysfonctionnement<br>\nC4.2.1.2 Repérer les composants à l''origine du dysfonctionnement<br>\nC4.2.1.3 Concevoir les mises à jour à effectuer<br>\nC4.2.1.4 Réaliser les mises à jour<br>'),
(5, 'Projet Courrier', 'J''ai réalisé ce projet dans le cadre de mon stage de deuxième année de BTS SIO. Ce projet consistait à développer un logiciel de gestion des courriers postaux de l''entreprise. Le logiciel devait gérer les courriers postaux de tout type (colis, recommandé,...) aussi bien interne qu''externe ainsi que les accusés de réception. Le logiciel est également doté d''un système d''identification des utilisateurs et d''un interface d''administration.\r\nLe site utilise du PHP  et du javascript (jQuery, AjaX).', 'images/projet_courrier.jpg', 8, 'Production d’une solution logicielle et d’infrastructure<br>\r\nÉlaboration de documents relatifs à la production et à la fourniture de services<br>', 'A1.1.1 Analyse du cahier des charges d''un service à produire<br>\r\nA1.3.3 Accompagnement de la mise en place d''un nouveau service<br>\r\nA4.1.2 Conception ou adaptation de l''interface utilisateur d''une solution applicative<br>\r\nA4.1.3 Conception ou adaptation d''une base de données<br>\r\nA4.1.4 Définition des caractéristiques d''une solution applicative<br>\r\nA4.1.6 Gestion d''environnements de développement et de test<br>\r\nA4.1.7 Développement, utilisation ou adaptation de composants logiciels<br>\r\nA4.1.8 Réalisation des tests nécessaires à la validation d''éléments adaptés ou développés<br>\r\nA4.1.1 Rédaction d''une documentation d''utilisation<br>\r\nA4.2.1 Analyse et correction d''un dysfonctionnement, d''un problème de qualité de service ou de sécurité<br>\r\n', 'C1.1.1.1 Recenser et caractériser les contextes d''utilisation, les processus et les acteurs sur lesquels le service à produire aura un impact<br>\nC1.1.1.2 Identifier les fonctionnalités attendues du service à produire<br>\nC1.1.1.3 Préparer sa participation à une réunion<br>\nC1.1.1.4 Rédiger un compte-rendu d''entretien, de réunion<br>\nC1.3.3.1 Mettre en place l''environnement de formation au nouveau service<br>\nC1.3.3.2 Informer et former les utilisateurs<br>\nC4.1.2.1 Définir les spécifications de l''interface utilisateur de la solution applicative<br>\nC4.1.2.2 Maquetter un élément de la solution applicative<br>\nC4.1.2.3 Concevoir et valider la maquette en collaboration avec des utilisateurs<br>\nC4.1.3.1 Modéliser le schéma de données nécessaire à la mise en place de la solution applicative<br>\nC4.1.3.2 Implémenter le schéma de données dans un SGBD<br>\nC4.1.3.3 Programmer des éléments de la solution applicative dans le langage d''un SGBD<br>\nC4.1.3.4 Manipuler les données liées à la solution applicative à travers un langage de requête<br>\nC4.1.4.1 Recenser et caractériser les composants existants ou à développer utiles à la réalisation de la solution applicative dans le respect des budgets et planning prévisionnels<br>\nC4.1.6.1 Mettre en place et exploiter un environnement de développement<br>\nC4.1.6.2 Mettre en place et exploiter un environnement de test<br>\nC4.1.7.1 Développer les éléments d''une solution<br>\nC4.1.7.2 Créer un composant logiciel<br>\nC4.1.7.3 Analyser et modifier le code d''un composant logiciel<br>\nC4.1.7.4 Utiliser des composants d''accès aux données<br>\nC4.1.7.5 Mettre en place des éléments de sécurité liés à l''utilisation d''un composant logiciel<br>\nC4.1.8.1 Élaborer et réaliser des tests unitaires<br>\nC4.1.8.2 Mettre en évidence et corriger les écarts<br>\nC4.1.10.1 Rédiger la documentation d''utilisation, une aide en ligne, une FAQ<br>\nC4.1.10.2 Adapter la documentation d''utilisation à chaque contexte d''utilisation<br>\nC4.2.1.1 Élaborer un jeu d''essai permettant de reproduire le dysfonctionnement<br>\nC4.2.1.2 Repérer les composants à l''origine du dysfonctionnement<br>\nC4.2.1.3 Concevoir les mises à jour à effectuer<br>\nC4.2.1.4 Réaliser les mises à jour<br>'),
(6, 'Projet TDWebShop', 'J''ai effectué cette activité au cours de mon stage de première année. J''avais pour mission de configurer un site marchand TDWebShop. C''est un fournisseur de site marchand payant destiné aux entreprises. Ce genre de site permet de faire l''intermédiaire entre un grossiste (aux choix parmi ceux proposé) et l''entreprise elle même. La configuration n''étant pas très accessible j''ai du appeler plusieurs fois le service client.', 'images/projet_tdwebshop.jpg', 4, 'Mise en place d’un dispositif de veille technologique<br>', 'A3.3.1 Administration sur site ou à distance des éléments d''un réseau, de serveurs, de services et d''équipements terminaux<br>\r\nA4.1.7 Développement, utilisation ou adaptation de composants logiciels<br>\r\nA4.2.3 Réalisation des tests nécessaires à la mise en production d''éléments mis à jour<br>\r\nA5.2.4 Étude d‘une technologie, d''un composant, d''un outil ou d''une méthode<br>', 'C3.3.1.1 Installer et configurer des éléments d''administration sur site ou à distance<br>\nC3.3.1.2 Administrer des éléments d''infrastructure sur site ou à distance<br>\nC4.1.7.1 Développer les éléments d''une solution<br>\nC4.1.7.2 Créer un composant logiciel<br>\nC4.1.7.3 Analyser et modifier le code d''un composant logiciel<br>\nC4.1.7.4 Utiliser des composants d''accès aux données<br>\nC4.1.7.5 Mettre en place des éléments de sécurité liés à l''utilisation d''un composant logiciel<br>\nC4.2.3.1 Élaborer et réaliser des tests d''intégration et de non régression de la solution mise à jour<br>\nC4.2.3.2 Concevoir une procédure de migration et l''appliquer dans le respect de la continuité de service<br>\nC5.2.4.1 Se documenter à propos d‘une technologie, d''un composant, d''un outil ou d''une méthode<br>\nC5.2.4.2 Identifier le potentiel et les limites d''une technologie, d''un composant, d''un outil ou d''une méthode par rapport à un service à produire<br>');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `posseder`
--
ALTER TABLE `posseder`
  ADD CONSTRAINT `posseder_ibfk_2` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id_categorie`),
  ADD CONSTRAINT `posseder_ibfk_1` FOREIGN KEY (`id_projet`) REFERENCES `projet` (`id_projet`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

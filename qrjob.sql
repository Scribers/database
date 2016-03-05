-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Sam 05 Mars 2016 à 17:48
-- Version du serveur :  5.5.47-0+deb8u1
-- Version de PHP :  5.6.17-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `qrjob`
--

-- --------------------------------------------------------

--
-- Structure de la table `applications`
--

CREATE TABLE IF NOT EXISTS `applications` (
`id` int(11) NOT NULL,
  `offer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cover_letter` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `companies`
--

CREATE TABLE IF NOT EXISTS `companies` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `short_description` varchar(100) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `cvs`
--

CREATE TABLE IF NOT EXISTS `cvs` (
`id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `experiences`
--

CREATE TABLE IF NOT EXISTS `experiences` (
`id` int(11) NOT NULL,
  `cv_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `begin` date NOT NULL,
  `end` date NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `formations`
--

CREATE TABLE IF NOT EXISTS `formations` (
`id` int(11) NOT NULL,
  `cv_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `begin` date NOT NULL,
  `end` date NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `jobtypes`
--

CREATE TABLE IF NOT EXISTS `jobtypes` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `offers`
--

CREATE TABLE IF NOT EXISTS `offers` (
`id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `type_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `date` date NOT NULL,
  `rome_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `romev3`
--

CREATE TABLE IF NOT EXISTS `romev3` (
`id` int(11) NOT NULL,
  `code` varchar(8) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1168 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `applications`
--
ALTER TABLE `applications`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_offer_id` (`offer_id`), ADD KEY `fk_user_id` (`user_id`);

--
-- Index pour la table `companies`
--
ALTER TABLE `companies`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `mail` (`mail`);

--
-- Index pour la table `cvs`
--
ALTER TABLE `cvs`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `experiences`
--
ALTER TABLE `experiences`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formations`
--
ALTER TABLE `formations`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jobtypes`
--
ALTER TABLE `jobtypes`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `offers`
--
ALTER TABLE `offers`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_company_id` (`company_id`), ADD KEY `type_id` (`type_id`), ADD KEY `rome_id` (`rome_id`);

--
-- Index pour la table `romev3`
--
ALTER TABLE `romev3`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `mail` (`mail`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `applications`
--
ALTER TABLE `applications`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `companies`
--
ALTER TABLE `companies`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `cvs`
--
ALTER TABLE `cvs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `experiences`
--
ALTER TABLE `experiences`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `formations`
--
ALTER TABLE `formations`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `jobtypes`
--
ALTER TABLE `jobtypes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `offers`
--
ALTER TABLE `offers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `romev3`
--
ALTER TABLE `romev3`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1168;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `applications`
--
ALTER TABLE `applications`
ADD CONSTRAINT `applications_ibfk_1` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`),
ADD CONSTRAINT `applications_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `offers`
--
ALTER TABLE `offers`
ADD CONSTRAINT `offers_ibfk_3` FOREIGN KEY (`rome_id`) REFERENCES `romev3` (`id`),
ADD CONSTRAINT `offers_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
ADD CONSTRAINT `offers_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `jobtypes` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

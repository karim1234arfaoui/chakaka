-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Jeu 29 Décembre 2022 à 16:09
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `solde`
--

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE IF NOT EXISTS `compte` (
  `ncin` varchar(8) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `adresse` varchar(30) NOT NULL,
  PRIMARY KEY (`ncin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `compte`
--

INSERT INTO `compte` (`ncin`, `nom`, `prenom`, `age`, `adresse`) VALUES
('12341234', '12341234', 'OUI', 21, 'EISRH');

-- --------------------------------------------------------

--
-- Structure de la table `deponse`
--

CREATE TABLE IF NOT EXISTS `deponse` (
  `numdec` int(11) NOT NULL AUTO_INCREMENT,
  `objet` varchar(30) NOT NULL,
  `montantdec` int(11) NOT NULL,
  `datedec` date NOT NULL,
  `ncin` varchar(30) NOT NULL,
  PRIMARY KEY (`numdec`),
  KEY `ncin` (`ncin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `deponse`
--

INSERT INTO `deponse` (`numdec`, `objet`, `montantdec`, `datedec`, `ncin`) VALUES
(1, 'alimentation', 11, '2022-12-05', '12341234'),
(2, 'alimentation', 11, '2022-12-13', '12341234');

-- --------------------------------------------------------

--
-- Structure de la table `recette`
--

CREATE TABLE IF NOT EXISTS `recette` (
  `numrec` int(11) NOT NULL AUTO_INCREMENT,
  `origine` int(11) NOT NULL,
  `montantrec` int(11) NOT NULL,
  `daterec` date NOT NULL,
  `ncin` varchar(8) NOT NULL,
  PRIMARY KEY (`numrec`),
  KEY `ncin` (`ncin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `recette`
--

INSERT INTO `recette` (`numrec`, `origine`, `montantrec`, `daterec`, `ncin`) VALUES
(1, 0, 11, '0000-00-00', '12341234'),
(2, 0, 11, '2022-11-29', '12341234');

-- --------------------------------------------------------

--
-- Structure de la table `relation`
--

CREATE TABLE IF NOT EXISTS `relation` (
  `numrel` int(11) NOT NULL AUTO_INCREMENT,
  `NCIN` varchar(8) NOT NULL,
  `sommerec` int(11) NOT NULL,
  `sommedec` int(11) NOT NULL,
  PRIMARY KEY (`numrel`),
  KEY `NCIN` (`NCIN`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `relation`
--

INSERT INTO `relation` (`numrel`, `NCIN`, `sommerec`, `sommedec`) VALUES
(1, '12341234', 0, 11);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `deponse`
--
ALTER TABLE `deponse`
  ADD CONSTRAINT `deponse_ibfk_1` FOREIGN KEY (`ncin`) REFERENCES `compte` (`ncin`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `recette`
--
ALTER TABLE `recette`
  ADD CONSTRAINT `recette_ibfk_1` FOREIGN KEY (`ncin`) REFERENCES `compte` (`ncin`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `relation`
--
ALTER TABLE `relation`
  ADD CONSTRAINT `relation_ibfk_1` FOREIGN KEY (`NCIN`) REFERENCES `compte` (`ncin`) ON DELETE CASCADE ON UPDATE CASCADE;

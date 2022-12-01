-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 27 mai 2022 à 21:41
-- Version du serveur : 8.0.27
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projetpweb`
--

-- --------------------------------------------------------

--
-- Structure de la table `demande`
--

DROP TABLE IF EXISTS `demande`;
CREATE TABLE IF NOT EXISTS `demande` (
  `Matricule` varchar(12) NOT NULL,
  `Nom` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Prenom` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Faculte` varchar(20) NOT NULL,
  `Niveau` enum('L1','L2','L3','M1','M2','Doctorant') NOT NULL,
  `Specialite` varchar(30) NOT NULL,
  `Email` varchar(35) NOT NULL,
  `Telephone` varchar(10) NOT NULL,
  `Motif` varchar(100) NOT NULL,
  `Objectif` varchar(100) NOT NULL,
  `Num` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Matricule`),
  UNIQUE KEY `NumUnique` (`Num`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `demande`
--

INSERT INTO `demande` (`Matricule`, `Nom`, `Prenom`, `Faculte`, `Niveau`, `Specialite`, `Email`, `Telephone`, `Motif`, `Objectif`, `Num`) VALUES
('2019', 'refef', 'dzdfzv', 'Mathématiques', 'L2', 'dzkkd', 'mounir@gmail.com', '0558074089', 'yes', 'no', 1),
('23', 'Salim', 'Omar', 'Mathématiques', 'L1', 'algèbre', 'ez@gmail.com', '24', 'Rien', 'Aucun', 2),
('2029', 'Doe', 'John', 'Informatique', 'L1', 'ISIL', 'EG@gmail.com', '35', 'Apprendre', 'Jouer', 3),
('20202020', 'fzegz', 'zrheg', 'Biologie', 'L1', 'bre', 'er@gmail.com', '23', 'GG', 'ez', 4),
('1234', 'Ronal', 'Dinho', 'Mathématiques', 'Doctorant', 'Dribbles', 'rhe@gmail.com', '24', 'Sourir', 'Dribbler', 5),
('202031044871', 'Maouche', 'Mounir', 'Informatique', 'L2', 'ISIL', 'mounircobrav8@gmail.com', '0659812297', 'essai', 'bof', 6),
('202031044872', 'Maouche', 'Marouane', 'Electronique', 'L1', 'ACAD', 'mounir.maouche.usthb@gmail.com', '0552906675', 'Test', 'Rien', 7),
('202013', 'grsgrs', 'grsgrs', 'Electronique', 'M1', 'grsgrs', 'grsgrs@gmail.com', '2525', 'grsgrs', 'grsgrs', 8),
('24131', 'grsgrs', 'grsgrs', 'Mathématiques', 'L2', 'grsgrs', 'htrjw@gmail.com', '24113', 'htrjw', 'htrjw', 9),
('052022', 'Dernier', 'Essai', 'Informatique', 'M1', 'Le test', 'mounir@gmail.com', '0659812297', 'Pour la postérité', 'Aucun', 10),
('242', 'venagn', 'venagn', 'Génie Civil', 'M2', 'venagn', 'venagn@gmail.com', '521', 'venagn', 'venagn', 11),
('1513', 'rgweg', 'rgweg', 'Génie Civil', 'L1', 'rgweg', 'rgweg@gmail.com', '542', 'rgweg', 'rgweg', 12),
('34', 'rfbgbw', 'rfbgbw', 'Mathématiques', 'L2', 'rfbgbw', 'rfbgbw@gmail.com', '23', 'rfbgbw', 'rfbgbw', 13),
('679', 'fefgou', 'fefgou', 'Electronique', 'L3', 'fefgou', 'mounircobrav8@gmail.com', '34', 'fefgou', 'fefgou', 14),
('64241', 'grip', 'gwrh', 'Electronique', 'L3', 'fefgou', 'mounir.maouche.usthb@gmail.com', '34', 'fefgou', 'fefgou', 15),
('2424', 'Fhhslgn', 'Fhhslgn', 'Biologie', 'M2', 'Fhhslgn', 'Fhhslgn@gmail.com', '225263', 'Fhhslgn', 'Fhhslgn', 16),
('351', 'gerh', 'gerh', 'Mathématiques', 'L1', 'gerh', 'gerh@gmail.com', '35', 'gerh', 'gerh', 17),
('315', 'uoho', 'uoho', 'Chimie', 'M1', 'uoho', 'uoho@gmail.com', '624', 'uoho', 'uoho', 18),
('21', 'gwr', 'gwr', 'Physique', 'L1', 'gwr', 'gwr@gmail.com', '5315', 'gwr', 'gwr', 19),
('355', 'vlbnipi', 'vlbnipi', 'Mathématiques', 'M1', 'vlbnipi', 'vlbnipi@gmail.com', 'vlbnipi', 'vlbnipi', 'vlbnipi', 20),
('153', 'vlbnipi', 'vlbnipi', 'Informatique', 'L2', 'vlbnipi', 'vlbnipi@gmail.com', '413', 'vlbnipi', 'vlbnipi', 21);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

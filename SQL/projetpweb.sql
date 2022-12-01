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

-- --------------------------------------------------------

--
-- Structure de la table `event`
--

DROP TABLE IF EXISTS `event`;
CREATE TABLE IF NOT EXISTS `event` (
  `titre` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `type` enum('Formation','Conférence','Manifestation scientifique','Challenge') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text NOT NULL,
  `NbImages` int NOT NULL,
  `image1` varchar(100) NOT NULL,
  `image2` varchar(100) DEFAULT NULL,
  `image3` varchar(100) DEFAULT NULL,
  `image4` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`date`,`titre`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `event`
--

INSERT INTO `event` (`titre`, `date`, `type`, `description`, `NbImages`, `image1`, `image2`, `image3`, `image4`) VALUES
('Semaine de l\'informatique', '2022-04-09', 'Manifestation scientifique', 'Nous sommes invités pour la \"Semaine de l\'informatique\" ! Organisé pour l\'occasion du 48e anniversaire de l\'USTHB ! Nous avons tenu un stand et présenté les projets de nos adhérents, ainsi que participé aux nombreuses activités qui ont eu lieu.', 4, 'images/Evenements/SemaineInformatique/SI1.jpg', 'images/Evenements/SemaineInformatique/SI2.jpg', 'images/Evenements/SemaineInformatique/SI3.jpg', 'images/Evenements/SemaineInformatique/SI4.jpg'),
('Formation Blender', '2022-04-28', 'Formation', 'La suite de notre aventure pour le prochain AGC continue avec une formation sur le logiciel Blender qui vous est présentée par notre Design Team Leader Tadjine amine', 1, 'images\\Evenements\\WorkshopBlenderUnity\\WorkshopBlender.jpg', NULL, NULL, NULL),
('48ème anniversaire de l\'USTHB', '2022-04-25', 'Manifestation scientifique', 'Une cérémonie ainsi que des stands de clubs ont été organisés à l\'Auditorium afin de célébrer le 48e anniversaire de l\'université . Nous remercions le Pr. Akretche le recteur de notre université ainsi que la Sous-Direction Des Activités Culturelles, Scientifiques et Sportives pour avoir reconnu nos efforts et nous avoir donné la chance de présenter nos derniers projets à tous les étudiants de l\'université aux côtés d\'autres clubs.', 4, 'images\\Evenements\\USTHBbirthday\\USTHBBday1.jpg', 'images\\Evenements\\USTHBbirthday\\USTHBBday2.jpg', 'images\\Evenements\\USTHBbirthday\\USTHBBday4.jpg', 'images\\Evenements\\USTHBbirthday\\USTHBBday6.jpg'),
('Africa By IncubMe', '2022-04-15', 'Conférence', 'Nous avons assisté à l\'événement de lancement Africa By Incubme en tant que co-organisateurs aux côtés d\'Incubme et d Nous remercions Incubme pour cette opportunité, et leur souhaitons le succès pour leur programme Africa By Incubme, restez à l\'écoute pour plus d\'explications sur ce programme sur notre social', 4, 'images\\Evenements\\AfricaByIncubeMe\\pt1.jpg', 'images\\Evenements\\AfricaByIncubeMe\\pt2.jpg', 'images\\Evenements\\AfricaByIncubeMe\\pt3.jpg', 'images\\Evenements\\AfricaByIncubeMe\\pt4.jpg'),
('Formation Unity', '2022-04-28', 'Formation', 'Chère communauté du jeu vidéo, ne ratez pas notre formation par Youcef et Sami Brahim jeudi prochain sur Unity pour persévérer dans notre aventure pour l\'AGC:', 1, 'images\\Evenements\\WorkshopBlenderUnity\\WorkshopUnity.jpg', NULL, NULL, NULL),
('Batna Disrupt Spring Camp', '2022-04-03', 'Manifestation scientifique', 'Cette semaine, nous avons eu le privilège d\'être invités au \"Batna Disrupt Spring Camp\" à l\'école supérieure des énergies renouvelables, de l\'environnement et du développement durable où nous avons appris l\'entrepreneuriat à travers une série de conférences et d\'activités. ', 4, 'images\\Evenements\\BatnaDisrupt\\pt1.jpg', 'images\\Evenements\\BatnaDisrupt\\pt2.jpg', 'images\\Evenements\\BatnaDisrupt\\pt3.jpg', 'images\\Evenements\\BatnaDisrupt\\pt4.jpg'),
('Global Hack Week', '2022-03-30', 'Challenge', 'The GHW Share is here, and MC is gonna participate this year! The guild is open for everyone to join! How to joins us?<br>\r\n1- You should register in the MLH Platform for GHW: Share. Link:<br> <a href=\"https://organize.mlh.io/.../7192-local-hack-day-share-2022\">https://organize.mlh.io/.../7192-local-hack-day-share-2022</a><br>\r\n\r\n2- Join the MC Community Discord to to help you find your way through the registrations and know the exact steps to join our guild, so gather there and get your GHW: Share 2022 Role. The link to our Discord:<br> <a href=\"https://discord.gg/azEg39vzVh\">\r\nhttps://discord.gg/azEg39vzVh </a>', 1, 'images\\Evenements\\GHW.jpg', NULL, NULL, NULL),
('Step and Talk', '2022-03-23', 'Challenge', 'Félicitations à MicroClub pour avoir remporté la finale du concours de quiz par English Speakers Club - USTHB dans l\'événement step and talk. merci , équipe MC, participants et supporters dont nous sommes extrêmement fiers. Et un merci spécial à nos collègues pour l\'invitation et le grand événement !', 4, 'images\\Evenements\\TriviaCompetition\\pt1.jpg', 'images\\Evenements\\TriviaCompetition\\pt2.jpg', 'images\\Evenements\\TriviaCompetition\\pt4.jpg', 'images\\Evenements\\TriviaCompetition\\pt7.jpg'),
('League of Robotics', '2022-03-19', 'Challenge', 'League Of Robotics est de retour ! Et Les inscriptions sont OUVERTES\r\nAlors si vous êtes intéressé à rejoindre ce grand événement robotique africain visitez le lien ci-dessous et ne manquez pas les inscriptions : <br>\r\n<a href=\r\nhttps://leagueofrobotics.com/ >\r\nhttps://leagueofrobotics.com </a>', 1, 'images\\Evenements\\LoR.jpg', NULL, NULL, NULL),
('MC Birthday', '2022-03-15', 'Manifestation scientifique', 'Retour sur notre fête de 37e anniversaire ?? Un grand merci à tous nos anciens et nouveaux membres géniaux ?\r\n37 ans d\'existence et on est toujours fort !!', 4, 'images\\Evenements\\MCBirthday\\pt1.jpg', 'images\\Evenements\\MCBirthday\\pt2.jpg', 'images\\Evenements\\MCBirthday\\pt3.jpg', 'images\\Evenements\\MCBirthday\\pt4.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

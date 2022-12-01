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

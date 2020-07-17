-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 17 juil. 2020 à 09:03
-- Version du serveur :  8.0.18
-- Version de PHP :  7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog-mvc`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `seen` tinyint(11) NOT NULL DEFAULT '0',
  `signals` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `comment`, `post_id`, `date`, `seen`, `signals`) VALUES
(93, 14, 'Pas mal !', 40, '2018-02-22 07:20:01', 0, 0),
(94, 14, 'Bof', 11, '2018-02-22 07:20:13', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `body` longtext NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'post.png',
  `createdDate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `image`, `createdDate`) VALUES
(11, 'Le doudou est perdu !', '<p>Esteban a 2 ans. Il adore courir vite, manger tout seul et faire pipi debout comme son papa&hellip;Il veut toujours tout faire comme les grands et &agrave; toute vitesse. Esteban est un petit gar&ccedil;on press&eacute; sauf le soir et au moment de la sieste. D&egrave;s qu&rsquo;il est fatigu&eacute;, Esteban va chercher son doudou &laquo; Oreilles &raquo;. Oreilles est un doudou lapin avec de grandes oreilles. Esteban adore son doudou tout doux qu&rsquo;il met tout contre son visage. Tous ceux qui connaissent Esteban savent ce que cela veut dire : Esteban a besoin d&rsquo;un c&acirc;lin et d&rsquo;un gros dodo. D&egrave;s qu&rsquo;il se r&eacute;veille, Esteban pose son doudou. Quand il est &agrave; la maison, il laisse Oreilles dans son lit. Quand il est &agrave; la cr&egrave;che, il sait qu&rsquo;Oreilles doit aller dans le panier &agrave; doudous. M&ecirc;me si Oreilles n&rsquo;est pas toujours avec lui, il compte &eacute;norm&eacute;ment pour Esteban.</p>\r\n<p><img class=\"\" src=\"blog-php-mvc/static/source/doudou1.jpg\" alt=\"\" /></p>', 'doudou1.jpg', '2018-02-03 16:08:55'),
(24, 'Esteban est triste', '<p>Ce matin, Esteban s&rsquo;est r&eacute;veill&eacute; tr&egrave;s t&ocirc;t car c&rsquo;est un jour sp&eacute;cial. C&rsquo;est jour de carnaval &agrave; la cr&ecirc;che et il est tr&egrave;s press&eacute; d&rsquo;y aller. Il sort de son lit tout seul et file r&eacute;veiller ses parents ; Esteban adore leur sauter dessus alors qu&rsquo;ils dorment encore. Oreilles aussi aime bien r&eacute;veiller les parents d&rsquo;Esteban alors ils sautent tous les deux sur le lit.</p>\r\n<p>Le r&eacute;veil n&rsquo;ayant pas encore sonn&eacute;, les parents s&rsquo;amusent &agrave; attraper Esteban et Oreilles pour les cacher sous la couette. Soudain, c&rsquo;est l&rsquo;heure du r&eacute;veil alors ils se l&egrave;vent et font tout ce qu&rsquo;ils font d&rsquo;habitude : se laver, s&rsquo;habiller, faire le lit, pr&eacute;parer le petit d&eacute;jeuner&hellip; Comme c&rsquo;est la semaine, le papa et la maman d&rsquo;Esteban se d&eacute;p&ecirc;chent et personne ne remarque qu&rsquo;Oreilles est rest&eacute; coinc&eacute; sous un oreiller alors qu&rsquo;ils faisaient le lit tous ensemble.</p>\r\n<p>Esteban boit son biberon de lait &agrave; table, comme un grand, &agrave; c&ocirc;t&eacute; de son papa et sa maman qui boivent leur caf&eacute;. Apr&egrave;s le petit-d&eacute;jeuner, sa maman part travailler et c&rsquo;est son papa qui s&rsquo;occupe de lui pour l&rsquo;aider &agrave; se pr&eacute;parer et l&rsquo;emmener &agrave; la cr&egrave;che. Ce matin-l&agrave;, son papa a une r&eacute;union importante et ne veut surtout pas &ecirc;tre en retard &agrave; son travail.</p>\r\n<p>Esteban doit se d&eacute;p&ecirc;cher et ils ne prennent pas le temps de v&eacute;rifier qu&rsquo;il a bien toutes ses affaires dans son petit sac &agrave; dos. Esteban arrive &agrave; la cr&egrave;che et file jouer avec ses copains qu&rsquo;il est super content de retrouver. Ils savent que c&rsquo;est un jour sp&eacute;cial et ils ont h&acirc;te de mettre leurs d&eacute;guisements et de faire la f&ecirc;te. Son papa lui fait un gros bisou et part en courant pour ne pas manquer son train. Esteban passe un super moment &agrave; la cr&egrave;che.</p>\r\n<p>Il est bien fatigu&eacute; et, apr&egrave;s le d&eacute;jeuner, il va chercher son doudou Oreilles pour lui faire un c&acirc;lin. Mais Oreilles n&rsquo;est pas dans le panier &agrave; doudous alors Esteban se met &agrave; pleurer.</p>', 'triste.jpg', '2018-02-03 18:33:05'),
(40, 'Ouf ! Doudou est de retour', '<p>Aussit&ocirc;t, Aur&eacute;lie, sa dame de cr&egrave;che pr&eacute;f&eacute;r&eacute;e, vient le voir et lui demande ce qui se passe : &laquo; J&rsquo;ai perdu mon doudou ! &raquo; lui dit Esteban entre deux sanglots. Aur&eacute;lie le console et lui propose d&rsquo;aller v&eacute;rifier si Oreilles n&rsquo;est pas rest&eacute; dans son sac &agrave; dos. Mais Oreilles n&rsquo;est pas l&agrave; non plus.</p>\r\n<p>Alors Aur&eacute;lie explique &agrave; Esteban qu&rsquo;il va devoir dormir sans son doudou mais cela lui semble tellement dur qu&rsquo;il se remet &agrave; pleurer. Aur&eacute;lie est bien emb&ecirc;t&eacute;e. Elle propose alors &agrave; Esteban de lui pr&ecirc;ter Mme Catastrophe. Mme Catastrophe, c&rsquo;est un doudou de la cr&egrave;che, un doudou qui reste toujours l&agrave; pour consoler les enfants en cas de catastrophe : genou &eacute;corch&eacute;, doudou oubli&eacute;, grosse dispute&hellip;</p>\r\n<p>Esteban aime bien Mme Catastrophe m&ecirc;me si aucun doudou ne peut remplacer Oreilles. Il part donc faire la sieste en lui expliquant qu&rsquo;elle doit &ecirc;tre son doudou aujourd&rsquo;hui. Esteban ne dort pas tr&egrave;s longtemps ce jour l&agrave; car Oreilles lui manque beaucoup et que c&rsquo;est jour de carnaval ! Pendant la f&ecirc;te, Esteban s&rsquo;amuse &eacute;norm&eacute;ment et mange beaucoup de bonbons et de g&acirc;teaux. Il n&rsquo;en oublie pas Oreilles pour autant et saute dans les bras de sa maman d&egrave;s qu&rsquo;elle arrive.</p>\r\n<p>Sa maman le rassure en lui disant qu&rsquo;Oreilles doit forc&eacute;ment l&rsquo;attendre &agrave; la maison et qu&rsquo;elle esp&egrave;re qu&rsquo;il n&rsquo;aura pas fait trop de b&ecirc;tises. Aussit&ocirc;t rentr&eacute;, Esteban cherche Oreilles partout mais en vain. C&rsquo;est l&rsquo;heure du bain puis du d&icirc;ner et toujours pas d&rsquo;Oreilles. Esteban est tellement triste qu&rsquo;il n&rsquo;arrive pas &agrave; s&rsquo;endormir alors sa maman lui propose de lui lire une histoire dans leur grand lit. Et alors qu&rsquo;ils installent les oreillers de fa&ccedil;on confortable pour la lecture, Esteban d&eacute;couvre son Copyright une-histoire-chaque-jour.com - 2019 doudou Oreilles confortablement endormi.</p>\r\n<p>Quel bonheur ! Il le serre tr&egrave;s fort contre lui et lui fait plein de bisous. D&egrave;s que sa maman a fini de lui lire l&rsquo;histoire, Esteban file se coucher avec Oreilles. Son papa et sa maman entendent Esteban parler longtemps avant de s&rsquo;endormir mais ils ne se f&acirc;chent pas. Ils ont bien compris qu&rsquo;Esteban avait beaucoup de choses &agrave; raconter &agrave; son doudou ador&eacute;.</p>\r\n<p>&nbsp;<img class=\"\" src=\"blog-php-mvc/static/source/doudou1.jpg\" alt=\"\" /></p>', '52895208-dessin-animé-enfant-heureux-de-jouer-avec-joie.jpg', '2018-02-07 13:41:04');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(120) NOT NULL,
  `password` char(60) NOT NULL,
  `admin` int(11) DEFAULT NULL,
  `pseudo` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `admin`, `pseudo`) VALUES
(8, 'test@test.com', '21e57080434c1cb6c2fb4753c4f8a28f', 0, 'Romain'),
(14, 'tom@gmail.com', '21e57080434c1cb6c2fb4753c4f8a28f', NULL, 'Tom');

-- --------------------------------------------------------

--
-- Structure de la table `votes`
--

DROP TABLE IF EXISTS `votes`;
CREATE TABLE IF NOT EXISTS `votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) NOT NULL,
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `vote` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

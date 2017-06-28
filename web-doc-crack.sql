-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mer 28 Juin 2017 à 22:51
-- Version du serveur :  5.7.11
-- Version de PHP :  7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `web-doc-crack`
--

-- --------------------------------------------------------

--
-- Structure de la table `chapters`
--

CREATE TABLE `chapters` (
  `id` int(11) NOT NULL,
  `name` varchar(10000) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `end` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `chapters`
--

INSERT INTO `chapters` (`id`, `name`, `content`, `end`) VALUES
(1, 'Introduction', 'Buying the right telescope to take your love of astronomy to the next level is a big next step in the development of your passion for the stars. In many ways, it is a big step from someone who is just fooling around with astronomy to a serious student of the science.', ''),
(2, 'Sur la colline du crack parisien', '', ''),
(3, 'Chapter 3', '', ''),
(4, 'Chapter 4', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `name` varchar(10000) NOT NULL,
  `contents` varchar(10000) NOT NULL,
  `chapter_id` int(11) NOT NULL,
  `order_chapter` int(11) NOT NULL,
  `audio` tinyint(1) NOT NULL,
  `video` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `slides`
--

INSERT INTO `slides` (`id`, `name`, `contents`, `chapter_id`, `order_chapter`, `audio`, `video`) VALUES
(1, 'Crack', 'Le crack est un stupéfiant. Il est la dénomination que l\'on donne à la forme base libre de la cocaïne. L\'origine du mot \'crack\' provient du craquement sonore qu\'il produit en chauffant.', 1, 1, 1, 0),
(2, 'Conséquences', 'Provoque des effets et des conséquences similaires à la cocaïne, mais plus violents, rapides et brefs.\r\nLa descente est connue pour être pénible : dépression, anxiété, épuisement, mal-être.', 1, 2, 0, 0),
(3, 'Origine', 'Se développe à partir des années 1970 d\'abord au Pérou puis au Venezuela. \r\nElle commence à s\'exporter aux États-Unis quand les politiciens entreprennent de renforcer les contrôles sur les précurseurs et les solvants permettant de purifier la cocaïne et avec elle, s\'exporte la façon de la purifier qui utilise alors de l\'éther éthylique.', 1, 3, 0, 0),
(4, '1980', 'Le crack arrive en Europe à la fin des années 1980 et prend une place importante à Paris, notamment dans le nord-est parisien autour des métros La-Chapelle, Château-Rouge, Stalingrad de 1991 à 1996.', 1, 4, 0, 0),
(5, 'Crackhouses', 'Les trafiquants de drogue et les consommateurs de drogues y achètent, vendent, produisent et utilisent le crack. De cette façon, les maisons de fissures ne sont pas différentes des anciennes maisons d\'opium de la fin du XIXe et du début du 20e siècle.', 1, 5, 0, 0),
(6, 'Dopamine', '\"Quand tu fumes du crack t’as une décharge de dopamine, c’est comme si t’avais un orgasme et ça monte tellement fort qu’il y a rien d’autre qui existe comme ca dans la vie…\"', 3, 1, 0, 0),
(7, 'Dopamine', '\"Si le sexe à répétition ca doit faire ca mais c’est beaucoup plus rapide, plus facile. C’est individuel, c’est un plaisir complètement personnel.\"', 3, 2, 0, 0),
(8, 'Cuisine et bénéfices', '\"Tout le monde a recuisiné lui-même son crack soit au bica, à l\'ammoniac soit avec d’autres médicaments notamment du supp… Et tu fais 200% de bénéfices\"', 3, 3, 0, 0),
(11, 'Cuisine et bénéfices', '\"Sinon si t’as du doliprane, de la levure chimique, tout ce qui est blanc. Tu peux le mélanger avec\"', 3, 4, 0, 0),
(12, 'Principes', '\"Je vends jamais, il ne faut pas vendre. Si tu consommes tu vends pas, tu peux pas faire les deux c’est un principe.\"', 3, 5, 0, 0);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `chapters`
--
ALTER TABLE `chapters`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `chapters`
--
ALTER TABLE `chapters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

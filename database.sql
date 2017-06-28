-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mer 28 Juin 2017 à 12:04
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
  `name` varchar(10000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `chapters`
--

INSERT INTO `chapters` (`id`, `name`) VALUES
(1, 'Introduction'),
(2, 'Sur la colline du crack parisien'),
(3, 'Chapter 3'),
(4, 'Chapter 4');

-- --------------------------------------------------------

--
-- Structure de la table `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `name` varchar(10000) NOT NULL,
  `contents` varchar(10000) NOT NULL,
  `chapter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `slides`
--

INSERT INTO `slides` (`id`, `name`, `contents`, `chapter_id`) VALUES
(1, 'Le crack c’est quoi?', 'Le crack est un stupéfiant. Il est la dénomination que l\'on donne à la forme base libre de la cocaïne. L\'origine du mot \'crack\' provient du craquement sonore qu\'il produit en chauffant.', 1),
(2, 'Les effets du crack', 'Le crack provoque des effets et des conséquences similaires à la cocaïne, mais plus violents, rapides et brefs.\r\nLa descente est connue pour être pénible : dépression, anxiété, épuisement, mal-être.', 1),
(3, 'Slide 3', 'Le crack se développe à partir des années 1970 d\'abord au Pérou puis au Venezuela. \r\nElle commence à s\'exporter aux États-Unis quand les politiciens entreprennent de renforcer les contrôles sur les précurseurs et les solvants permettant de purifier la cocaïne et avec elle, s\'exporte la façon de la purifier qui utilise alors de l\'éther éthylique.', 1),
(4, 'Slide 4', 'Le crack arrive en Europe à la fin des années 1980 et prend une place importante à Paris, notamment dans le nord-est parisien autour des métros La-Chapelle, Château-Rouge, Stalingrad de 1991 à 1996. ', 1),
(5, 'Les crackhouses', 'C’est un bâtiment où les trafiquants de drogue et les consommateurs de drogues achètent, vendent, produisent et utilisent le crack. De cette façon, les maisons de fissures ne sont pas différentes des anciennes maisons d\'opium de la fin du XIXe et du début du 20e siècle.', 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

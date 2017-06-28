-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mer 28 Juin 2017 à 06:01
-- Version du serveur :  5.7.14
-- Version de PHP :  7.0.10

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
(1, 'CrackoParis');

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
(1, 'Le crack à Paris', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec interdum ac lectus sed fringilla. Morbi sed scelerisque quam. Fusce ultricies blandit nibh. Nulla egestas, augue in egestas vestibulum, nulla erat vestibulum lacus, sed pellentesque sem leo quis orci. Sed accumsan mattis nulla eu pharetra. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consectetur ipsum id sem congue, sit amet volutpat orci aliquet. Aliquam posuere ornare augue vitae tempus. Sed at lacus semper, lobortis nibh sit amet, ornare tortor. Donec turpis ante, interdum a feugiat id, gravida sed sem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur in magna at sapien placerat tempus. Phasellus sed cursus felis, sit amet feugiat nulla. In venenatis ante nibh, eu fringilla erat blandit quis.\r\n\r\nFusce dapibus laoreet porta. Nam porta a leo vitae malesuada. Sed et lorem tortor. Duis tincidunt justo leo, non sodales lacus ultricies sed. Curabitur commodo, sem ac ullamcorper feugiat, tortor ligula pretium neque, ac commodo nibh enim ut ex. Etiam pellentesque laoreet odio vitae tincidunt. Vestibulum efficitur sem non felis vestibulum mattis. Proin vel massa sem.', 1),
(2, 'Crackoparis', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec interdum ac lectus sed fringilla. Morbi sed scelerisque quam. Fusce ultricies blandit nibh. Nulla egestas, augue in egestas vestibulum, nulla erat vestibulum lacus, sed pellentesque sem leo quis orci. Sed accumsan mattis nulla eu pharetra. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam consectetur ipsum id sem congue, sit amet volutpat orci aliquet. Aliquam posuere ornare augue vitae tempus. Sed at lacus semper, lobortis nibh sit amet, ornare tortor. Donec turpis ante, interdum a feugiat id, gravida sed sem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur in magna at sapien placerat tempus. Phasellus sed cursus felis, sit amet feugiat nulla. In venenatis ante nibh, eu fringilla erat blandit quis.\r\n\r\nFusce dapibus laoreet porta. Nam porta a leo vitae malesuada. Sed et lorem tortor. Duis tincidunt justo leo, non sodales lacus ultricies sed. Curabitur commodo, sem ac ullamcorper feugiat, tortor ligula pretium neque, ac commodo nibh enim ut ex. Etiam pellentesque laoreet odio vitae tincidunt. Vestibulum efficitur sem non felis vestibulum mattis. Proin vel massa sem.', 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

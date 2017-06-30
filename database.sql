-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 30 Juin 2017 à 05:52
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
  `end` varchar(255) NOT NULL,
  `end2` varchar(255) NOT NULL,
  `endbtn` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `chapters`
--

INSERT INTO `chapters` (`id`, `name`, `content`, `end`, `end2`, `endbtn`) VALUES
(1, 'Introduction', 'La pierre, La coke du pauvre, le caillou, la galette, le crack. La drogue low-cost fait des ravages à échelles mondiales, jusqu’à la capitale. Découvrez son histoire et son impact.', '', '', 'Découvrir la colline du crack'),
(2, 'La colline du crack', 'Dans le 18e arrondissement de Paris, à quelques pas de la porte de la Chapelle, perché entre le boulevard des Maréchaux et le périph\', les fumeurs de crack de la capitale disposent d\'une véritable « épicerie » de la drogue.', '\"Ca détruit tout, tes sensations, ton âme, ta sociabilité et qui t’es… Ca détruit tout.\"', 'Fabrice, 32 ans. Rencontré à la colline.', 'Discuter avec Fabrice'),
(3, 'Le milieu', 'Fabrice, 32 ans vis dans la rue depuis la fin du collège. Il connaît la rue comme sa poche. Les dealers, les toxicos, les gangsters. Il sait s’adapter pour survivre, être amis avec les bonnes personnes, quels larcins lui rapporteront.  Il va nous accompagner et nous faire la visite par le menu des lieux clés du monde du crack parisien.', '\"La société nous rejette… elle nous voit pas de l’intérieur. Y a qu\'à regarder la situation à gare du nord.\"', 'Fabrice vous propose de l’accompagner à Gare du Nord, où une salle de shoot a ouvert il y a peu.', 'Suivre Fabrice'),
(4, 'De l\'extérieur', 'L’univers complexe des toxicomanes n’est visible que par ses habitants. Les gens du monde extérieur préfère l’ignorer, l’éviter à tout prix, même peut-être, l’éliminer...', 'Une situation inchangée', '\"Les gens nous évitent, ne nous comprennent pas. Ils nous laissent mourir sous leurs yeux sous prétexte que nous consommons de la drogue.\"', 'Revivre l\'expérience');

-- --------------------------------------------------------

--
-- Structure de la table `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contents` varchar(10000) NOT NULL,
  `full_content` varchar(10000) NOT NULL,
  `chapter_id` int(11) NOT NULL,
  `order_chapter` int(11) NOT NULL,
  `audio` tinyint(1) NOT NULL,
  `video` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `slides`
--

INSERT INTO `slides` (`id`, `name`, `contents`, `full_content`, `chapter_id`, `order_chapter`, `audio`, `video`) VALUES
(1, 'Crack', 'Le crack est un stupéfiant. Il est la dénomination que l\'on donne à la forme base libre de la cocaïne. L\'origine du mot \'crack\' provient du craquement sonore qu\'il produit en chauffant.', 'Le crack est à l\'origine le résultat de la purification par salification de la cocaïne lorsque celle-ci est dissoute dans de l\'ammoniaque diluée, du bicarbonate de soude mélangé à de l\'eau, ou de l\'éther éthylique ; et chauffée à 97°C maximum.\r\nC’est cette transformation chimique qui rend la cocaïne fumable lui donne alors l\'apparence d\'un caillou blanc ou jaunâtre qu\'il faut rincer à plusieurs reprises avant de consommer.', 1, 1, 0, 0),
(2, 'Conséquences', 'Provoque des effets et des conséquences similaires à la cocaïne, mais plus violents, rapides et brefs.\r\nLa descente est connue pour être pénible : dépression, anxiété, épuisement, mal-être.', '', 1, 2, 0, 0),
(3, 'Origine', 'Se développe à partir des années 1970 d\'abord au Pérou puis au Venezuela. \r\nElle commence à s\'exporter aux États-Unis quand les politiciens entreprennent de renforcer les contrôles sur les précurseurs et les solvants permettant de purifier la cocaïne et avec elle, s\'exporte la façon de la purifier qui utilise alors de l\'éther éthylique.', 'Les premières apparitions du crack se font aux débuts des années 1980 à Los Angeles, Houston, San Diego, Miami et dans les Caraïbes. À partir de 1983, le crack commence à envahir tout le reste des États-Unis, plus particulièrement la côte est. À partir de 1985, est mesurée une hausse fulgurante de consommateurs, surtout dans les ghettos afro-américains, avec près de 1,5 million de nouveaux adeptes par an. On appel cette période l\'épidémie du crack, elle dure jusqu\'en 1991 avec un taux record de consommateurs de près de 10 millions à 12 millions. En 1992, ce chiffre se stabilise avec de moins en moins de nouveaux consommateurs par an.', 1, 3, 0, 0),
(4, '1980', 'Le crack arrive en Europe à la fin des années 1980 et prend une place importante à Paris, notamment dans le nord-est parisien autour des métros La-Chapelle, Château-Rouge, Stalingrad de 1991 à 1996.', 'Le crack arrive en Europe à la fin des années 1980 et prend une place importante à Paris, notamment dans le nord-est parisien autour des métros La-Chapelle, Château-Rouge, Stalingrad de 1991 à 1996. \r\nÀ la suite notamment de fermetures de squats dans Paris, le trafic se propage en banlieue, au nord de Paris et en particulier autour de la gare de Saint-Denis où le trafic prend une grande ampleur. Néanmoins, les consommateurs abandonnent progressivement la gare de Saint-Denis et reviennent s\'installer sur les secteurs Stalingrad et porte de la Chapelle. 1 million de personnes ont déjà sniffé au moins une fois de la « coke » et 3,3 % des jeunes de 17 ans.\r\nDu nord parisien, le crack commence à se répandre dans la périphérie de la région parisienne ainsi que dans de nombreuses villes de province.', 1, 4, 0, 0),
(5, 'Crackhouses', 'Les trafiquants de drogue et les consommateurs de drogues y achètent, vendent, produisent et utilisent le crack. De cette façon, les maisons de fissures ne sont pas différentes des anciennes maisons d\'opium de la fin du XIXe et du début du 20e siècle.', 'Souvent, ils sont des bâtiments anciens, abandonnés ou brûlés, souvent dans un quartier de la ville. Cependant, en réponse à l\'intensification de l\'examen communautaire et aux activités d\'application de la loi, les opérations de drogue passent des villes intérieures vers la banlieue, dans un effort pour se fondre.', 1, 5, 1, 0),
(6, 'Dopamine', '\"Quand tu fumes du crack t’as une décharge de dopamine, c’est comme si t’avais un orgasme et ça monte tellement fort qu’il y a rien d’autre qui existe comme ca dans la vie…\"', 'Le crack provoque un effet euphorisant, bref et intense, immédiatement suivi de son opposé : profonde dépression, grande nervosité et besoin de reprendre encore plus de drogue.\r\n\r\nPlus encore que cet effet violent, c’est la première consommation qui engendre l’addiction immédiate. En effet, La première taffe produit une montée de dopamine hors du commun que l’utilisateur ne pourra plus jamais reproduire.\r\nC’est la poursuite de cette première taffe qui pousse les consommateurs dans une addiction puissante et souvent définitive.', 3, 1, 1, 0),
(7, 'L’or en galette', '\"Si le sexe à répétition ca doit faire ca mais c’est beaucoup plus rapide, plus facile. C’est individuel, c’est un plaisir complètement personnel.\"', 'Le crack est vendu par les fournisseurs, il est alors acheté par tout le monde qui le consomme ou le cuisine. ceux qui le cuisine le revendent plus tard dans le mois quand il se fait rare pour le triple du prix. ils ajoutent de l’ammoniaque, du dafalgan, chacun à sa recette.\r\nLes plus gros addict doivent consommer plusieurs dose par jour, une galette vaut 20 euros, ils en consomment pour 300 euros quotidiennement.\r\nIls se financent en commettant divers larcins, ou en mettant en relations des gros clients avec des gros vendeurs. Ils trouvent de la nourriture auprès d’autre toxicomane, ou auprès des dealers, qui n’hésitent pas à les nourrir afin d’encourager leur addiction.', 3, 2, 1, 0),
(8, 'Cuisine et bénéfices', '\"Tout le monde a recuisiné lui-même son crack soit au bica, à l\'ammoniac soit avec d’autres médicaments notamment du supp… Et tu fais 200% de bénéfices\"', 'Tu peux pas dealer et consommer.\r\nSi tu deale et que tu te met à fumer, tu vas finir par descendre ton propre stock et là c’est ton fournisseur qui va te fumer.\r\nEt si tu fume et que tu deal à côté, tu va empiéter sur le territoire de quelqu’un et tu va te faire racketter.', 3, 3, 1, 0),
(13, 'La colline', 'Surnommé la « Colline », l\'endroit est en fait un bidonville à très mauvaise réputation où s\'accumulent déchets et morceaux de vieille ferraille. Né il y a quelques années, lors du démantèlement de plusieurs squats voisins, il s\'étale sur une cinquantaine de mètres et voit le passage de 100 à 150 personnes chaque jour.', '', 2, 1, 0, 0),
(11, 'Petit chimiste', '\"Sinon si t’as du doliprane, de la levure chimique, tout ce qui est blanc. Tu peux le mélanger avec\"', '', 3, 4, 1, 0),
(12, 'Principes', '\"Je vends jamais, il ne faut pas vendre. Si tu consommes tu vends pas, tu peux pas faire les deux c’est un principe.\"', '', 3, 5, 1, 0),
(14, 'Geuchlas', '“ Certains crackeurs peuvent rester là plusieurs jours et nuits, sans manger. Ils sont généralement sans-abri et dorment dans la rue, dans des structures d\'accueil ou à l\'hôtel. ”', '', 2, 2, 0, 0),
(15, 'Jamais', '“ Même quand il fait -10 en hiver y’a des mecs qui vendent, qui fument. Tout le temps, tout le temps, tout le temps. Ca ne s\'arrête jamais. ”', '', 2, 3, 1, 1),
(16, 'Maudous', '“ Je sais pas ca doit faire parti du folklore africain, il doit y avoir un maudou qui fait un peu peur ou qui crache des trucs de sa bouche. Ils gardent les galettes dans la bouche, c’est des petits de crack. ”', '', 2, 4, 1, 0),
(17, 'Forces de l’ordre', '“ Les flics viennent pas, ils arrivent en bas, mettent un coup de torche et montent en général à cinq ou six d’un coup, ils attrapent une personne et repartent tout de suite parce que c’est dangereux.”', '', 2, 5, 1, 0),
(18, 'La sécurité policière', 'Ce mois ci ça fait 3 fois que les policiers passent et qu’ils essayent de nous faire partir de cette crakhouse.\r\nA chaque fois la colline au crack est vidée, et les services de nettoyage viennent. Les  personnes qui sont là sont emmené dans des centres avec les associations coordination toxicomanie et tout.', 'D’autant que l’infiltration des réseaux et les planques sont plus difficiles que par le passé, notamment pour les trafics dans les cités où les dealers mènent une vraie guerre pour contrôler le territoire. « Il y a un problème géographique. Tout ce qui est piétonnier est un souci pour la police. Les trafiquants et les dealers ont pour eux la connaissance de la topographie des lieux. Ils contrôlent les ascenseurs et tous les flux dans les cités, les deals ont lieu la plupart du temps dans une cave, une cage d’escalier, voire un appartement», précise Marie-Elisabeth Ciattoni. «Les toxicomanes sont souvent emmenés et raccompagnés par les guetteurs, parfois obligés de consommer sur place pour ne pas se faire contrôler par la police avec de la marchandise sur eux » Jean-luc, Officier de la brigade des stups.', 4, 1, 0, 0),
(19, 'Des interventions inutiles', '\"Mais ils peuvent faire ça autant de fois qu’ils veulent, on reviendra toujours. Ils peuvent nous déloger mais ils peuvent pas nous empêcher d’avoir ce qu’on veut. \r\nIls ont essayé de créer une salle de shoot, ils pensent que ca fait comme un accord pour qu’on puisse faire ça de manière encadrer, moi je trouve ca encore plus malsain.\"', 'L’usager s’installe, fait sa préparation et dispose de trente minutes pour s’injecter sa dose. \r\nLe personnel surveille et se tient prêt à intervenir en cas d’overdose ou si un consommateur n’arrive pas à trouver une veine. Mais il lui est interdit d’aider physiquement à l’injection. \r\nIl y a aussi une salle de repos, et la possibilité d’accéder à un infirmier, un travailleur social ou un médecin.', 4, 2, 0, 0),
(20, 'Pourquoi une salle de shoot?', 'La salle de shoot permet aux toxicomanes de s’injecter/consommer leur produit dans un lieu sécurisé, calme et dans des conditions sanitaire optimales.', 'Certains riverains craignent que la salle attire de nouveaux consommateurs… Ce sera à la marge. Les consommateurs de drogue ne vont pas traverser la ville pour s’injecter leur dose. Après, la question d’adapter la salle à la situation rencontrée doit rester possible.', 4, 3, 0, 0),
(21, 'La vision des riverains', 'Lorsque l’emplacement de la salle a été connu les riverains ont commencé à protester. C’est toujours très compliqué. La salle n’est pas installée dans un quartier où il n’y a pas d’usage. \r\nChacun espère que le dispositif sera installé dans la rue d’à côté, pas dans la sienne.', '', 4, 4, 0, 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 23 mai 2024 à 06:28
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `quiz`
--

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
  `idqs` int(11) NOT NULL,
  `idtheme` int(11) NOT NULL,
  `quest` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `questions`
--

INSERT INTO `questions` (`idqs`, `idtheme`, `quest`) VALUES
(1, 1, 'Quelle est la capital de Madagascar?'),
(2, 1, 'Quelle est la capitale de la France?'),
(3, 1, 'Quel est le plus grand désert du monde?'),
(4, 1, 'Quelle est la capital de l\'Allemagne?'),
(5, 1, 'Quelle est la plus haute montagne du monde?'),
(6, 1, 'Quel est le plus grand lac d\'Amérique du Nord?'),
(7, 1, 'Quelle est la capitale de l\'Australie?'),
(8, 1, 'Quelle est la ligne qui divise la Terre en deux hémisphères?'),
(9, 1, 'Quels sont les vents a Madagascar?'),
(10, 1, 'Quel pays a pour capital \"Quito\"?'),
(11, 2, 'En quel année, Madagascar a-t-il été colonisé?'),
(12, 2, 'Qui était le premier président des Etats-Unis?'),
(13, 2, 'Qui est \"Donald Trump\"?'),
(14, 2, 'En quelle année a eu lieu la Révolution française?'),
(15, 2, 'Quel événement a marqué la fin de la Seconde Guerre mondiale en Europe?'),
(16, 2, 'En quelle année le mur de Berlin est-il tombé?'),
(17, 2, 'Qui était le président des Etats-Unis pendant la Première Guerre mondiale?'),
(18, 2, 'Quelle guerre a opposé les Etats-Unis au Vietnam?'),
(19, 2, 'Quel pays a été le premier à envoyer un homme dans l\'espace?'),
(20, 2, 'Qui est le Président de la République de Madagascar en 2018?'),
(21, 3, 'Quel est l\'organe le plus grand du corps humain?'),
(22, 3, 'Qui a découvert la pénicilline?'),
(23, 3, 'Quelle est la planète la plus proche du soleil?'),
(24, 3, 'Combien de chromosomes un humain a-t-il normalement?'),
(25, 3, 'Quel est l\'élément chimique le plus abondant dans l\'univers?'),
(26, 3, 'Qui a découvert la théorie de la relativité restreinte?'),
(27, 3, 'Quel est le symbole de l\'élément chimique appelé \"Soufre?'),
(28, 3, 'Quel est l\'unité de mesure de l\'intensité de courant?'),
(29, 3, 'Comment appel-t-on une personne qui étudie la science?'),
(30, 3, '1kg est équivaut a combien de m3?'),
(36, 3, 'Quelle est la principale fonction des globules rouges dans le corps humain ?'),
(37, 3, 'Qu\'est-ce que la théorie de l\'évolution de Charles Darwin ?'),
(38, 3, 'Qu\'est-ce que la photosynthèse ?'),
(39, 3, 'Quelle est la loi fondamentale de la gravitation formulée par Isaac Newton ?'),
(40, 3, 'Quelle est la principale fonction du noyau d\'une cellule ?'),
(41, 4, 'Qui a peint la Joconde ?\r\n'),
(42, 4, 'Quel est le plus grand océan du monde ?'),
(43, 4, 'Qui a écrit \"Hamlet\" ?'),
(44, 4, 'Quel est le plus grand désert du monde ?'),
(45, 4, 'Quel est la capital de l\'Australie'),
(46, 4, 'Quel est l\'élément chimique le plus abondant dans l\'univers ?'),
(47, 4, ' Qui a écrit \"Le Petit Prince\" ?'),
(48, 4, 'Quel est le plus long fleuve du monde ?'),
(49, 4, ' Qui a peint \"Les Tournesols\" ?'),
(50, 4, 'Qui a écrit \"1984\" ?'),
(51, 5, 'Quel pays a remporté le plus de médailles d\'or lors des Jeux olympiques d\'été de 2016 à Rio de Janeiro ?'),
(52, 5, 'Quel est le record de buts marqués par un seul joueur lors d\'un match de football de la Coupe du Monde de la FIFA ?'),
(53, 5, 'Qui a détenu le record du monde du saut en hauteur masculin avant qu\'il ne soit battu par Javier Sotomayor ?'),
(54, 5, 'Quel est le court de tennis sur lequel se déroule le tournoi de Wimbledon ?'),
(55, 5, 'Où s\'est déroulé la coupe du Monde du football 2020?'),
(56, 5, 'Quelle est la seule équipe de la NFL à avoir remporté le Super Bowl invaincue ?'),
(57, 5, 'Qui est le détenteur du record du monde du marathon masculin ?'),
(58, 5, 'Combien de joueurs composent une équipe de rugby sur le terrain pendant un match ?'),
(59, 5, 'Quel est le seul joueur de basketball à avoir remporté le MVP, le titre de Rookie de l\'année et le championnat NBA la même année ?'),
(60, 5, 'Quel pays a remporté le dernier mondial du pétanque?'),
(61, 6, 'Qui a réalisé le film \"Inception\" ?'),
(62, 6, 'Quel Film Malagasy est le plus reconnue?'),
(63, 6, 'Dans quel film trouve-t-on le personnage de James Bond pour la première fois ?'),
(64, 6, 'Qui a joué le rôle principal dans \"Forrest Gump\" ?'),
(65, 6, 'Qui a réalisé le film \"Pulp Fiction\" ?'),
(66, 6, 'Quel est le premier film de la trilogie \"Le Seigneur des Anneaux\" ?'),
(67, 6, 'Qui joue le rôle de Peter Parker dans le film Spiderman'),
(68, 6, 'Qui a joué le rôle de Jack Dawson dans \"Titanic\" ?'),
(69, 6, 'Quel est le nom du robot dans le film \"Wall-E\" ?'),
(70, 6, 'Quel est le premier film de la saga \"Star Wars\" sorti en 1977 ?'),
(71, 7, 'Qui est l\'artiste solo le plus vendu de tous les temps ?'),
(72, 7, 'Quel groupe de rock britannique a sorti l\'album \"The Dark Side of the Moon\" en 1973 ?'),
(73, 7, 'Dans quel pays est originaire du style de musique \"Ba-gasy\"?'),
(74, 7, 'Quel artiste a remporté le Grammy Award de l\'Album de l\'année en 2020 pour \"When We All Fall Asleep, Where Do We Go?\" ?'),
(75, 7, 'Quel est le nom du célèbre festival de musique qui se déroule chaque année dans le désert de Californie ?'),
(76, 7, 'Qui a interprété la chanson \"Bohemian Rhapsody\" ?'),
(77, 7, 'De quel pays est originaire le groupe ABBA ?'),
(78, 7, 'Quelle chanson a passé le plus de semaines au sommet du Billboard Hot 100 aux États-Unis ?'),
(79, 7, 'Qui est le roi du Salegy?'),
(80, 7, 'Quel est l\'album le plus vendu de tous les temps ?'),
(81, 8, 'Quelle entreprise est connue pour avoir développé le système d\'exploitation Android ?'),
(82, 8, 'Quelle est la technologie sans fil utilisée pour connecter des périphériques tels que des claviers, des souris et des casques audio à un ordinateur ?'),
(83, 8, 'Qui est souvent considéré comme le pionnier de l\'informatique moderne et le créateur du premier ordinateur personnel ?'),
(84, 8, 'Quelle entreprise a été fondée par Elon Musk et est connue pour ses innovations dans les domaines de l\'énergie, de l\'exploration spatiale et des véhicules électriques ?'),
(85, 8, 'Quel est le nom du langage de programmation largement utilisé pour le développement web, connu pour sa simplicité et sa polyvalence ?'),
(86, 8, 'Quel est le nom du premier navigateur web largement utilisé, développé par Netscape Communications Corporation dans les années 1990 ?'),
(87, 8, 'Quelle est la technologie utilisée pour stocker des données de manière permanente sur des disques durs et des SSD ?'),
(88, 8, 'Quelle est la technologie utilisée pour stocker des données de manière permanente sur des disques durs et des SSD ?'),
(89, 8, 'Quelle est la technologie utilisée pour créer des réseaux locaux sans fil à courte portée entre des appareils tels que des smartphones, des tablettes et des imprimantes ?'),
(90, 8, 'Quelle est la norme de connexion utilisée pour connecter des périphériques tels que des claviers, des souris et des moniteurs à un ordinateur portable via un seul câble ?');

-- --------------------------------------------------------

--
-- Structure de la table `reponses`
--

CREATE TABLE `reponses` (
  `idrep` int(11) NOT NULL,
  `idquest` int(11) NOT NULL,
  `reps` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `etat` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `reponses`
--

INSERT INTO `reponses` (`idrep`, `idquest`, `reps`, `etat`) VALUES
(1, 1, 'Antananarivo', 1),
(2, 1, 'Majunga', 0),
(3, 1, 'Tamatave', 0),
(4, 1, 'Toliara', 0),
(6, 2, 'Paris', 1),
(7, 2, 'Lion', 0),
(8, 2, 'Londres', 0),
(9, 2, 'Berlin', 0),
(10, 3, 'Sahara', 1),
(11, 3, 'Gobi', 0),
(12, 3, 'Antartique', 0),
(13, 3, 'Kalahari', 0),
(14, 4, 'Berlin', 1),
(15, 4, 'Paris', 0),
(16, 4, 'Londres', 0),
(17, 4, 'Rome', 0),
(18, 5, 'Mon Everest', 1),
(19, 5, 'Mont Kilimandjaro', 0),
(20, 5, 'Mont McKinley', 0),
(21, 5, 'Mont Blanc', 0),
(122, 6, 'Lac Supérieur', 1),
(123, 6, 'Lac Michigan', 0),
(124, 6, 'Lac Huron', 0),
(125, 6, 'Lac Érié', 0),
(126, 7, 'Canberra', 1),
(127, 7, 'Sydney', 0),
(128, 7, 'Melbourne', 0),
(129, 7, 'Perth', 0),
(130, 8, 'Équateur', 1),
(131, 8, 'Tropique du Cancer', 0),
(132, 8, 'Tropique du Capricorne', 0),
(133, 8, 'Ligne internationale de changement de date', 0),
(134, 9, 'Alizés', 1),
(135, 9, 'Mistral', 0),
(136, 9, 'Sirocco', 0),
(137, 9, 'Tramontane', 0),
(138, 10, 'Équateur', 1),
(139, 10, 'Colombie', 0),
(140, 10, 'Pérou', 0),
(141, 10, 'Chili', 0),
(142, 11, '1500', 0),
(143, 11, '1600', 0),
(144, 11, '1700', 0),
(145, 11, '1800', 1),
(146, 12, 'George Washington', 1),
(147, 12, 'Thomas Jefferson', 0),
(148, 12, 'Abraham Lincoln', 0),
(149, 12, 'John Adams', 0),
(150, 13, 'Homme politique et ancien président des États-Unis', 1),
(151, 13, 'Acteur de cinéma', 0),
(152, 13, 'Scientifique célèbre', 0),
(153, 13, 'Auteur de livres pour enfants', 0),
(154, 14, '1789', 1),
(155, 14, '1799', 0),
(156, 14, '1809', 0),
(157, 14, '1819', 0),
(158, 15, 'La capitulation de l\'Allemagne nazie', 1),
(159, 15, 'Le bombardement de Pearl Harbor', 0),
(160, 15, 'Le largage des bombes atomiques sur Hiroshima et Nagasaki', 0),
(161, 15, 'La bataille de Stalingrad', 0),
(162, 16, '1989', 1),
(163, 16, '1991', 0),
(164, 16, '1987', 0),
(165, 16, '1993', 0),
(166, 17, 'Woodrow Wilson', 1),
(167, 17, 'Theodore Roosevelt', 0),
(168, 17, 'Franklin D. Roosevelt', 0),
(169, 17, 'Harry S. Truman', 0),
(170, 18, 'Guerre du Vietnam', 1),
(171, 18, 'Guerre de Corée', 0),
(172, 18, 'Guerre du Golfe', 0),
(173, 18, 'Guerre froide', 0),
(174, 19, 'Union Soviétique', 1),
(175, 19, 'États-Unis', 0),
(176, 19, 'Chine', 0),
(177, 19, 'France', 0),
(178, 20, 'Hery Rajaonarimampianina', 1),
(179, 20, 'Andry Rajoelina', 0),
(180, 20, 'Marc Ravalomanana', 0),
(181, 20, 'Didier Ratsiraka', 0),
(182, 21, 'La peau', 1),
(183, 21, 'Le foie', 0),
(184, 21, 'Les poumons', 0),
(185, 21, 'Le cerveau', 0),
(186, 22, 'Alexander Fleming', 1),
(187, 22, 'Louis Pasteur', 0),
(188, 22, 'Robert Koch', 0),
(189, 22, 'Joseph Lister', 0),
(190, 23, 'Mercure', 1),
(191, 23, 'Vénus', 0),
(192, 23, 'Mars', 0),
(193, 23, 'Jupiter', 0),
(194, 24, '46', 1),
(195, 24, '23', 0),
(196, 24, '48', 0),
(197, 24, '50', 0),
(198, 25, 'Hydrogène', 1),
(199, 25, 'Hélium', 0),
(200, 25, 'Oxygène', 0),
(201, 25, 'Carbone', 0),
(202, 26, 'Albert Einstein', 1),
(203, 26, 'Isaac Newton', 0),
(204, 26, 'Stephen Hawking', 0),
(205, 26, 'Niels Bohr', 0),
(206, 27, 'S', 1),
(207, 27, 'So', 0),
(208, 27, 'Su', 0),
(209, 27, 'Sr', 0),
(210, 28, 'Ampère', 1),
(211, 28, 'Volt', 0),
(212, 28, 'Watt', 0),
(213, 28, 'Ohm', 0),
(214, 29, 'Scientifique', 1),
(215, 29, 'Savant', 0),
(216, 29, 'Chercheur', 0),
(217, 29, 'Ingénieur', 0),
(218, 30, 'Impossible à évaluer sans plus de contexte', 1),
(219, 30, '1 m3', 0),
(220, 30, 'Varie selon la substance', 0),
(221, 30, '1 l', 0),
(222, 36, 'Combattre les infections', 0),
(223, 36, 'Stocker les nutriments.\r\n', 0),
(224, 36, 'Réguler la température corporelle.', 0),
(225, 36, 'Transporter l\'oxygène des poumons vers les tissus du corps.', 1),
(226, 37, 'La théorie de la création divine.', 0),
(227, 37, 'La proposition selon laquelle les espèces évoluent au fil du temps par le biais de la sélection naturelle.', 1),
(228, 37, 'La théorie de la sélection artificielle.', 0),
(229, 37, 'La théorie de l\'immuabilité des espèces.', 0),
(230, 38, 'Le processus par lequel les plantes convertissent la lumière en énergie chimique.', 1),
(231, 38, 'Le processus de conversion de l\'énergie chimique en énergie électrique.\r\n', 0),
(232, 38, 'Le processus de production de chaleur par les organismes photosynthétiques.\r\n', 0),
(233, 38, 'Le processus de décomposition des molécules d\'eau en oxygène et hydrogène.', 0),
(234, 39, 'La loi de la gravitation solaire.', 0),
(235, 39, 'La loi de la gravitation solaire.', 0),
(236, 39, 'La loi de la gravitation universelle.', 1),
(237, 39, 'La loi de la gravité spécifique.', 0),
(238, 40, 'Transporter l\'oxygène dans la cellule.', 0),
(239, 40, 'Produire de l\'énergie pour la cellule.', 0),
(240, 40, 'Contrôler les activités cellulaires.', 1),
(241, 40, 'Stocker l\'eau et les nutriments.', 0),
(242, 41, 'Vincent van Gogh.', 0),
(243, 41, 'Leonardo da Vinci.', 1),
(244, 41, 'Pablo Picasso.', 0),
(245, 41, 'Michel-Ange.', 0),
(246, 42, 'L\'océan Pacifique.', 1),
(247, 42, 'L\'océan Atlantique.', 0),
(248, 42, 'L\'océan Indien.', 0),
(249, 42, 'L\'océan Indien.', 0),
(250, 43, 'Charles Dickens.', 0),
(251, 43, 'F. Scott Fitzgerald.', 0),
(252, 43, 'Jane Austen.', 0),
(253, 43, 'William Shakespeare.', 1),
(254, 44, 'Le Sahara.', 0),
(255, 44, 'Le désert de l\'Arctique/Antarctique.', 1),
(256, 44, 'Le désert du Kalahari.', 0),
(257, 44, 'Le désert de Gobi.', 0),
(258, 45, 'Canberra.', 0),
(259, 45, 'Canberra.', 1),
(260, 45, 'Melbourne.', 0),
(261, 45, 'Brisbane.', 0),
(266, 46, 'Oxygène', 0),
(267, 46, 'Carbone', 0),
(268, 46, 'Azote', 0),
(269, 46, 'Hydrogène', 1),
(270, 47, 'J.K. Rowling.', 0),
(271, 47, 'Antoine de Saint-Exupéry.', 1),
(272, 47, 'Roald Dahl.', 0),
(273, 47, 'Mark Twain.', 0),
(274, 48, 'Le Nil.', 1),
(275, 48, 'L\'Amazonie.', 0),
(276, 48, 'Le Mississippi.', 0),
(277, 48, 'Le Yangtsé.', 0),
(282, 49, 'Claude Monet.', 0),
(283, 49, 'Salvador Dalí.', 0),
(284, 49, 'Pablo Picasso.', 0),
(285, 49, 'Vincent van Gogh.', 1),
(286, 50, 'George Orwell.', 1),
(287, 50, 'Aldous Huxley.', 0),
(288, 50, 'Ray Bradbury.', 0),
(289, 50, 'Ernest Hemingway.', 0),
(290, 51, 'Brésil', 0),
(291, 51, 'Etats-Unis', 1),
(292, 51, 'Chine', 0),
(293, 51, 'Angleterre', 0),
(294, 52, '5', 0),
(295, 52, '4', 0),
(296, 52, '6', 1),
(297, 52, '7', 0),
(298, 53, 'Carl Lewis', 0),
(299, 53, 'Mike Powell', 0),
(300, 53, 'Sergey Bubka', 1),
(301, 53, 'Usain Bolt', 0),
(302, 54, 'Court Philippe Chatrier', 0),
(303, 54, 'Arthur Ashe Stadium', 0),
(304, 54, 'Rod Laver Arena', 0),
(305, 54, 'Centre Court\r\n', 1),
(306, 55, 'Qatar', 1),
(307, 55, 'Brésil', 0),
(308, 55, 'Dubai', 0),
(309, 55, 'France', 0),
(310, 56, ' New England Patriots', 0),
(311, 56, 'Dallas Cowboys', 0),
(312, 56, 'Dallas Cowboys', 1),
(313, 56, 'Green Bay Packers', 0),
(314, 57, 'Eliud Kipchoge', 1),
(315, 57, 'Haile Gebrselassie', 0),
(316, 57, 'Haile Gebrselassie', 0),
(317, 57, 'Wilson Kipsang', 0),
(322, 58, '11', 0),
(323, 58, '8', 0),
(324, 58, '18', 0),
(325, 58, '15', 1),
(326, 59, 'Michael Jordan', 0),
(327, 59, 'Le Bron James', 0),
(328, 59, 'Kareem Abdul-Jabbar', 0),
(329, 59, 'Magic Johnson', 1),
(330, 60, 'Argentine', 0),
(331, 60, 'Madagascar', 1),
(332, 60, 'France', 0),
(333, 60, 'Italie', 0),
(334, 61, 'Quentin Tarantino.', 0),
(335, 61, 'Christopher Nolan.', 1),
(336, 61, 'Martin Scorsese.', 0),
(337, 61, 'Steven Spielberg.', 0),
(338, 62, 'Malok\'ila', 1),
(339, 62, 'ADISANA', 0),
(340, 62, 'La Longue attente', 0),
(341, 62, 'Maska', 0),
(342, 63, '\"Goldfinger\".', 0),
(343, 63, '\"Casino Royale\".', 0),
(344, 63, '\"Dr. No\" (1962).', 1),
(345, 63, '\"Skyfall\".', 0),
(346, 64, 'Tom Hanks.', 1),
(347, 64, 'Brad Pitt.', 0),
(348, 64, 'Leonardo DiCaprio.', 0),
(349, 64, 'Johnny Depp.', 0),
(350, 65, 'Stanley Kubrick.', 0),
(351, 65, 'Alfred Hitchcock.', 0),
(352, 65, 'Quentin Tarantino.', 1),
(353, 65, 'Martin Scorsese.', 0),
(354, 66, '\"Le Retour du Roi\".', 0),
(355, 66, '\"La Communauté de l\'Anneau\"', 1),
(356, 66, '\"Le Hobbit\"', 0),
(357, 66, '\"Les Deux Tours\".', 0),
(358, 67, 'Tom Cruise.', 0),
(359, 67, 'Tom Holland', 1),
(360, 67, 'Matt Damon.', 0),
(361, 67, 'Brad Pitt.', 0),
(362, 68, 'Leonardo Dicaprio', 1),
(363, 68, 'Le Bron James', 0),
(364, 68, 'Tony Stark', 0),
(365, 68, 'John weak', 0),
(366, 69, 'R2-D2.', 0),
(367, 69, 'Wall-E', 1),
(368, 69, 'C-3PO.', 0),
(369, 69, 'Bender.', 0),
(374, 70, '\"Star Wars: Episode IV - Un nouvel espoir\"', 1),
(375, 70, '\"Star Wars: Episode V\"', 0),
(376, 70, '\"Star Wars: Episode IV\"', 0),
(377, 70, '\"Star Wars: Episode III\"', 0),
(378, 71, 'Michael Jackson', 0),
(379, 71, 'Madonna', 0),
(380, 71, 'Elvis Presley', 1),
(381, 71, 'Taylor Swift', 0),
(382, 72, 'The Beatles', 0),
(383, 72, 'Led Zeppelin', 0),
(384, 72, 'Pink Floyd', 1),
(385, 72, 'Queen', 0),
(386, 73, 'Etats-Unis', 0),
(387, 73, 'Madagascar', 1),
(388, 73, 'Italie', 0),
(389, 73, 'Afrique du Sud', 0),
(390, 74, 'Taylor Swift', 0),
(391, 74, 'Billie Eilish', 1),
(392, 74, 'Ariana Grande', 0),
(393, 74, 'Drake', 0),
(394, 75, 'Coachella', 1),
(395, 75, 'Lollapalooza', 0),
(396, 75, 'Glastonbury', 0),
(397, 75, 'Bonnaroo', 0),
(398, 76, 'The Rolling Stones', 0),
(399, 76, 'The Beatles', 0),
(400, 76, 'Led Zeppelin', 0),
(401, 76, 'Queen', 1),
(402, 77, 'Suède', 1),
(403, 77, 'Norvège', 0),
(404, 77, 'Danemark', 0),
(405, 77, 'Finland', 0),
(406, 78, '\"Old Town Road\" - Lil Nas X ft. Billy Ray Cyrus', 0),
(407, 78, '\"Despacito\" - Luis Fonsi ft. Daddy Yankee', 0),
(408, 78, '\"One Sweet Day\" - Mariah Carey & Boyz II Men', 1),
(409, 78, '\"Shape of You\" - Ed Sheeran', 0),
(410, 79, 'Bob Marley', 0),
(411, 79, 'Jaojaoby', 1),
(412, 79, 'Wawa', 0),
(413, 79, 'Samoela', 0),
(414, 80, '\"Abbey Road\" - The Beatles', 0),
(415, 80, '\"Thriller\" - Michael Jackson', 1),
(416, 80, '\"Back in Black\" - AC/DC', 0),
(417, 80, '\"Led Zeppelin IV\" - Led Zeppelin', 0),
(418, 81, 'Apple', 0),
(419, 81, 'Microsoft', 0),
(420, 81, 'Google', 1),
(421, 81, 'Samsung', 0),
(422, 82, 'Bluetooth', 1),
(423, 82, 'Wi-Fi', 0),
(424, 82, 'NFC', 0),
(425, 82, 'LTE', 0),
(426, 83, 'Steve Jobs', 0),
(427, 83, 'Bill Gates', 0),
(428, 83, 'Alan Turing', 0),
(429, 83, 'Charles Babbage', 1),
(430, 84, 'Tesla', 1),
(431, 84, 'SpaceX', 0),
(432, 84, 'SolarCity', 0),
(433, 84, 'Neuralink', 0),
(434, 85, 'Python', 0),
(435, 85, 'JAVA', 0),
(436, 85, 'Javascript', 1),
(437, 85, 'C++', 0),
(438, 86, 'Firefox', 0),
(439, 86, 'Internet Explorer', 0),
(440, 86, 'Netscape Navigator', 1),
(441, 86, 'Safarri', 0),
(442, 87, 'RAM', 0),
(443, 87, 'ROM', 0),
(444, 87, 'EEPROM', 0),
(445, 87, 'Flash', 1),
(446, 89, 'Bluetooth', 1),
(447, 89, 'Wi-Fi', 0),
(448, 89, 'Ethernet', 0),
(449, 89, '4G', 0),
(450, 90, 'USB', 0),
(451, 90, 'HDMI', 0),
(452, 90, 'Thunderbolt', 1),
(453, 90, 'DisplayPort', 0);

-- --------------------------------------------------------

--
-- Structure de la table `theme`
--

CREATE TABLE `theme` (
  `idth` int(11) NOT NULL,
  `nom_theme` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `theme`
--

INSERT INTO `theme` (`idth`, `nom_theme`) VALUES
(1, 'Géographie'),
(2, 'Histoire'),
(3, 'Sciences'),
(4, 'Culture générale'),
(5, 'Sports'),
(6, 'Cinéma'),
(7, 'Musique'),
(8, 'Technologies'),
(9, 'Alimentation'),
(10, 'Langues');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `iduser` int(11) NOT NULL,
  `nom` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `score` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `niveau` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`iduser`, `nom`, `score`, `niveau`) VALUES
(1, 'Nandrian123', '10', '2');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`idqs`),
  ADD KEY `idtheme` (`idtheme`);

--
-- Index pour la table `reponses`
--
ALTER TABLE `reponses`
  ADD PRIMARY KEY (`idrep`),
  ADD KEY `idquest` (`idquest`);

--
-- Index pour la table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`idth`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `questions`
--
ALTER TABLE `questions`
  MODIFY `idqs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT pour la table `reponses`
--
ALTER TABLE `reponses`
  MODIFY `idrep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=454;

--
-- AUTO_INCREMENT pour la table `theme`
--
ALTER TABLE `theme`
  MODIFY `idth` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`idtheme`) REFERENCES `theme` (`idth`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reponses`
--
ALTER TABLE `reponses`
  ADD CONSTRAINT `reponses_ibfk_1` FOREIGN KEY (`idquest`) REFERENCES `questions` (`idqs`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

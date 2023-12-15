-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 15 déc. 2023 à 14:15
-- Version du serveur : 10.8.3-MariaDB
-- Version de PHP : 8.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `fauvet`
--

-- --------------------------------------------------------

--
-- Structure de la table `Arme`
--

CREATE TABLE `Arme` (
  `idArme` int(11) NOT NULL,
  `nomArme` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `typeArme` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longueurArme` int(11) NOT NULL,
  `degatArme` int(11) NOT NULL,
  `effetArme` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descriptionArme` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `Arme`
--

INSERT INTO `Arme` (`idArme`, `nomArme`, `typeArme`, `longueurArme`, `degatArme`, `effetArme`, `descriptionArme`) VALUES
(1, 'BEBE', 'Main', 0, 1, NULL, 'Vous avez le pouvoir de taper très très fort'),
(2, 'BRISELANCE', 'Lance', 200, 4, NULL, 'Arme préféreé des Hommes-Lézard, elle se manie très facilement et à une porter imprésionnante. Cependant, sa fragilité et un grand défaut.');

-- --------------------------------------------------------

--
-- Structure de la table `Astre`
--

CREATE TABLE `Astre` (
  `idAstre` int(11) NOT NULL,
  `idSystem` int(11) NOT NULL,
  `typeAstre` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomAstre` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `masseAstre` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descriptionAstre` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `libre` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `Astre`
--

INSERT INTO `Astre` (`idAstre`, `idSystem`, `typeAstre`, `nomAstre`, `masseAstre`, `descriptionAstre`, `libre`) VALUES
(1, 1, 'Etoile', 'Akpia', '1,19346.10^30 kg', 'Les étoiles oranges émettent moins de radiations que le Soleil de sorte que leurs planètes de type M ont tendance à avoir des atmosphères plus mince et les humains ont besoin de moins de protection.', 1),
(2, 1, 'Etoile', 'Aladfar', '2,38692.10^30 kg', 'Les étoiles rouges peuvent être des supergéants ou des nains. Ceux-ci brulent plus lentement que d\'autres étoiles. Les géantes rouges ont souvent désintégré leurs planètes intérieurs', 1),
(3, 1, 'Planete', 'Lotose LPM-99', '7,7596.10^24 kg', 'Ces planètes sont petites, rocheuses et ont tous les ingrédients pour que la vie se produisent sur elles. L\'atmoshpère, la température et la gravité sont optimales et offrent, pour la plus part, une vie animal, végétal et même intéligente.', 1),
(4, 1, 'Planete', 'Eabudria L.494 II', '2,6874.10^25 kg', 'Des planètes très sèches qui sont parfois habitables par les humains mais à l\'aide d\'approvisionnement en eau ou de la technologie pour changer l\'atmosphère. Ce sont des mondes désertiques et s\'ils ont des formes de vie, ils ne sont généralement pas très souhaitables. Ils sont optimaux pour la terraformation.', 1),
(5, 1, 'Planete', 'KEP-519', '1,493.10^25 kg', 'Des planètes très sèches qui sont parfois habitables par les humains mais à l\'aide d\'approvisionnement en eau ou de technologies pour changer l\'atmosphère. Ce sont des monde désertiques et s\'ils ont des formes de vie, ils ne sont généralement pas très souhaitable. ILs sont optimaux pour la terraformation.', 1),
(6, 1, 'Planete', 'Gebbieclite', '3,5832.10^23 kg', 'Typiquement des planètes proto-terresques dont la classe dépend de l\'âge et de la solidité de leurs noyaux. Leurs surfances sont activement volcanique. Leurs atmosphères contient principalement des composés hydrogénés. Les planètes de classe F de reffroidissent avec le temps pour évoluer vers des mondes de classe G. Les formes de vie, le cas échéant, sont généralement à base de silicium.', 1),
(8, 2, 'Etoile', 'Carinae', '5.967.10^30 kg', 'Les étoiles blanches ont des enveloppes de gaz riche en métaux qui donnent une meilleur chance de trouver des gisements riches en minéraux sur des planètes et des lunes. Ce sont des sytèmes très rentables pour les mineurs et les pirates.', 1),
(9, 2, 'Etoile', 'MI 571', '5,967.10^29 kg', 'Les étoiles rouges peuvent être des supergéants ou des nains. Ceux-ci brulent plus lentement que d\'autres étoiles. Les géantes rouges ont souvent désintégré leurs planètes intérieurs', 1),
(10, 2, 'Planete', 'Nord de Wadda', '7,756.10^24 kg', 'Ces planètes sont petites, rocheuses et ont tous les ingrédients pour que la vie se produisent sur elles. L\'atmoshpère, la température et la gravité sont optimales et offrent, pour la plus part, une vie animal, végétal et même intéligente.', 1),
(11, 2, 'Planete', 'Hedion Ouest', '2,389.10^24 kg', 'Ce sont des planètes dont la température, la gravité et l\'atmosphère sont similaires aux planètes adaptées aux humains et à d\'autres espèce de vie. Cependant, ils sont des surfaces rocheuse et stériles avec seulement des petites zones d\'eau. Ce sont des planètes appropriées pour la colonisation par terraformation.', 1),
(12, 2, 'Planete', 'Epsilon X\'arius XI', '4,18.10^24 kg', 'Ce sont des planètes dont la température, la gravité et l\'atmosphère sont similaires aux planètes adaptées aux humains et à d\'autres espèce de vie. Cependant, ils sont des surfaces rocheuse et stériles avec seulement des petites zones d\'eau. Ce sont des planètes appropriées pour la colonisation par terraformation.', 1),
(13, 2, 'Planete', 'Vul\'us', '3,874.10^22 kg', 'Les planètes de classe D sont des planètes telles que des astéroïdes ou des lunes. Ils se trouvent principalement sur l\'orbite de corps plus grands ou dans le champ d\'astéroïdes. Leurs surfaces sont stériles et caractérisées. L\'Atmosphère à l\'intérieur de la planète est très ténue, si elle existe. Elles ne sont pas adaptés à la vie.', 1),
(14, 2, 'Planete', 'Tau Ceti Khantose', '2,6874.10^22 kg', 'Les planètes de classe D sont des planètes telles que des astéroïdes ou des lunes. Ils se trouvent principalement sur l\'orbite de corps plus grands ou dans le champ d\'astéroïdes. Leurs surfaces sont stériles et caractérisées. L\'Atmosphère à l\'intérieur de la planète est très ténue, si elle existe. Elles ne sont pas adaptés à la vie.', 1),
(15, 2, 'Planete', 'Pégase', '4,1804.10^24 kg', 'Ce sont des planètes dont la température, la gravité et l\'atmosphère sont similaires aux planètes adaptées aux humains et à d\'autres espèce de vie. Cependant, ils sont des surfaces rocheuse et stériles avec seulement des petites zones d\'eau. Ce sont des planètes appropriées pour la colonisation par terraformation.', 1),
(16, 2, 'Planete', 'Del-374', '5,3748.10^27 kg', 'Une des planètes les plus courantes dans l\'univers. Ces géantes gazeuze orbitent autour d\'étoiles avec une masse critique qui pourrait les enflammer et transformer en étoiles. Ils sont grand et ont beaucoup de gravité avec des atmosphères turbulantes. Il peut y avoir des formes de vie à base d\'hydrocarbures sur ces planètes et d\'autres créatures. Mais elles ne sont pas habitable pour les humains. ', 1),
(17, 2, 'Planete', 'Cributurn', '7,1664.10^26 kg', 'Une des planètes les plus courantes dans l\'univers. Ces géantes gazeuze orbitent autour d\'étoiles avec une masse critique qui pourrait les enflammer et transformer en étoiles. Ils sont grand et ont beaucoup de gravité avec des atmosphères turbulantes. Il peut y avoir des formes de vie à base d\'hydrocarbures sur ces planètes et d\'autres créatures. Mais elles ne sont pas habitable pour les humains. ', 1),
(18, 3, 'Etoile', 'Chiites 427', '1,989.10^31 kg', 'Cette étoile est trop jeune pour créer des dydtèmes planétaires. Les terraformers anciens, les extraterrestres ou d\'autres phénomènes inconnus ont ensemencé des planètes autour de cette jeune étoile pour tirer parti de ses ressources.\r\n	Les étoiles bleues consomment rapidement leur carburant, de sortent qu\'elles brûlent quelques millions d\'années avant que les planètes ne se forment autour d\'elles. Ce sont généralemet des étoiles super géantes. S\'ils ont des étoiles autour d\'eux., ils peuvent êtres des mondes de ruches (Mondes artificiels) ou des planètes capturées.', 1),
(19, 3, 'Planete', 'Alpha Tashcan VII', '2,986.10^23 kg', 'Ce sont des planètes artificielles créées par des extraterrestres ou des civilisations très avancées. Ce sont des centres de productions industrielle qui abritent toutes les machines nécéssaires à l\'exploitation des jeunes étoiles. Ils sont auto-suffisants et vives d\'importations colosalles de vivres et d\'eau en provenances des mondes agricoles.', 0),
(20, 3, 'Planete', 'West Klinsea I', '4,778.10^24 kg', 'Ce sont des planètes artificielles créées par des extraterrestres ou des civilisations très avancées. Ce sont des centres de productions industrielle qui abritent toutes les machines nécéssaires à l\'exploitation des jeunes étoiles. Ils sont auto-suffisants et vives d\'importations colosalles de vivres et d\'eau en provenances des mondes agricoles.', 0),
(21, 3, 'Planete', 'Thêta Certo', '3,583.10^21 kg', 'Ce sont des planètes artificielles créées par des extraterrestres ou des civilisations très avancées. Ce sont des centres de productions industrielle qui abritent toutes les machines nécéssaires à l\'exploitation des jeunes étoiles. Ils sont auto-suffisants et vives d\'importations colosalles de vivres et d\'eau en provenances des mondes agricoles.', 0),
(22, 3, 'Planete', 'Qu\'en ce qui est du Dok-722', '3,8838.10^23 kg', 'Ce sont des planètes artificielles créées par des extraterrestres ou des civilisations très avancées. Ce sont des centres de productions industrielle qui abritent toutes les machines nécéssaires à l\'exploitation des jeunes étoiles. Ils sont auto-suffisants et vives d\'importations colosalles de vivres et d\'eau en provenances des mondes agricoles.', 0),
(23, 3, 'Planete', 'Alpha Omega Cushaa X', '2,3888.10^21 kg', 'Ce sont des planètes artificielles créées par des extraterrestres ou des civilisations très avancées. Ce sont des centres de productions industrielle qui abritent toutes les machines nécéssaires à l\'exploitation des jeunes étoiles. Ils sont auto-suffisants et vives d\'importations colosalles de vivres et d\'eau en provenances des mondes agricoles.', 0),
(24, 3, 'Planete', 'Synelia F.145 XVI', '5,0752.10^23 kg', 'Ce sont des planètes artificielles créées par des extraterrestres ou des civilisations très avancées. Ce sont des centres de productions industrielle qui abritent toutes les machines nécéssaires à l\'exploitation des jeunes étoiles. Ils sont auto-suffisants et vives d\'importations colosalles de vivres et d\'eau en provenances des mondes agricoles.', 0);

-- --------------------------------------------------------

--
-- Structure de la table `Batiment`
--

CREATE TABLE `Batiment` (
  `idBatiment` int(11) NOT NULL,
  `nomBatiment` int(11) NOT NULL,
  `coutBatiment` int(11) NOT NULL,
  `revenuBatiment` int(11) NOT NULL,
  `niveauBatiment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Espece`
--

CREATE TABLE `Espece` (
  `idEspece` int(11) NOT NULL,
  `idArme` int(11) DEFAULT NULL,
  `nomEspece` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poidsEspece` int(11) NOT NULL,
  `degatEspece` int(11) NOT NULL,
  `millieuEspece` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mouvementEspece` int(11) NOT NULL,
  `hostileEspece` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `Espece`
--

INSERT INTO `Espece` (`idEspece`, `idArme`, `nomEspece`, `poidsEspece`, `degatEspece`, `millieuEspece`, `mouvementEspece`, `hostileEspece`) VALUES
(0, NULL, 'Il n\'y a pas de vie autochtone', 0, 0, 'Aucun millieu', 0, 0),
(1, 2, 'Reptiles', 70, 6, 'Forêt Tropicales, Désert', 10, 0),
(2, NULL, 'Insectes géants', 2, 2, 'Foret, Plaine, Désert', 4, 0),
(3, NULL, 'Grands Amphibiens', 1, 1, 'Tous milieux aquatique', 2, 0),
(4, NULL, 'Végétations', 1, 1, 'Tout sauf environnement Aride', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `Etoile`
--

CREATE TABLE `Etoile` (
  `idEtoile` int(11) NOT NULL,
  `idAstre` int(11) NOT NULL,
  `luminosite` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ageEtoile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `Etoile`
--

INSERT INTO `Etoile` (`idEtoile`, `idAstre`, `luminosite`, `ageEtoile`) VALUES
(1, 1, '0,3827.10^26 W', '6 Milliards'),
(2, 2, '0,003827.10^26 W', '5 Milliards'),
(3, 8, '3486,397.10^26 W', '5 Millions'),
(4, 9, '0,003827.10^26 W', '8 Milliards');

-- --------------------------------------------------------

--
-- Structure de la table `Faction`
--

CREATE TABLE `Faction` (
  `idFaction` int(11) NOT NULL,
  `nomFaction` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jouable` tinyint(1) NOT NULL,
  `deviseFaction` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `Faction`
--

INSERT INTO `Faction` (`idFaction`, `nomFaction`, `jouable`, `deviseFaction`) VALUES
(0, 'Avalon', 0, 'Là ou l\'histoire à commencé, où celle-ci s\'écrit, et où elle se concluera '),
(1, 'Windaos', 0, 'Aussi appelé : La Guilde. Nous somme la plus grande Faction interuniversel pour tous les jeunes aventuriers souhaitant explorer le Cosmos');

-- --------------------------------------------------------

--
-- Structure de la table `GestionBatiment`
--

CREATE TABLE `GestionBatiment` (
  `idGestionBatiment` int(11) NOT NULL,
  `idFaction` int(11) NOT NULL,
  `idBatiment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `GestionHabitation`
--

CREATE TABLE `GestionHabitation` (
  `idEspece` int(11) NOT NULL,
  `idPlanete` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `GestionHabitation`
--

INSERT INTO `GestionHabitation` (`idEspece`, `idPlanete`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(0, 2),
(0, 3),
(0, 4),
(0, 5),
(0, 6),
(0, 7),
(0, 8),
(0, 9),
(0, 10),
(0, 11),
(0, 12);

-- --------------------------------------------------------

--
-- Structure de la table `GestionPossession`
--

CREATE TABLE `GestionPossession` (
  `idGestionPossession` int(11) NOT NULL,
  `idFaction` int(11) NOT NULL,
  `idRessource` int(11) NOT NULL,
  `Qtte` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `GestionPossession`
--

INSERT INTO `GestionPossession` (`idGestionPossession`, `idFaction`, `idRessource`, `Qtte`) VALUES
(1, 1, 1, 1000000);

-- --------------------------------------------------------

--
-- Structure de la table `GestionTroupe`
--

CREATE TABLE `GestionTroupe` (
  `idGestionTroupe` int(11) NOT NULL,
  `idFaction` int(11) NOT NULL,
  `idUnite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `GestionType`
--

CREATE TABLE `GestionType` (
  `idGestionType` int(11) NOT NULL,
  `idType` int(11) NOT NULL,
  `idEtoile` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `GestionType`
--

INSERT INTO `GestionType` (`idGestionType`, `idType`, `idEtoile`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 2, 2),
(4, 3, 2),
(5, 4, 3),
(6, 5, 3),
(7, 3, 4),
(8, 2, 4);

-- --------------------------------------------------------

--
-- Structure de la table `Information`
--

CREATE TABLE `Information` (
  `idInformation` int(11) NOT NULL,
  `idPlanete` int(11) NOT NULL,
  `infoPopulation` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `infoTechnologie` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `infoGouvernement` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `infoAstroport` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Membre`
--

CREATE TABLE `Membre` (
  `idMembre` int(11) NOT NULL,
  `idFaction` int(11) NOT NULL,
  `nomMembre` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenomMembre` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pseudoMembre` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mdpMembre` varchar(42) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deviseMembre` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `Membre`
--

INSERT INTO `Membre` (`idMembre`, `idFaction`, `nomMembre`, `prenomMembre`, `pseudoMembre`, `mdpMembre`, `deviseMembre`) VALUES
(0, 0, 'Fauvet', 'Matthis', 'Gauthier de Pendragon', '*21BB7AF66DC9F7A450FD5B8D15C6C7003CFBD442', 'Personne par la guerre, ne devient grand.');

-- --------------------------------------------------------

--
-- Structure de la table `Planete`
--

CREATE TABLE `Planete` (
  `idPlanete` int(11) NOT NULL,
  `idAstre` int(11) NOT NULL,
  `typePlanete` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `habitable` tinyint(1) NOT NULL,
  `temperature` float NOT NULL,
  `mouvements` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `atmosphere` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `Planete`
--

INSERT INTO `Planete` (`idPlanete`, `idAstre`, `typePlanete`, `habitable`, `temperature`, `mouvements`, `atmosphere`) VALUES
(1, 3, 'Class M', 1, -2, 'Cycle de 167 jours, journée de 23h00 (11h30 de jour)', 'Mince. Composition : 72% N2 - 24% de O2 - 4% NH3. Hydrosphère de 20%'),
(2, 4, 'Class H', 1, -38, 'Cycle de 337 jours, journée de 14h00 (7H00 de jour)', 'Épaisse. Composition : 30% F2 - 20% de SO2 - 6% CO2 - 44% de CH4. Hydrosphère de 3%'),
(3, 5, 'Class H', 1, -100, 'Cycle de 544 jours, journée de 21h00 (10h30 de jour)', 'Mince. Composition : 70% F2 - 13% de Cl2 - 13% CO2 - 5% de SO2 - 7% Ne. Hydrosphère de 13%'),
(4, 6, 'Class F (Séchec)', 0, -105, 'Cycle de 1044 jours, journée de 21h00 (10h30 de jour)', 'Pas d\'atmosphère'),
(5, 10, 'Class M (Tempérée)', 1, 648.85, 'Cycle de 75 jours, journée de 21h00 (10h30 de jour).', 'Norme. Composition : 74% N2 - 21% de O2 - 5% de H2O. Hydrosphère de 12.5%'),
(6, 11, 'Class K (Chaud)', 1, 444.85, 'Cycle de 180 jours, journée de 26h00 (13h00 de jour).', 'Norme. Composition : 50% CO2 - 20% de Ar - 30% de H2O. Hydrosphère de 1%'),
(7, 12, 'Class K (Chaud)', 1, 381.85, 'Cycle de 312 jours, journée de 16h00 (8h00 de jour).', 'Norme. Composition : 30% N2 - 12% de CO2 - 9% de H2O - 49% de F2.'),
(8, 13, 'Class D (Rocky Planetoid)', 0, 352.85, 'Cycle de 641 jours, journée de 23h00 (11h30 de jour).', 'Pas d\'atmosphère.'),
(9, 14, 'Class D (Rocky Planetoid)', 0, 354.85, 'Cycle de 1500 jours, journée de 19h00 (9h30 de jour).', 'Pas d\'atmosphère.'),
(10, 15, 'Class K (Chaud)', 1, -100.15, 'Cycle de 219 966 jours, journée de 13h00 (6h30 de jour).', 'Mince. Composition : 20% CO2 - 17% de AR - 4% de N2 - 51% de H2O. Hydrosphère de 3%.'),
(11, 16, 'Class J (Gaas Giant Superjovian)', 1, -194.15, 'Cycle de 619 891 jours, journée de 9h00 (4h30 de jour).', 'Épaisse. Composition : 68% H2 - 14% de HE - 8% de NH3.'),
(12, 17, 'Class J (Gaie de Géoricien)', 1, -189.15, 'Cycle de 1 750 116 jours, journée de 11h00 (5h30 de jour).', 'Épaisse. Composition : 74% H2 - 13% de HE - 10% de NH3.');

-- --------------------------------------------------------

--
-- Structure de la table `PlaneteRessources`
--

CREATE TABLE `PlaneteRessources` (
  `idPlanete` int(11) DEFAULT NULL,
  `idRessource` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `PlaneteRessources`
--

INSERT INTO `PlaneteRessources` (`idPlanete`, `idRessource`) VALUES
(1, 2),
(1, 10),
(1, 3),
(1, 4),
(2, 14),
(3, 5),
(3, 7),
(5, 19),
(6, 20),
(7, 13),
(8, 7),
(8, 9),
(8, 21),
(9, 7),
(9, 9),
(9, 21),
(10, 20),
(11, 14),
(11, 16),
(11, 21),
(12, 14),
(12, 16),
(12, 21);

-- --------------------------------------------------------

--
-- Structure de la table `Ressource`
--

CREATE TABLE `Ressource` (
  `idRessource` int(11) NOT NULL,
  `nomRessource` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `defaultValue` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `Ressource`
--

INSERT INTO `Ressource` (`idRessource`, `nomRessource`, `defaultValue`) VALUES
(1, 'Crédit', 1),
(2, 'Nourriture', 100),
(3, 'Bois', 50),
(4, 'Tissus', 500),
(5, 'Roche', 50),
(6, 'Eau', 100),
(7, 'Métal', 1000),
(8, 'Platine', NULL),
(9, 'Explosif', NULL),
(10, 'Charbon', NULL),
(11, 'Cristaux d\'énergie', NULL),
(12, 'Iridium', NULL),
(13, 'Plutonium', NULL),
(14, 'Hélium', NULL),
(15, 'Silicium', NULL),
(16, 'Hydrogène', NULL),
(17, 'Or', NULL),
(18, 'Cuivre', NULL),
(19, 'Pierres précieuse', 100000),
(20, 'Critaux chimiques', NULL),
(21, 'Carcasse de vaisseaux', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `Satellite`
--

CREATE TABLE `Satellite` (
  `idSatellite` int(11) NOT NULL,
  `idPlanete` int(11) NOT NULL,
  `nomSatellite` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `typeSatellite` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `Satellite`
--

INSERT INTO `Satellite` (`idSatellite`, `idPlanete`, `nomSatellite`, `typeSatellite`) VALUES
(1, 2, 'Sumaddon occidental', 'Rocky Planetoid'),
(2, 2, 'Dunrynx IX', 'Rocky Planetoid'),
(3, 3, 'Atarchie', 'Hut'),
(4, 3, 'Iberia', 'Rocky Planetoid'),
(5, 4, 'Diminia', 'Hut'),
(6, 4, 'Pertcon IX', 'Satellite Asteroid'),
(7, 5, 'Trakuvis', 'Rocky Planetoid'),
(8, 6, 'Proaddon VII', 'Rocky Planetoid'),
(9, 7, 'Vieux Tailon I', 'Hut'),
(10, 7, 'Tasebus l.156 XV', 'Icy'),
(11, 8, 'Omega Paraneva (Panavera)', 'Icy'),
(12, 8, 'Tasses du Nord', 'Hut'),
(13, 9, 'Tau Ceti Funurrinia VI', 'Hut'),
(14, 9, 'Sizz-716', 'Satellite Asteroide'),
(15, 10, 'Treeplejos Quintus', 'Hut'),
(16, 12, 'Atarangolia JO B-479', 'Rocky Planetoid'),
(17, 12, 'Winza', 'Rocky Planetoid');

-- --------------------------------------------------------

--
-- Structure de la table `SystemStelaire`
--

CREATE TABLE `SystemStelaire` (
  `idSystem` int(11) NOT NULL,
  `gouverneur` int(11) NOT NULL,
  `nomSystem` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `libre` tinyint(1) DEFAULT NULL,
  `coordX` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coordY` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `SystemStelaire`
--

INSERT INTO `SystemStelaire` (`idSystem`, `gouverneur`, `nomSystem`, `libre`, `coordX`, `coordY`) VALUES
(1, 1, 'Aladfar', 1, '9', 'G'),
(2, 1, 'Carinae', 1, '4', 'C'),
(3, 1, 'Chiite', 1, '7', 'C');

-- --------------------------------------------------------

--
-- Structure de la table `Type`
--

CREATE TABLE `Type` (
  `idType` int(11) NOT NULL,
  `lettreType` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valeurType` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `Type`
--

INSERT INTO `Type` (`idType`, `lettreType`, `valeurType`) VALUES
(1, 'K', 'Orange'),
(2, 'V', 'Normal'),
(3, 'M', 'Rouge'),
(4, 'A', 'Blanc'),
(5, 'IV', 'Subgiant');

-- --------------------------------------------------------

--
-- Structure de la table `Unite`
--

CREATE TABLE `Unite` (
  `idUnite` int(11) NOT NULL,
  `idArme` int(11) NOT NULL,
  `nomUnite` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vieUnite` int(11) NOT NULL,
  `degatUnite` int(11) NOT NULL,
  `millieuUnite` int(11) NOT NULL,
  `mouvementUnite` int(11) NOT NULL,
  `capaciteUnite` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `descriptionUnite` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Arme`
--
ALTER TABLE `Arme`
  ADD PRIMARY KEY (`idArme`);

--
-- Index pour la table `Astre`
--
ALTER TABLE `Astre`
  ADD PRIMARY KEY (`idAstre`),
  ADD KEY `idSystem` (`idSystem`);

--
-- Index pour la table `Batiment`
--
ALTER TABLE `Batiment`
  ADD PRIMARY KEY (`idBatiment`);

--
-- Index pour la table `Espece`
--
ALTER TABLE `Espece`
  ADD PRIMARY KEY (`idEspece`),
  ADD KEY `idArme` (`idArme`);

--
-- Index pour la table `Etoile`
--
ALTER TABLE `Etoile`
  ADD PRIMARY KEY (`idEtoile`),
  ADD KEY `idAstre` (`idAstre`);

--
-- Index pour la table `Faction`
--
ALTER TABLE `Faction`
  ADD PRIMARY KEY (`idFaction`);

--
-- Index pour la table `GestionBatiment`
--
ALTER TABLE `GestionBatiment`
  ADD PRIMARY KEY (`idGestionBatiment`),
  ADD KEY `idFaction` (`idFaction`),
  ADD KEY `idBatiment` (`idBatiment`);

--
-- Index pour la table `GestionHabitation`
--
ALTER TABLE `GestionHabitation`
  ADD KEY `idEspece` (`idEspece`);

--
-- Index pour la table `GestionPossession`
--
ALTER TABLE `GestionPossession`
  ADD PRIMARY KEY (`idGestionPossession`),
  ADD KEY `idFaction` (`idFaction`),
  ADD KEY `idRessource` (`idRessource`);

--
-- Index pour la table `GestionTroupe`
--
ALTER TABLE `GestionTroupe`
  ADD PRIMARY KEY (`idGestionTroupe`),
  ADD KEY `idFaction` (`idFaction`),
  ADD KEY `idUnite` (`idUnite`);

--
-- Index pour la table `GestionType`
--
ALTER TABLE `GestionType`
  ADD PRIMARY KEY (`idGestionType`),
  ADD KEY `idType` (`idType`),
  ADD KEY `GestionType_ibfk_1` (`idEtoile`);

--
-- Index pour la table `Information`
--
ALTER TABLE `Information`
  ADD PRIMARY KEY (`idInformation`);

--
-- Index pour la table `Membre`
--
ALTER TABLE `Membre`
  ADD PRIMARY KEY (`idMembre`),
  ADD KEY `idFaction` (`idFaction`);

--
-- Index pour la table `Planete`
--
ALTER TABLE `Planete`
  ADD PRIMARY KEY (`idPlanete`),
  ADD KEY `idAstre` (`idAstre`);

--
-- Index pour la table `Ressource`
--
ALTER TABLE `Ressource`
  ADD PRIMARY KEY (`idRessource`);

--
-- Index pour la table `Satellite`
--
ALTER TABLE `Satellite`
  ADD PRIMARY KEY (`idSatellite`),
  ADD KEY `idPlanete` (`idPlanete`);

--
-- Index pour la table `SystemStelaire`
--
ALTER TABLE `SystemStelaire`
  ADD PRIMARY KEY (`idSystem`),
  ADD KEY `gouverneur` (`gouverneur`);

--
-- Index pour la table `Type`
--
ALTER TABLE `Type`
  ADD PRIMARY KEY (`idType`);

--
-- Index pour la table `Unite`
--
ALTER TABLE `Unite`
  ADD PRIMARY KEY (`idUnite`),
  ADD KEY `idArme` (`idArme`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Arme`
--
ALTER TABLE `Arme`
  MODIFY `idArme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `Astre`
--
ALTER TABLE `Astre`
  MODIFY `idAstre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `Batiment`
--
ALTER TABLE `Batiment`
  MODIFY `idBatiment` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Espece`
--
ALTER TABLE `Espece`
  MODIFY `idEspece` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `Etoile`
--
ALTER TABLE `Etoile`
  MODIFY `idEtoile` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `Faction`
--
ALTER TABLE `Faction`
  MODIFY `idFaction` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `GestionPossession`
--
ALTER TABLE `GestionPossession`
  MODIFY `idGestionPossession` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `GestionTroupe`
--
ALTER TABLE `GestionTroupe`
  MODIFY `idGestionTroupe` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `GestionType`
--
ALTER TABLE `GestionType`
  MODIFY `idGestionType` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `Information`
--
ALTER TABLE `Information`
  MODIFY `idInformation` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Membre`
--
ALTER TABLE `Membre`
  MODIFY `idMembre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `Planete`
--
ALTER TABLE `Planete`
  MODIFY `idPlanete` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `Ressource`
--
ALTER TABLE `Ressource`
  MODIFY `idRessource` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `Satellite`
--
ALTER TABLE `Satellite`
  MODIFY `idSatellite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `SystemStelaire`
--
ALTER TABLE `SystemStelaire`
  MODIFY `idSystem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `Type`
--
ALTER TABLE `Type`
  MODIFY `idType` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `Unite`
--
ALTER TABLE `Unite`
  MODIFY `idUnite` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Astre`
--
ALTER TABLE `Astre`
  ADD CONSTRAINT `Astre_ibfk_1` FOREIGN KEY (`idSystem`) REFERENCES `SystemStelaire` (`idSystem`);

--
-- Contraintes pour la table `Espece`
--
ALTER TABLE `Espece`
  ADD CONSTRAINT `Espece_ibfk_1` FOREIGN KEY (`idArme`) REFERENCES `Arme` (`idArme`);

--
-- Contraintes pour la table `Etoile`
--
ALTER TABLE `Etoile`
  ADD CONSTRAINT `Etoile_ibfk_1` FOREIGN KEY (`idAstre`) REFERENCES `Astre` (`idAstre`);

--
-- Contraintes pour la table `GestionBatiment`
--
ALTER TABLE `GestionBatiment`
  ADD CONSTRAINT `GestionBatiment_ibfk_2` FOREIGN KEY (`idFaction`) REFERENCES `Faction` (`idFaction`),
  ADD CONSTRAINT `GestionBatiment_ibfk_3` FOREIGN KEY (`idBatiment`) REFERENCES `Batiment` (`idBatiment`);

--
-- Contraintes pour la table `GestionHabitation`
--
ALTER TABLE `GestionHabitation`
  ADD CONSTRAINT `GestionHabitation_ibfk_2` FOREIGN KEY (`idEspece`) REFERENCES `Espece` (`idEspece`);

--
-- Contraintes pour la table `GestionPossession`
--
ALTER TABLE `GestionPossession`
  ADD CONSTRAINT `GestionPossession_ibfk_1` FOREIGN KEY (`idFaction`) REFERENCES `Faction` (`idFaction`),
  ADD CONSTRAINT `GestionPossession_ibfk_2` FOREIGN KEY (`idRessource`) REFERENCES `Ressource` (`idRessource`);

--
-- Contraintes pour la table `GestionTroupe`
--
ALTER TABLE `GestionTroupe`
  ADD CONSTRAINT `GestionTroupe_ibfk_1` FOREIGN KEY (`idFaction`) REFERENCES `Faction` (`idFaction`),
  ADD CONSTRAINT `GestionTroupe_ibfk_2` FOREIGN KEY (`idUnite`) REFERENCES `Unite` (`idUnite`);

--
-- Contraintes pour la table `GestionType`
--
ALTER TABLE `GestionType`
  ADD CONSTRAINT `GestionType_ibfk_1` FOREIGN KEY (`idEtoile`) REFERENCES `Etoile` (`idEtoile`),
  ADD CONSTRAINT `GestionType_ibfk_2` FOREIGN KEY (`idType`) REFERENCES `Type` (`idType`);

--
-- Contraintes pour la table `Membre`
--
ALTER TABLE `Membre`
  ADD CONSTRAINT `Membre_ibfk_1` FOREIGN KEY (`idFaction`) REFERENCES `Faction` (`idFaction`);

--
-- Contraintes pour la table `Planete`
--
ALTER TABLE `Planete`
  ADD CONSTRAINT `Planete_ibfk_1` FOREIGN KEY (`idAstre`) REFERENCES `Astre` (`idAstre`);

--
-- Contraintes pour la table `Satellite`
--
ALTER TABLE `Satellite`
  ADD CONSTRAINT `Satellite_ibfk_2` FOREIGN KEY (`idPlanete`) REFERENCES `Planete` (`idPlanete`);

--
-- Contraintes pour la table `SystemStelaire`
--
ALTER TABLE `SystemStelaire`
  ADD CONSTRAINT `SystemStelaire_ibfk_1` FOREIGN KEY (`gouverneur`) REFERENCES `Faction` (`idFaction`);

--
-- Contraintes pour la table `Unite`
--
ALTER TABLE `Unite`
  ADD CONSTRAINT `Unite_ibfk_1` FOREIGN KEY (`idArme`) REFERENCES `Arme` (`idArme`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

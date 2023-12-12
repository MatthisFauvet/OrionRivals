-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 12 déc. 2023 à 13:06
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
  `nomAstre` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `masseAstre` float NOT NULL,
  `descriptionAstre` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `libre` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `Astre`
--

INSERT INTO `Astre` (`idAstre`, `idSystem`, `nomAstre`, `masseAstre`, `descriptionAstre`, `libre`) VALUES
(1, 1, 'Akpia', 1.19345, 'Les étoiles oranges émettent moins de radiations que le Soleil de sorte que leurs planètes de type M ont tendance à avoir des atmosphères plus mince et les humains ont besoin de moins de protection.', 1),
(2, 1, 'Aladfar', 0.39782, 'Les étoiles rouges peuvent être des supergéants ou des nains. Ceux-ci brulent plus lentement que d\'autres étoiles. Les géantes rouges ont souvent désintégré leurs planètes intérieurs', 1),
(3, 1, 'Lotose LPM-99', 17.111, 'Ces planètes sont petites, rocheuses et ont tous les ingrédients pour que la vie se produisent sur elles. L\'atmoshpère, la température et la gravité sont optimales et offrent, pour la plus part, une vie animal, végétal et même intéligente.', 1),
(4, 1, 'Eabudria L.494 II', 5.9265, 'Des planètes très sèches qui sont parfois habitables par les humains mais à l\'aide d\'approvisionnement en eau ou de la technologie pour changer l\'atmosphère. Ce sont des mondes désertiques et s\'ils ont des formes de vie, ils ne sont généralement pas très souhaitables. Ils sont optimaux pour la terraformation.', 1);

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
  `luminosite` float NOT NULL,
  `vivante` tinyint(1) NOT NULL,
  `ageEtoile` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `Etoile`
--

INSERT INTO `Etoile` (`idEtoile`, `idAstre`, `luminosite`, `vivante`, `ageEtoile`) VALUES
(1, 1, 0.3827, 1, 6),
(2, 2, 0.003827, 0, 5);

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
(1, 'Windaos', 0, 'Le pouvoir se fait par le Savoir');

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
(4, 1);

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
  `idAstre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `GestionType`
--

INSERT INTO `GestionType` (`idGestionType`, `idType`, `idAstre`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 2, 2),
(4, 3, 2);

-- --------------------------------------------------------

--
-- Structure de la table `Membre`
--

CREATE TABLE `Membre` (
  `idMembre` int(11) NOT NULL,
  `idFaction` int(11) NOT NULL,
  `nomMembre` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenomMembre` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pseudoMembre` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mdpMembre` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deviseMembre` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Planete`
--

CREATE TABLE `Planete` (
  `idPlanete` int(11) NOT NULL,
  `idAstre` int(11) NOT NULL,
  `typePlanete` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `habitable` tinyint(1) NOT NULL,
  `temperature` int(11) NOT NULL,
  `mouvements` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `atmosphere` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `Planete`
--

INSERT INTO `Planete` (`idPlanete`, `idAstre`, `typePlanete`, `habitable`, `temperature`, `mouvements`, `atmosphere`) VALUES
(1, 3, 'Class M', 1, -2, 'Cycle de 167 jours, journée de 23h00 (11h30 de jour)', 'Mince. Composition : 72% N2 - 24% de O2 - 4% NH3. Hydrosphère de 20%'),
(2, 4, 'Class H', 1, -38, 'Cycle de 337 jours, journée de 14h00 (7H00 de jour)', 'Épaisse. Composition : 30% F2 - 20% de SO2 - 6% CO2 - 44% de CH4. Hydrosphère de 3%');

-- --------------------------------------------------------

--
-- Structure de la table `PlaneteRessources`
--

CREATE TABLE `PlaneteRessources` (
  `idPlanete` int(11) DEFAULT NULL,
  `idResssource` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `PlaneteRessources`
--

INSERT INTO `PlaneteRessources` (`idPlanete`, `idResssource`) VALUES
(1, 2),
(1, 7),
(1, 3),
(1, 4),
(2, 14);

-- --------------------------------------------------------

--
-- Structure de la table `Ressource`
--

CREATE TABLE `Ressource` (
  `idRessource` int(11) NOT NULL,
  `nomRessource` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(10, 'Platine', NULL),
(11, 'Charbon', NULL),
(12, 'Cristaux d\'énergie', NULL),
(13, 'Iridium', NULL),
(14, 'Plutonium', NULL),
(15, 'Hélium', NULL),
(16, 'Silicium', NULL),
(17, 'Hydrogène', NULL),
(18, 'Or', NULL),
(19, 'Cuivre', NULL);

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
(2, 2, 'Dunrynx IX', 'Rocky Planetoid');

-- --------------------------------------------------------

--
-- Structure de la table `SystemStelaire`
--

CREATE TABLE `SystemStelaire` (
  `idSystem` int(11) NOT NULL,
  `gouverneur` int(11) NOT NULL,
  `nomSystem` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `libre` tinyint(1) DEFAULT NULL,
  `coordX` int(11) NOT NULL,
  `coordY` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `SystemStelaire`
--

INSERT INTO `SystemStelaire` (`idSystem`, `gouverneur`, `nomSystem`, `libre`, `coordX`, `coordY`) VALUES
(1, 1, 'Aladfar', 1, 9, 'G');

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
(3, 'M', 'Rouge');

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
  ADD KEY `idAstre` (`idAstre`),
  ADD KEY `idType` (`idType`);

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
  MODIFY `idAstre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `Batiment`
--
ALTER TABLE `Batiment`
  MODIFY `idBatiment` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Espece`
--
ALTER TABLE `Espece`
  MODIFY `idEspece` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `Etoile`
--
ALTER TABLE `Etoile`
  MODIFY `idEtoile` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `Faction`
--
ALTER TABLE `Faction`
  MODIFY `idFaction` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `GestionPossession`
--
ALTER TABLE `GestionPossession`
  MODIFY `idGestionPossession` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `GestionTroupe`
--
ALTER TABLE `GestionTroupe`
  MODIFY `idGestionTroupe` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `GestionType`
--
ALTER TABLE `GestionType`
  MODIFY `idGestionType` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `Membre`
--
ALTER TABLE `Membre`
  MODIFY `idMembre` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Planete`
--
ALTER TABLE `Planete`
  MODIFY `idPlanete` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `Ressource`
--
ALTER TABLE `Ressource`
  MODIFY `idRessource` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `Satellite`
--
ALTER TABLE `Satellite`
  MODIFY `idSatellite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `SystemStelaire`
--
ALTER TABLE `SystemStelaire`
  MODIFY `idSystem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `Type`
--
ALTER TABLE `Type`
  MODIFY `idType` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  ADD CONSTRAINT `GestionType_ibfk_1` FOREIGN KEY (`idAstre`) REFERENCES `Astre` (`idAstre`),
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

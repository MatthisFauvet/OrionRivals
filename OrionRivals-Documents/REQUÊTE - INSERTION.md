___
# ASTRE : 

## Système Stellaire
```SQL
INSERT INTO SystemStelaire(gouverneur, nomSystem, libre, coordX, coordY) VALUES
(
	1,
	'Carinae',
	1,
	'4',
	'C'
)
```
## Astre 
```SQL
INSERT INTO Astre(idSystem,typeAstre, nomAstre, masseAstre, descriptionAstre, libre) VALUES
(
	2,
	"Planete",
	'Nord de Wadda',
	"7,756.10^24 kg",
	"Ces planètes sont petites, rocheuses et ont tous les ingrédients pour que la vie se produisent sur elles...",
	TRUE
),
(
	2,
	"Planete",
	'Hedion Ouest',
	"2,389.10^24 kg",
	"Ce sont des planètes dont la température, ...",
	TRUE
)
```
## Étoile
```SQL
INSERT INTO Etoile(idAstre, luminosite, vivante) VALUES 
(
	2, #idAstre
	0.003827, #lumière
	FALSE, #vie
	5, #Age étoile
)
```

## Type
```SQL
INSERT INTO `Type`(lettreType, valeurType) VALUES
(
	'A',
	'Blanc'
),
(
	'IV',
	'Subgiant'
)
```

## GestionType
```SQL
INSERT INTO GestionType(idEtoile, idType) VALUES
(
	3,
	4
)
```

## Planètes  
```SQL
INSERT INTO Planete(idAstre, typePlanete, habitable, temperature, mouvements, atmosphere)
VALUES
(
	3,
	'Class M',
	1,
	-2.15,
	'Cycle de 167 jours, journée de 23h00 (11h30 de jour)',
	"Mince. Composition : 72% N2 - 24% de O2 - 4% NH3. Hydrosphère de 20%"
)
```
## PlaneteRessources
```sql
INSERT INTO PlaneteRessources(idPlanete, idRessource) VALUES
(
	3,
	14
),
(
	2,
	15
)
```
## Satellite 
```SQL
INSERT INTO Satellite(idPlanete, nomSatellite, typeSatellite) VALUES
(
	2,
	'Sumaddon occidental',
	'Rocky Planetoid'
),
(
	2,
	'Dunrynx IX',
	'Rocky Planetoid'
)
```
## Espèce
```SQL
INSERT INTO Espece(idArme,nomEspece,poidsEspece,degatEspece,millieuEspece,mouvementEspece,hostileEspece) VALUES (
	NULL,
	'Reptiles',
	70,
	6,
	'Forêt Tropicales, Désert',
	10,
	false
)=
```
## Gestion Espèce : 
```SQL
INSERT INTO GestionHabitation (idEspece, idPlanete) VALUES
(
	1,
	1
)
```
## Arme
```SQL
INSERT INTO Arme(nomArme, typeArme, longueurArme, degatArme, effetArme, descriptionArme) VALUES
(
	'BRISELANCE',
	'Lance',
	200,
	4,
	NULL,
	"Arme préféreé des Hommes-Lézard, elle se manie très facilement et à une porter imprésionnante. Cependant, sa fragilité et un grand défaut."
)
```


## Information 
```SQL
INSERT INTO Information(idPlanete, infoPopulation, infoTechnologie, infoGouvernement, infoAstroport) VALUES

(
	19,
	"Des dizaines de milliers (colonies auto-entretenues ou principales installations d'approvisionnement).",
	"Supérieur (haut âge stellaire). Capacité totale de conversion d'énergie, transport interstellaire rapide, intelligence artificiel avancée et contrôle totale de la nanotechnologie et de la biotechnique.",
	"Dirigeant charismatique. Agence dirigées par un seul dirigeant qui jouit de la confiance écrasante des citoyens. Chef de la Révolution, messi, empereur.",
	"Astroport de qualité de routine avec carburant non raffiné et chantier de réparation."
);
```

___

# Guildes 

## Factions 
```SQL
INSERT INTO Faction(nomFaction, jouable, deviseFaction) VALUES
(
	"Avalon",
	0,
	"Là ou l'histoire à commencé, où celle-ci s'écrit, et où celle-la se concluera"
)
```
## Membres  : 
```SQL
INSERT INTO Membre(idFaction, nomMembre, prenomMembre, pseudoMembre, mdpMembre, deviseMembre) VALUES 
(
	1,
	'Fauvet',
	'Matthis',
	'Gauthier de Pendragon',
	'94AmhmE8',
	"Personne par la guerre, ne devient grand."
)
```
## Ressources : 
```SQL
INSERT INTO GestionPossession(idFaction, idRessource, Qtte) VALUES
(
	1,
	1,
	1000000
)
```

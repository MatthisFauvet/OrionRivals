
# Requête d'Insertion :

## Système Stellaire
#SystèmeStellaire


## Astre 
#Astre 
#### Création astre : 
```SQL
INSERT INTO Astre(idSystem, nomAstre, masseAstre, descriptionAstre, libre) VALUES
(
	1,
	'Eabudria L.494 II',
	5.9265,
	"",
	TRUE
)
```

## Étoile
#### Création étoile
```SQL
INSERT INTO Etoile(idAstre, luminosite, vivante) VALUES 
(
	2, #idAstre
	0.003827, #lumière
	FALSE, #vie
	5, #Age étoile
)
```

## GestionType
#### Création GestionType
```SQL
INSERT INTO GestionType(idAstre, idType) VALUES 
(
	1, #idAstre
	2, idType
)
```

## Planètes
#Planète 
#### Création Planète
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
#### Insérer valeurs

```sql
INSERT INTO PlaneteRessources(idPlanete, idResssource) VALUES
(
	2,
	14
),
(
	2,
	15
)
```

## Satellite
#### INSERT INTO :
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
#### Insérer les valeurs 

```SQL
INSERT INTO Espece(idArme,nomEspece,poidsEspece,degatEspece,millieuEspece,mouvementEspece,hostileEspece) VALUES (
	NULL,
	'Reptiles',
	70,
	6,
	'Forêt Tropicales, Désert',
	10,
	false
),
(
	NULL,
	'Insectes géants',
	2,
	2,
	'Foret, Plaine, Désert',
	4,
	false
),
(
	NULL,
	'Grands Amphibiens',
	1,
	1,
	'Tous milieux aquatique',
	2,
	false
),
(
	NULL,
	'Végétations',
	1,
	1,
	'Tout sauf environnement Aride',
	0,
	false
)
```

## Gestion Espèce : 
#### INSERT INTO

```SQL
INSERT INTO GestionHabitation (idEspece, idPlanete) VALUES
(
	1,
	1
),
(
	2,
	1
),
(
	3,
	1
),
(
	4,
	1
)
```

## Arme
##### INSERT INTO

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

# Requêtes finales (pour tester la base) :

### Obtentions : 
#### Obtenir #Ressources  de #Planète via nom #Astre

```sql
SELECT nomRessource FROM Ressource r 
JOIN PlaneteRessources pr ON r.idRessource = pr.idResssource 
JOIN Planete p ON pr.idPlanete = p.idPlanete 
JOIN Astre a ON p.idAstre = a.idAstre 
WHERE a.nomAstre="Lotose LPM-99"
```
#### Obtenir #Astre par nom #SystèmeStellaire

```SQL
SELECT nomAstre FROM SystemStelaire ss 
JOIN Astre a ON ss.idSystem = a.idSystem 
WHERE ss.nomSystem = 'Aladfar';
```
#### Obtenir #Espèces par nom #Astre 

```SQL
SELECT nomEspece FROM Planete p
JOIN Astre a ON p.idAstre = a.idAstre
JOIN GestionHabitation gh ON p.idPlanete = gh.idPlanete
JOIN Espece e ON gh.idEspece = e.idEspece
WHERE a.nomAstre = 'Lotose LPM-99'
```
#### Obtenir #Satellite par nom #Astre 

```SQL
SELECT nomSatellite FROM Satellite s
JOIN Planete p ON s.idPlanete = p.idPlanete
JOIN Astre a ON p.idAstre = a.idAstre
WHERE a.nomAstre = "Eabudria L.494 II"
```
#### Obtenir id et nom de #Astre et #Planète 

```SQL
SELECT p.idAstre, p.idPlanete, a.nomAstre FROM Planete p
JOIN Astre a ON p.idAstre = a.idAstre
```

# Autres requêtes :

#### Reset `AUTO INCREMENT`  in SQL : 

```SQL
ALTER TABLE tablename AUTO_INCREMENT = 1
```
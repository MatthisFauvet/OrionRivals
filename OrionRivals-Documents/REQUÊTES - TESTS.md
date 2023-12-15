## Obtentions : 

#### GET #RessourcesPlanète BY NOM #Astre

```SQL
SELECT nomRessource FROM Ressource r
JOIN PlaneteRessources pr ON r.idRessource = pr.idRessource
JOIN Planete p ON pr.idPlanete = p.idPlanete
JOIN Astre a ON p.idAstre = a.idAstre
WHERE a.nomAstre="Lotose LPM-99"
```
#### GET NOM #Astre BY NOM #SystèmeStellaire

```SQL
SELECT nomAstre FROM SystemStelaire ss 
JOIN Astre a ON ss.idSystem = a.idSystem 
WHERE ss.nomSystem = 'Aladfar';
```
#### GET NOM #Astre, NOM #Espèces BY NOM #Astre 

```SQL
SELECT a.nomAstre, e.nomEspece FROM Planete p
JOIN Astre a ON p.idAstre = a.idAstre
JOIN GestionHabitation gh ON p.idPlanete = gh.idPlanete
JOIN Espece e ON gh.idEspece = e.idEspece
WHERE a.nomAstre = 'Lotose LPM-99'
```
#### GET NOM #Astre, NOM #Espèces BY ID #Planète 

```SQL
SELECT nomEspece FROM Planete p
JOIN Astre a ON p.idAstre = a.idAstre
JOIN GestionHabitation gh ON p.idPlanete = gh.idPlanete
JOIN Espece e ON gh.idEspece = e.idEspece
WHERE p.idPlanete = 1;
```
#### GET ALL NOM #Astre, NOM #Espèces LINKED

```SQL
SELECT a.nomAstre, e.nomEspece FROM Planete p
JOIN Astre a ON p.idAstre = a.idAstre
JOIN GestionHabitation gh ON p.idPlanete = gh.idPlanete
JOIN Espece e ON gh.idEspece = e.idEspece;
```
#### GET NOM #Astre, NOM #Satellite BY NOM #Astre 

```SQL
SELECT nomSatellite FROM Satellite s
JOIN Planete p ON s.idPlanete = p.idPlanete
JOIN Astre a ON p.idAstre = a.idAstre
WHERE a.nomAstre = "Eabudria L.494 II"
```
#### GET NOM #Astre, NOM #Satellite BY ID #Planète 

```SQL
SELECT a.nomAstre, s.nomSatellite FROM Satellite s
JOIN Planete p ON s.idPlanete = p.idPlanete
JOIN Astre a ON p.idAstre = a.idAstr
WHERE p.idPlanete = 3;
```
#### GET ID, NOM #Astre AND ID #Planète 

```SQL
SELECT p.idAstre, p.idPlanete, a.nomAstre FROM Planete p
JOIN Astre a ON p.idAstre = a.idAstre
```
#### GET NOM #Ressource AND NOM #Astre LINKED  

```SQL
SELECT r.nomRessource, a.nomAstre FROM PlaneteRessources pr
JOIN Planete p on p.idPlanete = pr.idPlanete
JOIN Astre a ON p.idAstre = a.idAstre
JOIN Ressource r ON r.idRessource = pr.idRessource
```
#### GET NOM #Astre AND VALUES #Type 

```SQL
SELECT nomAstre, lettreType, valeurType FROM `Type` t
JOIN GestionType gt ON t.idType = gt.idType
JOIN Etoile e ON gt.idEtoile = e.idEtoile
JOIN Astre a ON e.idAstre = a.idAstre;
```
#### GET ID & NOM #Astre, ID & TYPE #Planète 

```SQL
SELECT p.idPlanete, a.idAstre, a.nomAstre, p.typePlanete FROM Planete p
JOIN Astre a ON p.idAstre = a.idAstre;
```
#### GET NOM #Astre , NOM & TYPE #Satellite  

```SQL
SELECT a.nomAstre, s.nomSatellite, s.typeSatellite FROM Satellite s
JOIN Planete p ON s.idPlanete = p.idPlanete
JOIN Astre a ON p.idAstre = a.idAstre;
```

#### GET ID, NOM #Astre BY ID #SystèmeStellaire 
```SQL
SELECT idAstre, nomAstre FROM Astre a
WHERE a.idSystem = 3
```



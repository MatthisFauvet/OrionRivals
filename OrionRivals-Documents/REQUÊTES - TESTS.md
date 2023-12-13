## Obtentions : 

#### GET #RessourcesPlanète par NOM #Astre

```sql
SELECT nomRessource FROM Ressource r
JOIN PlaneteRessources pr ON r.idRessource = pr.idRessource
JOIN Planete p ON pr.idPlanete = p.idPlanete
JOIN Astre a ON p.idAstre = a.idAstre
WHERE a.nomAstre="Lotose LPM-99"
```
#### GET NOM #Astre par NOM #SystèmeStellaire

```SQL
SELECT nomAstre FROM SystemStelaire ss 
JOIN Astre a ON ss.idSystem = a.idSystem 
WHERE ss.nomSystem = 'Aladfar';
```
#### GET #Espèces par NOM #Astre OU par ID #Planète 

```SQL
SELECT nomEspece FROM Planete p
JOIN Astre a ON p.idAstre = a.idAstre
JOIN GestionHabitation gh ON p.idPlanete = gh.idPlanete
JOIN Espece e ON gh.idEspece = e.idEspece
WHERE a.nomAstre = 'Lotose LPM-99'

SELECT nomEspece FROM Planete p
JOIN Astre a ON p.idAstre = a.idAstre
JOIN GestionHabitation gh ON p.idPlanete = gh.idPlanete
JOIN Espece e ON gh.idEspece = e.idEspece
WHERE p.idPlanete = 1;
```
#### GET #Satellite par NOM #Astre ou ID #Planète 

```SQL
SELECT nomSatellite FROM Satellite s
JOIN Planete p ON s.idPlanete = p.idPlanete
JOIN Astre a ON p.idAstre = a.idAstre
WHERE a.nomAstre = "Eabudria L.494 II"

SELECT nomSatellite FROM Satellite s
JOIN Planete p ON s.idPlanete = p.idPlanete
JOIN Astre a ON p.idAstre = a.idAstre
WHERE p.idPlanete = 3;
```
#### GET ID et NOM de #Astre et #Planète 

```SQL
SELECT p.idAstre, p.idPlanete, a.nomAstre FROM Planete p
JOIN Astre a ON p.idAstre = a.idAstre
```
#### GET NOM #Ressource et  NOM de #Astre LINKED  

```SQL
SELECT r.nomRessource, a.nomAstre FROM PlaneteRessources pr
JOIN Planete p on p.idPlanete = pr.idPlanete
JOIN Astre a ON p.idAstre = a.idAstre
JOIN Ressource r ON r.idRessource = pr.idRessource
```


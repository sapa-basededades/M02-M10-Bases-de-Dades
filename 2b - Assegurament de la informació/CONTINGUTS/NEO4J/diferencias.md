---
title: Semblances i diferències entre SQL i Cypher
layout: default
nav_order: 2
---
# Semblances i diferències entre SQL i Cypher
## Similituts
SQL i Cypher comparteixen algunes semblances, com en l'utilització de clàusules com ```WHERE``` i ```ORDER BY```.
En ambdós llenguatges s'utilitzen aquestes clàusules de la mateixa forma, per filtrar i per ordenar respectivament.

## Diferències
### Ordre de les clàusules
Una de les diferències clau és l'ordre de les consultes. En Cypher, totes les consultes acaben amb la clàusula ```RETURN``` que especifica el que l'usuari desitja obtenir com a resultat, mentres que a SQL comences seleccionat allò que vols veure amb un ```SELECT```. Per mostrar això, considerem les següents dues consultes que busquen jugadors amb una altura major a 1.91, la primera amb SQL i la segona amb Cypher:
```
SELECT name
FROM player
WHERE height > 1.91;
```
```
MATCH (player:PLAYER)
WHERE player.height > 1.91
RETURN player.name
```
### Coincidència d'strings
A SQL s'utilitza ```LIKE``` per buscar coincidències i el símbol '%' com a comodí a la clàusula.
En canvi, a Cypher es fa amb ```STARTS WITH | ENDS WITH | CONTAINS```. Es pot veure en aquest exemple:
```
SELECT name
FROM player
WHERE name LIKE 'L%'|'%L'|'%L%';
```
```
MATCH (player:PLAYER)
WHERE player.name STARTS WITH | ENDS WITH | CONTAINS "L"
RETURN player.name;
```
### Clàusules més breus
Les consultes en Cypher solen ser més breus que les seves equivalents en SQL. Per exemple, considera les següents dues consultes que busquen els jugadors que formen part de l'equip 'LA Lakers':
```
SELECT player.name
FROM player pl
INNER JOIN plays_for plfo ON plfo.playerid = pl.playerid
INNER JOIN team te ON te.teamid = plfo.teamid
WHERE te.name = 'LA Lakers'
```
A SQL aquesta consulta implica accedir a diferents taules degut a la relació N:M que hi ha entre els jugadors i els equips. En canvi a Cypher no succeeix.
```
MATCH(player:PLAYER)-[:PLAYS_FOR]->(team:TEAM {name: 'LA Lakers'})
RETURN player.name
```
### Crear/modificar/esborrar dades 
#### Crear dades
A l'hora de crear taules a SQL se sol fer amb sentències CREATE TABLE, INSERT INTO o ALTER TABLE. A Cypher es fan amb CREATE, MERGE, SET. 
Al crear taules amb SQL s'ha d'especificar el nom de totes les columnes, el tipus de contingut de la columna, els constraints i les claus primàries i forana.
```
CREATE TABLE player (
    playerid SERIAL PRIMARY KEY,
    name VARCHAR(15) UNIQUE,
    last_name VARCHAR(15) UNIQUE
);
```
En canvi, a Cypher com s'utilitzen nodes i no taules i relacions, la creació és diferent:
```
CREATE (lebron:PLAYER {name: "LeBron", last_name:"James"})
```
No s'ha d'especificar el tipus (VARCHAR), ja que els valors seran inferits de les propietats del node.
Per afegir una relació, cal utilitzar un signe `<-` o `->`.

#### Modificar/esborrar dades
Per modificar s'utilitza ```UPDATE``` a SQL i ```SET``` a Cypher. S'hauria de fer una clàusula WHERE per indicar quina columna o etiqueta, respectivament, volem modificar.

Per eliminar en el cas de Cypher s'ha d'utilitzar ```MATCH``` per seleccionar que vols eliminar i acabar la sentència amb ```DELETE variable```. En canvi a SQL és igual que modificar però amb ```DELETE```.
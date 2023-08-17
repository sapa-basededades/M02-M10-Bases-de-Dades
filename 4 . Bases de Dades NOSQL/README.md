# Bases de Dades Documentals 

## Introducció

Una base de dades documental està constituïda per un conjunt de programes que emmagatzemen, recuperen i gestionen dades de documents o dades d'alguna manera estructurats.

Aquest tipus de bases de dades constitueixen una de les principals subcategories dins de les anomenades bases de dades NoSQL. Els sistemes NoSQL proveeixen un sistema d'emmagatzematge molt més flexible i concurrent, permeten manipular grans quantitats d'informació de manera molt més 
ràpida que les bases de dades relacionals.

![Tabla](https://github.com/fbarraga/Python/blob/master/master/assets/bdnosql2.png?raw=true)

## Bases de dades NOSQL: MongoDB

MongoDB (de l'anglès Humongous, "enorme") és un sistema de base de dades multiplataforma, NoSQL, orientat a documents i de codi obert.

Cada entrada o registre pot tenir un esquema de dades diferent, amb atributs o "columnes" que no tenen per què repetir-se d'un registre a un altre.

MongoDB destaca per la seva velocitat i el seu ric però senzill sistema de consulta dels continguts de la base de dades. Disposa d’un balanç perfecte entre rendiment i funcionalitat.

Cada registre o conjunt de dades s'anomena **document**.Els documents es poden agrupar en **col·leccions**, les quals es podria dir que són l'equivalent a les taules en una base de dades 
relacional (només que les col·leccions poden emmagatzemar documents amb molt diferents formats, en lloc d'estar sotmesos a un esquema fix).

Es poden crear *índexs* per a alguns atributs dels documents, de manera que MongoDB mantindrà una estructura interna eficient per a l'accés a la informació pels continguts d'aquests atributs.

Els diferents documents s'emmagatzemen en format BSON, o Binary JSON, que és una versió modificada de JSON que permet cerques ràpides de dades.

![Tabla](https://github.com/fbarraga/Python/blob/master/master/assets/mongodb.png?raw=true)

Podeu consultar més informació sobre MongoDB en aquest [link](https://www.educba.com/what-is-mongodb/)


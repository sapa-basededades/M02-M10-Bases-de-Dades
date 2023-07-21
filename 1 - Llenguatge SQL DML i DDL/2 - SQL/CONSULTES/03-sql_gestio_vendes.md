# 1.3 Base de dades Gestió de VendesEmpleats

- [1.3 Base de dades Gestió de VendesEmpleats](#13-base-de-dades-gestió-de-vendesempleats)
  - [1.3.1 Model relacional](#131-model-relacional)
  - [1.3.2 Scripts de creació de la base de dades](#132-scripts-de-creació-de-la-base-de-dades)
  - [1.3.3 Consultes sobre una taula](#133-consultes-sobre-una-taula)
  - [1.3.4 Consultes multitaula (INNER JOIN)](#134-consultes-multitaula-inner-join)
  - [1.3.5 Consultes multitaula (OUTER JOIN)](#135-consultes-multitaula-outer-join)
  - [1.3.6 Consultes resum](#136-consultes-resum)
  - [1.3.7 Subconsultes](#137-subconsultes)
    - [1.3.7.1 Amb operadors bàsics de comparació](#1371-amb-operadors-bàsics-de-comparació)
    - [1.3.7.2 Subconsultes amb ALL i ANY](#1372-subconsultes-amb-all-i-any)
    - [1.3.7.3 Subconsultes amb IN i NO IN](#1373-subconsultes-amb-in-i-no-in)
    - [1.3.7.4 Subconsultes amb EXISTS y NOT EXISTS](#1374-subconsultes-amb-exists-y-not-exists)

## 1.3.1 Model relacional

![Tabla](https://github.com/sapa-basededades/M02-M10-Bases-de-Dades/blob/main/master/assets/3-MR_gestiovendes.png?raw=true)

## 1.3.2 Scripts de creació de la base de dades

Crea la base de dades ventes descarregant els scripts des de Github.

git clone https://github.com/fbarraga/Postgres-DB

## 1.3.3 Consultes sobre una taula

1. Retorna un llistat amb totes les comandes que s'han realitzat. Les comandes han d' estar ordenades per la data de realització, mostrant en primer lloc les comandes més recents.
2. Retorna totes les dades de les dues comandes de més valor.
3. Retorna un llistat amb els identificadors dels clients que han realitzat alguna comanda. Tingui en compte que no ha de mostrar identificadors que estiguin repetits.
4. Retorna un llistat de totes les comandes que es van realitzar durant l'any 2017, la quantitat total de les quals sigui superior a 500€.
5. Retorna un llistat amb el nom i els cognoms dels comercials que tenen una comissió entre 0.05 i 0.11.
6. Retorna el valor de la comissió de major valor que hi ha a la taula comercial.
7. Retorna l'identificador, nom i primer cognom d'aquells clients el segon cognom dels quals **no** és NULL. El llistat haurà d' estar ordenat alfabèticament per cognoms i nom.
8. Retorna un llistat dels noms dels clients que comencen per A i acaben per n i també els noms que comencen per P. El llistat haurà d' estar ordenat alfabèticament.
9. Retorna un llistat dels noms dels clients que **no** comencen per A. El llistat haurà d' estar ordenat alfabèticament.
10. Retorna un llistat amb els noms dels comercials que acaben en o. Tingui en compte que s' hauran d' eliminar els noms repetits.

## 1.3.4 Consultes multitaula (INNER JOIN)

1. Retorna un llistat amb l'identificador, nom i els cognoms de tots els clients que han realitzat alguna comanda. El llistat ha d' estar ordenat alfabèticament i s' han d' eliminar els elements repetits.
2. Retorna un llistat que mostri totes les comandes que ha realitzat cada client. El resultat ha de mostrar totes les dades de les comandes i del client. El llistat ha de mostrar les dades dels clients ordenats alfabèticament.
3. Retorna un llistat que mostri totes les comandes en què ha participat un comercial. El resultat ha de mostrar totes les dades de les comandes i dels comercials. El llistat ha de mostrar les dades dels comercials ordenats alfabèticament.
4. Retorna un llistat que mostri tots els clients, amb totes les comandes que han realitzat i amb les dades dels comercials associades a cada comanda.
5. Retorna un llistat de tots els clients que van realitzar una comanda durant l'any 2017, la quantitat de la qual estigui entre 300 € i 1000 €.
6. Retorna el nom i els cognoms de tots els comercials que ha participat en alguna comanda realitzada per María Santana Moreno.
7. Retorna el nom de tots els clients que han realitzat alguna comanda amb el comercial Daniel Sáez Vega.

## 1.3.5 Consultes multitaula (OUTER JOIN)

Resol totes les consultes utilitzant les clàusules LEFT JOIN i RIGHT JOIN.

1. Retorna un llistat amb **tots els clients** juntament amb les dades de les comandes que han realitzat. Aquest llistat també ha d' incloure els clients que no han realitzat cap comanda. El llistat ha d' estar ordenat alfabèticament pel primer cognom, segon cognom i nom dels clients.
2. Retorna un llistat amb **tots els comercials** juntament amb les dades de les comandes que han realitzat. Aquest llistat també ha d' incloure els comercials que no han realitzat cap comanda. El llistat ha d' estar ordenat alfabèticament pel primer cognom, segon cognom i nom dels comercials.
3. Retorna un llistat que només mostri els clients que no han realitzat cap comanda.
4. Retorna un llistat que només mostri els comercials que no han realitzat cap comanda.
5. Retorna un llistat amb els clients que no han realitzat cap comanda i dels comercials que no han participat en cap comanda. Ordeni el llistat alfabèticament pels cognoms i el nom. En aquest cas haurà de diferenciar d'alguna manera els clients i els comercials.
6. Es podrien realitzar les consultes anteriors amb NATURAL LEFT JOIN o NATURAL RIGHT JOIN? Justifiqui la seva resposta.

## 1.3.6 Consultes resum

1. Calcula la quantitat total que sumen totes les comandes que apareixen a la taula comanda.
2. Calcula la quantitat mitjana de totes les comandes que apareixen a la taula comanda.
3. Calcula el nombre total de comercials diferents que apareixen a la taula.
4. Calcula el nombre total de clients que apareixen a la taula client.
5. Calcula quina és la major quantitat que apareix a la taula.
6. Calcula quina és la menor quantitat que apareix a la taula.
7. Calcula quin és el valor màxim de categoria per a cadascuna de les ciutats que apareix a la taula client.
8. Calcula quin és el màxim valor de les comandes realitzades durant el mateix dia per a cadascun dels clients. És a dir, el mateix client pot haver realitzat diverses comandes de diferents quantitats el mateix dia. Es demana que es calculi quina és la comanda de màxim valor per a cadascun dels dies en què un client ha realitzat una comanda. Mostra l' identificador del client, nom, cognoms, la data i el valor de la quantitat.
9. Calcula quin és el màxim valor de les comandes realitzades durant el mateix dia per a cadascun dels clients, tenint en compte que només volem mostrar aquelles comandes que superin la quantitat de 2000 €.
10. Calcula el màxim valor de les comandes realitzades per a cadascun dels comercials durant la data 2016-08-17. Mostra l' identificador del comercial, nom, cognoms i total.
11. Retorna un llistat amb l' identificador de client, nom i cognoms i el nombre total de comandes que ha realitzat cadascun de clients. Tingui en compte que poden existir clients que no han realitzat cap comanda. Aquests clients també han d' aparèixer en el llistat indicant que el nombre de comandes realitzades és 0.
12. Retorna un llistat amb l'identificador de client, nom i cognoms i el nombre total de comandes que ha realitzat cadascuna de clients **durant l'any 2017**.
13. Retorna un llistat que mostri l' identificador de client, nom, primer cognom i el valor de la màxima quantitat de la comanda realitzada per cadascun dels clients. El resultat ha de mostrar aquells clients que no han realitzat cap comanda indicant que la màxima quantitat de les seves comandes realitzades és 0. Pot fer ús de la funció [IFNULL](https://dev.mysql.com/doc/refman/8.0/en/control-flow-functions.html#function_ifnull).
14. Retorna quina ha estat la comanda de màxim valor que s'ha realitzat cada any.
15. Retorna el nombre total de comandes que s' han realitzat cada any.

## 1.3.7 Subconsultes

### 1.3.7.1 Amb operadors bàsics de comparació

1. Retorna un llistat amb totes les comandes que ha realitzat Adela Salas Díaz. (Sense utilitzar INNER JOIN).
2. Retorna el nombre de comandes en què ha participat el comercial Daniel Sáez Vega. (Sense utilitzar INNER JOIN)
3. Retorna les dades del client que va realitzar la comanda més car l'any 2019. (Sense utilitzar INNER JOIN)
4. Retorna la data i la quantitat de la comanda de menor valor realitzat pel client Pepe Ruiz Santana.
5. Retorna un llistat amb les dades dels clients i les comandes, de tots els clients que han realitzat una comanda durant l'any 2017 amb un valor major o igual al valor mitjà de les comandes realitzades durant aquest mateix any.

### 1.3.7.2 Subconsultes amb ALL i ANY

1. Retorna la comanda més car que hi ha a la taula demanat si fer ús de MAX, ORDER BY ni LIMIT.
2. Retorna un llistat dels clients que no han fet cap comanda. (Utilitzant ANY o ALL).
3. Retorna un llistat dels comercials que no han realitzat cap comanda. (Utilitzant ANY o ALL).

### 1.3.7.3 Subconsultes amb IN i NO IN

1. Retorna un llistat dels clients que no han fet cap comanda. (Utilitzant IN o NOT IN).
2. Retorna un llistat dels comercials que no han realitzat cap comanda. (Utilitzant IN o NOT IN).

### 1.3.7.4 Subconsultes amb EXISTS y NOT EXISTS

1. Retorna un llistat dels clients que no han fet cap comanda. (Utilitzant EXISTS o NOT EXISTS).
2. Retorna un llistat dels comercials que no han realitzat cap comanda. (Utilitzant EXISTS o NOT EXISTS).

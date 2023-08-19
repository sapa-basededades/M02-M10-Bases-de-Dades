# 1.5 Base de dades Universitat

- [1.5 Base de dades Universitat](#15-base-de-dades-universitat)
  - [1.5.1 Model relacional](#151-model-relacional)
  - [1.5.2 Scripts de creació de la base de dades](#152-scripts-de-creació-de-la-base-de-dades)
  - [1.5.4 Consultes sobre una taula](#154-consultes-sobre-una-taula)
  - [1.5.5 Consultes multitaula (INNER JOIN)](#155-consultes-multitaula-inner-join)
  - [1.5.6 Consultes multitaula (OUTER JOIN)](#156-consultes-multitaula-outer-join)
  - [1.5.7 Consultes resum](#157-consultes-resum)
  - [1.5.8 Subconsultes](#158-subconsultes)

## 1.5.1 Model relacional

![Tabla](https://github.com/sapa-basededades/M02-M10-Bases-de-Dades/blob/main/1%20-%20Llenguatge%20SQL%20DML%20i%20DDL/DATABASES/POSTGRESQL/05%20-%20Universitat/universitat_erm.png)

## 1.5.2 Scripts de creació de la base de dades

Crea la base de dades universitat descarregant els scripts des de Github.

[Esquemes de Base de dades](https://github.com/sapa-basededades/M02-M10-Bases-de-Dades/tree/main/1%20-%20Llenguatge%20SQL%20DML%20i%20DDL/1%20-%20DATABASES/ESQUEMES/1%20-%20POSTGRES)

## 1.5.4 Consultes sobre una taula

1. Retorna un llistat amb el primer cognom, segon cognom i el nom de tots els alumnes. El llistat haurà d' estar ordenat alfabèticament de menor a major pel primer cognom, segon cognom i nom.
2. Esbrina el nom i els dos cognoms dels alumnes que **no** han donat d' alta el seu número de telèfon a la base de dades.
3. Retorna el llistat dels alumnes que van néixer el 1999.
4. Retorna el llistat de professors que **no** han donat d'alta el seu número de telèfon a la base de dades i a més el seu nif acaba en K.
5. Retorna el llistat de les assignatures que s' imparteixen en el primer quadrimestre, en el tercer curs del grau que té l' identificador 7.

## 1.5.5 Consultes multitaula (INNER JOIN)

1. Retorna un llistat amb les dades de totes les **alumnes** que s'han matriculat alguna vegada en el Grau en Enginyeria Informàtica (Pla 2015).
2. Retorna un llistat amb totes les assignatures oferides en el Grau en Enginyeria Informàtica (Pla 2015).
3. Retorna un llistat dels professors juntament amb el nom del departament al qual estan vinculats. El llistat ha de retornar quatre columnes, primer cognom, segon cognom, nom i nom del departament. El resultat estarà ordenat alfabèticament de menor a major pels cognoms i el nom.
4. Retorna un llistat amb el nom de les assignatures, any d'inici i any de fi del curs escolar de l'alumne amb 26902806M.
5. Retorna un llistat amb el nom de tots els departaments que tenen professors que imparteixen alguna assignatura en el Grau en Enginyeria Informàtica (Pla 2015).
6. Retorna un llistat amb tots els alumnes que s'han matriculat en alguna assignatura durant el curs escolar 2018/2019.

## 1.5.6 Consultes multitaula (OUTER JOIN)

Resolgui totes les consultes utilitzant les clàusules LEFT JOIN i RIGHT JOIN.

1. Retorna un llistat amb els noms de **tots** els professors i els departaments que hi tenen vinculats. El llistat també ha de mostrar aquells professors que no tenen cap departament associat. El llistat ha de retornar quatre columnes, nom del departament, primer cognom, segon cognom i nom del professor. El resultat estarà ordenat alfabèticament de menor a major pel nom del departament, cognoms i el nom.
2. Retorna un llistat amb els professors que no estan associats a un departament.
3. Retorna un llistat amb els departaments que no tenen professors associats.
4. Retorna un llistat amb els professors que no imparteixen cap assignatura.
5. Retorna un llistat amb les assignatures que no tenen un professor assignat.
6. Retorna un llistat amb tots els departaments que tenen alguna assignatura que no s' hagi impartit en cap curs escolar. El resultat ha de mostrar el nom del departament i el nom de l' assignatura que no s' hagi impartit mai.

## 1.5.7 Consultes resum

1. Retorna el nombre total d **' alumnes** que hi ha.
2. Calcula quants alumnes van néixer el 1999.
3. Calcula quants professors hi ha a cada departament. El resultat només ha de mostrar dues columnes, una amb el nom del departament i una altra amb el nombre de professors que hi ha en aquest departament. El resultat només ha d' incloure els departaments que tenen professors associats i haurà d' estar ordenat de major a menor pel nombre de professors.
4. Retorna un llistat amb tots els departaments i el nombre de professors que hi ha en cadascun d'ells. Tingui en compte que poden existir departaments que no tenen professors associats. Aquests departaments també han d' aparèixer en el llistat.
5. Retorna un llistat amb el nom de tots els graus existents a la base de dades i el nombre d' assignatures que té cadascun. Tingui en compte que poden existir graus que no tenen assignatures associades. Aquests graus també han d' aparèixer en el llistat. El resultat haurà d' estar ordenat de major a menor pel nombre d' assignatures.
6. Retorna un llistat amb el nom de tots els graus existents a la base de dades i el nombre d' assignatures que té cadascun, dels graus que tinguin més de 40 assignatures associades.
7. Retorna un llistat que mostri el nom dels graus i la suma del nombre total de crèdits que hi ha per a cada tipus d' assignatura. El resultat ha de tenir tres columnes: nom del grau, tipus d' assignatura i la suma dels crèdits de totes les assignatures que hi ha d' aquest tipus. Ordeni el resultat de major a menor pel nombre total de crèdits.
8. Retorna un llistat que mostri quants alumnes s'han matriculat d'alguna assignatura en cadascun dels cursos escolars. El resultat haurà de mostrar dues columnes, una columna amb l' any d' inici del curs escolar i una altra amb el nombre d' alumnes matriculats.
9. Retorna un llistat amb el nombre d' assignatures que imparteix cada professor. El llistat ha de tenir en compte aquells professors que no imparteixen cap assignatura. El resultat mostrarà cinc columnes: id, nom, primer cognom, segon cognom i nombre d'assignatures. El resultat estarà ordenat de major a menor pel nombre d' assignatures.

## 1.5.8 Subconsultes

1. Retorna totes les dades de l'alumne més jove.
2. Retorna un llistat amb els professors que no estan associats a un departament.
3. Retorna un llistat amb els departaments que no tenen professors associats.
4. Retorna un llistat amb els professors que tenen un departament associat i que no imparteixen cap assignatura.
5. Retorna un llistat amb les assignatures que no tenen un professor assignat.
6. Retorna un llistat amb tots els departaments que no han impartit assignatures en cap curs escolar.

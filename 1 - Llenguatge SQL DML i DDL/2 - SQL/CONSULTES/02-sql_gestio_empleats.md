# 1.2 Base de dades Gestió Empleats

- [1.2 Base de dades Gestió Empleats](#12-base-de-dades-gestió-empleats)
  - [1.2.1 Model relacional](#121-model-relacional)
  - [1.2.2 Scripts de creació de la base de dades](#122-scripts-de-creació-de-la-base-de-dades)
  - [1.2.3 Consultes sobre una taula](#123-consultes-sobre-una-taula)
  - [1.2.4 Consultes multitaula (INNER JOIN)](#124-consultes-multitaula-inner-join)
  - [1.2.5 Consultes multitaula (OUTER JOIN)](#125-consultes-multitaula-outer-join)
  - [1.2.6 Consultes resum](#126-consultes-resum)
  - [1.2.7 Subconsultes](#127-subconsultes)
    - [1.2.7.1 Amb operadors bàsics de comparació](#1271-amb-operadors-bàsics-de-comparació)
    - [1.2.7.2 Subconsultes amb ALL i ANY](#1272-subconsultes-amb-all-i-any)
    - [1.2.7.3 Subconsultes amb IN i NOT IN](#1273-subconsultes-amb-in-i-not-in)
    - [1.2.7.4 Subconsultes amb EXISTS i NOT EXISTS](#1274-subconsultes-amb-exists-i-not-exists)

## 1.2.1 Model relacional

![Tabla](https://github.com/sapa-basededades/M02-M10-Bases-de-Dades/blob/main/master/assets/2-MR_gestioempleats.png?raw=true)

## 1.2.2 Scripts de creació de la base de dades

Crea la base de dades gestio-empleats descarregant els scripts des de Github.

git clone https://github.com/fbarraga/Postgres-DB

## 1.2.3 Consultes sobre una taula

1. Llista el primer cognom de tots els empleats.
2. Llista el primer cognom dels empleats eliminant els cognoms que estiguin repetits.
3. Llista totes les columnes de la taula empleat.
4. Llista el nom i els cognoms de tots els empleats.
5. Llista el codi dels departaments dels empleats que apareixen a la taula empleat.
6. Llista el codi dels departaments dels empleats que apareixen a la taula empleat, eliminant els codis que apareixen repetits.
7. Llista el nom i cognoms dels empleats en una única columna.
8. Llista el nom i cognoms dels empleats en una única columna, convertint tots els caràcters en majúscula.
9. Llista el nom i cognoms dels empleats en una única columna, convertint tots els caràcters en minúscula.
10. Llista el codi dels empleats al costat del NIF, però el NIF haurà d' aparèixer en dues columnes, una mostrarà únicament els dígits del NIF i l' altra la lletra.
11. Llista el nom de cada departament i el valor del pressupost actual de què disposa. Per calcular aquesta dada haurà de restar al valor del pressupost inicial (columna presupuesto) les despeses que s'han generat (columna gastos). Tingui en compte que en alguns casos poden existir valors negatius. Utilitzi un àlies apropiat per a la nova columna que està calculant.
12. Llista el nom dels departaments i el valor del pressupost actual ordenat de forma ascendent.
13. Llista el nom de tots els departaments ordenats de forma ascendent.
14. Llista el nom de tots els departaments ordenats de forma descendent.
15. Llista els cognoms i el nom de tots els empleats, ordenats de forma alfabètica tendint en compte en primer lloc els seus cognoms i després el seu nom.
16. Retorna una llista amb el nom i el pressupost, dels 3 departaments que tenen més pressupost.
17. Retorna una llista amb el nom i el pressupost, dels 3 departaments que tenen menor pressupost.
18. Retorna una llista amb el nom i la despesa, dels 2 departaments que tenen més despesa.
19. Retorna una llista amb el nom i la despesa, dels 2 departaments que tenen menor despesa.
20. Retorna una llista amb 5 files a partir de la tercera fila de la taula. La tercera fila s' ha d' incloure en la resposta. La resposta ha d' incloure totes les columnes de la taula empleat.
21. Retorna una llista amb el nom dels departaments i el pressupost, d' aquells que tenen un pressupost major o igual a 150000 euros.
22. Retorna una llista amb el nom dels departaments i la despesa, d'aquells que tenen menys de 5000 euros de despeses.
23. Retorna una llista amb el nom dels departaments i el pressupost, d'aquells que tenen un pressupost entre 100000 i 200000 euros. Sense utilitzar l'operador BETWEEN.
24. Retorna una llista amb el nom dels departaments que **no** tenen un pressupost entre 100000 i 200000 euros. Sense utilitzar l'operador BETWEEN.
25. Retorna una llista amb el nom dels departaments que tenen un pressupost entre 100000 i 200000 euros. Utilitzant l' operador BETWEEN.
26. Retorna una llista amb el nom dels departaments que **no** tenen un pressupost entre 100000 i 200000 euros. Utilitzant l' operador BETWEEN.
27. Retorna una llista amb el nom dels departaments, despeses i pressupost, de que els departaments on les despeses siguin més grans que el pressupost de què disposen.
28. Retorna una llista amb el nom dels departaments, despeses i pressupost, d' aquells departaments on les despeses siguin menors que el pressupost de què disposen.
29. Retorna una llista amb el nom dels departaments, despeses i pressupost, d' aquells departaments on les despeses siguin iguals al pressupost de què disposen.
30. Llista totes les dades dels empleats el segon cognom dels quals sigui NULL.
31. Llista totes les dades dels empleats el segon cognom dels quals **no sigui** NULL.
32. Llista totes les dades dels empleats el segon cognom dels quals sigui López.
33. Llista totes les dades dels empleats el segon cognom dels quals sigui Díaz o Moreno. Sense utilitzar l' operador IN.
34. Llista totes les dades dels empleats el segon cognom dels quals sigui Díaz o Moreno. Utilitzant l' operador IN.
35. Llista els noms, cognoms i cap dels empleats que treballen al departament 3.
36. Llista els noms, cognoms i cap dels empleats que treballen en els departaments 2, 4 o 5.

## 1.2.4 Consultes multitaula (INNER JOIN)

1. Retorna un llistat amb els empleats i les dades dels departaments on treballa cadascú.
2. Retorna un llistat amb els empleats i les dades dels departaments on treballa cadascú. Ordena el resultat, en primer lloc pel nom del departament (en ordre alfabètic) i en segon lloc pels cognoms i el nom dels empleats.
3. Retorna un llistat amb el codi i el nom del departament, només d' aquells departaments que tenen empleats.
4. Retorna un llistat amb el codi, el nom del departament i el valor del pressupost actual de què disposa, només d' aquells departaments que tenen empleats. El valor del pressupost actual el pot calcular restant al valor del pressupost inicial (columna pressupost) el valor de les despeses que ha generat (columna despeses).
5. Retorna el nom del departament on treballa l' empleat que té el nif 38382980M.
6. Retorna el nom del departament on treballa l'empleat Pepe Ruiz Santana.
7. Retorna un llistat amb les dades dels empleats que treballen al departament d' R + D. Ordena el resultat alfabèticament.
8. Retorna un llistat amb les dades dels empleats que treballen al departament de Sistemes, Comptabilitat o R + D. Ordena el resultat alfabèticament.
9. Retorna una llista amb el nom dels empleats que tenen els departaments que **no** tenen un pressupost entre 100000 i 200000 euros.
10. Retorna un llistat amb el nom dels departaments on hi ha algun empleat el segon cognom del qual sigui NULL. Tingui en compte que no ha de mostrar noms de departaments que estiguin repetits.

## 1.2.5 Consultes multitaula (OUTER JOIN)

Resol totes les consultes utilitzant les clàusules LEFT JOIN i RIGHT JOIN.

1. Retorna un llistat amb **tots els empleats** juntament amb les dades dels departaments on treballen. Aquest llistat també ha d' incloure els empleats que no tenen cap departament associat.
2. Retorna un llistat on només apareguin aquells empleats que no tenen cap departament associat.
3. Retorna un llistat on només apareguin aquells departaments que no tenen cap empleat associat.
4. Retorna un llistat amb tots els empleats juntament amb les dades dels departaments on treballen. El llistat ha d' incloure els empleats que no tenen cap departament associat i els departaments que no tenen cap empleat associat. Ordeni el llistat alfabèticament pel nom del departament.
5. Retorna un llistat amb els empleats que no tenen cap departament associat i els departaments que no tenen cap empleat associat. Ordeni el llistat alfabèticament pel nom del departament.

## 1.2.6 Consultes resum

1. Calcula la suma del pressupost de tots els departaments.
2. Calcula la mitjana del pressupost de tots els departaments.
3. Calcula el valor mínim del pressupost de tots els departaments.
4. Calcula el nom del departament i el pressupost que té assignat, del departament amb menor pressupost.
5. Calcula el valor màxim del pressupost de tots els departaments.
6. Calcula el nom del departament i el pressupost que té assignat, del departament amb major pressupost.
7. Calcula el nombre total d' empleats que hi ha a la taula empleat.
8. Calcula el nombre d' empleats que **no tenen** NULL en el seu segon cognom.
9. Calcula el nombre d' empleats que hi ha a cada departament. Has de retornar dues columnes, una amb el nom del departament i una altra amb el nombre d'empleats que té assignats.
10. Calcula el nom dels departaments que tenen més de 2 empleats. El resultat ha de tenir dues columnes, una amb el nom del departament i una altra amb el nombre d' empleats que té assignats.
11. Calcula el nombre d' empleats que treballen en cadascun dels departaments. El resultat d' aquesta consulta també ha d' incloure aquells departaments que no tenen cap empleat associat.
12. Calcula el nombre d' empleats que treballen en cadascun dels departaments que tenen un pressupost major a 200000 euros.

## 1.2.7 Subconsultes

### 1.2.7.1 Amb operadors bàsics de comparació

1. Retorna un llistat amb tots els empleats que té el departament de Sistemes. (Sense utilitzar INNER JOIN).
2. Retorna el nom del departament amb major pressupost i la quantitat que té assignada.
3. Retorna el nom del departament amb menor pressupost i la quantitat que té assignada.

### 1.2.7.2 Subconsultes amb ALL i ANY

1. Retorna el nom del departament amb major pressupost i la quantitat que té assignada. Sense fer ús de MAX, ORDER BY ni LIMIT.
2. Retorna el nom del departament amb menor pressupost i la quantitat que té assignada. Sense fer ús de MIN, ORDER BY ni LIMIT.
3. Retorna els noms dels departaments que tenen empleats associats. (Utilitzant ALL o ANY).
4. Retorna els noms dels departaments que no tenen empleats associats. (Utilitzant ALL o ANY).

### 1.2.7.3 Subconsultes amb IN i NOT IN

1. Retorna els noms dels departaments que tenen empleats associats. (Utilitzant IN o NOT IN).
2. Retorna els noms dels departaments que no tenen empleats associats. (Utilitzant IN o NOT IN).

### 1.2.7.4 Subconsultes amb EXISTS i NOT EXISTS

1. Retorna els noms dels departaments que tenen empleats associats. (Utilitzant EXISTS o NOT EXISTS).
2. Retorna els noms dels departaments que tenen empleats associats. (Utilitzant EXISTS o NOT EXISTS).


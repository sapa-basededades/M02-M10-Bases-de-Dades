# Exercicis a classe. 
## Realització de consultes SQL
### BD: Botiga_Informatica

### Contenido

1.1 Model relacional</br>
1.2 Base de dades per a Postgres</br>
1.3 Consultes sobre una taula</br>
1.4 Consultes multitaula (INNER JOIN)</br>
1.5 Consultes multitaula (OUTER JOIN)</br>
1.6 Consultes resum (GROUP BY, HAVING)</br>
1.7 Subconsultes (A la clàusula WHERE)</br>
    1.7.1 Amb operadors bàsics de comparació</br>
    1.7.2 Subconsultes amb **** ALL **** y **** ANY**</br>
    1.7.3 Subconsultes amb **** IN **** i **** NOT IN**</br>
    1.7.4 Subconsultes amb **** EXISTS **** i **** NOT EXISTS**</br>
    1.7.5 Subconsultes correlacionades</br>
1.8 Subconsultes (A la clàusula HAVING</br>


## 1.1 Model relacional

![](RackMultipart20230117-1-mtgvt6_html_386c21e796efb6a4.png)

## 1.2 Base de dades per a Postgres

Crea la base de dades botiga-informatica descarregant els scripts des de Github.

 https://github.com/fbarraga/Postgres-DB/UF2/0_Databases/botiga_informatica

## 1.3 Consultes sobre una taula

1. Llista el nom de tots els productes que hi ha a la taula producte.
2. Llista els noms i els preus de tots els productes de la taula producte.
3. Llista totes les columnes de la taula producte.
4. Llista el nom dels productes, el preu en euros i el preu en dòlars (USD). Utilitza els següents àlies per a les columnes: nom de producte, euros, dòlars.
5. Llista els noms i els preus de tots els productes de la taula producte, convertint els noms a majúscula.
6. Llista els noms i els preus de tots els productes de la taula producte, convertint els noms a minúscula.
7. Llista el nom de tots els fabricants en una columna, i en una altra columna obtingui en majúscules els dos primers caràcters del nom del fabricant.
8. Llista els noms i els preus de tots els productes de la taula producte, arrodonint el valor del preu a 2 decimals.
9. Llista els noms i els preus de tots els productes de la taula producte, truncant el valor del preu per mostrar-lo sense cap xifra decimal.
10. Llista el codi dels fabricants que tenen productes a la taula producte.
11. Llista el codi dels fabricants que tenen productes a la taula producte, eliminant els codis que apareixen repetits.
12. Llista els noms dels fabricants ordenats de forma ascendent.
13. Llista els noms dels fabricants ordenats de forma descendent.
14. Llista els noms dels productes ordenats en primer lloc pel nom de forma ascendent i en segon lloc pel preu de forma descendent.
15. Retorna una llista amb les 5 primeres files de la taula fabricant.
16. Retorna una llista amb 2 files a partir de la quarta fila de la taula fabricant. La quarta fila també s' ha d' incloure en la resposta.
17. Llista el nom i el preu del producte més barat. (Utilitzi només les clàusules ORDER BY i LIMIT)
18. Llista el nom i el preu del producte més car. (Utilitzi només les clàusules ORDER BY i LIMIT)
19. Llista el nom de tots els productes on el codi de fabricant és igual a 2.
20. Llista el nom dels productes que tenen un preu menor o igual a 120€.
21. Llista el nom dels productes que tenen un preu major o igual a 400€.
22. Llista el nom dels productes que **no tenen** un preu major o igual a 400€.
23. Llista tots els productes que tinguin un preu entre 80€ i 300€. Sense utilitzar l'operador BETWEEN.
24. Llista tots els productes que tinguin un preu entre 60€ i 200€. Utilitzant l' operador BETWEEN.
25. Llista tots els productes que tinguin un preu més gran que 200 € i que el codi de fabricant sigui igual a 6.
26. Llista tots els productes on el codi de fabricant sigui 1, 3 o 5. Sense utilitzar l' operador IN.
27. Llista tots els productes on el codi de fabricant sigui 1, 3 o 5. Utilitzant l' operador IN.
28. Llista el nom i el preu dels productes només dels cèntims (Caldrà multiplicar per 100 el valor del preu). Creu un àlies per a la columna que conté el preu que s'anomeni cèntims.
29. Llista els noms dels fabricants el nom dels quals comenci per la lletra S.
30. Llista els noms dels fabricants el nom dels quals acabi per la vocal e.
31. Llista els noms dels fabricants el nom dels quals contingui el caràcter w.
32. Llista els noms dels fabricants el nom dels quals sigui de 4 caràcters.
33. Retorna una llista amb el nom de tots els productes que contenen la cadena Portàtil en el nom.
34. Retorna una llista amb el nom de tots els productes que contenen la cadena Monitor en el nom i tenen un preu inferior a 215 €.
35. Llista el nom i el preu de tots els productes que tinguin un preu major o igual a 180€. Ordeni el resultat en primer lloc pel preu (en ordre descendent) i en segon lloc pel nom (en ordre ascendent).

## 1.4 Consultes multitaula (INNER JOIN)

Resol totes les consultes:

1. Retorna una llista amb el nom del producte, preu i nom de fabricant de tots els productes de la base de dades.
2. Retorna una llista amb el nom del producte, preu i nom de fabricant de tots els productes de la base de dades. Ordeni el resultat pel nom del fabricant, per ordre alfabètic.
3. Retorna una llista amb el codi del producte, nom del producte, codi del fabricant i nom del fabricant, de tots els productes de la base de dades.
4. Retorna el nom del producte, el seu preu i el nom del seu fabricant, del producte més barat.
5. Retorna el nom del producte, el seu preu i el nom del seu fabricant, del producte més car.
6. Retorna una llista de tots els productes del fabricant Lenovo.
7. Retorna una llista de tots els productes del fabricant Crucial que tinguin un preu més gran que 200€.
8. Retorna un llistat amb tots els productes dels fabricants Asus, Hewlett-Packard i Seagate. Sense utilitzar l' operador IN.
9. Retorna un llistat amb tots els productes dels fabricants Asus, Hewlett-Packard i Seagate. Utilitzant l' operador IN.
10. Retorna un llistat amb el nom i el preu de tots els productes dels fabricants el nom dels quals acabi per la vocal e.
11. Retorna un llistat amb el nom i el preu de tots els productes el nom de fabricant dels quals contingui el caràcter w en el seu nom.
12. Retorna un llistat amb el nom de producte, preu i nom de fabricant, de tots els productes que tinguin un preu major o igual a 180€. Ordeni el resultat en primer lloc pel preu (en ordre descendent) i en segon lloc pel nom del producte(en ordre ascendent)
13. Retorna un llistat amb el codi i el nom de fabricant, només d' aquells fabricants que tenen productes associats a la base de dades.

## 1.5 Consultes multitaula (OUTER JOIN)

Resol totes les consultes utilitzant les clàusules LEFT JOIN i RIGHT JOIN.

1. Retorna un llistat de **tots els fabricants** que hi ha a la base de dades, juntament amb els productes que té cadascun d' ells. El llistat haurà de mostrar també aquells fabricants que no tenen productes associats.
2. Retorna un llistat on només apareguin aquells fabricants que no tenen cap producte associat.
3. Poden existir productes que no estiguin relacionats amb un fabricant? Justifiqui la seva resposta.

## 1.6 Consultes resum (GROUP BY, HAVING)

1. Calcula el nombre total de productes que hi ha a la taula productes.
2. Calcula el nombre total de fabricants que hi ha a la taula fabricant.
3. Calcula el nombre de valors diferents de codi de fabricant apareixen a la taula productes.
4. Calcula la mitjana del preu de tots els productes.
5. Calcula el preu més barat de tots els productes.
6. Calcula el preu més car de tots els productes.
7. Llista el nom i el preu del producte més barat.
8. Llista el nom i el preu del producte més car.
9. Calcula la suma dels preus de tots els productes.
10. Calcula el nombre de productes que té el fabricant Asus.
11. Calcula la mitjana del preu de tots els productes del fabricant Asus.
12. Calcula el preu més barat de tots els productes del fabricant Asus.
13. Calcula el preu més car de tots els productes del fabricant Asus.
14. Calcula la suma del preu de tots els productes del fabricant Asus.
15. Mostra el preu màxim, preu mínim, preu mitjà i el nombre total de productes que té el fabricant Crucial.
16. Mostra el nombre total de productes que té cadascun dels fabricants. El llistat també ha d' incloure els fabricants que no tenen cap producte. El resultat mostrarà dues columnes, una amb el nom del fabricant i una altra amb el nombre de productes que té. Ordeni el resultat descendent pel nombre de productes.
17. Mostra el preu màxim, preu mínim i preu mitjà dels productes de cadascun dels fabricants. El resultat mostrarà el nom del fabricant juntament amb les dades que se sol·liciten.
18. Mostra el preu màxim, preu mínim, preu mitjà i el nombre total de productes dels fabricants que tenen un preu mitjà superior a 200€. No cal mostrar el nom del fabricant, amb el codi del fabricant és suficient.
19. Mostra el nom de cada fabricant, juntament amb el preu màxim, preu mínim, preu mitjà i el nombre total de productes dels fabricants que tenen un preu mitjà superior a 200 €.
20. Calcula el nombre de productes que tenen un preu major o igual a 180€.
21. Calcula el nombre de productes que té cada fabricant amb un preu major o igual a 180 €.
22. Llista el preu mitjà els productes de cada fabricant, mostrant només el codi del fabricant.
23. Llista el preu mitjà els productes de cada fabricant, mostrant només el nom del fabricant.
24. Llista els noms dels fabricants els productes dels quals tenen un preu mitjà major o igual a 150€.
25. Retorna un llistat amb els noms dels fabricants que tenen 2 o més productes.
26. Retorna un llistat amb els noms dels fabricants i el número de productes que té cadascun amb un preu superior o igual a 220 €. No cal mostrar el nom dels fabricants que no tenen productes que compleixin la condició.

Exemple del resultat esperat:

| **nombre** | **total** |
| --- | --- |
| **Lenovo** | 2 |
| **Asus** | 1 |
| **Crucial** | 1 |

27. Retorna un llistat amb els noms dels fabricants i el nombre de productes que té cadascun amb un preu superior o igual a 220 €. El llistat ha de mostrar el nom de tots els fabricants, és a dir, si hi ha algun fabricant que no té productes amb un preu superior o igual a 220 € haurà d' aparèixer en el llistat amb un valor igual a 0 en el nombre de productes.

Exemple del resultat esperat:

| **nombre** | **total** |
| --- | --- |
| **Lenovo** | 2 |
| **Crucial** | 1 |
| **Asus** | 1 |
| **Huawei** | 0 |
| **Samsung** | 0 |
| **Gigabyte** | 0 |
| **Hewlett-Packard** | 0 |
| **Xiaomi** | 0 |
| **Seagate** | 0 |

28. Retorna un llistat amb els noms dels fabricants on la suma del preu de tots els seus productes és superior a 1000 €.
29. Retorna un llistat amb el nom del producte més car que té cada fabricant. El resultat ha de tenir tres columnes: nom del producte, preu i nom del fabricant. El resultat ha d' estar ordenat alfabèticament de menor a major pel nom del fabricant.

## 1.7 Subconsultes (A la clàusula WHERE)

### 1.7.1 Amb operadors bàsics de comparació

1. Retorna tots els productes del fabricant Lenovo. (Sense utilitzar INNER JOIN).
2. Retorna totes les dades dels productes que tenen el mateix preu que el producte més car del fabricant Lenovo. (Sense utilitzar INNER JOIN).
3. Llista el nom del producte més car del fabricant Lenovo.
4. Llista el nom del producte més barat del fabricant Hewlett-Packard.
5. Retorna tots els productes de la base de dades que tenen un preu més gran o igual al producte més car del fabricant Lenovo.
6. Llista tots els productes del fabricant Asus que tenen un preu superior al preu mitjà de tots els seus productes.

### 1.7.2 Subconsultes amb **** ALL **** y **** ANY**

1. Retorna el producte més car que hi ha a la taula producte sense fer ús de MAX, ORDER BY ni LIMIT.
2. Retorna el producte més barat que hi ha a la taula producte sense fer ús de MIN, ORDER BY ni LIMIT.
3. Retorna els noms dels fabricants que tenen productes associats. (Utilitzant ALL o ANY).
4. Retorna els noms dels fabricants que no tenen productes associats. (Utilitzant ALL o ANY).

### 1.7.3 Subconsultes amb **** IN **** i **** NOT IN**

1. Retorna els noms dels fabricants que tenen productes associats. (Utilitzant IN o NOT IN).
2. Retorna els noms dels fabricants que no tenen productes associats. (Utilitzant IN o NOT IN).

### 1.7.4 Subconsultes amb **** EXISTS **** i **** NOT EXISTS**

1. Retorna els noms dels fabricants que tenen productes associats. (Utilitzant EXISTS o NOT EXISTS).
2. Retorna els noms dels fabricants que no tenen productes associats. (Utilitzant EXISTS o NOT EXISTS).

### 1.7.5 Subconsultes correlacionades

1. Llista el nom de cada fabricant amb el nom i el preu del seu producte més car.
2. Retorna un llistat de tots els productes que tenen un preu major o igual a la mitjana de tots els productes del seu mateix fabricant.
3. Llista el nom del producte més car del fabricant Lenovo.

## 1.8 Subconsultes (A la clàusula HAVING)

1. Retorna un llistat amb tots els noms dels fabricants que tenen el mateix nombre de productes que el fabricant Lenovo.


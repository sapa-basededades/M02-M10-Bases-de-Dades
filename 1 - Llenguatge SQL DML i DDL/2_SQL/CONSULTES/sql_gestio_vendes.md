# Exercicis a classe. 
## Realització de consultes SQL


### Contenido

[1.1 Botiga d' informàtica 3](#_Toc118389531)

[1.1.1 Model relacional 3](#_Toc118389532)

[1.1.2 Base de dades per a Postgres 3](#_Toc118389533)

[1.1.3 Consultes sobre una taula 3](#_Toc118389534)

[1.1.4 Consultes multitaula (INNER JOIN) 4](#_Toc118389535)

[1.1.5 Consultes multitaula (OUTER JOIN) 5](#_Toc118389536)

[1.1.6 Consultes resum (GROUP BY, HAVING) 5](#_Toc118389537)

[1.1.7 Subconsultes (A la clàusula WHERE) 7](#_Toc118389538)

[1.1.7.1 Amb operadors bàsics de comparació 7](#_Toc118389539)

[1.1.8 Subconsultes (A la clàusula HAVING) 8](#_Toc118389540)

[1.2 Gestió d'empleats 9](#_Toc118389541)

[1.2.1 Model relacional 9](#_Toc118389542)

[1.2.2 Base de dades per a Postgres 9](#_Toc118389543)

[1.2.3 Consultes sobre una taula 9](#_Toc118389544)

[1.2.4 Consultes multitaula (INNER JOIN) 11](#_Toc118389545)

[1.2.5 Consultes multitaula (OUTER JOIN) 11](#_Toc118389546)

[1.2.6 Consultes resum 11](#_Toc118389547)

[1.2.7 Subconsultes 12](#_Toc118389548)

[1.2.7.1 Amb operadors bàsics de comparació 12](#_Toc118389549)

[1.2.7.2 Subconsultes amb ALL i ANY 12](#_Toc118389550)

[1.2.7.3 Subconsultes amb IN i NOT IN 12](#_Toc118389551)

[1.2.7.4 Subconsultes amb EXISTS i NOT EXISTS 13](#_Toc118389552)

[1.3 Gestió de vendes 14](#_Toc118389553)

[1.3.1 Model relacional 14](#_Toc118389554)

[1.3.2 Base de dades per a Postgres 14](#_Toc118389555)

[1.3.3 Consultes sobre una taula 14](#_Toc118389556)

[1.3.4 Consultes multitaula (INNER JOIN) 15](#_Toc118389557)

[1.3.5 Consultes multitaula (OUTER JOIN) 15](#_Toc118389558)

[1.3.6 Consultes resum 15](#_Toc118389559)

[1.3.7 Subconsultes 16](#_Toc118389560)

[1.3.7.1 Amb operadors bàsics de comparació 16](#_Toc118389561)

[1.3.7.2 Subconsultes amb ALL i ANY 17](#_Toc118389562)

[1.3.7.3 Subconsultes amb IN i NO IN 17](#_Toc118389563)

[1.3.7.4 Subconsultes amb EXISTS y NOT EXISTS 17](#_Toc118389564)

[1.4 Jardineria 18](#_Toc118389565)

[1.4.1 Model relacional 18](#_Toc118389566)

[1.4.2 Base de dades per Postgres 18](#_Toc118389567)

[1.4.4 Consultes sobre una taula 19](#_Toc118389568)

[1.4.5 Consultes multitaula (INNER JOIN) 19](#_Toc118389569)

[1.4.6 Consultes multitaula (OUTER JOIN) 20](#_Toc118389570)

[1.4.7 Consultes resum 20](#_Toc118389571)

[1.4.8 Subconsultes 21](#_Toc118389572)

[1.4.8.1 Amb operadors bàsics de comparació 21](#_Toc118389573)

[1.4.8.2 Subconsultes amb ALL i ANY 22](#_Toc118389574)

[1.4.8.3 Subconsultes amb IN i NOT IN 22](#_Toc118389575)

[1.4.8.4 Subconsultes amb EXISTS i NOT EXISTS 22](#_Toc118389576)

[1.4.8.5 Subconsultes correlacionades 22](#_Toc118389577)

[1.4.9 Consultes variades 22](#_Toc118389578)

[1.5 Universitat 24](#_Toc118389579)

[1.5.1 Model relacional 24](#_Toc118389580)

[1.5.2 Base de dades per a Postgres 24](#_Toc118389581)

[1.5.4 Consultes sobre una taula 24](#_Toc118389582)

[1.5.5 Consultes multitaula (INNER JOIN) 24](#_Toc118389583)

[1.5.6 Consultes multitaula (OUTER JOIN) 25](#_Toc118389584)

[1.5.7 Consultes resum 25](#_Toc118389585)

[1.5.8 Subconsultes 26](#_Toc118389586)

# 1.1 Botiga d' informàtica

## 1.1.1 Model relacional

![](RackMultipart20230117-1-mtgvt6_html_386c21e796efb6a4.png)

## 1.1.2 Base de dades per a Postgres

Crea la base de dades botiga-informatica descarregant els scripts des de Github.

# git clone https://github.com/fbarraga/Postgres-DB

## 1.1.3 Consultes sobre una taula

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

## 1.1.4 Consultes multitaula (INNER JOIN)

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

## 1.1.5 Consultes multitaula (OUTER JOIN)

Resol totes les consultes utilitzant les clàusules LEFT JOIN i RIGHT JOIN.

1. Retorna un llistat de **tots els fabricants** que hi ha a la base de dades, juntament amb els productes que té cadascun d' ells. El llistat haurà de mostrar també aquells fabricants que no tenen productes associats.
2. Retorna un llistat on només apareguin aquells fabricants que no tenen cap producte associat.
3. Poden existir productes que no estiguin relacionats amb un fabricant? Justifiqui la seva resposta.

## 1.1.6 Consultes resum (GROUP BY, HAVING)

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

1. Retorna un llistat amb els noms dels fabricants i el nombre de productes que té cadascun amb un preu superior o igual a 220 €. El llistat ha de mostrar el nom de tots els fabricants, és a dir, si hi ha algun fabricant que no té productes amb un preu superior o igual a 220 € haurà d' aparèixer en el llistat amb un valor igual a 0 en el nombre de productes.

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

1. Retorna un llistat amb els noms dels fabricants on la suma del preu de tots els seus productes és superior a 1000 €.
2. Retorna un llistat amb el nom del producte més car que té cada fabricant. El resultat ha de tenir tres columnes: nom del producte, preu i nom del fabricant. El resultat ha d' estar ordenat alfabèticament de menor a major pel nom del fabricant.

## 1.1.7 Subconsultes (A la clàusula WHERE)

### 1.1.7.1 Amb operadors bàsics de comparació

1. Retorna tots els productes del fabricant Lenovo. (Sense utilitzar INNER JOIN).
2. Retorna totes les dades dels productes que tenen el mateix preu que el producte més car del fabricant Lenovo. (Sense utilitzar INNER JOIN).
3. Llista el nom del producte més car del fabricant Lenovo.
4. Llista el nom del producte més barat del fabricant Hewlett-Packard.
5. Retorna tots els productes de la base de dades que tenen un preu més gran o igual al producte més car del fabricant Lenovo.
6. Llista tots els productes del fabricant Asus que tenen un preu superior al preu mitjà de tots els seus productes.

**1.1.7.2 Subconsultes amb **** ALL **** y **** ANY**

1. Retorna el producte més car que hi ha a la taula producte sense fer ús de MAX, ORDER BY ni LIMIT.
2. Retorna el producte més barat que hi ha a la taula producte sense fer ús de MIN, ORDER BY ni LIMIT.
3. Retorna els noms dels fabricants que tenen productes associats. (Utilitzant ALL o ANY).
4. Retorna els noms dels fabricants que no tenen productes associats. (Utilitzant ALL o ANY).

**1.1.7.3 Subconsultes amb **** IN **** i **** NOT IN**

1. Retorna els noms dels fabricants que tenen productes associats. (Utilitzant IN o NOT IN).
2. Retorna els noms dels fabricants que no tenen productes associats. (Utilitzant IN o NOT IN).

**1.1.7.4 **** Subconsultes amb **** EXISTS **** i **** NOT EXISTS**

1. Retorna els noms dels fabricants que tenen productes associats. (Utilitzant EXISTS o NOT EXISTS).
2. Retorna els noms dels fabricants que no tenen productes associats. (Utilitzant EXISTS o NOT EXISTS).

**1.1.7.5 **** Subconsultes correlacionades**

1. Llista el nom de cada fabricant amb el nom i el preu del seu producte més car.
2. Retorna un llistat de tots els productes que tenen un preu major o igual a la mitjana de tots els productes del seu mateix fabricant.
3. Llista el nom del producte més car del fabricant Lenovo.

## 1.1.8 Subconsultes (A la clàusula HAVING)

1. Retorna un llistat amb tots els noms dels fabricants que tenen el mateix nombre de productes que el fabricant Lenovo.

# 1.2 Gestió d'empleats

## 1.2.1 Model relacional

![](RackMultipart20230117-1-mtgvt6_html_38ed10f1ef933ab.png)

## 1.2.2 Base de dades per a Postgres

Crea la base de dades gestio-empleats descarregant els scripts des de Github.

# git clone https://github.com/fbarraga/Postgres-DB

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

# 1.3 Gestió de vendes

## 1.3.1 Model relacional

![](RackMultipart20230117-1-mtgvt6_html_b273fcb412150062.png)

## 1.3.2 Base de dades per a Postgres

Crea la base de dades ventes descarregant els scripts des de Github.

# git clone https://github.com/fbarraga/Postgres-DB

##


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

# 1.4 Jardineria

## 1.4.1 Model relacional

![](RackMultipart20230117-1-mtgvt6_html_2f7d948e0d9e95c0.png)

## 1.4.2 Base de dades per Postgres

Crea la base de dades jardineria descarregant els scripts des de Github.

# git clone https://github.com/fbarraga/Postgres-DB

##


## 1.4.4 Consultes sobre una taula

1. Retorna un llistat amb el codi d' oficina i la ciutat on hi ha oficines.

**SELECT codigo\_oficina,ciudad**

**FROM oficina;**

1. Retorna un llistat amb la ciutat i el telèfon de les oficines d'Espanya.
2. Retorna un llistat amb el nom, cognoms i email dels empleats el cap dels quals té un codi de cap igual a 7.
3. Retorna el nom del lloc, nom, cognoms i email del cap de l' empresa.
4. Retorna un llistat amb el nom, cognoms i lloc d' aquells empleats que no siguin representants de vendes.
5. Retorna un llistat amb el nom dels tots els clients espanyols.
6. Retorna un llistat amb els diferents estats pels quals pot passar una comanda.
7. Retorna un llistat amb el codi de client d'aquells clients que van realitzar algun pagament el 2008. Tingui en compte que haurà d' eliminar aquells codis de client que apareguin repetits. Resolgui la consulta:
  1. Utilitzant la funció EXTRACT.
  2. Utilitzant la funció TO\_CHAR.
  3. Sense utilitzar cap de les funcions anteriors.
8. Retorna un llistat amb el codi de comanda, codi de client, data esperada i data de lliurament de les comandes que no han estat lliurades a temps.
9. Retorna un llistat amb el codi de comanda, codi de client, data esperada i data de lliurament de les comandes la data de lliurament de les quals ha estat almenys dos dies abans de la data esperada.
10. Retorna un llistat de totes les comandes que van ser **rebutjades** el 2009.
11. Retorna un llistat de totes les comandes que han estat **lliurades** el mes de gener de qualsevol any.
12. Retorna un llistat amb tots els pagaments que es van realitzar l' any 2008 mitjançant PayPal. Ordeni el resultat de major a menor.
13. Retorna un llistat amb totes les formes de pagament que apareixen a la taula pagament. Tingui en compte que no han d' aparèixer formes de pagament repetides.
14. Retorna un llistat amb tots els productes que pertanyen a la gamma Ornamentals i que tenen més de 100 unitats en estoc. El llistat haurà d' estar ordenat pel seu preu de venda, mostrant en primer lloc els de major preu.
15. Retorna un llistat amb tots els clients que siguin de la ciutat de Madrid i el representant de vendes del qual tingui el codi d' empleat 11 o 30.

## 1.4.5 Consultes multitaula (INNER JOIN)

Resolgui totes les consultes utilitzant la sintaxi de SQL1 i SQL2. Les consultes amb sintaxi de SQL2 s' han de resoldre amb INNER JOIN i NATURAL JOIN.

1. Obtenen un llistat amb el nom de cada client i el nom i cognom del seu representant de vendes.
2. Mostra el nom dels clients que hagin realitzat pagaments juntament amb el nom dels seus representants de vendes.
3. Mostra el nom dels clients que **no** hagin realitzat pagaments juntament amb el nom dels seus representants de vendes.
4. Retorna el nom dels clients que han fet pagaments i el nom dels seus representants juntament amb la ciutat de l' oficina a la qual pertany el representant.
5. Retorna el nom dels clients que **no** hagin fet pagaments i el nom dels seus representants juntament amb la ciutat de l' oficina a la qual pertany el representant.
6. Llista la direcció de les oficines que tinguin clients a Fuenlabrada.
7. Retorna el nom dels clients i el nom dels seus representants juntament amb la ciutat de l' oficina a la qual pertany el representant.
8. Retorna un llistat amb el nom dels empleats juntament amb el nom dels seus caps.
9. Retorna un llistat que mostri el nom de cada empleats, el nom del seu cap i el nom del cap dels seus cap.
10. Retorna el nom dels clients als quals no se'ls ha lliurat a temps una comanda.
11. Retorna un llistat de les diferents gammes de producte que ha comprat cada client.

## 1.4.6 Consultes multitaula (OUTER JOIN)

Resolgui totes les consultes utilitzant les clàusules LEFT JOIN, RIGHT JOIN, NATURAL LEFT JOIN i NATURAL RIGHT JOIN.

1. Retorna un llistat que mostri només els clients que no han realitzat cap pagament.
2. Retorna un llistat que mostri només els clients que no han realitzat cap comanda.
3. Retorna un llistat que mostri els clients que no han realitzat cap pagament i els que no han realitzat cap comanda.
4. Retorna un llistat que mostri només els empleats que no tenen una oficina associada.
5. Retorna un llistat que mostri només els empleats que no tenen un client associat.
6. Retorna un llistat que mostri només els empleats que no tenen un client associat juntament amb les dades de l'oficina on treballen.
7. Retorna un llistat que mostri els empleats que no tenen una oficina associada i els que no tenen un client associat.
8. Retorna un llistat dels productes que mai han aparegut en una comanda.
9. Retorna un llistat dels productes que mai han aparegut en una comanda. El resultat ha de mostrar el nom, la descripció i la imatge del producte.
10. Retorna les oficines on **no treballen** cap dels empleats que hagin estat els representants de vendes d'algun client que hagi realitzat la compra d'algun producte de la gamma Fruiters.
11. Retorna un llistat amb els clients que han realitzat alguna comanda però no han realitzat cap pagament.
12. Retorna un llistat amb les dades dels empleats que no tenen clients associats i el nom del seu cap associat.

## 1.4.7 Consultes resum

1. Quants empleats hi ha a la companyia?

<center>
<details>
    <summary>Solució</summary>

    
```sql
    SELECT COUNT(*)
    FROM empleado;
```
</details>
</br>
</center>



1. Quants clients té cada país?

<center>
<details>
    <summary>Solució</summary>

    
```sql
    SELECT pais,COUNT(*)
    FROM cliente
    GROUP BY pais;
```
</details>
</br>
</center>


1. Quin va ser el pagament mitjà el 2009?
   
<center>
<details>
    <summary>Solució</summary>

    
```sql
    SELECT AVG(TOTAL)
    FROM PAGO
    WHERE TO_CHAR(FECHA_PAGO,"YYYY")='2009';
```
</details>
</br>
</center>

1. Quantes comandes hi ha a cada estat? Ordena el resultat de forma descendent pel nombre de comandes.

<center>
<details>
    <summary>Solució</summary>

    
```sql
    SELECT ESTADO,COUNT(\*)
    FROM PEDIDO
    GROUP BY ESTADO
    ORDER BY COUNT(\*) DESC;
```
</details>
</br>
</center>




1. Calcula el preu de venda del producte més car i més barat en una mateixa consulta.

**SELECT MAX(PRECIO\_VENTA)**

**FROM PRODUCTO**

**UNION**

**SELECT MIN(PRECIO\_VENTA )**

**FROM PRODUCTO;**

1. Calcula el nombre de clients que té l' empresa.

**SELECT COUNT(\*)**

**FROM CLIENTE;**

1. Quants clients existeixen amb domicili a la ciutat de Madrid?

**SELECT COUNT(\*)**

**FROM CLIENTE**

**WHERE CIUDAD='Madrid';**

1. ¿Calcula quants clients té cadascuna de les ciutats que comencen per M?

**SELECT SUBSTR(CIUDAD,1,1),COUNT(\*)**

**FROM CLIENTE**

**GROUP BY SUBSTR(CIUDAD,1,1);**

1. Retorna el nom dels representants de vendes i el nombre de clients al qual atén cadascun.

**SELECT NOMBRE,count(nombre\_cliente)**

**FROM EMPLEADO**

**INNER JOIN cliente ON CLIENTE.CODIGO\_EMPLEADO\_REP\_VENTAS=EMPLEADO.CODIGO\_EMPLEADO**

**GROUP BY NOMBRE;**

1. Calcula el nombre de clients que no té assignat representant de vendes.

**SELECT COUNT(codigo\_cliente)**

**FROM cliente**

**WHERE codigo\_empleado\_rep\_ventas IS NULL;**

1. Calcula la data del primer i últim pagament realitzat per cadascun dels clients. El llistat haurà de mostrar el nom i els cognoms de cada client.
2. Calcula el nombre de productes diferents que hi ha en cadascuna de les comandes.
3. Calcula la suma de la quantitat total de tots els productes que apareixen en cadascuna de les comandes.
4. Retorna un llistat dels 20 productes més venuts i el nombre total d'unitats que s'han venut de cadascun. El llistat haurà d' estar ordenat pel nombre total d' unitats venudes.
5. La facturació que ha tingut l' empresa en tota la història, indicant la base imposable, l' IVA i el total facturat. La base imposable es calcula sumant el cost del producte pel nombre d' unitats venudes de la taula detalle\_pedido. L'IVA és el 21 % de la base imposable, i el total la suma dels dos camps anteriors.
6. La mateixa informació que en la pregunta anterior, però agrupada per codi de producte.
7. La mateixa informació que en la pregunta anterior, però agrupada per codi de producte filtrada pels codis que comencin per OR.
8. Llista les vendes totals dels productes que hagin facturat més de 3000 euros. Es mostrarà el nom, unitats venudes, total facturat i total facturat amb impostos (21% IVA).
9. Mostri la suma total de tots els pagaments que es van realitzar per a cadascun dels anys que apareixen a la taula pagaments.

## 1.4.8 Subconsultes

### 1.4.8.1 Amb operadors bàsics de comparació

1. Retorna el nom del client amb major límit de crèdit.

**SELECT nombre\_cliente**

**FROM cliente**

**WHERE limite\_credito = (SELECT MAX(limite\_credito) FROM cliente);**

1. Retorna el nom del producte que tingui el preu de venda més car.

**SELECT nombre**

**FROM producto**

**WHERE precio\_venta = ( SELECT MAX(precio\_venta) FROM producto);**

1. Retorna el nom del producte del qual s' han venut més unitats. (Tingui en compte que haurà de calcular quin és el nombre total d'unitats que s'han venut de cada producte a partir de les dades de la taula detalle\_pedido)

**SELECT nombre**

**FROM producto**

**WHERE codigo\_producto = ( SELECT codigo\_producto**

**FROM detalle\_pedido**

**GROUP BY codigo\_producto**

**ORDER BY sum(cantidad) DESC**

**LIMIT 1);**

1. Els clients el límit de crèdit dels quals sigui més gran que els pagaments que hagi realitzat. (Sense utilitzar INNER JOIN).

**SELECT c.codigo\_cliente**

**FROM cliente c**

**INNER JOIN (**

**SELECT codigo\_cliente,sum(total) as TOTAL**

**FROM pago**

**GROUP BY codigo\_cliente) a ON c.codigo\_cliente=c.codigo\_cliente**

**WHERE c.limite\_credito \> a.TOTAL;**

1. Retorna el producte que més unitats té en estoc.

**SELECT codigo\_producto, cantidad\_en\_stock**

**FROM producto**

**WHERE codigo\_producto= (SELECT codigo\_producto**

**FROM producto**

**ORDER BY cantidad\_en\_stock DESC LIMIT 1);**

1. Retorna el producte que menys unitats té en estoc.

**SELECT codigo\_producto, cantidad\_en\_stock**

**FROM producto**

**WHERE codigo\_producto= (SELECT codigo\_producto**

**FROM producto**

**ORDER BY cantidad\_en\_stock ASC LIMIT 1);**

1. Retorna el nom, els cognoms i l'email dels empleats que estan a càrrec **d'Alberto Soria**.

**SELECT nombre,apellido1,apellido2,email**

**FROM empleado**

**WHERE codigo\_jefe in (**

**SELECT codigo\_empleado**

**FROM empleado**

**WHERE nombre like 'Alberto' and apellido1 like 'Soria');**

### 1.4.8.2 Subconsultes amb ALL i ANY

1. Retorna el nom del client amb major límit de crèdit

**SELECT nombre\_cliente,limite\_credito**

**FROM cliente**

**WHERE limite\_credito \>= ALL ( SELECT limite\_credito FROM cliente);**

1. Retorna el nom del producte que tingui el preu de venda més car.

**SELECT nombre**

**FROM producto**

**WHERE precio\_venta \>= ALL ( SELECT precio\_venta FROM producto);**

1. Retorna el producte que menys unitats té en estoc.

**SELECT nombre**

**FROM producto**

**WHERE cantidad\_en\_stock \<= ALL (**

**SELECT cantidad\_en\_stock FROM producto**

**);**

### 1.4.8.3 Subconsultes amb IN i NOT IN

1. Retorna el nom, cognom i càrrec dels empleats que no representin cap client.

**SELECT nombre,apellido1,apellido2,puesto**

**FROM empleado**

**WHERE codigo\_empleado NOT IN**

**( SELECT DISTINCT Codigo\_empleado\_rep\_ventas FROM cliente);**

1. Retorna un llistat que mostri només els clients que no han realitzat cap pagament.

**SELECT codigo\_cliente**

**FROM cliente**

**WHERE codigo\_cliente NOT IN (SELECT DISTINCT codigo\_cliente FROM pago);**

1. Retorna un llistat que mostri només els clients que sí que han realitzat algun pagament.

**SELECT codigo\_cliente**

**FROM cliente**

**WHERE codigo\_cliente IN (SELECT DISTINCT codigo\_cliente FROM pago);**

1. Retorna un llistat dels productes que mai han aparegut en una comanda.

**SELECT codigo\_producto**

**FROM producto**

**WHERE codigo\_producto NOT IN (select DISTINCT codigo\_producto from pedido);**

1. Retorna el nom, cognoms, lloc i telèfon de l' oficina d' aquells empleats que no siguin representant de vendes de cap client.

**SELECT e.nombre,e.apellido1,e.apellido2,e.puesto,o.telefono**

**FROM empleado e**

**INNER JOIN oficina o ON e.codigo\_oficina=o.codigo\_oficina**

**WHERE codigo\_empleado NOT IN**

**( SELECT DISTINCT Codigo\_empleado\_rep\_ventas FROM cliente);**

1. Retorna les oficines on **no treballen** cap dels empleats que hagin estat els representants de vendes d'algun client que hagi realitzat la compra d'algun producte de la gamma 'Frutales'.

**SELECT DISTINCT codigo\_oficina**

**FROM empleado**

**WHERE codigo\_empleado NOT IN (**

**SELECT codigo\_empleado\_rep\_ventas**

**FROM cliente**

**WHERE codigo\_cliente IN (**

**SELECT codigo\_cliente**

**FROM pedido**

**WHERE codigo\_pedido IN (**

**SELECT DISTINCT codigo\_pedido**

**FROM detalle\_pedido**

**WHERE codigo\_producto IN (SELECT codigo\_producto**

**FROM producto**

**WHERE gama like 'Frutales'))));**

1. Retorna un llistat amb els clients que han realitzat alguna comanda però no han realitzat cap pagament.

**SELECT codigo\_cliente**

**FROM cliente**

**WHERE codigo\_cliente IN (**

**SELECT DISTINCT codigo\_cliente FROM pedido)**

**AND codigo\_cliente NOT IN (**

**SELECT DISTINCT codigo\_cliente**

**FROM pago)**

### 1.4.8.4 Subconsultes amb EXISTS i NOT EXISTS

1. Retorna un llistat que mostri només els clients que no han realitzat cap pagament.

**SELECT codigo\_cliente**

**FROM cliente c**

**WHERE NOT EXISTS (**

**SELECT DISTINCT codigo\_cliente**

**FROM pago p**

**where p.codigo\_cliente=c.codigo\_cliente);**

1. Retorna un llistat que mostri només els clients que sí que han realitzat algun pagament.

**SELECT codigo\_cliente**

**FROM cliente c**

**WHERE EXISTS (**

**SELECT DISTINCT codigo\_cliente**

**FROM pago p**

**where p.codigo\_cliente=c.codigo\_cliente);**

1. Retorna un llistat dels productes que mai han aparegut en una comanda.

**SELECT codigo\_cliente**

**FROM cliente c**

**WHERE NOT EXISTS (**

**SELECT DISTINCT codigo\_cliente**

**FROM pago p**

**where p.codigo\_cliente=c.codigo\_cliente);**

1. Retorna un llistat dels productes que han aparegut en una comanda alguna vegada.

**SELECT codigo\_cliente**

**FROM cliente c**

**WHERE NOT EXISTS (**

**SELECT DISTINCT codigo\_cliente**

**FROM pago p**

**where p.codigo\_cliente=c.codigo\_cliente);**

## 1.4.9 Consultes variades

1. Retorna el llistat de clients indicant el nom del client i quantes comandes ha realitzat. Tingui en compte que poden existir clients que no han realitzat cap comanda.

**SELECT cl.nombre\_cliente,coalesce(ve.TOTAL,0)**

**FROM cliente cl**

**LEFT JOIN (**

**SELECT codigo\_cliente,sum(de.cantidad) as TOTAL**

**FROM pedido pe**

**INNER JOIN detalle\_pedido de ON pe.codigo\_pedido = de.codigo\_pedido**

**GROUP BY codigo\_cliente**

**) ve**

**ON cl.codigo\_cliente=ve.codigo\_cliente;**

1. Retorna un llistat amb els noms dels clients i el total pagat per cadascun d' ells. Tingui en compte que poden existir clients que no han realitzat cap pagament.

**SELECT cl.nombre\_cliente,coalesce(pa.TOTAL,0)**

**FROM cliente cl**

**LEFT JOIN (**

**SELECT codigo\_cliente,sum(total) as TOTAL**

**FROM pago**

**GROUP BY codigo\_cliente**

**) pa**

**ON cl.codigo\_cliente=pa.codigo\_cliente;**

1. Retorna el nom dels clients que hagin fet comandes el 2008 ordenats alfabèticament de menor a major.

1. Retorna el nom del client, el nom i primer cognom del seu representant de vendes i el número de telèfon de l' oficina del representant de vendes, d' aquells clients que no hagin realitzat cap pagament.
2. Retorna el llistat de clients on aparegui el nom del client, el nom i primer cognom del seu representant de vendes i la ciutat on hi ha la seva oficina.
3. Retorna el nom, cognoms, lloc i telèfon de l' oficina d' aquells empleats que no siguin representant de vendes de cap client.
4. Retorna un llistat indicant totes les ciutats on hi ha oficines i el nombre d'empleats que té.
5.

# 1.5 Universitat

## 1.5.1 Model relacional

![](RackMultipart20230117-1-mtgvt6_html_2626ed8b81fe5f92.png)

## 1.5.2 Base de dades per a Postgres

Crea la base de dades universitat descarregant els scripts des de Github.

# git clone https://github.com/fbarraga/Postgres-DB

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
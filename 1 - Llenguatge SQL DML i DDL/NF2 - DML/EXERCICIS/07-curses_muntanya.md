# 1 Base de dades Curses ciclistes de Muntanya

Tags:#FpInfor #ICA0 #ICB0 #ICC0 #Administració de Sistemes Informàtics i Xarxes #Desenvolupament d'Aplicacions Multiplataforma #Desenvolupament d'Aplicacions Web #ICA0MP02 #ICB0MP02 #ICC0MP02

-----

- [1 Base de dades](#1-base-de-dades-curses-cicleistes-de-muntanya)
  - [1.1 Model relacional](#11-model-relacional)
  - [1.2 Scripts de creació de la base de dades](#12-scripts-de-creació-de-la-base-de-dades)
  - [1.3 Operacions DML (INSERT, UPDATE, DELETE)(#13-operacions-dml-insert-update-delete)
  - [1.4 Consultes](#14-consultes)

## 1.1 Model relacional

![Tabla](https://github.com/sapa-basededades/M02-M10-Bases-de-Dades/blob/main/1%20-%20Llenguatge%20SQL%20DML%20i%20DDL/DATABASES/POSTGRESQL/04%20-%20Jardineria/jardineria_erm.png)

## 1.2 Scripts de creació de la base de dades

Crea la base de dades de curses de muntanya descarregant els scripts des de Github.


- [Esquemes de Base de dades per MySQL](https://github.com/sapa-basededades/M02-M10-Bases-de-Dades/tree/main/1%20-%20Llenguatge%20SQL%20DML%20i%20DDL/DATABASES/MYSQL/db_curses_muntanya)


## 1.3 Operacions DML (INSERT, UPDATE, DELETE)

1. Afegeix-te com a ciclista i participant en 10 curses de la temporada anterior.
2. Afegeix la temporada d'enguany. Per inicialitzar aquesta temporada introdueix totes les curses i sortides de la temporada anterior.
3. El ciclista Pere Pi no s'inscriurà a la cursa de ROCACORBA d'enguany
4. Degut als incidents de l'any anterior els ciclistes de l'equip BREAKING BIKES no participaran a la cursa de LA VALL DE NURIA.
5. Els ciclistes de l'equip BLANES BIKES han aconseguit un nou espònsor anomenat BIANCHI i aquest els hi ha proporcionat noves bicicletes per tots els integrants de l'equip.
6. Inventa't 2 noves curses per aquest any i afegeix-les a la BD.
7. Degut a un cas de dopping s'ha de realitzar una penalització de 3 minuts i 2 punts a tots els ciclistes de l'equip "sense mans".
8. Diuen que aquest any la curs de SANT POL DE MAR allarguen el recorregut llarg amb 4Kms i el recorregut curt amb 1Km.
9. Tots els equips han augmentat el pressupost amb un 10% respecte l'any anterior excepte els equips de l'espònsor "INDITECH" que l'augmenten amb un 20%.
10. Introdueix a la taula de guanyadors els ciclistes que han guanyat a cada cursa de la temporada anterior. Només cal introduir els guanyadors de la ruta llarga. 

## 1.4 Consultes

1. Quin nom i quina bici tenen els ciclistes que han aconseguit més de 70 punts la temporada passada?
2. Quines són els equips dels quals no en coneixem el pressupost. Volem saber-ne el codis i els noms d'aquests equips.
3. Com es diu el director de l'equip amb major pressupost.
4. Com es diu i quina edat té el ciclista(o ciclistes) que no han participat mai en cap cursa.
5. Quantes bicicletes hi ha de cada marca?
6. Quin és el nom dels ciclistes que no tenen espònsor.
7. Quin és el nom i el director dels equips que tenen més de 2 corredors
8. Quin és el nom i la data de la cursa(o curses) on la Isabel no h i ha participat
9. Quants ciclistes hi ha de cada sexe
10. Quants minuts ha pedalejat cada ciclista(codi del ciclista i nombre de minuts).
11. Quins són els espònsors (diferents) dels ciclistes masculins. S'ha de tenir en compte els ciclistes que tenen espònsor en el seu equip i també tenen espònsor de forma individual.
12. Quantes sortides tenim documentades (dins de la BD)?
13. Llista alfabèticament el nom de cada equip i el dels seus ciclistes(ascendent)
14. Quin és el nom del(s) ciclista(es) que han abandonat en més d'una cursa
15. Quin és el director de l'equip amb menys pressupost
16. Quants minuts de mitjana pedaleja cada ciclista(individualment)
17. Quin és el codi i el nom dels ciclistes que no tenen equip.
18. Quin és l'espònsor del(s) ciclista(es) que no han participat en cap cursa
19. Quin (o quins) és el codi del ciclista que ha trigat més temps en una sortida
20. De quins pobles són les curses que han tingut més de 5 participants
21. Quin és el nombre de ciclistes que tenim a la base de dades
22. Quants punts ha obtingut cada ciclista (codi del ciclista, nom i nombre de punts)
23. Quins ciclistes tenen el mateix espònsor que el seu equip
24. A quin poble es celebra la cursa amb la ruta llarga més llarga
25. Si el pressupost d'un equip es reparteix entre els ciclistes que el formen, quin pressupost li toca a cada un. Es demana el nom de l'equip i el pressupost per ciclista.
26. Quins són els espònsors dels ciclistes femenins. Ordena'ls alfabèticament.
27. Llista les parelles formades pel nom del director amb el nom de cada un dels ciclistes de l'equip. (tot ordenat alfabèticament)
28. Quants ciclistes han anat a més de 3 sortides
29. Quins pobles tenen algun SANT O SANTA al seu nom
30. En quins pobles no s'ha fet cap sortida
31. Si suposem que un ciclista fa 5 pedalades per segon, quantes pedalades haurà fet cada ciclista que ha acabat la curs del poble d'Oix.
32. Diga'm el nom dels diferents espònsors incloent els d'equips i els personals.
33. Quants minuts ha pedalat cada ciclista la temporada passada
34. Quines són les diferents marques de bicicleta que tenim documentades
35. Quants minuts de mitjana ha pedalat cada ciclista al llarg de la seva carrera professional.
36. Com es diuen els directors dels equips que tenen un pressupost inferior a la mitjana
37. Quins espònsors patrocinen a més d'un equip.
38. Quin és el nom de la ciclista que ha sumat més punts comptant totes les curses de la temporada anterior.
39. Hi ha algun equip que tingui un espònsor amb un nom semblant a «Cola»
40. Quina és la ruta més curta i quins són els noms dels ciclistes que hi han participat de la temporada passada.
41. Quin(s) són el nom , el poble i la data de les curses amb més de 5 participants
42. Quin és el nom dels ciclistes de l'equip «Sense Mans»
43. Quants punts han acumulats tots els ciclistes junts en totes les curses durant la temporada anterior.
44. Quants punts han acumulat els diferents equip?Si un ciclista no pertany a cap equip cal que es mostri com si ell fos un equip.
45. Fes una classificació (rànquing) total dels acumulats de cada un dels espònsors personals. Interessa veure el nom de l'espònsor, els punts i els minuts que han sumat cada un d'ells.
46. Quin és el nom i el sexe dels ciclistes que tenen una bici de la marca «Trek»
47. Quin és el codi, el nom i l'edat dels ciclistes que no han participat a cap sortida.
48. Quina és la ruta més curta de la temporada passada
49. Llista una classificació d'arribada de cada cursa: nom de la curs, nom del corredor i temps.
50. Quin és el temps mitjà que triguen LES ciclistes en cada una de les curses.
51. Quins equips tenen el mateix pressupost. Indica el nom i el pressupost.
52. Hi ha algun ciclista que també sigui director d'algun equip?

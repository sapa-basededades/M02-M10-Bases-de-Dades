# 1.4 Base de dades Jardineria

- [1.4 Base de dades Jardineria](#14-base-de-dades-jardineria)
  - [1.4.1 Model relacional](#141-model-relacional)
  - [1.4.2 Scripts de creació de la base de dades](#142-scripts-de-creació-de-la-base-de-dades)
  - [1.4.4 Consultes sobre una taula](#144-consultes-sobre-una-taula)
  - [1.4.5 Consultes multitaula (INNER JOIN)](#145-consultes-multitaula-inner-join)
  - [1.4.6 Consultes multitaula (OUTER JOIN)](#146-consultes-multitaula-outer-join)
  - [1.4.7 Consultes resum](#147-consultes-resum)
  - [1.4.8 Subconsultes](#148-subconsultes)
    - [1.4.8.1 Amb operadors bàsics de comparació](#1481-amb-operadors-bàsics-de-comparació)
    - [1.4.8.2 Subconsultes amb ALL i ANY](#1482-subconsultes-amb-all-i-any)
    - [1.4.8.3 Subconsultes amb IN i NOT IN](#1483-subconsultes-amb-in-i-not-in)
    - [1.4.8.4 Subconsultes amb EXISTS i NOT EXISTS](#1484-subconsultes-amb-exists-i-not-exists)
  - [1.4.9 Consultes variades](#149-consultes-variades)

## 1.4.1 Model relacional

![Tabla](https://github.com/sapa-basededades/M02-M10-Bases-de-Dades/blob/main/master/assets/4-MR_jardineria.png?raw=true)

## 1.4.2 Scripts de creació de la base de dades

Crea la base de dades jardineria descarregant els scripts des de Github.

* Postgres:
 [git clone https://github.com/fbarraga/Postgres-DB](Path)

* MySQL:

## 1.4.4 Consultes sobre una taula

1. Retorna un llistat amb el codi d' oficina i la ciutat on hi ha oficines.
2. Retorna un llistat amb la ciutat i el telèfon de les oficines d'Espanya.
3. Retorna un llistat amb el nom, cognoms i email dels empleats el cap dels quals té un codi de cap igual a 7.
4. Retorna el nom del lloc, nom, cognoms i email del cap de l' empresa.
5. Retorna un llistat amb el nom, cognoms i lloc d' aquells empleats que no siguin representants de vendes.
6. Retorna un llistat amb el nom dels tots els clients espanyols.
7. Retorna un llistat amb els diferents estats pels quals pot passar una comanda.
8. Retorna un llistat amb el codi de client d'aquells clients que van realitzar algun pagament el 2008. Tingui en compte que haurà d' eliminar aquells codis de client que apareguin repetits. Resolgui la consulta:
9. Utilitzant la funció EXTRACT.
10. Utilitzant la funció TO\_CHAR.
11. Sense utilitzar cap de les funcions anteriors.
12. Retorna un llistat amb el codi de comanda, codi de client, data esperada i data de lliurament de les comandes que no han estat lliurades a temps.
13. Retorna un llistat amb el codi de comanda, codi de client, data esperada i data de lliurament de les comandes la data de lliurament de les quals ha estat almenys dos dies abans de la data esperada.
14. Retorna un llistat de totes les comandes que van ser **rebutjades** el 2009.
15. Retorna un llistat de totes les comandes que han estat **lliurades** el mes de gener de qualsevol any.
16. Retorna un llistat amb tots els pagaments que es van realitzar l' any 2008 mitjançant PayPal. Ordeni el resultat de major a menor.
17. Retorna un llistat amb totes les formes de pagament que apareixen a la taula pagament. Tingui en compte que no han d' aparèixer formes de pagament repetides.
18. Retorna un llistat amb tots els productes que pertanyen a la gamma Ornamentals i que tenen més de 100 unitats en estoc. El llistat haurà d' estar ordenat pel seu preu de venda, mostrant en primer lloc els de major preu.
19. Retorna un llistat amb tots els clients que siguin de la ciutat de Madrid i el representant de vendes del qual tingui el codi d' empleat 11 o 30.

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
2. Quants clients té cada país?
3. Quin va ser el pagament mitjà el 2009?
4. Quantes comandes hi ha a cada estat? Ordena el resultat de forma descendent pel nombre de comandes.
5. Calcula el preu de venda del producte més car i més barat en una mateixa consulta.
6. Quants clients existeixen amb domicili a la ciutat de Madrid?
7. ¿Calcula quants clients té cadascuna de les ciutats que comencen per M?
8. Retorna el nom dels representants de vendes i el nombre de clients al qual atén cadascun.
9. Calcula el nombre de clients que no té assignat representant de vendes.
10. Calcula la data del primer i últim pagament realitzat per cadascun dels clients. El llistat haurà de mostrar el nom i els cognoms de cada client.
11. Calcula el nombre de productes diferents que hi ha en cadascuna de les comandes.
12. Calcula la suma de la quantitat total de tots els productes que apareixen en cadascuna de les comandes.
13. Retorna un llistat dels 20 productes més venuts i el nombre total d'unitats que s'han venut de cadascun. El llistat haurà d' estar ordenat pel nombre total d' unitats venudes.
14. La facturació que ha tingut l' empresa en tota la història, indicant la base imposable, l' IVA i el total facturat. La base imposable es calcula sumant el cost del producte pel nombre d' unitats venudes de la taula detalle\_pedido. L'IVA és el 21 % de la base imposable, i el total la suma dels dos camps anteriors.
15. La mateixa informació que en la pregunta anterior, però agrupada per codi de producte.
16. La mateixa informació que en la pregunta anterior, però agrupada per codi de producte filtrada pels codis que comencin per OR.
17. Llista les vendes totals dels productes que hagin facturat més de 3000 euros. Es mostrarà el nom, unitats venudes, total facturat i total facturat amb impostos (21% IVA).
18. Mostri la suma total de tots els pagaments que es van realitzar per a cadascun dels anys que apareixen a la taula pagaments.

## 1.4.8 Subconsultes

### 1.4.8.1 Amb operadors bàsics de comparació

1. Retorna el nom del client amb major límit de crèdit.
2. Retorna el nom del producte que tingui el preu de venda més car.
3. Retorna el nom del producte del qual s' han venut més unitats. (Tingui en compte que haurà de calcular quin és el nombre total d'unitats que s'han venut de cada producte a partir de les dades de la taula detalle\_pedido)
4. Els clients el límit de crèdit dels quals sigui més gran que els pagaments que hagi realitzat. (Sense utilitzar INNER JOIN).
5. Retorna el producte que més unitats té en estoc.
6. Retorna el producte que menys unitats té en estoc.
7. Retorna el nom, els cognoms i l'email dels empleats que estan a càrrec **d'Alberto Soria**.

### 1.4.8.2 Subconsultes amb ALL i ANY

1. Retorna el nom del client amb major límit de crèdit
2. Retorna el nom del producte que tingui el preu de venda més car.
3. Retorna el producte que menys unitats té en estoc.

### 1.4.8.3 Subconsultes amb IN i NOT IN

1. Retorna el nom, cognom i càrrec dels empleats que no representin cap client.
2. Retorna un llistat que mostri només els clients que no han realitzat cap pagament.
3. Retorna un llistat que mostri només els clients que sí que han realitzat algun pagament.
4. Retorna un llistat dels productes que mai han aparegut en una comanda.
5. Retorna el nom, cognoms, lloc i telèfon de l' oficina d' aquells empleats que no siguin representant de vendes de cap client.
6. Retorna les oficines on **no treballen** cap dels empleats que hagin estat els representants de vendes d'algun client que hagi realitzat la compra d'algun producte de la gamma 'Frutales'.
7. Retorna un llistat amb els clients que han realitzat alguna comanda però no han realitzat cap pagament.

### 1.4.8.4 Subconsultes amb EXISTS i NOT EXISTS

1. Retorna un llistat que mostri només els clients que no han realitzat cap pagament.
2. Retorna un llistat que mostri només els clients que sí que han realitzat algun pagament.
3. Retorna un llistat dels productes que mai han aparegut en una comanda.
4. Retorna un llistat dels productes que han aparegut en una comanda alguna vegada.

## 1.4.9 Consultes variades

1. Retorna el llistat de clients indicant el nom del client i quantes comandes ha realitzat. Tingui en compte que poden existir clients que no han realitzat cap comanda.
2. Retorna un llistat amb els noms dels clients i el total pagat per cadascun d' ells. Tingui en compte que poden existir clients que no han realitzat cap pagament.
3. Retorna el nom dels clients que hagin fet comandes el 2008 ordenats alfabèticament de menor a major.
4. Retorna el nom del client, el nom i primer cognom del seu representant de vendes i el número de telèfon de l' oficina del representant de vendes, d' aquells clients que no hagin realitzat cap pagament.
5. Retorna el llistat de clients on aparegui el nom del client, el nom i primer cognom del seu representant de vendes i la ciutat on hi ha la seva oficina.
6. Retorna el nom, cognoms, lloc i telèfon de l' oficina d' aquells empleats que no siguin representant de vendes de cap client.
7. Retorna un llistat indicant totes les ciutats on hi ha oficines i el nombre d'empleats que té.

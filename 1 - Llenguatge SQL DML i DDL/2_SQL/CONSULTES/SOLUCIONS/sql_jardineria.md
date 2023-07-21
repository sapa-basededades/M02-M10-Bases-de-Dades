# Exercicis a classe. 

## Realització de consultes SQL

### Contingut

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

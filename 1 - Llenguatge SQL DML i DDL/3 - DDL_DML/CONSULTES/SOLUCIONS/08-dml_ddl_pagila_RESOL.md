
# Exemples de sentències SQL DML DDL
## Versió 1.0 
### BD: Pagila 

1. Crear una taula FILM_AUX que tingui com a columnes (film_id,title,length i category_id) a partir de fer un SELECT sobre les taules que convingui.(FILM,FILM_CATEGORY)

<center>
<details>
    <summary>Solució</summary>

    
```sql
    CREATE TABLE FILM_AUX AS 
    (
        SELECT film_id,title,length,category_id
        FROM FILM fi
        INNER JOIN film_category fc ON fi.film_id=fc.film_id
        INNER JOIN category ca ON ca.category_id=fc.category_id
    );
```
</details>
</br>
</center>

2. Sobre la taula FILM_AUX actualitza la length de les pel·lícules, posar un valor de 90 a totes les que siguin de tipus 'Action'.

<center>
<details>
    <summary>Solució</summary>  

```sql
    UPDATE FILM_AUX fa
    SET LENGTH = 90
    FROM CATEGORY ca
    WHERE ca.category_id=fa.category_id
    AND ca.name='Action';
   
```
</details>
</br>
</center>

3. Modifica la taula FILM_AUX i afegeix un camp enter que es digui num_copies

<center>
<details>
    <summary>Solució</summary>  

```sql
    ALTER TABLE FILM_AUX
    ADD COLUMN num_copies INTEGER;
```
</details>
</br>
</center>


4. Actualitza la taula FILM_AUX amb el número de còpies que té cada pel·lícula.

<center>
<details>
    <summary>Solució</summary>  

```sql
    UPDATE FILM_AUX fa
    SET num_copies = taulaaux.ncopies
    FROM  (
        SELECT film_id,COUNT(inventory_id) ncopies
        FROM film fi
        INNER JOIN inventory inv ON fi.film_id=inv.film_id
        GROUP BY film_id) taulaaux
    WHERE fa.film_id=taula_aux.film_id;
   
```
</details>
</br>
</center>

5. Crea un taula CAT_AUX que tingui les columnes (category_id integer,name varchar(255),film_count_1 integer,film_length integer,film_length_max integer)

<center>
<details>
    <summary>Solució</summary>  

```sql
    CREATE TABLE CAT_AUX (category_id INTEGER, name VARCHAR(255), film_count_1 INTEGER, film_length INTEGER, film_length_max INTEGER);
```
</details>
</br>
</center>

6. Inserta  les columnes (category_id i name) de la taula Category en aquesta taula CAT_AUX amb una única sentència.

<center>
<details>
    <summary>Solució</summary>  

```sql
    INSERT INTO CAT_AUX (category_id,name)
    SELECT ca.category_id,ca.name
    FROM category;
   
```
</details>
</br>
</center>

7. Modifica la columna film_length amb la suma de la length de totes les pel·lícules que son de la mateixa categoria.

<center>
<details>
    <summary>Solució</summary>  

```sql
    UPDATE CAT_AUX fa
    SET LENGTH = taulaaux.duracio
    FROM (
        SELECT fc.category_id,sum(fi.length) duracio
        FROM film fi
        INNER JOIN film_category fc ON fc.film_id=fi.category_id)
        GROUP by ca.category_id
        ) taulaaux
    WHERE fa.category_id=taula_aux.category_id;
```
</details>
</br>
</center>

8. Modifica la columna film_length amb la duració de la pel·lícula més llarga de la seva categoria.

<center>
<details>
    <summary>Solució</summary>  

```sql
    UPDATE CAT_AUX fa
    SET LENGTH = taulaaux.duracio
    FROM (
        SELECT fc.category_id,MAX(fi.length) duracio
        FROM film fi
        INNER JOIN film_category fc ON fc.film_id=fi.category_id)
        GROUP by ca.category_id
        ) taulaaux
    WHERE fa.category_id=taula_aux.category_id;
```
</details>
</br>
</center>

9. Crea una taula RENT_AUX a partir d'un SELECT de la taula rental que ens doni les 5 pel·lícules que més s'han llogat. Els camps d'aquesta taula han de ser film_id, title, rental_count

<center>
<details>
    <summary>Solució</summary>  

```sql
    CREATE TABLE RENT_AUX (film_id INTEGER, title VARCHAR(255), rental_count INTEGER) AS
    SELECT fi.film_id,fi.title,COUNT(re.rental_id)
    FROM film fi
    INNER JOIN inventory inv ON fi.film_id=inv.film_id
    INNER JOIN rental re ON re.inventory_id=inv.inventory_id
    GROUP by fi.film_id,fi.title
    ORDER BY COUNT(re.rental_id) DESC
    LIMIT 5;
   
```
</details>
</br>
</center>

10.  Elimina les taules FILM_AUX, CAT_AUX, RENT_AUX.

<center>
<details>
    <summary>Solució</summary>  

```sql
    DROP TABLE FILM_AUX;
    DROP TABLE CAT_AUX;
    DROP TABLE RENT_AUX;
   
```
</details>
</br>
</center>



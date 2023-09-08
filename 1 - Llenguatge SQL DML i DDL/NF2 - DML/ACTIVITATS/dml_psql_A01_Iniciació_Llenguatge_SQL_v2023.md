# A01 – Conèixer entorn PostgreSQL i primeres sentències SQL

## Descripció de l'activitat

- Treballarem amb l'eina psql de PostgreSQL i amb la base de dades HR. 
- Pots consultar els esquemes de la Base de Dades en el següent link: [Esquemes de Base de dades per PostgreSQL](https://github.com/sapa-basededades/M02-M10-Bases-de-Dades/tree/main/1%20-%20Llenguatge%20SQL%20DML%20i%20DDL/DATABASES/POSTGRESQL)
- Format d'entrega en pdf.

## Tasques

### Part 1: Conèixer l'entorn

Aquesta primera part és per fer-se amb l'entorn, simplement heu de seguir les instruccions que s'indiquen (part no puntuable).

1. Inicieu una sessió i coneixeu l'entorn. Executeu les següents comandes (mostreu una captura de pantalla de les comandes executades en l'entorn psql):

    ```bash
    su postgres
    psql
    \l                          ' per veure les base de dades
    \c hr                       ' connectem a hr
    \dt                         ' per veure les taules
    \du                         ' per veure els usuaris
    ```

2. La següent sentencia SELECT s'executa correctament (mostreu una captura de pantalla):

    ```sql
    SELECT last\_name, job\_id, salary as sal
    FROM employees;
    ```

3. La següent sentencia SELECT s'executa correctament (mostreu una captura de pantalla):

    ```sql
    SELECT *
    FROM jobs;
    ```

### Part 2: Primeres sentències SQL

1. **Mostreu l'estructura** de la taula DEPARTMENTS.
2. **Seleccioneu** totes les dades de la taula DEPARTMENTS.
3. **Mostreu l'estructura** de la taula EMPLOYEES.
4. **Creeu una consulta** per a mostrar el cognom, el codi de càrrec (job_id), la data de contractació (hire\_date) i el número d'empleat per a cada empleat, amb el número d'empleat en primer lloc. Proporcioneu un alies, _STARTDATE_, per a la columna HIRE\_DATE.
5. **Creeu una consulta** per a mostrar codis de càrrec **únics** (job_id) de la taula EMPLOYEES.
6. **Creeu una consulta** on mostreu el cognom concatenat amb el codi de càrrec, separats per una coma i un espai i anomeneu la columna com _Employee and title.
7. **Creeu una consulta** per a mostrar totes les dades de la taula EMPLOYEES. Separeu cada columna amb una coma. Anomeneu la columna com _THE\_OUTPUT_.
8. **Creeu una consulta** per mostrar el salari mensual dels EMPLOYEES, tenint en compte que a la taula teniu el salari anual.
9. **Creeu una consulta** per mostrar el "street address", "postal code" , "city " i "State_province" de la taula LOCATIONS tot concatenat amb un espai entre elles. Renombreu la columna com Adreca Postal.

## Resultats d'aprenentatge

- RA1. Consulta i modifica la informació emmagatzemada en una base de dades emprant assistents, eines gràfiques i el llenguatge de manipulació de dades.
- 1.a. Identifica les funcions, la sintaxi i les ordres bàsiques del llenguatge SQL (llenguatge d’interrogació estructurat) per consultar i modificar les dades de la base de dades de manera interactiva.
- 1.b. Empra assistents, eines gràfiques i el llenguatge de manipulació de dades sobre un SGBDR corporatiu de manera interactiva i tenint en compte les regles sintàctiques.
- 1.c. Realitza consultes simples de selecció sobre una taula (amb restricció i ordenació) per consultar les dades d’una base de dades.

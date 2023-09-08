# A02 – Us de restricció i ordenació de dades en sentències SQL simples

## Descripció de l'activitat

- Treballarem amb PostGreSQL i base de dades **HR**.
- Pots consultar els esquemes de la Base de Dades en el següent link: [Esquemes de Base de dades per PostgreSQL](https://github.com/sapa-basededades/M02-M10-Bases-de-Dades/tree/main/1%20-%20Llenguatge%20SQL%20DML%20i%20DDL/DATABASES/POSTGRESQL)
- Format d'entrega en pdf.
- No adjunteu captures de pantalla ni de la consulta ni amb els resultats.
- Les imatges son orientatives
- Només vull la sentencia SQL escrita (així en cas de dubte la puc copiar-enganxar i executar-la)
- Exemple:

    Mostra totes les columnes dels empleats.

        ```sql
        SELECT * FROM EMPLOYEES; 
        ```

Per saber de quina taula i camps es demana la informació de cada consulta acostumeu-vos primer abans de preguntar-me a:

- Fer servir el propi entorn d'execució de consultes per veure aquesta informació amb la comanda *\d \<nom de la taula\>*
- Utilitzant l'entorn gràfic pgAdmin4:
  
  ![Tabla](assets/pgadmin.png?raw=true)

## Resultats d'aprenentatge

RA1. Consulta i modifica la informació emmagatzemada en una base de dades emprant assistents, eines gràfiques i el llenguatge de manipulació de dades.
- 1.a. Identifica les funcions, la sintaxi i les ordres bàsiques del llenguatge SQL (llenguatge d’interrogació estructurat) per consultar i modificar les dades de la base de dades de manera interactiva.
- 1.b. Empra assistents, eines gràfiques i el llenguatge de manipulació de dades sobre un SGBDR corporatiu de manera interactiva i tenint en compte les regles sintàctiques.
- 1.c. Realitza consultes simples de selecció sobre una taula (amb restricció i ordenació) per consultar les dades d’una base de dades.

## Tasques

### Part 1: Consultes diverses a la BD (20 punts)

1. Mostrar el cognom, nom i salari dels empleats que guanyen **més** de 12000. (1punt)
2. Mostra tota la informació dels països ordenada per nom de país. (1punt)
3. Volem saber el cognom, número de departament i e-mail de l'empleat 176. (1punt)
4. Mostra totes les dades dels empleats contractats a partir del 1996. (1 punt)
5. Mostrar el codi d'empleat, nom, cognoms i salari dels empleats que tenen un sou menor de 9000 o bé superior o igual a 17000. Ordena les dades segons el salari de menor a major. (1 punt)
6. Mostra el nom, cognoms i salari dels empleats on el seu sou no estigui entre 8000 ni 10000. (1 punt)
7. Mostra el codi d'empleat, nom, cognom i el número de departament de tots els empleats que pertanyen al departament 2 o al departament 5. Ordena alfabèticament per cognom, nom. (1 punt)
8. Mostra el codi d'empleat, cognom, el número de departament i el salari de tots els empleats que guanyen entre 5000 i 12000 i estan en el departament 2 o 5. Anomena les columnes codi empleat com a IDEMPL i el salari com a SALARI\_MENSUAL. (2 punts)
9. Mostra el cognom i càrrec ( **job\_id** ) de tots els empleats **que no** tenen assignat manager(**manager\_id)**. (1 punt)
10. Mostra el cognom de tots els empleats que tinguin una 'a' i una 'e' en el cognom. (1 punt)
11. Volem fer un llistat amb el codi d'empleat, cognoms i telèfon dels empleats amb número de telèfon que comença per 590 i ordenat per cognoms. En la columna telèfon volem posar el següent text: "El telf. es: ". Tal com mostra la figura. (2 punts)
    ![Tabla](https://github.com/sapa-basededades/M02-M10-Bases-de-Dades/blob/main/master/activitats/m02_A02_im1.png?raw=true)
12. Mostra el cognom, càrrec i salari de tots els empleats on el seu salari no sigui ni 3000, 7000 ni 10000. (1 punts)
13. Mostra el cognom, salari i càrrec dels empleats que tenen un sou entre 10000 i 20000 o bé tenen com a codi de càrrec 9 (2 punts)
14. Mostra el cognom, salari i càrrec dels empleats que guanyen més de 10000 anuals i tenen com a càrrec el codi 9 o bé 5. (2 punts)
15. Mostra l'adreça, codi postal i ciutat de les localitzacions on el codi postal comença per 9, són de la ciutat de Seattle i pertanyen a Estats Units (codi país US) (2 punts)

# A03 – Ús de funcions de fila única en instruccions SQL simples

## Descripció

## Aspectes a considerar

- Treballarem amb PostGreSQL i base de dades **HR** i **PAGILA**. 
- Pots crear els esquemes de la Base de Dades en el següent link: [Esquemes de Base de dades](https://github.com/sapa-basededades/M02-M10-Bases-de-Dades/tree/main/1%20-%20Llenguatge%20SQL%20DML%20i%20DDL/1%20-%20DATABASES/ESQUEMES/1%20-%20POSTGRES)
- Pots consultar el model relacional en el següent link:
  - [Pagila]()
  - [HR]()

- Format d'entrega en pdf.
- No adjunteu captures de pantalla ni de la consulta ni amb els resultats.
- Les imatges son orientatives
- Només vull la sentencia SQL escrita (així en cas de dubte la puc copiar-enganxar i executar-la)

## Part 1 BDD HR

1. Escriu una consulta per a mostrar la data actual. Etiqueta la columna com Date.(1 punt)
2. Per a cada empleat, mostra el número d'empleat, el cognom, el salari i el salari amb un augment del 15.5% i expressat amb número enter, etiqueteu-lo com **nou salari**. (1 punt)

    ![Tabla](https://github.com/sapa-basededades/M02-M10-Bases-de-Dades/blob/main/master/activitats/m02_A03_im2.png?raw=true)

3. Modifica la consulta anterior per afegir una columna que resti el salari antic al nou. Etiqueteu la columna com **Increment**. (1 punt)

    ![Tabla](https://github.com/sapa-basededades/M02-M10-Bases-de-Dades/blob/main/master/activitats/m02_A03_im3.png?raw=true)

4. Escriviu una consulta que mostri de tots els empleats els cognoms dels quals comencin per J, A o M, el cognom de l'empleat, el email amb la primera lletra en majúscules així com la longitud del cognom. Ordeneu els resultats alfabèticament per el cognom de l'empleat. (2 punts)

    ![Tabla](https://github.com/sapa-basededades/M02-M10-Bases-de-Dades/blob/main/master/activitats/m02_A03_im4.png?raw=true)

5. Per a cada empleat, mostreu el seu cognom i calculeu el número de mesos entre el dia d'avui i la data de contractació. Etiqueteu la columna com **mesos treballats** , ordeneu els resultats segons el número de mesos treballats. Arrodoniu el número de mesos cap amunt fins el número enter més proper. (2 punts)
6. Creeu una consulta per a mostrar el cognom i el salari de tots els empleats. Formateu el salari per a que tingui 15 caràcters de longitud, ompliu a l'esquerra amb $. Etiqueteu la columna **SALARY**. (2 punts)

    ![Tabla](https://github.com/sapa-basededades/M02-M10-Bases-de-Dades/blob/main/master/activitats/m02_A03_im6.png?raw=true)

7. Mostreu el cognom de cada empleat, així com la data de contractació i la data de revisió del primer salari, que va ser el primer dilluns després de sis mesos de servei. Etiqueteu la columna **REVIEW.** Formateu les dates per a que aparegui en un format com el de la imatge. (2 punts)

    ![Tabla](https://github.com/sapa-basededades/M02-M10-Bases-de-Dades/blob/main/master/activitats/m02_A03_im7.png?raw=true)

8. Crea una consulta que mostri el cognom i les comissions dels empleats. Si un empleat no cobra comissió, poseu "No Commission". Etiqueteu la columna **COMM**.(1 punt)

    ![Tabla](https://github.com/sapa-basededades/M02-M10-Bases-de-Dades/blob/main/master/activitats/m02_A03_im8.png?raw=true)

### Part 2. BDD PAGILA

9. Crea una consulta que mostri el títol de les pel·lícules, l'any de publicació i que indiqui la durada de lloguer (rental\_duration) amb asteriscos. Cada asterisc significa un dia. Ordeneu les dades per any de publicació en ordre ascendent. Etiqueteu la columna **FILMS\_AND\_THEIR\_DURATION**. (1 punt)

    ![Tabla](https://github.com/sapa-basededades/M02-M10-Bases-de-Dades/blob/main/master/activitats/m02_A03_im9.png?raw=true)

10. Utilitzant la funció CASE, escriviu una consulta que mostri el grau de totes les categories basant-se en el valor de la columna **NAME** segons les següents dades: (1 punt)

    | CATEGORY NAME | GRADE |
    |---------------|-------|
    |Action |A|
    |Drama |B|
    |Comedy |C|
    |Family |D|
    |Animation|E|
    |Cap dels anteriors| U|

    Mostreu el codi de categoria, el nom, grau i ordeneu per grau.

    ![Tabla](https://github.com/sapa-basededades/M02-M10-Bases-de-Dades/blob/main/master/activitats/m02_A03_im10.png?raw=true)

11. Volem formatar els EMAILS dels clients canviant els punts per guions. Això ha de funcionar independentment de on estiguin els punts. (2 punts)

    ![Tabla](https://github.com/sapa-basededades/M02-M10-Bases-de-Dades/blob/main/master/activitats/m02_A03_im11.png?raw=true)

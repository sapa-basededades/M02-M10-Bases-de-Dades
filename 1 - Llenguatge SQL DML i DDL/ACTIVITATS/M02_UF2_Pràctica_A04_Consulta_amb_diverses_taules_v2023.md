
# A04 – Consulta de dades de vàries taules.

## Part 1. Base de dades HR (12 punts)

1. Mostra de cada empleat el seu codi, cognom, nom i nom del departament en el que treballa. Ordena les dades per codi empleat. (Taules implicades: employees, departments). (1 punt)

    ![Tabla](https://github.com/sapa-basededades/M02-M10-Bases-de-Dades/blob/main/master/activitats/m02_A04_im1.png?raw=true)

(Han de sortir un total de 40 files)

1. Mostra de la taula dependents el seu codi, nom i cognom juntament amb el codi d'empleat, nom i cognom de l'empleat de qui és depenent (Taules implicades: employees, dependents) (1 punt)

![](RackMultipart20230721-1-p05yx7_html_b13f22f473704e19.png)

( 30 files)

1. Mostra la mateixa informació que en la consulta anterior, però força a que surtin tots els empleats, encara que no tinguin dependent. (Taules implicades: employees, dependents) (1 punt)

(40 files)

1. Mostra de cada departament, el codi, el nom de departament, el codi de localització, l'adreça, el codi postal i la ciutat on està ubicat. (Taules implicades: departments, locations) (1 punt)

![](RackMultipart20230721-1-p05yx7_html_8f2c619369ec1fe7.png)

(Han de sortir un total de 11 files)

1. Mostra del departament de 'Marketing', el codi, el nom de departament, l'adreça, el codi postal i la ciutat. Per simplificar l'escriptura dona un alies a les taules ( per exemple d per departaments i l per localitzacions ). Utilitza el nom del departament per filtrar. (Taules implicades: departments, locations) (1 punt)

![](RackMultipart20230721-1-p05yx7_html_37324f059bc935ce.png)

(Ha de sortir 1 fila)

1. De les localitzacions amb codi 1400, 1700 i 2500, ens interessa saber el seu codi, la ciutat, l'estat de la província i el nom del país. Ordena per codi localització. (Taules implicades: locations, countries) (1 punt)

![](RackMultipart20230721-1-p05yx7_html_7fc0ce5a82f13bf6.png)

(3 files)

1. Volem saber, dels empleats que van ser contractats abans del 1998 i que tenen un salari entre 10000 i 20000, quins pertanyen al departament de Vendes ( 'Sales' ) o de Comptes ( 'Accounting' ). Mostrar el codi empleat, nom, nom de departament, **any** de contractació i salari. Ordena les dades per nom de departament. (Taules implicades: employees, departments) (2 punts)

![](RackMultipart20230721-1-p05yx7_html_b7b7c3adce86eb17.png)

(3 files)

1. Mostra els empleats que treballen (JOB\_TITLE) com a 'Programmer' o 'Sales' ( qualsevol 'Sales'). Volem saber el codi empleat, cognoms, el nom del treball, el seu salari, el salari mínim de la categoria a la que estan assignats i el nom del departament en el que treballen. Ordena les dades per JOB\_TITLE. (Taules implicades: employees, jobs i departments) (1 punt)

![](RackMultipart20230721-1-p05yx7_html_54d765f8ae5a9c8c.png)

(Han de sortir un total de 11 files)

1. Partint de la consulta anterior mostra només els que guanyen més de 1000 euros respecte el salari mínim. (Taules implicades: employees, jobs i departments) (1 punt)

![](RackMultipart20230721-1-p05yx7_html_446c99342d1c014a.png)

(Han de sortir un total de 6 files)

1. Mostra el cognom i el número d'empleat, junt amb el cognom i el número del seu director. Han de sortir tots els empleats encara que no tinguin assignat cap director. Etiqueteu les columnes Employee, EMP, Manager y MNG, respectivament. (2 punts)

![](RackMultipart20230721-1-p05yx7_html_54b92c461a9f2b38.png)

(40 files)

## Part 2. Bdd Pagila (11p)

1. Visualitza el cognom y el nom del carrer per a tots els clients que tinguin la lletra **a** en el cognom. (2 punts)

![](RackMultipart20230721-1-p05yx7_html_dfebd69abf7e1f3e.png)

(294 files)

1. Escriu una consulta per a mostrar el cognom del client, el nom del carrer, l'identificador de ciutat i el país de tots els clients de Japó. (2 punts)

![](RackMultipart20230721-1-p05yx7_html_ac223af16057237a.png)

(31 files)

1. Crea un llistat únic dels actors que han participat en una pel·lícula de ciència ficció l'any 2006 (release\_year). (2 punts)

![](RackMultipart20230721-1-p05yx7_html_dafa152fba5113b9.png)

(166 files)

1. Escriu una consulta per a visualitzar el número de còpia (inventory\_id), títol i codi de botiga (store\_id) d'aquelles còpies que no han estat llogades. (2 punts)

(1 fila)

1. Mostra un llistat complert dels encarregats de les botigues, amb el codi, nom i cognom, email, i _ **adreça complerta** _, tal com es mostra en la captura. (2 punts)

![](RackMultipart20230721-1-p05yx7_html_595c035d0cafd672.png)

( 2 files )

1. Mostra una consulta para visualitzar el codi de pel·lícula, el títol, l'any d'estrena, el preu del lloguer, l'idioma, el codi de còpia i el nom de l'encarregat. Ordena els resultats per idioma en ordre descendent, nom d'encarregat i codi de còpia. **Mostra tots els idiomes encara que no tinguin cap pel·lícula associada.** Etiqueta les columnes com es mostra a la imatge. (2 punts)

(Us haurien de sortir 4628 files)

![](RackMultipart20230721-1-p05yx7_html_bd6631989285656b.png)

2
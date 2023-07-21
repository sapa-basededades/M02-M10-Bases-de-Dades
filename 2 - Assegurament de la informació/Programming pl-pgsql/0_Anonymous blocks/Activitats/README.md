# Curs: Introducció a Postgres

## Programació amb PL/PgSQL

### Exercicis de Blocs anònims (Anonymous blocks)

* Exercici 1.
Crea un bloc anònim de benvinguda. 
El programa ha de mostrar per pantalla el missatge Hello World!

* Exercici 2.
Crea un bloc anònim amb dues variables numèriques i et digui quin d’aquests números és el més gran.

* Exercici 3. 
Fes un bloc anònim on donat un número de línies et mostri tants * com línies de la següent manera:
Ex: 3 línies
```
*
**
***
```
* Exercici 4. 
Fes un bloc anònim amb una variable que representarà el codi codi d’empleat i es mostri per pantalla el seu nom, cognom i salari tal com es veu a continuació. Suposarem que el codi d’empleat introduït existeix. Utilitza %TYPE per assignar els tipus a les variables que necessitis.
 
* Exercici 5. 
Fes un bloc anònim amb una variable que representa el codi d’un departament i et mostri per pantalla les dades del departament. Utilitza el tipus %ROWTYPE per carregar les dades en variables. La sortida ha de com la següent:
 
* Exercici 6. 
Fes un bloc anònim on et mostri per pantalla quin és el codi de departament major.

* Exercici 7. 
Fes un bloc anònim  amb una variable que representi el nom d’un departament nou i a continuació l’insereixi a la taula DEPARTMENTS. El codi de departament s’obtindrà automàticament sumant 1 al departament amb id màxim. No cal indicar manager_id ni location_id.

* Exercici 8. 
Fes un bloc anònim en que  a partir d’un codi de departament i un nom,  actualitzi el departament indicant el nou nom.

* Exercici 9. 
Fes un bloc anònim en que et permeti eliminar el departament amb el  codi de departament més gran. 

* Exercici 10. 
Crea PRIMER una taula amb un sol camp numèric. 
CREATE TABLE ex10 (id NUMBER(4));
A continuació fes un bloc anònim on a partir d’un número de registres que vols introduir en la taula i et generi la següent seqüència  dins la taula(per exemple per 10 registres):

![Tabla](https://github.com/fbarraga/Postgres-DB/blob/main/UF3/Programming%20pl-pgsql/Anonymous%20blocks/Activitats/image.png?raw=true)

Per poder repetir l’exercici amb diferents registres esborra al principi, dins el propi bloc anònim totes les dades de la taula.


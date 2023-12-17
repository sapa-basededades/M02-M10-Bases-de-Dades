# Catalonia COVID Database

Base de dades que conté el número de casos positius confirmats de COVID durant l'any 2020 i fins el 9 de juliol del 2021.
Les dades s'han extret del [Portal de dades obertes de la Generalitat de Catalunya](https://analisi.transparenciacatalunya.cat/):
* [Registre de casos de COVID 19 a Catalunya per municipi](https://analisi.transparenciacatalunya.cat/Salut/Registre-de-casos-de-COVID-19-a-Catalunya-per-muni/jj6z-iyrp)
* [Registres de dades COVID-19 als centres educatius](https://analisi.transparenciacatalunya.cat/Educaci-/Dades-COVID-19-als-centres-educatius/fk8v-uqfv)


Aquesta base de dades va destinada a usos didàctics en assignatures com base de dades, gestió i administració de base de dades.

* Model de la base de dades en format Workbench  [model-covid_db.mwb](./model-covid_db.mwb)
* El fitxer [covid_db-schema.sql](./covid_db-schema.sql) conté les sentències DDL per la generació de l'esquema/estructura de la base de dades.
* El fitxer [covid_db-data.zip](covid_db-data.zip) conté les sentències DML per poder afegir les dades per cada taula de la la base de dades.

Les seves taules principals són:

* **Provincies (4 registres)**
* **Comarques (~42 registres)**
* **Municipis (~766 registres)**
* **Tipus de Casos (5 registres):** Conté els tipus de casos que s'han classificat amb les diferents maneres/proves fetes per detectar positius (Positiu per Test Ràpid, Epidemiològic, Positiu per ELISA, Positiu per ELISA, Positiu per PCR, Positiu per TAR).
* **Casos (~155.500 registres):** En aquesta taula conté el número de casos que hi ha hagut en una municipi per sexe i tipus de cas (Positiu per PCR, Test Ràpid,...)
* **Centres Educatius Casos (~ 450.000 registres)**

data_generació: Data de la descàrrega de les dades del TRAÇACOVID
data_creació: Data en que s'ha introduït la dada en el sistema

* **Centres Educatius (~ 3.800 registres)**

> Aquesta base de dades no conté cap índex que no sigui una clau primària, foranao algun índex de tipus únic.
> 
> Tampoc conté cap control d'entrada de dades excepte les restriccions d'integritat referencial proporcionades per les claus foranes i les restriccions d'unicitat de les claus primàries o els índexs de tipus únic.


Autor: [Robert Ventura Vall-llovera](https://www.linkedin.com/in/robertvallllovera/ "Perfil LinkedIn Robert Ventura Vall-llovera"), professor de Cicles Formatius d'Informàtica per la Generalitat de Catalunya .

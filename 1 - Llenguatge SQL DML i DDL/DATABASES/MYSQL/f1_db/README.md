# Base de dades de F1 (Fórmula 1)

Aquesta base de dades s'ha extret de la web Ergast (https://ergast.com/mrd/) a on conté les estadístiques de les diferents compteicions de F1 que hi han hagut durant els últims temps a partir de l'any 1950.

> [!WARNING]
> Aquest projecte està obsolet i no es manté. S'ha traspassat al projecte [jolpica-f1](https://github.com/jolpica/jolpica-f1)

# Esquema de la base de dades

L'esquema de la base de dades es mostra en el document [f1db_user_guide.txt](f1db_user_guide.txt).
o també trobareu un diagrama en el fitxer [db_diagram.png](db_diagram.png).

A continuació de detallen alguns aspectes a considerar a nivell d'interpretació de certes taules/camps.

## Taula ***sprintResults*** i ***results***

* **D: Disqualified** -> Desqualificat: Alguna raó sancionadora per part de comissaris, com per exemple, no respectar un semàfor vermell.
* **E: Excluded** -> Exclòs: Desqualificat a posteriori per algun tema il·legal (les verificacions de pes, de flexibilitat dels alerons, mostra de combustible,... no s'han superat) 
* **F: Failed to qualify** -> No classificat a la qualificació: Els pilots quan hi ha la qualificació no poden qualificar amb un temps superior al 107% del que ha fet la pole per evitar cotxes lents el dia de la cursa. 
* **N: Non Classified** -> No classificat: per algun motiu de reglament es considera que no ha acabat la cursa (per exemple, hi ha un mínim de distància a recorrer en un gran premi, si un cotxe per exemple a la volta 20 para, s'està 20 voltes a boxes, torna i en queden 10, a nivell de km no haurà fet probablement ni el 60%, seria un motiu). 
* **R: Retired** -> Retirat: el pilot ha abandonat per algun motiu durant la cursa. 
* **W: Withdrew** -> No participa: és quan s'ha classificat a la qualificació però per algun motiu no participa a la cursa (per exemple, li ha fallat el cotxe a la volta d'escalfament) 

## Taula ***status***

Aquesta taula està relacionada amb **results** i **sprintResults**

* **Finished:** Ha finalitzat
* **Disqualified:** Desqualificat
* **Accident:** Accident, El pilot ha tingut un accident ell sol
* **Collision:** Xoc i/o accident que han intervingut més d'un pilot/cotxe 
* **Engine: motor**
* **Gearbox:** Canvi de marxes
* **Transmission:** Transmissió
* **Clutch:** Embragatge 
* **Hydraulics:** Problema hidràulic
* **Electrical:** Problema elèctric
* **+1......9 Laps:** Diferència de voltes amb el guanyador
* **Spun off:** Virolla 
* **Radiator:** Radiador 
* **Suspension:** Suspensió 
* **Brakes:** Frens
* **Differential:** Diferencial
* **Overheating:** Sobreescalfament

## Taula ***constructorStandings***

Aquesta taula contempla la classificació de les escuderies en les diferents curses. 

El camp `points` és un acumulat dels punts que porta l'escuderia dins de la temporada.

Els camp  `position` i `positionText` són les classficiacions de l'escuderia dins de la temporada

El camp `wins` és un acumulat de les victòries de l'escuderia dins de la temporada.

## Notes i altres consideracions

* Quan la posició de sortida és igual a 0 (zero) significa que no surten de la graella de sortida, sinó des de boxes/pitlane.

# Contingut de la base de dades

Trobareu script de creació de la base de dades juntament amb les dades dins del fitxer [f1db.zip](f1db.zip)

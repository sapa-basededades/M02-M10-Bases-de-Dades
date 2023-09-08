# A06 - Creació de taules i manipulació de dades

## Descripció de l'activitat

Realitzar un dels següents exercicis que representen diferents supòsits a partir dels requeriments per a l'obtenció d'una base de dades relacional.

L'elecció de l'exercici es realitzarà en funció del següents càlcul:
- D són els dos darrers números del DNI de l'alumne.
- A són els dos darrers números del vostre any de naixement.
- M és el número que correspon al mes de la vostra data de naixement

N = (D+A+M) mod 4

| N | EXERCICI |
| --- | --- |
| 0 | A |
| 1 | B |
| 2 | C |
| 3 | D |

**És molt important que especifiqueu el vostre DNI i la fórmula mitjançant la que heu obtingut el número d'exercici a resoldre.**

```text
Cal lliurar un sol fitxer .sql:
- que genera la base de dades i les taules
- que crea les files i actualitza les taules de la base de dades.
- que elimina totes les taules de la base de dades.
```

**En cadascun dels exercicis has de crear en el SGBD Postgresql la base de dades a partir de l'esquema lògic proposat. Creeu una nova base de dades amb la sentencia Create Database \<nom\_base\_dades\> amb l'usuari postgres.** 

## Resultats d'aprenentatge
RA1. Consulta i modifica la informació emmagatzemada en una base de dades emprant assistents, eines gràfiques i el llenguatge de manipulació de dades.
- 1.a. Identifica les funcions, la sintaxi i les ordres bàsiques del llenguatge SQL (llenguatge d’interrogació estructurat) per consultar i modificar les dades de la base de dades de manera interactiva.
- 1.b. Empra assistents, eines gràfiques i el llenguatge de manipulació de dades sobre un SGBDR corporatiu de manera interactiva i tenint en compte les regles sintàctiques.
- 1.c. Realitza consultes simples de selecció sobre una taula (amb restricció i ordenació) per consultar les dades d’una base de dades.
- 1.d. Realitza consultes utilitzant funcions afegides i valors nuls
- 1.e. Realitza consultes amb diverses taules mitjançant composicions internes
- 1.f. Realitza consultes amb diverses taules mitjançant composicions externes.
- 1.g. Realitza consultes amb subconsultes
- 1.h. **Identifica eines i sentències per modificar el contingut de la base de dades**
- 1.i. **Formula consultes per inserir, modificar i/o eliminar dades de la base de dades**
- 1.j. **Insereix en una taula dades com a resultat de l’execució d’una consulta**
  

## Tasques

### Exercici A

De cares a la propera temporada un club de futbol vol dissenyar una base de dades per tal de controlar tot el Club. La base de dades que dissenyeu haurà de tenir en compte els següents apartats:

▪ El Club té molts de socis. De cada un d'ells a part de les seves dades personals ens interessa saber tota la informació dels rebuts que com a soci ha anat pagant. Periòdicament el club, per cada soci genera el corresponent rebut que ha de pagar. Per cada soci se li genera el rebut 1, el 2, el 3 i així successivament. A més ens interessa saber el seu import, la data en que s'ha de pagar i el seu estat (pagat, pendent, retornat,....).

▪ Aquest club disposa de moltes seccions (futbol, bàsquet, handbol,...). Cada secció està perfectament identificada i també ens interessa saber el seu telèfon, número de fax, e- Mail...

▪ Els socis poden estar abonats a una o més seccions, per exemple hi ha socis que solament ho estan a la secció de futbol, altres solament de la de la bàsquet i altres a totes les seccions. Ens interessa saber des de quina data un soci està abonat a una secció.

▪ Cada secció té un representant a la Junta de Govern del Club. Aquesta Junta està formada per moltes més persones (no totes elles representants de seccions) i només ens interessa saber les dades personals dels membres que la formen.

▪ Els diferents equips ho són d'una única secció i estan agrupats per categories (tenim per exemple les categories infantils, juvenils, sènior,....). De cada categoria poden tenir varis equips. Cada equip ens ve identificat per un codi i també ens interessa saber el seu nom i patrocinador.

▪ Cada equip està format per un conjunt de jugadors. Cada jugador ho és d'un únic equip. Per qüestions del reglament que solament permet jugar un número concret de jugadors no comunitaris ens interessa saber les nacionalitats que té cada jugador i que poden ser més d'una. També ens interessa saber des de quina data té cada jugador una determinada nacionalitat

▪ Cada equip pot tenir un o més entrenadors i un entrenador pot ser-ho de varis equips, especialment en les categories infantils. A cada equip un entrenador i fa una tasca concreta que ens interessa saber (per exemple, entrenador principal, entrenador de porters, preparador físic....).

**MODEL RELACIONAL OBTINGUT:**

- SOCI( **soci\_nif** , soci\_nom, soci\_cog1, soci\_cog2, soci\_adreça, soci\_codipostal, soci\_poblacio, soci\_telefon)
- REBUT( **numero\_rebut** , _ **soci\_nif** _, data\_rebut, estat\_rebut, import)
- JUNTA( **junta\_nif** , junta\_nom, junta\_cog1, junta\_cog2, junta\_adreça, junta\_codi\_postal, junta\_poblacio, junta\_telefon, junta\_mobil)
- SECCIO( **seccio\_codi** , seccio\_nom, seccio\_telefon, seccio\_fax, seccio\_e\_mail, _junta\_nif_)
- CATEGORIA( **categoria\_codi,** nom\_categoria)
- EQUIP( **equip\_codi,** equip\_nom, equip\_patrocinador, _seccio\_codi, categoria\_codi_ )
- JUGADOR( **jug\_id,** jugador\_nom, jug\_cog1, jugador\_cog2, jug\_data\_naixement, _equip\_codi_)
- NACIONALITAT( **nac\_sigles\_id** , nac\_nom)
- NACIONALITATS\_JUGADORS(_ **jug\_identificador, nac\_sigles\_id** _, data\_nacionalitat)
- ENTRENADOR( **entrenador\_id** , entrenador\_nom, entrenador\_cognoms )
- ABONATS(_ **soci\_Nif** _ , _ **seccio\_codi** _ , data\_soci\_seccio)
- TASCA\_ENTRENADOR(_ **entrenador\_id, equip\_codi,** _ tasca, data\_inici\_tasca)

**NOTA:**

▪ Un camp en **negreta** significa clau primària.

▪ Un camp en _cursiva_ significa clau forana.

▪ Un camp en _ **negreta i cursiva** _ significa clau primària i clau forana.

**Part I – Crear l'estructura de la base de dades (6 punts)**

Per cada taula heu de:

▪ Definir les claus primàries i foranes segons el model relacional.

▪ Definir el tipus de dades i la mida d'aquests.

▪ Definir quines dades no poden contenir valors NULL.

▪ Indiqueu les següents restriccions:

| TAULA | CAMP | RESTRICCIÓ | VALOR |
| --- | --- | --- | --- |
| REBUT | DATA\_REBUT | DEFAULT | Data del sistema |
| REBUT | ESTAT\_REBUT | DEFAULT | 'Pendent' |
| SECCIO | SECCIO\_NOM | CHECK | Tot en majúscules |
| SECCIO | SECCIO\_EMAIL | CHECK | Ha de contenir el símbol @ amb alguna dada a la part esquerra i alguna dada a la part dreta. |
| CATEGORIA | NOM\_CATEGORIA | CHECK | Primera lletra en majúscules |
| EQUIP | EQUIP\_NOM | UNIQUE | No pot haver valors duplicats |
| NACIONALITAT\_JUGADORS | DATA\_NACIONALITAT | DEFAULT | Data del sistema |
| ABONATS | DATA\_SOCI\_SECCIO | DEFAULT | Data d'inici de la temporada (inventeu-vos-la) |

**Part II – Altres. (4 punts)**

Les sentències DML que es demanen a continuació s'han d'executar dins d'una transacció, cada un dels apartats.

- Inserir per a cadascuna de les taules el número de files indicat en el següent quadre: (Inventeu les valors tot tenint en compte que han de complir les restriccions abans esmentades, les dates han de ser d'aquest any (excepte dates de naixement o nacionalitat), s'han de complir també totes les regles d'integritat) (2 punts)

| TAULA | Nº Registres |
| --- | --- |
| SOCI | 10 |
| REBUT | 2 |
| JUNTA | 3 |
| SECCIÓ | 3 |
| CATEGORIA | 6 |
| EQUIP | 6 |
| JUGADOR | 10 |
| NACIONALITAT | 5 |
| NACIONALITATS\_JUGADORS | 12 (2 jugadors amb 2 nacionalitats) |
| ENTRENADOR | 6 |
| ABONATS | 6 |
| TASCA\_ENTRENADOR | 6 |

- Realitza les següents actualitzacions a la base de dades: (2 punts)

1. Modifica tots els rebuts del mes de novembre que estiguin pendents a l'estat 'Pagat'.
2. El soci número 2 ha retornat el rebut del mes d'octubre, modifica'l a l'estat 'Retornat'
3. Un jugador acaba de rebre la nacionalitat 'Andorrana' en data 15/11/2021 (si la nacionalitat Andorrana no existeix a la taula Nacionalitat afegeix-la)
4. Hem substituït a l'entrenador d'un dels equips, dona d'alta el nou entrenador i elimina l'entrenador existent, juntament amb les tasques que realitzava.
5. Hem incrementat l'import de tots els rebuts de novembre en un 0,5%.

### Exercici B

De cares a l'obertura de la propera temporada un parc d'atraccions vol dissenyar una base de dades per a controlar el manteniment de les seves instal·lacions. La base de dades que dissenyeu haurà de tenir en compte els següents apartats:

- Per cada atracció es vol guardar un identificador, el nom, la data en que es va instal·lar, la periodicitat amb la que s'ha de revisar (mensual, bimensual, trimestral, semestral o anual), i la seva posició geogràfica (longitud i latitud).

- S'han estipulat uns requisits d'alçada i/o edat per als usuaris de les atraccions que estaran associats a cada atracció. (p.e.: Alçada mínima 90cm acompanyat d'un adult, o entre 3 i 12 anys). Dels requisits ens guardarem un identificador únic, l'alçada mínima, l'alçada màxima, l'edat mínima, l'edat màxima, apte per infants (Si o No) i si els infants han d'anar acompanyats d'un adult (Si o No).

- Les atraccions poden ser revisades per una o més empreses, de les que es guardarà el nom, el NIF (per poder facturar), el telèfon i un nom de contacte.

- Per a cada actuació d'una empresa en una atracció es guardarà només la data en que es va fer la darrera revisió, el temps que ha passat des de llavors i els empleats de l'empresa que la van fer.

- Per seguretat, és important mantenir la informació de cada treballador de les diferents empreses que intervenen en la revisió, de manera que es guardarà a la base de dades el seu nom i cognoms, el seu nif, que servirà com a identificador, i la data en que va entrar a treballar a l'empresa. També es guardarà quin és el seu superior.

- Per motius tècnics de manteniment necessitem saber determinades característiques d'alguns dels treballadors. Dels electricistes necessitem registrar si poden signar butlletins d'instal·lació (Si o No) i la data en la que es varen treure el títol que ho acredita, i dels electrònics necessitem saber quina és la seva especialització. Es pot donar la circumstància que un mateix treballador sigui electricista facultat per signar butlletins i electrònic.

- Per tal de realitzar un seguiment més acurat de l'estat de les atraccions, es vol guardar la valoració (valor entre 0 i 5) i comentaris que facin els diferents usuaris, dels que guardarem un identificador, el nom, cognoms, adreça de correu electrònic i data del comentari.

**MODEL RELACIONAL OBTINGUT:**

- ATRACCIO ( **codi\_atraccio** , nom\_atraccio, data\_inauguracio, periodicitat\_revisio, posicio\_longitut, posicio\_latitut, _Id\_requisit_)
- REQUISIT\_ATRACCIO( **Id\_requisit** , edat\_minima, edat\_maxima, alçada\_minima, alçada\_maxima, apte\_infant, acompanyat\_adult)
- EMPRESA ( **CIF** , nom\_empresa, telefon, nom\_contacte)
- TREBALLADOR( **NIF** , nom\_treballador, primer\_cognom, segon\_cognom, _nif\_supervisor, CIF\_empresa,_ data\_inici)
- ELECTRICISTA(_ **NIF** _, signa\_butlleti, data\_titulacio)
- ELECTRONIC(_ **NIF** _, titulacio)
- REVISIO (_ **codi\_atraccio, CIF\_empresa, NIF\_treballador** _, **data\_revisio** )
- USUARI( **Id\_usuari** , nom\_usuari, cognoms\_usuari, email)
- VALORACIÓ(_ **Id\_usuari,** _ **data\_hora\_valoracio** , valoracio, comentari, _codi\_atraccio_)

**NOTA:**

▪ Un camp en **negreta** significa clau primària.

▪ Un camp en _cursiva_ significa clau forana.

▪ Un camp en _ **negreta i cursiva** _ significa clau primària i clau forana.

**Part I – Crear l'estructura de la base de dades (6 punts)**

Per cada taula heu de:

▪ Definir les claus primàries i foranes segons el model relacional.

▪ Definir el tipus de dades i la mida d'aquests.

▪ Definir quines dades no poden contenir valors NULL.

▪ Indiqueu les següents restriccions:

| **TAULA** | **CAMP** | **RESTRICCIÓ** | **VALOR** |
| --- | --- | --- | --- |
| EMPRESA | NOM\_EMPRESA | CHECK | Tot en majúscules |
| ATRACCIÓ | NOM\_ATRACCIÓ | UNIQUE | No poden haver dues atraccions amb el mateix nom. |
| REQUISIT\_ATRACCIÓ | APTE\_INFANT, ACOMPANYAT\_ADULT | CHECK | Només admetem valors 'Si', 'No' |
| TREBALLADOR | PRIMER\_COGNOM, SEGON\_COGNOM | CHECK | Primera lletra en majúscules |
| ELECTRICISTA | SIGNA\_BUTLLETI | CHECK | Només admetem valors 'Si', 'No' |
| REVISIO | DATA\_REVISIÓ | DEFAULT | Data del sistema |
| USUARI | EMAIL | CHECK | Ha de contenir el caràcter @ i ha d'haver un o més caràcters a dreta I esquerra de @.
 |
| VALORACIO | VALORACIO | CHECK | La valoració ha de ser un valor numèric entre 0 i 5
 |

**Part II – Altres. (4 punts)**

Les sentències DML que es demanen a continuació s'han d'executar dins d'una transacció, cada un dels apartats.

- Inserir per a cadascuna de les taules el número de files indicat en el següent quadre: (Inventeu les valors tot tenint en compte que han de complir les restriccions abans esmentades, les dates han de ser d'aquest, s'han de complir també totes les regles d'integritat) (2 punts)

| **TAULA** | **Nº REGISTRES** |
| --- | --- |
| ATRACCIO | 4 |
| REQUISIT\_ATRACCIO | 4 |
| EMPRESA | 4 |
| TREBALLADOR | 10 |
| ELECTRICISTA | 6 |
| ELECTRONIC | 2 |
| REVISIO | 10 |
| USUARI | 5 |
| VALORACIÓ | 10 |

- Realitza les següents actualitzacions a la base de dades: (2 punts)

1. Actualitza la periodicitat de totes les atraccions de gener de 2021 i que tenen periodicitat 'Mensual' a periodicitat 'Bimensual'.
2. L'empresa amb CIF 'XXX' ha modificat el número de telèfon a 9999922, actualitza'l.
3. L'empresa amb CIF 'XXX' ha contractat un nou treballador, dona'l d'alta (inventa la informació). A més aquest treballador és electricista i pot signar butlletins des de la data '01/01/2019'.
4. Hem donat de baixa a l'usuari amb id = 1 perquè era un 'bot', elimina'l juntament amb tots els seus comentaris.
5. Hem detectat un error en la data de revisió de les revisions fetes el mes de juny, aquestes s'haurien fet durant el mes de juliol, incrementa en 1 mes la data de revisió.

### Exercici C

El propietari d'una important cadena de supermercats ens ha encarregat dissenyar una base de dades per portar el control i la gestió dels aspectes referents al seu negoci. La base de dades que dissenyeu haurà de tenir en compte els següents apartats:

- Cadascun dels supermercats estarà perfectament identificat amb un codi, un nom i una adreça. A més, cada supermercat disposarà dels seus propis empleats. Naturalment, cada supermercat de la cadena tindrà molts empleats tot i que cadascun d'ells només treballarà en un determinat supermercat. Cada supermercat té un empleat que el dirigeix i volem que això també quedi reflectit.

- Dels empleats volem guardar el NIF, el nom i cognoms.

- Cada supermercat disposa de varies caixes. Per cada súper identifiquem les caixes de la mateixa manera: 1, 2, 3, etc. i guardarem també la data de la última revisió tècnica que es va fer a cada caixa.

- Els productes del supermercat estan perfectament identificats pel codi intern, un codi de barres i ens interessa saber també el seu nom i el preu de venda. També ens interessa saber la quantitat de producte (stock) que hi ha en cada supermercat i quina és la quantitat mínima que hi ha d'haver a cada supermercat abans de demanar-ne més als proveïdors.

- Quan falta algun producte, el supermercat el compra a qualsevol dels seus proveïdors. Volem guardar únicament la quantitat, el preu i la data en que es va realitzar la última compra de cada producte a cada proveïdor. Hem de tenir en compte que les productes es poden comprar a proveïdors diferents.

- Dels proveïdors coneixem el seu CIF, Nom, Adreça, email, Telèfon i persona de contacte.

- Els clients van al supermercat a realitzar les seves compres. Alguns dels clients els tenim identificats en el nostre sistema ja que han adquirit la targeta del súper per poder optar a descomptes. D'aquests clients en sabem el seu nom complert, DNI, telèfon, data de naixement i edat i número de targeta.

- Per cada compra que es realitza es genera un tiquet amb un codi únic, una data-hora i un import total que el calcularem a partir dels productes que s'han adquirit. De cada tiquet volem saber els productes que conté així com la quantitat i preu de cada producte, i en quina de les caixes del súper s'ha generat el tiquet.

- En cas que el client el tinguem registrat voldrem saber a quin client li hem fet el tiquet i quin descompte (import) li hem aplicat.

**MODEL RELACIONAL OBTINGUT:**

- SUPERMERCAT ( **codi\_super** , nom\_super, adreça\_carrer, adreça\_codipostal, adreça\_poblacio, _NIF\_director_)
- EMPLEAT ( **NIF** , nom\_treballador, primer\_cognom, segon\_cognom, _codi\_super_)
- PRODUCTE ( **Codi\_producte** , descripció, codi\_barres, pvp)
- PROVEIDOR ( **CIF** , nom\_proveidor, adreça, email, telefon, persona\_contacte)
- PROD\_PROV (_ **Codi\_producte, CIF\_proveidor** _, data\_compra, preu\_compra, quantitat\_compra)
- STOCK\_PROD (_ **Codi\_super, Codi\_producte,** _ stock, stock\_minim)
- CAIXA (_ **Codi\_super,** _ **Num\_caixa** , data\_revisio)
- CLIENT ( **DNI\_client** _ **,** _ nom, cognoms, telefon, data\_neixement, num\_targeta)

- TIQUET ( **Id\_tiquet** , data\_hora, _Codi\_super, Num\_caixa, DNI\_client,_ Descompte)

- DETALL\_TIQUET (_ **Id\_tiquet, Codi\_producte** _ **,** preu, quantitat)

**NOTA:**

▪ Un camp en **negreta** significa clau primària.

▪ Un camp en _cursiva_ significa clau forana.

▪ Un camp en _ **negreta i cursiva** _ significa clau primària i clau forana.

**Part I – Crear l'estructura de la base de dades (6 punts)**

Per cada taula heu de:

▪ Definir les claus primàries i foranes segons el model relacional.

▪ Definir el tipus de dades i la mida d'aquests.

▪ Definir quines dades no poden contenir valors NULL.

▪ Indiqueu les següents restriccions:

| **TAULA** | **CAMP** | **RESTRICCIÓ** | **VALOR** |
| --- | --- | --- | --- |
| SUPERMERCAT | NOM\_SUPER | UNIQUE | No poden haver dos supermercats amb el mateix nom |
| PRODUCTE | PVP | CHECK | No pot ser negatiu |
| PRODUCTE | CODI\_BARRES | CHECK | La mida del codi de barres ha de ser de 13 caràcters ja que treballem amb EAN-13 |
| EMPLEAT | PRIMER\_COGNOM, SEGON\_COGNOM | CHECK | Primera lletra en majúscules |
| PROD\_PROV | QUANTITAT\_COMPRA | DEFAULT | Per defecte ha de ser 1 unitat |
| PROD\_PROV | DATA\_COMPRA | DEFAULT | Data del sistema |
| PROVEIDOR | EMAIL | CHECK | Ha de contenir el caràcter @ i ha d'haver un o més caràcters a dreta I esquerra de @. |
| STOCK\_PROD | STOCK\_MINIM | DEFAULT | Tots els productes han de tenir un valor d'stock mínim, inventeu-vos-el. |
| DETALL\_TIQUET | DESCOMPTE | CHECK | El valor del descompte ha d'estar comprès entre 0 i 1 (això també ho podeu controlar segons com definiu el tipus de dada i mida) |

**Part II – Altres. (4 punts)**

Les sentències DML que es demanen a continuació s'han d'executar dins d'una transacció, cada un dels apartats.

- Inserir per a cadascuna de les taules el número de files indicat en el següent quadre: (Inventeu les valors tot tenint en compte que han de complir les restriccions abans esmentades, les dates han de ser d'aquest, s'han de complir també totes les regles d'integritat) (2 punts)

| **TAULA** | **Nº REGISTRES** |
| --- | --- |
| SUPERMERCAT | 2 |
| EMPLEAT | 10 |
| PRODUCTE | 10 |
| PROVEIDOR | 4 |
| PROD\_PROV | 10 |
| STOCK\_PROD | 10 |
| CAIXA | 4 |
| CLIENT | 5 |
| TIQUET | 5 |
| DETALL\_TIQUET | 15 |

- Realitza les següents actualitzacions a la base de dades: (2 punts)

1. Hem detectat que els tiquets del dia 20/04/2021 de la caixa 1 realment corresponien a la caixa 2, actualitza'ls.
2. El client amb NIF 'XXX' ha modificat el número de telèfon a 9999922, actualitza'l.
3. Hem contractat un nou empleat, dona'l d'alta. Aquest empleat serà el nou director del supermercat 1.
4. Hem d'eliminar el tiquet 3 de la caixa 2, elimina'l juntament amb el seu detall.
5. El proveïdor amb id = 2 ha incrementat el preu dels seus producte un 0,5 %, actualitza'ls.

### Exercici D

El propietari d'una important empresa de lloguer de cotxes ens ha encarregat dissenyar una base de dades per portar el control i la gestió dels aspectes referents al seu negoci. La base de dades que dissenyeu haurà de tenir en compte els següents apartats:

• La cadena de lloguer de cotxes Gas pot tenir diversos establiments. De cada establiment volem enregistrar un codi d'establiment, nom i adreça.

• Cada establiment tindrà un únic encarregat que s'ocuparà de la seva gestió. Dels encarregats volem guardar un codi d'encarregat, nom, cognom, email, nom d'usuari i contrasenya. Un encarregat només gestionarà un sol establiment.

• Evidentment voldrem tenir les dades dels nostres clients. Per als clients guardarem un codi de client, nom, cognom, email. Els clients ho seran únicament d'un sol establiment.

• Per a una correcta gestió de les adreces on viuen els nostres clients i encarregats crearem una estructura formada per països, ciutats i adreces.

• Dels països guardarem un codi de país i nom.

• De les ciutats guardarem un codi de ciutat i nom.

• Les ciutats hauran de pertànyer a un únic país, els països tindran moltes ciutats.

• Per les adreces guardarem un codi d'adreça, nom del carrer, districte o barri, codi postal i telèfon de contacte.

• Una adreça haurà de pertànyer a una ciutat, evidentment en una mateixa ciutat podem tenir vàries adreces, per exemple les adreces de tots els clients de Barcelona.

• Tant els establiments, com els clients i els encarregats tindran una adreça associada, una sola adreça.

• Enregistrarem els vehicles que tenim en lloguer. Dels vehicles volem saber matrícula, marca, model, cilindrada, capacitat maleter m3, any de matriculació i preu del lloguer.

• Els vehicles es classificaran en diferents categories ( Econòmic, Compactes, SUV, Familiars, Sedan, Monovolums, ... ). De les categories guardarem un codi de categoria i una descripció. Un vehicle només pot pertànyer a una sola categoria.

• Els vehicles tindran una sèrie de característiques addicionals que compartiran, com són numero de portes, numero d'ocupants, canvi manual o automàtic, aire condicionat. D'aquestes característiques guardarem un identificador únic i una descripció ( ex: 5 portes, 5 – 7 ocupants, manual, aire condicionat )

• Els clients lloguen vehicles, necessitem saber la data de lloguer, la data de devolució, si han tornat el vehicle amb el dipòsit ple i si han contractat assegurança.

• Per acabar, volem registrar el pagament que fan els clients per el lloguer dels vehicles. Per tant un client paga per cada una dels vehicles que ha llogat. Dels pagaments volem saber l'import i la data de pagament. Un lloguer pot tenir més d'un pagament associat, aquests s'identificaran amb un número de pagament.

**MODEL RELACIONAL OBTINGUT:**

- ESTABLIMENT ( **codi\_establiment** , nom\_establiment, _codi\_adreça_, _codi\_encarregat_)
- ENCARREGAT ( **codi\_encarregat** , nom, primer\_cognom, segon\_cognom, _codi\_adreça_)
- ADREÇA ( **Codi\_adreça** , carrer, numero, codi\_postal, _codi\_ciutat_)
- CIUTAT ( **Codi\_ciutat** , nom\_ciutat, _codi\_pais_)
- PAIS ( **Codi\_pais** , nom\_pais)
- CLIENT ( **DNI\_client** _ **,** _ nom, primer\_cognom, segon\_cognom, _codi\_adreça_, email, telefon, _codi\_establiment_)
- VEHICLE ( **Matrícula** , marca, model, cilindrada, capacitat, data\_matriculacio, preu\_lloguer, _codi\_categoria_)
- CATEGORIA ( **Codi\_categoria** , descripcio)
- CARACTERISTIQUES ( **Codi** , descripcio)
- CARACTERISTIQUES\_VEHICLE(_ **Matrícula, Codi\_caracteristica** _)
- LLOGUER ( **Id\_lloguer** , data\_lloguer, data\_devolució, contr\_assegurança, contr\_diposit\_ple, _matrícula_, _dni\_client_)
- PAGAMENT (_ **Num\_pagament, Id\_lloguer,** _ data\_pagament, import)

**NOTA:**

▪ Un camp en **negreta** significa clau primària.

▪ Un camp en _cursiva_ significa clau forana.

▪ Un camp en _ **negreta i cursiva** _ significa clau primària i clau forana.

**Part I – Crear l'estructura de la base de dades (6 punts)**

Per cada taula heu de:

▪ Definir les claus primàries i foranes segons el model relacional.

▪ Definir el tipus de dades i la mida d'aquests.

▪ Definir quines dades no poden contenir valors NULL.

▪ Indiqueu les següents restriccions:

| **TAULA** | **CAMP** | **RESTRICCIÓ** | **VALOR** |
| --- | --- | --- | --- |
| ESTABLIMENT | NOM\_ESTABLIMENT | UNIQUE | No poden haver dos supermercats amb el mateix nom |
| VEHICLE | DATA\_MATRICULACIO | DEFAULT | Data del sistema |
| VEHICLE | PREU\_LLOGUER | DEFAULT | Tots els lloguers tenen el mateix preu per defecte. Inventeu-vos-el. |
| VEHICLE | PREU\_LLOGUER | CHECK | No pot ser inferior a 0 |
| LLOGUER | DATA\_LLOGUER | DEFAULT | Data del sistema |
| LLOGUER | DATA\_DEVOLUCIO | CHECK | No pot ser anterior a la data de lloguer |
| LLOGUER | CONTR\_ASSEGURANÇA, CONTR\_DIPOSITPLE | CHECK | Només es pot introduïr els valors 'Si' o 'No' |
| CLIENT | EMAIL | CHECK | Ha de contenir el caràcter @ i ha d'haver un o més caràcters a dreta I esquerra de @. |

**Part II – Altres. (4 punts)**

Les sentències DML que es demanen a continuació s'han d'executar dins d'una transacció, cada un dels apartats.

- Inserir per a cadascuna de les taules el número de files indicat en el següent quadre: (Inventeu les valors tot tenint en compte que han de complir les restriccions abans esmentades, les dates han de ser d'aquest, s'han de complir també totes les regles d'integritat) (2 punts)

| **TAULA** | **Nº REGISTRES** |
| --- | --- |
| ESTABLIMENT | 2 |
| ENCARREGAT | 2 |
| CLIENT | 8 |
| ADREÇA | 10 |
| CIUTAT | 5 |
| PAIS | 4 |
| VEHICLE | 5 |
| CATEGORIA | 3 |
| CARACTERISTIQUES | 5 |
| CARACTERISTIQUES\_VEHICLE | 10 |
| LLOGUER | 10 |
| PAGAMENT | 12 |

- Realitza les següents actualitzacions a la base de dades: (2 punts)

1. Volem canviar la categoria dels vehicles de la categoria 'SEDANE' i que tenen la característica '7 places' per la categoria 'FAMILIAR'.
2. El client amb NIF 'XXX' ha modificat el número de telèfon a 9999922, actualitza'l.
3. Hem contractat un nou encarregat per a l'establiment 1, dona'l d'alta (inventa les dades). L'anterior encarregat d'aquest establiment ha plegat, elimina'l. Elimina qualsevol altra informació vinculada a ell.
4. Hem detectat un error en el lloguer amb identificador 5, elimina'l juntament amb tots els pagaments associats..
5. Volem incrementar el preu de lloguer un 0,5 % de tots els vehicles de la marca 'BMV', actualitza'ls.



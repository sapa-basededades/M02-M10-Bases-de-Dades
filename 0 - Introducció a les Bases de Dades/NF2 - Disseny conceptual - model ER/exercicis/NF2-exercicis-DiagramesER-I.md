# Exercicis - Diagrames ER I

## HOSPITAL GENERAL 
En un centre hospitalari es desitja informatitzar part de la gestió relativa a pacients i els seus ingressos. Després de l’anàlisi realitzat, s’estableixen els següents requeriments: 
 
* Les dades d’interès que es desitja emmagatzemar del pacient són: el número de la seguretat social, el DNI, el nom complet i la data de naixement. A més cada pacient també té un codi únic que l’identifica.
 
* Volem registrar els ingressos que realitza el pacient. Cada ingrés vindrà identificat per un codi únic i una data-hora d’arribada, una de sortida i una descripció.

* Durant l’ingrés volem saber en quin llit ha estat el pacient. 

* Caldrà tenir en compte que els llits s’enumeren correlativament per cada planta, és a dir, existirà el llit número 12 de la tercera planta i també el número 12 de la setena planta. Les plantes de l’hospital estaran identificats per número de planta, el seu nom i el número de llits que disposa. 
 
* Per cada pacient s’entregarà fins a un màxim de 4 targetes de visita. Aquestes targetes de visita seran vàlides per visitar a un únic pacient. La targeta de visita es definirà per: Un número de targeta de visita, l’hora d’inici i l’hora de finalització en que es pot visitar el malalt. 

* Un pacient durant el seu ingrés pot tenir varies visites mèdiques. Cada visita la fa un metge determinat, tot i que el poden visitar diferents metges al llarg de l’ingrés. Volem saber la data-hora de la visita i les observacions que ha posat el metge. 

* Les dades d’interès dels metges seran el número de col·legiat i el nom complet

Heu de tenir en compte que el disseny ha de permetre:

* Saber el llit on ha estat el pacient durant el seu ingrés.
* Saber les visites que s’han realitzat durant aquell ingrés i quin metge ha realitzat cada visita.

# TOYSRUS  S.A 

L’empresa TOYSRUS  S.A, la qual dona servei a diferents països del món, està interessada en contractar els nostres serveis per al disseny d’una nova base de dades.
 
* A l’empresa li interessa conèixer molt bé les joguines existents al mercat. D’entre elles l’interessa, a més a més, distingir-ne dos tipus ja que consideren que són molt importants per les campanyes nadalenques; són les joguines educatives i les esportives (lògicament hi ha joguines que poden ser, alhora, educatives i relacionades amb algun esport). 
  
* De les joguines esportives volen saber quin és l’esport de la joguina i si es tracta d ’un esport d’equip o no. Respecte les joguines educatives volen saber quina capacitat del nen eduquen(només una, la principal) com ara; la memòria, el càlcul, el llenguatge, etc... 
  
* De les joguines volen conèixer el nom, el preu, la descripció i l’edat a partir de la qual són adequades per començar a jugar-hi. A més a més, consideren important conèixer quines joguines són equivalents entre elles, així com en quina mesura (o grau) són semblants. 
  
* L’empresa disposa de molts  magatzems on guarden les joguines. Cada magatzem té un nom (que l’identifica) i es vol conèixer la població on està situat, així com els m2 de capacitat. A cada població hi ha com a màxim un magatzem, el qual dona servei pel lliurament de les joguines. Les poblacions que no disposen de magatzem són servides per algun altre magatzem (el de la població més propera, per exemple). També volen conèixer, en tot moment, quin és l’estoc actual que hi ha al magatzem per cada joguina. 
  
* Les poblacions tenen un nom que les identifica ( però hem de tenir en compte que hi ha poblacions que es diuen igual en altres països ) i també volen conèixer el nombre d’habitants de cada població. Cal recordar que l’empresa treballa a l’àmbit internacional i per una població determinada hem de saber a quin país pertany.  
 
* Finalment, l’empresa té empleats que treballen en un magatzem determinat. Ens interessa saber la data en que ha començat a treballar en la nostra empresa i el seu salari


## LA BIBLIOTECA I

Suposem que volem dissenyar una base de dades per a una biblioteca i hem conegut que aquesta funciona de la següent forma:

A la biblioteca es troben, com és natural, una sèrie de llibres que els empleats demanen a les editorials. Quan un llibre es rep, se li dona d'alta, construint-li una fitxa per a recerca per autor i una altra fitxa per a recerca per tema. En ambdues fitxes apareixen el títol del llibre, el nom de l' autor i la seva nacionalitat, l' editorial a la qual pertany la publicació, el tema sobre el qual tracta, l' ISBN i la prestatgeria de la biblioteca en la qual es troba. Cal aclarir que a la biblioteca no es troben exemplars repetits de cap llibre. Les prestatgeries de la biblioteca suporten com a màxim 100 llibres i tenen un número i un lloc assignat dins la biblioteca. Un empleat pot demanar un llibre escrivint una carta de petició a l' editorial corresponent. La direcció a la qual ha de dirigir la carta es troba en un arxiu d' editorials.

Per accedir  als llibres de la biblioteca cal la possessió d'  un carnet que acredita els diferents usuaris. Aquest carnet es confecciona a cada persona la primera vegada que intenta retirar un llibre. Cada usuari només pot tenir retirat un llibre en cada instant determinat.

A la biblioteca els agradaria disposar d'un  llistat que es llançaria al final de cada dia i en el qual apareixeria, per a cada llibre que s'encengués retirat, el títol, l'ISBN, l'autor i el número de carnet, nom i el DNI de l'usuari que el manté retirat.

Quan un usuari intenta retirar un llibre ha de presentar el seu carnet perquè es prengui nota de la retirada. Si el llibre que desitja ha estat retirat per un altre usuari es truca a aquest per telèfon indicant-li que hi ha un altre usuari que desitja el llibre perquè el retorni en cas que no l'estigui utilitzant.

Mensualment es confecciona un inventari actualitzat on s' indica per a cada llibre el nom, l' autor i el lloc de la biblioteca on es troba.

## ELS HABITATGES

Els ajuntaments dels municipis de Catalunya volen mantenir informació actualitzada dels  habitatges ubicats en zones urbanes.  Es vol dissenyar una base de dades que inclogui les característiques dels habitatges, la seva ubicació, propietaris, persones que les habiten, etc.  Aquesta informació s'utilitzarà  amb  finalitats administratives (impostos i altres) i estadístics.  Inicialment només es considerarà informació dels  habitatges de manera individual, sense fer distinció entre pisos que formen part d' un bloc o habitatges unifamiliars.

A finals d' any, l' ajuntament de cada municipi ha de cobrar a cada propietari un impost pels habitatges que són de la seva propietat en l' actualitat. Així, emet un rebut per a cada habitatge on figura el número de registre cadastral de l'habitatge, l'adreça on s'ubica l'habitatge (carrer, número i pis), el nombre de metres quadrats i el DNI i nom del propietari (tot i que la propietat   d'un habitatge pot ser compartit per diverses  persones, a efectes de cobrament d' impostos considerem només un d' ells), a més de l ' import d' impost. Aquest rebut se li remetrà a la direcció del propietari, que per suposat no té per què coincidir amb la de l' habitatge del qual ha de pagar l' impost.

L' import de  l' impost de cada habitatge depèn de múltiples factors que s' han de considerar en el seu càlcul. Entre ells hi ha el municipi i el barri o zona urbana on s'ubica l'habitatge, els m2 de l'habitatge i el preu de taxació de l'habitatge. A aquests efectes cada província consta d' una sèrie de municipis, dels quals cal mantenir el seu nom, l' àrea i perímetre i la província a la qual pertanyen; a més per identificar cada municipi s' utilitza un codi únic a nivell regional. I el seu torn cada municipi està dividit en una sèrie de barris o zones urbanes clarament delimitades. A l' hora de calcular l' impost s' ha de fer servir el preu mitjà del m2 en aquesta zona urbana.

El propietari pot realitzar el pagament de  l' impost de dues maneres: en efectiu, dirigint-se a l' ajuntament un cop li ha arribat la notificació que ha de pagar, o a través del compte bancari que el propietari hagi indicat a l' ajuntament; en aquest  últim cas la notificació només li indica al propietari que se li cobrarà l' impost i en el rebut figurarà el compte de càrrec. No és el nostre objectiu en aquest moment mantenir informació dels impostos pagats o dels morosos. Això s'abordarà més endavant.

D'altra banda, cada cert temps des de la Junta d'Extremadura se sol·liciten una sèrie d'informes destinats a diferents conselleries. 

La Conselleria d'Habitatge i Urbanisme sol sol·licitar: 
1. Una llista de totes les zones urbanes, indicant el preu mitjà del m2, el seu nom , àrea , perímetre, coordenades geogràfiques i el municipi i província al qual pertanyen, ordenats per província i municipi
2. El mateix llistat ordenat pel preu  mig del m2 a cada zona urbana.
3. Un llistat dels habitatges buits. 
   
La Conselleria de Benestar Social d'altra banda, sol·licita un llistat dels habitatges habitats per una única persona de 70 anys o més i les dades del barri on s'ubiquen.

# LA DISTRIBUÏDORA DE PEL·LÍCULES

Una distribuïdora nacional de pel·lícules desitja mantenir certa informació sobre les pel·lícules que va a llançar pròximament, per tal de promocionar-les adequadament.

Cada cert temps s'envien anuncis per inserir als diaris. Tots els anuncis inclouen el títol de la pel·lícula, el nom de l'actor o actors principals i el nom del director (considerem que hi ha un sol director per pel·lícula). A més, per a les pel·lícules que han rebut premis importants,  l'anunci   sol incloure'n un resum  , detallant el nom del certamen, la ciutat on es va celebrar i el tipus de premi rebut (millor director, pel·lícula, actor, etc). I algunes vegades en els anuncis es ressenyen també les millors crítiques, indicant el nom del diari o revista on es va publicar la crítica, la data de publicació i l'autor que signa la crítica.

Una altra part important de la promoció consisteix a fer d'intermediaris entre els mitjans de comunicació i els participants a la pel·lícula, principalment el director, els productors i, molt especialment, els actors. Per concertar i planificar les cites cal mantenir alguna informació personal sobre els intervinents a la pel·lícula, com el seu nom complet, adreça i telèfon de contacte.  A més,   per tal de facilitar  l'elaboració del material de les entrevistes, es proporciona als mitjans de comunicació altres dades relacionades amb la pel·lícula com l'aportació econòmica de cada productor, un resum de l'argument, un llistat amb el paper concret que realitza cada actor a la pel·lícula  (cal assenyalar que considerem que un actor en una pel·lícula fa un únic paper) i també el tipus de paper (protagonista, secundari, etc), així com un resum dels premis rebuts.  És freqüent també que determinats mitjans de comunicació ens sol·licitin informació més personal sobre els actors com la seva data i lloc de naixement, el seu estat civil i sobre el sou que han cobrat per realitzar la pel·lícula.

Les setmanes prèvies a l'estrena s'informa a més als diferents mitjans de la data i el lloc de l'estrena de la pel·lícula a nivell nacional.

Anualment la distribuïdora realitza un estudi on s'inclou, entre altres coses, un rànquing de les pel·lícules més premiades per nacionalitat.

## TRÀNSIT

La Direcció General de Trànsit (DGT) vol mantenir certa informació del parc de vehicles nacional per tal de realitzar una adequada gestió de les infraccions de trànsit que es comentin.

En una primera fase es vol recopilar informació sobre les marques i models que hi ha al mercat, per la qual cosa des de les diferents cases de cotxes se'ls remet la següent informació: nom de la marca i direcció social a Espanya. Així mateix per a cada marca es recullen els noms de models de vehicles disponibles i la potència de cadascun. És d ' assenyalar que cada marca es codifica amb un número i que associat al nom del model existeix sempre un codi que depèn de la marca.

Quan un vehicle nou es matricula es registra la informació de la marca i el model del cotxe, bastidor, data de matriculació, així com  les dades del propietari. D'aquest se n'han de  conèixer: NIF, cognoms, nom, data de naixement i domicili complet  (carrer, núm. Cal tenir en compte que en la DGT es vol mantenir informació actualitzada del propietari, per la qual cosa si en algun moment es produeix un canvi de propietari s' ha d' actualitzar aquest a la base de dades, sense perdre informació de la història dels propietaris anteriors juntament amb les dates que indiquen el període de propietat,  per si de cas es necessiten per tramitar multes antigues.

D'altra banda, quan una persona comet una infracció i se li imposa una multa, l ' agent pren nota d' una sèrie de dades. En primer lloc, les dades de la persona infractora: nif, nom, cognoms, data de naixement i domicili complet (carrer, núm.   Si en la infracció ha intervingut un vehicle, es necessiten, a més, les dades de la seva matrícula, marca i model del vehicle. Cal assenyalar que les multes s'imposen a persones, no a vehicles, ja que per exemple, podria imposar-se una multa a un vianant o a un ocupant d'un vehicle. Tot i que també és cert que en la majoria de les infraccions intervé un vehicle. També han de constar en la multa la data, el número de registre personal de l'agent que ha posat la multa, l'article que ha infringit la persona infractora, el lloc exacte on ha ocorregut la infracció (carretera, quilòmetre concret i direcció) i l'import de la multa. Tot i que hi ha una guia dels articles amb les seves descripcions, en aquest moment no es vol encara emmagatzemar aquesta informació a la base de dades. Cada infracció comesa s' identifica amb un número d' expedient únic i dona lloc a una única multa.

Setmanalment a la Direcció Central de Trànsit se li envien informes on consta informació del número  d'infraccions que s'han  comès en aquella setmana, agrupades per carretera i import i un rànquing dels articles que més s'han infringit.

A més, a la unitat de trànsit a la qual pertany cada agent que ha imposat una multa se li envia mensualment una llista de les multes imposades pels seus agents i l'estat en què es troben els expedients (multa pendent, pagada, recorreguda, etc). Aquesta informació és important perquè de cop els agents han de declarar en relació amb alguna de les infraccions en què han intervingut, per a la qual cosa se' ls ha d' enviar a més una carta al seu domicili.

També cada cert temps s'obtenen estadístiques per als mitjans de comunicació sobre les característiques de les persones que cometen més infraccions (per trams d'edat, sexe, municipi i/o província de residència, etc.) i dels vehicles implicats (marques, models, etc.).


## CAMPIONAT DE FUTBOL

L' organització d' un campionat de futbol de seleccions nacionals decideix implantar un sistema que els permeti mantenir informació actualitzada sobre diversos aspectes.

Dos mesos abans del començament s' han de conèixer els equips que hi participaran, que s ' hauran classificat mitjançant unes lligues prèvies, de les quals el nostre sistema no guardarà cap informació. De cada selecció s' ha de conèixer inicialment, almenys, el país al qual representa i el nom del seleccionador. I cada selecció ha de també facilitar una llista de jugadors inscrits amb les seves dades personals i el lloc en què juguen habitualment (porter , defensa, davanter centre, lateral esquerre,..).

Un mes abans del començament    s'haurà  concretat la planificació dels partits de la ciutat on es jugarà cadascú, la data i l'hora de començament, els equips que s'enfrontaran, el nom del   el partit i  la resta de col·legiats que hi intervindran, així com almenys dos suplents. Aquesta informació se li remetrà oficialment a cada selecció, indicant-li a més quins equips s'enfrontaran en cada partit i quin actuarà d'equip local i quin de visitant. D'altra banda, a cada col·legiat se l'informarà per carta dels partits en què intervindrà i la seva funció en el partit (àrbitre principal, jutge de línia o assistent).

Un cop començat el mundial, diàriament es traurà un informe general dels partits jugats i el resultat final. A més, per a cada partit s'obtindrà un informe més detallat que inclourà els noms i nacionalitats dels col·legiats que han arbitrat, el nom dels jugadors que han intervingut en el partit, el lloc en què cadascú ha jugat (que pot ser diferent del seu lloc habitual) i els minuts que ha jugat. En aquest punt cal assenyalar que el mateix jugador només pot intervenir un cop en cada partit, és a dir, un cop el jugador ha sortit del camp no pot tornar a entrar. D'altra banda, en partits diferents el mateix jugador pot jugar en diferents llocs.

Una altra qüestió a tenir en compte  respecte als  partits són els controls antidopatge que es realitzen als jugadors que hi intervenen. De cada partit es trien una sèrie de jugadors a l'atzar de cadascun dels equips participants per realitzar-li les anàlisis. Per a cada mostra extreta, hi ha un membre de la Federació Internacional de Futbol que s'encarrega de custodiar la mostra, realitzar la tramitació de la mostra i els resultats i un laboratori encarregat de realitzar les anàlisis. L' elecció d' ambdós es realitza a l' atzar tenint en compte que un jugador mai pot tenir dues anàlisis ni amb el mateix laboratori ni amb el mateix membre de la Federació;   no obstant això, diversos jugadors (per exemple, tots els  d'un partit) podrien tenir assignat un mateix laboratori i membre de la Federació.   De cada membre de la Federació s' emmagatzema el seu nom, el seu telèfon i el seu número de targeta identificativa i dels laboratoris, el seu nom, adreça, telèfon i CIF.

Al final del campionat es lliuren, a  més  dels premis a les tres primeres seleccions classificades, un premi al jugador que més gols ha marcat i un altre al jugador que ha marcat el gol més primerenc (més a prop del començament d'una trobada), per la qual cosa cal mantenir informació, per a cada partit, de quin jugador ha marcat un gol i en què  minut del partit l'ha marcat.


## LA BIBLIOTECA II

Imagina que has aconseguit un contracte en període de prova amb una empresa d'enginyeria de programari per dissenyar els models de dades de les aplicacions. Aquesta empresa ha rebut recentment l'encàrrec d'un projecte per part d'una cadena de biblioteques privades establertes a la ciutat de Barcelona. Per provar la teva vàlua professional, aquesta empresa t'encarrega  el disseny d'una  base de dades que reculli el més fidelment possible les dades manejades per aquest conjunt de biblioteques i la seva semàntica. Després de visitar una d'aquestes biblioteques i conèixer el seu funcionament has obtingut les següents conclusions:

Les biblioteques que pertanyen a aquesta organització privada estan localitzades en diferents punts de la ciutat i cadascuna d'elles sol estar especialitzada en una àrea determinada. Cada biblioteca disposa d' un cert nombre d' exemplars del mateix llibre i un únic exemplar periòdic de cada revista a la qual està subscrita.

A cada biblioteca li està permès cada cert temps realitzar comandes d'exemplars de llibres a una sèrie d'editorials amb  les quals l'organització  manté acords.  La primera vegada que un exemplar d'un llibre es rep es cataloga. D' altra banda, les biblioteques també es poden subscriure a revistes publicades per aquestes editorials, de tal manera que a partir de la data de subscripció rebran els exemplars de manera periòdica.
La informació que s'utilitza per a la catalogació de les publicacions (llibres o revistes) és la següent:

* Nom o títol de la publicació
* Temes: conjunt de descriptors dels temes codificats per l' organització
* Editorial: nom, adreça i telèfon
* Codi ISBN, únic per a cada publicació
* Idioma de la publicació

A més, sobre els llibres també es guarden el número de l ' edició, la data de publicació i els autors i d' aquests es manté, a més del seu nom, la seva nacionalitat. De les revistes se' n guarda la periodicitat.

Cal  assenyalar  que les  dades sobre les diferents publicacions es troben centralitzades per a totes les biblioteques i per a cadascuna d' elles el que es manté és la informació dels exemplars de què disposa de cada publicació, sense tenir repetides per a cada exemplar les dades de catalogació. Per identificar els diferents exemplars del mateix llibre dins d' una biblioteca s' utilitza un número d' exemplar i, també, ens interessa la data en què va ser adquirit. Per als exemplars periòdics de les revistes utilitzarem el número real de la revista; per exemple, en una determinada biblioteca de la revista AAA a la qual la biblioteca està subscrita poden estar dipositats els números 21,22, 23 i 24.

D'altra banda, perquè una persona pugui retirar un llibre de qualsevol de les biblioteques només necessita fer-se soci d'una d'elles. Per això ha de fer una sol·licitud amb les seves dades personals (dni, nom, adreça i telèfon) i a canvi se li lliura un carnet amb un número únic que li dona dret a prendre prestats llibres o revistes de qualsevol de les biblioteques de l'organització.  A través d'internet  i amb el seu número de carnet, i com a clau el  seu DNI, el soci pot consultar els títols disponibles i en  quines biblioteques de la  l' organització pot trobar-ne exemplars i si aquests estan prestats o no. En el futur es permetrà fer reserves per la xarxa, i el soci podrà demanar que un exemplar d' un títol concret estigui disponible a la biblioteca que desitja, però aquesta opció de moment no es vol implementar.

Un cop  la persona és soci d'una   biblioteca està en disposició de sol·licitar préstecs d'exemplars, tot i que amb algunes restriccions.   En primer lloc, s' ha d' adreçar a la biblioteca que té dipositat algun exemplar del llibre o revista que vol demanar. En el cas dels llibres, els socis poden tenir en préstec diversos llibres alhora, per un període màxim d' una setmana. Els exemplars de les revistes, però, no poden ser trets de les biblioteques, i un soci no en pot tenir més alhora, del qual podrà com a  màxim disposar durant un dia, al final del qual l' haurà de retornar.  Aquesta restricció es deu al al altri que només es disposa d' un exemplar de cada número periòdic de la revista a la qual la biblioteca està subscrita. Només alguns socis especials, com investigadors acreditats, poden saltar-se aquesta restricció i tenir en préstec un exemplar d' una revista amb les mateixes condicions que per als llibres. Per a aquests socis, a més, s' ha de guardar el nom de l' entitat per a la qual treballen.

Diàriament, un quart  d'hora abans del tancament, a cada biblioteca un procés ens informa de les revistes en préstec que han de ser retornades. Setmanalment, l'organització llança un llistat amb els exemplars de llibres (i de revistes) que havent finalitzat el seu termini de préstec encara no han estat retornats pels socis, per tal de reclamar-los a aquests.

Anualment, s' obté un llistat amb tots els préstecs d' exemplars de llibres, juntament amb els socis i els períodes en què els han retirat, amb l ' objecte d' enviar-los a les editorials perquè aquestes construeixin les seves estadístiques sobre l' interès que susciten els seus llibres  en els lectors. 

També anualment s' obtenen estadístiques del nombre de socis nous que s' han inscrit a cadascuna de les biblioteques.

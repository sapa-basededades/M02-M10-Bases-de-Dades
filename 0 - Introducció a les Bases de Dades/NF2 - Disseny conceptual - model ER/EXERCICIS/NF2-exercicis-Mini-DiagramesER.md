# Exercicis - Mini diagrames ER/ERE

## EMPRESA ALIMENTÀRIA

* Volem guardar les diferents fàbriques que té l'empresa. Aquestes fàbriques s'identificaran amb un nom i ens guardarem a on estan localitzades mitjançant l'adreça, el codi postal i la població.
* Cada fàbrica pot elaborar 1 o més tipus de productes. Aquests productes s'idenfiquen mitjançant un codi, però també cal guardar-nos el nom, una descripció i un cost.

### EMPRESA ALIMENTÀRIA - EMPLEATS

* En aquestes fàbriques hi treballen operaris. Per cada operari hem de guardar-ne el dni, nom complert (nom i cognoms) i aquina fàbrica està assignat.
* Per cada operari també ens interessa guardar una llista de les seves especialitats en el treball (sistems de refrigeració, planta, de compusttge, manteniment de serveis, manteniment maquinària,...), si les té. Quan aquestes existeixin estaran qualificades de 1 a 5. Tenint en compte que un 1=poca expertesa i un 5=molta expertesa.

### EMPRESA ALIMENTÀRIA - CLIENTS

* Els clients fan les seves comandes de diferents productes a l'esmentada empresa. Dels clients ens cal saber el seu nom_fiscal i adreça electrònica i postal per poder enviar-li les factures i el nom comercial. Per poder diferenciar els clients und els altres els codifiquem mitjançant un string composat per 3 lletres i 5 dígits.
* L'empresa disposa de magatzems per poder distribuir els productes i a cada client se l'hi assigna el magatzem més proper a casa seva. Els magatzems els hem de tenir localitzats geogràficament perquè una persona serà l'encarregada d'assingar cada client al magatzem més proper.
  
**Nota:** No ens cal saber el tipus de producte que es guarda a cada magatzem i tampoc quina persona fa l'assignació del magatzem al client.
 
## IMMDd (Internet Movie Database)

Un cinèfil expert en base de dades es vol crear una Base de Dades que reculli informació sobre el món cinematogràfic

* Les pel·lícules que es volen tenir classificades vindran identificades per un codi. Guardarem també el títol de la pel·lícula, l'any de l'estrena, el pressupost, el director, etc.. A més, volem conèixer els actors que hi van intervenir així com el paper que interpretaven (principal, secundari, de repartiment, figurant o cameo)
* Dels actors  i actrius en volem guardar el seu nom complet (nom i cognoms), nom artític si el tenen i sobretot la data de naixement juntament amb la seva edat.

### IMMDd - Gèneres

* Les pel·lícules estan catalogades per diferents gèneres (comèdia, romàntica, thriller, acció,...)
* Els actors solen ser especialistes en un gènere, tot i que poden fer interpretacions en qualsevol d'ells amb diferents valoracions ( 1-10).  La valoració de 1=Molt poca puntuació, 10=Molt bona puntuació sense ser especialista del gènere.
* Cal guardar-nos les especialitats de cada actor en cada gènere així com la puntuació que té en altres gèneres.

### IMMDd - Companyies

* Els actors estan contractats per una companyia que en sabem el nom. Aquestes companyies són les que produeixen les pel·licules. O sigui posa els diners perquè aquella pel·lícula es pugui fer.
* Cap pel·lícula es co-produïda per dues o més companyies i un actor no pot treballar simultàniament en més d'una companyia.

### IMMDd - Dobles d'actors

* Ens interessa saber quins actors són semblants a altres i quin grau de similitut tenen per si cal buscar 'dobles' a les pel·lículues que interpreten.
* També ens interessa saber quins actors són incompatibles, o sigui que no haurien de treballa junts en cap pel·lícula per les desavinences que hi ha entre ells.




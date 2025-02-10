# Exercicis - Diagrames ER/ERE IV

## EMPRESA DE MOTORS

Es descriu a continuació una base de dades que conté la informació relativa a una empresa que es dedica a la fabricació de motors.
* Aquesta empresa té interès a mantenir informació sobre els diferents tipus de motors que fabrica. Els motors poden ser diesel, benzina o híbrids. Dels motors interessa conèixer el seu codi, potència en CV, consum (valor deicmal expressat amb litres/100km). Per als de gasolina es guardarà també el tipus de carburador. 
* L'empresa està dividida en seccions (DISSENY, PRE-PRODUCCIÓ, PRODUCCIÓ 1, PRODUCCIÓ 2, MÀRKETING, ADMINISTRACIÓ, DIRECCIÓ....)  Els empleats estan assignats obligatòriament a una sola secció.
* De la secció interessa saber el seu codi, nom i nombre d'empleats.
* Dels empleats interessa saber el seu DNI, NSS, nom i cognoms.
* A cada secció se li pot assignar la fabricació d'un o diversos tipus de motors, encara que existeixen seccions generals (administració, direcció...) que no tenen assignat cap tipus de motor en concret.
* Mai un tipus de motor pot ser fabricat per més d'una secció i tampoc pot canviar una vegada que se li ha assignat la fabricació d'un determinat motor.
* Entre els empleats que treballen en un tipus de motor sempre hi haurà un responsable, del que depenen altres empleats. Aquests s'anomenen encarregats de secció.
* Un empleat està assignat a una secció, però aquest pot treballar puntualment a un tipus de motor concret que no estigui assignat a la seva secció. No cal guardar-nos l'històric de si un treballador ha treballat amb molts tipus de motor, simplement hem de guardar l'útlim tipus de motor puntual amb el qual ha treballat.
* Desl empleats també ens interessa guardar dades dels seus familiars. Les dades que ens convé guardar en la base de dades (DNI, nom, cognoms).
* Els motors es componen de peces de les quals es desitja guardar dades (codi de peça, descripció, preu cost) Hem de saber la quantiat de peces que component cada motor. Hem de saber el cost total de la fabricació de cada motor.

## InstaVam!
Ens agrada la fotografia... MOLT! I ens agradaria poder compartir totes aquestes instantànies que robem diàriament! Com li podem donar visibilitat a la nostra passió? Síii! Crearem una app anomenava InstaVam!
Per tant assolir el nostre objectiu, dissenyarem una base de dades que mantingui les següents dades:

* Usuaris: àlies, correu elèctric i password dins de l’app. Els usuaris podran seguir a altres usuaris per estar al corrent de les noves publicacions que aquests facin.
* Publicacions: amb el seu nom,descripció, data i tipus de foto (geek, infantil, abstracta, paisatge, nocturna...). Sobre les fotos es podran aplicar efectes de forma que l’úsuari la pugui personalitzar.

Els usuaris podran publicar fotos i vídeos. Si són vídeos també es guardarà la seva durada i fps. A banda de publicar, els usuaris també podran valorar (m’agrada) i comentar les publicacions d’altres usuaris o les seves mateixes Aquesta valoració serà d'1 a 5.

Totes les publicacions podran geoposicionar-se en una ubicació concreta, de forma que es puguin fer cerques per proximitat (latitut/longitud) i país.


## STAR TREK

Un club de fans de StarTrek ha decidit crear una pàgina web on es pugui consultar informació referent a totes les pel·lícules i capítols de la saga. El domini startrekfans.com es redirigirà a un servidor web que consulti una base de dades amb la següent informació:

* Per als actors es necessari conèixer el seu nom complet, el personatge que interpreta, la seva data de naixement, la seva edat i la seva nacionalitat. Els podrem identificar mitjançant un codi de 4 dígits.
* Del personatges es necessari saber el nom (dada amb la que identificarem els diferents personatges) i graduació militar que desenvolupa (capità, tenient, almirant...). És important conèixer l'actor que interpreta el personatge, tenint en compte que un personatge només pot ser interpretat per un actor i un actor només por interpretar un personatge. A més, serà necessari conèixer el personatge del que depèn directament en la seva graduació militar. També, segons la seva raça, si el personatge és humà, s'indicarà la seva data de naixement i ciutat terràqüia on va nàixer. Si el personatge és de la raça Vulcà, s'emmagatzemarà el nom del seu mentor i la data de graduació, i si es de la raça Klingon, s'emmagatzemarà el seu planeta natal i la data del seu últim combat.
* S'han d'emmagatzemar tots els capítols, indicant a quina temporada pertany cada capítol, el seu títol, ordre en el que va ser rodat, data de la seva primera emisió i els personatges que van aparéixer a cada capítol.
* S'han d'emmagatzemar també totes les pel·lícules que es van projectar als cinemes, cadascuna amb el seu any d'estrena, títol i director. També s'han de guardar els personatges que apareixen a cada pel·lícula i quin d'ells va ser el protagonista.
* En cada capítol es visiten 1 o diversos planetes. S'haurà d'emmagatzemar el codi del planeta, el seu nom, la galàxia a la que pertany, el problema que es va resoldre en aquesta visita i la nau amb la qual es va viatjar al planeta. De la nau s'emmagatzemarà el nom, codi i número de tripulants.

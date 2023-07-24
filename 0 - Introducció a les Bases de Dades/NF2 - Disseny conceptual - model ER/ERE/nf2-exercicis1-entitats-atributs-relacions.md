# NF2 - Disseny conceptural - model ER /ERE
## Exercicis Entitats, atributs i relacions
### *Exercici 1* - Identifica les entitats i atributs dels següents escenaris o situacions del món real.
1. A l’hospital de Sant Socors hi visiten metges (que es caracteritzen per un DNI, i tenen nom i cognoms), que atenen pacients (que tenen un codi, nom i cognoms), els quals tenen malalties (que codifiquem amb un número i que tenen un nom tècnic i un nom comú).

2. A la botiga informàtica Segle22 hi venen productes, els quals tenen un codi de barres i un preu associat. A la botiga, hi despatxen empleats, els quals tenen DNI i nom. La botiga també disposa de proveïdors que es caracteritzen per un codi, nom i tenen un número de telèfon.

3. Volem començar a dissenyar un joc de tipus MMORPG. De moment volem guardar la informació dels usuaris (en concret el nom d’usuari, email i contrasenya), els personatges que controla (cada personatge ve definit per un codi i un nom) , la raça a la que pertany cada personatge (guardarem un codi i un nom) i les armes que pot portar. De les armes guardarem un codi, un nom...

4. En l’empresa de missatgeria Corre-si-pots hi ha dos tipus de treballadors (amb número d’afiliació a la SS, nom i cognoms): missatgers i administratius. Els missatgers tenen motos associades, i els administratius, ordinadors. Els administratius reben els paquets dels clients i els donen als missatgers associats a la zona on va destinat el paquet. La zona les codificarem amb  un codi i un nom. Dels clients en guardarem les dades bàsiques (NIF, Nom, Cognom, Telèfon…) Els missatgers agafen una moto i porten el paquet al destinatari. Del destinatari volem guardar el NIF, nom complet i l’adreça. Els paquets tenen un número de paquet, un pes associat i una adreça de destinació. Les motos tenen una matrícula i una cilindrada i els ordinadors un codi i el model. El destinatari té un NIF, nom i una adreça associats.

5. Un taller mecànic vol una base de dades dels seus mecànics.  De cada mecànic emmagatzemen les següents dades: Especialitat (exemple: pneumàtics, motor, electromecànica,.... ), data d'incorporació a l'empresa, número de treballador al llibre de registre de treballadors de l'empresa, número de la seguretat social, DNI, número de telèfon mòbil, nom i cognoms. 

6. Una web d'internet desitja guardar les dades dels seus usuaris mitjançant registre.  Les dades a emmagatzemar són: 'usuari' per entrar a la web, l'adreça de correu electrònic d'aquest usuari, la paraula de pas, data de naixement, nom i cognoms, nom complert, país ( codi ISO de dues lletres del seu país, ex: BR,DK,DE ) i la data i hora de la darrera connexió.

7. Una empresa té diferents delegacions repartides per tot el territori de Catalunya. De cada delegació s'emmagatzema l'adreça amb les següents dades: carrer i número, porta, CP. També la província i la ciutat. Cada delegació rep un nom mitjançant la ciutat a on està i un número seqüencial dins d'aquesta ciutat. Tenim per exemple: Barcelona 1, Barcelona 2 i Barcelona 3 i també Girona 1 i Albons 1. Els treballadors estan acostumats a identificar les delegacions d'aquesta manera. També podrien identificar-les per la posició geogràfica mitjançant la longitud i latitud que també es guarda a la base de dades, però no sembla tant pràctic. 

### *Exercici 2* - Identifica les entitats, atributs i les interrelacions dels següents escenaris o situacions del món real.
1. La nostra universitat súper elitista “Pijos al Poder” disposa del professorat més dedicat del món. Cada professor imparteix un únic mòdul i un mòdul només és impartit per un  professor. De cada professor guardarem el NIF, nom. De cada mòdul guardarem el codi, descripció i el número d’hores.
2. En el nostre centre els professors imparteixen varis mòduls. Un mòdul només el fa un professor.  De cada professor guardarem el NIF, nom. De cada mòdul guardarem el codi  i el número d’hores.

3. En la nostra empresa de transports internacionals tenim conductors i camions. Els conductors condueixen un únic camió de manera exclusiva (només ell porta aquell camió). De cada conductor guardarem el NIF i el nom complet. Dels vehicles volem guardar la matrícula i model.

4. En la nostra empresa de transports tenim conductors i camions. Els conductors condueixen un únic camió. Com que els conductors fan torns de 8 hores (uns de matí, altres de tardes i altres de nit) un mateix camió el pot conduir varis conductors. Volem saber per cada conductor quin camió condueix i en quin torn.


5. BMW fabrica models de vehicles que comparteixen el mateix tipus de motor. Per exemple un BMW 325i i un BMW 525i són dos models de cotxe que comparteixen el mateix tipus de motor. Cada vehicle el tenim codificat amb un codi únic i una descripció. Cada tipus de motor l’identifiquem també amb un codi únic,  cilindrada i tipus de combustible. Volem saber de cada vehicle quin motor munta.

6. Un ordinador està format per varis tipus de components i un tipus de component el podem muntar en varis ordinadors. Per exemple un tipus de CPU i7 el comparteixen varis ordinadors...Volem guardar de cada ordinador un codi, el nom comercial i una descripció. De cada component guardarem una referència, i quin tipus de component és (CPU, RAM,...). 

7. Estem fent una enquesta que volem informatitzar. L’enquesta tracta sobre els vehicles que té una persona en propietat. Una persona enquestada pot tenir cap, un o varis vehicles. De la persona guardarem el NIF, nom, data de naixement i l’edat. Del vehicle volem saber la matricula, el tipus de combustible que utilitza (Gasoil o Gasolina), l’any de fabricació i els anys que té.

### *Exercici 3* - Indica el nom i la cardinalitat que pugin tenir les següents relacions. Si consideres que hi poden haver diverses solucions, justifica la resposta.


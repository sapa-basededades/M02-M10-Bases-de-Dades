# Activitat 1: Desplegament d'un cluster PostgreSQL per replicació lògica


En aquesta guia pràctica,  configurarem un entorn robust de replicació lògica de PostgreSQL utilitzant Docker. El nostre projecte està dissenyat per simular un escenari del món real on la consistència, la disponibilitat i l'escalabilitat de les dades són clau. Això és el que aconseguirem:

1.	Creu tres instàncies de PostgreSQL: Amb Docker Compose, posarem en marxa tres instàncies de PostgreSQL separades. Aquesta configuració servirà com la columna vertebral del nostre entorn de replicació, proporcionant una visió pràctica de la gestió de múltiples bases de dades en un ecosistema contingut.
2.	Configurar la replicació lògica: totes les instàncies es configuraran per admetre la replicació lògica. Això implica establir una base de dades com a mestra (editor) i les altres dues com a rèpliques (subscriptors), establint un marc de sincronització de dades en temps real.
3.	Sincronització d'esquemes: ens assegurarem que les tres bases de dades comencin amb el mateix esquema, assentant les bases per a una replicació de dades sense problemes en la nostra configuració.
4.	Manipulació i replicació de dades: A través d' una sèrie d' exercicis de manipulació de dades, demostrarem com els canvis realitzats en la base de dades mestra es reflecteixen immediatament en les bases de dades de rèplica. Això inclou l' addició de dades i la simulació d' un temps d' inactivitat de rèplica.
5.	Escenaris de commutació per error i recuperació: simularem un escenari de commutació per error eliminant la instància mestra i promovent una rèplica perquè sigui la nova mestra. Aquesta part del projecte destacarà la resiliència i flexibilitat de la replicació lògica en el maneig d' errors inesperats de la base de dades.
6. Comprovacions de coherència de dades: En diverses etapes, verificarem que les dades continuïn sent coherents en totes les instàncies, la qual cosa demostra la fiabilitat del mecanisme de replicació lògica de PostgreSQL.
7. Inversió de rols i recuperació: Finalment, tornarem a posar en línia el mestre original com una rèplica, completant la nostra exploració de la dinàmica de replicació lògica i assegurant-nos que totes les bases de dades estiguin sincronitzades.


Al llarg d'aquest projecte, seguirem una seqüència de passos dissenyats per proporcionar una comprensió completa de la configuració i administració d' un sistema de replicació lògica en PostgreSQL.

Tot el codi, les configuracions i els arxius de Docker Compose utilitzats en aquesta guia estan disponibles en el repositori de GitHub. 

## Ambient de treball

L'únic requisit previ per a aquest tutorial és tenir Docker instal·lat a l'equip. Aquesta guia i els scripts que l'acompanyen estan dissenyats per a entorns Linux, la qual cosa proporciona una experiència fluida per als usuaris de Linux des del primer moment. No obstant això, la bellesa de Docker és la seva compatibilitat multiplataforma. Per tant, si fa servir macOS o Windows amb WSL (Subsistema de Windows per a Linux), pot seguir sense modificacions significatives. La versatilitat de Docker garanteix que la nostra configuració es pugui replicar en diferents sistemes operatius, fent-la accessible a un públic més ampli.
Si Docker encara no està instal·lat en el seu sistema, pot trobar instruccions d'instal·lació detallades al lloc web oficial de Docker. Asseguri's que Docker estigui correctament instal·lat i en execució abans de continuar amb els següents passos d'aquesta guia.
Les habilitats i els coneixements que obtindrà d' aquest tutorial no es limiten a configuracions experimentals o entorns d' aprenentatge. Els principis de la replicació lògica de PostgreSQL, quan es combinen amb la potència de Docker, tenen una àmplia aplicabilitat en escenaris del món real, especialment en entorns distribuïts entre centres de dades. Ja sigui que estigui buscant millorar la disponibilitat de dades, escalar les seves operacions de lectura o configurar un sistema sòlid de recuperació davant desastres, els conceptes que es tracten aquí li proporcionaran una base sòlida.
Si bé ens enfocem en un entorn Docker contingut per simplificar, els principis subjacents es poden extrapolar a configuracions més complexes, incloses les instàncies que s' executen en nodes separats en un centre de dades o fins i tot en diversos centres de dades. Això fa que la nostra guia sigui un recurs invaluable per a qualsevol que busqui implementar la replicació lògica en entorns de producció.
En nom de la simplicitat i per centrar-nos en els conceptes bàsics de la replicació lògica, aquesta guia no cobrirà la configuració del xifrat per a les dades en trànsit entre la base de dades mestra i la rèplica. Tanmateix, és important reconèixer que el xifrat és un aspecte fonamental per protegir les dades en entorns de producció. En les aplicacions del món real, garantir la seguretat de les dades en trànsit mitjançant SSL/TLS o altres mètodes de xifrat és essencial per protegir-se contra les escoltes i els atacs d'intermediari.
Si bé aquest tutorial no aprofundeix en les configuracions de xifrat, ha d' explorar la documentació de PostgreSQL sobre la protecció de la seva base de dades i considerar el xifrat com una part integral de la configuració de la replicació lògica en un entorn de producció.







## Reconeixements:

https://dev.to/ietxaniz/practical-postgresql-logical-replication-setting-up-an-experimentation-environment-using-docker-4h50
# MongoDB i Python

## Preparar python per connectar a MongoDB

PyMongo és una biblioteca de Python que permet interactuar amb bases de dades MongoDB.

Per instal·lar-ho ho farem mitjançant la comanda pip

```console
regular@debian:~$ pip3 install pymongo
```

## Exemple bàsic amb mongodb on premise. Creació de la BD

Crearem una base de dades "personal" que ens servirà per anar introduint mongo amb Python.
Totes les opcions de pymongo les podeu trobar a la [documentació oficial](https://www.mongodb.com/docs/drivers/pymongo/)

* Pas 1: Creem la base de dades i les col·leccions

```console
regular@debian:~$ mongo --quiet -u adminbdd
Enter password: 
> db
test
> use personal
switched to db personal
> db
personal
> db.createCollection("dades_persones")
{ "ok" : 1 }
> db.createCollection("telefons")
{ "ok" : 1 }
> db.createCollection("codis_postals")
{ "ok" : 1 }
```

* Pas 2: Introduim dades de mostra

```console
> db.codis_postals.insertOne( { cp: "17300", poblacio: "blanes" } );
{
"acknowledged" : true,
"insertedId" : ObjectId("60814ef462735bfd9cfc898b")
}
> db.codis_postals.insertOne( { cp: "17310", poblacio: "lloret" } );
{
"acknowledged" : true,
"insertedId" : ObjectId("60814f0e62735bfd9cfc898c")
}
> db.codis_postals.insertOne( { cp: "17320", poblacio: "tossa de mar" } );
{
"acknowledged" : true,
"insertedId" : ObjectId("60814f2562735bfd9cfc898d")
}

> db.dades_persones.insertOne( { dni: "42542836w", nom: "joan", cognoms: "garcia sanchez", codpos: "17320", dnaix: "17/03/1996" } );
{
"acknowledged" : true,
"insertedId" : ObjectId("60814f3e62735bfd9cfc898e")
}
> db.dades_persones.insertOne( { dni: "43728117m", nom: "laura", cognoms: "sanchez perez", codpos: "17300", dnaix: "24/07/1984" } );
{
"acknowledged" : true,
"insertedId" : ObjectId("60814f5062735bfd9cfc898f")
}
> db.dades_persones.insertOne( { dni: "34657111j", nom: "marta", cognoms: "arnau mesa", codpos: "17300", dnaix: "19/12/1974" } );
{
"acknowledged" : true,
"insertedId" : ObjectId("60814fde415cbde041c25b79")
}
> db.telefons.insertOne( { dni: "42542836w", num: "972342175" } );
{
"acknowledged" : true,
"insertedId" : ObjectId("60814ffd415cbde041c25b7a")
}
> db.telefons.insertOne( { dni: "3728117m", num: "972335784" } );
{
"acknowledged" : true,
"insertedId" : ObjectId("6081502c415cbde041c25b7b")
}
> db.telefons.insertOne( { dni: "34657111j", num: "972335611" } );
{
"acknowledged" : true,
"insertedId" : ObjectId("60815043415cbde041c25b7c")
}
> db.telefons.insertOne( { dni: "3728117m", num: "650584721" } );
{
"acknowledged" : true,
"insertedId" : ObjectId("60815067415cbde041c25b7d")
}
> exit
```

## Exemple bàsic amb MongoDB. Programar amb python accedint a la BD

* Exemple 1: Creem un petit programa en python per cercar documents

```python
# cerca-nom.py
import pymongo

client = pymongo.MongoClient(host="localhost",
                             port=27017,
                             username="adminbd",
                             password="12345678")
# El primer que fem es seleccionar la base de dades escollint-la desde la connexió. En aquest cas la bd es personal
base_de_dades = client.personal
# De la base de dades "personal" agafem la colecció "dades_persones" i busquem un document on el nom sigui Joan
document = base_de_dades["dades_persones"].find_one({"nom":"joan"})
print(document)
print()
print(document["dni"])
print(document["nom"])
print(document["cognoms"])
print()
client.close()
```

* Exemple 2: Creem un programa en python per llistar documents

```python
# llistar-cp.py
import pymongo
client = pymongo.MongoClient(host="localhost",
                             port=27017,
                             username="adminbdd",
                            password="12345678")
base_de_dades = client.personal
# Si no especifiquem cap clàusula en el find() retorna tots els registres en format llista, que després podem recorrer amb unfor
for doc in base_de_dades["codis_postals"].find():
    print(doc)
print()
for doc in base_de_dades["codis_postals"].find():
    print(f"{doc['cp']} {doc['poblacio']}")
client.close()
```

* Exemple 3: Crear un programa que retorni el cp en funció de la població

```python

# llistar_cp_pob.py
import sys
import pymongo

pob = sys.argv[1]
client = pymongo.MongoClient(host="localhost",
                             port=27017,
                             username="adminbdd",
                             password="12345678")
base_de_dades = client.personal
doc = base_de_dades["codis_postals"].find_one({"poblacio":pob})
if not doc:
 print(f"No existeix {pob} a la base de dades!")
else:
 print(doc['cp']
```

* Exemple 4: Llistar edat
  
```python
import pymongo
import datetime
import math

client = pymongo.MongoClient(host="localhost",
                             port=27017,
                             username="adminbdd",
                             password="12345678")
base_de_dades = client.personal
for doc in base_de_dades["dades_persones"].find():
    avui = datetime.date.today()
    data_naixament = datetime.datetime.strptime(doc['dnaix'],"%d/%m/%Y").date()
    dies = (avui - data_naixament).days
    anys = math.floor(dies / 365)
    print(f"{doc['dnaix']} {doc['cognoms']} {doc['nom']} {anys}")
client.close()

```

* Exemple 5: Llista Ordenada

```python
import pymongo
import datetime
import math
client = pymongo.MongoClient(host="localhost",
                            port=27017,
                            username="adminbdd",
                            password="12345678")
base_de_dades = client.personal
for doc in base_de_dades["dades_persones"].find().sort("cognoms"):
    print(f"{doc['cognoms']}, {doc['nom']}")
client.close()
```

* Exemple 6: Consulta el numero de documents en una col·lecció

```python
   # Connexió a MongoDB Atlas
    client = pymongo.MongoClient(host="localhost",
                             port=27017,
                             username="adminbdd",
                             password="12345678")

    db=conn.get_database('personal')
    records = db.atopic
    print(records.count_documents({}))
```

## Exemple amb connexió a una base de dades en cloud (Mongo Atlas)

Per connectar a una base de dades en Mongo Atlas l'unic que canvia es la cadena de connexió que informem quan executem el pymongo.MongoClient. La cadena de connexió la podem consultar directament a la web de Mongo Atlas:

  1. Anem a la part de connect:

        ![Tabla](https://github.com/fbarraga/Python/blob/master/master/assets/mongodb_conn.png?raw=true)

  2. Seleccionem drivers:

        ![Tabla](https://github.com/fbarraga/Python/blob/master/master/assets/mongodb_conn2.png?raw=true)

  3. Copiem la cadena de connexió:

        ![Tabla](https://github.com/fbarraga/Python/blob/master/master/assets/mongodb_conn3.png?raw=true)

Una cadena de connexió a una bd en cloud tindria el següent format:

```python
conn = pymongo.MongoClient("mongodb+srv://xxxxx:xxxxxx@cluster0.xxxxxx.mongodb.net/?retryWrites=true&w=majority")
```

***

## Parsejar les dates amb mongo y python

Si guardem les dates dintre de mongo amb format "data" i no en format string, després haurem de fer servir una llibreria que ens ajudi a formatejar la data de la consulta amb el mateix format que Mongo utilitza per guardar la data (afegeix el Timezone). Per ajudar-nos podem fer servir la llibreria `dateutil`

```python
import datetime
import dateutil.parser

# the date
now = datetime.datetime.now()
anyo = now.year
mes = now.month
dia = now.day
date_str  = str(anyo) + "-" + str(mes) + "-" + str(dia)
date = dateutil.parser.parse(date_str)
# Si tinguessim una colecció autors amb un atribut fecha podriem comparar de la següent manera
db.autors.find({ fecha: {$eq: date}})

```

***
[Index](../../../README.md)

# MongoDB

## MongoDB "on premise"

MongoDB es pot instal·lar sobre plataforma Windows / Linux encara que es preferible utilitzar Linux. El procediment d'instal·lació per distribució Linux/Debian el podeu consultar en la [documentació oficial de MongoDB](https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-debian/)

## MongoDB SaaS "cloud"

MongoDB pot ser utilitzada desplegant la base de dades al cloud i connectant-nos des del nostre ordinador/aplicació. És un servei gratuit per una base de dades simple, i de pagament quan volem fer definicions més complexes.

Per poder desplegar una base de dades en Cloud, utilitzarem el servei [Mongo Atlas](https://www.mongodb.com/atlas). Els passos que haurem de fer per poder-la crear son:

* Registrar-nos dintre de Mongo Atlas (És aconsellable utilitzar el compte de Google o Github)
* Crear una organització.
* Crear un projecte. (per agrupar les bases de dades/Aplicacions que creem)
* Definir un cluster (Database Deployment). Un cluster es un conjunt de servidors que executarà la teva base de dades. Amb la opció gratuita només podem seleccionar l'opció més simple, pero podriem tenir una base de dades replicada en diferents llocs, backups, polítiques de contingència,etc.
    ![Tabla](https://github.com/fbarraga/Python/blob/master/master/assets/mongodb_inst00.png?raw=true)
* Escollim el nom de la base de dades i la ubicació. (Per exemple Parking i Europa)
* Assignem usuari i password a la base de dades.
* Especifiquem des d'on ens connectarem. Podem aplicar filtres de IPs. Revisem quina es la nostra IP i l'afegim dintre de les IPs validades.

Una vegada desplegat la Base de dades, podem administrar-la des del nostre ordinador amb el **Mongo Shell**

Per executar-ho fem mitjançant la següent comanda: 

```console
mongosh "mongodb+srv://<el vostre servidor>.mongodb.net/<base dades>" --apiVersion 1 --username <el vostre usuari>
```

## Eines per la gestió de la base de dades

### MongoDB Shell

Es pot descarregar l'eina des d'aquest [link](https://www.mongodb.com/try/download/shell)
MongoShell es una aplicació en mode comanda que ens permet executar comandes en el nostre MongoDB. Es l'eina recomanada quan utilitzem scripts que interactuen amb la base de dades. 
Actua de la mateixa manera que el psql de Postgresql o el sqlplus d'Oracle. Podeu consultar més informació en el següent [link](https://www.mongodb.com/docs/mongodb-shell/)

### MongoDB Compass (GUI)

Es pot descarregar l'eina des d'aquest [link](https://www.mongodb.com/try/download/compass)

Es una eina GUI que permet administrar la base de dades des d'una interfície gràfica. Inclou adintre la solució el MongoShell. Es correspondria al PGAdmin4 de Postgresql o al Enterprise Manager d'Oracle. Podeu consultar més informació en aquest [link](https://www.mongodb.com/docs/compass/master/)

## Ordres bàsiques a MongoDB

* `help`: Mostra informació sobre l'ajuda
* `db`: Mostra la base de dades en ús
* `db.stats`: Mostra informació sobre la base de dades en ús
* `use <database>`: Crea una base de dades (si el nom indicat existeix, fa la connexió a aquesta bd)
* `show dbs`: Mostra les bases de dades amb contingut (no buides)
* `db.dropdatabase()`: Borra la base de dades en ús
* `db.createCollection()`: Crea una col·lecció (equivalent a una taula SQL)
* `show collections`: Mostra les col·leccions en ús
* `db.<collection>.drop`: Borra la col·lecció de la base de dades en ús
* `db.<collection>.insertOne`: Insereix un document dintre de la col·lecció

### Creació de BD i col·leccions

```console
> use biblioteca
> db
biblioteca
> db.createCollection("autors")
> db.createCollection("llibres")
> show collections
autors
llibres
> db.autors.insertOne( { id: "1", cognoms: "rodoreda i gurguí", nom: "mercè" } );
{
"acknowledged" : true,
"insertedId" : ObjectId("605c6c1d2e50ebf3923f1b3d")
}
>
```

### CRUD (Create Read Update Delete)

* `db.collection.insertMany()`: Insereix n documents dintre de la col·lecció

```console
> db.autors.insertMany([
... { id: "2", cognoms: "oller y moragas", nom: "narcís"},
... { id: "3", cognoms: "carner i puig-oriol", nom: "josep"},
... { id: "4", cognoms: "català", nom: "víctor"}
... ]);
{
"acknowledged" : true,
"insertedIds" : [
ObjectId("605c75912e50ebf3923f1b3e"),
ObjectId("605c75912e50ebf3923f1b3f"),
ObjectId("605c75912e50ebf3923f1b40")
]
}>
```

* `db.collection.find()`:Buscar els elements d'una col·lecció

```console
> db.autors.find()
{ "_id" : ObjectId("605c6c1d2e50ebf3923f1b3d"), "id" : "1", "cognoms" : "rodoreda i gurguí", "nom" : "mercè" }
{ "_id" : ObjectId("605c75912e50ebf3923f1b3e"), "id" : "2", "cognoms" : "oller y moragas", "nom" : "narcís" }
{ "_id" : ObjectId("605c75912e50ebf3923f1b3f"), "id" : "3", "cognoms" : "carner i puig-oriol", "nom" : "josep" }
{ "_id" : ObjectId("605c75912e50ebf3923f1b40"), "id" : "4", "cognoms" : "català", "nom" : "víctor" }
> db.autors.find({ id: {$eq: "1"}})
{ "_id" : ObjectId("605c6c1d2e50ebf3923f1b3d"), "id" : "1", "cognoms" : "rodoreda i gurguí", "nom" : "mercè" }
> db.autors.find({ id: {$eq: "3"}})
{ "_id" : ObjectId("605c75912e50ebf3923f1b3f"), "id" : "3", "cognoms" : "carner i puig-oriol", "nom" : "josep" }
> db.autors.find({ nom: {$eq: "víctor"}})
{ "_id" : ObjectId("605c75912e50ebf3923f1b40"), "id" : "4", "cognoms" : "català", "nom" : "víctor" }
> db.autors.find({ id: {$lte: "3"}})
{ "_id" : ObjectId("605c6c1d2e50ebf3923f1b3d"), "id" : "1", "cognoms" : "rodoreda i gurguí", "nom" : "mercè" }
{ "_id" : ObjectId("605c75912e50ebf3923f1b3e"), "id" : "2", "cognoms" : "oller y moragas", "nom" : "narcís" }
{ "_id" : ObjectId("605c75912e50ebf3923f1b3f"), "id" : "3", "cognoms" : "carner i puig-oriol", "nom" : "josep" }
> db.autors.find({ id: {$gte: "2"}})
{ "_id" : ObjectId("605c75912e50ebf3923f1b3e"), "id" : "2", "cognoms" : "oller y moragas", "nom" : "narcís" }
{ "_id" : ObjectId("605c75912e50ebf3923f1b3f"), "id" : "3", "cognoms" : "carner i puig-oriol", "nom" : "josep" }
{ "_id" : ObjectId("605c75912e50ebf3923f1b40"), "id" : "4", "cognoms" : "català", "nom" : "víctor" }
>
> db.autors.find({ nom: {$regex: /^m/}})
{ "_id" : ObjectId("605c6c1d2e50ebf3923f1b3d"), "id" : "1", "cognoms" : "rodoreda i gurguí", "nom" : "mercè" }
```

* `db.collection.find().pretty()`: Mostra el resultat en un format amigable
* `db.collection.update()`: Actualitza un document d’una col·lecció
  
```console
> db.autors.find()
{ "_id" : ObjectId("605c6c1d2e50ebf3923f1b3d"), "id" : "1", "cognoms" : "rodoreda i gurguí", "nom" : "mercè" }
{ "_id" : ObjectId("605c75912e50ebf3923f1b3e"), "id" : "2", "cognoms" : "oller y moragas", "nom" : "narcís" }
{ "_id" : ObjectId("605c75912e50ebf3923f1b3f"), "id" : "3", "cognoms" : "carner i puig-oriol", "nom" : "josep" }
{ "_id" : ObjectId("605c75912e50ebf3923f1b40"), "id" : "4", "cognoms" : "català", "nom" : "víctor" }
> db.autors.update({"id": "4"},{$set : {"nom": "Caterina"}})
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
> db.autors.find()
{ "_id" : ObjectId("605c6c1d2e50ebf3923f1b3d"), "id" : "1", "cognoms" : "rodoreda i gurguí", "nom" : "mercè" }
{ "_id" : ObjectId("605c75912e50ebf3923f1b3e"), "id" : "2", "cognoms" : "oller y moragas", "nom" : "narcís" }
{ "_id" : ObjectId("605c75912e50ebf3923f1b3f"), "id" : "3", "cognoms" : "carner i puig-oriol", "nom" : "josep" }
{ "_id" : ObjectId("605c75912e50ebf3923f1b40"), "id" : "4", "cognoms" : "català", "nom" : "Caterina" }
> db.autors.update({"id": "4"},{$set : {"cognoms": "albert i paradis"}})
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
> db.autors.find()
{ "_id" : ObjectId("605c6c1d2e50ebf3923f1b3d"), "id" : "1", "cognoms" : "rodoreda i gurguí", "nom" : "mercè" }
{ "_id" : ObjectId("605c75912e50ebf3923f1b3e"), "id" : "2", "cognoms" : "oller y moragas", "nom" : "narcís" }
{ "_id" : ObjectId("605c75912e50ebf3923f1b3f"), "id" : "3", "cognoms" : "carner i puig-oriol", "nom" : "josep" }
{ "_id" : ObjectId("605c75912e50ebf3923f1b40"), "id" : "4", "cognoms" : "albert i paradis", "nom" : "Caterina" }
>
```

* `db.collection.deleteOne()`: Elimina un document d’una col·lecció

```console
> db.autors.find()
{ "_id" : ObjectId("605c6c1d2e50ebf3923f1b3d"), "id" : "1", "cognoms" : "rodoreda i gurguí", "nom" : "mercè" }
{ "_id" : ObjectId("605c75912e50ebf3923f1b3e"), "id" : "2", "cognoms" : "oller y moragas", "nom" : "narcís" }
{ "_id" : ObjectId("605c75912e50ebf3923f1b3f"), "id" : "3", "cognoms" : "carner i puig-oriol", "nom" : "josep" }
{ "_id" : ObjectId("605c75912e50ebf3923f1b40"), "id" : "4", "cognoms" : "català", "nom" : "víctor" }
> db.autors.deleteOne({"nom" : "josep"})
{ "acknowledged" : true, "deletedCount" : 1 }
> db.autors.find()
{ "_id" : ObjectId("605c6c1d2e50ebf3923f1b3d"), "id" : "1", "cognoms" : "rodoreda i gurguí", "nom" : "mercè" }
{ "_id" : ObjectId("605c75912e50ebf3923f1b3e"), "id" : "2", "cognoms" : "oller y moragas", "nom" : "narcís" }
{ "_id" : ObjectId("605c75912e50ebf3923f1b40"), "id" : "4", "cognoms" : "albert i paradis", "nom" : "Caterina" }
>
```

* `db.collection.deleteMany()`: Elimina varis documents d’una col·lecció

```console
> db.autors.find()
{ "_id" : ObjectId("605c6c1d2e50ebf3923f1b3d"), "id" : "1", "cognoms" : "rodoreda i gurguí", "nom" : "mercè" }
{ "_id" : ObjectId("605c75912e50ebf3923f1b3e"), "id" : "2", "cognoms" : "oller y moragas", "nom" : "narcís" }
{ "_id" : ObjectId("605c75912e50ebf3923f1b40"), "id" : "4", "cognoms" : "albert i paradis", "nom" : "Caterina" }
> db.autors.insertOne( { id: "1", cognoms: "rodoreda i gurguí", nom: "mercè" });
{
"acknowledged" : true,
"insertedId" : ObjectId("605dc6e489603c835a1a6fb4")
}
> db.autors.find()
{ "_id" : ObjectId("605c6c1d2e50ebf3923f1b3d"), "id" : "1", "cognoms" : "rodoreda i gurguí", "nom" : "mercè" }
{ "_id" : ObjectId("605c75912e50ebf3923f1b3e"), "id" : "2", "cognoms" : "oller y moragas", "nom" : "narcís" }
{ "_id" : ObjectId("605c75912e50ebf3923f1b40"), "id" : "4", "cognoms" : "albert i paradis", "nom" : "Caterina" }
{ "_id" : ObjectId("605dc6e489603c835a1a6fb4"), "id" : "1", "cognoms" : "rodoreda i gurguí", "nom" : "mercè" }
> db.autors.deleteMany({"nom" : "mercè"})
{ "acknowledged" : true, "deletedCount" : 2 }
> db.autors.find()
{ "_id" : ObjectId("605c75912e50ebf3923f1b3e"), "id" : "2", "cognoms" : "oller y moragas", "nom" : "narcís" }
{ "_id" : ObjectId("605c75912e50ebf3923f1b40"), "id" : "4", "cognoms" : "albert i paradis", "nom" : "Caterina" }
>
```

* `db.collection.distinct`: Retorna els documents únics
  
```console
> db.autors.find()
{ "_id" : ObjectId("605c75912e50ebf3923f1b3e"), "id" : "2", "cognoms" : "oller y moragas", "nom" : "narcís" }
{ "_id" : ObjectId("605c75912e50ebf3923f1b40"), "id" : "4", "cognoms" : "albert i paradis", "nom" : "Caterina" }
> db.autors.insertOne( { id: "1", cognoms: "oller y moragas", nom: "narcís" });
{
"acknowledged" : true,
"insertedId" : ObjectId("605dc7e789603c835a1a6fb5")
}
> db.autors.find()
{ "_id" : ObjectId("605c75912e50ebf3923f1b3e"), "id" : "2", "cognoms" : "oller y moragas", "nom" : "narcís" }
{ "_id" : ObjectId("605c75912e50ebf3923f1b40"), "id" : "4", "cognoms" : "albert i paradis", "nom" : "Caterina" }
{ "_id" : ObjectId("605dc7e789603c835a1a6fb5"), "id" : "1", "cognoms" : "oller y moragas", "nom" : "narcís" }
> db.autors.distinct("nom")
[ "Caterina", "narcís" ]
> db.autors.distinct("id")
[ "1", "2", "4" ]
```

Per construir sentències més complexes com aggregats, etc podem mirar la [pàgina](https://www.mongodb.com/docs/manual/aggregation/) oficial de MongoDB.

***
[Index](../../../README.md)

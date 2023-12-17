# Base de dades de la Lliga ACB <img src='recursos/logo_acb_1982-1987.png' width='50'><img src='recursos/logo_acb_1987-1990.png' width='70'><img src='recursos/logo_acb_1990-2003.png' width='50'><img src='recursos/logo_acb_2003-2019.png' width='50'><img src='recursos/logo_acb_2019-current.png' width='80'>
-------


Aquest repositori conté les dades dels diferents **partits** que s'ha disputat a la lliga ACB a partir de l'any 2000 juntament amb els **jugadors** que han participat a les diferents competicons d'aquests anys.
L'origen de les dades s'ha extret de la web oficial de l'[ACB](http://acb.com/). Per aquest motiu hi ha dades en castellà. Per exemple: El nom dels llocs de naixement o les nacionalitats dels jugadors, entre altres.

S'ha importat les dades tant de les competicions de la lliga regular i de la copa del rei. La finalitat d'aquesta base de dades és per usos didàctics.

## Descripció de la base de dades

Base de dades de MongoDB amb dues col·leccions:
* **partits**: 7.103 documents
* **jugadors**: 2.246 documents

Per la quantiat de documents de la col·lecció de partits s'ha dividit la col·lecció en fitxers de 1.000 documents cada un.


## Format **Jugadors**

```json
{
  "_id":{"$oid":"63f342429b5ebb433a6f5653"},
  "codi_acb":"20201682",
  "nom_curt":"Marc Gasol",
  "url":"https://www.acb.com/jugador/temporada-a-temporada/id/20201682",
  "dorsal":"33",
  "posicio":"PIVOT",
  "alcada":"2.15",
  "xarxes_socials":[{ "nom":"instagram",
                      "url":"https://www.instagram.com/marcgasol",
                      "usuari":"marcgasol"},
                    { "nom":"twitter",
                      "url":"https://twitter.com/marcgasol",
                      "usuari":"marcgasol"}],
  "nom_complet":"Marc  Gasol Saez",
  "lloc_naixement":"Barcelona",
  "pais_naixement":"España",
  "data_naixement":"1985-01-29T00:00:00.000+00:00",
  "nacionalitat":"España",
  "llicencia":"JFL"
}
```

## Format de **Partits**

```json
{
  "_id":{"$oid":"63dbea491ab15cae765ea0bf"},
   "temporada":"2021-2022",
   "competicio":"Lliga Regular 2021-2022",
   "url":"https://www.acb.com/partido/estadisticas/id/102722",
   "codi_acb":"102722",
   "jornada":"JORNADA 1",
   "data_hora":"2021-09-18T18:00:00.000+00:00",
   "lloc":"Palau Municipal D´Esports de Badalona",
   "aforament":2362,
   "arbitre1":"Antonio Conde",
   "arbitre2":"Jorge Martínez",
   "arbitre3":"Alfonso Olivares",
   "equip_local": Object,
   "equip_visitant": Object,
}
```

El camp `competicio` contindrà els valors de `"Lliga Regular <temporada>"` o `"Copa del Rei <temporada>"` en funció de l'origen d'aquell partit.

Els camps `equip_local` i `equip_visitant` segueixen el mateix patró.
```json
{
  "nom":"",
  "nom_comercial":"Joventut",
  "url":"/club/plantilla/id/8/equipo-Joventut",
  "punts":"85",
  "entrenadors":Array
  "jugadors":Array
}
```

El camp `entrenadors` és un array d'ojbectes entrenador

```json
{
  "nom":"Carles Duran",
  "url":"/entrenador/ver/20300277-Carles-Duran",
  "codi_acb":"20300277"
}
```

El camp `jugadors` és un array d'objectes de jugador que conté les dades bàsiques del jugador juntament amb els seus estadístics

```json
{
  "dorsal":"2",
  "titular":false,
  "nom":"P. Busquets",
  "url":"/jugador/ver/20211754-P. Busquets.html",
  "codi_acb":"20211754",
  "estadistics": Object
 }
 ```
 
 El camp `estadistics` és un objecte dels diferents estadístics d'aquell jugador en aquell partit

```json
{
  "minuts":7,
  "segons":42,
  "punts":"0",
  "intents_2":"0",
  "encerts_2":"0",
  "intents_3":"1",
  "encerts_3":"0",
  "intents_1":"0",
  "encerts_1":"0",
  "rebots_defensius":"1",
  "rebots_ofensius":"0",
  "assistencies":"1",
  "pilotes_recuperades":"1",
  "pilotes_perdudes":"0",
  "taps_comesos":"0",
  "taps_rebuts":"0",
  "faltes_comeses":"1",
  "faltes_rebudes":"0"
}
```

----

## Exportació i Importació

### Importació

Per la importació es pot utilitzar l'eina [**mongoimport**](https://www.mongodb.com/docs/database-tools/mongoimport/) dins del conjunt d'eines MongoDB Command Line Database Tools 
```cmd
mongoimport --uri=mongodb+srv://<username>:<password>@atlas-cluster-url.mongodb.net/ --db=<db-name> --collection=<collection> --file=<path_file>
```

### Exportació
La base de dades s'ha exportat d'un SGBD MongoDB mitjançant l'eina [**mongoexport**](https://www.mongodb.com/docs/database-tools/mongoexport/) dins del conjunt d'eines MongoDB Command Line Database Tools
```cmd
mongoexport --uri mongodb+srv://<username>:<password>@atlas-cluster-url.mongodb.net/<db-name> --collection <collection-name> --out <path-to-export>
```

```cmd
mongoexport.exe --uri="mongodb+srv://<username>:<password>@atlas-cluster-url.mongodb.net" -d="acb_db" -c="partits" --sort="{_id: 1}" --limit="1000" --skip="0" --out="partits_0.json"
mongoexport.exe --uri="mongodb+srv://<username>:<password>@atlas-cluster-url.mongodb.nett" -d="acb_db" -c="partits" --sort="{_id: 1}" --limit="1000" --skip="1000" --out="partits_1000.json"
mongoexport.exe --uri="mongodb+srv://<username>:<password>@atlas-cluster-url.mongodb.net" -d="acb_db" -c="partits" --sort="{_id: 1}" --limit="1000" --skip="2000" --out="partits_2000.json"
...
mongoexport.exe --uri="mongodb+srv://<username>:<password>@atlas-cluster-url.mongodb.net" -d="acb_db" -c="partits" --sort="{_id: 1}" --limit="1000" --skip="7000" --out="partits_7000.json"
```





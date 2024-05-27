# Extensions de PostgreSQL

Les extensions són llibreries que s'afegeixen a PostgreSQL per agregar funcionalitats especifiques. La versatilitat de PostgreSQL pot fer que un cop tenim el nostre Servidor PostgreSQL instal·lat, aquest no disposi de totes les funcionalitats que necessitem. Per això, existeixen unes petites extensions que implementen aquestes funcionalitats i/o ens fan la feina més senzilla. Depenent de les extensions que requerim es poden trobar de tres formes diferents.

## Extensions disponibles per defecte al servidor PostgreSQL.

Aquest grup d'extensions són un grup d'extensions habilitades en el nostre servidor, estan llestes per poder ser instal·lades i utilitzades quan així ho necessitem.

Quan executem aquesta sentència, veiem quines són les extensió que tenim habilitades al nostre Servidor i que podem instal·lar per fer-ne ús.

```sql
SELECT *  FROM pg_available_extensions ORDER BY name;
```

Disposem d'unes 43 funcions ja compilades i que podem utilitzar en cada Base de Dades del nostre Servidor PostgreSQL.

## Extensions addicionals instal·lables a PostgreSQL

### Extensions PostgreSQL del web oficial.

Existeixen altres extensions a més de les que tenim disponibles al nostre Servidor PostgreSQL. Aquestes extensions les podem trobar a la [Web oficial de PostgreSQL](https://www.postgresql.org/download/products/6-postgresql-extensions/), en programari catalogue – postgresql extensions i s'implementen amb uns senzills passos. Totes les extensions que disposem al web oficial són Open Source.

Aquestes són algunes de les extensions que podem trobar al web oficial de PostgreSQL:

* OpenFTS : Un motor de cerca avançat basat en PostgreSQL que permet indexar dades i classificar-les segons la seva rellevància. Està totalment integrat amb la base de dades i permet utilitzar metadades per restringir els resultats de cerca.

* PL/Proxy
* PostGIS
* PostPIC
* Prefix
* TexCaller

De totes aquestes extensions del web oficial de Postgres, la que més s'utilitza és l'extensió PostGIS. Amb aquesta extensió li afegim al Servidor la funcionalitat de disposar d'una Base de Dades espacial per recollir dades geomètriques. És molt útil per realitzar treballs geogràfics i topogràfics. Val a dir que aquesta és una de les extensions més utilitzades i més conegudes en el món professional.


### Extensions del repositori pgxn.org

Dintre de la [PostgreSQL Extension Network](https://pgxn.org/) podem trobar el repositori més gran de extensions de Postgresql. Es troben agregades per tags i com a principals trobem tota una col·lecció de foreign data wrappers que ens permeten interconnectar PostgreSQL amb qualsevol altre sistema gestor de base s de dades.

Exemples son: 

* clerk_fdw: A foreign data wrapper for Clerk
* couchdb_fdw: PostgreSQL SQL/MED FDW for CouchDB
* db2_fdw:	PostgreSQL Data Wrappper to DB2 databases
* file_textarray_fdw: Access to text files where each row is returned as an array of text
* firebird_fdw:	A PostgreSQL foreign data wrapper (FDW) for Firebird
* jdbc_fdw: jdbc FDW for PostgreSQL 9.1+
* json_fdw:	Foreign Data Wrapper for JSON files
* mongo_fdw: Foreign Data Wrapper for MongoDB
* mysql_fdw: MySQL FDW for PostgreSQL 9.3+
* neo4j-fdw: PostgreSQL foreign data wrapper for Neo4j Graph Database
* odbc_fdw: PostgreSQL SQL/MED FDW for ODBC API
* oracle_fdw: A Foreign Data Wrapper for Oracle
* osm_fdw:Openstreetmap PBF foreign data wrapper
* prometheus_fdw: Postgres Foreign Data Wrapper for Prometheus Data
* redis_fdw: Redis FDW for PostgreSQL 9.1+
* sqlite_fdw: Foreign Data Wrapper for SQLite databases
* tds_fdw: TDS Foreign data wrapper (SQLServer)



### Extensions PostgreSQL trobades a Internet.

Hi ha moltes altres extensions disponibles a internet. De totes les disponibles hi ha unes extensions Open Source que són força útils. Aquestes extensions són aportacions d' un usuari que utilitza i adora Postgres. La font d'aquestes aportacions estan disponibles a la seva pàgina web.

* db_info: Amb aquesta extensió obtenim informació sobre la Base de Dades.
* jx_io: Si volem importar o exportar dades del tipus JSON o dades del tipus XML, tenim l'extensió
* msmov: aquesta extensió és molt útil per recollir dades des d'un Servidor MS Server SQL.
* vacuum_utils: Aquesta extensió conté unes funcions útils per portar un manteniment del Servidor.



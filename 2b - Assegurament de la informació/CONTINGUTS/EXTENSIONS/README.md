# Extensions de PostgreSQL

Les extensions són llibreries que s'afegeixen a PostgreSQL per agregar funcionalitats especifiques. La versatilitat de PostgreSQL pot fer que un cop tenim el nostre Servidor PostgreSQL instal·lat, aquest no disposi de totes les funcionalitats que necessitem. Per això, existeixen unes petites extensions que implementen aquestes funcionalitats i/o ens fan la feina més senzilla. Depenent de les extensions que requerim es poden trobar de tres formes diferents.

## Extensions disponibles al Servidor PostgreSQL.

Aquest grup d'extensions són un grup d'extensions habilitades en el nostre servidor, estan llestes per poder ser instal·lades i utilitzades quan així ho necessitem.

Quan executem aquesta sentència, veiem quines són les extensió que tenim habilitades al nostre Servidor i que podem instal·lar per fer-ne ús.

```sql
SELECT *  FROM pg_available_extensions ORDER BY name;
```
`
Disposem d'unes 43 funcions ja compilades i que podem utilitzar en cada Base de Dades del nostre Servidor PostgreSQL.

## Extensions en PostgreSQL

## Extensions PostgreSQL del web oficial.

Existeixen altres extensions a més de les que tenim disponibles al nostre Servidor PostgreSQL. Aquestes extensions les podem trobar al web official de Postgres, en programari catalogue – postgresql extensions i s'implementen amb uns senzills passos. Totes les extensions que disposem al web oficial són Open Source.

Aquestes són algunes de les extensions que podem trobar al web oficial de PostgreSQL:

* OpenFTS
* PL/Proxy
* PostGIS
* PostPIC
* Prefix
* TexCaller

De totes aquestes extensions del web oficial de Postgres, la que més s'utilitza és l'extensió PostGIS. Amb aquesta extensió li afegim al Servidor la funcionalitat de disposar d'una Base de Dades espacial per recollir dades geomètriques. És molt útil per realitzar treballs geogràfics i topogràfics. Val a dir que aquesta és una de les extensions més utilitzades i més conegudes en el món professional.

## Extensions PostgreSQL trobades a Internet.

Hi ha moltes altres extensions disponibles a internet. De totes les disponibles hi ha unes extensions Open Source que són força útils. Aquestes extensions són aportacions d' un usuari que utilitza i adora Postgres. La font d'aquestes aportacions estan disponibles a la seva pàgina web.

* db_info: Amb aquesta extensió obtenim informació sobre la Base de Dades.
* jx_io: Si volem importar o exportar dades del tipus JSON o dades del tipus XML, tenim l'extensió
* msmov: aquesta extensió és molt útil per recollir dades des d'un Servidor MS Server SQL.
* vacuum_utils: Aquesta extensió conté unes funcions útils per portar un manteniment del Servidor.



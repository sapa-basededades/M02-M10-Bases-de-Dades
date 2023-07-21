# Curs: Introducció a Postgres

## Programació amb PL/PgSQL

### Funcions i procediments

**Exemple de FUNCIONS que retornen un valor**


   * [Exemple 1:](./code/fun01.sql) Funció que retorna el dia de la setmana d'una data
   * [Exemple 2:](./code/fun02.sql) Funció que retorna el valor màxim de dos números

**Exemples de FUNCIONS que NO retornen cap valor (Procediments)**

   * [Exemple 1:](./code/proc1.sql) Sense paràmetres
   * [Exemple 2:](./code/proc2.sql) Amb paràmetres. Al no indicar res per defecte es IN (d'entrada)
   * [Exemple 3:](./code/proc3.sql) Amb paràmetre de sortida OUT, en aquest cas no cal indicar la clàusula RETURNS ja que retornarà els valors en els paràmetres de sortida
   * [Exemple 4:](./code/proc4.sql) Amb paràmetres %TYPE
   * [Exemple 5:](./code/proc5.sql) Amb paràmetres tipus registre, en aquest cas no s’utilitza %rowtype sinó que s’especifica com a tipus el nom de la taula

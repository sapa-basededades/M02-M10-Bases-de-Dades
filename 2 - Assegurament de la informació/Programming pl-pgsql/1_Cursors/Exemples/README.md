# Curs: Introducció a Postgres

## Programació amb PL/PgSQL

### Cursors

S'utilitzen per consultes que retornen més d'una fila. Es fa un recorregut i s'accedeix fila a fila 

La sintaxi eé:
```sql    
            DECLARE CURSOR nom_cursor FOR SELECT...
            OPEN nom_cursor
            PER CADA FILA 
                FETCH nom_cursor INTO...
            FPER
            CLOSE nom_cursor
```            

### Exemples

1. [Exemple 1](./code/cursor1.sql): Amb LOOP
2. [Exemple 2](./code/cursor2.sql): Amb FOR. En aquest cas OBRIR/FETCH i TANCAR cursor es fa automàtic
3. [Exemple 3](./code/cursor3.sql): Amb FOR més simplificat
4. [Exemple 4](./code/cursor4.sql): Cursor amb paràmetres]
5. [Exemple 5](./code/cursor5.sql): Actualitzacions en recòrrer registres]
6. [Exemple 6](./code/cursor5b.sql): Fes un cursor per mostrar els 3 empleats que guanyen menys]


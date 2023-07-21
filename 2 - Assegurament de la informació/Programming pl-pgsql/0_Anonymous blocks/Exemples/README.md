# Curs: Introducció a Postgres

## Programació amb PL/PgSQL

### Blocs anònims (Anonymous blocks)

Els blocs anònims son trossos de codi que no s'emmagatzemen al servidor de PostGres (funcionen com un script) i que tenen la següent sintaxi:

```sql
[ <<label>> ]  
[ declare
declarations ]
begin
statements;
...
end [ label ];
```
### Primers programes

* [Exemple 1](./code/ab1.sql): Hello world
* [Exemple 2](./code/ab2.sql): Operacions Simples
* [Exemple 3](./code/ab3.sql): Declarar variables indicant el seu tipus a partir  del tipus d'un camp d'una altre taula 
* [Exemple 4](./code/ab4.sql): Carregar camps d'una taula en variables
* [Exemple 4b](./code/ab4b.sql): Select into quan no es retorna cap fila

### Condicionals

* [Exemple 5](./code/ab5.sql): Condicional IF simple
* [Exemple 6](./code/ab6.sql): Condicional IF ELSE
* [Exemple 7](./code/ab7.sql): Condicional CASE

### Iteratives

* [Exemple 8](./code/ab8.sql): LOOP
* [Exemple 9](./code/ab9.sql): WHILE
* [Exemple 10](./code/ab10.sql): FOR

### Vectors

* [Exemple 11](./code/ab11.sql): Vectors
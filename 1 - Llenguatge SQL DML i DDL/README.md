# Llenguatge SQL: DML i DDL


## Introducció

* :blue_book:[Introducció als SGBD Relacionals](CONTINGUTS/M02_UF2_NF1_DOC01A_Introducció%20als%20SGBD%20Relacionals_v2023.pdf)
* :blue_book:[Introducció al SQL](CONTINGUTS/M02_UF2_NF1_DOC01B_Introducció%20al%20SQL_v2023.pdf)
* :blue_book:[Introducció a PostgreSQL](CONTINGUTS/M02_UF2_NF1_DOC01C_Instroducció_Postgresql_v2023.pdf)
* :blue_book:[Instal·lació de PostgreSQL](CONTINGUTS/M02_UF2_NF1_DOC01D_Instal.lació_Postgresql_v2023.pdf)

## [1. NF1 DDL (Data Definition Language)](<NF1 - DDL/README.md>)

<img src="./assets/sql.png"
     alt="SQL"
     style="float: left; margin-right: 10px; width:50px" />

En aquest apartat treballarem el llenguatge de creació i modificació de l'esquema d'una base de dades relacional mitjançant el llenguatge SQL. Veurem com creem taules,camps, vistes, índexs, restriccions de clau primària, de clau forana, etc..
Tot això ho farem mitjançant els SGBD MySQL i PostgreSQL

* [:books: Continguts](<NF1 - DDL/README.md#continguts>)
* [:link: Enllaços d'interès](<NF1 - DDL/README.md#links>)
* [:notebook: Exercicis - BD PostgreSQL](<NF1 - DDL/README.md#exercicis-pgsql>)
* [:notebook: Exercicis - BD MySQL](<NF1 - DDL/README.md#exercicis-mysql>)
* [:pencil: Activitats](<NF1 - DDL/README.md#activitats>)

## [2. NF2 DML (Data Manipulation Language)](<NF2 - Disseny conceptual - model ER/README.md>)

<img src="./assets/sql.png"
     alt="SQL"
     style="float: left; margin-right: 10px; width:50px" />

* En aquest apartat treballarem el llenguatge de manipulació de dades (DML) en l'àmbit SQL. Es veuen les principals instruccions CRUD (*Create, Read, Update i Delete*) que són: *INSERT UPDATE DELETE i SELECT*.

* Principalment ens centrarem amb l'instrucció *SELECT* començant amb consultes senzilles d'una sola taula per arribar fins a les Window Functions i les CTE (Common Table Expressions).

* Les instruccions treballades es basan amb els estàndards **ANSI-SQL(SQL-92,SQL-2003)** mitjançant els SGBD MySQL i PostgreSQL.

* En aquest apartat també veurem les propietats ACID (*Atomicity, Consistency, Isolation, Durability*) en un SGBD, el concepte de concurrència, bloqueig de registres i els diferents nivells d'aïllament.

---

## Bases de dades

En aquest apartat trobareu diferents bases de dades en diferents SGBD:

[![PostreSQL Logo](../assets/postgresql-horizontal.svg)](DATABASES/POSTGRESQL/README.md)

[![MySQL Logo](../assets/mysql-horizontal.svg)](DATABASES/MYSQL/README.md)

pg-scott
========

This is the classical [Scott database](http://www.orafaq.com/wiki/SCOTT) (EMP, DEPT, BONUS, SALGRADE) for use in PostgreSQL.

See [docker-pg-scott](https://github.com/rsp/docker-pg-scott) and [docker-pg-scott-nd](https://github.com/rsp/docker-pg-scott-nd) for Docker images that include a PostgreSQL server with data from [pg-scott.sql](#pg-scottsql) and [pg-scott-nd.sql](#pg-scott-ndsql) respectively, that automatically start the `psql` shell to play with the data interactively. (Not yet - Work in progress...)

Data
----
Three relations are available: `emp`, `dept` and `salgrade`.

The data is based on the data in [The EMP and DEPT tables in Oracle](https://apexplained.wordpress.com/2013/04/20/the-emp-and-dept-tables-in-oracle/) by [Nick Buytaert](https://github.com/nbuytaert1)
**with some differences**.

### pg-scott.sql

[pg-scott.sql](https://github.com/rsp/pg-scott/blob/master/pg-scott.sql)
([download](https://raw.githubusercontent.com/rsp/pg-scott/master/pg-scott.sql))

Two dates were changed to be consistent with other sources, like [Oracle Példatár by Kende Mária and Nagy István](https://www.inf.u-szeged.hu/~pbalazs/teaching/DEMO.sql):

1. Scott's `hiredate` changed to `1982-12-09`
2. Adams' `hiredate` changed to `1983-01-12`

### pg-scott-nd.sql

[pg-scott-nd.sql](https://github.com/rsp/pg-scott/blob/master/pg-scott-nd.sql)
([download](https://raw.githubusercontent.com/rsp/pg-scott/master/pg-scott-nd.sql))

In addition to changes in pg-scott.sql, there was one change:

1. Smith's `deptno` changed from `20` to `NULL`

To play with examples where one employer has no department.

Conversion
----------
Converted to the simplest PostgreSQL data types (`integer`, `text` and `date`).

Issues
------
For any bug reports or feature requests please
[post an issue on GitHub](https://github.com/rsp/pg-scott/issues).

Author
------
Rafał Pocztarski - [https://github.com/rsp](https://github.com/rsp)

License
-------
MIT License (Expat). See [LICENSE.md](LICENSE.md) for details.

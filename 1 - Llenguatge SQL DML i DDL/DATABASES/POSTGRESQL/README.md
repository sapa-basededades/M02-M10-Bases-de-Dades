![PostreSQL Logo](../../../assets/postgresql-horizontal.svg) 
---
# Databases

* [01 - Botiga d'Informàtica](<01 - Botiga Informàtica/README.md>)
* [02 - Gestió Empleats](<02 - Gestió Empleats/README.md>)
* [03 - Gestió de vendes](<03 - Gestió de vendes/README.md>)
* [04 - Jardineria](<04 - Jardineria/README.md>)
* [05 - Universitat](<05 - Universitat/README.md>)
* [06 - Adventureworks](<06 - Adventureworks/README.md>)
* [07 - HR](<07- HR/README.md>)
* [08 - Pagila](<08 - Pagila/README.md>)
* [09 - Scott](<09 - Scott/README.md>)
* [10 - Northwind](<10 - Northwind/README.md>)
* [11 - regex](<11 - regex/README.md>)
* [12 - sqlmurdermystery](<12 - sqlmurdermystery/README.md>)

---

# Instal·lar PostgreSQL amb Ubuntu 22.04 o superior

## Instal·lar PostgreSQL 
Amb aquesta comanda es descarregarà i s'instal·larà en la seva darrera versió disponible per ubuntu. 

~~~bash
sudo apt-get -y install postgresql postgresql-contrib
~~~

Entrem com usuari postgres amb la següent comanda
~~~bash
sudo su - postgres

psql
~~~

Crea l'usuari i la contrasenya per administrar les bases de dades amb PostgreSQL. 

~~~bash
create user my_name with password '123456';
~~~

Donem permissos de superuser a `my_user`.
~~~bash
alter user my_name with superuser;
~~~

## Creem la primera base de dades d'exemple amb PostgreSQL 

Podem crear crear la nostra primera base de dades amb la següent comanda executada per l'usuari `myuser`. 

~~~bash
create database exemple owner my_name; 
~~~ 

Llistar base de dades. 
~~~bash
\l

\list
~~~

Per sortir
~~~bash
exit
~~~

## Instal·lar PgAdmin 

Per instal·lar PgAdmin necesitarem `curl` i ho podem instal·lar amb la següent comanda. 

~~~bash
sudo apt install curl 
~~~

Instal·la la clay pública pel repositori:

~~~bash
sudo curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add
~~~

Crea el fitxer de configuració del repositori:

~~~bash
sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
~~~


Instal·la pgAdmin, pels dos modes escriptori i web:
~~~bash
sudo apt install pgadmin4
~~~

## Executar PgAdmin4 
Busca en les teves aplicacions el logo de PgAdmin o PotgreSQL, i després introdueix les credencials. a `Add New Server`,  

- A general Nom de sevidor. 
- A Connection Host; `localhost`  el pueto pordefecto. 
- A Username `mysuser` y `password`
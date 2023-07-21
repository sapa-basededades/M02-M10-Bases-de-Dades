# Instal·lació de la base de dades AdventureWorks

## Obrir màquina amb PostGres

 Arranca la màquina Linux/Windows on tens instal·lada la base de dades PostGres.

## Crear base de dades AdventureWorks

* Connectem amb l'usuari postgres i executem: 
  
```
su postgres
psql
#> CREATE DATABASE adventureworks;
#>\l 
#>\q
exit
```

* Mirem quina ip té la nostra màquina virtual.
```
ip -c a
```

![Image1](https://github.com/fbarraga/Postgres-DB/blob/main/UF2/0_Databases/adventureworks/images/image1.png?raw=true)
has d’agafar la ip que apareix a la variable inet de l’adaptador amb el que connectes a la màquina. En aquest cas `enp0s3`.

En l’exemple seria **192.168.56.101**

## Configurar WinSCP

* Descarrega el programa de https://www.winscp.net

![Image2](https://github.com/fbarraga/Postgres-DB/blob/main/UF2/0_Databases/adventureworks/images/image2.png?raw=true)

* Posa la ip del teu servidor de Postgres i l’usuari i contrasenya amb el que et connectes.
* Descarrega el fitxer [`AdventureWorks_Backup.zip`](https://github.com/fbarraga/Postgres-DB/blob/main/UF2/Databases/adventureworks/AdventureWorks_Backup.zip) que tens al repositori de  Github.
* Descomprimeix-lo i copia el fitxer `AdventureWorks_Backup.dump` a la carpeta `/tmp` del servidor PostGres utilitzant el Winscp:
  
<img src="https://github.com/fbarraga/Postgres-DB/blob/main/UF2/0_Databases/adventureworks/images/image3.png?raw=true" width="70%" />


## Restaura el backup  

* Accedeix al servidor de nou i executa la instrucció següent per restaurar el backup.
```
su postgres
psql -d adventureworks -f /tmp/AdventureWorksBackup
```

Quan acabi ja hauries de tenir la base de dades creada i amb dades.

## Esquema de la base de dades

Pots veure l'esquema de la base de dades a la següent imatge:

![Image4](https://github.com/fbarraga/Postgres-DB/blob/main/UF2/0_Databases/adventureworks/images/AdventureWorks_schema.png?raw=true)

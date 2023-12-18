/* Eliminem la base de dades si existeix */
DROP DATABASE IF EXISTS rrhh;

/* Crear la base de dades */
CREATE DATABASE rrhh;
  
/* 
Agafem el COLLATE per defete de la BD 
*/


/* Ens conectem */
USE rrhh;

/* Crear les taules */

CREATE TABLE regions
(
	regio_id 	INT,
	nom 		VARCHAR(25),
	CONSTRAINT pk_regions PRIMARY KEY (regio_id)
) Engine = InnoDB;

			
CREATE TABLE paisos
(
	pais_id 	CHAR(2),
	nom 		VARCHAR(40),
	regio_id 	INT,
	CONSTRAINT pk_paisos PRIMARY KEY (pais_id),
	CONSTRAINT fk_paisos_regions FOREIGN KEY(regio_id) 
		REFERENCES regions(regio_id)
) Engine = InnoDB;		


CREATE TABLE localitzacions 
(
	localitzacio_id 	INT,
	adreca 				VARCHAR(40),
	codi_postal 		VARCHAR(12),
	ciutat 				VARCHAR(30) NOT NULL,
	estat_provincia 	VARCHAR(25),
	pais_id 			CHAR(2),
	CONSTRAINT pk_localitzacions PRIMARY KEY (localitzacio_id),
	CONSTRAINT fk_localitzacions_paisos FOREIGN KEY(pais_id) 
		REFERENCES paisos(pais_id)
) Engine = InnoDB;


CREATE TABLE departaments
(
	departament_id 		INT,
	nom 				VARCHAR(30) NOT NULL,
	localitzacio_id 	INT,
	CONSTRAINT pk_departaments PRIMARY KEY (departament_id),
	CONSTRAINT fk_departaments_localitzacions FOREIGN KEY(localitzacio_id) 
		REFERENCES localitzacions(localitzacio_id)
) Engine = InnoDB;


CREATE TABLE feines
(
   feina_codi 	CHAR(10),
   nom_treball 	VARCHAR(35) NOT NULL,
   salari_min 	FLOAT,
   salari_max 	FLOAT,
   CONSTRAINT pk_feines PRIMARY KEY (feina_codi)
) Engine = InnoDB;


CREATE TABLE empleats
(
    empleat_id        	INT,
    nom 				VARCHAR(20),
    cognoms 			VARCHAR(25) NOT NULL,
    email 				VARCHAR(35) NOT NULL,
    telefon 			VARCHAR(20),
    data_contractacio 	DATE NOT NULL,
    feina_codi 			CHAR(10) NOT NULL,
    salari 				DECIMAL(8,2),
    pct_comissio 		DECIMAL(5,2),
    id_cap 				INT,
    departament_id 		INT,
	CONSTRAINT pk_empleats PRIMARY KEY (empleat_id),
    CONSTRAINT fk_empleats_feines FOREIGN KEY(feina_codi) 
		  REFERENCES feines(feina_codi),
    CONSTRAINT fk_empleats_cap_empleat FOREIGN KEY(ID_CAP) 
		  REFERENCES empleats(empleat_id),
    CONSTRAINT fk_empleats_departaments FOREIGN KEY(departament_id) 
		REFERENCES departaments(departament_id),
     CONSTRAINT uk_empleats_email UNIQUE(email)
) Engine = InnoDB;

CREATE TABLE historial_feines
(
  empleat_id 		INT,
  data_inici 		DATE NOT NULL,
  data_fi 			DATE NOT NULL,
  feina_codi 		CHAR(10) NOT NULL,
  departament_id 	INT,
  CONSTRAINT pk_historial_feines PRIMARY KEY(empleat_id, feina_codi),
  CONSTRAINT fk_historial_feines_empleats FOREIGN KEY(empleat_id) 
	  REFERENCES empleats(empleat_id),  
  CONSTRAINT fk_historial_feines_feines  FOREIGN KEY(feina_codi) 
	  REFERENCES feines(feina_codi),
  CONSTRAINT fk_historial_feines_departaments FOREIGN KEY(departament_id) 
	  REFERENCES departaments(departament_id)    
) Engine = InnoDB;

 


/* Inserts */


INSERT INTO regions VALUES (1, 'Europa');
INSERT INTO regions VALUES (2, 'Amèrica');
INSERT INTO regions VALUES (3, 'Àsia');
INSERT INTO regions VALUES (4, 'Àfrica');



INSERT INTO paisos VALUES( 'CA', 'Canadà', 2);
INSERT INTO paisos VALUES( 'DE', 'Alemanya', 1);
INSERT INTO paisos VALUES( 'UK', 'Regne Unit', 1);
INSERT INTO paisos VALUES( 'US', 'Estats Units', 2);



INSERT INTO localitzacions VALUES( 1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US');
INSERT INTO localitzacions VALUES( 1500, '2001 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US');
INSERT INTO localitzacions VALUES( 1700, '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US');
INSERT INTO localitzacions VALUES( 1800, '460 Bloor St. W.', 'ON M5S 1X8', 'Toronto', 'Ontario', 'CA');
INSERT INTO localitzacions VALUES( 2500, 'Magdalen Centre, The Ofxord Science Park', 'OX9 9ZB', 'Oxford', 'Oxford', 'UK');
INSERT INTO localitzacions VALUES( 2600, 'Hellmuth-Hirth-Str. 1', '73760', 'Stadt Ostfildern', 'Baden-Württemberg', 'DE');
INSERT INTO localitzacions VALUES( 1900, '220 Robert S Street', 'ON M5S 2K7', 'Toronto', 'Ontario', 'CA');



INSERT INTO departaments VALUES (10, 'Administració',  1700);
INSERT INTO departaments VALUES (20, 'Marketing',  1800);
INSERT INTO departaments VALUES (50, 'Vendes', 1500);
INSERT INTO departaments VALUES (60, 'IT', 1400);
INSERT INTO departaments VALUES (80, 'Compres',  2500);
INSERT INTO departaments VALUES (90, 'Directiu',  1700);
INSERT INTO departaments VALUES (110, 'Contable',  1700);
INSERT INTO departaments VALUES (190, 'Recursos Humans',  1700);



INSERT INTO feines VALUES('AD_PRES', 'President', 20000, 40000);
INSERT INTO feines VALUES('AD_VP', 'Vice President', 15000, 30000);
INSERT INTO feines VALUES('AD_ASST', 'Ajudant de direcció', 3000, 6000);
INSERT INTO feines VALUES('AC_MGR', 'Cap Contable', 8200, 16000);
INSERT INTO feines VALUES('AC_ACCOUNT', 'Contable', 4200, 9000);
INSERT INTO feines VALUES('SA_MAN', 'Cap de Vendes', 10000, 20000);
INSERT INTO feines VALUES('SA_REP', 'Venedor', 6000, 12000);
INSERT INTO feines VALUES('ST_MAN', 'Cap Logística', 5500, 8500);
INSERT INTO feines VALUES('ST_CLERK', 'Secretari Logísitca', 2000, 5000);
INSERT INTO feines VALUES('IT_PROG', 'Programador', 4000, 10000);
INSERT INTO feines VALUES('MK_MAN', 'Cap de Marketing', 9000, 15000);
INSERT INTO feines VALUES('MK_REP', 'Representant de Marketing', 4000, 9000);



INSERT INTO empleats VALUES (100, 'Steven', 'King', 'sking@empresa.cat', '515.123.4567', '1987-06-17','AD_PRES', 24000, NULL, NULL, 90);
INSERT INTO empleats VALUES (101, 'Neena', 'Kochhar', 'nkochhar@empresa.cat', '515.123.4568', '1989-09-21','AD_VP', 17000, NULL, 100, 90); 
INSERT INTO empleats VALUES (102, 'Lex', 'De Haan', 'ldehaan@empresa.cat', '515.123.4569', '1993-01-13','AD_VP', 17000, NULL, 100, 90); 
INSERT INTO empleats VALUES (103, 'Alexander', 'Hunold', 'ahunold@empresa.cat', '590.423.4567', '1990-01-03','IT_PROG', 9000, NULL, 102, 60); 
INSERT INTO empleats VALUES (104, 'Bruce', 'Ernst', 'bernst@empresa.cat', '590.423.4568', '1991-05-21','IT_PROG', 6000, NULL, 103, 60); 
INSERT INTO empleats VALUES (107, 'Diana', 'Lorentz', 'dlorentz@empresa.cat', '590.423.5567', '1999-02-07','IT_PROG', 4200, NULL, 103, 60); 
INSERT INTO empleats VALUES (124, 'Kevin', 'Mourgos', 'kmourgos@empresa.cat', '650.123.5234', '1999-11-16','ST_MAN', 5800, NULL, 100, 50); 
INSERT INTO empleats VALUES (141, 'Trenna', 'Rajs', 'trajs@empresa.cat', '650.121.8009', '1995-10-17','ST_CLERK', 3500, NULL, 124, 50); 
INSERT INTO empleats VALUES (142, 'Curtis', 'Davies', 'cdavies@empresa.cat', '650.121.2994', '1997-01-29','ST_CLERK', 3100, NULL, 124, 50); 
INSERT INTO empleats VALUES (143, 'Randall', 'Matos', 'rmatos@empresa.cat', '650.121.2874', '1998-03-15','ST_CLERK', 2600, NULL, 124, 50); 
INSERT INTO empleats VALUES (144, 'Peter', 'Vargas', 'pvargas@empresa.cat', '650.121.2004', '1998-09-07','ST_CLERK', 2500, NULL, 124, 50); 
INSERT INTO empleats VALUES (149, 'Eleni', 'Zlotkey', 'ezlotkey@empresa.cat', '011.44.1344.429018', '2000-01-29','SA_MAN', 10500, .2, 100, 80); 
INSERT INTO empleats VALUES (174, 'Ellen', 'Abel', 'eabel@empresa.cat', '011.44.1644.429267', '1996-05-11','SA_REP', 11000, .3, 149, 80); 
INSERT INTO empleats VALUES (176, 'Jonathan', 'Taylor', 'jtaylor@empresa.cat', '011.44.1644.429265', '1998-03-24','SA_REP', 8600, .2, 149, 80); 
INSERT INTO empleats VALUES (178, 'Kimberely', 'Grant', 'kgrant@empresa.cat', '011.44.1644.429263', '1999-05-24','SA_REP', 7000, .15, 149, NULL); 
INSERT INTO empleats VALUES (200, 'Jennifer', 'Whalen', 'jwhalen@empresa.cat', '515.123.4444', '1987-09-17','AD_ASST', 4400, NULL, 101, 10); 
INSERT INTO empleats VALUES (201, 'Michael', 'Hartstein', 'mhartste@empresa.cat', '515.123.5555', '1996-02-17','MK_MAN', 13000, NULL, 100, 20); 
INSERT INTO empleats VALUES (202, 'Pat', 'Fay', 'pfay@empresa.cat', '603.123.6666', '1997-08-17','MK_REP', 6000, NULL, 201, 20); 
INSERT INTO empleats VALUES (205, 'Shelley', 'Higgins', 'shiggins@empresa.cat', '515.123.8080', '1994-06-07','AC_MGR', 12000, NULL, 101, 110); 
INSERT INTO empleats VALUES (206, 'William', 'Gietz', 'wgietz@empresa.cat', '515.123.8181', '1994-06-07','AC_ACCOUNT', 8300, NULL, 205, 110);  
INSERT INTO empleats VALUES (207, 'Sarah', 'Connor', 'sconnor@empresa.cat', '515.457.8574', '1994-08-17','AC_ACCOUNT', 9000, NULL, 205, 110);  


INSERT INTO historial_feines VALUES( 102, '1993-01-13', '1998-07-24', 'IT_PROG', 60);
INSERT INTO historial_feines VALUES( 101, '1993-10-28', '1997-03-15', 'SA_MAN', 90);
INSERT INTO historial_feines VALUES( 101, '1989-09-21', '1993-10-27', 'AC_ACCOUNT', 110);
INSERT INTO historial_feines VALUES( 201, '1996-02-17', '1999-12-19', 'MK_REP', 20);
INSERT INTO historial_feines VALUES( 144, '1998-03-24', '1999-12-31', 'ST_CLERK', 50);
INSERT INTO historial_feines VALUES( 142, '1999-01-01', '1999-12-31', 'ST_CLERK', 50);
INSERT INTO historial_feines VALUES( 200, '1987-09-17', '1993-06-17', 'AD_ASST', 90);
INSERT INTO historial_feines VALUES( 176, '1998-03-24', '1998-12-31', 'SA_REP', 80);
INSERT INTO historial_feines VALUES( 176, '1999-01-01', '1999-12-31', 'SA_MAN', 80);
INSERT INTO historial_feines VALUES( 200, '1994-07-01', '1998-12-31', 'AC_ACCOUNT', 90);






/* Fi script */
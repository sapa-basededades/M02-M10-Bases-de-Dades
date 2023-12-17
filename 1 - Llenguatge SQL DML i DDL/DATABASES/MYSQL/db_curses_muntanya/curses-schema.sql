-- --------------------------------------------------------------
-- SCHEMA de BBDD de curses de muntanya en bicicleta
-- Autor: Robert Ventura
-- Data:  09/09/2017
-- Descripció: Script per la creació de l'esquelet de la BD
-- --------------------------------------------------------------

DROP DATABASE IF EXISTS curses_muntanya;

CREATE DATABASE IF NOT EXISTS curses_muntanya;

USE curses_muntanya;

CREATE TABLE equips (
	equip_id	SMALLINT UNSIGNED PRIMARY KEY,
	nom			VARCHAR(30) NOT NULL,
	esponsor	VARCHAR(20) NOT NULL,
	director	VARCHAR(20) NOT NULL,
	pressupost	DECIMAL(11,3)
);

CREATE TABLE ciclistes (
	ciclista_id	SMALLINT UNSIGNED PRIMARY KEY,
	nom			VARCHAR(20) NOT NULL,
	sexe		ENUM('H','D'),
	data_naix	DATE NOT NULL,
	bici		VARCHAR(15) NOT NULL,
	equip_id	SMALLINT UNSIGNED,
	esponsor	VARCHAR(20),
	CONSTRAINT FK_CIC_EQ FOREIGN KEY (equip_id) REFERENCES equips(equip_id)
);

CREATE TABLE temporades (
	temporada_id	TINYINT UNSIGNED PRIMARY KEY,
	nom				VARCHAR(20),
	data_inici		DATE NOT NULL,
	data_fi			DATE NOT NULL
);


CREATE TABLE curses (
	cursa_codi		SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	nom				VARCHAR(50) NOT NULL,
	temporada_id	TINYINT UNSIGNED NOT NULL,
	poble			VARCHAR(30) NOT NULL,
	data_cursa		DATE NOT NULL,
	edicio			TINYINT UNSIGNED COMMENT 'Número d\'anys/vegades que es porta celebrant la cursa',
	kmrutal			TINYINT UNSIGNED NOT NULL,
	kmrutac			TINYINT UNSIGNED NOT NULL,

	CONSTRAINT FK_CUR_TEMP FOREIGN KEY (temporada_id) REFERENCES temporades(temporada_id)
);

CREATE TABLE sortides (
	ciclista_id	SMALLINT UNSIGNED,
	cursa_codi	SMALLINT UNSIGNED,
	tipus		ENUM('L','C') COMMENT 'Especifica si la sortida ha estat de la ruta curta o llarga',
	punts		SMALLINT UNSIGNED,
	temps		SMALLINT UNSIGNED,
	
	CONSTRAINT PK_SORTIDES PRIMARY KEY (cursa_codi,ciclista_id,tipus),
	CONSTRAINT FK_SORT_CIC FOREIGN KEY (ciclista_id) REFERENCES ciclistes(ciclista_id),
	CONSTRAINT FK_SORT_CUR FOREIGN KEY (cursa_codi) REFERENCES curses(cursa_codi)
);

CREATE TABLE guanyadors (
	ciclista_id	SMALLINT UNSIGNED,
	cursa_codi	SMALLINT UNSIGNED,
	tipus		ENUM('L','C') COMMENT 'Especifica si la sortida ha estat de la ruta curta o llarga',
	punts		SMALLINT UNSIGNED,
	temps		SMALLINT UNSIGNED,
	
	CONSTRAINT PK_GUANYADORS PRIMARY KEY (cursa_codi,ciclista_id,tipus),
	CONSTRAINT FK_GUA_CIC FOREIGN KEY (ciclista_id) REFERENCES ciclistes(ciclista_id),
	CONSTRAINT FK_GUA_CUR FOREIGN KEY (cursa_codi) REFERENCES curses(cursa_codi)
);


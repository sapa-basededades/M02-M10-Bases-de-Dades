CREATE DATABASE enquesta;

CREATE TABLE enquestador (
    idenquestador INTEGER,
    nom VARCHAR(100),
    localitat VARCHAR(100),
    passwd VARCHAR(10),
    CONSTRAINT idenquestador_pk PRIMARY KEY(idenquestador)
);

INSERT INTO enquestador(idenquestador,nom,localitat,passwd)
VALUES (1,'Francesc','Anglès','mypass1'),
       (2,'Angel','Anglès','mypass2'),
       (3,'Quim','Anglès','mypass3');

CREATE TABLE enquestes(
    idenquesta INTEGER,
    descripcio VARCHAR(100),
    datainici DATE,
    datafinal DATE,
    CONSTRAINT idenquesta_pk PRIMARY KEY(idenquesta)
);

INSERT INTO enquestes(idenquesta,descripcio,datainici,datafinal)
VALUES (1,'Enquesta sobre la Nocilla','2023-01-01','2023-12-31'),
       (2,'Enquesta sobre la Nutella','2023-01-01','2023-12-31');

CREATE TABLE enquestaenquestador(
    idenquesta INTEGER,
    idenquestador INTEGER,
    CONSTRAINT enquestaenquestador_pk PRIMARY KEY(idenquesta,idenquestador),
    CONSTRAINT idenquesta_fk FOREIGN KEY(idenquesta) REFERENCES enquestes (idenquesta),
    CONSTRAINT idenquestador_fk FOREIGN KEY(idenquestador) REFERENCES enquestador (idenquestador) 
);

INSERT INTO enquestaenquestador(idenquesta,idenquestador)
VALUES(1,1),
      (1,2),
      (2,2),
      (2,3);


CREATE TABLE preguntestipus(
    idtipus INTEGER,
    descripcio VARCHAR(100),
    CONSTRAINT idtipus_pk PRIMARY KEY(idtipus)
);

INSERT INTO preguntestipus(idtipus,descripcio)
VALUES (0,'Text'),
       (1,'SiNo'),
       (2,'Slider'),
       (3,'Imatge'),
       (4,'Multiopcio');


CREATE TABLE preguntes(
    idpregunta INTEGER,
    enunciat VARCHAR(100),
    idtipus INTEGER,
    CONSTRAINT idpregunta_pk PRIMARY KEY(idpregunta) 
);

INSERT INTO preguntes(idpregunta,enunciat,idtipus)
VALUES(1,'Quin es el teu nom?',0),
      (2,'Estas casat/da?',1),
      (3,'Quants anys tens?',2),
      (4,'T agrada la Nocilla?',1),
      (5,'T agrada la Nutella?',1),
      (6,'En quin pais vas neixer?',4);


CREATE TABLE enquestapreguntes(
    idenquesta INTEGER,
    idpregunta INTEGER,
    CONSTRAINT enquestapreguntes_pk PRIMARY KEY(idenquesta,idpregunta),
    CONSTRAINT idenquesta_fk FOREIGN KEY(idenquesta) REFERENCES enquestes (idenquesta),
    CONSTRAINT idpregunta_fk FOREIGN KEY(idpregunta) REFERENCES preguntes (idpregunta) 
); 

INSERT INTO enquestapreguntes(idenquesta,idpregunta)
VALUES(1,1),
      (1,2),
      (1,3),
      (1,4),
      (1,6);

INSERT INTO enquestapreguntes(idenquesta,idpregunta)
VALUES(2,1),
      (2,2),
      (2,3),
      (2,5),
      (2,6);

CREATE TABLE preguntaopcions(
    idpregunta INTEGER,
    idopcion INTEGER,
    opciondes VARCHAR(100),
    CONSTRAINT preguntaopcions_pk PRIMARY KEY(idpregunta,idopcion),
    CONSTRAINT idpregunta_fk FOREIGN KEY(idpregunta) REFERENCES preguntes(idpregunta)
);

INSERT INTO preguntaopcions(idpregunta,idopcion,opciondes)
VALUES (6,1,'Espanya'),
       (6,2, 'França'),
       (6,3, 'Italia'),
       (6,4,'Altres');
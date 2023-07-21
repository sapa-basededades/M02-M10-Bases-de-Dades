CREATE TYPE coordenada AS 
( 
 latitud float,
 longitud float
); 

CREATE TYPE adreca AS 
( 
 carrer text,
 numero text,  
 poblacio text,
 codi_postal varchar(5), 
 posicio coordenada
); 

CREATE TABLE usuari 
(  
 id serial not null primary key,
 nom text,  
 cognoms text,
 data_naixement date, 
 telefon varchar(11),
 email text,  
 domicili adreca
);  

INSERT INTO usuari(nom,cognoms,data_naixement,telefon,email,domicili) VALUES  
(
 'laura',
 'garcia perez',   '1979-09-15',
 '650435647',   'lgarcia@dfre.cat',
 ROW('sant pere','10','lloret de mar','17310',ROW(41.699904021726496, 2.846679613059704))
 );

INSERT INTO usuari(nom,cognoms,data_naixement,telefon,email,domicili) VALUES 
(
 'albert',
 'pibernat menendez',   '1975-04-23',
 '654321298',   'rpibernat@fest.org',
 ROW('ample','20','blanes','17300',ROW(41.67476909919283, 2.7918434747287906))
 );

SELECT * FROM usuari;

SELECT nom,cognoms,(domicili).poblacio FROM usuari;

SELECT nom,cognoms,(domicili).poblacio,(domicili).posicio.latitud,(domicili).posicio.longitud FROM usuari;  

SELECT
    id, nom, cognoms,(domicili).carrer,(domicili).numero,
    (domicili).posicio.latitud,(domicili).posicio.longitud 
FROM usuari;


UPDATE usuari SET
    domicili.carrer = 'llarg', domicili.numero = '15',
    domicili.posicio = ROW(41.67454217779667, 2.7896852133632413) 
WHERE id = 2;

SELECT
    id, nom, cognoms,(domicili).carrer,(domicili).numero,
    (domicili).posicio.latitud,(domicili).posicio.longitud 
FROM usuari;

CREATE PROCEDURE inserir_dades_usuari(n text, c text, d date, t varchar(11), e text)  
LANGUAGE SQL AS $$
	INSERT INTO usuari(nom,cognoms,data_naixement,telefon,email) VALUES (n,c,d,t,e);  
$$;

CALL inserir_dades_usuari('genis','torroella lopez','1943-02-27','972362123','getorlo@linosa.org');  

SELECT id,nom,cognoms,data_naixement,telefon,email FROM usuari;  

SELECT id,domicili FROM usuari;


CREATE PROCEDURE afegir_domicili_usuari(i integer, c text, n text, p text, cp varchar(5), la float, lo float)  
LANGUAGE SQL AS $$
    UPDATE usuari 
    SET  domicili.carrer = c,  
    domicili.numero = n,  domicili.poblacio = p,  domicili.codi_postal = cp,  domicili.posicio = ROW(la,lo)
    WHERE id = i;
$$;

SELECT id,nom,cognoms,domicili FROM usuari WHERE id = 3;  

CALL afegir_domicili_usuari(3,'enric granados','9','lloret de mar','17310',41.70060029780517,2.8440005952061647);  

SELECT id,nom,cognoms,domicili FROM usuari WHERE id = 3;

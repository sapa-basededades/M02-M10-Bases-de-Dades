
CREATE TYPE t_persona AS 
(
 dni varchar(9),
 nom text,
 cognoms text,
 adreca text
);

CREATE TYPE t_telefon AS 
(
 tipus varchar(10),
 numero varchar (11)   
);

CREATE TABLE persona OF t_persona 
(
 PRIMARY KEY (dni)
);

CREATE TABLE directori_telefonic 
(
 telefon t_telefon,
 usuari varchar(9) REFERENCES persona
);

CREATE PROCEDURE afegir_persona(d varchar(9), n text, c text, a text)  
LANGUAGE SQL AS $$
	INSERT INTO persona VALUES (d,n,c,a);
$$;

CREATE FUNCTION mostrar_persones() RETURNS table(d text, n text, c text)  
LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY SELECT dni::text, nom, cognoms FROM persona;
END;
$$;

CREATE PROCEDURE afegir_telefon(t varchar(10), n varchar(11), d varchar(9))  
LANGUAGE SQL AS $$
	INSERT INTO directori_telefonic VALUES (ROW(t,n),d);   
$$;

CALL afegir_persona('41231659d','anna','clapes serra','carrer ample 10, blanes, 17300, girona');  
CALL afegir_persona('42546962j','pere','garcia vila','carrer nou 12, lloret de mar, 17310, girona');  
CALL afegir_persona('36496211n','laura','perez lopez','carre issac albeniz 1, tossa, 17320, girona');  
SELECT mostrar_persones();  

CALL afegir_telefon('fix','972335794','41231659d');
CALL afegir_telefon('movil','650334219','42546962j');  
-- CALL afegir_telefon('movil','645321123','11111111a');
CALL afegir_telefon('fix','972340100','36496211n');

SELECT * FROM directori_telefonic;  
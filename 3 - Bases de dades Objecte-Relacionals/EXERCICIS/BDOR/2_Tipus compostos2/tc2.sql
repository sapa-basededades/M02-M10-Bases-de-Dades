CREATE TYPE t_persona AS 
(
 dni varchar(9),  
 nom text,
 cognoms text  
);

CREATE TYPE t_telefon AS 
(  
 prefix_internacional varchar(4), 
 numero varchar(9)
);  


CREATE TABLE persona 
(
 id serial PRIMARY KEY,  
 dades t_persona,  
 nums_tel integer,  
 telefons t_telefon[3]  
);

CREATE OR REPLACE PROCEDURE afegir_persona(d varchar(9), n text, c text) 
LANGUAGE SQL AS 
$$
    INSERT INTO persona(dades.dni,dades.nom,dades.cognoms,nums_tel)  VALUES (d,n,c,0);
$$;


SELECT * FROM persona;  

CALL afegir_persona('23128437i','pere','marti vidal');

SELECT * FROM persona;


CREATE OR REPLACE PROCEDURE afegir_num_tel(d varchar(9), p varchar(4), t varchar(9)) 
LANGUAGE plpgsql AS $$
DECLARE  
	n integer;
BEGIN
    IF EXISTS (SELECT * FROM persona WHERE (dades).dni LIKE d) THEN  
		SELECT nums_tel INTO n FROM persona WHERE (dades).dni = d;  
    	IF (n < 3) THEN
        	UPDATE persona SET telefons[n].prefix_internacional =	p WHERE (dades).dni = d;
        	UPDATE persona SET telefons[n].numero = t WHERE (dades).dni = d;  
        	UPDATE persona SET nums_tel	= n+1;
    	END IF;
	END IF;
END;
$$;

SELECT * FROM persona WHERE (dades).dni = '23128437i';

CALL afegir_num_tel('23128437i','34','650573881');  

SELECT * FROM persona WHERE (dades).dni = '23128437i';  

CALL afegir_num_tel('23128437i','35','643256211');  
SELECT * FROM persona WHERE (dades).dni = '23128437i';

CALL afegir_num_tel('23128437i','36','723451133');  
SELECT * FROM persona WHERE (dades).dni = '23128437i';

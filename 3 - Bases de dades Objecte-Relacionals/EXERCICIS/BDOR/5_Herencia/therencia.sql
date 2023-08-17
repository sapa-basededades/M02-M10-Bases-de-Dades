
CREATE TABLE persona
(
 id serial,
 nom varchar(30),
 cognoms varchar(60),
 d_naixement date);


CREATE TABLE estudiant 
(   
 nom_cf varchar(50),   
 curs char,
 notes_mp int[15]   
) 
 INHERITS (persona);


SELECT * FROM estudiant;

CREATE PROCEDURE afegir_estudiant(i integer, n varchar(30), c varchar(60), d date)  
LANGUAGE SQL AS $$
    INSERT INTO estudiant (id,nom,cognoms,d_naixement) VALUES (i,n,c,d);
$$;

CALL afegir_estudiant(1,'monica','garcia lopez','2005-10-21');  
CALL afegir_estudiant(2,'laura','lopez perez','2005-04-12');
CALL afegir_estudiant(2,'laura','lopez perez','2005-04-12');
CALL afegir_estudiant(4,'oscar','garcia menendez','2005-05-17');
SELECT * FROM estudiant;

CREATE PROCEDURE afegir_estudiant_cf(i integer, n varchar(50), c char)  
LANGUAGE SQL AS $$
    UPDATE estudiant SET nom_cf = n WHERE id = i;  
    UPDATE estudiant SET curs = c WHERE id = i;
$$;

CALL afegir_estudiant_cf(1,'dam','1');  
CALL afegir_estudiant_cf(2,'daw','1');  
CALL afegir_estudiant_cf(3,'asix','1');  
CALL afegir_estudiant_cf(4,'asix','2');  
SELECT * FROM estudiant;


CREATE PROCEDURE afegir_nota_estudiant_cf(i integer, m int, n int)  
LANGUAGE SQL AS $$
    UPDATE estudiant SET notes_mp[m] = n WHERE id = i;  
$$;

CALL afegir_nota_estudiant_cf(2,1,4);  
CALL afegir_nota_estudiant_cf(2,2,9);  
CALL afegir_nota_estudiant_cf(3,1,5);  
CALL afegir_nota_estudiant_cf(3,2,7);  
CALL afegir_nota_estudiant_cf(3,3,2);  
CALL afegir_nota_estudiant_cf(4,3,1); 
CALL afegir_nota_estudiant_cf(4,1,4);  

SELECT * FROM estudiant;



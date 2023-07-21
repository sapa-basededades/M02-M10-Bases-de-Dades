/*Exemple 1. Controlar quan es poden afegir dades*/

CREATE OR REPLACE FUNCTION ins_countries() RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN 
   IF(TO_CHAR(NOW(),'HH24') NOT IN ('9','10','11','12','13')) THEN 
           RAISE EXCEPTION 'Nomes es poden afegir paisos entre les 9:00 i les 13:59.'; 
   END IF; 
END $$;


CREATE TRIGGER tr_ins_countries
BEFORE INSERT ON countries 
EXECUTE PROCEDURE ins_countries();

--Prova
insert into countries values(56,'nou pais',1);

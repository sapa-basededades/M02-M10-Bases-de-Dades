/*** EXEMPLE FUNCIONS que retornen un valor ****/


/* Exemple 1: Funció sense paràmetres */

CREATE OR REPLACE FUNCTION getDIA() RETURNS VARCHAR
LANGUAGE plpgsql AS $$
BEGIN
  RETURN (TO_CHAR(CURRENT_DATE, 'DAY'));
END;$$;

/*Exemple utilitzacio*/
do $$
BEGIN
 raise notice '%', getDIA();
END;$$;

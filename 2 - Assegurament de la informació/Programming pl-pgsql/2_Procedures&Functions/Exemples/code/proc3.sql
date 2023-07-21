/* Exemple 3: Amb parametre de sortida OUT, en aquest cas no cal indicar la clàusula RETURNS */
             /* ja que retornarà els valors en els paràmetres de sortida */
/* Database: Any */

CREATE OR REPLACE FUNCTION CONCATENAR2(cad1 VARCHAR, cad2 VARCHAR, result OUT VARCHAR) LANGUAGE plpgsql AS $$
BEGIN
    result:= cad1 || cad2;
END;$$;

/*Exemple utilització*/
DO $$
DECLARE
 resultat VARCHAR(50);
BEGIN
 select * from CONCATENAR2('Hola', ' que tal') into resultat;
 RAISE NOTICE 'El resultat es: %' , resultat;
END;$$; 

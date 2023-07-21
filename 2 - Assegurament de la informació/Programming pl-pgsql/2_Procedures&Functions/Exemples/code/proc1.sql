/*** FUNCIONS QUE NO RETORNEN CAP VALOR, EL QUE EN ALTRES LLENGUATGES DE PROGRAMACIÓ ANOMENEM PROCEDIMENTS O ACCIONS ***/

/* Exemple 1: Sense paràmetres*/
/* Database: Any */

CREATE OR REPLACE FUNCTION Hello() RETURNS void
LANGUAGE plpgsql AS $$
BEGIN
   RAISE NOTICE 'Hello World!';
END; $$;

/** Exemples utilització **/
do $$
DECLARE
  X char;
BEGIN
  select Hello() into X;
END;

SELECT Hello();


/* Exemple 5: Condicional IF Simple */ 
/* Database: Any */

DO $$
DECLARE
  edat NUMERIC := 18;

BEGIN
  
  IF edat >= 18 THEN
     RAISE NOTICE 'Ets major de edat.';
  END IF;

END $$;

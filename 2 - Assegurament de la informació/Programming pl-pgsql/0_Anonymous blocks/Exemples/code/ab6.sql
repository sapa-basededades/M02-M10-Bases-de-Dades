/* Exemple 6: Condicional IF ELSE */ 
/* Database: Any */

DO $$
DECLARE
  edat NUMERIC := 18;

BEGIN
  
  IF edat >= 18 THEN
     RAISE NOTICE 'Ets major de edat.';
  ELSE 
     RAISE NOTICE 'Ets peque.';
  END IF;

END $$;

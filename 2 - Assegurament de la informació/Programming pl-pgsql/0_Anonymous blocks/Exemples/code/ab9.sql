/* Exemple 9: WHILE */
/* Database: Any*/

DO $$
DECLARE
      c NUMERIC :=1;  
BEGIN  
      WHILE c <= 10 LOOP  
        RAISE NOTICE '%', c;   
        c := c + 1;  
      END LOOP;  
END $$;  

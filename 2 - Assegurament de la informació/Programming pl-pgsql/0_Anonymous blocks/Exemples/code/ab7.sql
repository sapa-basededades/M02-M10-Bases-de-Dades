/* Exemple 7: CASE */ 
/* Database: Any*/

DO $$
DECLARE
  nota CHAR(1) := 'A';
  text VARCHAR(15);
BEGIN
   
   text := CASE nota
              WHEN 'A'  THEN 'Excel·lent'
              WHEN 'B'  THEN 'Notable'
              WHEN 'C'  THEN 'Suficient'
              WHEN 'D'  THEN 'Deficient'
              ELSE 'Desconegut'
            END;
            
   RAISE NOTICE '%', text;    

END $$;

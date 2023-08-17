/* Exemple 3: Declarar variables indicant el seu tipus a partir 
              del tipus d'un camp d'una altre taula */ 
/* Database: HR */

DO $$                
DECLARE
  vSalari EMPLOYEES.salary%TYPE;
BEGIN
   vSalari := 1500.45;
   RAISE NOTICE 'El salari es de : %' , vSalari;
END $$;

/* Exemple 4: Carregar camps d'una taula en variables
     SELECT camp1, camp2 INTO variable1, variable2 FROM ...
     IMPORTANT: EL SELECT INTO només funciona si el resultat de la consulta torna NOMES UNA FILA!    */
/* Database: HR*/

DO $$
DECLARE
  vSalari EMPLOYEES.salary%TYPE;
BEGIN

  SELECT salary 
    INTO vSalari 
    FROM employees
   WHERE employee_id = 101;
  
   RAISE NOTICE 'Empleat 101 te un salari de : %' , vSalari;
   
END $$;


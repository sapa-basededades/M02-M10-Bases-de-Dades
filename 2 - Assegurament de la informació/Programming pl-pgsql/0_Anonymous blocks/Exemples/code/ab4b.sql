/* Exemple 4b: Select into quan no es retorna cap fila */
/*             PROVAR AMB EMPLEAT 101 I EMPLEAT 1 */
/* Database: HR*/

DO $$
DECLARE
  vSalari EMPLOYEES.salary%TYPE;
BEGIN

  SELECT salary 
    INTO vSalari 
    FROM employees
   WHERE employee_id = 101;
   
   IF FOUND THEN
     RAISE NOTICE 'Empleat 101 te un salari de : % ' , vSalari;
   ELSE 
     RAISE NOTICE 'No s’ha trobat l’empleat. ';
   END IF;
END $$;

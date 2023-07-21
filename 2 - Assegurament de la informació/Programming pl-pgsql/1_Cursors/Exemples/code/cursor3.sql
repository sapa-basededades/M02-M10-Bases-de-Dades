/* Exemple 3: Amb FOR més simplificat*/
/* Database: HR*/

DO $$
DECLARE
  fila_Empleat record;
BEGIN

 FOR fila_Empleat IN  (SELECT employee_id, first_name, salary
                         FROM employees
                        WHERE salary > 6000
                        ORDER BY salary) LOOP                    
     
 	RAISE NOTICE '% % %' , fila_Empleat.employee_id, fila_Empleat.first_name, fila_Empleat.salary;

 END LOOP;
 
END $$;
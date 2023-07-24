/* Exemple 5. Actualitzacions en recòrrer registres */
/* Database: HR */

DO $$
DECLARE
 cur_employees CURSOR FOR 
      SELECT employee_id, first_name, salary, department_id
        FROM employees
       WHERE salary > 6000;
BEGIN
    FOR v_curEmployees_fila IN cur_employees LOOP
       --Depen del departament increntem el salari un % determinat
       IF v_curEmployees_fila.department_id = 5 THEN 
          UPDATE employees
             SET salary = salary*1.10
           WHERE CURRENT of cur_employees;
       ELSIF  v_curEmployees_fila.department_id BETWEEN 6 AND 8 THEN
          UPDATE employees
             SET salary = salary*1.15
           WHERE CURRENT of cur_employees;
       END IF;
       
       RAISE NOTICE '% % %' , v_CurEmployees_fila.employee_id,        v_CurEmployees_fila.first_name, v_CurEmployees_fila.salary;
  
  END LOOP;  

END $$;

/* Exemple 4: Cursor amb paràmetres */
/* Database: HR */

do $$
DECLARE

  cur_employees CURSOR(p_salary EMPLOYEES.SALARY%TYPE) FOR 
      SELECT employee_id, first_name, salary
        FROM employees
       WHERE salary > p_salary
       ORDER BY salary;
       
   v_employee_id EMPLOYEES.EMPLOYEE_ID%TYPE;
   v_first_name  EMPLOYEES.FIRST_NAME%TYPE;
   v_salary      EMPLOYEES.SALARY%TYPE;
   
   p_salary EMPLOYEES.SALARY%TYPE := 6000;
BEGIN

   OPEN cur_employees(p_salary);
  
   LOOP 
      
      FETCH cur_employees INTO v_employee_id, v_first_name, v_salary;
      EXIT WHEN NOT FOUND;
      RAISE NOTICE '% % %' , v_employee_id, v_first_name, v_salary;
 
   END LOOP;  
  
  CLOSE cur_employees;
  
  --Utilitzar el mateix cursor pero amb FOR
  FOR v_curEmployees_fila IN cur_employees(p_salary) LOOP
      RAISE NOTICE '% % %' , v_CurEmployees_fila.employee_id,        v_CurEmployees_fila.first_name, v_CurEmployees_fila.salary;
  END LOOP;  
  
END $$;

/* Exemple 1: Amb LOOP  */
/* Database: HR*/

DO $$
DECLARE
  --Declarar el cursor (qualsevol SELECT és acceptada)
  cur_employees CURSOR FOR 
      SELECT employee_id, first_name, salary
        FROM employees
       WHERE salary > 6000
       ORDER BY salary;
 
  v_employee_id EMPLOYEES.EMPLOYEE_ID%TYPE;
  v_first_name  EMPLOYEES.FIRST_NAME%TYPE;
  v_salary      EMPLOYEES.SALARY%TYPE;
  

BEGIN
  --Obrir cursor. Es reserva memoria i el posiciona a la primera fila
  OPEN cur_employees; 
  
  LOOP 
    --Carrega les dades en les variables i es posiciona en la següent fila
    FETCH cur_employees INTO v_employee_id, v_first_name, v_salary;
    
    --Per detectar fi de cursor
    EXIT WHEN NOT FOUND;
    
    RAISE NOTICE '% % %', v_employee_id ,v_first_name ,v_salary;
 
  END LOOP;  
  
  --Allibera recursos
  CLOSE cur_employees;

END $$;

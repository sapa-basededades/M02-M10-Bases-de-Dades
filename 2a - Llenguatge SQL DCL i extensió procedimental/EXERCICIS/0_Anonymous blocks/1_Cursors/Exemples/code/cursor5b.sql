/* Exemple 5b:  Fes un cursor per mostrar els 3 empleats que guanyen menys */
/* Database: HR */

do $$
DECLARE
  curEmpleats CURSOR FOR
     select employee_id, first_name, salary
     from   employees
     order by salary asc;
     
     regEmpleats record;
	 rowcount int :=0;
BEGIN     
     OPEN curEmpleats;
     LOOP
        fetch curEmpleats into regEmpleats;
		rowcount := rowcount + 1;
        exit when not found OR rowcount = 4;
        raise notice '% % %', regEmpleats.employee_id , regEmpleats.first_name, regEmpleats.salary;

    END LOOP;

    CLOSE curEmpleats;
     
END $$;


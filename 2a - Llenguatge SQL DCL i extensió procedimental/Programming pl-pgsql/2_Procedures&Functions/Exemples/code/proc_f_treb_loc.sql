CREATE or replace FUNCTION f_treb_localitat(loc_id localtion.location_id%type)
RETURNS void LANGUAGE plgpsql as
$$
DECLARE
    c_tub cursor(loc_id localtion.location_id%type) for 
        (SELECT employee_id,firstname,lastname,salary
        FROM employees e 
        INNER JOIN departments ON e.department_id=d.department_id
        WHERE d.location_id=loc_id)
        l_nom location_name%type;
BEGIN
    SELECT name FROM location into l_nom WHERE location_id=loc_id;
    if found then
        raise notice "Localitat: %",l_nom;
        raise notice "Treballador";
        raise notice "===============================================";
        for r_treb in c_treb(loc_id) loop
            raise notice "% % % %",r_treb.employee_id,r_treb.firstname,r_treb.lastname,r_treb.salary
        end loop;
    end if;
end $$;

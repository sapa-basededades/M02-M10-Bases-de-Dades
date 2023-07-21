/* Exemple 5: Amb paràmetres tipus registre, en aquest cas no s’utilitza %rowtype sinó que s’especifica */
              /*com a tipus el nom de la taula */
/* Database: HR */

CREATE OR REPLACE FUNCTION p_INSERTDEPARTMENTS(department_row DEPARTMENTS) RETURNS void 
LANGUAGE plpgsql AS $$
BEGIN
   IF department_row.department_name IS NOT NULL THEN 
     INSERT INTO departments VALUES (department_row.department_id, department_row.department_name,
 department_row.location_id);
   END IF;
END;$$;

/**Exemple utilització**/
do $$
DECLARE
  row_depart DEPARTMENTS%ROWTYPE;
  x char;
BEGIN
   
   row_depart.department_id := 170;
   row_depart.department_name := 'Logística';
   row_depart.location_id := 1800;
   
   select p_INSERTDEPARTMENTS(row_depart) into x;
   
END;$$;

/* Exemple 3. Taula on es controla quina operacio i quin usuari ha intentat INSERT,UPDATE o DELETE sobre una taula */
/* Database: HR */

CREATE TABLE auditoria_depts (
   usuari    varchar(50),
   data      timestamp,
   operacio  char(1),
   primary key (usuari,data));

CREATE OR REPLACE FUNCTION control_depts() RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
DECLARE 
  var_operacio char(1);
BEGIN  
      IF TG_OP = 'DELETE' THEN  
       var_operacio := 'D'; 
      ELSIF TG_OP = 'INSERT' THEN  
       var_operacio := 'I';
      ELSEIF TG_OP = 'UPDATE' THEN
       var_operacio := 'U';
      END IF;
      INSERT INTO auditoria_depts values (user, now(), var_operacio);
  RETURN NULL;
END $$;
CREATE TRIGGER tr_control_depts  
BEFORE INSERT OR DELETE OR UPDATE ON employees
FOR EACH STATEMENT EXECUTE PROCEDURE control_depts();


--Prova
UPDATE employees
  SET  department_id = 3
WHERE  employee_id = 120;
select * from auditoria_depts;

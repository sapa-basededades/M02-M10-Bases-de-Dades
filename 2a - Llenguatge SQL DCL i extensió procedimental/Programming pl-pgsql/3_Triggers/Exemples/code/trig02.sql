/* Exemple 2. Taula d'auditoria per controlar operacions */
/* Database: HR */

CREATE TABLE empl_audit( 
      empl_num               NUMERIC,           -- codi empleat 
      departament_vell       NUMERIC(4),        -- departament vell 
      departmanet_nou        NUMERIC(4),        -- departament nou 
      data                   TIMESTAMP,         -- data modificacio 
      usuari                 VARCHAR(50),       -- usuari que modifica 
      PRIMARY KEY(data,usuari) 
); 


CREATE OR REPLACE FUNCTION audit_empl() RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN 
       INSERT INTO EMPL_AUDIT 
       VALUES(NEW.employee_id,OLD.department_id,NEW.department_id,now(),USER); 
       RETURN null;
EXCEPTION 
       WHEN OTHERS THEN 
              raise EXCEPTION 'Cagada pasturet: Error no esperat'; 
END $$;

CREATE OR REPLACE TRIGGER tr_audit_empl 
       BEFORE UPDATE OF DEPARTMENT_ID ON EMPLOYEES 
       FOR EACH ROW WHEN (OLD.department_id <> NEW.department_id) 
       EXECUTE PROCEDURE audit_empl();


--Prova
UPDATE employees
  SET  department_id = 1
WHERE  employee_id = 120;

select * from EMPL_AUDIT;

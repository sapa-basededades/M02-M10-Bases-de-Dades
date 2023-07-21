
CREATE TABLE regions (
	region_id SERIAL PRIMARY KEY,
	region_name CHARACTER VARYING (25)
);

CREATE TABLE countries (
	country_id CHARACTER (2) PRIMARY KEY,
	country_name CHARACTER VARYING (40),
	region_id INTEGER NOT NULL,
	FOREIGN KEY (region_id) REFERENCES regions (region_id) ON UPDATE CASCADE ON DELETE CASCADE
);


CREATE TABLE locations (
	location_id SERIAL PRIMARY KEY,
	street_address CHARACTER VARYING (40),
	postal_code CHARACTER VARYING (12),
	city CHARACTER VARYING (30) NOT NULL,
	state_province CHARACTER VARYING (25),
	country_id CHARACTER (2) NOT NULL,
	FOREIGN KEY (country_id) REFERENCES countries (country_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE departments (
	department_id SERIAL PRIMARY KEY,
	department_name CHARACTER VARYING (30) NOT NULL,
	location_id INTEGER,
	FOREIGN KEY (location_id) REFERENCES locations (location_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE jobs (
	job_id SERIAL PRIMARY KEY,
	job_title CHARACTER VARYING (35) NOT NULL,
	min_salary NUMERIC (8, 2),
	max_salary NUMERIC (8, 2)
);

CREATE TABLE employees (
	employee_id SERIAL PRIMARY KEY,
	first_name CHARACTER VARYING (20),
	last_name CHARACTER VARYING (25) NOT NULL,
	email CHARACTER VARYING (100) NOT NULL,
	phone_number CHARACTER VARYING (20),
	hire_date DATE NOT NULL,
	job_id INTEGER NOT NULL,
	salary NUMERIC (8, 2) NOT NULL,
	manager_id INTEGER,
	department_id INTEGER,
	commision NUMERIC(8,2),
	FOREIGN KEY (job_id) REFERENCES jobs (job_id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (department_id) REFERENCES departments (department_id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (manager_id) REFERENCES employees (employee_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE dependents (
	dependent_id SERIAL PRIMARY KEY,
	first_name CHARACTER VARYING (50) NOT NULL,
	last_name CHARACTER VARYING (50) NOT NULL,
	relationship CHARACTER VARYING (25) NOT NULL,
	employee_id INTEGER NOT NULL,
	FOREIGN KEY (employee_id) REFERENCES employees (employee_id) ON DELETE CASCADE ON UPDATE CASCADE
);



CREATE OR REPLACE FUNCTION fnNumberToWords(n BIGINT) RETURNS TEXT AS
$$
DECLARE
  e TEXT;
BEGIN
  WITH Below20(Word, Id) AS
  (
    VALUES
      ('Zero', 0), ('One', 1),( 'Two', 2 ), ( 'Three', 3),
      ( 'Four', 4 ), ( 'Five', 5 ), ( 'Six', 6 ), ( 'Seven', 7 ),
      ( 'Eight', 8), ( 'Nine', 9), ( 'Ten', 10), ( 'Eleven', 11 ),
      ( 'Twelve', 12 ), ( 'Thirteen', 13 ), ( 'Fourteen', 14),
      ( 'Fifteen', 15 ), ('Sixteen', 16 ), ( 'Seventeen', 17),
      ('Eighteen', 18 ), ( 'Nineteen', 19 )
   ),
   Below100(Word, Id) AS
   (
      VALUES
       ('Twenty', 2), ('Thirty', 3),('Forty', 4), ('Fifty', 5),
       ('Sixty', 6), ('Seventy', 7), ('Eighty', 8), ('Ninety', 9)
   )
   SELECT
     CASE
      WHEN n = 0 THEN  ''
      WHEN n BETWEEN 1 AND 19
        THEN (SELECT Word FROM Below20 WHERE ID=n)
     WHEN n BETWEEN 20 AND 99
       THEN  (SELECT Word FROM Below100 WHERE ID=n/10) ||  '-'  ||
             fnNumberToWords( n % 10)
     WHEN n BETWEEN 100 AND 999
       THEN  (fnNumberToWords( n / 100)) || ' Hundred ' ||
           fnNumberToWords( n % 100)
     WHEN n BETWEEN 1000 AND 999999
       THEN  (fnNumberToWords( n / 1000)) || ' Thousand ' ||
           fnNumberToWords( n % 1000)
     WHEN n BETWEEN 1000000 AND 999999999
       THEN  (fnNumberToWords( n / 1000000)) || ' Million ' ||
           fnNumberToWords( n % 1000000)
     WHEN n BETWEEN 1000000000 AND 999999999999
       THEN  (fnNumberToWords( n / 1000000000)) || ' Billion ' ||
           fnNumberToWords( n % 1000000000)
     WHEN n BETWEEN 1000000000000 AND 999999999999999
       THEN  (fnNumberToWords( n / 1000000000000)) || ' Trillion ' ||
           fnNumberToWords( n % 1000000000000)
    WHEN n BETWEEN 1000000000000000 AND 999999999999999999
       THEN  (fnNumberToWords( n / 1000000000000000)) || ' Quadrillion ' ||
           fnNumberToWords( n % 1000000000000000)
    WHEN n BETWEEN 1000000000000000000 AND 999999999999999999999
       THEN  (fnNumberToWords( n / 1000000000000000000)) || ' Quintillion ' ||
           fnNumberToWords( n % 1000000000000000000)
          ELSE ' INVALID INPUT' END INTO e;
  e := RTRIM(e);
  IF RIGHT(e,1)='-' THEN
    e := RTRIM(LEFT(e,length(e)-1));
  END IF;
  RETURN e;
END;
$$ LANGUAGE PLPGSQL;
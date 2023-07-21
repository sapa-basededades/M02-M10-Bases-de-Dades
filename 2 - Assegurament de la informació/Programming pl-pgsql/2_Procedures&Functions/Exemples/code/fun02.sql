/* Exemple 2: Valor màxim */
/* Database: pagila */

CREATE OR REPLACE FUNCTION MAXIM(num1 NUMERIC, num2 NUMERIC) RETURNS NUMERIC 
LANGUAGE plpgsql AS $$
BEGIN
  IF (num1 > num2) THEN
     RETURN num1;
  ELSIF (num1 < num2) THEN
     RETURN num2;
  ELSE 
     RETURN num1;
  END IF;
END;$$;

/**Exemple us**/
DO $$
BEGIN
  RAISE NOTICE 'El valor mes gran es: % ' ,MAXIM(4,56);
END;$$;

/*Les funcions com hem vist anteriorment habitualment s’utilitzen dins una SELECT directament*/


select rental_rate, round(replacement_cost/12,2), round(maxim(rental_rate, replacement_cost/12),2) as maxim
from film;    

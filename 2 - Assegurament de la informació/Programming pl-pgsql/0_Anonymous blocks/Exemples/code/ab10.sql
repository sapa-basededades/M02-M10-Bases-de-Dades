/* Exemple 10: FOR */
/* Database: Any*/

--La variable queda declarada de manera implícita en el FOR
--La i del bucle només és accessible dins el bucle

DO $$
BEGIN
  FOR i IN 1..10 LOOP
      RAISE NOTICE '%', i;  
  END LOOP;
END $$;

DO $$
BEGIN
  FOR i IN REVERSE 10..1 LOOP
      RAISE NOTICE '%', i; 
  END LOOP;
END $$;

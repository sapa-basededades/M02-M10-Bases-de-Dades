/* Exemple 2. Amb parametres. Al no indicar res per defecte es IN (d'entrada)*/
/* Database: Any */

CREATE OR REPLACE FUNCTION CONCATENAR(cad1 VARCHAR, cad2 VARCHAR) RETURNS void
LANGUAGE plpgsql
AS $$
BEGIN
  RAISE NOTICE ‘%’,cad1 || cad2;
END $$;

/**Exemple utilització**/
do $$
DECLARE 
  X char;
BEGIN
  SELECT CONCATENAR('hola','que tal') INTO X;
END;$$;
/
do $$
DECLARE
  cad1 VARCHAR(40);
  cad2 VARCHAR(30);
  x char;
BEGIN
  cad1:= 'hola';
  cad2:= 'que tal';
  select CONCATENAR(cad1, cad2) into x;
END;$$;
/
SELECT CONCATENAR('hola', 'que tal');

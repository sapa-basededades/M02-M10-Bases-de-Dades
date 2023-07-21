/* Exemple 2: Operacions Simples
/* Database: Any */

DO $$
DECLARE
  num1 NUMERIC;
  num2 NUMERIC;
  resultat NUMERIC;
  avui DATE := CURRENT_DATE; --les variables si volem les poden inicialitzar aqui també
  nom  VARCHAR(40);
BEGIN
  num1 := 2.5;
  num2 := 3;
  nom  := 'Pere';
  
  resultat := num1 + num2;
  
  RAISE NOTICE 'Hola % el resultat es % ', nom, resultat;
  RAISE NOTICE 'Avui estem a: %' , avui;
   
END $$;

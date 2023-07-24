/* Exemple 11: VECTORS */
/* Database: Any*/

/***    IMPORTANT: L’índex es en base 1 (El primer element es el (1) no el (0) ***/

DO $$
DECLARE 
   names VARCHAR(10) ARRAY[5]; 
   marks INTEGER ARRAY[5];
   total INTEGER; 
BEGIN 
   names :=ARRAY['Kavita', 'Pritam', 'Ayan', 'Rishav', 'Aziz'];  
   marks := ARRAY[98, 97, 78, 87, 92]; 
   SELECT cardinality(names) into total;
   RAISE NOTICE 'Total % Students', total; 
   FOR i in 1..total LOOP 
      RAISE NOTICE 'Student: % Marks: % ' , names[i], marks[i]; 
   END LOOP; 
END $$;

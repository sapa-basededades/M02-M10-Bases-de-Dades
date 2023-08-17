CREATE TYPE tc1_persona AS ( 
 dni text,
 nom text,
 cognoms text 
);

CREATE TABLE tc1_parella ( 
  p_a tc1_persona,  
  p_b tc1_persona  
);

SELECT * FROM tc1_parella;  


INSERT INTO tc1_parella VALUES
 (('42123232x','marc','garcia'),('34523846w','ernest','sanchez')),
 (('37123211m','albert','garcia'),('27523117n','joan','molina')),
 (('17197411r','roger','mendez'),('23423234j','eva','sanchez'));


SELECT * FROM tc1_parella;  

SELECT (p_a).dni FROM tc1_parella; 

SELECT (p_b).cognoms FROM tc1_parella; 

SELECT * FROM tc1_parella;

SELECT (p_a).nom,(p_b).nom FROM tc1_parella WHERE (p_a).nom like '%er%' OR (p_b).nom like '%ev%';

SELECT (p_a).nom,(p_b).nom FROM tc1_parella WHERE (p_a).nom like '%er%' AND (p_b).nom like '%ev%';  
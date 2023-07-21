# Triggers

# 1. Utilitzant triggers per mantenir regles de negoci.
Suposem que Middlesex Transport Authority (MTA) té una regla que estableix que el salari d’un conductor d’autobus no pot ser modificat per un import que superi el 20% del salari actual. 
Crear un trigger que es dispari cada vegada que es produeixi una modificació en la columna salari de la taula d’empleats de manera que si modifiquem el salari d’un conductor que no respecti aquesta regla mostri un missatge d’error a l’usuari.

# 2. Triggers per prevenir esborrats o modificacions.
A la base de dades Empleats tenim una columna Department_id que fa referència al departament on treballen els empleats. Tot i aquesta clau forana enacara podriem posar un trigger a la taula Departments per aturar qualsevol canvi en el nom del departament o bé per aturar qualsevol acció d’eliminar una fila de la taula. Tot i que és força irreal imaginem que tenim una regla de negoci que estableix que una vegada creat un departament aquest s’ha de mantenir ‘per sempre’ i no pot canviar el seu nom. 
Crear un trigger de sentència i actui sobre els events DELETE I UPDATE department_name, impedint que es puguin executar aquestes sentències.

# 3. Crear triggers per validació de dades.
Les Check constraint són similars a la validació de dades i és una opció que podem utilitzar en la sentència CREATE TABLE on podem especificar quin tipus de dades podem entrar en una columna en particular. Imaginem que tenim una regla de negoci que ens diu que els salaris no poden ser negatius o zero, ni majors de 30000€. Podriem crear una check constraint com aquesta:
            check (salary >0 and salary <30000)
Així qualsevol salari que sigui més petit o igual a 0 o més gran de 30000 causarà una violació de la constraint. Aplicant aquesta constraint, no obstant, no podrem saber si el salari era més gran de 30000€ o bé era negatiu o zero.
Podem crear un trigger en comptes de la check constraint, que ens digui com s’ha infringit la restricció sobre aquesta column. D’aquesta manera si el salari està fora del rang (0 – 30000], el trigger generarà un missatge d’error informant a l’usuari si el salari és major de 30000 o bé és negatiu. 
Crear un trigger que haurà d’actuar a nivell de fila i només per a les operacions Insert i Update de la columna salary, per a implementar la funcionalitat explicada anteriorment.


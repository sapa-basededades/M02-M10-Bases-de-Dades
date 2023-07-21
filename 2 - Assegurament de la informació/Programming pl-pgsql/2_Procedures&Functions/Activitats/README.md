# Activitat de procediments i funcions
## Apartat 1: Procediments.

### Exercici 1.(BD: HR)
Fes un procediment emmagatzemat que rebi com a paràmetres les dades d’un departament i el doni d’alta.  

### Exercici 2.(BD: HR)
Fes un procediment emmagatzemat que donat un codi de departament, l’elimini. En cas que es produeixi un error al eliminar-lo que avisi per consola amb el següent missatge:  
Error: No es pot eliminar el departament indicat.

### Exercici 3.(BD: HR)
Fes un procediment emmagatzemat que li passis un codi d’empleat i un salari, i li assigni a aquell empleat el nou salari indicat. En cas de no trobar l’empleat que avisi amb un missatge.

### Exercici 4.(BD: HR)
Fes un procediment emmagatzemat que rebi com a paràmetres un número de departament, un import i incrementi el salari de tots els empleats del departament indicat, amb el salari que tenien més l’import indicat.

### Exercici 5. (BD: HR)
Fes un procediment que tregui per pantalla el nom dels departaments i la quantitat de persones que treballen amb aquest departament.

### Exercici 6. (BD: HR)
Fes un procediment que modifiqui la taula d'empleats afegint el camp department_name i l'empleni consultant el nom del departament a la taula departaments. Tens el camp department_id per fer el lligam de les taules.

### Exercici 7. (BD: Pagila)
Fes un procediment que mostri els 10 clients que han llogat més pel·lícules. El informe haurà de ser com:

```
==========================================
Customer                        | nºRental
==========================================
Client: xxxxxxxxxx, xxxxxxxx        233
```

## Apartat 2. Funcions.

### Exercici 1.
Programar una funció que rebi com a paràmetre una nota (suposarem que l’entrada serà correcte entre 0 i 10) i retorni la seva nota qualitativa:
•	Insuficient: de 0 a 4,99
•	Suficient: de 5 a 5,99
•	Bé: de 6 a 6,99
•	Notable: de 7 a 8,99
•	Excel·lent: de 9 a 9,99
•	Matrícula d'honor: 10

### Exercici 2. (BD: HR)
Crear una funció que rebi com a paràmetre un salari i que calculi el valor de la comissió en funció d’aquest salari.
- Si el salari és menor o igual a 3000, la comissió que s'aplicarà serà d'un 15%.
- Si la quantitat es troba entre 3001 i 7000, s'aplicarà un 10%.
- Si el salari es troba entre 7001 i 10000, s'aplicarà un 5%.
- Si el salari es troba entre 10001 i 20000, s'aplicarà un 1%.
- Si el salari és major de 20000 no té comissió (és null).
La funció només retornarà un valor en concret, però no modificarà res de la base de dades. Aquesta funció s'anomenarà f_calcularComissio.  Utilitza un CASE per calcular el valor.
Fes una select de la taula d’empleats on utilitzis aquesta funció i mostris quina comissió tindria cada empleat en funció del seu salari. Mostra el codi d’empleat, nom, salari i la comissió prevista.

### Exercici 3.
La funció DBMS_RANDOM.value(MIN,MAX) genera números aleatoris entre un valor MIN i MAX (compte que els dona amb decimals). Es demana programar una funció anomenada f_Aleatori que rebi com a paràmetre un número N entre 1 i 6 i simuli el llançament d'un dau (números de l'1 al 6) 100 vegades i compti quantes vegades ha sortit el número N.
A continuació dins un bloc anònim PL/SQL utilitza aquesta funció amb algun valor. 

### Exercici 4. (BD: Pagila)

Crea una funció que et retorni quantes copies i ha de cada pel·lícula, passant el film_id com a argument a la funció. Mostra el SELECT que utilitzes per cridar a la funció.

### Exercici 5. (BD: Pagila)

Crea una funció que et retorni la pel·lícula més llogada d'un store. La funció rebrà el store i haurà de retornar el nom de la pel.lícula.



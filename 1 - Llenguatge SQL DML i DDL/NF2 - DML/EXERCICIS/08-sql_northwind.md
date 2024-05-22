# Exercicis Northwind

Exercicis relacionats amb la base de dades Northwind.

Abans de començar mira el conjunt de taules i l'esquema de la base de  dades.

## Exercicis amb una taula

- Quants clients hi ha registrats?
- Quantes comandes?
- Quins clients viuen a Londes i el seu nom (CustomerName) comença per A?
- Quants clients hi ha que són de Londres?
- Quants clients hi ha a cada ciutat?
- Quants empleats van néixer després de l'1 de juny del 1965?
- Fes-me un informe que digui «L'empleat N nació el N», sent N, nom (FirstName i Last Name) i dia de naixement (BirthDate)
- Fes-me l'informe anterior, però només per als empleats amb id 8, 7, 3 i 10
- Digues-me els països que tinguin més de 5 clients, ordenats pel nom de país

## Exercicis amb més d'una taula

- Digues-me el nom del client de la comanda 10360
- Digues-me el nom complet dels clients amb les comandes 10360, 10253 i 10440
- Digues-me les ciutats i nombre de comandes de clients en aquesta ciutat
- Quines són les ciutats des de les quals hi ha més de 7 comandes?
- Quins són els tres països des dels quals tinc més comandes?
- Necessito un informe amb el Nom complet dels Empleats i el nombre de comandes que van registrar
- A l'informe anterior, només necessito els empleats el nom dels quals comenci per M
- Vull saber el número de comanda, quin empleat (només el nom) el va registrar i el client.
- Hi ha algun client que hagi fet més d'una comanda registrada pel mateix empleat?
- Vull saber els clients que hagin fet més d'una comanda i que hagin estat registrats per un Empleat el nom del qual sigui Margaret.

## Exercicis amb Subconsultes

- Quin és el producte amb el preu mínim més baix? (usant subconsultes)
- Quin és el producte el preu del qual sigui almenys 10 vegades la comanda mínima (quantity) de les comandes (OrderDetails)?
- Quins són els registres de productes (Products) el preu dels quals (price) sigui més gran que el màxim dels preus dels productes l'id dels quals sigui 3, 6, 9 i 10?
- Quins són els registres de productes (Products) el ProductID dels quals sigui un valor que estigui a Shippers.ShipperID?
- Quins clients (Customers) tenim registrats, que estiguin a ciutats dels nostres proveïdors (Suppliers)?

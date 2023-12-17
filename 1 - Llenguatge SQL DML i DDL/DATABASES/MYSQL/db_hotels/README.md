# Hotels Sample Database

Aquest document descriu la base de dades Hotels

hotels és una base de dades creada per [Robert Ventura Vall-llovera](https://www.linkedin.com/in/robertvallllovera/ "Perfil LinkedIn Robert Ventura Vall-llovera"), professor de Cicles Formatius d'Informàtica per la Generalitat de Catalunya .
Aquesta base de dades va ser creada amb dades aleatòries i destinada a usos didàctics en assignatures com gestió de base de dades i administració de base de dades.

Aquesta base de dades vol simular una BD de reserves d'hotels de 4/5 estrelles situats a Catalunya. Les seves taules principals són:

* Paisos (~19 registres)
* Poblacions (~100 registres)
* Hotels (~340 registres)
* Habitacions (~32.700 registres)
* Clients (~17.900 registres)
* Reserves (~182.000 registres)

> Aquesta base de dades no conté cap índex que no sigui procedent d'una clau primària o forana.
> 
> Tampoc conté cap control d'entrada de dades excepte les contraints d'integritat referencial proporcionades per les claus foranes i les contraints d'unicitats proporcionades per les claus primàries de cada taula.

## Taules

### Paisos

La taula de paisos conté el codi i el nom de paisos. Aquesta taula s'utilitza per emmagatzemar el nom dels diferents paisos dels clients.

### Poblacions

La taula de poblacions conté les poblacions d'on estan situtats els hotels. Tal i com hem dit anteriorment són poblacions dins de Catalunya.

### Hotels

La taula hotels conté un subconjut de tots els hotels de 4 i 5 estrelles de Catalunya extrets d'un llistat a l'any 2017. Cosa que aquests poden estar desactualitzats a data d'avui.

### Habitacions

La taula d'habitacions conté la informació de cadascuna de les habitacions dels diferents hotels

### Clients

La taula clients conté la informació de cadascun dels clients que realitza reserves en els hotels.
Degut a que les dades s'han generat de forma aleatòria pot ser que un mateix client tingui dues reserves en habitacions diferents dins del mateix període.

### Reserves

La taula de reserves conté reserves dels anys compresos entre 2014 i 2016 

Si es vol controlar l'entrada de reserves per tal de que aquestes siguin consistents es pot fer ús del següent disparador/trigger a la taula reserves
```sql
-- -----------------------------------
-- Trigger que controla el solapament 
-- de les reserves en la mateixa habitació 
-- alhora de fer l'INSERT
-- -----------------------------------
CREATE TRIGGER trg_ReservesInsert BEFORE INSERT ON reserves
FOR EACH ROW
BEGIN

   SELECT COUNT(*) INTO @vCount
      FROM reserves r
   WHERE r.hab_id = NEW.hab_id 
    AND NEW.data_inici <= r.data_fi AND NEW.data_fi >= r.data_inici;
    
   IF @vCount > 0 THEN
      SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Error: Hi ha reserves solapades";
   END IF;

END
```



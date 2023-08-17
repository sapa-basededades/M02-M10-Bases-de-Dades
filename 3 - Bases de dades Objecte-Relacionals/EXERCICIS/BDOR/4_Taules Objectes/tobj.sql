CREATE TYPE article AS 
(   
 id_article integer,  
 nom text,
 preu float,
 iva float,   
 proveidor text   
);

CREATE TABLE inventari OF article 
(
 PRIMARY KEY (id_article),  
 iva WITH OPTIONS DEFAULT 21.0  
);

CREATE PROCEDURE afegir_article_inventari(i integer, n text, e float, o text) 
LANGUAGE SQL AS $$
    INSERT INTO inventari (id_article,nom,preu,proveidor)  VALUES (i,n,e,o);
$$;


CREATE PROCEDURE modificar_iva_article(i integer, t text)
LANGUAGE plpgsql AS $$  
DECLARE
    codi ALIAS FOR $1;  
    tipus ALIAS FOR $2;  
    nou float;
BEGIN
    IF tipus = 'general' THEN  
        nou = 21.0;
    ELSEIF tipus = 'reduit' THEN
        nou = 10.0;
    ELSEIF tipus = 'superreduit' THEN  
        nou = 4.0;
    ELSE
        nou = 21.0;
    RAISE NOTICE 'IVA general.';  END IF;
    UPDATE inventari SET iva = nou WHERE id_article = codi;
END;
$$;  

SELECT * FROM inventari;  

CALL afegir_article_inventari(1,'caixa',3.5,'caixasa');  

CALL afegir_article_inventari(2,'paper',1.5,'papelera sl');  

CALL afegir_article_inventari(3,'cordill',0.25,'safa sa');

SELECT * FROM inventari;

CALL modificar_iva_article(2,'superreduit');  

SELECT * FROM inventari WHERE id_article = 2;

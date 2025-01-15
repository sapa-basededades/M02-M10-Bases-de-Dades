# MySQL - Hard

Exercicis de tipus **Hard** resolts de la plataforma [StrataScratch](https://www.stratascratch.com).
Les solucions presentades poden diferir de les proposades per la plataforma, ja que l'alumnat no disposava d'accés a les solucions oficials. En alguns casos, la diversitat d'interpretacions dels enunciats pot donar lloc a variacions en les respostes proposades.

[← Tornar a l'índex d'exercicis Strata Scratch MySQL](README.md)

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 10153 -Find the number of Yelp businesses that sell pizza](https://platform.stratascratch.com/coding/10153-find-the-number-of-yelp-businesses-that-sell-pizza?code_type=3)

Tags: #Yelp

Tables: **#yelp_business**

  #### Solutions
```MySQL
SELECT COUNT(*)
  FROM yelp_business
WHERE categories LIKE "%Pizza%";
```
Altres possibles solucions serien incloure l'ús de la funció LOWER o UPPER al camp categories.

---

[← Tornar a l'índex d'exercicis Strata Scratch MySQL](README.md)

[Easy](#mysql-easy.md)

[Medium](#mysql-medium.md)

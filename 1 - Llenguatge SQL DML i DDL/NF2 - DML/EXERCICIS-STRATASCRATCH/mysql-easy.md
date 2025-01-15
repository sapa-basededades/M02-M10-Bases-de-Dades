# MySQL - Easy

Exercicis de tipus **Easy** resolts de la plataforma [StrataScratch](www.stratascratch.com).
Les possibles solucions presentades poden ser diferents a la solució proposada per la plataforma perquè l'alumnat no tenia accés per veure les solucions. Hi ha casos o exercicis a on hi poden haver diferents interpretacions de l'enunciat cosa que pot provocaar aquestes diferències.

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 10153 -Find the number of Yelp businesses that sell pizza](https://platform.stratascratch.com/coding/10153-find-the-number-of-yelp-businesses-that-sell-pizza?code_type=3)

Tables: **#yelp_business**

  #### Solutions
```MySQL
SELECT COUNT(*)
  FROM yelp_business
WHERE categories LIKE "%Pizza%";
```
Altres possibles solucions serien incloure l'ús de la funció LOWER o UPPER al camp categories.

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 10356 -Finding Doctors](https://platform.stratascratch.com/coding/10356-finding-doctors?code_type=3)

Tags: #Google

Tables: **#employee_list**

  #### Solutions
```MySQL
SELECT first_name, last_name
  FROM employee_list
WHERE last_name = "Johnson" and profession = "Doctor"
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 100057 -Find the number of 5-star reviews earned by Lo-Lo's Chicken & Waffles](https://platform.stratascratch.com/coding/10356-finding-doctors?code_type=3)

Tags: #Google

Tables: **#employee_list**

  #### Solutions
```MySQL
SELECT first_name, last_name
  FROM employee_list
WHERE last_name = "Johnson" and profession = "Doctor"
```

# MySQL - Easy

Exercicis de tipus **Easy** resolts de la plataforma [StrataScratch](https://www.stratascratch.com).
Les possibles solucions presentades poden ser diferents a la solució proposada per la plataforma perquè l'alumnat no tenia accés per veure les solucions. Hi ha casos o exercicis a on hi poden haver diferents interpretacions de l'enunciat cosa que pot provocaar aquestes diferències.

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

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 10356 -Finding Doctors](https://platform.stratascratch.com/coding/10356-finding-doctors?code_type=3)

Tags: #Google

Tables: **#employee_list**

  #### Solutions
```MySQL
SELECT first_name, last_name
  FROM employee_list
WHERE last_name = "Johnson" and profession = "Doctor"
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 100057 - Find the number of 5-star reviews earned by Lo-Lo's Chicken & Waffles](https://platform.stratascratch.com/coding/10356-finding-doctors?code_type=3)

Tags: #Yelp

Tables: **#yelp_reviews**

  #### Solutions
```MySQL
SELECT COUNT(*)
  FROM yelp_reviews
WHERE stars = 5 AND business_name = "Lo-Lo's Chicken & Waffles";
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 10027 - Find the number of US-based wineries that have expensive wines (price >= 200)](https://platform.stratascratch.com/coding/10027-find-the-number-of-us-based-wineries-that-have-expensive-wines-price-200?code_type=3)

Tags: #Wine Magazine

Tables: **#winemag_p1**

  #### Solutions
```MySQL
SELECT COUNT(*)
    FROM winemag_p1
WHERE price >= 200 AND country="US";
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 10001 - Find the cost per customer for advertising via public transport](https://platform.stratascratch.com/coding/10001-find-the-cost-per-customer-for-advertising-via-public-transport?code_type=3)

Tags: #Uber

Tables: **#uber_advertising**

  #### Solutions
```MySQL
SELECT  advertising_channel, year,    
        (money_spent / customers_acquired) AS cost_per_customer
FROM uber_advertising
  WHERE LOWER(advertising_channel) LIKE "%bus%";
```
Amb l'enunciat no sabem si volen la suma de la quantitat de diners respecte els clients aconseguits i fer el GROUP BY per canal.

```MySQL
SELECT   advertising_channel,year,    
        SUM(money_spent) / SUM(customers_acquired) AS cost_per_customer
FROM uber_advertising
  WHERE LOWER(advertising_channel) LIKE '%bus%'
GROUP BY advertising_channel,year
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 10020 - Find prices for Spanish, Italian, and French wines](https://platform.stratascratch.com/coding/10020-find-prices-for-spanish-italian-and-french-wines?code_type=3)

Tags: #Wine Magazine

Tables: **#winemag_p1**

  #### Solutions
```MySQL
SELECT  country,price
  FROM winemag_p1
WHERE country IN ('Spain', 'Italy', 'France') AND price IS NOT NULL;
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 10021 - Find all top-rated wineries based on points](https://platform.stratascratch.com/coding/10021-find-all-top-rated-wineries-based-on-points?code_type=3)

Tags: #Wine Magazine

Tables: **#winemag_p1**

  #### Solutions
```MySQL
SELECT  DISTINCT winery
  FROM winemag_p1
WHERE points >= 95
ORDER BY points;
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 9934 - London Olympic Swimmers](https://platform.stratascratch.com/coding/9934-london-olympic-swimmers?code_type=3)

Tags:

Tables: **#olympics_athletes_events**

  #### Solutions
```MySQL
SELECT *
  FROM olympics_athletes_events
WHERE city = 'London' AND sport = 'Swimming';
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 9995 - Top 10 Ranked Songs](https://platform.stratascratch.com/coding/9995-top-10-ranked-songs?code_type=3)

Tags: #Spotify

Tables: **#spotify_worldwide_daily_song_ranking**

  #### Solutions
```MySQL
SELECT DISTINCT trackname, position
    FROM spotify_worldwide_daily_song_ranking
ORDER BY position ASC, trackname ASC;
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 10277 - Find all inspections which are part of an inactive program](https://platform.stratascratch.com/coding/10277-find-all-inspections-which-are-part-of-an-inactive-program?code_type=3)

Tags: #City of Los Angeles

Tables: **#los_angeles_restaurant_health_inspections**

  #### Solutions
```MySQL
SELECT *
  FROM los_angeles_restaurant_health_inspections
WHERE program_status = 'INACTIVE';
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 2002 - Submission Types](https://platform.stratascratch.com/coding/2002-submission-types?code_type=3)

Tags: #Interview Question Date: January 2021

Tables: **#loans**

  #### Solutions
```MySQL
SELECT DISTINCT user_id
    FROM loans
WHERE type IN ('Refinance', 'InSchool');
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 2002 - Submission Types](https://platform.stratascratch.com/coding/2002-submission-types?code_type=3)

Tags: #Interview Question Date: January 2021

Tables: **#loans**

  #### Solutions
```MySQL
SELECT DISTINCT user_id
    FROM loans
WHERE type IN ('Refinance', 'InSchool');
```

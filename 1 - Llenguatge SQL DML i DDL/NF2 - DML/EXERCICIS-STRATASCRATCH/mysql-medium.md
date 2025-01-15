# MySQL - Medium

Exercicis de tipus **Medium** resolts de la plataforma [StrataScratch](https://www.stratascratch.com).
Les solucions presentades poden diferir de les proposades per la plataforma, ja que l'alumnat no disposava d'accés a les solucions oficials. En alguns casos, la diversitat d'interpretacions dels enunciats pot donar lloc a variacions en les respostes proposades.

[← Tornar a l'índex d'exercicis Strata Scratch MySQL](README.md)

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 10071 - Hosts' Abroad Apartments](https://platform.stratascratch.com/coding/10071-hosts-abroad-apartments?code_type=3)

Tags: #Airbnb

Tables: **#airbnb_hosts , #airbnb_apartments**

  #### Solutions
```MySQL
SELECT COUNT(DISTINCT ah.host_id)
    FROM airbnb_hosts ah
    INNER JOIN airbnb_apartments ap ON ap.host_id = ah.host_id
WHERE ah.nationality != ap.country;
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 10071 - Cities With The Most Expensive Homes](https://platform.stratascratch.com/coding/10315-cities-with-the-most-expensive-homes?code_type=3)

Tags: #Zillow

Tables: **#zillow_transactions**

  #### Solutions
```MySQL
SELECT zt1.city
    FROM zillow_transactions zt1
GROUP BY zt1.city
HAVING AVG(zt1.mkt_price) > (SELECT AVG(mkt_price) FROM zillow_transactions zt2);
```

Si demanen que la mitjana a comparar sigui la del seu propi estat la consulta seria diferent.

```MySQL
WITH state_avg  AS (
 SELECT state, AVG(mkt_price) mitjana
	FROM zillow_transactions zt2
 GROUP BY state
)  
SELECT zt1.city,AVG(zt1.mkt_price),sa.mitjana
    FROM zillow_transactions zt1
    INNER JOIN state_avg sa ON sa.state = zt1.state
GROUP BY zt1.city
HAVING AVG(zt1.mkt_price) > sa.mitjana ;
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 10283 - Find the top-ranked songs for the past 20 years.](https://platform.stratascratch.com/coding/10283-find-the-top-ranked-songs-for-the-past-30-years?code_type=3)

Tags: #Spotify

Tables: **#billboard_top_100_year_end**

  #### Solutions
Entenem que els últims 20 anys són tenint en compte la data màxima de la taula i no la data actual.

```MySQL
SELECT  DISTINCT song_name 
  FROM billboard_top_100_year_end
WHERE year_rank =1 AND year >= (SELECT MAX(year)
                                  FROM billboard_top_100_year_end)-20;
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 10140 - MacBook Pro Events](https://platform.stratascratch.com/coding/10140-macbook-pro-events?code_type=3)

Tags: #Google , #Apple

Tables: **#playbook_events , #playbook_users**

  #### Solutions
Entenem que els últims 20 anys són tenint en compte la data màxima de la taula i no la data actual.

```MySQL
SELECT u.company_id, u.language, COUNT(*) AS number_of_events
    FROM playbook_events e
    INNER JOIN playbook_users u ON e.user_id = u.user_id
WHERE e.device = 'macbook pro' AND u.language != 'spanish' AND e.location = 'Argentina'
GROUP BY u.company_id;
```
  
## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 10144 - Average Weight of Medal-Winning Judo](https://platform.stratascratch.com/coding/10144-average-weight-of-medal-winning-judo?code_type=3)

Tags: #ESPN

Tables: **#olympics_athletes_events**

  #### Solutions
  
```MySQL
SELECT team, AVG(weight)
  FROM olympics_athletes_events
WHERE sport = 'Judo'
  AND age BETWEEN 20 AND 30
  AND medal = 'Gold'
GROUP BY team;
```
  

---

[← Tornar a l'índex d'exercicis Strata Scratch MySQL](README.md)

[Easy](mysql-easy.md)

[Hard](mysql-hard.md)

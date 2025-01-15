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

  ## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 10065 - Find whether the number of seniors works at Meta/Facebook is higher than its number of USA based employees](https://platform.stratascratch.com/coding/10065-find-whether-the-number-of-seniors-works-at-facebook-is-higher-than-its-number-of-usa-based-employees?code_type=3)

Tags: #Meta

Tables: **#facebook_employees**

  #### Solutions
  
```MySQL
SELECT IF( (SELECT COUNT(*) 
            	FROM facebook_employees
            WHERE is_senior = 1) > (SELECT COUNT(*)
             				FROM facebook_employees
           			    WHERE location = 'USA'),
           'More seniors',
           'More USA-based') AS output;
```

  ## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 9865 - Highest Salaried Employees By Department](https://platform.stratascratch.com/coding/9865-highest-salaried-employees?code_type=3)

Tags: #Amazon , #Visa

Tables: **#worker**

  #### Solutions
  
```MySQL
SELECT department,first_name,last_name, salary
    FROM worker
WHERE (department,salary) IN (SELECT department, MAX(salary)
                                    FROM worker
                                GROUP BY department);
```

  ## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 10120 - Number Of Custom Email Labels](https://platform.stratascratch.com/coding/10120-number-of-custom-email-labels?code_type=3)

Tags: #Google

Tables: **#google_gmail_emails , #google_gmail_labels**

  #### Solutions
  
```MySQL
SELECT to_user,label, COUNT(*)
    FROM google_gmail_emails gge
    INNER JOIN google_gmail_labels ggl ON ggl.email_id = gge.id
WHERE label LIKE "Custom%"
GROUP BY to_user,label;
```

  ## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 9987 - Overtime Pay](https://platform.stratascratch.com/coding/9987-overtime-pay?code_type=3)

Tags: #City of San Francisco

Tables: **#sf_public_salaries**

  #### Solutions
  
```MySQL
SELECT employeename,totalpaybenefits
    FROM sf_public_salaries
GROUP BY employeename
HAVING SUM(overtimepay)>0
ORDER BY totalpaybenefits DESC
LIMIT 1;
```

  ## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 2019 - Top 2 Users With Most Calls](https://platform.stratascratch.com/coding/2019-top-2-users-with-most-calls?code_type=3)

Tags: #Window Functions

Temes: #Ring Central

Tables: **#rc_calls , #rc_users**

  #### Solutions
  
```MySQL
WITH calls4company AS(
    SELECT u.company_id, c.user_id, COUNT(*) calls
        FROM rc_calls c
        INNER JOIN rc_users u ON c.user_id = u.user_id
    GROUP BY c.user_id)
,ranked_calls AS (
    SELECT company_id,user_id,
            DENSE_RANK() OVER (PARTITION BY company_id ORDER BY calls DESC) rnk
        FROM calls4company
    ORDER BY company_id, rnk
)
SELECT *
    FROM ranked_calls
WHERE rnk<=2;
```

  ## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 10088 - Liked' Posts](https://platform.stratascratch.com/coding/10088-liked-posts?code_type=3)

Tags:

Temes: #Meta

Tables: **```#facebook_reactions``` , ```#facebook_posts```**

  #### Solutions
  
```MySQL
SELECT COUNT(DISTINCT fp.post_id)
    FROM facebook_reactions fr
INNER JOIN facebook_posts fp ON fp.post_id = fr.post_id
WHERE LOWER(fr.reaction) = "like";
```


---

[← Tornar a l'índex d'exercicis Strata Scratch MySQL](README.md)

[Easy](mysql-easy.md)

[Hard](mysql-hard.md)

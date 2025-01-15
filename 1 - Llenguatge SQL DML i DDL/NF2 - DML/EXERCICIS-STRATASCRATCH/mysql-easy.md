# MySQL - Easy

Exercicis de tipus **Easy** resolts de la plataforma [StrataScratch](https://www.stratascratch.com).
Les solucions presentades poden diferir de les proposades per la plataforma, ja que l'alumnat no disposava d'accés a les solucions oficials. En alguns casos, la diversitat d'interpretacions dels enunciats pot donar lloc a variacions en les respostes proposades.

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

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 10183 - Total Cost Of Orders](https://platform.stratascratch.com/coding/10183-total-cost-of-orders?code_type=3)

Tags: #Interview Question Date: January 2021

Tables: **#customers, #orders**

  #### Solutions
```MySQL
SELECT c.id, c.first_name, SUM(o.total_order_cost) total_order_cost 
  FROM customers c
  INNER JOIN orders o ON o.cust_id = c.id
GROUP BY c.id
ORDER BY first_name ASC;
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 10000 - Find the year that Uber acquired more than 2000 customers through celebrities](https://platform.stratascratch.com/coding/10000-find-the-year-that-uber-acquired-more-than-2000-customers-through-celebrities?code_type=3)

Tags: #Uber

Tables: **#uber_advertising**

  #### Solutions
```MySQL
SELECT year
  FROM uber_advertising
WHERE customers_acquired > 2000 AND advertising_channel = 'celebrities';
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 10127 - Calculate Samantha's and Lisa's total sales revenue](https://platform.stratascratch.com/coding/10127-calculate-samanthas-and-lisas-total-sales-revenue?code_type=3)

Tags: #Salesforce, #Amazon, #Groupon

Tables: **#sales_performance**

  #### Solutions
```MySQL
SELECT SUM(sales_revenue)
    FROM sales_performance
WHERE salesperson IN ('Samantha','Lisa');
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 9999 - Find songs that are ranked between 8-10](https://platform.stratascratch.com/coding/9999-find-songs-that-are-ranked-between-8-10?code_type=3)

Tags: #Spotify

Tables: **#spotify_worldwide_daily_song_ranking**

  #### Solutions
```MySQL
SELECT trackname, position
    FROM spotify_worldwide_daily_song_ranking
WHERE position BETWEEN 8 AND 10
ORDER BY position ASC;
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 10007 - Average Cost Of Each Request](https://platform.stratascratch.com/coding/10007-average-cost-of-each-request?code_type=3)

Tags: #Uber

Tables: **#uber_ride_requests**

  #### Solutions
```MySQL
SELECT request_status,AVG(monetary_cost)
    FROM uber_ride_requests
WHERE request_status IN ('success','fail')
GROUP BY request_status;
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 10132 - Highest Crime Rate](https://platform.stratascratch.com/coding/10132-highest-crime-rate?code_type=3)

Tags: #City of San Francisco

Tables: **#sf_crime_incidents_2014_01**

  #### Solutions
```MySQL
SELECT COUNT(incidnt_num), day_of_week
    FROM sf_crime_incidents_2014_01
GROUP BY day_of_week;
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 9688 - Churro Activity Date](https://platform.stratascratch.com/coding/9688-churro-activity-date?code_type=3)

Tags: #City of Los Angeles

Tables: **#los_angeles_restaurant_health_inspections**

  #### Solutions
```MySQL
SELECT pe_description, activity_date
    FROM los_angeles_restaurant_health_inspections
WHERE facility_name = "STREET CHURROS" AND score < 95;
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 10168 - Number Of Records By Variety](https://platform.stratascratch.com/coding/10168-number-of-records-by-variety?code_type=3)

Tags: #Microsoft, #Linux

Tables: **#iris**

  #### Solutions
```MySQL
SELECT variety, COUNT(*)
    FROM iris
GROUP BY variety
ORDER BY variety ASC;
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 10137 - Even-numbered IDs Hired in June](https://platform.stratascratch.com/coding/10137-find-workers-with-an-even-number-for-worker-id?code_type=3)

Tags: #Amazon, #Bosch

Tables: **#worker**

  #### Solutions
```MySQL
SELECT *
  FROM worker
WHERE MONTH(joining_date) = 6 AND worker_id % 2 = 0;
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 10184 - Order all countries by the year they first participated in the Olympics](https://platform.stratascratch.com/coding/10184-order-all-countries-by-the-year-they-first-participated-in-the-olympics?code_type=3)

Tags: #ESPN

Tables: **#olympics_athletes_events**

  #### Solutions
```MySQL
SELECT noc, MIN(year) AS year
    FROM olympics_athletes_events
GROUP BY noc
ORDER BY year ASC, noc ASC;
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 2159 - April & May Sign Up's](https://platform.stratascratch.com/coding/2159-april-may-sign-ups?code_type=3)

Tags: #Amazon

Tables: **#transactions**

  #### Solutions
```MySQL
SELECT DISTINCT signup_id
  FROM transactions
WHERE MONTH(transaction_start_date ) IN (4,5);
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 10164 - Total AdWords Earnings](https://platform.stratascratch.com/coding/10164-total-adwords-earnings?code_type=3)

Tags: #Google

Tables: **#google_adwords_earnings**

  #### Solutions
```MySQL
SELECT business_type, SUM(adwords_earnings)
    FROM google_adwords_earnings
GROUP BY business_type;
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 2156 - Unique Employee Logins](https://platform.stratascratch.com/coding/2156-unique-employee-logins?code_type=3)

Tags: #Meta

Tables: **#worker_logins**

  #### Solutions
```MySQL
SELECT DISTINCT worker_id
  FROM worker_logins
WHERE login_timestamp BETWEEN "2021-12-13" AND "2021-12-19";
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 2129 - Post Likes](https://platform.stratascratch.com/coding/2129-post-likes?code_type=3)

Tags: #Meta

Tables: **#fb_posts**

  #### Solutions
```MySQL
SELECT AVG(no_of_likes) 
  FROM fb_posts;
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 9648 - Drafted Into NFL](https://platform.stratascratch.com/coding/9648-drafted-into-nfl?code_type=3)

Tags: #ESPN

Tables: **#nfl_combine**

  #### Solutions
```MySQL
SELECT COUNT(*)
  FROM nfl_combine
WHERE pickround > 0 AND year = 2013;
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 9830 - First Name with Right Whitespace Removed](https://platform.stratascratch.com/coding/9830-print-the-first-name-after-removing-white-spaces-from-the-right-side?code_type=3)

Tags: #Stripe, #Amazon

Tables: **#worker_ws**

  #### Solutions
```MySQL
SELECT RTRIM(first_name)
  FROM worker_ws;
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 10004 - Find all Lyft rides which happened on rainy days before noon](https://platform.stratascratch.com/coding/10004-find-all-lyft-rides-which-happened-on-rainy-days-before-noon?code_type=3)

Tags: #Lyft

Tables: **#lyft_rides**

  #### Solutions
```MySQL
SELECT * 
    FROM lyft_rides
WHERE weather = 'rainy' AND hour < 12;
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 10367 - Aggregate Listening Data](https://platform.stratascratch.com/coding/10367-aggregate-listening-data?code_type=3)

Tags: #Spotify

Tables: **#listening_habits**

  #### Solutions
```MySQL
SELECT user_id,
       ROUND(SUM(listen_duration),0) AS total_listen_duration,
       COUNT(DISTINCT song_id) 
  FROM listening_habits
GROUP BY user_id;
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 10360 - Movie Duration Match](https://platform.stratascratch.com/coding/10360-movie-duration-match?code_type=3)

Tags: #Amazon

Tables: **#entertainment_catalog, #flight_schedule**

  #### Solutions
```MySQL
SELECT f.flight_id, e.movie_id, e.duration AS movie_duration
  FROM entertainment_catalog e
  CROSS JOIN flight_schedule f
WHERE f.flight_id = 101 AND e.duration <= f.flight_duration;

# Sense Utliitzar la clàusula específica CROSS JOIN

SELECT f.flight_id, e.movie_id, e.duration AS movie_duration
  FROM entertainment_catalog e
      ,flight_schedule f
WHERE f.flight_id = 101 AND e.duration <= f.flight_duration;
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 9840 - First Name's Containing the Letter 'a'](https://platform.stratascratch.com/coding/9840-find-all-workers-whose-first-name-contains-the-letter-a?code_type=3)

Tags: #Amazon, #Oracle

Tables: **#worker**

  #### Solutions
```MySQL
-- Utilitzant RLIKE
SELECT *
    FROM worker
WHERE first_name RLIKE '^a';

-- Utilitzant LIKE
SELECT *
    FROM worker
WHERE first_name LIKE 'a%';
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 9828 - First Three Characters of First Name](https://platform.stratascratch.com/coding/9828-print-the-first-three-characters-of-the-first-name?code_type=3)

Tags: #Amazon, #Oracle

Tables: **#worker**

  #### Solutions
```MySQL
SELECT SUBSTRING(first_name,1,3) as first_three
    FROM worker;

SELECT left(first_name,3) as first_three
    FROM worker;
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 9974 - Benefits Of Employees Called Patrick](https://platform.stratascratch.com/coding/9974-benefits-of-employees-called-patric?code_type=3)

Tags: #City of San Francisco

Tables: **#sf_public_salaries**

  #### Solutions
```MySQL
SELECT employeename, benefits
    FROM sf_public_salaries
WHERE employeename  RLIKE "^Patrick";

SELECT employeename, benefits
    FROM sf_public_salaries
WHERE employeename LIKE "Patrick%";

-- Mirem substring que queda abans del primer espai.
SELECT employeename,benefits
    FROM sf_public_salaries
WHERE  SUBSTRING_INDEX(employeename, " ", 1) ="Patrick"
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 9972 - Captain Base Pay](https://platform.stratascratch.com/coding/9972-find-the-base-pay-for-police-captains?code_type=3)

Tags: #City of San Francisco

Tables: **#sf_public_salaries**

  #### Solutions
```MySQL
SELECT employeename, basepay
	FROM sf_public_salaries
WHERE jobtitle RLIKE "captain" AND jobtitle RLIKE "police";
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 9863 - First Record Without LIMIT or ORDER BY](https://platform.stratascratch.com/coding/9863-find-the-first-record-of-the-dataset-without-using-limit-or-order-by?code_type=3)

Tags: #Google , #Amazon
Tables: **#worker**

  #### Solutions
```MySQL
SELECT *
  FROM worker
WHERE worker_id = (SELECT MIN(worker_id)
                     FROM worker);
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 2006 - Users Activity Per Month Day](https://platform.stratascratch.com/coding/2006-users-activity-per-month-day?code_type=3)

Tags: #Meta

Tables: **#facebook_posts**

  #### Solutions
```MySQL
SELECT poster, post_date,
       COUNT(*) AS activity_count
  FROM facebook_posts
GROUP BY poster, post_date
```

Per cada dia del mes entenc qeue és post_date. Si el que volen és agrupar per 1 de gener de tots els anys
hauríem de fer DATE_FORMAT (post_date, "%m-%d")

```MySQL
SELECT poster, DATE_FORMAT (post_date, "%m-%d"),
       COUNT(*) AS activity_count
FROM facebook_posts
GROUP BY poster, DATE_FORMAT (post_date, "%m-%d")
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 2039 - Products Report Summary](https://platform.stratascratch.com/coding/2039-products-report-summary?code_type=3)

Tags: #Interview Question Date: June 2021

Tables: **#wfm_transactions, #wfm_products**

  #### Solutions
```MySQL
SELECT  p.product_category,
        COUNT(DISTINCT t.transaction_id) AS transactiones_unicas,
        SUM(t.sales) AS ventas_totales
  FROM wfm_transactions t
  INNER JOIN wfm_products p ON t.product_id = p.product_id
WHERE YEAR(t.transaction_date) = 2017
GROUP BY p.product_category
HAVING ventas_totales > 0
ORDER BY ventas_totales DESC;
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 2056 - Number of Shipments Per Month](https://platform.stratascratch.com/coding/2056-number-of-shipments-per-month?code_type=3)

Tags: #Amazon

Tables: **#amazon_shipment**

  #### Solutions
```MySQL
SELECT DATE_FORMAT(shipment_date, '%Y-%m') AS fecha,
      COUNT( CONCAT(shipment_id, '-', sub_id)) AS numero_envios
  FROM amazon_shipment
GROUP BY DATE_FORMAT(shipment_date, '%Y-%m');
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 10051 - Find the number of open businesses](https://platform.stratascratch.com/coding/10051-find-the-number-of-open-businesses?code_type=3)

Tags: #Yelp

Tables: **#yelp_business**

  #### Solutions
```MySQL
SELECT COUNT(*) AS negocis_oberts
    FROM yelp_business
WHERE is_open = 1;
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 10024 - Wine varieties tasted by 'Roger Voss'](https://platform.stratascratch.com/coding/10024-wine-varieties-tasted-by-roger-voss?code_type=3)

Tags: #Wine Magazine

Tables: **#winemag_p2**

  #### Solutions
```MySQL
SELECT DISTINCT variety
    FROM winemag_p2
WHERE taster_name = 'Roger Voss' AND region_1 IS NOT NULL;
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 10022 - Find all wine varieties which can be considered cheap based on the price](https://platform.stratascratch.com/coding/10022-find-all-wine-varieties-which-can-be-considered-cheap-based-on-the-price?code_type=3)

Tags: #Wine Magazine

Tables: **#winemag_p1**

  #### Solutions
```MySQL
SELECT DISTINCT variety
    FROM winemag_p1
WHERE price BETWEEN 5 AND 20;
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 9973 - Find job titles which had 0 hours of overtime](https://platform.stratascratch.com/coding/10022-find-all-wine-varieties-which-can-be-considered-cheap-based-on-the-price?code_type=3)

Tags: #City of San Francisco

Tables: **#sf_public_salaries**

  #### Solutions
```MySQL
SELECT DISTINCT jobtitle
    FROM sf_public_salaries
WHERE overtimepay = 0
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 10087 - Find all posts which were reacted to with a heart](https://platform.stratascratch.com/coding/10087-find-all-posts-which-were-reacted-to-with-a-heart?code_type=3)

Tags: #Meta

Tables: **#facebook_reactions, #facebook_posts**

  #### Solutions
```MySQL
SELECT DISTINCT fp.*
    FROM facebook_reactions fr
    INNER JOIN facebook_posts fp ON fp.post_id = fr.post_id
WHERE fr.reaction = 'heart';
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 9674 - Find the top 5 longest US flights by distance](https://platform.stratascratch.com/coding/9674-find-the-top-5-longest-us-flights-by-distance?code_type=3)

Tags: #Virgin , #Delta Airlines , #American Airlines

Tables: **#us_flights**

  #### Solutions
```MySQL
SELECT origin, dest, distance
    FROM us_flights
WHERE unique_carrier = 'US'
ORDER BY distance DESC
LIMIT 5;
```

## [𝐐𝐮𝐞𝐬𝐭𝐢𝐨𝐧 9997 - Top 100 Ranked Songs](https://platform.stratascratch.com/coding/9997-top-100-ranked-songs?code_type=3)

Tags: #Spotify

Tables: **#spotify_worldwide_daily_song_ranking**

Hem tingut en compte que el cam position és el camp per calificar o valorar la canço.
També hem agrupat per nom de canço i artista ja que si només agrupem per nom de canço podria ser que hi haguéssin dues cançons ambm el mateix nom, però artistes diferents.

  #### Solutions
```MySQL
SELECT  artist,
        trackname,
        SUM(streams) AS total_streams
  FROM spotify_worldwide_daily_song_ranking
GROUP BY artist,trackname
ORDER BY position DESC
LIMIT 100;
```

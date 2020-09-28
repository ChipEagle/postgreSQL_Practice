SELECT
    prod_id
   ,price
   ,category
   ,first_value(price) OVER (PARTITION BY category ORDER BY price) AS "Cheapest in each category"
FROM products;
  
  
  
SELECT
    prod_id
   ,price
   ,category
   ,MIN(price) OVER (PARTITION BY category ORDER BY price) AS "Cheapest in each category"
FROM products;

/* 
Do they return the same result?
Yes, see below.
*/

SELECT
    prod_id
   ,price
   ,category
   ,first_value(price) OVER (PARTITION BY category ORDER BY price) AS "Cheapest in each category"
FROM products
EXCEPT
SELECT
    prod_id
   ,price
   ,category
   ,MIN(price) OVER (PARTITION BY category ORDER BY price) AS "Cheapest in each category"
FROM products;

/*
  Try the other way
*/


SELECT
    prod_id
   ,price
   ,category
   ,MIN(price) OVER (PARTITION BY category ORDER BY price) AS "Cheapest in each category"
FROM products
EXCEPT
SELECT
    prod_id
   ,price
   ,category
   ,first_value(price) OVER (PARTITION BY category ORDER BY price) AS "Cheapest in each category"
FROM products;

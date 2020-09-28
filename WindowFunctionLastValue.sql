SELECT
    prod_id
   ,price
   ,category
   ,LAST_VALUE(price) OVER (
        PARTITION BY category 
        ORDER BY price
        RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING -- Taking into account the entire partition
        ) AS "Most expensive in each category"
FROM products;

/*
  More efficient
*/

SELECT
    prod_id
   ,price
   ,category
   ,MAX(price) OVER (
        PARTITION BY category 
        ORDER BY price
        RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING -- Taking into account the entire partition
        ) AS "Most expensive in each category"
FROM products;
  


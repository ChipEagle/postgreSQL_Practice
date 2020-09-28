SELECT 
    prod_id
   ,price
   ,category
   ,row_number() OVER (PARTITION BY category ORDER BY price) AS "position in category by price"
FROM products;
   

  


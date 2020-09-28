/*

Evaluate Store Database

*/

-- 16 categories

SELECT category, categoryname
FROM "public"."categories";

-- 60,350 customer history records
SELECT customerid, orderid, prod_id
  FROM cust_hist;
  
 -- 20,000 customers
 
 SELECT *
   FROM customers;

SELECT *
  FROM  COLUMNS;
  
-- PostgreSQL show tables using pg_catalog schema
  
SELECT *
FROM pg_catalog.pg_tables
WHERE schemaname != 'pg_catalog' AND 
    schemaname != 'information_schema';
 
-- Show column name 
  
SELECT column_name 
  FROM INFORMATION_SCHEMA. COLUMNS 
 WHERE table_name = 'categories';  
 
SELECT column_name 
  FROM INFORMATION_SCHEMA. COLUMNS 
 WHERE table_name = 'cust_hist';
 
SELECT column_name 
  FROM INFORMATION_SCHEMA. COLUMNS 
 WHERE table_name = 'customers';
 
SELECT column_name 
  FROM INFORMATION_SCHEMA. COLUMNS 
 WHERE table_name = 'inventory';
 
SELECT column_name 
  FROM information_schema. COLUMNS 
 WHERE table_name = 'orderlines';
 
SELECT column_name 
  FROM INFORMATION_SCHEMA. COLUMNS 
 WHERE table_name = 'orders';
    
SELECT column_name 
  FROM INFORMATION_SCHEMA. COLUMNS 
 WHERE table_name = 'products';
 
SELECT column_name 
  FROM INFORMATION_SCHEMA. COLUMNS 
 WHERE table_name = 'reorder';
 
SELECT * 
  FROM information_schema.sql_packages;
    

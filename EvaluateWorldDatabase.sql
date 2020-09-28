/*

Evaluate World Database

*/

-- PostgreSQL show tables using pg_catalog schema
  
SELECT *
FROM pg_catalog.pg_tables
WHERE schemaname != 'pg_catalog' AND 
    schemaname != 'information_schema';
 
-- Show column names 
  
SELECT column_name 
  FROM INFORMATION_SCHEMA. COLUMNS 
 WHERE table_name = 'city'; 
 
SELECT column_name 
  FROM INFORMATION_SCHEMA. COLUMNS 
 WHERE table_name = 'country'; 
 
SELECT column_name 
  FROM INFORMATION_SCHEMA. COLUMNS 
 WHERE table_name = 'countrylanguage'; 
 
 
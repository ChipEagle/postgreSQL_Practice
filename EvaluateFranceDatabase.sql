/*

Evaluate France Database

*/

SELECT id, code, capital, region, "name"
FROM "public"."departments";

-- 26 regions

SELECT id, code, capital, "name"
FROM "public"."regions";

-- 36,684 towns

SELECT id, code, article, "name", department
FROM "public"."towns";

SELECT
	COUNT("id") AS count,
	"region"
FROM "public"."departments"
GROUP BY "region";


-- 100 departments

SELECT COUNT(id)
  FROM departments;
  
-- 26 regions

SELECT COUNT(id)
  FROM regions;

-- 26 Distinct region records
  
SELECT COUNT(DISTINCT id)
  FROM regions;
  
  
-- PostgreSQL show tables using pg_catalog schema
  
SELECT *
FROM pg_catalog.pg_tables
WHERE schemaname != 'pg_catalog' AND 
    schemaname != 'information_schema';
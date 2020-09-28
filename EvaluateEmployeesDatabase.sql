/*

Evaluate employees table

*/

SELECT
	"emp_no",
	"birth_date",
 	EXTRACT(YEAR FROM birth_date) AS birth_year,
	"first_name",
	"last_name",
	"gender"
FROM "public"."employees";


SELECT
	COUNT("emp_no") AS count,
	"gender"
FROM "public"."employees"
GROUP BY "gender";


-- 300,024 employees

SELECT COUNT(emp_no)
  FROM employees;
  
-- 2,844,047 total records

SELECT COUNT(emp_no)
  FROM salaries;

-- 300,024 Distinct employee records
  
SELECT COUNT(DISTINCT emp_no)
  FROM salaries;
  
  
-- PostgreSQL show tables using pg_catalog schema
  
SELECT *
FROM pg_catalog.pg_tables
WHERE schemaname != 'pg_catalog' AND 
    schemaname != 'information_schema';

  

  
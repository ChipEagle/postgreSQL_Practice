EXPLAIN ANALYZE 
SELECT  
    first_name
   ,last_name
   ,AGE(birth_date)
FROM employees
WHERE AGE(birth_date) > (SELECT AVG(age(birth_date))
                           FROM employees);
                            

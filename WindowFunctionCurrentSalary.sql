-- Current Salary using a Window Function

SELECT DISTINCT e.emp_no
      ,e.first_name
      ,d.dept_name
      ,LAST_VALUE(s.salary) OVER (
            PARTITION BY e.emp_no
            ORDER BY s.from_date
            RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
      ) AS "Current Salary"
FROM salaries AS s 
INNER JOIN employees AS e USING(emp_no)
INNER JOIN dept_emp AS de USING(emp_no)
INNER JOIN departments AS d USING(dept_no)
ORDER BY e.emp_no;


SELECT DISTINCT e.emp_no
      ,e.first_name
      ,d.dept_name
      ,LAST_VALUE(s.from_date) OVER (
            PARTITION BY e.emp_no
            ORDER BY s.from_date
            RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
      ) AS "Current Salary"
FROM salaries AS s 
INNER JOIN employees AS e USING(emp_no)
INNER JOIN dept_emp AS de USING(emp_no)
INNER JOIN departments AS d USING(dept_no)
ORDER BY e.emp_no;
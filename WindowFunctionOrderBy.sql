-- Cumulative summary of employee count

SELECT emp_no
      ,salary
      ,COUNT(salary) OVER (
            ORDER BY emp_no
      )
  FROM salaries;
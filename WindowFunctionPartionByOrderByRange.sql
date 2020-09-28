-- Cumulative summary of employee count

SELECT emp_no
      ,salary
      ,COUNT(salary) OVER (
            PARTITION BY emp_no
            ORDER BY salary
            RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
      )
  FROM salaries;
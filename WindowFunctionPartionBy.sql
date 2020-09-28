SELECT *
      ,d.dept_name
      ,AVG(salary) OVER(
           PARTITION BY d.dept_name
      )
      ,MAX(salary) OVER(
           PARTITION BY d.dept_name
      )
      ,MIN(salary) OVER(
           PARTITION BY d.dept_name
      )
      ,STDDEV(salary) OVER(
           PARTITION BY d.dept_name
      )
 FROM salaries
 INNER JOIN dept_emp AS de USING (emp_no)
 INNER JOIN departments AS d USING (dept_no);

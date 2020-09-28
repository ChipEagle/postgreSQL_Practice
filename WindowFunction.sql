SELECT *
      ,AVG(salary) OVER()
      ,MAX(salary) OVER()
      ,MIN(salary) OVER()
      ,STDDEV(salary) OVER()
 FROM salaries;
  
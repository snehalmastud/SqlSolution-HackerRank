/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
SELECT *
FROM
  (SELECT MAX(MONTHS*SALARY),
          COUNT(EMPLOYEE_ID)
   FROM EMPLOYEE
   GROUP BY MONTHS*SALARY
   ORDER BY MONTHS*SALARY DESC)
WHERE ROWNUM = 1;

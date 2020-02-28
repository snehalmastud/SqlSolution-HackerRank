/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
SELECT *
FROM
  ( SELECT ROUND(LONG_W, 4)
   FROM STATION
   WHERE LAT_N > 38.7780
   ORDER BY LAT_N ASC)
WHERE ROWNUM = 1;

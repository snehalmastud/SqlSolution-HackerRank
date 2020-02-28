/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
SELECT NAME || '(' || SUBSTR(OCCUPATION, 1, 1) || ')'
FROM OCCUPATIONS
ORDER BY NAME;


SELECT 'There are a total of ' || X.O_COUNT || ' ' || LOWER(X.OCCUPATION) || 's.'
FROM
  (SELECT OCCUPATION,
          COUNT(OCCUPATION) AS O_COUNT
   FROM OCCUPATIONS
   GROUP BY OCCUPATION) X
ORDER BY X.O_COUNT,
         X.OCCUPATION;

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
SELECT S.NAME
FROM STUDENTS S,
     FRIENDS F,
     PACKAGES P1,
     PACKAGES P2
WHERE S.ID = F.ID
  AND F.FRIEND_ID = P2.ID
  AND S.ID = P1.ID
  AND P1.SALARY < P2.SALARY
ORDER BY P2.SALARY;

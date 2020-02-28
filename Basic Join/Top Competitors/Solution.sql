/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
SELECT H.HACKER_ID,
       H.NAME
FROM HACKERS H
JOIN SUBMISSIONS S ON H.HACKER_ID = S.HACKER_ID
JOIN DIFFICULTY D ON S.SCORE = D.SCORE
JOIN CHALLENGES C ON S.CHALLENGE_ID = C.CHALLENGE_ID
AND D.DIFFICULTY_LEVEL = C.DIFFICULTY_LEVEL
GROUP BY H.HACKER_ID,
         H.NAME
HAVING COUNT(S.SUBMISSION_ID) > 1
ORDER BY COUNT(S.SUBMISSION_ID) DESC, HACKER_ID ASC;

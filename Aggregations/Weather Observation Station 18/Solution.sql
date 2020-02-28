/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
SELECT ROUND(MAX(LAT_N) - MIN(LAT_N) + MAX(LONG_W) - MIN(LONG_W), 4)
FROM STATION;

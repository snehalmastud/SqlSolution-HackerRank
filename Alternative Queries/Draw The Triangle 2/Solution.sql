/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
SELECT RPAD('*', 2 * LEVEL - 1, ' *')
FROM DUAL CONNECT BY LEVEL <= 20;
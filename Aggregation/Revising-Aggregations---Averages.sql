/*
Problem Name: Revising Aggregations - Averages
Link: https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem
Problem Statement:
Query the average population of all cities in CITY where District is California.
*/

--Solution:

SELECT AVG(POPULATION)
FROM CITY
WHERE DISTRICT = 'California'


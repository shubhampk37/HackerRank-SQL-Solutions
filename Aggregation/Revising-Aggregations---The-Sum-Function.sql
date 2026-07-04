/*
Problem Name: Revising Aggregations - The Sum Function
Link: https://www.hackerrank.com/challenges/revising-aggregations-sum/problem

Problem Statement:
Query the total population of all cities in CITY where District is California.
*/

--Solution:

SELECT SUM(population)
FROM city
WHERE lower(DISTRICT) = 'california'
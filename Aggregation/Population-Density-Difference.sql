/*
Problem Name: Population Density Difference
Link: https://www.hackerrank.com/challenges/population-density-difference/problem

Problem Statement:
Query the difference between the maximum and minimum populations in CITY.
*/

--Solution:

SELECT MAX(population) - MIN(population)
FROM city

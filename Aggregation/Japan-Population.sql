/*
Problem Name: apan Population
Link: https://www.hackerrank.com/challenges/japan-population/problem

Problem Statement:
Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
*/

--Solution:

SELECT SUM(population)
FROM city
WHERE countrycode = 'JPN'
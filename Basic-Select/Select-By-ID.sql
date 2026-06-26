/*
Problem Name: Select By ID
Link: https://www.hackerrank.com/challenges/select-by-id/problem

Problem Statement:
Query all columns for a city in CITY with the ID 1661.
*/

--Solution:

SELECT
    *
FROM city
WHERE countrycode = 'USA' 
   AND population > 100000

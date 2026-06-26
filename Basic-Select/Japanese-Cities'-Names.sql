/*
Problem Name: Japanese Cities' Names
Link: https://www.hackerrank.com/challenges/japanese-cities-name/problem

Problem Statement:
Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
*/

--Solution:

SELECT
    name
FROM city
WHERE countrycode = 'JPN'

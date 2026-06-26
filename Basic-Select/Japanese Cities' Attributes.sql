/*
Problem Name: Japanese Cities' Attributes
Link: https://www.hackerrank.com/challenges/japanese-cities-attributes/problem

Problem Statement:
Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
*/

--Solution:

SELECT
    *
FROM city
WHERE countrycode = 'JPN'

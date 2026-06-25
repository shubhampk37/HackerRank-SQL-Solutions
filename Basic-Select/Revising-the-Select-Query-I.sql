/*
Problem Name: Revising the Select Query I
https://www.hackerrank.com/challenges/revising-the-select-query/problem

Problem Statement:
Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.

The CITY table is described as follows:
*/

--Solution:

SELECT
    *
FROM city
WHERE countrycode = 'USA' 
   AND population > 100000

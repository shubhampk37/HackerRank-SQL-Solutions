/*
Problem Name: Revising Aggregations - The Count Function
Link: https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem

Problem Statement:
Query a count of the number of cities in CITY having a Population larger than 100000.
*/

--Solution:

SELECT
    COUNT(name)
FROM city
WHERE population > 100000


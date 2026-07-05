/*
Problem Name: Average Population
Link: https://www.hackerrank.com/challenges/average-population/problem

Problem Statement:
Query the average population for all cities in CITY, rounded down to the nearest integer.
*/

--Solution:

SELECT FLOOR(AVG(population)) 
FROM CITY
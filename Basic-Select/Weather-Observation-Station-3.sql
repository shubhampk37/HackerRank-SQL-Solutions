/*
Problem Name: Weather Observation Station 3
Link: https://www.hackerrank.com/challenges/weather-observation-station-3/problem

Problem Statement:
Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
*/

--Solution:

SELECT
    DISTINCT city
FROM station
WHERE id % 2 = 0


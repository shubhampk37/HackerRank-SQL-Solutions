/*
Problem Name: Weather Observation Station 4
Link: https://www.hackerrank.com/challenges/weather-observation-station-4/problem

Problem Statement:
Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
*/

--Solution:

SELECT
    COUNT(city) - COUNT(DISTINCT city)
FROM station

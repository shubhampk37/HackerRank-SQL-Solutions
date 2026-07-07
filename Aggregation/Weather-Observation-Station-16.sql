/*
Problem Name: Weather Observation Station 16
Link: https://www.hackerrank.com/challenges/weather-observation-station-16/problem

Problem Statement:
Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780. Round your answer to 4 decimal places.
*/

--Solution:

SELECT ROUND(MIN(lat_n), 4)
FROM station
WHERE lat_n > 38.7780

/*
Problem Name: Weather Observation Station 14
Link: https://www.hackerrank.com/challenges/weather-observation-station-14/problem

Problem Statement:
Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2345. Truncate your answer to 4  decimal places.
*/

--Solution:

SELECT TRUNCATE(MAX(lat_n),4)
FROM station
WHERE lat_n < 137.2345
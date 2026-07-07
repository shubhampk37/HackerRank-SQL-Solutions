/*
Problem Name: Weather Observation Station 15
Link: https://www.hackerrank.com/challenges/weather-observation-station-15/problem

Problem Statement:
Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345 . Round your answer to  decimal places.
*/

--Solution:

SELECT ROUND(long_w, 4)
FROM station
WHERE lat_n < 137.2345
ORDER BY lat_n DESC
LIMIT 1
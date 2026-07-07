/*
Problem Name: Weather Observation Station 17
Link: https://www.hackerrank.com/challenges/weather-observation-station-17/problem

Problem Statement:
Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780. Round your answer to 4 decimal places.
*/

--Solution:

SELECT ROUND(long_w,4)
FROM station
WHERE lat_N > 38.7780
ORDER BY lat_n ASC
LIMIT 1
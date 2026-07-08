/*
Problem Name: Weather Observation Station 18
Link: https://www.hackerrank.com/challenges/weather-observation-station-18/problem

Problem Statement:
Consider P1(a, b) and P2(c, d) to be two points on a 2D plane.
 - a = min(LAT_N)
 - b = min(LONG_W)
 - c = max(LAT_N)
 - d = max(LONG_W)
Query the Manhattan Distance between points P1 and P2 and round it to 4 decimal places.
*/

--Solution:

SELECT 
    ROUND(
        (MAX(LAT_N) - MIN(LAT_N)) + (MAX(LONG_W) - MIN(LONG_W)), 
        4
    ) AS manhattan_distance
FROM STATION;
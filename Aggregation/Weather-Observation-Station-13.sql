/*
Problem Name: Weather Observation Station 13
Link: https://www.hackerrank.com/challenges/weather-observation-station-13/problem

Problem Statement:
Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 and less than 137.2345. Truncate your answer to 4 decimal places.
*/

--Solution:

SELECT
    TRUNCATE(SUM(lat_n), 4)
FROM station
WHERE
    lat_n BETWEEN 38.7880 AND 137.2345
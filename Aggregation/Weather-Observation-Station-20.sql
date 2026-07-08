/*
Problem Name: Weather Observation Station 20
Link: https://www.hackerrank.com/challenges/weather-observation-station-20/problem

Problem Statement:
A median is defined as a number separating the higher half of a data set from the lower half. 
Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places.
*/

--Solution:

WITH ordered_latitudes AS (
    SELECT 
        LAT_N,
        ROW_NUMBER() OVER (ORDER BY LAT_N) AS row_num,
        COUNT(*) OVER () AS total_rows
    FROM STATION
)
SELECT 
    ROUND(AVG(LAT_N), 4) AS median_latitude
FROM ordered_latitudes
WHERE row_num IN (FLOOR((total_rows + 1) / 2.0), CEIL((total_rows + 1) / 2.0));
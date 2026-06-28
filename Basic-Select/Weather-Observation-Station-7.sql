/*
Problem Name: Weather-Observation-Station-7
Link: https://www.hackerrank.com/challenges/weather-observation-station-7/problem
Problem Statement:
Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
*/

--Solution:

SELECT
    DISTINCT city
FROM station
WHERE   
    LOWER(city) REGEXP '[aeiou]$'


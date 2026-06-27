/*
Problem Name: Weather-Observation-Station-6
Link: https://www.hackerrank.com/challenges/weather-observation-station-6/problem

Problem Statement:
Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
*/

--Solution:

SELECT
    city
FROM station
WHERE
    LOWER(city) REGEXP '^[aeiou]'

/*
Problem Name: Weather-Observation-Station-9
Link: https://www.hackerrank.com/challenges/weather-observation-station-9/problem

Problem Statement:
Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
*/

--Solution:

SELECT
    DISTINCT city
FROM station
WHERE
    LOWER(city) NOT REGEXP '^[aeiou]'

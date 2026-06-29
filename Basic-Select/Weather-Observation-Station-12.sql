/*
Problem Name: Weather-Observation-Station-12
Link: https://www.hackerrank.com/challenges/weather-observation-station-12/problem

Problem Statement:
Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
*/

--Solution:

SELECT
    DISTINCT city
FROM station
WHERE
    LOWER(city) NOT REGEXP '^[aeiou]'
    AND LOWER(city) NOT REGEXP '[aeiou]$'
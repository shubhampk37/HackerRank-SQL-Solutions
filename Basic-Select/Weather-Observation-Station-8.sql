/*
Problem Name: Weather-Observation-Station-8
Link: https://www.hackerrank.com/challenges/weather-observation-station-8/problem

Problem Statement:
Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
*/

--Solution:

SELECT
    city
FROM station
WHERE
    LOWER(city) REGEXP '^[aeiou]'
    AND LOWER(city) REGEXP '[aeiou]$'
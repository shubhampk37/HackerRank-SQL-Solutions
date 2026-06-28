/*
Problem Name: Weather-Observation-Station-10
Link: https://www.hackerrank.com/challenges/weather-observation-station-10/problem

Problem Statement:
Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
*/

--Solution:

SELECT
    DISTINCT city
FROM station
WHERE
    city NOT REGEXP '[aeiou]$'
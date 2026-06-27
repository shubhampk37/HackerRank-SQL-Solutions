/*
Problem Name: Weather Observation Station 5
Link: https://www.hackerrank.com/challenges/weather-observation-station-5/problem

Problem Statement:
Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
*/

--Solution:

(SELECT
    city
    , LENGTH(city)
FROM station
ORDER BY
    LENGTH(city)
    , city
LIMIT 1)
UNION ALL
(SELECT
    city
    , LENGTH(city)
FROM station
ORDER BY
    LENGTH(city) DESC
    , city
LIMIT 1)

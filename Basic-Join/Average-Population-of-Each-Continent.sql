/*
Problem Name: Challenges
Link: https://www.hackerrank.com/challenges/average-population-of-each-continent/problem

Problem Statement:
Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.
*/

--Solution:

SELECT 
    country.continent,
    FLOOR(AVG(city.population)) AS average_city_population
FROM city
JOIN 
    country
    ON city.countrycode = country.code
GROUP BY 
    country.continent;
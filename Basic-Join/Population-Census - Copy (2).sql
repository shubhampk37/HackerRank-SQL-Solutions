/*
Problem Name: Population Census
Link: https://www.hackerrank.com/challenges/asian-population/problem

Problem Statement:
Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
*/

--Solution:

SELECT SUM(city.population) AS total_asian_population
FROM city
JOIN country 
    ON city.countrycode = country.code
WHERE country.continent = 'Asia';


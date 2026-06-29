/*
Problem Name: African Cities
Link: https://www.hackerrank.com/challenges/african-cities/problem

Problem Statement:
Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/

--Solution:

SELECT
    c.name
FROM city c
INNER JOIN country co
    ON c.countrycode = co.code
WHERE 
    LOWER(co.continent) = 'africa'


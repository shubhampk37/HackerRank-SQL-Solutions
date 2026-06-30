/*
Problem Name: Occupations
Link: https://www.hackerrank.com/challenges/occupations/problem

Problem Statement:
Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output should consist of four columns (Doctor, Professor, Singer, and Actor) in that specific order, with their respective names listed alphabetically under each column.

Note: Print NULL when there are no more names corresponding to an occupation.

Input Format

The OCCUPATIONS table is described as follows:



Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.
*/

--Solution:

WITH OccupationWiseEmployees AS(
    SELECT
    name
    , occupation
    , ROW_NUMBER() OVER (PARTITION BY occupation ORDER BY name) AS serial_number
    FROM occupations
)

SELECT
    MAX(CASE WHEN LOWER(occupation) = 'doctor' THEN name END) AS doctor
    , MAX(CASE WHEN LOWER(occupation) = 'professor' THEN name END) AS doctor
    , MAX(CASE WHEN LOWER(occupation) = 'singer' THEN name END) AS doctor
    , MAX(CASE WHEN LOWER(occupation) = 'actor' THEN name END) AS doctor
FROM OccupationWiseEmployees
GROUP BY serial_number
ORDER BY serial_number


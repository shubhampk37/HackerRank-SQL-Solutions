/*
Problem Name: Employee Names
Link: https://www.hackerrank.com/challenges/name-of-employees/problem

Problem Statement:
Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
*/

--Solution:

SELECT
    name
FROM employee
ORDER BY
    name ASC
/*
Problem Name: Employee Salaries
Link: https://www.hackerrank.com/challenges/salary-of-employees/problem

Problem Statement:
Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than  per month who have been employees for less than  months. Sort your result by ascending employee_id.
*/

--Solution:

SELECT
    name
FROM employee
WHERE
    salary > 2000
    AND months < 10
ORDER BY 
    employee_id ASC

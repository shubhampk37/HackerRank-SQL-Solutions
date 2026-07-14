/*
Problem Name: Symmetric Pairs
Link: https://www.hackerrank.com/challenges/symmetric-pairs/problem
Problem Statement:
You are given a table, Functions, containing two columns: X and Y.



Two pairs (X1, Y1) and (X2, Y2) are said to be symmetric pairs if X1 = Y2 and X2 = Y1.

Write a query to output all such symmetric pairs in ascending order by the value of X. List the rows such that X1 ≤ Y1.
*/

--Solution:

SELECT
    f1.X, 
    f1.Y
FROM Functions AS f1
JOIN Functions AS f2 
    ON f1.X = f2.Y 
   AND f1.Y = f2.X
GROUP BY 
    f1.X, 
    f1.Y
HAVING 
    f1.X < f1.Y 
    OR COUNT(*) > 1
ORDER BY f1.X;
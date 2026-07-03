/*
Problem Name: Challenges
Link: https://www.hackerrank.com/challenges/challenges/problem

Problem Statement:
Julia asked her students to create some coding challenges. Write a query to print the hacker_id, name, and the total number of challenges created by each student. Sort your results by the total number of challenges in descending order. If more than one student created the same number of challenges, then sort the result by hacker_id. If more than one student created the same number of challenges and the count is less than the maximum number of challenges created, then exclude those students from the result.
*/

--Solution:

WITH ChallengeCounts AS (
    SELECT 
        h.hacker_id, 
        h.name, 
        COUNT(c.challenge_id) AS total_challenges
    FROM Hackers h
    JOIN Challenges c ON h.hacker_id = c.hacker_id
    GROUP BY 
        h.hacker_id
        , h.name
)

SELECT hacker_id, name, total_challenges
FROM ChallengeCounts
WHERE 
    total_challenges = (SELECT MAX(total_challenges) FROM ChallengeCounts)
    
     OR total_challenges IN (
        SELECT total_challenges 
        FROM ChallengeCounts 
        GROUP BY total_challenges 
        HAVING COUNT(*) = 1
    )
ORDER BY 
    total_challenges DESC
    , hacker_id ASC


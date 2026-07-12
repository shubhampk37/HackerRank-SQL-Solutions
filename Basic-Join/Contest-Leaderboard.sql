/*
Problem Name: Contest Leaderboard
Link: https://www.hackerrank.com/challenges/contest-leaderboard/problem
Problem Statement:
You did such a great job helping Julia with her last coding contest challenge that she wants you to work on this one, too!

The total score of a hacker is the sum of their maximum scores for all of the challenges. Write a query to print the hacker_id, name, and total score of the hackers ordered by the descending score. If more than one hacker achieved the same total score, then sort the result by ascending hacker_id. Exclude all hackers with a total score of  from your result.
*/

--Solution:

SELECT 
    h.hacker_id, 
    h.name, 
    SUM(max_submissions.max_score) AS total_score
FROM Hackers AS h
JOIN (
    SELECT 
        hacker_id, 
        challenge_id, 
        MAX(score) AS max_score
    FROM Submissions
    GROUP BY hacker_id, challenge_id
) max_submissions ON h.hacker_id = max_submissions.hacker_id
GROUP BY h.hacker_id, h.name
HAVING total_score > 0
ORDER BY total_score DESC, h.hacker_id ASC;
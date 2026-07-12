/*
Problem Name: Interviews
Link: https://www.hackerrank.com/challenges/interviews/problem
Problem Statement:
Samantha interviews many candidates from different colleges using coding challenges and contests. Write a query to print the contest_id, hacker_id, name, and the sums of total_submissions, total_accepted_submissions, total_views, and total_unique_views for each contest sorted by contest_id. Exclude the contest from the result if all four sums are .

Note: A specific contest can be used to screen candidates at more than one college, but each college only holds  screening contest.
*/

--Solution:

SELECT 
    con.contest_id, 
    con.hacker_id, 
    con.name, 
    SUM(ss.total_submissions), 
    SUM(ss.total_accepted_submissions), 
    SUM(vs.total_views), 
    SUM(vs.total_unique_views)
FROM Contests con
JOIN Colleges col ON con.contest_id = col.contest_id
JOIN Challenges cha ON col.college_id = cha.college_id
LEFT JOIN (
    SELECT 
        challenge_id, 
        SUM(total_submissions) AS total_submissions, 
        SUM(total_accepted_submissions) AS total_accepted_submissions
    FROM Submission_Stats
    GROUP BY challenge_id
) ss ON cha.challenge_id = ss.challenge_id
LEFT JOIN (
    SELECT 
        challenge_id, 
        SUM(total_views) AS total_views, 
        SUM(total_unique_views) AS total_unique_views
    FROM View_Stats
    GROUP BY challenge_id
) vs ON cha.challenge_id = vs.challenge_id
GROUP BY con.contest_id, con.hacker_id, con.name
HAVING 
    SUM(ss.total_submissions) > 0 OR 
    SUM(ss.total_accepted_submissions) > 0 OR 
    SUM(vs.total_views) > 0 OR 
    SUM(vs.total_unique_views) > 0
ORDER BY con.contest_id;
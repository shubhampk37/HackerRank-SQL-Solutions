/*
Problem Name: 15 Days of Learning SQL
Link: https://www.hackerrank.com/challenges/15-days-of-learning-sql/problem
Problem Statement:
Julia conducted a  days of learning SQL contest. The start date of the contest was March 01, 2016 and the end date was March 15, 2016.

Write a query to print total number of unique hackers who made at least  submission each day (starting on the first day of the contest), and find the hacker_id and name of the hacker who made maximum number of submissions each day. If more than one such hacker has a maximum number of submissions, print the lowest hacker_id. The query should print this information for each day of the contest, sorted by the date.
*/

--Solution:

WITH DailySubmissionCounts AS (
    -- Count how many submissions each hacker made per day
    SELECT 
        submission_date,
        hacker_id,
        COUNT(submission_id) AS sub_count
    FROM Submissions
    GROUP BY submission_date, hacker_id
),

DailyMaxSubmissions AS (
    -- Find the hacker with the max submissions for each day. 
    -- Tie-breaker: lowest hacker_id.
    SELECT 
        submission_date,
        hacker_id,
        ROW_NUMBER() OVER(
            PARTITION BY submission_date 
            ORDER BY sub_count DESC, hacker_id ASC
        ) as rn
    FROM DailySubmissionCounts
),

HackerDailySequence AS (
    -- Get a chronological rank (1, 2, 3...) of the dates to track consecutive days
    SELECT 
        submission_date,
        hacker_id,
        DENSE_RANK() OVER(ORDER BY submission_date) AS day_seq
    FROM Submissions
),

HackerHistory AS (
    -- Find how many unique days each hacker has submitted up to the current day
    SELECT 
        s1.submission_date,
        s1.hacker_id,
        (
            SELECT COUNT(DISTINCT s2.submission_date) 
            FROM Submissions s2 
            WHERE s2.hacker_id = s1.hacker_id 
              AND s2.submission_date <= s1.submission_date
        ) AS days_submitted,
        seq.day_seq
    FROM (SELECT DISTINCT submission_date, hacker_id FROM Submissions) s1
    JOIN (SELECT DISTINCT submission_date, DENSE_RANK() OVER(ORDER BY submission_date) AS day_seq FROM Submissions) seq 
      ON s1.submission_date = seq.submission_date
),

ConsistentHackersCount AS (
    -- Count hackers whose submitted days equal the current day sequence number
    -- (meaning they haven't missed a single day since March 1st)
    SELECT 
        submission_date,
        COUNT(DISTINCT hacker_id) AS consistent_hacker_cnt
    FROM HackerHistory
    WHERE days_submitted = day_seq
    GROUP BY submission_date
)

-- Combine everything together to get the final output
SELECT 
    ch.submission_date,
    ch.consistent_hacker_cnt,
    ms.hacker_id,
    h.name
FROM ConsistentHackersCount ch
JOIN DailyMaxSubmissions ms 
    ON ch.submission_date = ms.submission_date AND ms.rn = 1
JOIN Hackers h 
    ON ms.hacker_id = h.hacker_id
ORDER BY ch.submission_date;
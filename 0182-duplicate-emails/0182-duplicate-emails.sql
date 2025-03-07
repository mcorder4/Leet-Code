# Write your MySQL query statement below
SELECT email
FROM person AS Email
GROUP BY email
HAVING COUNT(*) > 1;
# Write your MySQL query statement below
SELECT DISTINCT num AS ConsecutiveNums
FROM (
    SELECT num,
        LAG(num, 1) OVER (ORDER BY id) AS previous_num,
        LAG(num, 2) OVER (ORDER BY id) AS previous_previous_num
    FROM Logs    
) t
WHERE num = previous_num AND num = previous_previous_num;
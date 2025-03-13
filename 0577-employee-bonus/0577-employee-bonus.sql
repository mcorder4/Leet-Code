# Write your MySQL query statement below
SELECT
    Employee.name,
    extra_income.bonus
FROM
    Employee
LEFT JOIN Bonus AS extra_income
    ON Employee.empId = extra_income.empId
WHERE
    bonus < 1000 OR bonus IS NULL;
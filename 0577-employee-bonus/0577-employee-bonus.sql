# Write your MySQL query statement below
SELECT emp.name, bns.bonus
FROM employee emp
LEFT JOIN bonus bns
ON emp.empid = bns.empid
WHERE bns.bonus < 1000 or bns.bonus is null
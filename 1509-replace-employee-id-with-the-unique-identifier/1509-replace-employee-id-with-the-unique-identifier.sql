# Write your MySQL query statement below
SELECT unique_id, name
FROM employees emp
LEFT JOIN employeeuni empuni
ON emp.id = empuni.id
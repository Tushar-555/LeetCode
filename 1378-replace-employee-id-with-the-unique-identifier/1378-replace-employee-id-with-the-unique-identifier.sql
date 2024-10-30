# Write your MySQL query statement below
select eu.unique_id, emp.name from employees emp
left join employeeuni eu
on emp.id=eu.id

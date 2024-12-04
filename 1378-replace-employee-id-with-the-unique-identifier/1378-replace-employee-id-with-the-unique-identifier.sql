# Write your MySQL query statement below
select unique_id, name
from employees emp
left join employeeUNI empu
on emp.id=empu.id

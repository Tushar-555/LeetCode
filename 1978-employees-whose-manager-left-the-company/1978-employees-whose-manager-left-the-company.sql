# Write your MySQL query statement below
select employee_id
from employees
where manager_id not in(select distinct employee_id from employees)
order by employee_id
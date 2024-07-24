# Write your MySQL query statement below
select name, bonus
from employee emp
left join bonus bn
on emp.empId=bn.empId
where bonus < 1000 or bonus is NULL
# Write your MySQL query statement below
select emp.name, bn.bonus
from employee emp
left join bonus bn
on emp.empId=bn.empId
where bn.bonus < 1000 or bn.bonus is NULL
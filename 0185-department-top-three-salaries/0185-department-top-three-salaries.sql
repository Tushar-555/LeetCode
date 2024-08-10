# Write your MySQL query statement below
select Department,Employee,Salary from(
select d.name as Department,e.name as Employee,e.Salary,
dense_rank() over(partition by e.departmentId order by salary desc) as rn
from employee e
inner join department d
on e.departmentId=d.id) high_sal_emp
where rn<4

# Write your MySQL query statement below
select 
case when max(rn) <=1 then NULL
else salary end as SecondHighestSalary 
from(
select id,salary,
dense_rank() over(order by salary desc) as rn
from employee
)emp
where rn=2
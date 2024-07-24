# Write your MySQL query statement below
select project_id, round(avg(experience_years),2) as average_years
from project pr
inner join employee emp
on pr.employee_id=emp.employee_id
group by pr.project_id
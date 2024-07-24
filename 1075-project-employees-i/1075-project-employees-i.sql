# Write your MySQL query statement below
# Finding average experience years of employee for each project_id
select project_id, round(avg(experience_years),2) as average_years
from project pr
inner join employee emp
on pr.employee_id=emp.employee_id
group by pr.project_id
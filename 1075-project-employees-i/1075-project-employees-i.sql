# Write your MySQL query statement below
# Finding average experience years of employee for each project_id
select project_id,
round(sum(experience_years)/count(pr.employee_id),2) as average_years
#round(avg(experience_years),2) as average_years
from project pr
left join employee emp
on pr.employee_id=emp.employee_id
group by project_id

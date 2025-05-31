# Write your MySQL query statement below
# Finding average experience years of employee for each project_id
SELECT project_id,
#round(avg(emp.experience_years),2) as average_years
#round(sum(emp.experience_years)/count(*),2) as average_years
round(sum(emp.experience_years)/count(prj.employee_id),2) as average_years
FROM project prj
LEFT JOIN employee emp
ON prj.employee_id = emp.employee_id
GROUP BY prj.project_id
# Write your MySQL query statement below
# First select all manager id to which more than 5 id belongs 
/*
with mng_id as(
select managerId from(
select managerId, count(id)
from employee
where managerId is not NULL
group by managerId
having count(id)>=5) t1
)
# Checking for employee having id equal to manager id
select name from employee
inner join mng_id
on id=mng_id.managerId
*/
# or Updated query
-- select name
-- from employee
-- where id in (
-- select managerId
-- from employee
-- group by managerId
-- having count(managerId)>=5)

WITH direct_reports as (
    SELECT managerid, count(id)
    FROM employee
    GROUP BY managerid
    HAVING count(id) >= 5 
)

SELECT name
FROM direct_reports dr
INNER JOIN employee emp
ON dr.managerid = emp.id
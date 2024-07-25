# Write your MySQL query statement below
# First select all manager id to which more than id belongs 
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
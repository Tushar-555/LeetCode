# Write your MySQL query statement below
with mng_id as(
select managerId from(
select managerId, count(id)
from employee
where managerId is not NULL
group by managerId
having count(id)>=5) t1
)

select name from employee
inner join mng_id
on id=mng_id.managerId
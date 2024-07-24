# Write your MySQL query statement below
delete from person where id || "_" || email in(
select id || "_" || email
from(
select id,email,
row_number() over (partition by email order by id asc) as rn
from person) t1
where rn>1
)


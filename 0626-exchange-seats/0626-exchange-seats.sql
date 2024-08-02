# Write your MySQL query statement below
select
case when id%2 !=0 and id!=cnt then id+1
    when id%2 !=0 and id=cnt then id
    else id-1
    end as id, student
from seat st, (select count(*) cnt from seat)seat_cnt 
order by id asc



# Write your MySQL query statement below
with max_turn as(
select max(turn) m_turn from(
select turn,person_id,person_name,
sum(weight) over(order by turn) as total_weight
from queue
)last_person
where total_weight<1001
)

select q.person_name from queue q
join max_turn mt
on turn=m_turn
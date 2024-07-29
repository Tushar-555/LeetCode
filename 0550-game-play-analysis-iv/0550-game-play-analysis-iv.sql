# Write your MySQL query statement below
select 
round(sum(case when date_diff=1 then 1 else 0 end)/count(distinct player_id),2) as fraction
from(
select player_id,
datediff(lead(event_date,1) over(partition by player_id order by event_date),event_date) as date_diff
from activity
) act
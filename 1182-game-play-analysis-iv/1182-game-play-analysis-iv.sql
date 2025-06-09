# Write your MySQL query statement below
/*
select 
round(sum(case when date_diff=1 then 1 else 0 end)/count(distinct player_id),2) as fraction
from(
select player_id,
datediff(lead(event_date,1) over(partition by player_id order by event_date),event_date) as date_diff
from activity
) act
*/
select round(
(select count(distinct a.player_id) from activity a
inner join(
select player_id,min(event_date) first_logged_date from activity group by player_id) b
on datediff(a.event_date,b.first_logged_date)=1 and a.player_id=b.player_id)/
(select count(distinct player_id) from activity),2) as fraction



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
SELECT round(
    (SELECT count(distinct a.player_id) 
    FROM activity a
    INNER JOIN(
        SELECT player_id,min(event_date) first_logged_date
        FROM activity
        GROUP BY player_id) b
    ON datediff(a.event_date, b.first_logged_date)=1 and
    a.player_id = b.player_id)/(SELECT count(distinct player_id) FROM activity),2) as fraction
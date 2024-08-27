# Write your MySQL query statement below
select activity_date as day,count(distinct user_id) as active_users
#avg(case when activity_type in ('open_session', 'end_session', 'scroll_down', 'send_message') then 1 else 0 end)
from activity
where activity_date between '2019-06-28' and '2019-07-27'
group by activity_date
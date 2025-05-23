# Write your MySQL query statement below

# In this question it is essential to consider date difference as well while checking difference between temperature
SELECT id FROM(
    SELECT id, temperature,
    LAG(temperature,1) OVER(ORDER BY recordDate) as prev_temperature,
    DATEDIFF(recordDate,LAG(recordDate,1) OVER(ORDER BY recordDate)) as date_diff
    FROM weather 
) wth
WHERE date_diff=1 and temperature>prev_temperature
/*
select id from(
select id,
case when temperature-coalesce((LAG(temperature,1) over(order by recordDate)),temperature)>0 then '1'
else '0' end  as status
from weather w
) wth
where status='1' 
*/
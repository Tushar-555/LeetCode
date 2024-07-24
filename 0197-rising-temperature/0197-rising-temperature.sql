# Write your MySQL query statement below
select id from(
select id,recordDate,temperature,
LAG(temperature,1) Over(Order by  recordDate) as prevtemp,
DATEDIFF(recordDate,LAG(recordDate,1) OVER (ORDER BY recordDate)) as date_diff
from weather w 
) wth
where temperature>prevtemp and  date_diff=1;

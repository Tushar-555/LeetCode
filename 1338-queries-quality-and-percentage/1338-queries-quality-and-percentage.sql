# Write your MySQL query statement below
-- select query_name,
-- round(avg(rating/position),2) as quality,
-- round(sum(case when rating<3 then 1 else 0 end)*100/count(*),2) as poor_query_percentage
-- from queries
-- where query_name is not null
-- group by query_name

SELECT query_name,
round(avg(rating/position),2) as quality,
round(sum(case when rating<3 then 1 else 0 end)*100/count(rating),2) as poor_query_percentage
FROM queries
GROUP BY query_name

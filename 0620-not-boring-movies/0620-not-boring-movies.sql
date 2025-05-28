# Write your MySQL query statement below
/*
select id,movie,description,rating
from cinema
where id%2!=0 and description !='boring'
order by rating desc
*/
# OR
SELECT id, movie, description, rating
FROM cinema
WHERE id%2 <> 0 and description <> 'boring'
ORDER BY rating desc

# Write your MySQL query statement below
-- WITH user_count as (
--     SELECT count(user_id) as total_users
--     FROM users
-- )

-- SELECT reg.contest_id, 
-- round(count(reg.user_id)*100/us.total_users,2) as percentage
-- FROM register reg
-- JOIN user_count us
-- GROUP BY reg.contest_id
-- ORDER BY percentage desc, reg.contest_id

SELECT contest_id, 
round(count(reg.user_id)*100/(SELECT count(user_id) FROM users),2) as percentage
FROM register reg
GROUP BY contest_id
ORDER BY percentage desc, contest_id
# Write your MySQL query statement below
SELECT DISTINCT author_id id
FROM views
WHERE author_id = viewer_id
ORDER BY id
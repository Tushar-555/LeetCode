# Write your MySQL query statement below
# Selecting class with count of student>=5
SELECT class
FROM (
    SELECT class, count(student) count
    FROM courses cr
    GROUP BY class
    HAVING count >=5
) five_std


# Write your MySQL query statement below
# Selecting class with count of student>=5

SELECT class
FROM courses cr
GROUP BY class
HAVING count(student) >=5
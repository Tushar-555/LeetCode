# Write your MySQL query statement below
WITH cross1 as (
    SELECT 
    std.student_id, std.student_name, sub.subject_name
    FROM students std
    CROSS JOIN subjects sub
)

SELECT crs.student_id, crs.student_name, crs.subject_name,
coalesce(count(exm.subject_name),0) as attended_exams
FROM cross1 crs
LEFT JOIN examinations exm
ON crs.student_id = exm.student_id and crs.subject_name = exm.subject_name
GROUP BY crs.student_id, crs.student_name, crs.subject_name
ORDER BY crs.student_id, crs.subject_name
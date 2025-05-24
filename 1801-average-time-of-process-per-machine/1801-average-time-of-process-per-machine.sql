# Write your MySQL query statement below
WITH act as (
    SELECT machine_id, process_id,
    timestamp as start_time
    FROM activity
    WHERE activity_type = 'start'
),
act1 as (
    SELECT machine_id, process_id, 
    timestamp as end_time 
    FROM activity
    WHERE activity_type = 'end'
),

act2 as (
            SELECT act.machine_id, act.process_id,
            (end_time-start_time) as process_time
            FROM act
            INNER JOIN act1
            ON act.machine_id = act1.machine_id and act.process_id=act1.process_id
)

SELECT machine_id, round(sum(process_time)/count(process_id),3) as processing_time
FROM act2
GROUP BY machine_id 
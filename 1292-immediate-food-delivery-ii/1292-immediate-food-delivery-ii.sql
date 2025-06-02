# Write your MySQL query statement below
-- select 
-- round(sum(case when order_state ='immediate' then 1 else 0 end)*100/count(*),2) as immediate_percentage
-- from(
-- select delivery_id,customer_id,
-- row_number() over(partition by customer_id order by order_date) as rn,
-- case when order_date=customer_pref_delivery_date then "immediate"
-- else "scheduled" end as order_state
-- from delivery
-- ) del
-- where rn=1

WITH customer_first_order as (
    SELECT delivery_id, order_date, customer_pref_delivery_date,
    row_number() over(partition by customer_id order by order_date) as rn
    FROM delivery
)

SELECT 
round(sum(case when order_date = customer_pref_delivery_date then 1 else 0 end)*100/count(delivery_id),2) as immediate_percentage
FROM customer_first_order
WHERE rn = 1
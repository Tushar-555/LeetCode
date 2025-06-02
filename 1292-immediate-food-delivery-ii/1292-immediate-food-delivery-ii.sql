# Write your MySQL query statement below
# solution 1 using subquery
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

# solution 2 using with and window function
-- WITH customer_first_order as (
--     SELECT delivery_id, order_date, customer_pref_delivery_date,
--     row_number() over(partition by customer_id order by order_date) as rn
--     FROM delivery
-- )

-- SELECT 
-- round(sum(case when order_date = customer_pref_delivery_date then 1 else 0 end)*100/count(delivery_id),2) as immediate_percentage
-- FROM customer_first_order
-- WHERE rn = 1

# solution 3 with aggregate function
SELECT
round(avg(order_date = customer_pref_delivery_date)*100,2) as immediate_percentage
FROM delivery
WHERE (customer_id, order_date) in (
    SELECT customer_id, min(order_date)
    FROM delivery
    GROUP BY customer_id
)

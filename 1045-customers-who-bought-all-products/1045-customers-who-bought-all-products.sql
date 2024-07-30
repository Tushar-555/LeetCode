# Write your MySQL query statement below
select customer_id from(
select customer_id,count(distinct product_key) as cnt
from customer cust
where cust.product_key is not null
group by customer_id
)cust_bought_all_prd
where cnt=(select count(distinct product_key) from product)
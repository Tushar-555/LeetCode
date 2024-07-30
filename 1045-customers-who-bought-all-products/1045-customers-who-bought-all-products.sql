# Write your MySQL query statement below
select customer_id from(
select customer_id,count(*) as cnt
from customer cust
inner join product prd
on cust.product_key=prd.product_key and cust.product_key is not null
group by customer_id
)cust_bought_all_prd
where cnt=(select count(distinct product_key) from product)
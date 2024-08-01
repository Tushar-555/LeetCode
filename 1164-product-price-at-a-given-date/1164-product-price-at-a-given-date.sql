# Write your MySQL query statement below
# First part of union is to select product and their prices before given date
select product_id,new_price as price from(
select product_id,new_price,
row_number() over(partition by product_id order by change_date desc) as rn
from products
where change_date<'2019-08-17'
)price_of_all1
where rn=1
union all
# This part of union is to select product and their prices after given date
select distinct product_id, 10 as price
from products
where change_date>'2019-08-16' and product_id not in (
    select distinct product_id from products where change_date<'2019-08-17'
)
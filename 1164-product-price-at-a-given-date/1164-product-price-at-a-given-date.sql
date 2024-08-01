# Write your MySQL query statement below
#select product_id,
#case when min(change_date)>2019-08-16 then 10 end as price
#from products;
select product_id,new_price as price from(
select product_id,new_price,
row_number() over(partition by product_id order by change_date desc) as rn
from products
where change_date<'2019-08-17'
)price_of_all1
where rn=1
union all
select distinct product_id, 10 as price
from products
where change_date>'2019-08-16' and product_id not in (
    select distinct product_id from products where change_date<'2019-08-17'
)
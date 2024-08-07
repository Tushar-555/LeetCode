# Write your MySQL query statement below
select product_id,year as first_year,quantity,price
from(
# Can be solved using only sales table without using product table
# First partition sales data based on product_id and then order it by their sold year asc
select sal.product_id,year,quantity,price,
dense_rank() over(partition by product_id order by year) rn
from sales sal
#inner join product prd
#on sal.product_id=prd.product_id
)product_first_sold_year
where rn=1
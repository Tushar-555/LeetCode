# Write your MySQL query statement below
SELECT 
prc.product_id,
round(coalesce(sum(unt.units * prc.price)/sum(unt.units),0),2) as average_price
FROM prices prc
LEFT JOIN unitssold unt
ON prc.product_id = unt.product_id and
unt.purchase_date >= prc.start_date and unt.purchase_date <=prc.end_date
GROUP BY prc.product_id
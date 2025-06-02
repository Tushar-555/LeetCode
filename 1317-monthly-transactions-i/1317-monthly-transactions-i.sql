# Write your MySQL query statement below
-- select date_format(trans_date,'%Y-%m') as month,
-- country,count(id) trans_count,
-- sum(case when state='approved' then 1 else 0 end) as approved_count,
-- sum(amount) as trans_total_amount,
-- sum(case when state='approved' then amount else 0 end) as approved_total_amount 
-- from transactions
-- group by date_format(trans_date,'%Y-%m'),country

SELECT 
date_format(trans_date, '%Y-%m') as month,
country,count(state) as trans_count,
sum(case when state = 'approved' then 1 else 0 end) as approved_count,
sum(amount) as trans_total_amount,
sum(case when state = 'approved' then amount else 0 end) as approved_total_amount 
FROM transactions
GROUP BY month, country
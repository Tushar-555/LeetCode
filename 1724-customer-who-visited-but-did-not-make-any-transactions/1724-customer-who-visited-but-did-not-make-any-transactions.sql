# Write your MySQL query statement below
# Selecting customer id not having transaction id for particular visit id and count for it
/*
select customer_id,count_no_trans from(
select vs.customer_id, ts.transaction_id,count(*) as count_no_trans
from visits vs
left join transactions ts
on vs.visit_id=ts.visit_id
group by vs.customer_id, ts.transaction_id) non_vs
where transaction_id is null
*/

SELECT v.customer_id, count(v.visit_id) as count_no_trans
FROM visits v
LEFT JOIN transactions t
ON v.visit_id=t.visit_id
WHERE t.transaction_id is NULL
GROUP BY v.customer_id
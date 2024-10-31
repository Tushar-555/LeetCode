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

select vs.customer_id, count(vs.visit_id) as count_no_trans 
from visits vs
left join transactions trs
on vs.visit_id=trs.visit_id
where trs.transaction_id is null
group by vs.customer_id
order by count(visit_id)
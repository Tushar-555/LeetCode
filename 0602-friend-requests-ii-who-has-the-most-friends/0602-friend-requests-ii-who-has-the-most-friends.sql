# Write your MySQL query statement below
with req as(
    select  requester_id,count(requester_id) r_cnt
    from RequestAccepted
    group by requester_id
),
acc as (
    select accepter_id,count(accepter_id) a_cnt
    from RequestAccepted
    group by accepter_id
),

u_id as(
    select accepter_id  as id from RequestAccepted
    union
    select requester_id as id from RequestAccepted

)
select id,num from(
select id,(coalesce(r_cnt,0)+coalesce(a_cnt)) as num
from u_id as uid
left join req r
on r.requester_id=uid.id
left join acc a
on a.accepter_id=uid.id
)most_frnd
order by num desc
limit 1

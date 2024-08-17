# Write your MySQL query statement below
select Day,round(cancelled_req/req,2) as "Cancellation Rate" from(
select request_at as Day,
sum(case when status like "%cancelled%" then 1 else 0 end) cancelled_req,
sum(case when status is not NULL then 1 else 0 end) as req
from trips tr
inner join (select users_id from users where banned<>'Yes' and role='client') as us1
on tr.client_id=us1.users_id
inner join (select users_id from users where banned<>'Yes' and role='driver') as us2
on tr.driver_id=us2.users_id
where request_at between '2013-10-01' and '2013-10-03'
group by request_at 
)trip
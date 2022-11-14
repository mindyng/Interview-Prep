Finding User Purchases


Interview Question Date: December 2020

Amazon
Medium

Write a query that'll identify returning active users. 
A returning active user is a user that has made a second purchase within 7 days of any other of their purchases. 
Output a list of user_ids of these returning active users.

Table: amazon_transactions
_________________________________________________________________________________________________________________

select distinct user_id
from (select *
, lead(created_at) over (partition by user_id order by created_at) as next_purchase

from amazon_transactions) as sub
where datediff(next_purchase, created_at) <= 7

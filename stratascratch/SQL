Revenue Over Time


Interview Question Date: December 2020

Amazon
Hard


Find the 3-month rolling average of total revenue from purchases given a table with users, their purchase amount, and date purchased. 
Do not include returns which are represented by negative purchase values. Output the year-month (YYYY-MM) and 3-month rolling average of revenue, 
sorted from earliest month to latest month.


A 3-month rolling average is defined by calculating the average total revenue from all user purchases for the current month and previous two months. 
The first two months will not be a true 3-month rolling average since we are not given data from last year. Assume each month has at least one purchase.

------------------------------------------------------------------------------
select *
, (total_rev + last_purchase_amt + last2_purchase_amt)/3 as avg_rolling3_day
from (select *
, lag(total_rev, 1) over () as last_purchase_amt
, lag(total_rev, 2) over () as last2_purchase_amt

from (select 
date_format(created_at, '%Y-%m') as created_at
, sum(purchase_amt) total_rev

from amazon_purchases
where purchase_amt>0
group by 1
order by 1) sub) sub2

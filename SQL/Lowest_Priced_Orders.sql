Lowest Priced Orders


Interview Question Date: May 2019

Amazon
Medium
Interview Questions
ID 9912
17

Find the lowest order cost of each customer.
Output the customer id along with the first name and the lowest order price.

Tables: customers, orders
____________________________________________________________________________
select customer_id
, first_name
, total_order_cost as lowest_order_price
from
(select c.id as customer_id
, first_name
, total_order_cost
, row_number() over (partition by c.id order by total_order_cost) as cust_order_cost_rank
from customers c
join orders o
on c.id = o.cust_id) sub
where cust_order_cost_rank = 1

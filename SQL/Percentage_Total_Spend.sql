Percentage Of Total Spend


Interview Question Date: April 2019

Amazon
Medium
Interview Questions
ID 9899
43

Calculate the percentage of the total spend a customer spent on each order. Output the customer’s first name, order details, and percentage of the order cost to their total spend across all orders.


Assume each customer has a unique first name (i.e., there is only 1 customer named Karen in the dataset) and that customers place at most only 1 order a day.


Percentages should be represented as decimals

Tables: orders, customers
_____________________________________________________________________________________________________________
select first_name
, order_details
, total_order_cost/cust_total_spend as perc_order_cost_to_total_spend
from (select first_name
,order_details
, total_order_cost
,sum(total_order_cost) over (partition by cust_id) as cust_total_spend
from customers c
join orders o
on c.id = o.cust_id) sub

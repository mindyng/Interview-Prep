Customer Orders and Details


Interview Question Date: May 2019

Amazon
Medium
Interview Questions
ID 9908
28

Find the number of orders, the number of customers, and the total cost of orders for each city. Only include cities that have made at least 5 orders and count all customers in each city even if they did not place an order.


Output each calculation along with the corresponding city name.

Tables: customers, orders
________________________________________________________________
select c.address
, count(distinct o.id) as total_orders
, count(distinct c.id) as total_customers
, sum(total_order_cost) as total_orders_cost
from customers c
join orders o
on c.id = o.cust_id 
group by 1
having sum(o.id) >= 5

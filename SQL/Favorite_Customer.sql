Favorite Customer


Interview Question Date: May 2019

Amazon
Medium
Interview Questions
ID 9910
19

Find "favorite" customers based on the order count and the total cost of orders.
A customer is considered as a favorite if he or she has placed more than 3 orders and with the total cost of orders more than $100.


Output the customer's first name, city, number of orders, and total cost of orders.

Tables: customers, orders
______________________________________________________________
select first_name
, city
, count(distinct o.id) as total_orders
, sum(total_order_cost) as total_cost_orders
from customers c
join orders o
on c.id = o.cust_id
group by 1,2
having sum(total_order_cost) >100

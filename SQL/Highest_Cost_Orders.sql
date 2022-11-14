Highest Cost Orders


Interview Question Date: May 2019

Amazon
Medium
Interview Questions
ID 9915
90

Find the customer with the highest daily total order cost between 2019-02-01 to 2019-05-01. If customer had more than one order on a certain day, sum the order costs on daily basis. Output customer's first name, total cost of their items, and the date.


For simplicity, you can assume that every first name in the dataset is unique.

Tables: customers, orders
__________________________________________________________________________________________

select first_name
, order_date
, sum(total_order_cost) as total_cost_per_day
from customers c
join orders o
on c.id = o.cust_id
where order_date between '2019-02-01' and '2019-05-01'
group by 1,2
order by 3 desc
limit 1

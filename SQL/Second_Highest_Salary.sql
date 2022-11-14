Second Highest Salary


Interview Question Date: April 2019

Amazon
Medium
Interview Questions
ID 9892
19

Find the second highest salary of employees.

Table: employee
________________________________________________

select id
, salary
from (select id
, salary
, row_number() over (order by salary) as salary_rank
from employee) sub
where salary_rank = 2
-- if q is asking 2nd highest salary per employee title
-- select employee_title
-- , salary
-- from (select employee_title
-- , salary
-- , row_number() over (partition by employee_title order by salary) as title_salary_rank
-- from employee) sub
-- where title_salary_rank = 2

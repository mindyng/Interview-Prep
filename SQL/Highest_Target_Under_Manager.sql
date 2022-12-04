#Highest Target Under Manager


#Salesforce


#Find the highest target achieved by the employee or employees who works under the manager id 13. Output the first name of the employee and target achieved. The solution should show the highest target achieved under manager_id=13 and which employee(s) achieved it.

with cte as (select *
, rank() over (order by target desc) as highest_target_rank
from salesforce_employees
where manager_id = 13)

select first_name, target
from cte
where highest_target_rank = 1

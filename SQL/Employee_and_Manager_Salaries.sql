#Employee and Manager Salaries


#Interview Question Date: April 2019

#Dropbox
#Medium


#Find employees who are earning more than their managers. Output the employee's first name along with the corresponding salary.

select a.first_name, a.salary
from employee a
join employee b
on a.manager_id = b.id
where a.salary > b.salary

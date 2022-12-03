#DoorDash


#Find the titles of workers that earn the highest salary. Output the highest-paid title or multiple titles that share the highest salary.
_______________________________________________________________
with cte as (select * 
, dense_rank() over (order by salary desc) highest_salary_rank
from worker
join title
on worker.worker_id = title.worker_ref_id)

select worker_title as best_paid_title
from cte
where highest_salary_rank = 1

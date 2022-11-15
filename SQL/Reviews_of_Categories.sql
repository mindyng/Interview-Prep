-- select substring_index(categories,';',-1) as category
-- , sum(review_count) as review_cnt
-- from yelp_business
-- group by 1
-- order by 2 desc

with recursive num (n) as (
-- create list 1 - 15
    select 1
    union all
    select n+1 from num where n<12
)
select 
    substring_index(substring_index(categories,';',n),';',-1) as category,
    sum(review_count) as review_cnt
from 
    yelp_business
    inner join 
    num
on 
    n <= char_length(categories) - char_length(replace(categories,';','')) + 1
group by
    category

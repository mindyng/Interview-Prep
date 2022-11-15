Top 5 States With 5 Star Businesses


Interview Question Date: March 2020

Yelp
Hard
Interview Questions
ID 10046
44

Find the top 5 states with the most 5 star businesses. Output the state name along with the number of 5-star businesses and order records by the number of 5-star businesses in descending order. In case there are ties in the number of businesses, return all the unique states. If two states have the same result, sort them in alphabetical order.

Table: yelp_business
____________________________________________________________________________________
select state
, n_businesses
from (select *
, rank() over (order by n_businesses desc) as five_rank
from (select state
, count(*) as n_businesses
from yelp_business
where stars = 5
group by 1) sub
)sub2
where five_rank  <=5

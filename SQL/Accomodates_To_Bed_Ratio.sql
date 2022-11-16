Accommodates-To-Bed Ratio


Interview Question Date: January 2018

Airbnb
Medium
Interview Questions
ID 9624
9

Find the average accommodates-to-beds ratio for shared rooms in each city. Sort your results by listing cities with the highest ratios first.
_________________________________________________________________________
select city
, avg(accommodates/beds) as avg_accommodates_to_beds
from airbnb_search_details
where lower(room_type) like '%shared%'
group by 1
order by 2 desc

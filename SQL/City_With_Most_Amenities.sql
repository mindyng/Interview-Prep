City With Most Amenities


Interview Question Date: February 2018

Airbnb
Hard
Interview Questions
ID 9633
3

You're given a dataset of searches for properties on Airbnb. For simplicity, let's say that each search result (i.e., each row) represents a unique host. Find the city with the most amenities across all their host's properties. Output the name of the city.
Table: airbnb_search_details
_____________________________________________________________
select city
from (select * 
, LENGTH(amenities) - LENGTH(REPLACE(amenities, ',', '')) + 1 as num_amenities
from airbnb_search_details) sub
having max(num_amenities)
Footer
© 2022 GitHub, Inc.
Footer navigation
Terms

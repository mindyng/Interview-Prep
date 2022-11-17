Ranking Hosts By Beds


Interview Question Date: July 2020

Airbnb
Medium
Interview Questions
ID 10161
17

Rank each host based on the number of beds they have listed. The host with the most beds should be ranked 1 and the host with the least number of beds should be ranked last. Hosts that have the same number of beds should have the same rank but there should be no gaps between ranking values. A host can also own multiple properties.
Output the host ID, number of beds, and rank from highest rank to lowest.
______________________________________________________
select *,
dense_rank() over (order by total_beds desc) as host_rank
from (select host_id
, sum(n_beds) as total_beds
from airbnb_apartments
group by 1) sub
order by 2 desc

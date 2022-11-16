Growth of Airbnb


Interview Question Date: February 2018

Airbnb
Hard
Interview Questions
ID 9637
15

Estimate the growth of Airbnb each year using the number of hosts registered as the growth metric. The rate of growth is calculated by taking ((number of hosts registered in the current year - number of hosts registered in the previous year) / the number of hosts registered in the previous year) * 100.
Output the year, number of hosts in the current year, number of hosts in the previous year, and the rate of growth. Round the rate of growth to the nearest percent and order the result in the ascending order based on the year.
Assume that the dataset consists only of unique hosts, meaning there are no duplicate hosts listed.

Table: airbnb_search_details
______________________________
-- get years and aggregate count of hosts
-- do lag fxn to get previous year
-- calculate growth rate

select *
, lag(num_hosts_current_year) over () as num_hosts_previous_year
, round((((num_hosts_current_year - lag(num_hosts_current_year) over ())/lag(num_hosts_current_year) over ())*100)) as growth_rate
from (select extract(year from host_since) as year
, count(host_since) as num_hosts_current_year
from airbnb_search_details
group by 1
order by 1
) sub

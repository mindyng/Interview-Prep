Host Popularity Rental Prices


Interview Question Date: February 2018

Airbnb
Hard
Interview Questions
ID 9632
52

You’re given a table of rental property searches by users. The table consists of search results and outputs host information for searchers. Find the minimum, average, maximum rental prices for each host’s popularity rating. The host’s popularity rating is defined as below:
0 reviews: New
1 to 5 reviews: Rising
6 to 15 reviews: Trending Up
16 to 40 reviews: Popular
more than 40 reviews: Hot


Tip: The id column in the table refers to the search ID. You'll need to create your own host_id by concating price, room_type, host_since, zipcode, and number_of_reviews.


Output host popularity rating and their minimum, average and maximum rental prices.

Table: airbnb_host_searches
______________________________________________________
-- get host popularity rating
-- get stats on rental prices for each rating
select host_pop_rating
, min(price) as min_price
, avg(price) as avg_price
, max(price) as max_price
from (select concat(price, room_type, host_since, zipcode, number_of_reviews) as host_id
, price
, case when sum(number_of_reviews) = 0 then "New"
    when sum(number_of_reviews) between 1 and  5 then "Rising"
    when sum(number_of_reviews) between 6 and  15 then "Trending Up"
    when sum(number_of_reviews) between 16 and  40 then "Popular"
    else 'Hot'
end as host_pop_rating
from airbnb_host_searches
group by 1,2) sub
group by 1

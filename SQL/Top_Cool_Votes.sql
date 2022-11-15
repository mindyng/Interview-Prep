Top Cool Votes


Interview Question Date: March 2020

Yelp
Medium
Interview Questions
ID 10060
44

Find the review_text that received the highest number of  'cool' votes.
Output the business name along with the review text with the highest numbef of 'cool' votes.

Table: yelp_reviews
_________________________________________________
select business_name
, review_text
from (select *
, dense_rank() over (order by num_cool_votes desc) cool_votes_rank
from (select business_name
, review_text
, sum(cool) as num_cool_votes
from yelp_reviews
group by 1,2
order by 3 desc) sub
) sub2
where cool_votes_rank = 1

Favorite Host Nationality


Interview Question Date: April 2020

Airbnb
Medium
Interview Questions
ID 10073
26

For each guest reviewer, find the nationality of the reviewer’s favorite host based on the guest’s highest review score given to a host. Output the user ID of the guest along with their favorite host’s nationality. In case there is more than one favorite host from the same country, list that country only once (remove duplicates).


Both the from_user and to_user columns are user IDs.

Tables: airbnb_reviews, airbnb_hosts
____________________________________
-- join airbnb_reviews to airbnb_hosts
-- get reviewer's highest review scores
-- filter on highest review score
-- output highest'score's host's nationality
-- distinct from_user to get unique host countries per user
select distinct from_user, nationality
from(select from_user
, review_score
,max(review_score) over (partition by from_user) as review_score_max
, h.nationality
from airbnb_reviews r
join airbnb_hosts h
on r.to_user = h.host_id
) sub
where review_score = review_score_max


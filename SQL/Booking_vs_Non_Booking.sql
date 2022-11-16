Bookings vs Non-Bookings


Interview Question Date: May 2020

Airbnb
Medium
Interview Questions
ID 10124
13

Display the average number of times a user performed a search which led to a successful booking and the average number of times a user performed a search but did not lead to a booking. The output should have a column named action with values 'does not book' and 'books' as well as a 2nd column named average_searches with the average number of searches per action. Consider that the booking did not happen if the booking date is null. Be aware that search is connected to the booking only if their check-in dates match.

Tables: airbnb_contacts, airbnb_searches
____________________________________________
-- searches are at booking level and not search level, which is odd to have pre-search events (filters) modeled along with post-search events (total number of searches)


-- join airbnb_searches to airbnb_contacts
-- successful search booking
-- non-successful/converted search booking

select action
, avg(n_searches) as average_searches
from (select case when ts_booking_at IS NOT NULL then 'books'
else 'does not book'
end as action
, n_searches
from airbnb_searches s
left join airbnb_contacts c
on s.ds_checkin = c.ds_checkin) sub
group by 1

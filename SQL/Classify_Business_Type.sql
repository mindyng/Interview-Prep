#Classify Business Type


#Interview Question Date: May 2018

#City of San Francisco

#Classify each business as either a restaurant, cafe, school, or other. A restaurant should have the word 'restaurant' in the business name. For cafes, either 'cafe', 'café', or 'coffee' can be in the business name. 'School' should be in the business name for schools. All other businesses should be classified as 'other'. Output the business name and the calculated classification.
_____________________________________________________________________________________________

select business_name, case when lower(business_name) like "%restaurant%" then 'restaurant'
when lower(business_name) like "%cafe%"  then 'cafe'
when lower(business_name) like "%café%"  then 'cafe'
when lower(business_name) like "%coffee%"  then 'cafe'
when lower(business_name) like "%school%" then 'school'
else 'other'
end as business_type
from sf_restaurant_health_violations

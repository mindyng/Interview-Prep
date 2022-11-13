Best Selling Item


Interview Question Date: July 2020

Amazon
Hard

Find the best selling item for each month (no need to separate months by year) where the biggest total invoice was paid. 
The best selling item is calculated using the formula (unitprice * quantity). Output the description of the item along with the amount paid.
_________________________________________________________________________________'

select inv_month
, description
, gmv
from (select *
, dense_rank() over (partition by inv_month order by gmv desc) as best_selling_per_month
from (select *
, extract(month from invoicedate) as inv_month
, unitprice * quantity as gmv

from online_retail) sub
)sub2

select
	date_trunc('month', sale_date)												as "month"
	,round(count(case when discount = true then 1 end)*1.0/count(discount), 3)	as prc_of_discount_transaction
from sales_date
group by 1


select
	extract(year from sale_date)		as "year"
	,extract(month from sale_date)		as "month"
	,sum(quantity_sold)					as total_quantity_returned
	,sum(unit_selling_price)			as total_value_returned
from sales_date sd
join category_lookup cl on sd.item_code = cl.item_code
where sd.sale_or_return = 'return'
group by 1,2
order by 1,2
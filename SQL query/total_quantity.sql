select
	extract(year from sale_date) 	as "year"
	,cl.category_name				as category_name
	,sum(quantity_sold)				as total_quantity_sold
from sales_date sd
join category_lookup cl on sd.item_code = cl.item_code
where sd.sale_or_return = 'sale'
group by 1,2
order by 1,3 desc

select
	extract(year from sale_date)
	,cl.category_name
	,(sum(sd.quantity_sold * sd.unit_selling_price) - sum(sd.quantity_sold * wl.wholesale_price)) as profit_value
from sales_date sd
join category_lookup cl on sd.item_code = cl.item_code
join wholesale_lookup wl on sd.item_code = wl.item_code
where sd.sale_or_return = 'sale'
group by grouping sets (1,2), (1)
order by 1,2 

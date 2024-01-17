/*
Item Code,Item Name,Category Code,Category Name
102900005115168,Niushou Shengcai,1011010101,Flower/Leaf Vegetables
*/

create table category_lookup (
	item_code bigint
	,item_name text
	,category_code bigint
	,category_name text
)

/*
Item Code,Item Name,Loss Rate (%)
102900005115168,Niushou Shengcai,4.39 
*/

create table loss_rate_lookup (
	item_code bigint
	,item_name text
	,loss_rate decimal
)

/*
Date,Time,Item Code,Quantity Sold (kilo),Unit Selling Price (RMB/kg),Sale or Return,Discount (Yes/No)
2020-07-01,09:15:07.924,102900005117056,0.396,7.6,sale,No
*/

create table sales_date (
	sale_date date
	,sale_time time
	,itme_code bigint
	,quantity_sold decimal
	,unit_selling_price decimal
	,sale_or_return text
	,discount bool
)

/*
Date,Item Code,Wholesale Price (RMB/kg)
2020-07-01,102900005115762,3.88
*/

create table wholesale_lookup (
	wholesale_date date
	,item_code bigint
	,wholesale_price decimal
)
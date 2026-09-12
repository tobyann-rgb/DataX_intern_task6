use ecommerce_sql_database;
Select
	Year(o.order_date) as sales_year,
    month(o.order_date) as sales_month,
    count(distinct o.order_id) as order_volume,
    round(sum(o.quantity * p.unit_price), 2) as total_revenue
from orders o 
join products p 
	on o.product_id = p.product_id
group by sales_year, sales_month
order by sales_year desc, sales_month desc
limit 12;

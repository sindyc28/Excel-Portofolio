SELECT
	order_id,
	order_date,
	ship_date,
	ship_mode,
	a.customer_id,
	customer_name,
	segment,
	country ,
	city ,
	state ,
	postal_code ,
	region ,
	a.product_id,
	category,
	sub_category,
	product_name,
	sales,
	quantity,
	discount,
	profit
FROM
	fast_track_batch_1.project_orders AS a
INNER JOIN fast_track_batch_1.project_customers AS b
		ON
	a.customer_id = b.customer_id
INNER JOIN fast_track_batch_1.project_products AS c
		ON
	a.product_id = c.product_id
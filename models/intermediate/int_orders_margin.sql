SELECT 
orders_id,
date_date,
ROUND(SUM(revenue), 2) AS revenue,
ROUND(SUM(quantity), 2) AS quantity, 
ROUND(SUM(purchase_price*quantity), 2) AS purchase_cost,
ROUND(SUM(revenue - ROUND(purchase_price*quantity, 2)), 2) AS margin

FROM 
{{ref("stg_gz_raw_data__raw_gz_product")}}
JOIN
{{ref("stg_gz_raw_data__raw_gz_sales")}}
USING (products_id)
GROUP BY orders_id, date_date
ORDER BY orders_id DESC




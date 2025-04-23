select 
products_id,
date_date,
orders_id,
revenue,
quantity,
ROUND(purchase_price*quantity, 2) AS purchase_cost,
ROUND((revenue - ROUND(purchase_price*quantity, 2)), 2) AS margin

FROM 
{{ref("stg_gz_raw_data__raw_gz_product")}}
JOIN
{{ref("stg_gz_raw_data__raw_gz_sales")}}
USING (products_id)
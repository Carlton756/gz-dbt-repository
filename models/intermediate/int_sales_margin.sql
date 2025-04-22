select 
purchase_price*quantity AS purchase_cost,
revenue - purchase_cost AS margin

FROM 
{{ref("stg_gz_raw_data__raw_gz_product")}}
JOIN
{{ref("stg_gz_raw_data__raw_gz_sales")}}
USING (products_id)
SELECT  
 orders_id,
 date_date,
        shipping_fee,
        logcost,
        ship_cost,
        revenue,
        quantity,
        margin,
        ROUND((margin + shipping_fee - (logcost + ship_cost)), 2) AS operational_margin
FROM 
{{ref("stg_gz_raw_data__raw_gz_ship")}}
 JOIN
{{ref("int_orders_margin")}}
USING (orders_id)
ORDER BY orders_id DESC

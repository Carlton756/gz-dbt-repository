select
    date_date,
    count(orders_id) as nd_transactions,
    round(sum(revenue), 2) as revenue,
    round(avg(revenue), 2) as average_basket,
    round(sum(margin), 2) as margin,
    round(sum(operational_margin), 2) as operational_margin,
    round(sum(purchase_cost), 2) as purchase_cost,
    round(sum(shipping_fee), 2) as shiping_fee,
    round(sum(logcost), 2) as logcost,
    round(sum(quantity), 2) as quantity,
    round(sum(ship_cost), 2) as ship_cost
from {{ ref("int_orders_operational") }}

group by date_date
order by date_date desc

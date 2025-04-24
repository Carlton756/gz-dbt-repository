SELECT
  date_date,
  ROUND(operational_margin - ads_cost, 2) AS ads_margin,
  average_basket,
  operational_margin,
  ads_cost,
  ads_impression,
  ads_clicks,
  quantity,
  revenue,
  purchase_cost,
  margin,
  shiping_fee,
  logcost,
  ship_cost
FROM
  {{ref("int_campaigns_day")}}
JOIN
  {{ref("finance_days")}}
USING
  (date_date)
ORDER BY
  date_date DESC
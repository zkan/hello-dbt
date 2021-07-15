SELECT
  brand,
  COUNT(brand) AS count
FROM {{ ref("stg_avg_car_price_by_brand") }}
GROUP BY brand
HAVING brand = "Ferrari" AND count < 1

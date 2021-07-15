WITH avg_car_price AS (
  SELECT * FROM {{ ref("stg_avg_car_price_by_brand") }}
)

SELECT * FROM avg_car_price ORDER BY avg_price DESC LIMIT 5

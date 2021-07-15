WITH avg_car_price AS (
    SELECT
      brand AS brand,
      AVG(price) AS avg_price
    FROM
      vehicle.car_info
    GROUP BY
      brand
)

SELECT * FROM avg_car_price

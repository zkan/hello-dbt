SELECT
  CAST(id AS INT64) AS user_id,
  CONCAT(first_name, ' ', last_name) AS name
FROM
  {{ source('jaffle_shop', 'jaffle_shop_customer') }}

SELECT
  id AS user_id,
  first_name,
  last_name
FROM
  {{ source('jaffle_shop', 'jaffle_shop_customer') }}

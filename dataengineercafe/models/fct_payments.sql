SELECT
  sp.int AS payment_id,
  sp.orderid AS order_id,
  jso.user_id AS user_id,
  sp.paymentmethod AS payment_method,
  sp.status AS payment_status,
  sp.amount
FROM
  {{ source('jaffle_shop', 'stripe_payment') }} sp
JOIN
  {{ source('jaffle_shop', 'jaffle_shop_order') }} jso
ON
  sp.orderid = jso.id

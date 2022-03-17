SELECT
  *
FROM
  {{ ref('fct_payments') }}
WHERE
  amount < 0
select
  total / 100 as percent

from {{ ref('my_sum') }}

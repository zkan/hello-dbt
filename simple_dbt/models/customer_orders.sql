-- models/customer_orders.sql

select
    dbt_tutorial.raw_customers.id as customer_id,
    dbt_tutorial.raw_customers.first_name,
    dbt_tutorial.raw_customers.last_name,
    dbt_tutorial.raw_orders.id as order_id,
    dbt_tutorial.raw_orders.order_date,
    dbt_tutorial.raw_orders.status

from dbt_tutorial.raw_customers
left join dbt_tutorial.raw_orders
    on dbt_tutorial.raw_customers.id = dbt_tutorial.raw_orders.user_id

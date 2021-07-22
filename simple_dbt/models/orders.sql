-- models/orders.sql

with orders as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from dbt_tutorial.raw_orders

)

select * from orders

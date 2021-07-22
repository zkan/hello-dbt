-- models/another_customer_orders.sql

with customers as (

    select
        id as customer_id,
        first_name,
        last_name

    from dbt_tutorial.raw_customers

),

orders as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from dbt_tutorial.raw_orders

),

final as (

    select
        customers.customer_id,
        customers.first_name,
        customers.last_name,
        orders.order_id,
        orders.order_date,
        orders.status

    from customers

    left join orders using (customer_id)

)

select * from final

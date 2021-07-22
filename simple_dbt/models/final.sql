-- models/final.sql

with customers as (

    select * from {{ ref("customers") }}

),

orders as (

    select * from {{ ref("orders") }}

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

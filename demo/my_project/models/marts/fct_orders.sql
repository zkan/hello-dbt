with

orders as (

    select * from {{ ref('stg__orders') }}

)

, customers as (

    select * from {{ ref('stg__customers') }}

)

, payments as (

    select * from {{ ref('stg__payments') }}
    
)

, joined as (

    select
        orders.id as order_id
        , order_date
        , status
        , user_id
        , first_name
        , last_name
        , payment_method
        , amount

    from orders
    join customers
        on orders.user_id = customers.id
    join payments
        on orders.id = payments.order_id

)

, final as (

    select
        order_id
        , order_date
        , status
        , user_id
        , first_name
        , last_name
        , payment_method
        , amount
    
    from joined

)

select * from final
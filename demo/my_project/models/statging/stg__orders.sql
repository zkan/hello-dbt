with

source as (

    select * from {{ source('demo', 'raw_orders') }}

)

select * from source
with

source as (

    select * from {{ source('demo', 'raw_customers') }}

)

select * from source
with

source as (

    select * from {{ source('demo', 'raw_payments') }}

)

select * from source
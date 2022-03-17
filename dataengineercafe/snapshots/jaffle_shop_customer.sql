{% snapshot jaffle_shop_customer_snapshot %}

{{
    config(
        target_schema='snapshots',
        unique_key='id',
        strategy='check',
        check_cols=['first_name', 'last_name'],
    )
}}

select * from {{ source('jaffle_shop', 'jaffle_shop_customer') }}

{% endsnapshot %}
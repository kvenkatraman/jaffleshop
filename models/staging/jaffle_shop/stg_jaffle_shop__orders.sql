with source as (

    select * from {{ source('public', 'raw_orders') }}

),

renamed as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status,
        'test' as test

    from source

)

select * from renamed

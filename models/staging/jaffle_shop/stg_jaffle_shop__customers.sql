with source as (

    select * from {{ source('public', 'raw_customers') }}
        where true

),

renamed as (

    select
        id as customer_id,
        first_name,
        last_name,
        email

    from source

)

select * from renamed

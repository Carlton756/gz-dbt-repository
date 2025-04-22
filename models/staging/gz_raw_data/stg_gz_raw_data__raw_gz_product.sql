with 

source as (

    select * from {{ source('gz_raw_data', 'raw_gz_product') }}

),

renamed as (

    select
        products_id,
        CAST(purchse_price AS purchase_price AS FLOAT64)

    from source

)

select * from renamed

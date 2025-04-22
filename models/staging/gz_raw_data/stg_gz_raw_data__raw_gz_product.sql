with

    source as (select * from {{ source("gz_raw_data", "raw_gz_product") }}),

    renamed as (

        select
            products_id, cast(purchse_price as float64), purchse_price as purchase_price

        from source

    )

select * from renamed

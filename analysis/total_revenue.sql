with payments as (

    select * from {{ ref('stg_payments') }}

),

final as (

    select
        sum(amount) as successful_amount
    from payments
    where status = 'success'

)

select * from final
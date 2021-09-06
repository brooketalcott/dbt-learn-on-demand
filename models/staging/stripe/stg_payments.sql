with payments as (
    select
        id as payment_id,
        orderid as order_id,
        paymentmethod as payment_method,
        status,
        {{pennies_to_dollars('amount')}} as amount,
        created as created_dt
    from {{ source('stripe','payment') }}
)

select * from payments
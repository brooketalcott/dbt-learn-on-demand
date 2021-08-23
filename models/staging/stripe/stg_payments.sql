with payments as (
    select
        id as payment_id,
        orderid as order_id,
        paymentmethod as payment_method,
        status,
        amount / 100 as amount, --tutorial says this is in cents
        created as created_dt
    from dbt-tutorial.stripe.payment
)

select * from payments
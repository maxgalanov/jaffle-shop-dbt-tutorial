 select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    -- converting from cents to dollars
    amount / 100 as amount,
    created as created_at

from {{ source('stripe', 'payment') }}
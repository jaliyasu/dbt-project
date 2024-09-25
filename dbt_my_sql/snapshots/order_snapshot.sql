{% snapshot orders_snapshot %}

    {{
        config(
            unique_key='order_id',
            target_schema='mytest',
            strategy='timestamp',
            updated_at='updated_at',
        )
    }}

select * from {{ source('all_orders', 'orders') }}

{% endsnapshot %}
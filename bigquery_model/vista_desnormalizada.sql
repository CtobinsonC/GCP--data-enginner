CREATE OR REPLACE VIEW ecommerce_dataset.vista_desnormalizada AS
SELECT
    o.user_id,
    o.order_id,
    o.product_id,
    o.price,
    u.name
    u.email
FROM ecommerce_dataset.orders o
JOIN ecommerce_dataset.users u
ON o.user_id = u.user_id;

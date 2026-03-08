SELECT name, COUNT(order_id) AS total_pedidos, SUM(price) AS total_gasto
FROM ecommerce_dataset.vista_desnormalizada
GOUP BY name
ORDER BY total_gasto DESC;
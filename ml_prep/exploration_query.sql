SELECT 
    product,
    COUNT(*) AS total_orders,
    AVG(price) AS average_price,
    SUM(high_value_order) AS high_value_orders
FROM
    ecommerce_analysis.orders_features
GROUP BY
    product
ORDER BY
    total_orders DESC
    
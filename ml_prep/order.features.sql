CREATE REPLACE TABLE ecommerce_analysis.orders_features AS
SELECT
    order_id,
    user_id,
    product,
    order_date,
    price
    EXTRACT(DAYOFWEEK FROM order_date) AS day_of_week,
    EXTRACT(HOUR FROM order_date) AS hour_of_day,
    CASE WHEN price > 500 THEN 1 ELSE 0 END AS high_value_order
FROM
    ecommerce_analysis.orders_features;
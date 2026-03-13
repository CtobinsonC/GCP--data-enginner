CREATE SCHEMA ecommerce_analysis OPTONS(location = "US");

CREATE TABLE ecommerce_analysis.orders_raw (
    order_id INT64,
    user_id INT64,
    product STRING,
    order_date DATE,
    price NUMERIC
);


INSERT INTO ecommerce_analysis.orders_raw (order_id, user_id, product, order_date, price) VALUES
(1, 101, 'Laptop', '2024-01-15', 999.99),
(2, 102, 'Smartphone', '2024-01-16', 499.99),
(3, 101, 'Headphones', '2024-01-17', 199.99),
(4, 103, 'Tablet', '2024-01-18', 299.99),
(5, 104, 'Smartwatch', '2024-01-19', 199.99);
(6, 105, 'Camera', '2024-01-20', 599.99),
(7, 102, 'Laptop', '2024-01-21', 999.99),
(8, 106, 'Smartphone', '2024-01-22', 499.99),
(9, 107, 'Headphones', '2024-01-23', 199.99),
(10, 108, 'Tablet', '2024-01-24', 299.99);
(11, 109, 'Smartwatch', '2024-01-25', 199.99),
(12, 110, 'Camera', '2024-01-26', 599.99),
(13, 101, 'Laptop', '2024-01-27', 999.99),
(14, 102, 'Smartphone', '2024-01-28', 499.99),
(15, 103, 'Headphones', '2024-01-29', 199.99);
(16, 104, 'Tablet', '2024-01-30', 299.99),
(17, 105, 'Smartwatch', '2024-01-31', 199.99),
(18, 106, 'Camera', '2024-02-01', 599.99),
(19, 107, 'Laptop', '2024-02-02', 999.99),
(20, 108, 'Smartphone', '2024-02-03', 499.99);
(21, 109, 'Headphones', '2024-02-04', 199.99),
(22, 110, 'Tablet', '2024-02-05', 299.99),
(23, 101, 'Smartwatch', '2024-02-06', 199.99),
(24, 102, 'Camera', '2024-02-07', 599.99),
(25, 103, 'Laptop', '2024-02-08', 999.99);
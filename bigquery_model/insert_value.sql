-- insertar datos en la abla users

INSERT INTO ecoommerce.datasets.users (user_id, name, email)
VALUES
    (1, 'John Doe', 'john.doe@example.com'),
    (2, 'Jane Smith', 'jane.smith@example.com'),
    (3, 'Alice Johnson', 'alice.johnson@example.com'),
    (4, 'Bob Brown', 'bob.brown@example.com');

-- insertar datos en tabla orders

INSERT INTO ecoommerce.datasets.orders (order_id, user_id, product, price)
VALUES
    (110, 1, 'Laptop', 999.99),
    (101, 1, 'Mouse', 49.99),
    (102, 2, 'Smartphone', 499.99),
    (103, 3, 'Headphones', 199.99),
    (104, 4, 'Monitor', 299.99);

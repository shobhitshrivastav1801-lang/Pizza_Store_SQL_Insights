-- ORDERS TABLE
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    order_time TIME,
    total_amount DECIMAL(10,2)
);

-- ORDER DETAILS TABLE
CREATE TABLE order_details (
    order_id INT,
    pizza_id VARCHAR(50),
    quantity INT
);

-- PIZZAS TABLE
CREATE TABLE pizzas (
    pizza_id VARCHAR(50) PRIMARY KEY,
    pizza_type VARCHAR(50),
    price DECIMAL(6,2)
);

-- 1. DAILY ORDER VOLUME ANALYSIS
-- Identifies order trends across days

SELECT 
    order_date,
    COUNT(order_id) AS total_orders,
    SUM(total_amount) AS daily_revenue
FROM orders
GROUP BY order_date
ORDER BY order_date;


-- 2. AVERAGE ORDER VALUE (AOV)
-- Measures customer spend behavior

SELECT 
    ROUND(AVG(total_amount), 2) AS average_order_value
FROM orders;


-- 3. PEAK HOUR BOTTLENECK IDENTIFICATION
-- Finds hours with maximum order load

WITH hourly_orders AS (
    SELECT 
        EXTRACT(HOUR FROM order_time) AS order_hour,
        COUNT(order_id) AS total_orders
    FROM orders
    GROUP BY EXTRACT(HOUR FROM order_time)
)
SELECT *
FROM hourly_orders
ORDER BY total_orders DESC;


-- 4. TOP PIZZAS BY REVENUE (Window Function)
-- Identifies high-impact menu items

WITH pizza_revenue AS (
    SELECT 
        p.pizza_type,
        SUM(od.quantity * p.price) AS revenue
    FROM order_details od
    JOIN pizzas p ON od.pizza_id = p.pizza_id
    GROUP BY p.pizza_type
)
SELECT 
    pizza_type,
    revenue,
    RANK() OVER (ORDER BY revenue DESC) AS revenue_rank
FROM pizza_revenue;


-- 5. HIGH-LOAD ORDERS CONTRIBUTION
-- Shows how peak orders impact operations

SELECT 
    COUNT(order_id) AS peak_hour_orders
FROM orders
WHERE EXTRACT(HOUR FROM order_time) BETWEEN 18 AND 21;

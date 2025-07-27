-- Views
-- A View is a virtual table based on the result of a `SELECT` query.

-- Customer order summary
-- with select query

-- Customer name
-- Total amount spent
-- Number of orders placed


SELECT 
    c.customer_id,
    c.customer_name,
    COUNT(o.order_id) AS total_orders,
    SUM(o.amount) AS total_spent
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name;
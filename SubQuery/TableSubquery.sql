-- Table Subquery – returns a complete result set (used in FROM)

-- Table Subquery

-- To Show total order amount for each customer (name + total_amount)

-- Step-by-step Approach:
-- `customer_name` from the `customers` table
-- `total_amount` from the `orders` table


SELECT c.customer_name, o.total_amount
FROM customers c
JOIN (
    SELECT customer_id, SUM(amount) AS total_amount
    FROM orders
    GROUP BY customer_id
) o ON c.customer_id = o.customer_id;


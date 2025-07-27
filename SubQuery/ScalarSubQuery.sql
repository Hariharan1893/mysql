-- Scalar Subquery
-- Scalar Subquery – returns a single value
-- Find the customer who placed the highest total order (just one name)

SELECT customer_name
FROM customers
WHERE customer_id = (
    SELECT customer_id
    FROM orders
    GROUP BY customer_id
    ORDER BY SUM(amount) DESC
    LIMIT 1
);
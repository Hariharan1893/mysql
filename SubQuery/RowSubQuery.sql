-- Row Subquery
-- Row Subquery – returns a single row (multiple columns)
-- Find the customer(s) who has order_id = 102

SELECT customer_name
FROM customers
WHERE (customer_id) = (
    SELECT customer_id
    FROM orders
    WHERE order_id = 102
);
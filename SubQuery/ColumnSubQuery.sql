-- Column Subquery
-- Column Subquery – returns a single column (multiple rows)
-- List customers who have placed any order

SELECT customer_name
FROM customers
WHERE customer_id IN (
    SELECT DISTINCT customer_id
    FROM orders
);

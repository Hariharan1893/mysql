-- Correlated Subquery
-- Correlated Subquery – uses data from the outer query
--  Find customers who have placed at least one order over ₹200

SELECT customer_name
FROM customers c
WHERE EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.customer_id = c.customer_id
    AND o.amount > 200
);

-- Note --
-- EXISTS only cares whether a row exists — it doesn’t matter what you SELECT.

-- You can write SELECT 1, SELECT *, or SELECT NULL — they all behave the same here.
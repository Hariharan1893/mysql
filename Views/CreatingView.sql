-- creating view for customer oreder

CREATE VIEW customer_order_summary AS
SELECT 
    c.customer_id,
    c.customer_name,
    COUNT(o.order_id) AS total_orders,
    SUM(o.amount) AS total_spent
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name;


-- using the view

SELECT * FROM customer_order_summary;


-- updatable view

CREATE VIEW simple_customer_view AS
SELECT customer_id, customer_name
FROM customers;

-- modifying operations

-- Insert through view
INSERT INTO simple_customer_view VALUES (5, 'Emma');

-- Update through view
UPDATE simple_customer_view
SET customer_name = 'Alice Cooper'
WHERE customer_id = 1;

-- Delete through view
DELETE FROM simple_customer_view
WHERE customer_id = 4;

-- Droping view

DROP VIEW IF EXISTS simple_customer_view;

-- Create an audit table:
CREATE TABLE orders_audit (
    audit_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    action_time DATETIME
);

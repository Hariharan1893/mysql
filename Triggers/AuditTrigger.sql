-- creating trigger

DELIMITER //

CREATE TRIGGER log_order_insert
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    INSERT INTO orders_audit(order_id, action_time)
    VALUES (NEW.order_id, NOW());
END;
//

DELIMITER ;

SELECT * FROM orders_audit;

-- delete a trigger
DROP TRIGGER trigger_name;
DROP TRIGGER IF EXISTS log_order_insert;

-- view all triggers
SHOW TRIGGERS;

select * from orders;

insert into orders(order_id, customer_id, amount) values(105, 3, 50.00);
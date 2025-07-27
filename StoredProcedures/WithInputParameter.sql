DELIMITER //

CREATE PROCEDURE GetOrdersByCustomer(IN cust_id INT)
BEGIN
    SELECT * FROM orders WHERE customer_id = cust_id;
END //

DELIMITER ;

-- calling with input parameter

CALL GetOrdersByCustomer(2);
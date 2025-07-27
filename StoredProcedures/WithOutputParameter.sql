DELIMITER //

CREATE PROCEDURE GetOrderCountByCustomer(
    IN cust_id INT,
    OUT total_orders INT
)
BEGIN
    SELECT COUNT(*) INTO total_orders
    FROM orders
    WHERE customer_id = cust_id;
END //

DELIMITER ;

-- calling the with output parameter
CALL GetOrderCountByCustomer(1, @total);
SELECT @total;
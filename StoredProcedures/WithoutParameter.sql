-- Procedure to get all cutomers

DELIMITER //

CREATE PROCEDURE GetAllCustomers()
BEGIN
    SELECT * FROM customers;
END //

DELIMITER ;

-- Calling procedure
CALL GetAllCustomers();
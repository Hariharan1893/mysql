CREATE TABLE customers (
    customer_id INT,
    customer_name VARCHAR(50)
);

INSERT INTO customers VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie'),
(4, 'David');

select * from customers;

CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    amount DECIMAL(10, 2)
);

INSERT INTO orders VALUES
(101, 1, 250.00),
(102, 1, 150.00),
(103, 2, 300.00),
(104, 3, 100.00);

select * from orders;

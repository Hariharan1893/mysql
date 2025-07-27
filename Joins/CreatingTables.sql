-- creating departments table
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO departments (department_id, department_name) VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Marketing');

-- creating employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department_id INT,
    manager_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO employees (emp_id, name, department_id, manager_id, salary) VALUES
(101, 'Alice', 1, NULL, 60000),
(102, 'Bob', 1, 101, 55000),
(103, 'Charlie', 2, 101, 50000),
(104, 'David', NULL, NULL, 45000),
(105, 'Eva', 3, 102, 70000);

-- Query to view tables
SELECT * FROM Departments;

SELECT * FROM Employees;
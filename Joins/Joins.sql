-- Inner join
-- Returns only rows where there is a match in both tables.
SELECT e.name AS employee, d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;

-- Left join
-- Returns all employees, even if they have no department.
SELECT e.name AS employee, d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id;

-- Left Outer join
-- Show employees with no department
SELECT e.name AS employee, d.department_name
FROM employees e
LEFT JOIN departments d ON e.department_id = d.department_id
WHERE d.department_id IS NULL;


-- Right join
-- Returns all departments, even those with no employees.
SELECT e.name AS employee, d.department_name
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id;

-- Right Outer join
-- Show departments with no employees
SELECT e.name AS employee, d.department_name
FROM employees e
RIGHT JOIN departments d ON e.department_id = d.department_id
WHERE e.emp_id IS NULL;


-- Full Outer join using Unions
-- MySQL does not support FULL OUTER JOIN directly. Use UNION of LEFT JOIN and RIGHT JOIN

SELECT e.name AS employee, d.department_name
FROM employees e
LEFT JOIN departments d ON e.department_id = d.department_id

UNION

SELECT e.name AS employee, d.department_name
FROM employees e
RIGHT JOIN departments d ON e.department_id = d.department_id;

-- Cross join
-- Returns all possible combinations of employees and departments.
SELECT e.name AS employee, d.department_name
FROM employees e
CROSS JOIN departments d;

-- Self Join
-- Relates a table to itself. Use it to show employee–manager relationships.
SELECT e.name AS employee, m.name AS manager
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.emp_id;


-- SELECT clause
SELECT name, salary FROM employees;

-- WHERE clause
-- Filter rows based on a condition.

SELECT name, salary 
FROM employees
WHERE salary > 50000;

-- ORDER BY clause
-- Sort the results by one or more columns.
SELECT name, salary 
FROM employees
ORDER BY salary DESC;

-- GROUP BY Clause
-- Group rows to perform aggregate functions like COUNT, SUM, etc.
SELECT department_name, COUNT(*) AS total_employees
FROM employees
GROUP BY department_name;

-- HAVING Clause
-- Filter groups after GROUP BY.
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;

-- LIMIT Clause (MySQL)
-- Limit the number of returned rows.

SELECT * FROM employees
LIMIT 3;

-- DISTINCT Clause
-- Remove duplicates from result set.

SELECT DISTINCT department FROM employees;

-- IN Clause
-- Match a value against a list.

SELECT name, salary 
FROM employees
WHERE department IN ('HR', 'Tech');
	
-- BETWEEN Clause
-- Check if a value falls within a range.

SELECT name, salary 
FROM employees
WHERE salary 
BETWEEN 40000 AND 80000;

-- LIKE Clause
-- Pattern matching (with % and _ wildcards).

SELECT name 
FROM employees
WHERE name LIKE 'A%';  -- Starts with A

-- IS NULL Clause
-- Check for NULL values.

SELECT name 
FROM employees
WHERE department IS NULL;

-- CASE Clause
-- Conditional logic in SELECT.

SELECT name, 
       salary,
       CASE 
           WHEN salary > 60000 THEN 'High'
           WHEN salary BETWEEN 40000 AND 60000 THEN 'Medium'
           ELSE 'Low'
       END AS salary_band
FROM employees;



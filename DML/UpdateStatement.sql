-- Update single row

UPDATE Employees 
SET salary = 75000 
WHERE emp_id = 1;

-- Update multiple row
-- SET SQL_SAFE_UPDATES = 0;

UPDATE Employees
SET department = 'IT'
WHERE department = 'Tech';


select * from employees;
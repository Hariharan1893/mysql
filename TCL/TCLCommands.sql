-- Step 1: Start a transaction
START TRANSACTION;

-- Step 2: Insert a new employee
INSERT INTO Employees (emp_id, emp_name, department, salary)
VALUES (4, 'Nina', 'HR', 50000);

SELECT * FROM Employees;

-- Step 3: Update the salary of an existing employee
UPDATE Employees
SET salary = salary + 4000
WHERE emp_id = 4;

-- Step 4: Set a SAVEPOINT to allow rollback to this point
SAVEPOINT after_salary_update;

-- Step 5: Update an employee by mistake (simulating error)
UPDATE Employees
SET salary = salary * 0
WHERE emp_id = 4;

-- Step 6: Realize mistake, rollback to savepoint
ROLLBACK TO SAVEPOINT after_salary_update;

-- Step 7: Commit the remaining changes
COMMIT;

select * from employees;

-- ROLLBACK;
-- Undoes all changes since START TRANSACTION


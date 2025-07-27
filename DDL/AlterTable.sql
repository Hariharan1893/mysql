-- To add new column Date
ALTER TABLE Employees ADD hire_date DATE;

-- To modify the column type
ALTER TABLE Employees MODIFY salary DECIMAL(12, 2);

-- To rename the column
ALTER TABLE Employees RENAME COLUMN name TO emp_name;

-- To Drop a column
ALTER TABLE Employees DROP COLUMN hire_date;

-- To describe the structure of the table
desc employees;
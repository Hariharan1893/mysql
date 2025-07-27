select * from employees;

SELECT emp_name, salary FROM Employees WHERE department = 'IT';

SELECT * FROM Employees ORDER BY salary DESC;

SELECT department, AVG(salary) AS avg_salary FROM Employees GROUP BY department;
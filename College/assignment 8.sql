-- use student;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO departments (department_id, department_name)
VALUES
    (1, 'HR'),
    (2, 'Engineering'),
    (3, 'Sales'),
    (4, 'Marketing');

INSERT INTO employees (employee_id, name, department_id)
VALUES
    (1, 'Alice', 1),
    (2, 'Bob', 2),
    (3, 'Charlie', 2),
    (4, 'David', NULL), -- Employee without a department
    (5, 'Eve', 3);

-- Question 1)
SELECT e.name AS employee_name, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id;

-- Question 2)
SELECT e.name AS employee_name, d.department_name
FROM employees e
LEFT JOIN departments d ON e.department_id = d.department_id;

-- Question 3)
SELECT e.name AS employee_name, d.department_name
FROM employees e
RIGHT JOIN departments d ON e.department_id = d.department_id;

-- Question 4)
SELECT e.name AS employee_name, d.department_name
FROM employees e
LEFT JOIN departments d ON e.department_id = d.department_id
UNION
SELECT e.name AS employee_name, d.department_name
FROM employees e
RIGHT JOIN departments d ON e.department_id = d.department_id;

-- Question 5)
SELECT d.department_name, COUNT(e.employee_id) AS total_employees
FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_name;

-- Question 6)
WITH DepartmentCount AS (
    SELECT department_id, COUNT(employee_id) AS total_employees
    FROM employees
    GROUP BY department_id
)
SELECT e.name AS employee_name
FROM employees e
JOIN DepartmentCount dc ON e.department_id = dc.department_id
WHERE dc.total_employees = (
    SELECT MAX(total_employees) FROM DepartmentCount
);

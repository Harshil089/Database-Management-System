use student;

create table Department(
	department_id int primary key auto_increment,
    department_name varchar (50) not null
);

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    department_id INT,
    salary DECIMAL(10, 2),
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

drop table department;
drop table employee;
INSERT INTO Department (department_id, department_name) VALUES
(1, 'HR'),
(2, 'Engineering'),
(3, 'Finance'),
(4, 'Marketing');
INSERT INTO Employee (emp_id, first_name, last_name, department_id, salary) VALUES
(101, 'Jane', 'Smith', 2, 70000),
(102, 'John', 'Doe', 2, 85000),
(103, 'Emily', 'Jones', 1, 50000),
(104, 'Michael', 'Brown', 3, 95000),
(105, 'Sarah', 'Davis', 4, 60000),
(106, 'Daniel', 'Wilson', 2, 75000);

-- Question 1)
SELECT E.first_name, E.last_name
FROM Employee E
JOIN Employee J ON E.department_id = J.department_id
WHERE J.first_name = 'Jane' AND J.last_name = 'Smith'
  AND E.emp_id != J.emp_id;
  
-- Question 2)
SELECT first_name, last_name, salary, department_id
FROM Employee E
WHERE salary > (SELECT AVG(salary)
                FROM Employee E2
                WHERE E2.department_id = E.department_id);

-- Question 3)
SELECT D.department_name
FROM Department D
JOIN Employee E ON D.department_id = E.department_id
WHERE E.salary > 75000;

-- Question 4)
SELECT E.first_name, E.last_name, D.department_name, E.salary
FROM Employee E
JOIN Department D ON E.department_id = D.department_id
WHERE E.salary = (SELECT MAX(E2.salary)
                  FROM Employee E2
                  WHERE E2.department_id = E.department_id);

-- Question 5)
SELECT first_name, last_name, salary
FROM Employee
WHERE salary > (SELECT AVG(salary) FROM Employee);
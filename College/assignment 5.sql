-- Question 1)
-- CREATE TABLE employee (
--     emp_id INT PRIMARY KEY AUTO_INCREMENT,
--     emp_name VARCHAR(40) NOT NULL,
--     salary DECIMAL(10,2)
-- );

-- INSERT INTO employee (emp_name, salary) VALUES
--     ('Harshil', 10010.24),
--     ('Harsh', 10020.25),
--     ('Harish', 10032.24),
--     ('Hari', 10040.25),
--     ('Harshal', 10050.23),
--     ('Harshit', 10060.23),
--     ('Harshali', 10070.23),
--     ('Harshita', 10080.25),
--     ('Harshdeep', 10090.25),
--     ('Harmanpreet', 10100.24);

-- SELECT COUNT(*) AS total_employees FROM employee;
-- SELECT AVG(salary) AS average_salary FROM employee;
-- select MAX(salary) AS maximum_salary FROM employee;
-- select MIN(salary) AS maximum_salary FROM employee;
-- SELECT SUM(salary) AS total_salary FROM employee;
drop table employee;

-- Question 2)
-- CREATE TABLE students (
--     std_id INT PRIMARY KEY AUTO_INCREMENT,
--     std_name VARCHAR(40) NOT NULL,
--     grade DECIMAL(3,2)
-- );

-- INSERT INTO students (std_name, grade) VALUES
--     ('Harshil', 9.87),
--     ('Harsh', 8.25),
--     ('Harish', 7.24),
--     ('Hari', 9.25),
--     ('Harshal', 6.23),
--     ('Harshit', 3.23),
--     ('Harshali', 8.23),
--     ('Harshita', 8.27),
--     ('Harshdeep', 9.17),
--     ('Harmanpreet', 5.24);

-- select MAX(grade) AS maximum_grade FROM students;
drop table students;

-- Question 3)
-- create table sales(
-- 	cust_name varchar(40) not null,
-- 	amount decimal(10,2) not null
-- );

-- INSERT INTO sales (cust_name,amount) VALUES
--     ('Harshil', 66669.687),
--     ('Harsh', 88888.255),
--     ('Harish', 78888.243),
--     ('Hari', 46779.259),
--     ('Harshal', 98876.203),
--     ('Harshit', 12343.231),
--     ('Harshali', 70858.233),
--     ('Harshita', 45678.272),
--     ('Harshdeep', 97659.178),
--     ('Harmanpreet', 67855.294);


-- SELECT ROUND(SUM(amount), 2) AS total_revenue FROM sales;
drop table sales;

-- Question 4)
-- create table employee(
-- 	emp_id int PRIMARY key AUTO_INCREMENT,
--     emp_name varchar(40) not null,
--     curr_salary decimal (10,2)
-- );

-- INSERT INTO employee (emp_name,curr_salary) VALUES
--     ('Harshil', 66669.687),
--     ('Harsh', 88888.255),
--     ('Harish', 78888.243),
--     ('Hari', 46779.259),
--     ('Harshal', 98876.203),
--     ('Harshit', 12343.231),
--     ('Harshali', 70858.233),
--     ('Harshita', 45678.272),
--     ('Harshdeep', 97659.178),
--     ('Harmanpreet', 67855.294);
--     
-- SELECT emp_id, CEIL(curr_salary * 1.10) AS new_salary FROM employee;
drop table employee;

-- Question 5)
-- create table customers(
-- 	customer_id int primary key AUTO_INCREMENT,
--     customer_name VARCHAR(40) not null,
--     registration_date date not null
-- );

-- INSERT INTO customers (customer_name,registration_date) VALUES
--     ('Harshil',"2015-05-06" ),
--     ('Harsh', "2014-05-06" ),
--     ('Harish', "2013-05-06" ),
--     ('Hari', "2012-05-06" ),
--     ('Harshal', "2011-05-06" ),
--     ('Harshit', "2010-05-06" ),
--     ('Harshali', "2009-05-06" ),
--     ('Harshita', "2008-05-06" ),
--     ('Harshdeep', "2007-05-06" ),
--     ('Harmanpreet', "2005-05-06" );
--     
-- SELECT customer_id,DATEDIFF(CURDATE(), registration_date) AS days_since_registration FROM customers;
drop table customers;
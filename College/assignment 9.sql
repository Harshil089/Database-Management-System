-- create database assignment9;
-- use assignment9;
-- Question 1)
-- CREATE TABLE numbers (
--     num_value INT
-- );
-- INSERT INTO numbers (num_value) VALUES (10), (20), (30), (40), (0); -- 0 as termination condition

-- DELIMITER //

-- CREATE PROCEDURE calculate_average()
-- BEGIN
--     DECLARE num INT DEFAULT -1;
--     DECLARE sum INT DEFAULT 0;
--     DECLARE count INT DEFAULT 0;
--     DECLARE avg_result FLOAT;

--     -- Loop to process each number
--     WHILE num != 0 DO
--         SET num = (SELECT num_value FROM numbers ORDER BY RAND() LIMIT 1); -- Simulated input

--         IF num != 0 THEN
--             SET sum = sum + num;
--             SET count = count + 1;
--         END IF;
--     END WHILE;

--     -- Calculate and display the average
--     IF count > 0 THEN
--         SET avg_result = sum / count;
--         SELECT CONCAT('The average of the numbers entered is: ', avg_result) AS result;
--     ELSE
--         SELECT 'No numbers entered.' AS result;
--     END IF;
-- END //

-- DELIMITER ;

-- CALL calculate_average();

-- Question 2)
-- CREATE TABLE palindrome_test (
--     input_string VARCHAR(100)
-- );
-- INSERT INTO palindrome_test (input_string) VALUES ('madam'), ('hello');

-- DELIMITER //

-- CREATE PROCEDURE check_palindrome(IN input_str VARCHAR(100))
-- BEGIN
--     DECLARE reversed_str VARCHAR(100) DEFAULT '';
--     DECLARE i INT DEFAULT CHAR_LENGTH(input_str);

--     -- Reverse the string
--     WHILE i > 0 DO
--         SET reversed_str = CONCAT(reversed_str, SUBSTRING(input_str, i, 1));
--         SET i = i - 1;
--     END WHILE;

--     -- Check if palindrome
--     IF input_str = reversed_str THEN
--         SELECT CONCAT('The string "', input_str, '" is a palindrome.') AS result;
--     ELSE
--         SELECT CONCAT('The string "', input_str, '" is not a palindrome.') AS result;
--     END IF;
-- END //

-- DELIMITER ;

-- CALL check_palindrome('madam');
-- CALL check_palindrome('hello');

-- Question 3)
-- CREATE TABLE orders (
--     order_id INT,
--     customer_id INT,
--     order_date DATE,
--     total_amount DECIMAL(10, 2)
-- );
-- INSERT INTO orders (order_id, customer_id, order_date, total_amount) VALUES
-- (1, 101, '2024-01-01', 500.00),
-- (2, 101, '2024-02-15', 300.00),
-- (3, 102, '2024-03-10', 150.00),
-- (4, 101, '2024-05-20', 200.00);

-- DELIMITER //

-- CREATE PROCEDURE get_customer_orders(
--     IN p_customer_id INT,
--     IN p_start_date DATE,
--     IN p_end_date DATE
-- )
-- BEGIN
--     SELECT * FROM orders
--     WHERE customer_id = p_customer_id
--       AND order_date BETWEEN p_start_date AND p_end_date;
-- END //

-- DELIMITER ;

-- CALL get_customer_orders(101, '2024-01-01', '2024-12-31');
-- CALL get_customer_orders(102, '2024-03-01', '2024-04-01');

-- Question 4)
-- CREATE TABLE employees (
--     employee_id INT,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50),
--     salary DECIMAL(10, 2),
--     department_id INT
-- );
-- INSERT INTO employees (employee_id, first_name, last_name, salary, department_id) VALUES
-- (1, 'John', 'Doe', 50000, 10),
-- (2, 'Jane', 'Smith', 60000, 20),
-- (3, 'Emily', 'Davis', 45000, 30);

-- DELIMITER //

-- CREATE PROCEDURE update_salary(
--     IN p_employee_id INT,
--     IN p_percentage DECIMAL(5, 2)
-- )
-- BEGIN
--     DECLARE emp_exists INT;

--     -- Check if employee exists
--     SELECT COUNT(*) INTO emp_exists FROM employees WHERE employee_id = p_employee_id;

--     IF emp_exists = 0 THEN
--         SELECT CONCAT('Error: Employee with ID ', p_employee_id, ' does not exist.') AS result;
--     ELSE
--         -- Update salary
--         UPDATE employees
--         SET salary = salary + (salary * p_percentage / 100)
--         WHERE employee_id = p_employee_id;

--         SELECT CONCAT('Salary updated successfully for Employee ID ', p_employee_id) AS result;
--     END IF;
-- END //

-- DELIMITER ;

-- CALL update_salary(1, 10);  -- Increase salary by 10% for employee with ID 1
-- CALL update_salary(2, 5);   -- Increase salary by 5% for employee with ID 3
-- CALL update_salary(3, 8);   -- Test non-existing employee ID 4

-- select * from employees;

-- Question 5)
CREATE TABLE inventory (
    product_id INT,
    product_name VARCHAR(100),
    quantity INT,
    price DECIMAL(10, 2)
);
INSERT INTO inventory (product_id, product_name, quantity, price) VALUES
(1, 'Widget A', 10, 20.00),
(2, 'Widget B', 5, 15.00),
(3, 'Widget C', 8, 25.00);

DELIMITER //

CREATE FUNCTION calculate_inventory_value()
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE total_value DECIMAL(10, 2);

    SELECT SUM(quantity * price) INTO total_value FROM inventory;
    RETURN total_value;
END //

DELIMITER ;

SELECT calculate_inventory_value() AS total_inventory_value;

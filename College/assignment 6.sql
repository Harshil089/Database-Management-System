use student;

-- Question 1
-- create table sales(
-- 	prod_id int primary key AUTO_INCREMENT,
--     product_name varchar (20) not null,
--     category varchar (40) not null,
--     price decimal(10,2) not null,
--     quantity_sold int not null,
--     sale_date date not null
-- );

-- INSERT INTO sales (product_name, category, price, quantity_sold, sale_date) 
-- VALUES 
-- ('Laptop', 'Electronics', 1200.00, 10, '2024-01-10'),
-- ('Smartphone', 'Electronics', 800.00, 20, '2024-01-12'),
-- ('Television', 'Electronics', 1500.00, 5, '2024-01-15'),
-- ('Refrigerator', 'Appliances', 1000.00, 8, '2024-02-01'),
-- ('Microwave', 'Appliances', 200.00, 25, '2024-02-05'),
-- ('Vacuum Cleaner', 'Appliances', 300.00, 30, '2024-02-07'),
-- ('T-shirt', 'Clothing', 20.00, 100, '2024-03-01'),
-- ('Jeans', 'Clothing', 50.00, 50, '2024-03-05'),
-- ('Jacket', 'Clothing', 100.00, 30, '2024-03-10'),
-- ('Headphones', 'Accessories', 150.00, 40, '2024-04-01'),
-- ('Watch', 'Accessories', 300.00, 15, '2024-04-05');

-- SELECT 
--     category,
--     SUM(price * quantity_sold) AS total_revenue
-- FROM 
--     sales
-- GROUP BY 
--     category
-- HAVING 
--     SUM(price * quantity_sold) > 10000;
drop table sales;

-- Question 2)
-- CREATE TABLE departments (
--     department_id INT PRIMARY KEY AUTO_INCREMENT,
--     department_name VARCHAR(100) NOT NULL
-- );
-- drop table departments;
-- drop table employees;

-- CREATE TABLE employees (
--     employee_id INT PRIMARY KEY auto_increment,
--     employee_name VARCHAR(100) NOT NULL,
--     department_id INT,
--     FOREIGN KEY (department_id) REFERENCES departments(department_id)
-- );

-- INSERT INTO departments (department_name) VALUES
-- ('Human Resources'),
-- ('Engineering'),
-- ('Sales'),
-- ('Marketing'),
-- ('Finance');

-- INSERT INTO employees (employee_id, employee_name, department_id) VALUES
-- (1, 'Employee 1', 2),
-- (2, 'Employee 2', 2),
-- (3, 'Employee 3', 2),
-- (4, 'Employee 4', 2),
-- (5, 'Employee 5', 2),
-- (6, 'Employee 6', 2),
-- (7, 'Employee 7', 2),
-- (8, 'Employee 8', 2),
-- (9, 'Employee 9', 2),
-- (10, 'Employee 10', 2),
-- (11, 'Employee 11', 2),
-- (12, 'Employee 12', 2),
-- (13, 'Employee 13', 2),
-- (14, 'Employee 14', 2),
-- (15, 'Employee 15', 2),
-- (16, 'Employee 16', 2),
-- (17, 'Employee 17', 2),
-- (18, 'Employee 18', 2),
-- (19, 'Employee 19', 2),
-- (20, 'Employee 20', 2),
-- (21, 'Employee 21', 2),
-- (22, 'Employee 22', 2),
-- (23, 'Employee 23', 2),
-- (24, 'Employee 24', 2),
-- (25, 'Employee 25', 2),
-- (26, 'Employee 26', 2),
-- (27, 'Employee 27', 2),
-- (28, 'Employee 28', 2),
-- (29, 'Employee 29', 2),
-- (30, 'Employee 30', 2),
-- (31, 'Employee 31', 2),
-- (32, 'Employee 32', 2),
-- (33, 'Employee 33', 2),
-- (34, 'Employee 34', 2),
-- (35, 'Employee 35', 2),
-- (36, 'Employee 36', 2),
-- (37, 'Employee 37', 2),
-- (38, 'Employee 38', 2),
-- (39, 'Employee 39', 2),
-- (40, 'Employee 40', 2),
-- (41, 'Employee 41', 2),
-- (42, 'Employee 42', 2),
-- (43, 'Employee 43', 2),
-- (44, 'Employee 44', 2),
-- (45, 'Employee 45', 2),
-- (46, 'Employee 46', 2),
-- (47, 'Employee 47', 2),
-- (48, 'Employee 48', 2),
-- (49, 'Employee 49', 2),
-- (50, 'Employee 50', 2),
-- (51, 'Employee 51', 2),
-- (52, 'Employee 52', 2),
-- (53, 'Employee 53', 2),
-- (54, 'Employee 54', 2),
-- (55, 'Employee 55', 2),
-- (56, 'Employee 56', 1),
-- (57, 'Employee 57', 1),
-- (58, 'Employee 58', 1),
-- (59, 'Employee 59', 1),
-- (60, 'Employee 60', 1),
-- (61, 'Employee 61', 1),
-- (62, 'Employee 62', 1),
-- (63, 'Employee 63', 1),
-- (64, 'Employee 64', 1),
-- (65, 'Employee 65', 1),
-- (66, 'Employee 66', 1),
-- (67, 'Employee 67', 1),
-- (68, 'Employee 68', 3),
-- (69, 'Employee 69', 3),
-- (70, 'Employee 70', 3),
-- (71, 'Employee 71', 3),
-- (72, 'Employee 72', 3),
-- (73, 'Employee 73', 3),
-- (74, 'Employee 74', 3),
-- (75, 'Employee 75', 3),
-- (76, 'Employee 76', 3),
-- (77, 'Employee 77', 3),
-- (78, 'Employee 78', 3),
-- (79, 'Employee 79', 3),
-- (80, 'Employee 80', 4),
-- (81, 'Employee 81', 4),
-- (82, 'Employee 82', 4),
-- (83, 'Employee 83', 4),
-- (84, 'Employee 84', 4),
-- (85, 'Employee 85', 4),
-- (86, 'Employee 86', 4),
-- (87, 'Employee 87', 4),
-- (88, 'Employee 88', 4),
-- (89, 'Employee 89', 5),
-- (90, 'Employee 90', 5),
-- (91, 'Employee 91', 5),
-- (92, 'Employee 92', 5),
-- (93, 'Employee 93', 5),
-- (94, 'Employee 94', 5),
-- (95, 'Employee 95', 5),
-- (96, 'Employee 96', 5),
-- (97, 'Employee 97', 5),
-- (98, 'Employee 98', 5),
-- (99, 'Employee 99', 5),
-- (100, 'Employee 100', 5);

-- SELECT d.department_name, COUNT(e.employee_id) AS employee_count
-- FROM departments d
-- JOIN employees e ON d.department_id = e.department_id
-- GROUP BY d.department_name
-- HAVING COUNT(e.employee_id) > 50;

drop table departments;
drop table employees;

-- Question 3)
-- CREATE TABLE Products (
--     ProductID INT PRIMARY KEY,
--     ProductName VARCHAR(100),
--     SupplierID INT,
--     StockQuantity INT
-- );
-- INSERT INTO Products (ProductID, ProductName, SupplierID, StockQuantity)
-- VALUES
-- (1, 'Product A', 101, 600),
-- (2, 'Product B', 101, 700),
-- (3, 'Product C', 102, 300),
-- (4, 'Product D', 102, 400),
-- (5, 'Product E', 103, 550),
-- (6, 'Product F', 103, 600),
-- (7, 'Product G', 104, 200),
-- (8, 'Product H', 104, 300);

-- SELECT SupplierID, AVG(StockQuantity) AS AvgStockQuantity
-- FROM Products
-- GROUP BY SupplierID
-- HAVING AVG(StockQuantity) > 500;
drop table Products;

-- Question 4)
-- CREATE TABLE customers (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(100),
--     age INT
-- );

-- INSERT INTO customers (name, age) VALUES ('Liam Taylor', 26);
-- INSERT INTO customers (name, age) VALUES ('Emma Wilson', 27);
-- INSERT INTO customers (name, age) VALUES ('Noah Martinez', 28);
-- INSERT INTO customers (name, age) VALUES ('Olivia Anderson', 29);
-- INSERT INTO customers (name, age) VALUES ('Ava Thomas', 30);
-- INSERT INTO customers (name, age) VALUES ('Sophia Jackson', 31);
-- INSERT INTO customers (name, age) VALUES ('Isabella White', 32);
-- INSERT INTO customers (name, age) VALUES ('Mia Harris', 33);
-- INSERT INTO customers (name, age) VALUES ('Charlotte Clark', 34);
-- INSERT INTO customers (name, age) VALUES ('Amelia Lewis', 35);
-- INSERT INTO customers (name, age) VALUES ('Ethan Young', 26);
-- INSERT INTO customers (name, age) VALUES ('James Hall', 27);
-- INSERT INTO customers (name, age) VALUES ('Alexander Allen', 28);
-- INSERT INTO customers (name, age) VALUES ('Benjamin Wright', 29);
-- INSERT INTO customers (name, age) VALUES ('Lucas King', 30);
-- INSERT INTO customers (name, age) VALUES ('Henry Scott', 31);
-- INSERT INTO customers (name, age) VALUES ('Daniel Green', 32);
-- INSERT INTO customers (name, age) VALUES ('Matthew Adams', 33);
-- INSERT INTO customers (name, age) VALUES ('Jacob Baker', 34);
-- INSERT INTO customers (name, age) VALUES ('Michael Gonzalez', 35);
-- INSERT INTO customers (name, age) VALUES ('Charlotte Carter', 26);
-- INSERT INTO customers (name, age) VALUES ('Ella Mitchell', 27);
-- INSERT INTO customers (name, age) VALUES ('Grace Perez', 28);
-- INSERT INTO customers (name, age) VALUES ('Chloe Roberts', 29);
-- INSERT INTO customers (name, age) VALUES ('Harper Turner', 30);
-- INSERT INTO customers (name, age) VALUES ('Avery Phillips', 31);
-- INSERT INTO customers (name, age) VALUES ('Scarlett Campbell', 32);
-- INSERT INTO customers (name, age) VALUES ('Sofia Parker', 33);
-- INSERT INTO customers (name, age) VALUES ('Victoria Evans', 34);
-- INSERT INTO customers (name, age) VALUES ('Madison Edwards', 35);
-- INSERT INTO customers (name, age) VALUES ('Addison Collins', 26);
-- INSERT INTO customers (name, age) VALUES ('Mila Stewart', 27);
-- INSERT INTO customers (name, age) VALUES ('Aria Sanchez', 28);
-- INSERT INTO customers (name, age) VALUES ('Riley Morris', 29);
-- INSERT INTO customers (name, age) VALUES ('Zoey Rogers', 30);
-- INSERT INTO customers (name, age) VALUES ('Natalie Reed', 31);
-- INSERT INTO customers (name, age) VALUES ('Lily Cook', 32);
-- INSERT INTO customers (name, age) VALUES ('Grace Morgan', 33);
-- INSERT INTO customers (name, age) VALUES ('Layla Bell', 34);
-- INSERT INTO customers (name, age) VALUES ('Audrey Murphy', 35);
-- INSERT INTO customers (name, age) VALUES ('Aaliyah Rivera', 26);
-- INSERT INTO customers (name, age) VALUES ('Nora Cooper', 27);
-- INSERT INTO customers (name, age) VALUES ('Lucy Bailey', 28);
-- INSERT INTO customers (name, age) VALUES ('Katherine Gonzalez', 29);
-- INSERT INTO customers (name, age) VALUES ('Hannah Jenkins', 30);
-- INSERT INTO customers (name, age) VALUES ('Evelyn Perry', 31);
-- INSERT INTO customers (name, age) VALUES ('Ellie Powell', 32);
-- INSERT INTO customers (name, age) VALUES ('Samantha Patterson', 33);
-- INSERT INTO customers (name, age) VALUES ('Caroline Hughes', 34);
-- INSERT INTO customers (name, age) VALUES ('Elizabeth Fisher', 35);
-- INSERT INTO customers (name, age) VALUES ('Natalie Simmons', 26);
-- INSERT INTO customers (name, age) VALUES ('Kylie Long', 27);
-- INSERT INTO customers (name, age) VALUES ('Gabriella Sanders', 28);
-- INSERT INTO customers (name, age) VALUES ('Madelyn Price', 29);
-- INSERT INTO customers (name, age) VALUES ('Piper Bennett', 30);
-- INSERT INTO customers (name, age) VALUES ('Lillian Ramirez', 31);
-- INSERT INTO customers (name, age) VALUES ('Arianna Diaz', 32);
-- INSERT INTO customers (name, age) VALUES ('Sophie Hughes', 33);
-- INSERT INTO customers (name, age) VALUES ('Bella Rivera', 34);
-- INSERT INTO customers (name, age) VALUES ('Luna Hughes', 35);
-- INSERT INTO customers (name, age) VALUES ('Zoe Reyes', 26);
-- INSERT INTO customers (name, age) VALUES ('Ella Ortiz', 27);
-- INSERT INTO customers (name, age) VALUES ('Maya Lopez', 28);
-- INSERT INTO customers (name, age) VALUES ('Stella Brooks', 29);
-- INSERT INTO customers (name, age) VALUES ('Leah Kelly', 30);
-- INSERT INTO customers (name, age) VALUES ('Lydia Sanchez', 31);
-- INSERT INTO customers (name, age) VALUES ('Allison Ward', 32);
-- INSERT INTO customers (name, age) VALUES ('Nevaeh Cox', 33);
-- INSERT INTO customers (name, age) VALUES ('Kinsley Diaz', 34);
-- INSERT INTO customers (name, age) VALUES ('Savannah Flores', 35);
-- INSERT INTO customers (name, age) VALUES ('Claire Stewart', 26);
-- INSERT INTO customers (name, age) VALUES ('Autumn Morris', 27);
-- INSERT INTO customers (name, age) VALUES ('Lily Rodriguez', 28);
-- INSERT INTO customers (name, age) VALUES ('Ruth Lee', 29);
-- INSERT INTO customers (name, age) VALUES ('Violet Hernandez', 30);
-- INSERT INTO customers (name, age) VALUES ('Julia Coleman', 31);
-- INSERT INTO customers (name, age) VALUES ('Sophie James', 32);
-- INSERT INTO customers (name, age) VALUES ('Maggie Garcia', 33);
-- INSERT INTO customers (name, age) VALUES ('Madeline Nguyen', 34);
-- INSERT INTO customers (name, age) VALUES ('Avery Butler', 35);
-- INSERT INTO customers (name, age) VALUES ('Nina Phillips', 26);
-- INSERT INTO customers (name, age) VALUES ('Mikayla Rivera', 27);
-- INSERT INTO customers (name, age) VALUES ('Mariana Cook', 28);
-- INSERT INTO customers (name, age) VALUES ('Skylar Morgan', 29);
-- INSERT INTO customers (name, age) VALUES ('Kaitlyn Nelson', 30);
-- INSERT INTO customers (name, age) VALUES ('Elliana Adams', 31);
-- INSERT INTO customers (name, age) VALUES ('Maddison Sanders', 32);
-- INSERT INTO customers (name, age) VALUES ('Emma Diaz', 33);
-- INSERT INTO customers (name, age) VALUES ('Vivian Gomez', 34);
-- INSERT INTO customers (name, age) VALUES ('Delilah Wood', 35);
-- INSERT INTO customers (name, age) VALUES ('Giselle Hall', 26);
-- INSERT INTO customers (name, age) VALUES ('Sadie Wright', 27);
-- INSERT INTO customers (name, age) VALUES ('Carla Mitchell', 28);
-- INSERT INTO customers (name, age) VALUES ('Miranda Campbell', 29);
-- INSERT INTO customers (name, age) VALUES ('Sabrina Parker', 30);
-- INSERT INTO customers (name, age) VALUES ('Penelope Gonzalez', 31);
-- INSERT INTO customers (name, age) VALUES ('Emilia Bennett', 32);
-- INSERT INTO customers (name, age) VALUES ('Liana Rivera', 33);
-- INSERT INTO customers (name, age) VALUES ('Brianna Rodriguez', 34);
-- INSERT INTO customers (name, age) VALUES ('Carmen Evans', 35);
-- INSERT INTO customers (name, age) VALUES ('Camila Carter', 26);
-- INSERT INTO customers (name, age) VALUES ('Serena Hughes', 27);
-- INSERT INTO customers (name, age) VALUES ('Adeline Reed', 28);
-- INSERT INTO customers (name, age) VALUES ('Olive Price', 29);
-- INSERT INTO customers (name, age) VALUES ('Amara Clark', 30);
-- INSERT INTO customers (name, age) VALUES ('Kiara Young', 31);
-- INSERT INTO customers (name, age) VALUES ('Sienna Long', 32);
-- INSERT INTO customers (name, age) VALUES ('Anastasia Walker', 33);
-- INSERT INTO customers (name, age) VALUES ('Malia Torres', 34);
-- INSERT INTO customers (name, age) VALUES ('Emery Lee', 35);
-- INSERT INTO customers (name, age) VALUES ('Talia Wright', 26);
-- INSERT INTO customers (name, age) VALUES ('Selena Nguyen', 27);
-- INSERT INTO customers (name, age) VALUES ('Karla Bennett', 28);
-- INSERT INTO customers (name, age) VALUES ('Adalynn Howard', 29);
-- INSERT INTO customers (name, age) VALUES ('Clara Lewis', 30);
-- INSERT INTO customers (name, age) VALUES ('Alina Hall', 31);
-- INSERT INTO customers (name, age) VALUES ('Marley Cooper', 32);
-- INSERT INTO customers (name, age) VALUES ('Giana Evans', 33);
-- INSERT INTO customers (name, age) VALUES ('Cecilia Parker', 34);
-- INSERT INTO customers (name, age) VALUES ('Kendall Morgan', 35);
-- INSERT INTO customers (name, age) VALUES ('Amira Sanchez', 26);
-- INSERT INTO customers (name, age) VALUES ('Keira James', 27);
-- INSERT INTO customers (name, age) VALUES ('Sabrina Foster', 28);
-- INSERT INTO customers (name, age) VALUES ('Liana Murphy', 29);
-- INSERT INTO customers (name, age) VALUES ('Sierra Cooper', 30);
-- INSERT INTO customers (name, age) VALUES ('Danielle Garcia', 31);
-- INSERT INTO customers (name, age) VALUES ('Kira Kelly', 32);
-- INSERT INTO customers (name, age) VALUES ('Julia Ross', 33);
-- INSERT INTO customers (name, age) VALUES ('Layla Diaz', 34);
-- INSERT INTO customers (name, age) VALUES ('Lydia Wright', 35);
-- INSERT INTO customers (name, age) VALUES ('Elena Garcia', 26);
-- INSERT INTO customers (name, age) VALUES ('Raegan Allen', 27);
-- INSERT INTO customers (name, age) VALUES ('Sophie Simmons', 28);
-- INSERT INTO customers (name, age) VALUES ('Alicia Adams', 29);
-- INSERT INTO customers (name, age) VALUES ('Harlow Johnson', 30);
-- INSERT INTO customers (name, age) VALUES ('Willow Stewart', 31);
-- INSERT INTO customers (name, age) VALUES ('Gianna Gonzalez', 32);
-- INSERT INTO customers (name, age) VALUES ('Sabrina Cox', 33);
-- INSERT INTO customers (name, age) VALUES ('Rory Baker', 34);
-- INSERT INTO customers (name, age) VALUES ('Danielle Davis', 35);
-- INSERT INTO customers (name, age) VALUES ('Maddox Ramirez', 26);
-- INSERT INTO customers (name, age) VALUES ('Bria Cooper', 27);
-- INSERT INTO customers (name, age) VALUES ('Hayden Torres', 28);
-- INSERT INTO customers (name, age) VALUES ('Aubrey Brooks', 29);
-- INSERT INTO customers (name, age) VALUES ('Sierra James', 30);
-- INSERT INTO customers (name, age) VALUES ('Sage Ramirez', 31);
-- INSERT INTO customers (name, age) VALUES ('Aubrie Edwards', 32);
-- INSERT INTO customers (name, age) VALUES ('Kimberly Gonzalez', 33);
-- INSERT INTO customers (name, age) VALUES ('Alexis King', 34);
-- INSERT INTO customers (name, age) VALUES ('Cadence Martin', 35);
-- INSERT INTO customers (name, age) VALUES ('Nora Scott', 26);
-- INSERT INTO customers (name, age) VALUES ('Briar Roberts', 27);
-- INSERT INTO customers (name, age) VALUES ('Aaliyah Young', 28);
-- INSERT INTO customers (name, age) VALUES ('Elise Parker', 29);
-- INSERT INTO customers (name, age) VALUES ('Megan Flores', 30);
-- INSERT INTO customers (name, age) VALUES ('Trinity Perez', 31);
-- INSERT INTO customers (name, age) VALUES ('Adeline Lewis', 32);
-- INSERT INTO customers (name, age) VALUES ('Scarlett Rivera', 33);
-- INSERT INTO customers (name, age) VALUES ('Ember Ward', 34);
-- INSERT INTO customers (name, age) VALUES ('Kennedy Cook', 35);
-- INSERT INTO customers (name, age) VALUES ('Lyla Sanders', 26);
-- INSERT INTO customers (name, age) VALUES ('Samara Lee', 27);
-- INSERT INTO customers (name, age) VALUES ('Leilani Morgan', 28);
-- INSERT INTO customers (name, age) VALUES ('Keira Carter', 29);
-- INSERT INTO customers (name, age) VALUES ('Zuri Brown', 30);
-- INSERT INTO customers (name, age) VALUES ('Melody Harris', 31);
-- INSERT INTO customers (name, age) VALUES ('Nadia King', 32);
-- INSERT INTO customers (name, age) VALUES ('Lena Rivera', 33);
-- INSERT INTO customers (name, age) VALUES ('Ayla Nelson', 34);
-- INSERT INTO customers (name, age) VALUES ('Bianca Smith', 35);
-- INSERT INTO customers (name, age) VALUES ('Selah Walker', 26);
-- INSERT INTO customers (name, age) VALUES ('Skylar James', 27);
-- INSERT INTO customers (name, age) VALUES ('Giselle Ramirez', 28);
-- INSERT INTO customers (name, age) VALUES ('Ember Martinez', 29);
-- INSERT INTO customers (name, age) VALUES ('Sienna Murphy', 30);
-- INSERT INTO customers (name, age) VALUES ('Danica Davis', 31);
-- INSERT INTO customers (name, age) VALUES ('Harlow Robinson', 32);
-- INSERT INTO customers (name, age) VALUES ('Valentina Johnson', 33);
-- INSERT INTO customers (name, age) VALUES ('Lacey Davis', 34);
-- INSERT INTO customers (name, age) VALUES ('Lindsey Williams', 35);
-- INSERT INTO customers (name, age) VALUES ('Serenity Hall', 26);
-- INSERT INTO customers (name, age) VALUES ('Amaya Cook', 27);
-- INSERT INTO customers (name, age) VALUES ('Olive Brooks', 28);
-- INSERT INTO customers (name, age) VALUES ('Amira Clark', 29);
-- INSERT INTO customers (name, age) VALUES ('Ruth Wilson', 30);
-- INSERT INTO customers (name, age) VALUES ('Sophie Lewis', 31);
-- INSERT INTO customers (name, age) VALUES ('Sabrina Turner', 32);
-- INSERT INTO customers (name, age) VALUES ('Maggie Johnson', 33);
-- INSERT INTO customers (name, age) VALUES ('Charlotte Wright', 34);
-- INSERT INTO customers (name, age) VALUES ('Juliet Adams', 35);
-- INSERT INTO customers (name, age) VALUES ('Camryn Hall', 26);
-- INSERT INTO customers (name, age) VALUES ('Alyssa Sanchez', 27);
-- INSERT INTO customers (name, age) VALUES ('Alyson Nguyen', 28);
-- INSERT INTO customers (name, age) VALUES ('Diana Robinson', 29);
-- INSERT INTO customers (name, age) VALUES ('Samantha Carter', 30);
-- INSERT INTO customers (name, age) VALUES ('Blake Martinez', 31);
-- INSERT INTO customers (name, age) VALUES ('Kendra Adams', 32);
-- INSERT INTO customers (name, age) VALUES ('Kaitlyn Stewart', 33);
-- INSERT INTO customers (name, age) VALUES ('Evelyn Reed', 34);
-- INSERT INTO customers (name, age) VALUES ('Aria Parker', 35);
-- INSERT INTO customers (name, age) VALUES ('Trinity Davis', 26);
-- INSERT INTO customers (name, age) VALUES ('Caitlin Gonzalez', 27);
-- INSERT INTO customers (name, age) VALUES ('Mikayla Wright', 28);
-- INSERT INTO customers (name, age) VALUES ('Ellie Anderson', 29);
-- INSERT INTO customers (name, age) VALUES ('Julia Bell', 30);
-- INSERT INTO customers (name, age) VALUES ('Rachel Carter', 31);
-- INSERT INTO customers (name, age) VALUES ('Mia Wilson', 32);
-- INSERT INTO customers (name, age) VALUES ('Jasmine Hall', 33);
-- INSERT INTO customers (name, age) VALUES ('Amaya Gonzalez', 34);
-- INSERT INTO customers (name, age) VALUES ('Anna Johnson', 35);
-- INSERT INTO customers (name, age) VALUES ('Autumn Mitchell', 26);
-- INSERT INTO customers (name, age) VALUES ('Maya Rodriguez', 27);
-- INSERT INTO customers (name, age) VALUES ('Kaylee Young', 28);
-- INSERT INTO customers (name, age) VALUES ('Alivia Lewis', 29);
-- INSERT INTO customers (name, age) VALUES ('Sarah Walker', 30);
-- INSERT INTO customers (name, age) VALUES ('Rachel Green', 31);
-- INSERT INTO customers (name, age) VALUES ('Eliza Brooks', 32);
-- INSERT INTO customers (name, age) VALUES ('Aubrey Collins', 33);
-- INSERT INTO customers (name, age) VALUES ('Mya Carter', 34);
-- INSERT INTO customers (name, age) VALUES ('Leah Mitchell', 35);



-- SELECT 
--     CASE
--         WHEN age BETWEEN 18 AND 25 THEN '18-25'
--         WHEN age BETWEEN 26 AND 35 THEN '26-35'
--         WHEN age BETWEEN 36 AND 45 THEN '36-45'
--         WHEN age BETWEEN 46 AND 55 THEN '46-55'
--         WHEN age > 55 THEN '56+'
--         ELSE 'Unknown'
--     END AS age_range,
--     COUNT(*) AS customer_count
-- FROM customers
-- GROUP BY age_range
-- HAVING customer_count > 100;
drop table customers;

-- Question 5)
-- CREATE TABLE exam_scores (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     student_name VARCHAR(50),
--     subject VARCHAR(50),
--     score INT
-- );

-- INSERT INTO exam_scores (student_name, subject, score) VALUES
-- ('Alice', 'Math', 85),
-- ('Bob', 'Math', 78),
-- ('Charlie', 'Math', 90),
-- ('Alice', 'Science', 82),
-- ('Bob', 'Science', 88),
-- ('Charlie', 'Science', 70),
-- ('Alice', 'English', 95),
-- ('Bob', 'English', 60),
-- ('Charlie', 'English', 85);

-- SELECT subject, AVG(score) AS average_score
-- FROM exam_scores
-- GROUP BY subject
-- HAVING AVG(score) > 80;

drop table exam_scores;
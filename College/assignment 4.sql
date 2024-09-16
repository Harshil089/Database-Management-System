use student;
-- Question 1
-- create table Products(
-- 	ProdId int primary key,
-- 	Prod_name VARCHAR(40) not null unique,
--     price decimal (5,2) check (price > 0),
--     available_quantity int check (available_quantity >0)
-- );

-- insert into Products values(34215,'Cheetos','1.10','56');
-- select * from Products;

-- Question 2
-- create table Employees(
-- 	EmployeeID int primary key,
--     name VARCHAR(20) not null,
--     position varchar(20) not null,
--     PerformanceRating int,
--     Salary decimal(6,2) not null
-- );

-- update employees
-- set Salary = Salary * 1.15
-- where Position = 'Senior Engineer' and (PerformanceRating > 6)

-- Question 3
-- create table Users(
-- 	UserID int primary key,
--     Username varchar(20) not null,
--     LastLogin date,
--     IsActive boolean
-- );

-- delete from Users 
-- where LastLogin < date_sub(current_date(),interval 6 month)
-- and Isactive = false;

-- Question 4
-- create database hospital;
-- use hospital;

-- create table Patients(
-- 	PatientID int primary key,
--     name varchar(20),
--     dob date,
--     admission_date date,
--     medical_condition varchar(40)
-- );
-- insert into Patients values(1,'Harshil','2005-05-15','2024-09-16','Twisted Toe');
-- select * from Patients;

-- Question 5
use student;

create table Inventory(
	ProductID int primary key,
    ProductName varchar(20) not null,
    quantity int,
    price decimal(6,2)
);
insert into Inventory values(1,'T-shirt','2','300.00');
update Inventory
set quantity = quantity + 50
where ProductID = 1;
select * from Inventory;
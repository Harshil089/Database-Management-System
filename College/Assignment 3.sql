
create database student;
use student;
-- Question 1
--  create table Customer(
-- 	cus_id int PRIMARY Key,
--     cus_name VARCHAR(20),
--     email VARCHAR(100) not null UNIQUE,
--     phone int not null,
--     address VARCHAR(100)
--  );
--  insert into Customer values(123456,'Harshil','harshilbuch05@gmail.com','23454642','USA');
--  select * from Customer;
--  drop table Customer;
 
--  Question 2
--  create table Employee(
-- 	emp_name VARCHAR(20) PRIMARY KEY not null,
--     street VARCHAR(100) not null,
--     city VARCHAR(20) not null
--  );
--  
--  create table Company(
-- 	comp_name VARCHAR(20) PRIMARY KEY not null,
--     city varchar(20)
--  );
--  
--  create table Works(
-- 	emp_name varchar(20),
--     comp_name varchar(20),
--     salary int not null,
--     PRIMARY KEY (emp_name, comp_name),
--     FOREIGN KEY (emp_name) references Employee(emp_name) on delete cascade,
--     FOREIGN KEY (comp_name) references Company(comp_name) on delete cascade
--  );
--  
--  create table manages(
-- 	emp_name VARCHAR(20),
--     manag_name varchar(20),
--     PRIMARY KEY(emp_name, manag_name),
--     FOREIGN KEY (emp_name) references Employee(emp_name) on delete cascade
--  );

-- Question 3
-- create table customer(
-- 	cust_id int primary key not null,
--     cust_name VARCHAR(20)
-- );
--  create table orders(
-- 	order_id int primary key,
--     order_date int not null,
--     cust_id int,
--     foreign key (cust_id) references customer(cust_id)
--  );

-- Question 4)
create table Customers(
	CustomerID int PRIMARY KEY,
    FirstName varchar(20) not null,
    LastName varchar(20) not null,
    email VARCHAR(40) unique,
    PhoneNumber INT
); 

create table Products(
	ProductID int PRIMARY KEY,
    ProductName varchar(20),
    Price decimal (6,2),
    StockQuantity int UNSIGNED
);
 insert into Products VALUE(123,'Game','123.5',-1);
create table Orders(
	OrderID int primary key,
    OrderDate varchar(8),
    CustomerID int,
    TotalAmount DECIMAL(6,2),
    FOREIGN KEY (CustomerID) references Customers(CustomerID)
);

create table OrderDetails(
	OrderDetailID int primary key,
    OrderID int,
    ProductID int,
    Quantity int not null check (Quantity > 0),
    FOREIGN KEY (OrderID) references Orders(OrderID),
    FOREIGN KEY (ProductID) references Products(ProductID)
);


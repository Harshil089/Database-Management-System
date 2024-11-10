-- create database assignment10;
-- use assignment10;
-- Question 1)
-- CREATE TABLE Dept (
--     dno INT PRIMARY KEY,
--     dname VARCHAR(50),
--     dhod VARCHAR(50)
-- );

-- CREATE TABLE Emp (
--     eno INT PRIMARY KEY,
--     ename VARCHAR(50),
--     designation VARCHAR(50),
--     salary DECIMAL(10, 2),
--     dno INT,
--     FOREIGN KEY (dno) REFERENCES Dept(dno)
-- );

-- CREATE TABLE Dummy (
--     eno INT,
--     ename VARCHAR(50),
--     designation VARCHAR(50),
--     salary DECIMAL(10, 2),
--     dno INT
-- );
-- INSERT INTO Dept (dno, dname, dhod) VALUES (101, 'comp', 'Alice'), (102, 'mech', 'Bob');
-- INSERT INTO Emp (eno, ename, designation, salary, dno) VALUES 
-- (1, 'John', 'Developer', 40000, 101),
-- (2, 'Jane', 'Analyst', 35000, 101),
-- (3, 'Doe', 'Technician', 30000, 102);

-- UPDATE Emp
-- SET salary = salary * 1.10
-- WHERE dno = (SELECT dno FROM Dept WHERE dname = 'comp');

-- select * from Emp;

-- SELECT ename, designation
-- FROM Emp
-- WHERE salary > 35000 AND dno = 101;

-- DELIMITER //
-- CREATE TRIGGER after_emp_delete
-- AFTER DELETE ON Emp
-- FOR EACH ROW
-- BEGIN
--     INSERT INTO Dummy (eno, ename, designation, salary, dno)
--     VALUES (OLD.eno, OLD.ename, OLD.designation, OLD.salary, OLD.dno);
-- END //

-- DELIMITER ;

-- Question 2)
-- CREATE TABLE Boats (
--     bid INT PRIMARY KEY,
--     name VARCHAR(50),
--     bcolor VARCHAR(20)
-- );

-- CREATE TABLE Sailors (
--     sid INT PRIMARY KEY,
--     sname VARCHAR(50),
--     srating INT
-- );

-- CREATE TABLE Reserves (
--     bid INT,
--     sid INT,
--     date_of_reservation DATE,
--     PRIMARY KEY (bid, sid),
--     FOREIGN KEY (bid) REFERENCES Boats(bid),
--     FOREIGN KEY (sid) REFERENCES Sailors(sid)
-- );

-- CREATE TABLE Red_Boats (
--     sid INT,
--     sname VARCHAR(50),
--     bid INT
-- );
-- INSERT INTO Boats (bid, name, bcolor) VALUES (1, 'Boat1', 'red'), (2, 'Boat2', 'blue');
-- INSERT INTO Sailors (sid, sname, srating) VALUES (101, 'Alice', 5), (102, 'Bob', 4);

-- DELIMITER //

-- CREATE TRIGGER increment_sailor_rating
-- AFTER INSERT ON Reserves
-- FOR EACH ROW
-- BEGIN
--     UPDATE Sailors
--     SET srating = srating + 1
--     WHERE sid = NEW.sid;
-- END //

-- DELIMITER ;

-- DELIMITER //

-- CREATE PROCEDURE insert_red_boat_reservations()
-- BEGIN
--     DECLARE done INT DEFAULT FALSE;
--     DECLARE sailor_id INT;
--     DECLARE sailor_name VARCHAR(50);
--     DECLARE boat_id INT;

--     DECLARE cur CURSOR FOR
--         SELECT s.sid, s.sname, r.bid
--         FROM Sailors s
--         JOIN Reserves r ON s.sid = r.sid
--         JOIN Boats b ON r.bid = b.bid
--         WHERE b.bcolor = 'red';

--     DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

--     OPEN cur;
--     read_loop: LOOP
--         FETCH cur INTO sailor_id, sailor_name, boat_id;
--         IF done THEN
--             LEAVE read_loop;
--         END IF;

--         INSERT INTO Red_Boats (sid, sname, bid) VALUES (sailor_id, sailor_name, boat_id);
--     END LOOP;
--     CLOSE cur;
-- END //

-- DELIMITER ;
-- CALL insert_red_boat_reservations();

-- Question 3)
CREATE TABLE Books (
    sid INT,
    bid INT,
    bname VARCHAR(50),
    bprice DECIMAL(10, 2)
);

CREATE TABLE Transactions (
    sid INT,
    bid INT,
    date_issue DATE,
    date_return DATE,
    status VARCHAR(20)
);

CREATE TABLE Return_books (
    sid INT,
    bid INT,
    fine_amount DECIMAL(10, 2)
);
INSERT INTO Books (sid, bid, bname, bprice) VALUES 
(1, 101, 'Book1', 100.00),
(2, 102, 'Book2', 150.00);

DELIMITER //

CREATE TRIGGER after_book_insert
AFTER INSERT ON Books
FOR EACH ROW
BEGIN
    INSERT INTO Transactions (sid, bid, date_issue, status)
    VALUES (NEW.sid, NEW.bid, CURDATE(), 'Issued');
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE display_books_issued(p_sid INT)
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE book_name VARCHAR(50);

    DECLARE cur CURSOR FOR
        SELECT b.bname
        FROM Books b
        JOIN Transactions t ON b.sid = t.sid AND b.bid = t.bid
        WHERE t.sid = p_sid;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO book_name;
        IF done THEN
            LEAVE read_loop;
        END IF;
        SELECT book_name AS Issued_Book;
    END LOOP;
    CLOSE cur;
END //

DELIMITER ;

DELIMITER //

CREATE TRIGGER before_book_insert
BEFORE INSERT ON Books
FOR EACH ROW
BEGIN
    SET NEW.bname = UPPER(NEW.bname);
END //

DELIMITER ;

DELIMITER //

CREATE TRIGGER after_return_date_update
AFTER UPDATE ON Transactions
FOR EACH ROW
BEGIN
    IF NEW.date_return IS NOT NULL THEN
        UPDATE Transactions
        SET status = 'Return'
        WHERE sid = NEW.sid AND bid = NEW.bid;
    END IF;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE calculate_fines()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE fine DECIMAL(10, 2);
    DECLARE days INT;
    DECLARE student_id INT;
    DECLARE book_id INT;

    DECLARE cur CURSOR FOR
        SELECT t.sid, t.bid, DATEDIFF(t.date_return, t.date_issue) AS days
        FROM Transactions t
        WHERE t.status = 'Return';

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO student_id, book_id, days;
        IF done THEN
            LEAVE read_loop;
        END IF;

        -- Calculate Fine
        IF days > 30 THEN
            SET fine = (days - 30) * 30;
        ELSEIF days > 16 THEN
            SET fine = (days - 16) * 20;
        ELSEIF days > 15 THEN
            SET fine = (days - 15) * 10;
        ELSE
            SET fine = 0;
        END IF;

        -- Insert into Return_books
        INSERT INTO Return_books (sid, bid, fine_amount) VALUES (student_id, book_id, fine);
    END LOOP;
    CLOSE cur;
END //

DELIMITER ;

CALL calculate_fines();


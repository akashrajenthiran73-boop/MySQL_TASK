SHOW DATABASES;
USE akash_db;

DROP TABLE Students;

CREATE TABLE Students (
    Student_ID INT,
    Name VARCHAR(50),
    Age INT,
    Gender CHAR(1),
    Department VARCHAR(30),
    Marks INT
);

DROP TABLE Department;

CREATE TABLE Department (
Dept_id INT PRIMARY KEY,
Dept_name VARCHAR(30)
);

SHOW TABLES;

INSERT INTO Department VALUES(1,"Computer Science"),(2,"Biology"),(3,"Tamil"),(4,"English");
INSERT INTO Students VALUES(1,"Akash",19,'M',"Computer Science",89),(2,"Ranjith",19,'M',"Computer Science",59),(3,"Parthi",19,'M',"Computer Science",69),(4,"Bharath",19,'M',"Computer Science",79);

SELECT*FROM Students;
SELECT*FROM Department;

SELECT*FROM Students WHERE Marks > 60;

SELECT DISTINCT Department FROM Students;

DESC Students;

SELECT Name AS student_name from Students;

SELECT*FROM Students WHERE Marks BETWEEN 60 AND 70;

SELECT*FROM Students WHERE Department IN ('Computer Science');

SELECT*FROM Students WHERE Department NOT IN ('Computer Science');

SELECT*FROM Students WHERE Name LIKE 'A%';

SELECT*FROM Students WHERE Name LIKE '%i';

SELECT*FROM Students WHERE Marks IS NULL;

SELECT*FROM Students ORDER BY Marks ASC;

SELECT*FROM Students ORDER BY Marks DESC;

UPDATE Students SET Name = "Akash R" , Marks = Marks+3 WHERE Student_ID = 1;

SELECT*FROM Students;

DELETE FROM Students WHERE Student_ID = 4;

SELECT*FROM Students;

ALTER TABLE Students ADD email VARCHAR(100);

ALTER TABLE Students MODIFY Name VARCHAR(100);

ALTER TABLE Students CHANGE Name Student_name VARCHAR(100);

ALTER TABLE Students DROP email;

DROP TABLE student6;

CREATE TABLE student6 (
    ID INT NOT NULL,
    Name VARCHAR(20),
    reg_no INT UNIQUE,
    Age INT CHECK (Age >= 18)
);

SELECT COUNT(*) FROM Students;

SELECT AVG(Marks) FROM Students;

SELECT MAX(Marks) FROM Students;

SELECT MIN(Marks) FROM Students;

SELECT SUM(Marks) FROM Students;

SELECT Department , COUNT(*) FROM Students GROUP BY Department;

SELECT Department , AVG(Marks) FROM Students GROUP BY Department;

SELECT Department , AVG(Marks) FROM Students GROUP BY Department HAVING AVG(Marks) > 70;


CREATE TABLE Accounts (
    Account_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Balance INT
) ENGINE=InnoDB;

INSERT INTO Accounts VALUES (1,"AKASH",10000),(2,"ARUN",20000);

START TRANSACTION;

UPDATE Accounts
SET Balance = Balance - 1000
WHERE Accoun_ID = 1;

UPDATE Accounts
SET Balance = Balance - 2000
WHERE Accoun_ID = 2;

SAVEPOINT S1;

COMMIT;

START TRANSACTION;

UPDATE Accounts
SET Balance = 0
WHERE Accoun_ID = 1;

ROLLBACK TO S1;

SET AUTOCOMMIT = 1;



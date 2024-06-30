
-- Lab Task 1:
-- 1.1: Installation: SQL SERVER & SSMS 19/20

-- 1.2: Create a Database:

-- syntax:  create database dataBase name
	--Example:
	create database labTasks  
	use labTasks   --Accessing OR using the Created Database

-- 1.3: Create a Table:

-- syntax: 
/*
 create table tableName (

   variableName1 dataType1,
   variableName2 dataType2,
   .
   .
   .
   variableNameN dataTypeN
   );
*/

-- Example:
create table Students(
	ID int,
	Fname varchar(255),  --consider varchar as a string with length off 255 characters
	Lname varchar(255),
	age int,  --int is used to store integer type values i.e, 2, 3, 4, ...
	class int,
	contactNo int,
	height float, --float is used to store decimal point values, Example: 2.3, 4.6, 5.3, ...
	admissionDate Date --Date data type is used to store date or manage The date
);

select * from Students --this command is used to display table

--Lab Task 2:

/*
Data Definition Language:
The commands that are used to define the structure of our table's data are known as DDL commands.

Key points:
1. What Data is going to be stored in our Table.
2. Defines the attributes(columns) of our table. like: Name, Age, contact


Commands:
1. Create: Used to create a table
2. Alter: Used to make some changes in the existing table
3. Drop: Used to delete the whole Table. (Structure)
4. Truncate: Used to delete all the data(Rows) in our table.
5. Rename: Used to rename our table.
*/

-- Sub-Task:
-- 2.1: Create Table [Already Performed in Task 1]

-- 2.2: Alter Table:

--syntax:
/*
Alter Table tableName
add attributeName dataType
*/

-- Example:
--It will add another Column Fees in our Table

Alter table Students
add Fees int;

-- 2.3: Truncate Table:

--syntax:
/*
Truncate table tableName
*/

-- Example:
truncate table Student --it deletes all the rows in our table

-- 2.4: Drop Command:

/*
Syntax:
Drop table tableName
*/

-- Example:
Drop table Students --this command will delete the table [goto to lab task 1 and run create command again to use the table ]

-- 2.5: Rename Command:

/*
Syntax:
exec sp_rename 'currentName', 'newName';
*/

--example:
exec sp_rename 'Students', 'Student';  --after executing this command new name of our table is Student

Select * from Student;  --Now Use this command to view table

-- Lab Task 3: DML commands
/*
Data Manuplation Commands are used to insert, update and delete the data in our tables.

Commands:
1. Insert: Used to insert data into the Table
2. Update: Used to Update the existing data in the Table
3. Delete: Used to delete the existing data in the Table
*/

-- 3.1 Insertion

/*
	Implicit Insertion Syntax: 
	insert into tableName(attribute1, attribute2, ...)
	values (value1, value2, ...)


	Explicit Insertion Syntax:
	insert into tableName values(value1, value2, ...)
*/

-- Examples:

-- Implicit:

insert into Student(ID, Fname, Lname, age, class, contactNo, height, admissionDate, Fees)
		   values (1, 'Hamza', 'Asif', 20, 14, 0310, 5.11, '04-11-2022', 35000)

select * from Student

--Explicit:

insert into Student values (2, 'Mudassir', 'Asif', 20, 14, 0317, 5.9, '03-11-2022', 125000)
insert into Student values (3, 'Rana', 'Bilal', 20, 14, 0311, 5.4, '03-11-2022', 115000)
insert into Student values (4, 'Raja', 'Ammad', 21, 14, 0317, 5.2, '03-11-2022', 135000)
insert into Student values (5, 'Ghulam', 'Mustafa', 22, 14, 0313, 5.3, '03-11-2022', 145000)
insert into Student values (6, 'Shopper', 'New Shopper', 450, 16, 0412, 1.5, '03-11-2028', 745000)
-- added new 5 records in the table

select * from Student  

-- 3.2: Delete Commad:
/*
 Syntax:
 delete tableName Where attributeName = attributeValue;
*/

--Example:
 delete Student Where Fname = 'Shopper'; -- it will delete the data where First Name was Shopper
 --					we can use any attribute here.

 -- 3.3: Update Command:

 /*
 Syntax:
 Update tableName set attributeName = 'newAttributeValue'
 where attributeName = 'oldAttributeValue'
 */

 -- Example:
 update Student set Fname = 'Mohammad'
 where Fname = 'Raja';  

 --this command will update 'Mohammad' at the Place of 'Raja'. We can update Any attribute int the table.


 -- Lab Task 4:
 /*
 Constraints:
 Primary key: Columns(attributes) that can't be null and will be unique
 Foreign key: Columns(attributes) that make a link of one table with another table
 NULL: it can't be empty
 Unique: no duplicate values
 */


 --SubTasks:
 --1. create a table and Add 10 records
 create table newStudent(
	ID int not null,
	Fname varchar(255),  --consider varchar as a string with length off 255 characters
	Lname varchar(255),
	age int,  --int is used to store integer type values i.e, 2, 3, 4, ...
	class int,
	contactNo int,
	height float, --float is used to store decimal point values, Example: 2.3, 4.6, 5.3, ...
	admissionDate Date, --Date data type is used to store date or manage The date
	Fees int,
);
insert into newStudent values (1, 'Hamza', 'Asif', 20, 14, 0310, 5.11, '04-11-2022', 35000, )
insert into newStudent values (2, 'Mudassir', 'Asif', 20, 14, 0317, 5.9, '03-11-2022', 125000)
insert into newStudent values (3, 'Rana', 'Bilal', 20, 14, 0311, 5.4, '03-11-2022', 115000)
insert into newStudent values (4, 'Raja', 'Ammad', 21, 14, 0317, 5.2, '03-11-2022', 135000)
insert into newStudent values (5, 'Ghulam', 'Mustafa', 22, 14, 0313, 5.3, '03-11-2022', 145000)
insert into newStudent values (6, 'Taha', 'Butt', 19, 14, 0313, 5.9, '03-11-2022', 95000)
insert into newStudent values (7, 'Faizan', 'Ali', 20, 14, 0311, 5.4, '03-11-2022', 115000)
insert into newStudent values (8, 'Ehsan', 'Elahi', 21, 14, 0317, 5.2, '03-11-2022', 135000)
insert into newStudent values (9, 'Ahmad', 'Raza', 22, 14, 0313, 5.3, '03-11-2022', 145000)
insert into newStudent values (10, 'Molvi', 'Mursal', 21, 16, 0312, 5.5, '03-11-2028', 245000) 

select * from newStudent

-- 2. create a Primary Key ID
-- this command will make ID a primary key in table of newStudent
alter table newStudent 
add primary key (ID);

	--2 Create a Table Teacher

	create table Teacher (
	TeacherID int primary key,
	Name varchar(255),
	Department varchar(255),
	);

	--lets add some data

	insert into Teacher values(1, 'Munawar Ahmad', 'CS')
	insert into Teacher values(2, 'Ms. Rabia Khan', 'CS')
	insert into Teacher values(3, 'Ms. Sahar Moin', 'CS')
	insert into Teacher values(4, 'Adeel Ahmad', 'CS')
	INSERT INTO Teacher (TeacherID, Name, Department) VALUES (5, 'Dr. John Smith', 'Math');
	INSERT INTO Teacher (TeacherID, Name, Department) VALUES (6, 'Prof. Emily Clark', 'Physics');
	INSERT INTO Teacher (TeacherID, Name, Department) VALUES (7, 'Ms. Sarah Johnson', 'Chemistry');
	INSERT INTO Teacher (TeacherID, Name, Department) VALUES (8, 'Mr. Michael Lee', 'Biology');
	INSERT INTO Teacher (TeacherID, Name, Department) VALUES (9, 'Dr. Laura Williams', 'History');
	INSERT INTO Teacher (TeacherID, Name, Department) VALUES (10, 'Prof. James Brown', 'Literature');
	INSERT INTO Teacher (TeacherID, Name, Department) VALUES (11, 'Ms. Anna Davis', 'Art');
	INSERT INTO Teacher (TeacherID, Name, Department) VALUES (12, 'Mr. Robert Wilson', 'Music');
	INSERT INTO Teacher (TeacherID, Name, Department) VALUES (13, 'Dr. Jessica Taylor', 'Philosophy');
	INSERT INTO Teacher (TeacherID, Name, Department) VALUES (14, 'Prof. David Martin', 'Economics');





	--3 Create a foreign key TeacherID in newStudent Table.
	--first create a column in newStudent Table
	alter table newStudent
	add TeacherID int
	--then refernce it with Teacher table
	alter table newStudent
	add foreign key (TeacherID) references Teacher(TeacherID);

	select * from newStudent


-- Lab Task 5:
-- 5.1 : Select a specific record from a table:

--example:
-- 1: 
select ID, Fname, age from newStudent

-- 2:
--get all students of age 20
select * from newStudent where age = 20
select * from newStudent where height = 5.3

-- 3:
select distinct Fees from newStudent -- get all different fees from newStudent table

 -- 5.2: Order by Clause:
 --shows table with records starting from [10-1] descending order
  Select * from newStudent
  order by ID DESC   


  -- Lab Task 6:

  /*
  Drop Column,
  Rename Column,
  Add Column,
  */

  --Example:
  -- deletes the class column (attribute)
  Alter table newStudent
  drop column class

  --rename:
--SYNTAX:
--exec sp_rename 'tableName.oldAttribute', 'newName', 'COLUMN'
  exec sp_rename 'newStudent.contactNo', 'Phone', 'COLUMN'
 
 --ADD:
 --Already performed in previous task!

 --Lab Task 7: DELETE record, DELETE all records using delete and Truncate Command

 --Delete a Single record:

 delete from newStudent
 where ID = 10

	--Delete all records using delete and Truncate:
	--they both will delete all records
	delete  from newStudent
	truncate table newStudent

	--no lab task 8

	-- lab task 9:
	--1. MAX, MIN and AVG function
	--2. JOINS

	--1: Max, minimun and average function:
	Select ID,Fname, Fees from newStudent where Fees= (select max(Fees) from newStudent)  --student with Max fees
	Select ID,Fname, Fees from newStudent where Fees= (select min(Fees) from newStudent) -- Studeng with minimum fees
	Select Fname, Lname from newStudent where admissionDate = (select min(admissionDate) from newStudent) --student who took admission at very first
	Select Fname, Lname from newStudent where admissionDate = (select max(admissionDate) from newStudent) --student who took admission at last
	Select ID,Fname, Fees from newStudent where Fees> (select AVg(Fees) from newStudent)  --Students with fees greater than average fees

	--2: JOINs

	--Basic LEFT OUTER JOIN:
	Select newStudent.ID, newStudent.Fname, newStudent.Lname, Teacher.TeacherID, Teacher.Name, Teacher.Department
	from newStudent left join Teacher on newStudent.ID = Teacher.TeacherID
	--it will select the Students and Teachers having same ID and null those teacher whose id does'nt match with students

	--Left Outer Join with Filtering

	select newStudent.ID, newStudent.Fname, newStudent.age, Teacher.TeacherID, Teacher.Name, Teacher.Department
	from newStudent Left Join Teacher on newStudent.ID = Teacher.TeacherID where newStudent.age = 20;
	--it will select the Students of Age 20 and Teachers having Same OR Different ID with Students

	--2 Right Joins

	
	--Basic Right OUTER JOIN:
	SELECT newStudent.ID, newStudent.Fname, newStudent.Lname, Teacher.TeacherID, Teacher.Name, Teacher.Department
	FROM newStudent
	RIGHT JOIN Teacher ON Teacher.TeacherID = newStudent.ID;

	--it will select the Students and Teachers having same ID and Null Students whose ID dont match with teacher's id

	--Right Outer Join with Filtering

	select newStudent.ID, newStudent.Fname, Teacher.TeacherID, Teacher.Name, Teacher.Department
	from newStudent right  Join Teacher on newStudent.ID = Teacher.TeacherID where Teacher.TeacherID > 5;
	--it will select the Students and Teachers having TeacherID > 5



	--Lab Task 10:
	--Upper func
	--Datediff func
	--AS

	--Upper:
		select upper(Fname)  as FirstName from newStudent
		select upper(Lname)  as LastName from newStudent

	--date difference
	--it will calculate the months from admission date to current of student 1
	select DATEDIFF(MONTH,getdate(), (select admissionDate from newStudent where ID = 1) )
	--it will calculate the years from admission date to current
	select DATEDIFF(Year,getdate(), (select admissionDate from newStudent where ID = 1) )
	--it will calculate the days from admission date to current
	select DATEDIFF(DAY,getdate(), (select admissionDate from newStudent where ID = 1) )

	--Sum
	select sum(Fees) as totalStudentFees from newStudent

	--Lab Task 11 Stored Procedures

	--create a table:
	set ANSI_NULLS ON
	GO
	SET ANSI_PADDING ON
	GO
	CREATE TABLE [dbo].[Members](
	[MemberID][int] primary key,
	[MemberName][varchar](255),
	[MemberCity][varchar](100),
	[MemberPhone][varchar](15),
	)
	GO
	SET ANSI_PADDING OFF
	GO

	--SELECT ALL STUDENTs PROCEDURE:
	CREATE PROCEDURE getAllStudents
	AS
	BEGIN
	SET NOCOUNT ON
	SELECT * FROM newStudent
	END 
	GO
	--run the procedure
	EXEC getAllStudents

	--Select Students with teacherId
	Create Procedure getStudent
	@TeacherID int
	AS 
	BEGIN
	SET NOCOUNT ON;
	SELECT * FROM newStudent
	WHERE TeacherID = @TeacherID
	END
	GO

	EXEC getStudent
	1

	--insert Teacher
	Create procedure InsertTeacher
	@TeacherID int,
	@TeacherName varchar(255),
	@TeacherDepartment varchar(255)

	AS
	BEGIN
	SET NOCOUNT ON;

	INSERT INTO Teacher VALUES(@TeacherID, @TeacherName, @TeacherDepartment)
	END
	GO


	EXEC InsertTeacher
	15,
	'Hamza Asif',
	'Computer Sciences'

	select * from Teacher
	
	--update teacher

	Create procedure updateTeacherWithID
	@ID int,
	@TeacherName varchar(255),
	@Department varchar(255)
	AS
	BEGIN
	SET NOCOUNT ON;
	update Teacher 
	set Name = @TeacherName,
	Department = @Department
	where TeacherID = @ID
	END 
	GO

	EXEC updateTeacherWithID
	15,
	'Hamza',
	'CS'


	--Delete Teacher from table
	CREATE PROCEDURE deleteTeacherByID
	@ID int
	AS
	BEGIN
	SET NOCOUNT ON;
	delete Teacher
	where TeacherID = @ID
	END
	GO

	EXEC deleteTeacherByID
	15

	select * from Teacher

	
	--Practical 12 Triggers
	-- Create the employees table
	CREATE TABLE employees (
		employee_id INT PRIMARY KEY IDENTITY(1,1),
		name VARCHAR(50),
		position VARCHAR(50),
		salary DECIMAL(10, 2)
	);
	GO

	-- Insert initial values into employees table
	INSERT INTO employees (name, position, salary) VALUES ('John Doe', 'Manager', 75000.00);
	INSERT INTO employees (name, position, salary) VALUES ('Jane Smith', 'Developer', 65000.00);
	INSERT INTO employees (name, position, salary) VALUES ('Alice Johnson', 'Designer', 55000.00);
	INSERT INTO employees (name, position, salary) VALUES ('Bob Brown', 'Analyst', 50000.00);
	INSERT INTO employees (name, position, salary) VALUES ('Charlie Green', 'HR Specialist', 45000.00);
	INSERT INTO employees (name, position, salary) VALUES ('Diana Prince', 'Consultant', 85000.00);
	INSERT INTO employees (name, position, salary) VALUES ('Evan White', 'Intern', 30000.00);
	INSERT INTO employees (name, position, salary) VALUES ('Fiona Black', 'Sales Executive', 70000.00);
	INSERT INTO employees (name, position, salary) VALUES ('George Blue', 'Marketing Manager', 80000.00);
	INSERT INTO employees (name, position, salary) VALUES ('Hannah Gold', 'Accountant', 60000.00);
	GO

	-- Step 2: Create the AFTER INSERT trigger
	CREATE TRIGGER trg_after_insert_employee
	ON employees
	AFTER INSERT
	AS
	BEGIN
		DECLARE @EmployeeID INT;
		DECLARE @EmployeeName VARCHAR(50);
    
		SELECT @EmployeeID = inserted.employee_id, @EmployeeName = inserted.name
		FROM inserted;

		PRINT 'AFTER INSERT Trigger: New employee ' + @EmployeeName + ' with ID ' + CAST(@EmployeeID AS VARCHAR) + ' has been added.';
	END;
	GO

	-- Insert a new record to see the trigger in action
	INSERT INTO employees (name, position, salary) VALUES ('Ivy Adams', 'Legal Advisor', 90000.00);
	GO

	--  Select the records from the table to verify the insertion
	SELECT * FROM employees;
	GO


	--2
	-- Create the AFTER UPDATE trigger
	CREATE TRIGGER trg_after_update_employee
	ON employees
	AFTER UPDATE
	AS
	BEGIN
		DECLARE @EmployeeID INT;
		DECLARE @EmployeeName VARCHAR(50);
    
		SELECT @EmployeeID = inserted.employee_id, @EmployeeName = inserted.name
		FROM inserted;

		PRINT 'AFTER UPDATE Trigger: Employee ' + @EmployeeName + ' with ID ' + CAST(@EmployeeID AS VARCHAR) + ' has been updated.';
	END;
	GO

	-- Update a record to see the trigger in action
	UPDATE employees
	SET salary = 95000.00
	WHERE name = 'Diana Prince';
	GO

	--  Select the records from the table to verify the update
	SELECT * FROM employees;
	GO

	--3
	-- Create the AFTER DELETE trigger
	CREATE TRIGGER trg_after_delete_employee
	ON employees
	AFTER DELETE
	AS
	BEGIN
		DECLARE @EmployeeID INT;
		DECLARE @EmployeeName VARCHAR(50);
    
		SELECT @EmployeeID = deleted.employee_id, @EmployeeName = deleted.name
		FROM deleted;

		PRINT 'AFTER DELETE Trigger: Employee ' + @EmployeeName + ' with ID ' + CAST(@EmployeeID AS VARCHAR) + ' has been deleted.';
	END;
	GO

	--Delete a record to see the trigger in action
	DELETE FROM employees
	WHERE name = 'Alice Johnson';
	GO

	--Select the remaining records from the table to verify the deletion
	SELECT * FROM employees;
	GO

	--4
	--BEFORE INSERT Trigger (Using INSTEAD OF)
	--This trigger will execute before inserting a new record into the employees table.
	CREATE TRIGGER trg_before_insert_employee
	ON employees
	INSTEAD OF INSERT
	AS
	BEGIN
		PRINT 'BEFORE INSERT Trigger: Attempting to insert a new employee.';
		-- Additional validation or logic before insert can be added here.
		-- Insert statement for the employees table should be added here if required.
		INSERT INTO employees (name, position, salary)
		SELECT name, position, salary FROM inserted;
	END;


	--5
	--BEFORE UPDATE Trigger (Using INSTEAD OF):
	--This trigger will execute before updating a record in the employees table.
	CREATE TRIGGER trg_before_update_employee
	ON employees
	INSTEAD OF UPDATE
	AS
	BEGIN
		PRINT 'BEFORE UPDATE Trigger: Attempting to update an employee.';
		-- Additional validation or logic before update can be added here.
		-- Update statement for the employees table should be added here if required.
		UPDATE e
		SET e.name = i.name,
			e.position = i.position,
			e.salary = i.salary
		FROM employees e
		JOIN inserted i ON e.employee_id = i.employee_id;
	END;

	SELECT * FROM employees;

	--6
	--BEFORE DELETE Trigger (Using INSTEAD OF):
	--This trigger will execute before deleting a record from the employees table.
	CREATE TRIGGER trg_before_delete_employee
	ON employees
	INSTEAD OF DELETE
	AS
	BEGIN
		PRINT 'BEFORE DELETE Trigger: Attempting to delete an employee.';
		-- Additional validation or logic before delete can be added here.
		-- Delete statement for the employees table should be added here if required.
		DELETE e
		FROM employees e
		JOIN deleted d ON e.employee_id = d.employee_id;
	END;

	GO

	Delete employees
	where employee_id = 10
	select * from employees;

	--Practical 13
	--VIEWS
	-- Create the table
	CREATE TABLE Products (
		ProductID INT PRIMARY KEY,
		ProductName VARCHAR(50),
		Category VARCHAR(50),
		UnitPrice DECIMAL(10, 2),
		Discontinued BIT
	);

	-- Insert sample data
	INSERT INTO Products (ProductID, ProductName, Category, UnitPrice, Discontinued)
	VALUES 
		(1, 'Chai', 'Beverages', 18.00, 0),
		(2, 'Chang', 'Beverages', 19.00, 1),
		(3, 'Aniseed Syrup', 'Condiments', 10.00, 0),
		(4, 'Chef Anton''s Cajun Seasoning', 'Condiments', 22.00, 0),
		(5, 'Chef Anton''s Gumbo Mix', 'Condiments', 21.35, 1),
		(6, 'Grandma''s Boysenberry Spread', 'Condiments', 25.00, 0),
		(7, 'Uncle Bob''s Organic Dried Pears', 'Produce', 30.00, 0),
		(8, 'Northwoods Cranberry Sauce', 'Condiments', 40.00, 0),
		(9, 'Mishi Kobe Niku', 'Meat/Poultry', 97.00, 1),
		(10, 'Ikura', 'Seafood', 31.00, 0);

	--Syntax of the View
	--CREATE OR REPLACE VIEW view_name AS
	--SELECT column1, column2, ...
	--FROM table_name
	--WHERE condition;

	--1
	--"Current Product List" View
	--Lists all active products (products that are not discontinued) from the Products table.
		CREATE VIEW [Current Product List] AS
	SELECT ProductID, ProductName, Category
	FROM Products
	WHERE Discontinued = 0;
	SELECT * FROM [Current Product List];
	--2
	--"Products Above Average Price" View
	--Selects every product in the Products table with a unit price higher than the average unit price.
	CREATE VIEW [Products Above Average Price] AS
	SELECT ProductName, UnitPrice
	FROM Products
	WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM Products);
	SELECT * FROM [Products Above Average Price];

	--3
	--Category Sales
	--This view calculates the total sales for each category based on the Products table.
	--The view aggregates the sales data by category, providing a sum of the unit prices for each category.
	CREATE VIEW [Category Sales] AS
	SELECT Category, SUM(UnitPrice) AS CategorySales
	FROM Products
	GROUP BY Category;
	SELECT * FROM [Category Sales];


	--Lab Task 14:
	
	CREATE TABLE CUSTOMERS (
		ID INT,
		NAME VARCHAR(255),
		AGE INT,
		ADDRESS VARCHAR(255),
		SALARY DECIMAL(10, 2)
	);

	INSERT INTO CUSTOMERS (ID, NAME, AGE, ADDRESS, SALARY) VALUES
	(1, 'Ramesh', 32, 'Ahmedabad', 2000.00),
	(2, 'Khilan', 25, 'Delhi', 1500.00),
	(3, 'Kaushik', 23, 'Kota', 2000.00),
	(4, 'Chaitali', 25, 'Mumbai', 6500.00),
	(5, 'Hardik', 27, 'Bhopal', 8500.00),
	(6, 'Komal', 22, 'MP', 4500.00),
	(7, 'Muffy', 24, 'Indore', 10000.00);

	SELECT * FROM CUSTOMERS;

	--Commit Transaction

	BEGIN TRANSACTION;

	DELETE FROM CUSTOMERS
	WHERE AGE = 25;

	COMMIT;

	SELECT * FROM CUSTOMERS;


	CREATE TABLE CUSTOMERS1 (
		ID INT,
		NAME VARCHAR(255),
		AGE INT,
		ADDRESS VARCHAR(255),
		SALARY DECIMAL(10, 2)
	);

	INSERT INTO CUSTOMERS1 (ID, NAME, AGE, ADDRESS, SALARY) VALUES
	(1, 'Ramesh', 32, 'Ahmedabad', 2000.00),
	(2, 'Khilan', 25, 'Delhi', 1500.00),
	(3, 'Kaushik', 23, 'Kota', 2000.00),
	(4, 'Chaitali', 25, 'Mumbai', 6500.00),
	(5, 'Hardik', 27, 'Bhopal', 8500.00),
	(6, 'Komal', 22, 'MP', 4500.00),
	(7, 'Muffy', 24, 'Indore', 10000.00);

	SELECT * FROM CUSTOMERS1;

	--Rollback Transaction
	BEGIN TRANSACTION;
	ROLLBACK;

	DELETE FROM CUSTOMERS
	WHERE AGE = 25;
	SELECT * FROM CUSTOMERS1;

	--SavePoint Transaction
	BEGIN TRANSACTION;
	SAVE TRANSACTION SP1;
	DELETE FROM CUSTOMERS1 WHERE ID=1;
	SAVE TRANSACTION SP2;
	DELETE FROM CUSTOMERS1 WHERE ID=2;
	SAVE TRANSACTION SP3;
	DELETE FROM CUSTOMERS1 WHERE ID=3;
	ROLLBACK TRANSACTION  SP2;
	SELECT * FROM CUSTOMERS1;
	COMMIT;

	---TASK
	-- Create Employee table
	CREATE TABLE Employee (
		EmployeeID INT PRIMARY KEY,
		FirstName VARCHAR(50),
		LastName VARCHAR(50),
		Department VARCHAR(50),
		Salary DECIMAL(10, 2)
	);

	-- Insert sample data into Employee table
	INSERT INTO Employee (EmployeeID, FirstName, LastName, Department, Salary) VALUES
	(1, 'John', 'Doe', 'HR', 50000.00),
	(2, 'Jane', 'Smith', 'Finance', 60000.00),
	(3, 'Michael', 'Johnson', 'IT', 55000.00),
	(4, 'Emily', 'Brown', 'Marketing', 52000.00),
	(5, 'David', 'Wilson', 'Operations', 48000.00);

	Select * from Employee;

	--1.Deletion Task:
	BEGIN TRANSACTION;
	DELETE FROM Employee WHERE EmployeeID = 1;
	COMMIT;
	Select * from Employee;

	--2.Rollback Task:
	BEGIN TRANSACTION;
	INSERT INTO Employee (EmployeeID, FirstName, LastName, Department, Salary) VALUES (6, 'Sarah', 'Jones', 'Sales', 58000.00);
	ROLLBACK;
	Select * from Employee;

	--3.Savepoint Task:
	BEGIN TRANSACTION;
	INSERT INTO Employee (EmployeeID, FirstName, LastName, Department, Salary) VALUES (7, 'Matthew', 'Davis', 'IT', 56000.00);
	SAVE TRANSACTION SP1;
	UPDATE Employee SET Salary = 57000.00 WHERE EmployeeID = 7;
	ROLLBACK TRANSACTION  SP1;
	Select * from Employee;

	--4.Read_only Task:
	SELECT * FROM Employee;

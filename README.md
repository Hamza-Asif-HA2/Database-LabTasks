Lab Task 1:
Create Database: Creates a database named labTasks and switches to using it.
Create Table: Defines a table named Students with columns for student information like ID, first name (Fname), last name (Lname), age, class, contact number (contactNo), height, and admission date (admissionDate).
Lab Task 2:
Alter Table: Adds a new column Fees to the Students table.
Truncate Table: Deletes all rows from the Student table.
Drop Table: Deletes the Students table.
Rename Table: Renames the Students table to Student and selects all records from it.
Lab Task 3 (DML Commands):
Insert: Inserts records into the Student table.
Delete: Deletes a record from the Student table based on a condition (Fname = 'Shopper').
Update: Updates a record in the Student table, changing the first name (Fname) of a student from 'Raja' to 'Mohammad'.
Lab Task 4 (Constraints):
Defines concepts like Primary Key and Foreign Key, although the code provided does not explicitly demonstrate their application.

Lab Task 5:
Select: Retrieves specific columns (ID, Fname, age) from the newStudent table.
Where Clause: Filters records based on conditions (e.g., age = 20, height = 5.3).
Distinct: Retrieves unique values from the Fees column of the newStudent table.
Order By: Orders records in descending order based on the ID column of the newStudent table.
Lab Task 6:
Drop Column: Drops the class column from the newStudent table.
Rename Column: Renames the contactNo column to Phone in the newStudent table.
Lab Task 7:
Demonstrates how to delete a single record (ID = 10) from the newStudent table using DELETE and TRUNCATE to delete all records.

Lab Task 9:
Max, Min, Avg Functions: Retrieves maximum and minimum Fees values from newStudent and computes the average Fees.
Joins: Performs various types of SQL joins (LEFT OUTER JOIN, RIGHT OUTER JOIN) between newStudent and Teacher tables.
Lab Task 10:
Upper Function: Converts values in Fname and Lname columns of newStudent to uppercase.
DateDiff Function: Calculates the difference in months, years, and days between the current date (getdate()) and admissionDate for a specific student (ID = 1).
Sum Function: Computes the sum of all Fees in the newStudent table.
Lab Task 11 (Stored Procedures):
Defines and demonstrates the creation and execution of stored procedures for retrieving and modifying data in the newStudent and Teacher tables.

Lab Task 12 (Triggers):
Demonstrates the creation and use of SQL triggers (AFTER INSERT, AFTER UPDATE, AFTER DELETE, INSTEAD OF INSERT, INSTEAD OF UPDATE, INSTEAD OF DELETE) on the employees table, though the schema is not fully shown.

Lab Task 13 (Views):
Create View: Defines three views (Current Product List, Products Above Average Price, Category Sales) based on the Products table.
Lab Task 14 (Transactions):
Demonstrates the use of transactions (BEGIN TRANSACTION, COMMIT) to delete records from the CUSTOMERS table.

Each section introduces SQL concepts and commands, providing examples and explanations to facilitate learning database management with SQL Server and T-SQL.

CREATE TABLE FunctionEmployee
(
EmpID int PRIMARY KEY,
FirstName varchar(50) NULL,
LastName varchar(50) NULL,
Salary int NULL,
Address varchar(100) NULL, 
)

Insert into FunctionEmployee(EmpID,FirstName,LastName,Salary,Address) Values(1,'Mohan','Chauahn',22000,'Delhi');
Insert into FunctionEmployee(EmpID,FirstName,LastName,Salary,Address) Values(2,'Asif','Khan',15000,'Delhi');
Insert into FunctionEmployee(EmpID,FirstName,LastName,Salary,Address) Values(3,'Bhuvnesh','Shakya',19000,'Noida');
Insert into FunctionEmployee(EmpID,FirstName,LastName,Salary,Address) Values(4,'Deepak','Kumar',19000,'Noida');

select * from FunctionEmployee

CREATE FUNCTION fnGetEmpFullName 
(
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50)
)
RETURNS VARCHAR(100)
AS
BEGIN
    DECLARE @FullName VARCHAR(100);
    
    SET @FullName = @FirstName + ' ' + @LastName;
    
    RETURN @FullName;
END;

select dbo.fnGetEmpFullName (FirstName,LastName) as FullName , Salary from FunctionEmployee
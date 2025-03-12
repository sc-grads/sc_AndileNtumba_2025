SELECT TOP (1000) [EmpID]
      ,[EmpName]
      ,[EmpTitle]
  FROM [AdventureWorks2016].[dbo].[Employee]


  CREATE TRIGGER EmployeeInsert
ON Employee
AFTER INSERT
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    -- Insert statements for trigger here
    INSERT INTO EmployeeTriggerHistory (EmployeeID, Action)
    SELECT i.EmployeeID, 'Insert'
    FROM inserted i;

END
GO

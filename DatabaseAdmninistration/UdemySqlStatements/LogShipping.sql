SELECT TOP (1000) [EmpID]
        ,[EmpName]
        ,[SalesNumber]
        ,[ItemSold]
    FROM [AdventureWorks2016].[dbo].[Sales]


    update Sales set itemsold = 9999 where empid = 3 and salesnumber = 8989

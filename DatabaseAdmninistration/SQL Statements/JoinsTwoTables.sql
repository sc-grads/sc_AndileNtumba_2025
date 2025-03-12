SELECT * FROM [dbo].[Employee] 

SELECT * FROM[dbo].[Sales]

SELECT * FROM [dbo].[Employee] e 
JOIN [dbo].[Sales] s
on e.empid = s.empid

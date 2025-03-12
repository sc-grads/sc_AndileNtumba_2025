USE AdventureWorks2016;

-- Total Sales Amount
SELECT 
    SUM(TotalDue) AS TotalSales
FROM Sales.SalesOrderHeader;

-- Average Order Value
SELECT 
    AVG(TotalDue) AS AverageOrderValue
FROM Sales.SalesOrderHeader;

-- Maximum and Minimum Order Values
SELECT 
    MAX(TotalDue) AS HighestOrderValue,
    MIN(TotalDue) AS LowestOrderValue
FROM Sales.SalesOrderHeader;

-- Total Number of Orders per Customer
SELECT 
    CustomerID,
    COUNT(SalesOrderID) AS TotalOrders,
    SUM(TotalDue) AS TotalSpent
FROM Sales.SalesOrderHeader
GROUP BY CustomerID
ORDER BY TotalOrders DESC;

-- Monthly Sales Summary
SELECT 
    YEAR(OrderDate) AS OrderYear,
    MONTH(OrderDate) AS OrderMonth,
    SUM(TotalDue) AS MonthlySales,
    COUNT(SalesOrderID) AS TotalOrders
FROM Sales.SalesOrderHeader
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
ORDER BY OrderYear DESC, OrderMonth DESC;

-- Sales by Territory
SELECT 
    TerritoryID,
    SUM(TotalDue) AS TerritorySales,
    COUNT(SalesOrderID) AS TotalOrders
FROM Sales.SalesOrderHeader
GROUP BY TerritoryID
ORDER BY TerritorySales DESC;

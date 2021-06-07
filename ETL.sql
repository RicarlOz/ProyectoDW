USE NorthwindDW
GO

--DimCustomer
INSERT INTO DimCustomer
SELECT c.CustomerID, c.CompanyName, c.City, c.Country, c.Region
FROM NorthwindDB.dbo.Customers c;

UPDATE DimCustomer SET Region = 'America' 
WHERE Country IN ('Argentina', 'Mexico')
AND Region IS NULL;

UPDATE DimCustomer SET Region = 'Europe' 
WHERE Country IN ('Austria', 'Belgium', 'Denmark', 'Finland', 'France', 'Germany', 'Italy', 'Norway', 'Poland', 'Portugal', 'Spain', 'Sweden', 'Switzerland', 'UK')
AND Region IS NULL;

--DimEmployee
INSERT INTO DimEmployee
SELECT e.EmployeeID, e.FirstName + ' ' + e.LastName AS Name, e.City, e.Country, e.Region, e.HireDate
FROM NorthwindDB.dbo.Employees e;

UPDATE DimEmployee SET Region = 'Europe' 
WHERE Country IN ('UK')
AND Region IS NULL;

--DimProduct
INSERT INTO DimProduct
SELECT p.ProductID, p.ProductName, c.CategoryName, s.CompanyName, s.Address, s.City, s.Region, s.PostalCode, s.Country
FROM NorthwindDB.dbo.Products p
JOIN NorthwindDB.dbo.Categories c ON p.CategoryID = c.CategoryID
JOIN NorthwindDB.dbo.Suppliers s ON p.SupplierID = s.SupplierID;

UPDATE DimProduct SET Region = 'America' 
WHERE Country IN ('Brazil')
AND Region IS NULL;

UPDATE DimProduct SET Region = 'Asia' 
WHERE Country IN ('Japan', 'Singapore')
AND Region IS NULL;

UPDATE DimProduct SET Region = 'Europe' 
WHERE Country IN ('Denmark', 'Finland', 'France', 'Germany', 'Italy', 'Netherlands', 'Norway', 'Sweden', 'UK')
AND Region IS NULL;


--DimTime
INSERT INTO DimTime
SELECT o.OrderDate
FROM NorthwindDB.dbo.Orders o
GROUP BY o.OrderDate;


--FactSales
INSERT INTO FactSales
SELECT od.ProductID, o.EmployeeID, o.CustomerID, o.OrderDate, od.OrderID, od.Quantity, od.UnitPrice, od.Discount, (od.Quantity * od.UnitPrice * od.Discount), (od.Quantity * od.UnitPrice * (1 - od.Discount))
FROM NorthwindDB.dbo.[Order Details] od
JOIN NorthwindDB.dbo.Orders o ON od.OrderID = o.OrderID;
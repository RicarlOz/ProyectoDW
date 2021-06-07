create database NorthwindDW
use NorthwindDW


create table DimProduct (
ProductID    int, --products
ProductName  varchar (40),
categoryName varchar (15), --categories
SupplierName varchar(40), --suppliers
Address varchar(60),
City varchar(15),
Region varchar(15),
PostalCode varchar(10),
Country varchar(15),
primary key (productID)
);

create table DimTime (
 OrderDate date,
 primary key (OrderDate)
 );

create table DimCustomer (
CustomerID char(5), --customers
CustomerName varchar(40),
City varchar(15),
Country varchar(15),
Region varchar(15),
primary key (CustomerID)
);

create table DimEmployee (
EmployeeID int, --employees
Name varchar(35),
City varchar(15),
Country varchar(15),
Region varchar(15),
Hiredate date,
primary key (EmployeeID)
);

--tabla de Hechos FACT SALES puede ser necesario agregar-quitar columnas
-- OrderId  es llamda dimension degenerada pero es necesario solo para efectos de la carga de los datos
create table FactSales (
ProductID       int,
EmployeeID      int,
CustomerID      char(5),
orderDate       date, -- orders
OrderID         int,                               
Quantity        smallint, --order details
unitPrice       money,
discountPercent real, --original
discountAmount  money, --calculado
total           money, 
primary key (ProductID, EmployeeID, CustomerID, orderDate),
foreign key (ProductID)  references dbo.DimProduct(productID),
foreign key (EmployeeID) references dbo.DimEmployee(employeeID),
foreign key (CustomerID) references dbo.DimCustomer(CustomerID),
foreign key (orderDate)  references dbo.DimTime(orderDate)
);

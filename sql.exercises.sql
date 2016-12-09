/*

 Task 1. Write a query to return all category names with their descriptions from the Categories table;
SELECT CategoryName, Description
FROM Categories

 Task2. Write a query to return the contact name, customer id, company name and city name of all Customers in London;
SELECT ContactName, CustomerID, CompanyName, City
FROM Customers WHERE City ='London'

 Task3. Write a query to return all available columns in the Suppliers tables for the marketing managers and sales representatives 
that have a FAX number;
SELECT * FROM Suppliers
WHERE (ContactTitle = 'Sales Representative' OR ContactTitle = 'Marketing Manager') 
AND Fax != 'NULL'

 Task 4. Write a query to return a list of customer id's from the Orders table with required dates between Jan 1, 1997 and Dec 31, 1997 and with 
freight under 100 units;
SELECT CustomerID FROM Orders
WHERE RequiredDate BETWEEN '1997-01-01' AND '1997-12-31' AND Freight <= 100

 Task 5. Write a query to return a list of company names and contact names of all customers from Mexico, Sweden and Germany;
SELECT CompanyName, ContactName
FROM Customers
WHERE Country = 'Mexico' OR Country = 'Sweden' OR Country = 'Germany'

 Task 6. Write a query to return a count of the number of discontinued products in the Products table;
SELECT COUNT (*) FROM Products
WHERE Discontinued = 1 

 Task 7. Write a query to return a list of category names and descriptions of all categories beginning with 'Co' from the Categories table;
SELECT CategoryName, Description
FROM Categories WHERE CategoryName LIKE 'Co%'

 Task 8. Write a query to return all the company names, city, country and postal code from the Suppliers table 
with the word 'rue' in their address. The list should ordered alphabetically by company name;
SELECT CompanyName, City, Country, PostalCode
FROM Suppliers WHERE Address LIKE '%rue%'
ORDER BY CompanyName ASC'

 Task 9. Write a query to return the product id and the quantity ordered for each product labelled as 'Quantity Purchased' in the Order 
Details table ordered by the Quantity Purchased in descending order;
SELECT ProductID, Quantity AS 'Quantity Purchased'
FROM [Order Details]
ORDER BY Quantity DESC

 Task 10. Write a query to return the company name, address, city, postal code and country of all customers with orders that shipped using Speedy 
Express, along with the date that the order was made;
SELECT Customers.CompanyName, Address, City, PostalCode, Country, OrderDate
FROM Orders
INNER JOIN Customers
ON Customers.CustomerID = Orders.CustomerID
WHERE ShipVia = 1 order by OrderDate 

 Task 11. Write a query to return a list of Suppliers containing company name, contact name, contact title and region field.

NOPE

 Task 12. Write a query to return all product names from the Products table that are condiments.
SELECT ProductName FROM Products
INNER JOIN Categories
ON Products.CategoryID=Categories.CategoryID
WHERE CategoryName = 'condiments' 

 Task 13. Write a query to return a list of customer names who have no orders in the Orders table.
SELECT ContactName
FROM Customers
WHERE  (select count(*) from Orders where Orders.CustomerID = Customers.CustomerID) = 0

 Task 14. Write a query to add a shipper named 'Amazon' to the Shippers table using SQL.
INSERT INTO Shippers(CompanyName)
VALUES ('Amazon');

 Task 15. Write a query to change the company name from 'Amazon' to 'Amazon Prime Shipping' in the Shippers table using SQL.
 UPDATE Shippers
SET CompanyName = 'Amazon Prime Shipping'
WHERE CompanyName = 'Amazon';

 Task 16. Write a query to return a complete list of company names from the Shippers table. Include freight totals rounded to 
the nearest whole number for each shipper from the Orders table for those shippers with orders.
SELECT Orders.ShipName, CONVERT(int,ROUND(SUM(Orders.Freight),0)) AS 'Freight Total'
FROM Shippers
LEFT JOIN Orders
ON Shippers.ShipperID = Orders.ShipVia 
GROUP BY Orders.ShipName;

 Task 17. Write a query to return all employee first and last names from the Employees table by combining the 2 columns aliased as
 'DisplayName'. The combined format should be 'LastName, FirstName'.
 SELECT concat(LastName, ', ',FirstName) AS DisplayName
FROM Employees;

 Task 18. Write a query to add yourself to the Customers table with an order for 'Grandma's Boysenberry Spread'.
 INSERT INTO Customers (CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax)
 VALUES ('RENNIE', 'Slen', 'Alex Rennie', 'SQL devil', 'OB', 'SD', 'CA', 92107, 'USA', '(123)456-7890', NULL);

 Task 19. Write a query to remove yourself and your order from the database.
DELETE FROM Customers
WHERE CustomerID = 'RENNIE';

 Task. 20. Write a query to return a list of products from the Products table along with the total 
units in stock for each product. Include only products with TotalUnits greater than 100.
SELECT ProductName, UnitsInStock
FROM Products
WHERE UnitsInStock > 100;
*/











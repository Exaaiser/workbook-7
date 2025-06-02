-- 1. What is the name of the table that holds the items Northwind sells?
SELECT * FROM PRODUCTS;

-- 2. Write a query to list the product id, product name, and unit price of every
-- product.
SELECT ProductID, ProductName, UnitPrice From Products;

-- 3. Write a query to list the product id, product name, and unit price of every
-- product. Except this time, order then in ascending order by price.
SELECT productId, productName, unitPrice FROM products ORDER BY unitPrice ASC;

-- 4. What are the products that we carry where the unit price is $7.50 or less?
SELECT productId, productName, unitPrice FROM products WHERE unitPrice <= 7.50;

-- 5. What are the products that we carry where we have at least 100 units on
-- hand? Order them in descending order by price.
SELECT productId, productName, unitPrice FROM products WHERE UnitsInStock >= 100 ORDER BY unitPrice DESC;

-- 6. What are the products that we carry where we have at least 100 units on
-- hand? Order them in descending order by price. If two or more have the
-- same price, list those in ascending order by product name.
SELECT productId, productName, unitPrice FROM products WHERE unitsInStock >= 100 ORDER BY unitPrice DESC, productName ASC;

-- 7. What are the products that we carry where we have no units on hand, but 1
-- or more units of them on backorder? Order them by product name.
SELECT ProductName FROM Products  WHERE UnitsInStock <1 ORDER BY ProductName;

-- 8. What is the name of the table that holds the types (categories) of the items
-- Northwind sells?

SELECT CategoryName FROM Categories;

-- 9. Write a query that lists all of the columns and all of the rows of the
-- categories table? What is the category id of seafood?
SELECT ProductName, CategoryID = 8 FROM  Products;


-- 10. Examine the Products table. How does it identify the type (category) of
-- each item sold? Write a query to list all of the seafood items we carry.
SELECT ProductName, CategoryID, UnitsOnOrder FROM Products;

-- 11. What are the first and last names of all of the Northwind employees?
SELECT Lastname, FirstName FROM Employees;


-- 12. What employees have "manager" in their titles?
SELECT * FROM Employees WHERE Title LIKE "%Manager";

-- 13. List the distinct job titles in employees.
SELECT Title FROM Employees;

-- 14. What employees have a salary that is between $200 0 and $2500?


-- 15. List all of the information about all of Northwind's suppliers.
SELECT * FROM Suppliers;

-- 16. Examine the Products table. How do you know what supplier supplies
-- each product? Write a query to list all of the items that "Tokyo Traders"
-- supplies to Northwind

SELECT productId, productName, unitPrice
FROM products WHERE supplierId = ( SELECT supplierId FROM suppliers WHERE companyName = 'Tokyo Traders' )
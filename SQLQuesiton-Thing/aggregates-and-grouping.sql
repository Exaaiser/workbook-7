USE northwind;

-- 1. How many suppliers are there? Use a query!
SELECT COUNT(*) AS supplierCount FROM suppliers;
SELECT SupplierID  From Suppliers;

-- 2. What is the sum of all the employee's salaries?
SELECT SUM(salary) AS totalSalaries FROM employees;


-- 3. What is the price of the cheapest item that Northwind sells?
SELECT MIN(unitPrice) AS cheapestPrice FROM products;


-- 4. What is the average price of items that Northwind sells?
SELECT AVG(unitPrice) AS avaragePrice FROM products;


-- 5. What is the price of the most expensive item that Northwind sells?
SELECT max(unitPrice) AS expensivePrice FROM products;


-- 6. What is the supplier ID of each supplier and the number of items they
-- supply? You can answer this query by only looking at the Products table.
SELECT supplierId, COUNT(*) AS itemCount FROM products GROUP BY supplierId;


-- 7. What is the category ID of each category and the average price of each item
-- in the category? You can answer this query by only looking at the Products
-- table.
SELECT categoryId, AVG(unitPrice) AS averagePrice FROM products GROUP BY categoryId;


-- 8. For suppliers that provide at least 5 items to Northwind, what is the
-- supplier ID of each supplier and the number of items they supply? You
-- can answer this query by only looking at the Products table.
SELECT supplierId, COUNT(*) AS itemCount FROM products GROUP BY supplierId HAVING COUNT(*) >= 5;



-- 9. List the product id, product name, and inventory value (calculated by
-- multiplying unit price by the number of units on hand). Sort the results in
-- descending order by value. If two or more have the same value, order by
-- product name.

SELECT productId, productName, unitPrice * unitsInStock AS inventoryValue FROM products ORDER BY inventoryValue DESC, productName 

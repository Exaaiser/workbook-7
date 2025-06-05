use northwind;

-- 1. Add a new supplier.
INSERT INTO Suppliers (CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone)
VALUES ('Exadus Imports', 'Umut T.', 'Owner', '123 Panthea St.', 'Izmir', NULL, '35000', 'Turkey', '+90 555 555 55 55');

select * from suppliers;


-- 2. Add a new product provided by that supplier
SELECT SupplierID FROM Suppliers WHERE CompanyName = 'Exadus Imports';



-- 3. List all products and their suppliers.
SELECT ProductName, CompanyName
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID;


-- 4. Raise the price of your new product by 15%.
UPDATE Products
SET UnitPrice = UnitPrice * 1.15
WHERE ProductName = 'Panthea Olives';



-- 5. List the products and prices of all products from that supplier.
SELECT ProductName, UnitPrice
FROM Products
WHERE SupplierID = (
  SELECT SupplierID FROM Suppliers WHERE CompanyName = 'Exadus Imports'
);


-- 6. Delete the new product.
DELETE FROM Products
WHERE ProductName = 'Panthea Olives';


-- 7. Delete the new supplier.
DELETE FROM Suppliers
WHERE CompanyName = 'Exadus Imports';


-- 8. List all products.
SELECT * FROM Products;


-- 9. List all suppliers.
SELECT * FROM Suppliers;
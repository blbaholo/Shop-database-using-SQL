\c shop
/* SELECT ALL records from table Customers. */
SELECT *
FROM Customers;

/* SELECT records only from the name column in the Customers table. */
SELECT FirstName
FROM Customers;

/* Show the full name of the Customer whose CustomerID is 1. */
SELECT FirstName
FROM Customers
WHERE CustomerID = 1;

/* UPDATE the record for CustomerID = 1 on the Customer table so that the name is “Lerato Mabitso”. */
UPDATE Customers
SET FirstName='Lerato', LastName='Mabitso'
WHERE CustomerID = 1;

/* DELETE the record from the Customers table for customer 2 (CustomerID = 2). */
DELETE
FROM Customers
WHERE CustomerID = 2;

/* Select all unique statuses from the Orders table and get a count of the number of orders for each unique status. */
SELECT Status, COUNT (*)
FROM Orders
GROUP BY Status;

/* Return the MAXIMUM payment made on the PAYMENTS table. */
SELECT MAX(Amount) AS MaxAmount
FROM Payments;

/* Select all customers from the “Customers” table, sorted by the “Country” column. */
SELECT *
FROM Customers
ORDER BY Country;

/* Select all products with a price BETWEEN R100 and R600. */
SELECT *
FROM Products
WHERE BuyPrice >= 100 AND BuyPrice <= 600;

/*Select all fields from “Customers” where the country is “Germany” AND the city is “Berlin”. */
SELECT *
FROM Customers
WHERE Country = 'Germany' AND City = 'Berlin';

/* Select all fields from “Customers” where the city is “Cape Town” OR “Durban”. */
SELECT *
FROM Customers
WHERE City = 'Cape Town' OR City = 'Durban';

/* Select all records from Products where the Price is GREATER than R500. */
SELECT *
FROM Products
WHERE BuyPrice >= 500;

/* Return the sum of the Amounts on the Payments table. */
SELECT SUM(Amount) AS SumOfAmounts
FROM Payments;

/* Count the number of shipped orders in the Orders table. */
SELECT COUNT (Status) AS Number0fShippedOrders
FROM Orders
WHERE Status = 'Shipped';

/* Return the average price of all Products, in Rands and Dollars (assume the exchange rate is R12 to the Dollar). */
SELECT round(AVG(BuyPrice), 2) AS AveragePriceInRands, round(AVG(BuyPrice/12), 2) AS AveragePriceInDollars
FROM Products;

/* Using INNER JOIN create a query that selects all Payments with Customer information. */
SELECT *
FROM Customers INNER JOIN Payments
ON Customers.CustomerID=Payments.CustomerId;

/* Select all products that have turnable front wheels. */
SELECT *
FROM Products
WHERE Description ILIKE '%Turnable front wheels%';

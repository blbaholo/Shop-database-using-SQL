\c shop
DROP TABLE IF EXISTS Customers, Employees, Orders, Payments, Products;

/*The Customers table contains customer details(first name, last name, gender, address, phone , email, city and country) */
CREATE TABLE Customers (
    CustomerID SERIAL PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender VARCHAR(10),
    Address VARCHAR(200),
    Phone VARCHAR(20),
    Email VARCHAR(100),
    City VARCHAR(20),
    Country VARCHAR(50)
);

/*The Customers table contains customer details(first name, last name, gender, address, phone , email, city and country) */
CREATE TABLE Employees (
    EmployeeID SERIAL PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    JobTitle VARCHAR(20)
);

/*The Payments table details the payment date, amount, provides a customer id and has the foreign key, CustomerId */
CREATE TABLE Payments (
    CustomerId INT,
    PaymentID SERIAL PRIMARY KEY,
    PaymentDate DATE,
    Amount DECIMAL,
    FOREIGN KEY(CustomerId) REFERENCES Customers(CustomerID) ON UPDATE CASCADE
);

/*The Products table provides the product name, its description and price */
CREATE TABLE Products (
    ProductId SERIAL PRIMARY KEY,
    ProductName VARCHAR(100),
    Description VARCHAR(300),
    BuyPrice DECIMAL
);

/*The Orders table provides information about the date the order is required and shipped, the status of the shipment(shipped or not shipped) and has the foreign keys: product, payment and empolyee id(fulfilledbyemployeeid) */
CREATE TABLE Orders (
    OrderId SERIAL PRIMARY KEY,
    ProductID INT,
    PaymentID INT,
    FulfilledByEmployeeID INT,
    DateRequired DATE,
    DateShipped DATE,
    Status VARCHAR(20),
    FOREIGN KEY(PaymentID) REFERENCES Payments(PaymentID) ON UPDATE CASCADE ,
    FOREIGN KEY(ProductID) REFERENCES Products(ProductID) ON UPDATE CASCADE ,
    FOREIGN KEY(FulfilledByEmployeeID) REFERENCES Employees(EmployeeID) ON UPDATE CASCADE
);

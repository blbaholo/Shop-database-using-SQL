\c shop
COMMENT ON TABLE Customers IS 'The Customers table contains customer details(first name, last name, gender, address, phone , email, city and country)';
INSERT INTO Customers (FirstName, LastName, Gender, Address, Phone, Email, City, Country)
VALUES

    ('John', 'Hilbert', 'Male', '284 chaucer st', '084789657', 'john@gmail.com', 'Johannesburg', 'South Africa'),
    ('Thando', 'Sithole', 'Female', '240 Sect 1', '0794445584', 'thando@gmail.com', 'Cape Town', 'South Africa'),
    ('Leon', 'Glen', 'Male', '81 Everton Rd,Gillits', '0820832830', 'Leon@gmail.com', 'Durban', 'South Africa'),
    ('Charl', 'Muller', 'Male', '290A Dorset Ecke', '+44856872553', 'Charl.muller@yahoo.com', 'Berlin', 'Germany'),
    ('Julia', 'Stein', 'Female', '2 Wernerring', '+448672445058', 'Js234@gmail.com', 'Frankfurt', 'Germany');

COMMENT ON TABLE Employees IS 'The Employees table contains employee details(first name, last name and email) alongside their jobtitle';
INSERT INTO Employees (FirstName, LastName, Email, JobTitle)
VALUES

    ('Kani', 'Matthew', 'mat@gmail.com', 'Manager'),
    ('Lesly', 'Cronje', 'LesC@gmail.com', 'Clerk'),
    ('Gideon', 'Maduku', 'm@gmail.com', 'Accountant');

COMMENT ON TABLE Payments IS 'The Payments table details the payment date, amount, provides a customer id and has the foreign key, CustomerId.';
INSERT INTO Payments (CustomerId, PaymentDate, Amount)
VALUES

    (1, '01-09-2018', 150.75),
    (5, '03-09-2018', 150.75),
    (4, '03-09-2018', 700.60);

COMMENT ON TABLE Products IS 'The Products table provides the product name, its description and price.';
INSERT INTO Products (ProductName, Description, BuyPrice)
VALUES

    ('Harley Davidson Chopper', 'This replica features a working kickstand, front suspension, gear-shift lever', 150.75),
    ('Classic Car', 'Turnable front wheels, steering function', 550.75),
    ('Sportscar', 'Turnable front wheels, steering function', 700.60);

COMMENT ON TABLE Orders IS 'The Orders table provides information about the date the order is required and shipped, the status of the shipment(shipped or not shipped) and has the foreign keys: product, payment and empolyee id(fulfilledbyemployeeid).';
INSERT INTO Orders (ProductId, PaymentID, FulfilledByEmployeeID, DateRequired, DateShipped, Status)
VALUES

    (1, 1, 2, '05-09-2018', NULL, 'Not shipped'),
    (1, 2, 2, '04-09-2018', '03-09-2018', 'Shipped'),
    (3, 3, 3, '06-09-2018', NULL, 'Not shipped');

DROP DATABASE IF EXISTS shop;
CREATE DATABASE shop;
COMMENT ON DATABASE shop IS 'This database consists of the following tables: Customers, Employees, Orders, Payments and Products.'
\c shop

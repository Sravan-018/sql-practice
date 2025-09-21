CREATE DATABASE joins;
use joins;
CREATE TABLE customers
(customer_id int,customer_name varchar(100),country varchar(100));
insert into customers (customer_id,customer_name,country) values
(1,'John','USA'),
(2,'Mary','UK'),
(3,'Raj','India'),
(4,'Anita','India');
use joins;
CREATE TABLE Orders
(Order_ID INT, Customer_ID INT, Product VARCHAR(100));
insert into Orders (Order_ID,Customer_ID,Product) values
(101,1,'Laptop'),
(102,3,'Mobile'),
(103,4,'Tablet'),
(104,5,'Headphone');
select * from customers;
select * from orders;
SELECT customers.customer_ID, customers.customer_Name, Orders.Product
FROM customers
INNER JOIN Orders
ON Customers.Customer_ID = Orders.customer_ID;

SELECT customers.customer_ID, customers.customer_Name, Orders.Product
FROM customers
LEFT JOIN Orders
ON Customers.Customer_ID = Orders.customer_ID;


SELECT customers.customer_ID, customers.customer_Name, Orders.Product
FROM customers
RIGHT JOIN Orders
ON Customers.Customer_ID = Orders.customer_ID;


SELECT customers.customer_ID, customers.customer_Name, Orders.Product
FROM customers
LEFT JOIN Orders
ON Customers.Customer_ID = Orders.customer_ID
UNION
SELECT customers.customer_ID, customers.customer_Name, Orders.Product
FROM customers
RIGHT JOIN Orders
ON Customers.Customer_ID = Orders.customer_ID;



SELECT * FROM customers.orders;

ALTER TABLE shippings RENAME  TO shippments;

/*Update using CASE (conditional update in single query)*/
use dataschema;
create table marks(
  student_id int primary key,
  student_name varchar(255),
  marks int
);

insert into marks values
(1, 'sravan', 40),
(2, 'pavan', 55),
(3, 'Chintu', 70);
update marks
set marks = case
    when marks < 50 then marks + 10
    when marks between 50 and 60 then marks + 5
    else marks
end;
select * from marks;

/*Update using values from another table (JOIN)*/
use dataschema;
create table employees(
  emp_id int primary key,
  emp_name varchar(255),
  emp_salary int
);

insert into employees values
(1, 'John', 30000),
(2, 'Mira', 40000),
(3, 'Chinku', 35000);
create table salary_hike(
  emp_id int primary key,
  hike_amount int
);

insert into salary_hike values
(1, 5000),
(2, 7000);

update employees e
join salary_hike h on e.emp_id = h.emp_id
set e.emp_salary = e.emp_salary + h.hike_amount;

select * from employees;

create table orders(
  order_id int primary key,
  customer_name varchar(255),
  amount int
);

insert into orders values
(1, 'John', 2000),
(2, 'Mira', 500),
(3, 'Chinku', 10000);

-- Delete orders less than avg amount
delete from orders
where amount < (select avg(amount) from orders);

select * from orders;

/*Delete using JOIN (delete child rows based on parent)*/
create table customers(
  cid int primary key,
  cname varchar(255)
);

insert into customers values
(1, 'John'),
(2, 'Mira'),
(3, 'Chinku');

create table payments(
  pid int primary key,
  cid int,
  amount int,
  foreign key (cid) references customers(cid)
);

insert into payments values
(101, 1, 500),
(102, 2, 600),
(103, 3, 1000);

-- Delete payments of customer 'Mira'
delete p from payments p
join customers c on p.cid = c.cid
where c.cname = 'Mira';

select * from payments;

/*Truncate table (delete all rows quickly)*/
create table logs(
  log_id int primary key,
  message varchar(255)
);

insert into logs values
(1, 'Login success'),
(2, 'Password changed'),
(3, 'Logout');
truncate table logs;  
select * from logs;

use customers;
SELECT * from customers;
SELECT * from orders;
UPDATE customers c
JOIN orders o ON c.customers_id=o.customers_id
set c.age=30 
WHERE o.order_id=1;

use student;
select student_id,joining_year
from student
group by student_id,joining_year
order by student_id ASC;
SELECT * 
FROM student 
WHERE course = 'ece' 
ORDER BY student_id DESC;
SELECT name, sem_id
FROM student 
WHERE joining_year = 2019
ORDER BY address DESC;

use employe;
select emp_id, joining_date
from employe
group by emp_id,joining_date
order by emp_id ASC;
select * 
from employe
where name = 'sravan'
order by address DESC;
select name,emp_id
from employe
where joining_date = '2024-06-17'
order by address DESC;

use products;
SELECT name, brand FROM products group by name, brand;
SELECT name, brand FROM products ORDER BY name ASC;
SELECT product_id, name FROM products ORDER BY product_id DESC;
SELECT * FROM products WHERE brand = 'electronics' ORDER BY name ASC;
SELECT * FROM products WHERE brand = 'furniture' ORDER BY product_id ASC;
SELECT name, brand FROM products WHERE brand = 'furniture' ORDER BY name DESC;
SELECT name FROM products WHERE brand = 'electronics' ORDER BY name DESC;

use customer;
SELECT first_name, last_name FROM customer group by first_name, last_name;
SELECT first_name, last_name FROM customer ORDER BY first_name;
SELECT customer_id, last_name FROM customer ORDER BY last_name DESC;
SELECT * FROM customer WHERE last_name = 'sravan' ORDER BY customer_id ASC;
SELECT * FROM customer WHERE customer_id > 5 ORDER BY last_name ASC;
SELECT first_name, last_name FROM customer WHERE customer_id <= 5 ORDER BY last_name ASC;
SELECT first_name FROM customer WHERE last_name = 'pavan' ORDER BY first_name DESC;




 

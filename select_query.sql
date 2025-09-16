use customer;
select * from customer;
SELECT * FROM customer WHERE last_name = 'sravan';
SELECT first_name, last_name FROM customer;
SELECT * FROM customer WHERE last_name IN ('pavan', 'reddy');
SELECT * FROM customer WHERE customer_id BETWEEN 2 AND 6;
SELECT * FROM customer ORDER BY customer_id ASC;
SELECT * FROM customer ORDER BY customer_id DESC;

use directors;
select * from moviedirectors;
select * from moviedirectors where name IN ('sukumar','sujeeth');
select * from moviedirectors where director_id BETWEEN 7 AND 9;
select * from moviedirectors ORDER BY director_id ASC;
select * from moviedirectors ORDER BY director_id desc;

use products;
select * from products;
SELECT name, brand FROM products; 
SELECT * FROM products WHERE brand = 'electronics';
SELECT * FROM products WHERE brand IN ('electronics', 'furniture');
SELECT * FROM products WHERE product_id BETWEEN 2 AND 9;
SELECT * FROM products ORDER BY product_id ASC;
SELECT * FROM products ORDER BY product_id DESC;

use student;
select * from student;
SELECT student_name, course_name FROM student;
SELECT * FROM student WHERE course_name = 'ece';
SELECT * FROM student WHERE course_name IN ('eee', 'civil');
SELECT * FROM student WHERE student_rollno BETWEEN 2 AND 7;
SELECT * FROM student ORDER BY student_rollno ASC;
SELECT * FROM student ORDER BY student_rollno DESC;

use employe;
select * from employe;
select name, role from employe;
SELECT * FROM employe where address='chennai';
SELECT * FROM employe where address in ('bangalore','pune');
SELECT * FROM  employe order by name ASC;
SELECT * FROM  employe order by name DESC;





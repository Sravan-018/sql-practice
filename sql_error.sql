How do  you check foreign key constraint fails in MySQL?
CREATE DATABASE dataschema;
use dataschema;
CREATE TABLE student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    course VARCHAR(200)
);
INSERT INTO student(student_id, student_name, course) VALUES
(1, 'Alice', 'Mathematics');
SELECT * FROM student;
CREATE TABLE library (
    lib_id INT PRIMARY KEY,
    student_id INT,
    lib_branch VARCHAR(100),
    FOREIGN KEY (student_id) REFERENCES student(student_id)
);
INSERT INTO library(lib_id, student_id, lib_branch) VALUES
(101, 1, 'Central'),
(102, 2, 'North'),
(103, 3, 'East');

 Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`dataschema`.`library`, CONSTRAINT `library_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`))	0.016 sec
 
  how do you check primary key (not null + unique)?
 
  CREATE TABLE supplier (
    supplier_id INT PRIMARY KEY,           -- Primary Key (Not Null + Unique)
    supplier_name VARCHAR(100) NOT NULL,   -- Not Null
    location VARCHAR(150),
    gst_no VARCHAR(20) UNIQUE              -- Unique constraint
);
-- First insert (works fine)
INSERT INTO supplier(supplier_id, supplier_name, location, gst_no) VALUES
(1, 'ABC Traders', 'Chennai', 'GST123');
-- 1️⃣ Test UNIQUE property of PRIMARY KEY
INSERT INTO supplier(supplier_id, supplier_name, location, gst_no) VALUES
(1, 'XYZ Supplies', 'Pune', 'GST124');
Error Code: 1062. Duplicate entry '1' for key 'supplier.PRIMARY'	
-- 2️⃣ Test NOT NULL property of PRIMARY KEY
INSERT INTO supplier(supplier_id, supplier_name, location, gst_no) VALUES
(NULL, 'Global Corp', 'Delhi', 'GST125');
Error Code: Column 'supplier_id' cannot be null -- 2ï' at line 1	
 -- 3️⃣ Test UNIQUE constraint separately
INSERT INTO supplier(supplier_id, supplier_name, location, gst_no) VALUES
(2, 'Metro Distributors', 'Mumbai', 'GST123');
Error Code: Duplicate entry 'GST123' for key 'supplier.gst_no'
 	

 
  
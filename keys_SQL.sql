CREATE DATABASE students;
use students;
CREATE TABLE students (
student_id INT PRIMARY KEY,
name VARCHAR(100),
age INT );
INSERT INTO students (student_id,name,age) VALUES
(1, 'Rahul', 20),
(2, 'Priya', 22),
(3, 'Amit', 21);

CREATE TABLE courses (
course_id INT primary KEY,
course_name VARCHAR(100) );
INSERT INTO courses (course_id,course_name) VALUES
(101, 'Java'),
(102, 'SQL'),
(103, 'Python');

CREATE TABLE enrollements (
enrollment_ID INT PRIMARY KEY,
    student_ID INT,
    course_ID INT,
    FOREIGN KEY (student_ID) REFERENCES students(student_ID),
    FOREIGN KEY (course_ID) REFERENCES courses(course_ID)
);
INSERT INTO enrollements (enrollment_ID,student_ID,course_ID) VALUES
(1, 1, 101), 
(2, 1, 102), 
(3, 2, 103), 
(4, 3, 101); 
select * from enrollements;

SELECT s.name,c.course_name
FROM enrollements e
INNER JOIN students s ON e.student_id = s.student_id
INNER JOIN courses c ON e.course_id = c.course_id;

SELECT s.name,c.course_name
FROM enrollements e
LEFT JOIN students s ON e.student_id = s.student_id
LEFT JOIN courses c ON e.course_id = c.course_id;

SELECT s.name,c.course_name
FROM enrollements e
RIGHT JOIN students s ON e.student_id = s.student_id
RIGHT JOIN courses c ON e.course_id = c.course_id;

SELECT s.name,c.course_name
FROM enrollements e
LEFT JOIN students s ON e.student_id = s.student_id
LEFT JOIN courses c ON e.course_id = c.course_id
UNION
SELECT s.name,c.course_name
FROM enrollements e
RIGHT JOIN students s ON e.student_id = s.student_id
RIGHT JOIN courses c ON e.course_id = c.course_id;


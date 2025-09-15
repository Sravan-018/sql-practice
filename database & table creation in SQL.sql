use student;
CREATE TABLE student (
student_id INT,
name VARCHAR(200),
joining_year year,
sem_id INT,
course VARCHAR(100),
address VARCHAR(300)
);
INSERT INTO student VALUES
(23,
'sravan',
2019,
2,
'ece',
'madanapalle');

CREATE TABLE amazon (
item_name VARCHAR(100),
brand_name VARCHAR(100),
color VARCHAR(100),
price FLOAT,
delivery_date date,
available boolean
);
INSERT INTO amazon VALUES
('watch',
'titan',
'blue',
2990.051,
'2025-09-19',
true);

CREATE TABLE employe (
emp_id INT,
name VARCHAR(200),
joining_date date,
salary double,
role VARCHAR(200),
working_hours INT,
address VARCHAR(500)
);
INSERT INTO employe VALUES
(27658,
'sravan',
'2025-09-25',
575000.70,
'dataengineer',
09,
'bangalore'
);

CREATE TABLE moviesess (
    movie_id INT,
	title VARCHAR(250),
	relese_year year,
	genre VARCHAR(100),
	language VARCHAR(20),
	duration_minutes INT,
	rating decimal(3,1),
	director_id INT
);
INSERT INTO movies VALUES(
1,
'devara',
2024,
'action',
'telugu',
178,
3.4,
6
);

CREATE TABLE director (
director_id INT,
name VARCHAR(100),
dob DATE,
gender VARCHAR(100),
nationality VARCHAR(100),
debut_year YEAR
);
INSERT INTO director VALUES (
01,
'rajamouli',
'1970-05-14',
'male',
'hindu',
2000
);

select * from director

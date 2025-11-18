CREATE DATABASE practice_sql;

USE practice_sql;

CREATE TABLE students (
student_id INT PRIMARY KEY,
student_name VARCHAR(20),
age INT,
city VARCHAR(20)
);


CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    duration_months INT
);


CREATE TABLE enrollments (
    enroll_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO students VALUES
(1, 'Arjun', 20, 'Bangalore'),
(2, 'Megha', 21, 'Mysore'),
(3, 'Rohan', 22, 'Chennai'),
(4, 'Sneha', 20, 'Bangalore');

INSERT INTO courses VALUES
(101, 'SQL', 1),
(102, 'Python', 2),
(103, 'Data Science', 6);


INSERT INTO enrollments VALUES
(1, 1, 101, '2025-01-10'),
(2, 1, 103, '2025-01-12'),
(3, 2, 102, '2025-01-11'),
(4, 3, 101, '2025-01-15');


SELECT * FROM students;
SELECT * FROM courses;

SELECT * FROM enrollments;


SELECT * FROM students
WHERE city = "bangalore";




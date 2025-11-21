CREATE DATABASE school;
USE school;

CREATE TABLE students (
  student_id INT,
  full_name VARCHAR(50),
  marks INT,
  city VARCHAR(30),
  gender VARCHAR(10),
  age INT
);

INSERT INTO students VALUES
(109, 'Rohan', 82, 'Pune', 'M', 18),
(110, 'Kavya', 91, 'Mumbai', 'F', 20),
(111, 'Deepak', 76, 'Delhi', 'M', 17),
(112, 'Ananya', 88, 'Chennai', 'F', 19),
(113, 'Manoj', 94, 'Hyderabad', 'M', 21),
(114, 'Priya', 89, 'Bangalore', 'F', 18),
(115, 'Suresh', 73, 'Pune', 'M', 20),
(116, 'Harika', 96, 'Mumbai', 'F', 19),
(117, 'Ashok', 68, 'Delhi', 'M', 17),
(118, 'Trisha', 92, 'Chennai', 'F', 20),
(119, 'Vinay', 87, 'Hyderabad', 'M', 18),
(120, 'Shreya', 90, 'Bangalore', 'F', 21);

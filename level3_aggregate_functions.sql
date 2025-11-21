✅ LEVEL 3 — AGGREGATE FUNCTIONS


-- Find the total number of students.
SELECT COUNT(roolno) AS total_number FROM students;



-- Find the average marks of all students.
SELECT AVG(marks) AS average_marks 
FROM students ;


-- Find the highest marks in the table.
SELECT MAX(marks) AS highest_marks
 FROM students; 

-- Find the lowest marks in the table.
SELECT MIN(marks) AS lowest_marks
FROM students;

-- Find how many Male and Female students are there.
SELECT gender, COUNT(*) FROM students
GROUP BY gender;


-- Find the sum of marks of all students from Bangalore.
SELECT SUM(marks) FROM students
WHERE city = 'bangalore';

-- Find the average age of students with grade A.
SELECT AVG(age) FROM students 
WHERE grade = 'a';

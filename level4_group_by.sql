✅ LEVEL 4 — GROUP BY

-- Count how many students are from each city.
SELECT city, COUNT(city) FROM students 
GROUP BY city;


-- Find the average marks for each city.
SELECT city, AVG(marks) FROM students 
GROUP BY city;


-- Find the highest marks in each city.
SELECT city, MAX(marks) AS heighest 
FROM students 
GROUP BY city ;

-- Count how many students are in each grade.
SELECT grade, COUNT(grade) FROM students
GROUP BY grade;

-- Find the average age for each gender.
SELECT gender, AVG(age) FROM students
GROUP BY gender;


-- For each grade, find the number of students scoring more than 80.
SELECT grade, COUNT(grade) AS morethen_80
FROM students
WHERE marks > 80
GROUP BY grade;



-- Show only cities that have more than 2 students.
 SELECT city FROM students 
GROUP BY city
HAVING COUNT(city) > 2;


-- Show grades where the average marks is greater than 85.
SELECT grade, AVG(marks) FROM students
GROUP BY grade 
HAVING AVG(marks) > 85;
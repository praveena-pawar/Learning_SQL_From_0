✅ LEVEL 5 — HAVING (important)



-- Show only cities that have more than 2 students.
 SELECT city FROM students 
GROUP BY city
HAVING COUNT(city) > 2;


-- Show grades where the average marks is greater than 85.
SELECT grade, AVG(marks) FROM students
GROUP BY grade 
HAVING AVG(marks) > 85;



-- Show gender groups where count of students > 5.
SELECT gender, COUNT(*) AS total_students
FROM students
GROUP BY gender
HAVING COUNT(*) < 5;



-- Show cities where the average age > 18.
SELECT city, AVG(age) AS  average_age
FROM students 
GROUP BY city
HAVING AVG(age) < 18;



-- Find cities where more than 3 students live
SELECT city, COUNT(*) 
FROM students
GROUP BY city
HAVING COUNT(*) > 3;

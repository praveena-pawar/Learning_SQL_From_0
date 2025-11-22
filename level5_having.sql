✅ LEVEL 5 — HAVING (important)



-- Show only cities that have more than 2 students.
 SELECT city FROM students 
GROUP BY city
HAVING COUNT(city) > 2;


-- Show grades where the average marks is greater than 85.
SELECT grade, AVG(marks) FROM students
GROUP BY grade 
HAVING AVG(marks) > 85;


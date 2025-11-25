
✅ LEVEL 8 — SUBQUERIES (no joins)



-- Show students who have marks greater than the average marks.
SELECT * FROM students 
WHERE marks > (SELECT AVG(marks) FROM students);





-- Show students older than the average age.
SELECT *
FROM students
WHERE age > (SELECT AVG(age) FROM students);




-- Show the student(s) with the highest marks using a subquery.
SELECT * 
FROM students
WHERE marks = (SELECT MAX(marks) FROM students);
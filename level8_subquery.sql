
✅ LEVEL 8 — SUBQUERIES (no joins)



-- Show students who have marks greater than the average marks.
SELECT * FROM students 
WHERE marks > (SELECT AVG(marks) FROM students);

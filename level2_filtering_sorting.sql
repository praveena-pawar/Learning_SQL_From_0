✅ LEVEL 2 — FILTERING + SORTING


-- Show all students ordered by marks (highest first).
SELECT * FROM students
ORDER BY marks DESC;

-- Show all students ordered by age (youngest first).
SELECT * FROM students 
ORDER BY age ASC;

-- Show top 5 students with highest marks.
SELECT * FROM students 
ORDER BY marks DESC 
LIMIT 5;


-- Show students who are 18 or 19 years old, sorted by name.
SELECT * FROM students 
WHERE age in (18, 19)
ORDER BY full_name ;


-- Show all students who have grade A, sorted by marks descending.
SELECT * FROM students 
WHERE grade = 'a'
ORDER BY marks DESC;
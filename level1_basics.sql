✅ LEVEL 1 — BASIC SELECT

-- Show only full_name, marks, and city.
SELECT full_name, marks, city FROM students;

-- Show all students who belong to Bangalore (handle Bangalore/Banglore variations).
SELECT * FROM students
WHERE LOWER(city) IN  ("bangalore" ,"banglore");

-- Show students whose gender is Male.
SELECT * FROM students 
WHERE LOWER(gender) IN ("male", "m");


-- Show students whose age is greater than 18.
SELECT * FROM students
WHERE age > 18;


-- Show students who scored more than 90 marks.
SELECT * FROM students
WHERE marks > 90;



-- Show students who scored between 80 and 95.
SELECT * FROM students 
WHERE marks BETWEEN 80 and 95;


-- Show students whose city is Pune or Mumbai.
SELECT * FROM students 
WHERE city IN ('pune', 'mumbai');



-- Show students whose full_name starts with 'S'.
SELECT * FROM students 
WHERE full_name like 's%';



-- Show students whose full_name ends with 'a'.
SELECT * FROM students
WHERE full_name like '%a';
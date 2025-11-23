
✅ LEVEL 6 — TEXT FUNCTIONS


-- Show full_name in UPPERCASE
SELECT UPPER(full_name) AS name_uppercase
FROM students;



-- Show only the first 3 letters of each student's name
SELECT LEFT(full_name, 3) AS first_three_letters
FROM students;



--  Show the length of each student's name
SELECT full_name, LENGTH(full_name) AS name_length
FROM students;



-- Combine full_name and city
SELECT CONCAT(full_name,'_',city) AS full_info
FROM students;

-- one more way to write
SELECT CONCAT(full_name,'_','FROM''_',city) AS full_info
FROM students;

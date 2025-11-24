✅ LEVEL 7 — CASE WHEN (conditional logic)

SELECT 
    full_name,
    marks,
    CASE
        WHEN marks >= 90 THEN 'Excellent'
        WHEN marks >= 80 THEN 'Good'
        ELSE 'Average'
    END AS result
FROM students;




--  Create a column called age_group with the following conditions:
 SELECT full_name,
       age,
       CASE
           WHEN age>= 20 THEN 'Adult'
           WHEN age BETWEEN 16 AND 19 THEN 'Teenager'
           ELSE 'child'
       END AS age_group
FROM students;





-- Categorize students into age groups:
SELECT age,
       CASE
           WHEN age < 18 THEN 'Minor'
           WHEN age BETWEEN 18 AND 20 THEN 'Adult'
           ELSE 'Senior'
       END AS age_group
FROM students;
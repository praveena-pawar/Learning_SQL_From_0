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
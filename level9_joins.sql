-- Q1. Show the supplier name, part name, and quantity supplied.
SELECT a.s_name, p.p_name, s.qty 
FROM supplies s
INNER JOIN supplier a
ON s.s_id = a.s_id
INNER JOIN part p
ON p.p_id = s.p_id;



-- Q2. List all suppliers who supply parts priced above 100.
SELECT a.s_name, a.city, p.p_name, p.price
FROM supplies s
INNER JOIN supplier a ON s.s_id = a.s_id
INNER JOIN part p ON s.p_id = p.p_id
WHERE p.price > 100;




-- Q3. Display the part name, color, and the total quantity supplied for each part.
SELECT p.p_name, p.color, SUM(s.qty) AS total_qty
FROM part p
INNER JOIN supplies s
ON p.p_id = s.p_id
GROUP BY p.p_name, p.color;




-- Q4. Show the names of suppliers who have supplied red-colored parts.
SELECT s_name FROM supplier s
INNER JOIN supplies a
ON s.s_id = a.s_id
INNER JOIN part p
ON p.p_id = a.p_id
WHERE p.color = 'red';

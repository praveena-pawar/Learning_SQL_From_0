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





-- Q5. List all parts that have never been supplied by any supplier.
SELECT * FROM part p
LEFT JOIN supplies s
ON p.p_id = s.p_id 
WHERE s.p_id IS NULL;



-- - Q6. Display the supplier name and the number of different parts supplied by each supplier.
SELECT s.s_name, COUNT(DISTINCT p.p_id) 
FROM part p
INNER JOIN supplies a ON p.p_id = a.p_id 
INNER JOIN supplier s ON s.s_id = a.s_id
GROUP BY s.s_name;




-- Q7. Show supplier name, part name, and date supplied in descending order of date.
SELECT s.s_name, p.p_name, a.date_supplied 
FROM supplier s
INNER JOIN supplies a ON s.s_id = a.s_id
INNER JOIN part p ON p.p_id = a.p_id
ORDER BY date_supplied  DESC;





-- These are slightly advanced

-- Display the supplier name, part name, quantity, and date supplied
-- for all supplies where the part price is greater than the average part price.
SELECT s.s_name, p.p_name, a.qty, a.date_supplied
FROM supplier s
INNER JOIN supplies a ON s.s_id = a.s_id 
INNER JOIN part p ON p.p_id = a.p_id 
WHERE p.price > (SELECT AVG(price) FROM part );




-- Q2. List all suppliers who have supplied more than one type of part.
-- (Show supplier name and number of different parts supplied.)
SELECT s.s_name, COUNT(DISTINCT a.p_id) AS number_of_parts_supplied
FROM supplier s
JOIN supplies a ON s.s_id = a.s_id
GROUP BY s.s_id, s.s_name
HAVING COUNT(DISTINCT a.p_id) > 1;




-- Q3. Show the supplier name and part name even for suppliers who have NOT supplied any part
SELECT s_name, p_name 
FROM supplier s
LEFT JOIN supplies a ON s.s_id = a.s_id 
LEFT JOIN part p ON p.p_id = a.p_id
WHERE a.s_id IS NULL;




-- Q4. Display the part name and the latest (most recent) supply date for each part.
SELECT p.p_name, MAX(date_supplied) 
FROM part p
INNER JOIN supplies s ON p.p_id = s.p_id 
INNER JOIN supplier a ON a.s_id = s.s_id
GROUP BY p.p_name;


-- Q5. Show all parts along with the names of suppliers who supplied them.
-- If a part has never been supplied, display the part name with supplier as NULL
SELECT p.p_name, s.s_name
FROM part p
LEFT JOIN supplies sup ON p.p_id = sup.p_id
LEFT JOIN supplier s ON sup.s_id = s.s_id;
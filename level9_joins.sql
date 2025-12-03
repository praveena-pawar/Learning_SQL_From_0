-- Q1. Show the supplier name, part name, and quantity supplied.
SELECT a.s_name, p.p_name, s.qty 
FROM supplies s
INNER JOIN supplier a
ON s.s_id = a.s_id
INNER JOIN part p
ON p.p_id = s.p_id;

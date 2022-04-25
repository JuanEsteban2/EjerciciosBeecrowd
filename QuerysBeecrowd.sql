--2602
SELECT name
FROM customers
WHERE state = 'RS';

--2611
SELECT m.id, m.name
FROM movies AS m
JOIN genres AS g
ON m.id_genres = g.id
WHERE g.description = 'Action';

--2615
SELECT city
FROM customers
WHERE name != ''
GROUP BY city;

--2616
SELECT c.id, c.name
FROM customers AS c
LEFT JOIN locations AS l
ON c.id = l.id_customers
WHERE l.id_customers IS NULL;

--2622
SELECT c.name
FROM customers AS c
RIGHT JOIN legal_person AS l
ON c.id = l.id_customers;

--2623
SELECT p.name, c.name
FROM products AS p
JOIN categories AS c
ON p.id_categories = c.id
WHERE (p.amount > 100) AND (c.id in (1, 2, 3, 6, 9))
ORDER BY c.id;

--2742
SELECT l.name, round(l.omega * 1.618, 3)
FROM life_registry AS l
JOIN dimensions AS d
ON l.dimensions_id = d.id
WHERE d.name in ('C875', 'C774') AND l.name like 'Richard%'
ORDER BY l.omega ASC;

--2988

--2991

--3001
SELECT name, CASE
    WHEN type = 'A' THEN 20.0
    WHEN type = 'B' THEN 70.0
    WHEN type = 'C' THEN 530.5
    END AS price
FROM products
ORDER BY type ASC, id DESC;
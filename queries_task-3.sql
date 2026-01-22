USE task3_sql;
DESCRIBE superstore;
SELECT * FROM superstore LIMIT 10;
SELECT COUNT(*) FROM superstore;
SELECT * FROM superstore
WHERE category = 'Technology';
SELECT * FROM superstore
WHERE region = 'west';
SELECT * FROM superstore
WHERE category = 'Furniture'
AND region = 'East';
SELECT `Order ID`, `Sales`
FROM superstore
ORDER BY `Sales` DESC
LIMIT 10;
SELECT `Category`, SUM(`Sales`) AS total_sales
FROM superstore
GROUP BY `Category`;
SELECT `Region`, AVG(`Profit`) AS avg_profit
FROM superstore
GROUP BY `Region`;
SELECT `Segment`, COUNT(*) AS total_orders
FROM superstore
GROUP BY `Segment`;
SELECT `Category`, SUM(`Sales`) AS total_sales
FROM superstore
GROUP BY `Category`
HAVING SUM(`Sales`) > 100000;
SELECT `Customer Name`, SUM(`Sales`) AS total_spent
FROM superstore
GROUP BY `Customer Name`;
SELECT *
FROM superstore
WHERE `Order Date` BETWEEN '2017-01-01' AND '2017-03-31';
SELECT *
FROM superstore
WHERE `Customer Name` LIKE 'A%';

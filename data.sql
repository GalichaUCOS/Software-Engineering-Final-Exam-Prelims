-- WHERE Query 

SELECT * 
FROM Orders
WHERE total_price > 20000;


-- JOIN Query 

SELECT Customers.name AS customer_name, Consoles.console_name, Orders.total_price
FROM Orders
INNER JOIN Customers ON Orders.customer_id = Customers.customer_id
INNER JOIN Consoles ON Orders.console_id = Consoles.console_id;


--GROUP BY Query

SELECT Consoles.console_name, SUM(Orders.total_price) AS total_sales
FROM Orders
INNER JOIN Consoles ON Orders.console_id = Consoles.console_id
GROUP BY Consoles.console_name;


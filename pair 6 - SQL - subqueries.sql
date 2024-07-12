-- Pair programming Sub-queries
USE northwind;

-- Excercise 1 - Extraed los pedidos con el máximo "order_date" para cada empleado

-- Resolución A --> De esta forma solo obtenemos el empleado y la fecha máximo
SELECT
    employee_id,
    MAX(order_date)
FROM
	orders
GROUP BY 
	employee_id;

-- Resolución B --> Esta resolución nos permite también obtener el product_id
SELECT 
	o1.order_id,
    o1.order_date,
    o1.employee_id
FROM
	orders AS o1
WHERE order_date = (
	SELECT MAX(o2.order_date)
	FROM orders AS o2
	WHERE o2.employee_id= o1.employee_id
);


-- Excercise 2: Extraed el precio unitario máximo (unit_price) de cada producto vendido.

SELECT
	product_id,
    MAX(unit_price) AS Max_Unit_Price
FROM 
	order_details
GROUP BY
	product_id





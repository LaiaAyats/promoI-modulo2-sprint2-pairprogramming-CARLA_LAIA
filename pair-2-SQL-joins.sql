-- pair programming exercises
USE northwind;

-- exercise 1 - cuantos pedidos ha realizado cada empresa cliente de UK. columnas: id cliente, nombre empresa y número de pedidos
SELECT c.customer_id, c.company_name, COUNT(o.order_id) AS order_count
	FROM customers c
    INNER JOIN 
		orders o ON c.customer_id = o.customer_id
    WHERE country = "UK"
    GROUP BY customer_id, company_name;
    
-- exercise 2 -- cuántos objetos totales compró cada empresa de UK por año
SELECT customers.company_name, YEAR (orders.order_date) AS orders_year, SUM(order_details.quantity)
	FROM customers
    JOIN 
		orders ON customers.customer_id = orders.customer_id
	JOIN 
		order_details ON orders.order_id = order_details.order_id
	WHERE country = "UK"
    GROUP BY company_name, orders_year;

-- exercise 3 
SELECT customers.company_name, YEAR (orders.order_date) AS orders_year, SUM(order_details.quantity), SUM(order_details.quantity * order_details.unit_price * (1 - order_details.discount)) 
	FROM customers
    JOIN 
		orders ON customers.customer_id = orders.customer_id
	JOIN 
		order_details ON orders.order_id = order_details.order_id
	WHERE country = "UK"
    GROUP BY company_name, orders_year;




    
        
        
		
		
	




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
SELECT customers.company_name, YEAR (orders.order_date),  




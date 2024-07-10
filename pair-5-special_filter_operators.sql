USE Northwind;

-- Exercice 1. Ciudades que empiezan con "A" o "B": Necesita que le devolvamos la ciudad, el nombre de la compañia y el nombre de contacto.

SELECT 
	city,
	company_name, 
	contact_name
FROM	
	customers
WHERE city LIKE 'A%' OR city LIKE 'B%';


-- Exercice 2. Número de pedidos que han hecho en las ciudades que empiezan con L.

SELECT 
	c.city,
	c.company_name, 
	c.contact_name,
	COUNT(o.order_id) AS orders
FROM	
	customers AS c
JOIN 
	orders AS o ON c.customer_id = o.customer_id
WHERE 
	city LIKE 'L%'
GROUP BY 
	c.city, c.company_name, c.contact_name;

-- Exercice 3. Todos los clientes cuyo "country" no incluya "USA": Extraer el nombre de contacto, su pais y el nombre de la compañia.

SELECT 
	contact_name, company_name, country
FROM
	customers 
WHERE 
	country != 'USA';

SELECT 
	contact_name, company_name, country
FROM
	customers c
WHERE 
	country NOT IN ('USA');

-- Exercice 4. Todos los clientes que no tengan una "A" en segunda posición en su nombre. Devolved unicamente el nombre de contacto.

SELECT 
	contact_name, company_name
FROM
	customers c 
WHERE 
	company_name NOT LIKE '_A%';

-- Exercice 5. Extraer toda la información sobre las compañias que tengamos en la BBDD. Una query que nos devuelva todos los clientes y proveedores que tenemos en la BBDD. 

SELECT 
	city, company_name, contact_name -- add relationship
FROM 
	customers c 
UNION
SELECT
	city, company_name, contact_name -- add relationship
FROM
	suppliers;

-- holi




-- Mostrad la ciudad a la que pertenecen, el nombre de la empresa y el nombre del contacto, además de la relación (Proveedor o Cliente). 
-- No debe haber duplicados en nuestra respuesta. La columna Relationship no existe y debe ser creada como columna temporal, añade el valor que le quieras dar al campo y utilizada como alias Relationship.




-- Exercice 6. Extraer todas las categorías de la tabla categories que contengan en la descripción "sweet" o "Sweet".




-- Exercice 7. Extraed todos los nombres y apellidos de los clientes y empleados que tenemos en la BBDD:
-- 💡 Pista 💡 ¿Ambas tablas tienen las mismas columnas para nombre y apellido? Tendremos que combinar dos columnas usando concat para unir dos columnas.



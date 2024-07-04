-- pairprogramming exercise
USE tienda;

-- exercise 1
SELECT MIN(buy_price) AS lowestPrice, MAX(buy_price) AS highestPrice
	FROM products;
    
-- exercise 2
SELECT COUNT(product_code), AVG(DISTINCT buy_price)
	FROM products;

-- exercise 3 
		-- ???

-- exercise 4 
-- two different ways of solving this: 

-- 1) using two queries:
SELECT AVG(buy_price) 
	FROM PRODUCTS;
SELECT product_code, buy_price
	FROM products
    WHERE buy_price > 54.395182
    ORDER BY buy_price DESC;

-- 2) using sub-queries:
SELECT product_code, buy_price
	FROM products
    WHERE buy_price > (SELECT AVG(buy_price) FROM PRODUCTS) -- this is a sub-query
    ORDER BY buy_price DESC;
    
-- exercise 5 and 6
	-- ???
    
-- exercise 7 






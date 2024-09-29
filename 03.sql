SELECT * FROM products 
WHERE product_id NOT IN (SELECT distinct product_id from stocks)
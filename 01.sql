SELECT * FROM customers 
WHERE customer_id NOT IN (SELECT distinct customer_id from orders)
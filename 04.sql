SELECT store_id , count(distinct order_id) as Total_compras_unicas from orders
 WHERE order_id IN (SELECT DISTINCT order_id 
    WHERE product_id IN (SELECT DISTINCT product_id FROM products 
        WHERE brand_id IN (SELECT brand_id FROM brands WHERE brand_name LIKE "XPTO")))
GROUP BY store_id

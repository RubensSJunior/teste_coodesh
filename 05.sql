SELECT * FROM staffs 
WHERE staff_id NOT IN (SELECT distinct staff_id from orders)
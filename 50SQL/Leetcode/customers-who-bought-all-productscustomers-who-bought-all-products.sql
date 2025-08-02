# Write your MySQL query statement below
SELECT customer_id 
FROM Customer c
GROUP BY customer_id
HAVING count(distinct product_key)=(Select count(product_key) From product)
# Write your MySQL query statement below
SELECT customer_id from Customer group by customer_id having COUNT(distinct product_key) = (SELECT COUNT(*) from Product);
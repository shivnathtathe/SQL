# Write your MySQL query statement below
SELECT person_name 
FROM queue AS q
WHERE 1000 >= (
    SELECT SUM(weight) 
    FROM queue 
    WHERE q.turn >= turn
)
ORDER BY turn DESC 
LIMIT 1;
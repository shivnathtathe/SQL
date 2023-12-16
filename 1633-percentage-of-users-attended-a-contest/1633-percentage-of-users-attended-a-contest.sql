# Write your MySQL query statement below
# tables - primary keys
# Users - user_id,
# Register - contest_id, user_id

SELECT
    r.contest_id,
    ROUND(COUNT(u.user_id) * 100 / totalUsers.user_count, 2) AS percentage
FROM
    register r
    INNER JOIN users u ON r.user_id = u.user_id
    CROSS JOIN (SELECT COUNT(*) AS user_count FROM users) AS totalUsers
GROUP BY 
    r.contest_id
ORDER BY 
    percentage DESC, r.contest_id ASC;
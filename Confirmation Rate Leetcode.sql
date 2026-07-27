# Write your MySQL query_statement below
SELECT s.user_id , 
ROUND(AVG(if (c.action = 'confirmed', 1, 0)), 2) AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c
ON s.user_id = c.user_id
GROUP BY s.user_id

#another_type
SELECT s.user_id, ROUND(IFNULL(SUM(c.action = 'confirmed') / COUNT(c.action), 0),2) AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c
ON s.user_id = c.user_id
GROUP BY s.user_id;
# Write your MySQL query statement below
SELECT w1.id
FROM Weather w1, Weather w2
WHERE datediff(w1.recordDate, w2.recordDate) = 1
AND  w1.temperature > w2.temperature

SELECT w1.id
FROM Weather w1
JOIN Weather w2
WHERE datediff(w1.recordDate, w2.recordDate) = 1
AND  w1.temperature > w2.temperature

SELECT w1.id
FROM Weather w1
JOIN Weather w2
ON subdate(w1.recordDate, 1) = w2.recordDate
AND  w1.temperature > w2.temperature


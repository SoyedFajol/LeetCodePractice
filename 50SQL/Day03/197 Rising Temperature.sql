# Write your MySQL query statement below
SELECT w1.id
FROM Weather w1
JOIN Weather w2
ON subdate(w1.recordDate,1)=w2.recordDate and w1.temperature > w2.temperature
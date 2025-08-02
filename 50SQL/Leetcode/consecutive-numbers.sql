# Write your MySQL query statement below
SELECT DISTINCT l1.num as ConsecutiveNums 
FROM Logs l1
JOIN Logs l2 ON l1.id=l2.id - 1
Join Logs l3 ON l1.id=l3.id - 2
Where l1.num=l2.num and l2.num=l3.num
Group by l1.num
# Write your MySQL query statement below
SELECT 
activity_date AS day ,
COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_date BETWEEN date_sub('2019-07-27', interval 29 day) and '2019-07-27'
GROUP BY day
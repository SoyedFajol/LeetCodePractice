# Write your MySQL query statement below
Select product_id, new_price as price
From products
where (product_id,change_date) IN
(
    select product_id, max(change_date)
    From products
    where change_date<='2019-08-16'
    Group by product_id

)
UNION
Select product_id, 10 as price
From products
where (product_id) Not IN
(
    select product_id
    From products
    where change_date <='2019-08-16'
    Group by product_id

)
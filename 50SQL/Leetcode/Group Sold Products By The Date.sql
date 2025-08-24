Select  sell_date, count(distinct product) as num_sold, 
GROUP_CONCAT(distinct product order by product separator ',' ) as products
From Activities
Group by sell_date
Order by sell_date
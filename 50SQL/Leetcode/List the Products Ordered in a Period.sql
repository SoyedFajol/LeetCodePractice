Select p.product_name,sum(o.unit) as unit
From products p
Left join orders o
On p.product_id=o.product_id
Where extract(year_month From o.order_date) = 202002
Group by o.product_id
Having sum(o.unit) >= 100
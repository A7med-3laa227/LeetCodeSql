# Write your MySQL query statement below
select p.product_id, IFNULL(ROUND(sum(units*price) / sum(units),2),0) as average_price
from Prices p  LEFT join UnitsSold u
on p.product_id = u.product_id
AND u.purchase_date between start_date and end_date
group by p.product_id
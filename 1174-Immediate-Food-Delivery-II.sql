# Write your MySQL query statement below
SELECT ROUND(sum(IF(order_date = customer_pref_delivery_date, 1,0)) / count(DISTINCT(customer_id))*100 ,2) AS immediate_percentage
FROM Delivery
WHERE (customer_id,order_date) in (select customer_id , min(order_date) from delivery group by customer_id)

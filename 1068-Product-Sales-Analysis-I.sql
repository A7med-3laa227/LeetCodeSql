# Write your MySQL query statement below
SELECT product_name,year,price from Product join Sales on Product.product_id = Sales.product_id group by sale_id
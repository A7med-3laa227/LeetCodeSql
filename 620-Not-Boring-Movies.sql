# Write your MySQL query statement b
select * 
from cinema
where MOD(ID,2) <> 0 AND description != 'boring'
order by rating DESC
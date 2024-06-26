# Write your MySQL query statement below
select s.user_id, ifnull((round(sum(case when c.action = 'confirmed' then 1 else 0 end)/count(c.user_id),2)),0) as confirmation_rate from signups as s
left join confirmations as c
on s.user_id = c.user_id
group by s.user_id;
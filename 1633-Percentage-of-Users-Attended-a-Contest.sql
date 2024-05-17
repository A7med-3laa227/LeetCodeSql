Select contest_id , Round(count(contest_id) / (select count(user_id) from Users) * 100 ,2) as percentage
from Users u join Register r
ON u.user_id = r.user_id
group by contest_id
order by percentage DESC , contest_id ASC
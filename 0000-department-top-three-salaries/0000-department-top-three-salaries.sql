# Write your MySQL query statement below
SELECT Department, Employee, Salary
FROM (SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary,
        DENSE_RANK() OVER (PARTITION BY d.id ORDER BY e.salary DESC) AS salary_rank
        FROM Department d JOIN Employee e
        ON d.id = e.departmentId) t
WHERE salary_rank <= 3;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna
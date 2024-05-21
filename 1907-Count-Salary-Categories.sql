SELECT 
    categories.category,
    COALESCE(accounts_count, 0) AS accounts_count
FROM (
    SELECT 'Low Salary' AS category
    UNION
    SELECT 'Average Salary'
    UNION
    SELECT 'High Salary'
) AS categories
LEFT JOIN (
    SELECT 
        CASE 
            WHEN income < 20000 THEN 'Low Salary'
            WHEN income BETWEEN 20000 AND 50000 THEN 'Average Salary'
            ELSE 'High Salary'
        END AS category,
        COUNT(*) AS accounts_count
    FROM Accounts
    WHERE income IS NOT NULL
    GROUP BY category
) AS counts ON categories.category = counts.category
ORDER BY categories.category;

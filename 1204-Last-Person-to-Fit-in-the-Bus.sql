WITH weight_bus AS (
    SELECT turn, person_name, 
           SUM(weight) OVER (ORDER BY turn) AS c_wgt
    FROM queue
)
SELECT person_name 
FROM weight_bus
WHERE turn = (
    SELECT MAX(turn) 
    FROM weight_bus
    WHERE c_wgt <= 1000
);

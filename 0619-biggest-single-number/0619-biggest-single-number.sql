SELECT 
    IF(MAX(num) IS NOT NULL, MAX(num), null) AS num 
FROM (
    SELECT num 
    FROM MyNumbers 
    GROUP BY num 
    HAVING COUNT(num) = 1
) AS SingleNumbers;

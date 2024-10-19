# Write your MySQL query statement below

SELECT IFNULL(ROUND( SUM(a1.games_played!=0) / ( 
    SELECT COUNT( DISTINCT player_id) FROM Activity
) , 2) , 0) AS fraction
FROM Activity a1
WHERE DATEDIFF(event_date , (
    SELECT MIN(event_date) FROM Activity a2
    WHERE a1.player_id = a2.player_id
)) = 1;
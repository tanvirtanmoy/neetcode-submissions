-- Write your query below
SELECT team_id, team_name, 
SUM(CASE 
    WHEN team_id = host_team and host_goals > guest_goals 
    THEN 3 
    WHEN team_id = guest_team and host_goals < guest_goals
    THEN 3 
    WHEN host_goals = guest_goals
    THEN 1
    ELSE 0 
END) AS num_points 
FROM teams AS t
LEFT OUTER JOIN matches AS m
ON t.team_id = m.host_team OR t.team_id = guest_team
GROUP BY team_id,team_name
ORDER BY num_points DESC, team_id ASC

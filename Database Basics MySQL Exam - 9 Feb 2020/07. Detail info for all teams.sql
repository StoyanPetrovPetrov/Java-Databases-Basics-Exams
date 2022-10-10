SELECT t.name AS team_name,
t.established,
t.fan_base,
count(p.id) AS players_count
FROM teams AS t
LEFT JOIN
players AS p ON t.id = p.team_id
GROUP BY t.id
ORDER BY players_count DESC,t.fan_base DESC;

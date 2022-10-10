SELECT MAX(sd.speed) AS max_speed,tw.name
FROM skills_data AS sd
RIGHT JOIN
players AS p on sd.id = p.skills_data_id
RIGHT JOIN 
teams AS t on t.id = p.team_id
JOIN 
stadiums AS s on s.id = t.stadium_id
RIGHT JOIN
towns AS tw on tw.id = s.town_id
WHERE t.name !='Devify'
GROUP BY tw.id
ORDER BY max_speed DESC,tw.name ;

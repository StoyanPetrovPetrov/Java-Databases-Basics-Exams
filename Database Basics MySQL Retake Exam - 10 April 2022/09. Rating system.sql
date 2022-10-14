SELECT m.`title`,
       (CASE
            WHEN mi.`rating` <= 4 THEN 'poor'
            WHEN mi.`rating` <= 7 THEN 'good'
            ELSE 'excellent'
        END) AS `rating`,
       IF(mi.`has_subtitles`, 'english', '-') `subtitles`,
       mi.`budget`
FROM `movies_additional_info` AS `mi`
JOIN `movies` AS m on mi.`id` = m.`movie_info_id`
ORDER BY `budget` DESC;

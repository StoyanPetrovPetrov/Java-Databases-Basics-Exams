CREATE PROCEDURE `udp_award_movie`(`movie_title` VARCHAR(50))
BEGIN
    UPDATE actors a
        JOIN movies_actors ma on a.id = ma.actor_id
        JOIN movies m on m.id = ma.movie_id
    SET  a.awards = a.awards + 1
    WHERE m.title = movie_title;
END

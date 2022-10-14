SELECT * FROM reviews r 
WHERE (SELECT r.content LIKE"My%") AND LENGTH(r.content) > 61
ORDER BY r.rating DESC;

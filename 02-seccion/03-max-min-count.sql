
-- MAX, MIN, COUNT, ROUND y AVG
SELECT
	COUNT(*) AS total_users,
	MIN(followers) AS min_followers,
	MAX(followers) AS max_followers,
	ROUND(AVG(followers)) AS avg_followers,
	SUM(followers) / COUNT(*) AS avg_manual
FROM
	users;


-- Mostrar a los usuarios que tengan el tope de seguidores
SELECT
	first_name,
	last_name,
	followers
FROM
	users
WHERE
	followers = (SELECT MAX(followers) FROM users);


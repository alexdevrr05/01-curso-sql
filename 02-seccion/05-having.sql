SELECT
	COUNT(*),
	country
FROM
	users
GROUP BY
	country
HAVING
-- 	COUNT(*) > 5
	COUNT(*) BETWEEN 1 AND 5
ORDER BY
	count(*)
	DESC;

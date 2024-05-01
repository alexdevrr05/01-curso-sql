

SELECT
	id,
	UPPER(name) as upper_name,
	LOWER(name) as lower_name,
	LENGTH(name) as LENGTH,
	(5 * 10) as constante,
	CONCAT(id, '-', name),
	name
FROM
	users;


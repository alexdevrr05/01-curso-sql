
select * from users;

select * from users WHERE email LIKE '%google.com';


-- Extraer el dominio del correo
SELECT
	count(*),
	SUBSTRING(email, position('@' IN email) + 1) AS domain
FROM
	users 
GROUP BY SUBSTRING(email, position('@' IN email) + 1)
HAVING(count(*) > 1)
order by SUBSTRING(email, position('@' IN email) + 1);

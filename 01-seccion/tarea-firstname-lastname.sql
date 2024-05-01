-- Este es un caso donde no tenía creadas las columnas first_name y last_name
-- Y se insertan, actualizando la tabla de users

SELECT name,
 SUBSTRING(name, 0, POSITION (' ' in name)) as first_name,
 SUBSTRING(name, POSITION (' ' in name) + 1)  as last_name,
--  TRIM(SUBSTRING(name, POSITION (' ' in name)))  as no_recomendado
 FROM users;


UPDATE
	users
SET
	first_name = SUBSTRING(users.name, 0, POSITION (' ' in name)),
	last_name = SUBSTRING(users.name, POSITION (' ' in name) + 1);

SELECT * FROM users;


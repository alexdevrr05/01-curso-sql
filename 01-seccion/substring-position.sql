SELECT name,
 SUBSTRING(name, 0, POSITION (' ' in name)) as first_name,
 SUBSTRING(name, POSITION (' ' in name) + 1)  as last_name,
 TRIM(SUBSTRING(name, POSITION (' ' in name)))  as no_recomendado
 FROM users;
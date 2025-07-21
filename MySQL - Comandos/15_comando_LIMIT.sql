-- Comando LIMIT

-- Se obtiene 'n' filas de la tabla
select * from clientes limit 3;

-- Se obtiene las 32 filas de la tabla con una ciudad diferente y/o edad mayor o igual a 18
select * from clientes where not ciudadCliente = 'La Libertad' or edad >= 18 limit 32;
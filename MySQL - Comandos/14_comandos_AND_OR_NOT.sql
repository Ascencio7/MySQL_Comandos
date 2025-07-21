-- Comandos AND, OR y NOT

-- NOT: Obtiene todos los datos de la tabla con el dato distinto
select * from clientes where not ciudadCliente = 'La Libertad';

-- AND y OR: Obtiene todos los datos de la tabla con la ciudad distinta
select * from clientes where not ciudadCliente = 'La Libertad' and edadCliente = 18;
select * from clientes where not ciudadCliente = 'La Libertad' or edadCliente = 18;
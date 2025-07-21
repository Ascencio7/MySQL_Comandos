-- Comando NULL

-- Se obtiene todos los datos de la tabla con un dato nulo
select * from clientes where ciudadCliente is null;

-- Se obtiene todos los datos de la tabla con un dato no nulo
select * from clientes where ciudadCliente is not null;

-- Se obtiene todos los datos de la tabla con un dato no nulo y la edad mayor o igual a 18
select * from clientes where ciudadCliente is not null and edadCliente >= 18;

-- IFNULL

-- Se obtiene el nombre, ciudad, telefono y edad de la tabla y si la edad es nula se muestra como 0
select nombreCliente, ciudadCliente, telefonoCliente, ifnull(edadCliente, 0) as edadCliente from clientes;
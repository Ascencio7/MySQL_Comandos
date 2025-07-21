/*
	Los UNION
*/


/*
	UNION, combinar resultados de multiples consultas
		UNION combina los resultados de dos consultas eliminando duplicados. Si se 
		quiere conservar duplicados se usa 'UNION ALL'.
*/

-- 1. Consulta con UNION
create table clientesNuevos(
	clienteID int auto_increment primary key,
    nombreCliente varchar(100) not null, 
    ciudadCliente varchar(100) not null
);

select clienteID, nombreCliente, ciudadCliente from clientes
union
select clienteID, nombreCliente, ciudadCliente from clientesNuevos;

-- Se combinan las dos tablas SIN DUPLICADOS

-- Si se quiere incluir duplicados se usa 'UNION ALL':
select clienteID, nombreCliente, ciudadCliente from clientes
union all
select clienteID, nombreCliente, ciudadCliente from clientesNuevos;
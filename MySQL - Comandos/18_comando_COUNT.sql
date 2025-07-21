-- Comando COUNT

-- Cuenta cuántas filas contiene la tabla
select count(*) from clientes;

-- Cuenta cuántas filas contienen un dato no nulo en el campo edad de la tabla
select count(edadCliente) from clientes;
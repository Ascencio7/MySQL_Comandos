-- Comando CONCAT

-- El comando concatena en una sola columna los campos de la tabla
select concat('Nombre: ', nombreCliente, ', Ciudad: ', ciudadCliente, ', Telefono: ', telefonoCliente) from clientes;

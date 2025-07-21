-- Procedimiento almacenado

-- Se crea un procedimiento almacenado que obtiene todos los datos
DELIMITER //
create procedure todoslosClientes()
begin
	select * from clientes;
end//

-- Se manda a llamar el procedimiento
call todoslosClientes;

-- Se crea un procedimiento almacenado para obtener los clientes con edad variable
DELIMITER //
create procedure clientesEdad(in edadParam int)
begin
	select * from clientes where edadCliente = edadParam;
end//

-- Se manda a llamar el procedimiento con un valor 28
call clientesEdad(28);

-- Se elimina el procedimiento 
drop procedure clientesEdad;
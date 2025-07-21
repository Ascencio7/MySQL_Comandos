-- Comando TRANSACTIONS

-- Inicia una nueva transaccion desde este punto las modificaciones realizadas en la base son TEMPORALES y SOLO
-- VISIBLES DENTRO DE LA TRANSACCION

start transaction;

-- Finaliza una transaccion con exito cuando se ejecuta todos los cambios realizados en la base durante la
-- transaccion actual se hacen PERMANENTES Y VISIBLES
commit;

-- Deshace las operaciones realizadas en una transacción, revirtiendo la base de datos
-- al estado en que se encontraba antes de iniciar la transacción
rollback;


-- EJEMPLO

-- Inicia una transacción
start transaction;

-- Inserta un nuevo cliente suponiendo que ya hay 9
insert into clientes (nombreCliente, correoCliente)
values ('Carlos Gómez', 'carlos@gmail.com');

-- Inserta un pedido para el cliente recién creado
insert into pedidos (pedidoID, clienteID, producto, cantidad)
values (200, 10, 'Laptop', 1);

-- Si todo está bien se confirman los cambios
commit;


-- Si hay errores
start transaction;

insert into clientes (nombreCliente, correoCliente)
values ('Carlos Gómez', 'carlos@gmail.com');

-- Aquí provocamos un error a propósito (suponiendo que id_pedido=200 ya existe)
insert into pedidos (pedidoID, clienteID, producto, cantidad)
values (200, 10, 'Laptop', 1);

-- Si hay un error, revertimos los cambios
rollback;


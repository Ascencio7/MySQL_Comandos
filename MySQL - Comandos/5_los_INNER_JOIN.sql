/*
	INNER JOIN (JOIN)
*/

-- 1. INNER JOIN entre dos tablas
create table clientes(
	clienteID int auto_increment primary key,
    nombreCliente varchar(100) not null,
    ciudadCliente varchar(100) not null
);

create table vendedores(
	vendedorID int auto_increment primary key,
    nombreVendedor varchar(100) not null
);

create table pedidos(
	pedidoID int auto_increment primary key,
    clienteID int,
    producto varchar(100) not null,
    cantidadProducto int not null,
    vendedorID int,
    foreign key(vendedorID) references vendedores(vendedorID)
);


select clientes.clienteID, clientes.nombreCliente, pedidos.pedidoID, pedido.producto, pedido.cantidadProducto
from cientes
inner join pedidos on clientes.clienteID = pedidos.clienteID;



-- 2. INNER JOIN con ALIAS
select c.nombreCliente, p.producto, p.cantidad
from clientes as c
inner join pedidos as p on c.clienteID = p.clienteID;



-- 3. INNER JOIN entre 3 tablas
select c.nombreCliente, p.producto, v.nombreVendedor as Vendedor
from clientes c
inner join pedidos p on c.cienteID = p.clienteID
inner join vendedores v on p.vendedorID = v.vendedorID;



-- 4. INNER JOIN con la condicion WHERE
select c.nombreCliente, p.producto, p.cantidad
from clientes c
inner join pedidos p on c.clienteID = p.clienteID
where p.cantidad > 1;



-- 5. INNER JOIN con ordenacion con el comando 'ORDER BY'
select c.nombreCliente, p.producto, p.cantidad
from clientes c
inner join pedidios p on c.clienteID = p.clienteID
order by p.cantidad desc; -- 'DES' es de orden mayor a menor en forma descendente
-- order by p.cantidad asc; -- 'ASC' es de orden menor a mayor en forma ascendente


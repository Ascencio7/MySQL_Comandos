-- Comando ALIAS

-- El comando establece el alias
SELECT nombreCliente AS Cliente, ciudadCliente AS Ciudad_Residencia
FROM clientes;

-- Alias para tablas
-- Ejemplo sin usar ALIAS
SELECT clientes.nombreCliente, pedidos.producto
FROM clientes
INNER JOIN pedidos ON clientes.clienteID = pedidos.clienteID;

-- Ejemplo usando ALIAS
SELECT c.nombreCliente AS Cliente, p.producto AS Producto_Comprado
FROM clientes AS c
INNER JOIN pedidos AS p ON c.clienteID = p.clienteID;

-- Ejemplo usando ALIAS sin usar AS
SELECT nombreCliente Cliente, ciudadCliente Ciudad_Residencia
FROM clientes;

-- Ejemplo usando Alias en expresiones calculadas
SELECT producto, cantidad, precio_unitario, 
       cantidad * precio_unitario AS Precio_Total
FROM pedidos;

-- Ejemplo usando Alias con CONCAT para unir valores
SELECT CONCAT(nombre, ' - ', ciudad) AS Cliente_Ciudad
FROM clientes;

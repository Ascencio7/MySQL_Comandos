-- Comando HAVING

-- Cuenta cuántas filas contienen un dato no nulo en el campo de al edad de la tabla
select count(edadCliente) from clientes having count(edadCliente) > 21;
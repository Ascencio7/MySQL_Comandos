/*
	RIGHT JOIN
*/


/*
	RIGHT JOIN o RIGHT OUTER JOIN:
		Devuelve todas las filas de la tabla derecha y solo las coincidencias de la tabla izquierda. Si no hay
		coincidencias se rellena con NULL.
*/

select c.clienteID, c.nombreCliente, p.pedidoID, p.producto
from clientes c
right join pedidos p on c.clienteID = p.clienteID;
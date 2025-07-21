/*
	Los LEFT JOIN
*/


/*
	LEFT JOIN o LEFT OUTER JOIN:
		Devuelve todas las filas de la tabla izquierda y solo las coincidencias de la tabla derecha. Si no hay 
		coincidencias se rellena con NULL.
*/

select c.clienteID, c.nombreCliente, p.pedidoID, p.producto
from clientes c
left join pedidos p on c.clienteID = p.clienteID;
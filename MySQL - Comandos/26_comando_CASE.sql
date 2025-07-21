-- Comando CASE

-- El comando obtiene todos los datos de la tabla y estable condiciones de visualización de cadenas de texto según el valor
-- de la edad
select *,
case
	when edadCliente > 18 then 'Es mayor de edad'
	when edadCliente = 18 then 'Ha cumplido la mayoria de edad'
    else 'Es menor de edad'
end as '¿Eres mayor de edad?'
from clientes;


-- Obtiene todos los datos de la tabla y establece condiciones de visualizacion de valores booleanos 
-- segun el valor de la edad
select *,
case
	when edadCliente > 17 then true
    else false
end as '¿Eres mayor de edad?'
from clientes;
-- Comando VIEWS

-- Crea una vista en la tabla
create view clientesAdultosMayores as
select nombreCliente, edadCliente
from clientes where edadCliente >= 60;

select * from clientesAdultosMayores;

-- Se elimina la vista creada
drop view clientesAdultosMayores
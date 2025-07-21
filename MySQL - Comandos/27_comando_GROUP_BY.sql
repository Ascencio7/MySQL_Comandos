-- Comando GROUP BY

-- Comando que agrupa los resultados
select max(edadCliente) from clientes group by edadCliente;

-- Agrupa los resultados por edad diferente y cuenta cuántos registros existen de cada una
select count(edadCliente), edadCliente from clientes group by edadCliente;

-- Agrupa los resultados por edad diferente, cuenta cuántos registros existen de cada una y los ordena
select count(edadCliente), edadCliente from clientes group by edadCliente asc;

-- Agrupa los resultados por edad diferentes mayor de 25, cuenta cuántos registros existen de cada una y los ordena
select count(edadCliente), edadCliente from clientes  where edadCliente > 25 group by edadCliente asc;

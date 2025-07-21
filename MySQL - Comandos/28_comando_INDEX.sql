-- Comando INDEX

-- Crea un indice, en este caso llamado 'idx_nombre' en la tabla asociado al campo 'nombreCliente'
create index idx_nombre on clientes(nombreCliente);

-- Crea un indice unico llamado 'idx_nombre_unico' en la tabla asociado al campo 'nombreCliente'
create unique index idx_nombre_unico on clientes(nombreCliente);

-- Crea un indice unico llamado 'idx_nombre_ciudad' en la tabla asociado al campo 'ciudadCliente'
create unique index idx_nombre_ciudad on clientes(ciudadCliente);

-- Se elimina el indice
drop index idx_nombre on clientes;
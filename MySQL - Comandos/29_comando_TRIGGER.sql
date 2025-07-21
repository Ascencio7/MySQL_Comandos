-- Comando TRIGGER

-- Crea una tabla de historial para almacenar los correos electrónicos previos de los clientes
create table email_historial (
    email_historial_id int not null auto_increment,
    clienteID int not null,
    email varchar(100) null,
    primary key (email_historial_id),
    unique index email_historial_id_UNIQUE (email_historial_id asc) visible
);

-- Cambia el delimitador para definir el trigger
DELIMITER //

-- Crea un trigger llamado "tg_email_cliente" que guarda el email anterior en "email_historial" 
-- cada vez que se actualiza el campo "email" en la tabla "clientes"
create trigger tg_email_cliente
after update on clientes
for each row
begin
    if old.email <> new.email then
        insert into email_historial (clienteID, email)
        values (old.clienteID, old.email);
    end if;
end//

-- Restaura el delimitador original
DELIMITER ;

-- Actualiza el campo "email" del cliente con ID 1 en la tabla "clientes" para probar el trigger
update clientes set email = 'nuevoemail@gmail.com' where clienteID = 1;

-- Elimina el trigger llamado "tg_email_cliente"
drop trigger tg_email_cliente;

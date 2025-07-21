-- ComandoS CRUD

-- INSERT: Inserta un nuevo registro a la tabla
create table usuarios(
	usuariosID int auto_increment primary key,
    nombreUsuario varchar(100) not null,
    correoUsuario varchar(100) not null unique,
    telefonoUsuario varchar(20) not null unique
);

insert into usuarios(nombreUsuario, correoUsuario, telefonoUsuario)
values ('ruthvaquerano21','ruthva@gmail.com','7895-7478');

insert into usuarios(nombreUsuario, correoUsuario, telefonoUsuario)
values ('ascencio7','ascencio3.1417@gmail.com','6177-8146');

insert into usuarios(nombreUsuario, correoUsuario, telefonoUsuario)
values ('alliAnd','allia45@gmail.com','6245-9633');


-- UPDARE: Modifica el dato de la tabla

update usuarios set telefonoUsuario = '6107-8146' where usuarioID = 2;

update usuarios set telefonoUsuario = '7805-4787' where usuarioID = 1;

update usuarios set telefonoUsuario = '6425-6930' where usuarioID = 3;


-- DELETE: Elimina el registro de la tabla
delete from usuarios where usuarioID = 2;

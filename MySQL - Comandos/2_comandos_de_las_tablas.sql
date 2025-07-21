-- Las tablas en MySQL

-- Crear una tabla
create table personas(
	id int,
    nombre varchar(100),
    edad int,
    correo varchar(50),
    created date
);


-- NOT NULL: Obliga a que el campo id posea siempre un valor no nulo
create table personas2(
	id int not null,
    nombre varchar(100) not null,
    edad int,
    correo varchar(50),
    created date
);


-- UNIQUE: Obliga a que el campo poseea valores diferentes y unicos
create table personas3(
	id int not null,
    nombre varchar(100) not null,
    edad int,
    correo varchar(50),
    created datetime,
    unique(id)
);


-- PRIMARY KEY: Establece que el campo id sea una llave primaria para futuras relaciones
create table personas4(
	id int not null,
    nombre varchar(100) not null,
    edad int,
    correo varchar(50),
    created datetime,
    unique(id),
    primary key(id)
);


-- CHECK: Establece que el campo 'edad' solo podra contener valores mayores o iguales a 18, por ejemplo
create table personas5(
	id int not null,
    nombre varchar(100) not null,
    edad int,
    correo varchar(50),
    created datetime,
    unique(id),
    primary key(id),
    check(edad >= 18)
);


-- DEFAULT: Establece un valor por defecto en el campo created correspondiente a la fecha del sistema
create table personas6(
	id int not null,
    nombre varchar(100) not null,
    edad int,
    correo varchar(50),
    created datetime default current_timestamp(),
    unique(id),
    primary key(id),
    check(edad >= 18)
);


-- DROP TABLE: Comando para borrar dicha tabla
drop table persona1;


-- ADD: Agrega un nuevo atributo a la tabla
alter table personas4 add apellido varchar(100);


-- RENAME COLUMN: Renombra el atributo de la tabla
alter table personas4 rename column apellido to apellidoCasada;


-- Modify column: Modifica el tipo del atributo de la tabla
alter table personas4 modify column apellidoCasada varchar(150);


-- DROP COLUMN: Elimina el atributo de la tabla
alter table personas4 drop column apellidoCasada;

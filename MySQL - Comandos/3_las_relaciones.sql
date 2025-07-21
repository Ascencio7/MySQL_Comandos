-- Los tipos de relaciones

-- Relacion 1:1, uno a uno
/*
	Esta relacion indica que un registro en la tabla A se relaciona
    con un solo registro en la tabla B y viceversa
*/

create table usuarios(
	usuarioID int auto_increment primary key,
    nombreUsuario varchar(100) not null,
    correoUsuario varchar(100) not null unique,
    telefonoUsuario varchar(20) not null unique
);



-- El campo usuarioID es clave foranea de la clave primaria usuarioID de la tabla 'usuarios'
create table DUI(
	DUI_ID int auto_increment primary key,
    numeroDUI int not null,
    usuarioID int,
    unique(DUI_ID),
    foreign key(usuarioID) references usuarios(usuarioID)
);


-- Relacion 1:N, uno a muchos
/*
	Relacion que indica que un registro en la tabla A puede tener varios registros relacionados en la tabla
    B, pero un registro en la tabla B se relaciona con un solo registro en la tabla A
*/

create table Companys(
	companyID int auto_increment primary key, -- PK 
    nombreCompany varchar(100) not null
);

-- Un empleado solo puede tener una empresa, pero una empresa puede tener muchos empleados


-- Relacion N:M, Muchos a Muchos
/*
	Relacion que indica que en un registro en la tabla A puede relacionarse con varios registros en la tabla B y
    viceversa
*/

create table lenguajes(
	lenguajesID int auto_increment primary key,
    nombreLenguaje varchar(100) not null
);

-- Los usuarios pueden conocer muchos lenguajes. Un lenguaje puede ser conocido por muchos usuarios.
create table usuariosLenguajes(
	usuariosLenguajesID int auto_increment primary key,
    usuarioID int,
    lenguajeID int,
    foreign key(usuarioID) references usuarios(usuarioID),
    foreign key(lenguajeID) references lenguajes(lenguajeID),
    unique(usuariosLenguajesID)
);


-- Relacion de Auto-Referencia
/*
	Relacion que indica que en un registro en la tabla A puede relacionarse con otro registro en la tabla A
*/

create table jefes(
	jefeID int auto_increment primary key,
    nombreJefe varchar(100) not null,
    puestoJefe varchar(100) not null,
    correoJefe varchar(100) not null unique,
    telefonoJefe varchar(20) not null unique
);


create table personal(
	personalID int auto_increment primary key,
    nombrePersonal varchar(100) not null,
    puesto varchar(70) not null,
    areaAsignada varchar(100) not null,
    jefeID int,
    subdireccion int not null,
    constraint jefeID foreign key(jefeID) references personal(personalID)
);

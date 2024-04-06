CREATE DATABASE IF NOT EXISTS 'tarea2';

USE 'tarea2';

CREATE TABLE empleado (
    Puesto varchar(128) not NULL,
    DocumentoIdentidad int not NULL,
    Nombre varchar(128) not NULL,
    FechaContratacion date not NULL,

    PRIMARY KEY (DocumentoIdentidad)
)

CREATE TABLE Puesto(
    Nombre varchar(128) not NULL,
    SalarioxHora int not NULL,

    PRIMARY KEY (Nombre)
)

CREATE TABLE TiposEvento(
    ID int not NULL,
    Nombre varchar(128) not NULL,

    PRIMARY KEY (ID)
)

CREATE TABLE TiposMovimientos(
    ID int not NULL,
    Nombre varchar(128) not NULL,
    TipoAccion varchar(128) not NULL,

    PRIMARY KEY (ID)
)

CREATE TABLE Usuarios(
    ID int not NULL,
    Nombre varchar(128) not NULL,
    Contraseña varchar(128) not NULL,

    PRIMARY KEY (ID)
)

CREATE TABLE Movimientos(
    Id int not NULL AUTO_INCREMENT,
    DocumentoIdentidad int not NULL,
    Id TiposMovimientos varchar(128) not NULL,
    Fecha date not NULL,
    Monto int not NULL,
    PostByUser VARCHAR(128) not NULL,
    PostInIP VARCHAR(128) not NULL,
    PostTime TIMESTAMP not NULL,

    PRIMARY KEY (Id),
    FOREIGN KEY (DocumentoIdentidad) REFERENCES empleado(DocumentoIdentidad),
    FOREIGN KEY (Id TiposMovimientos) REFERENCES TiposMovimientos(ID)
)

CREATE TABLE Error(
    Codigo int not NULL,
    Descripcion varchar TEXT not NULL,

    PRIMARY KEY (Codigo)
)
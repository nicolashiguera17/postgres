CREATE DATABASE Taller_basico_de_postgres

\c Taller_basico_de_postgres;


CREATE table clientes(
    id serial NOT NULL PRIMARY KEY ,
    nombre varchar (40) NOT NULL,
    apellidos varchar (100) NOT NULL,
    celular NUMERIC (10,0) NOT NULL,
    direccion VARCHAR (80) NOT NULL,
    correo_electronico VARCHAR(70) NOT NULL UNIQUE
)

CREATE TABLE IF NOT EXISTS categorias(
id_categoria serial NOT NULL PRIMARY KEY ,
descripcion  VARCHAR (45) NOT NULL,
estado BOOLEAN NOT NULL
)


CREATE TABLE productos(
    id_producto serial NOT NULL PRIMARY KEY ,
    nombre VARCHAR (45) NOT NULL,
    id_categoria INT NOT NULL ,
    codigo_barras VARCHAR (150) NOT NULL,
    precio_venta numeric(10,2) NOT NULL,
    cantidad_stock INT NOT NULL,
    estado BOOLEAN NOT NULL
)

CREATE TABLE compras (
    id_compra serial NOT NULL PRIMARY KEY,
    id_cliente INT NOT NULL,
    fecha DATETIME NOT NULL,
    medio_pago CHAR (1) NOT NULL,
    comentario VARCHAR (300) NOT NULL,
    estado BOOLEAN NOT NULL
)

CREATE TABLE compras_productos(
    id_compra serial NOT NULL ,
    id_prodcuto serial NOT NULL,
    cantidad INT NOT NULL
    total numeric(16,2) NOT NULL,
    estado BOOLEAN NOT NULL
)
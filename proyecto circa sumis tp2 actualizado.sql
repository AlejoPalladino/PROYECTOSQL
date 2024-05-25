DROP DATABASE circa_sumis;

CREATE DATABASE IF NOT EXISTS  CIRCA_SUMIS;

USE CIRCA_SUMIS;


-- CREACION DE TABLA MEDIDAS
CREATE TABLE IF NOT EXISTS MEDIDAS (
idMedidas INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	altura FLOAT, 
	busto FLOAT,
	cintura FLOAT,
	cadera FLOAT,
	largoespalda FLOAT
);


-- CREACION DE TABLA CLIENTE
CREATE TABLE IF NOT EXISTS CLIENTE (
idCliente INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    dirección VARCHAR(100),
    telefono INT,
    Medidas int,
    FOREIGN KEY (Medidas) REFERENCES MEDIDAS(idMedidas)
    );
    

-- CREACION DE TABLA PROVEEDORES
CREATE TABLE IF NOT EXISTS PROVEEDORES (
idProveedores INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(50), 
	dirección VARCHAR(50),
	telefono INT,
	precio FLOAT
);


-- CREACION DE TABLA TELAS
CREATE TABLE IF NOT EXISTS TELAS (
idTela INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
tipodetela varchar(100),
descripcion varchar(255)
);


-- CREACION DE TABLA PROV_TELAS
CREATE TABLE IF NOT EXISTS PROV_TELAS (
	id_tela INT,
    id_Proveedores INT,
	FOREIGN KEY (id_tela) REFERENCES TELAS(idTela),
	FOREIGN KEY (id_Proveedores) REFERENCES PROVEEDORES(idProveedores)
);


-- CREACION TABLA PRODUCTO
CREATE TABLE IF NOT EXISTS PRODUCTO (
idProducto INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
tipódeproducto VARCHAR(50),
precio FLOAT
);


-- CREACION DE TABLA PEDIDO
CREATE TABLE IF NOT EXISTS PEDIDO (
idPedido INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	id_Cliente INT,
    FOREIGN KEY (id_Cliente) REFERENCES CLIENTE(idCliente),
    fecha_compra DATE
    );


-- CREACION TABLA DETALLE_PEDIDO
CREATE TABLE IF NOT EXISTS DETALLE_PEDIDO (
idDetalle INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	NroPedido INT,
	id_Producto INT,
    precio_unitario FLOAT,
	cantidad INT, -- Nuevo atributo para almacenar la cantidad de productos
    FOREIGN KEY (id_Producto) REFERENCES PRODUCTO(idProducto),
    FOREIGN KEY (NroPedido) REFERENCES PEDIDO(idPedido)
);

-- ALTER TABLE DETALLE_PEDIDO
-- ADD COLUMN cantidad INT;


 -- TRUNCATE TABLE detalle_pedido;
 

-- CREACION DE TABLA ARREGLOS
CREATE TABLE IF NOT EXISTS ARREGLOS (
idArreglos INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	arreglos VARCHAR(255),
	id_cliente INT,
	id_producto INT,
    id_pedido INT,
	FOREIGN KEY (id_Producto) REFERENCES PRODUCTO(idProducto),
	FOREIGN KEY (id_Cliente) REFERENCES CLIENTE(idCliente),
    FOREIGN KEY (id_Pedido) REFERENCES PEDIDO(idPedido)
);


CREATE TABLE IF NOT EXISTS TURNOS (
idTurno INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	fechaturno DATETIME,
	retiro DATETIME,
    confección INT,
	FOREIGN KEY (confección) REFERENCES ARREGLOS(idArreglos)
);


/* CREACION DE INSERTS */

-- INSERT DE LA TABLA MEDIDAS
INSERT INTO MEDIDAS (idMedidas, altura, busto, cintura, cadera, largoespalda) VALUES (DEFAULT, 165.5, 90.0, 60.0, 95.0, 40.0);
INSERT INTO MEDIDAS (idMedidas, altura, busto, cintura, cadera, largoespalda) VALUES (DEFAULT, 170.0, 85.0, 65.0, 90.0, 42.0);
INSERT INTO MEDIDAS (idMedidas, altura, busto, cintura, cadera, largoespalda) VALUES (DEFAULT, 160.0, 95.0, 70.0, 100.0, 39.0);
INSERT INTO MEDIDAS (idMedidas, altura, busto, cintura, cadera, largoespalda) VALUES (DEFAULT, 158.0, 92.0, 68.0, 98.0, 41.0);
INSERT INTO MEDIDAS (idMedidas, altura, busto, cintura, cadera, largoespalda) VALUES (DEFAULT, 172.0, 88.0, 72.0, 94.0, 43.0);
INSERT INTO MEDIDAS (idMedidas, altura, busto, cintura, cadera, largoespalda) VALUES (DEFAULT, 166.0, 91.0, 66.0, 97.0, 40.5);
INSERT INTO MEDIDAS (idMedidas, altura, busto, cintura, cadera, largoespalda) VALUES (DEFAULT, 168.0, 93.0, 69.0, 99.0, 42.5);
INSERT INTO MEDIDAS (idMedidas, altura, busto, cintura, cadera, largoespalda) VALUES (DEFAULT, 159.0, 87.0, 64.0, 89.0, 39.5);
INSERT INTO MEDIDAS (idMedidas, altura, busto, cintura, cadera, largoespalda) VALUES (DEFAULT, 167.0, 89.0, 67.0, 96.0, 41.5);
INSERT INTO MEDIDAS (idMedidas, altura, busto, cintura, cadera, largoespalda) VALUES (DEFAULT, 162.0, 85.0, 62.0, 92.0, 40.0);
INSERT INTO MEDIDAS (idMedidas, altura, busto, cintura, cadera, largoespalda) VALUES (DEFAULT, 175.0, 94.0, 71.0, 101.0, 44.0);
INSERT INTO MEDIDAS (idMedidas, altura, busto, cintura, cadera, largoespalda) VALUES (DEFAULT, 163.0, 86.0, 63.0, 91.0, 40.2);
INSERT INTO MEDIDAS (idMedidas, altura, busto, cintura, cadera, largoespalda) VALUES (DEFAULT, 169.0, 90.0, 65.0, 95.0, 41.8);
INSERT INTO MEDIDAS (idMedidas, altura, busto, cintura, cadera, largoespalda) VALUES (DEFAULT, 160.5, 88.0, 66.0, 93.0, 39.8);
INSERT INTO MEDIDAS (idMedidas, altura, busto, cintura, cadera, largoespalda) VALUES (DEFAULT, 171.0, 92.0, 68.0, 98.0, 43.2);
INSERT INTO MEDIDAS (idMedidas, altura, busto, cintura, cadera, largoespalda) VALUES (DEFAULT, 164.5, 87.0, 64.0, 90.0, 40.4);
INSERT INTO MEDIDAS (idMedidas, altura, busto, cintura, cadera, largoespalda) VALUES (DEFAULT, 173.0, 91.0, 70.0, 99.0, 44.5);
INSERT INTO MEDIDAS (idMedidas, altura, busto, cintura, cadera, largoespalda) VALUES (DEFAULT, 161.0, 85.0, 61.0, 89.0, 39.7);
INSERT INTO MEDIDAS (idMedidas, altura, busto, cintura, cadera, largoespalda) VALUES (DEFAULT, 168.5, 89.0, 67.0, 95.0, 42.0);
INSERT INTO MEDIDAS (idMedidas, altura, busto, cintura, cadera, largoespalda) VALUES (DEFAULT, 165.0, 90.0, 66.0, 94.0, 40.9);

/* ARREGLOS
-- Desactivar el modo seguro temporalmente
-- SET SQL_SAFE_UPDATES = 0;

-- Inicializa la variable
-- SET @id = 0;

-- Realiza la actualización
-- UPDATE MEDIDAS
-- SET idMedidas = (@id := @id + 1)
-- ORDER BY idMedidas;

-- Vuelve a activar el modo seguro
-- SET SQL_SAFE_UPDATES = 1; */

-- INSERT TABLA CLIENTE
INSERT INTO CLIENTE (idCliente, nombre, apellido, dirección, telefono, Medidas) VALUES (DEFAULT, 'Sofía', 'García', 'Av. Rivadavia 1234, Buenos Aires', 1155551234, 1);
INSERT INTO CLIENTE (idCliente, nombre, apellido, dirección, telefono, Medidas) VALUES (DEFAULT, 'Valentina', 'López', 'Calle Florida 567, Buenos Aires', 1155555678, 2);
INSERT INTO CLIENTE (idCliente, nombre, apellido, dirección, telefono, Medidas) VALUES (DEFAULT, 'Martina', 'Fernández', 'Av. Corrientes 890, Buenos Aires', 1155558901, 3);
INSERT INTO CLIENTE (idCliente, nombre, apellido, dirección, telefono, Medidas) VALUES (DEFAULT, 'Isabella', 'Martínez', 'Av. Santa Fe 123, Buenos Aires', 1155552345, 4);
INSERT INTO CLIENTE (idCliente, nombre, apellido, dirección, telefono, Medidas) VALUES (DEFAULT, 'Renata', 'Rodríguez', 'Av. de Mayo 456, Buenos Aires', 1155556789, 5);
INSERT INTO CLIENTE (idCliente, nombre, apellido, dirección, telefono, Medidas) VALUES (DEFAULT, 'Mía', 'Pérez', 'Av. Cabildo 789, Buenos Aires', 1155550123, 6);
INSERT INTO CLIENTE (idCliente, nombre, apellido, dirección, telefono, Medidas) VALUES (DEFAULT, 'Emma', 'Gómez', 'Calle Lavalle 345, Buenos Aires', 1155553456, 7);
INSERT INTO CLIENTE (idCliente, nombre, apellido, dirección, telefono, Medidas) VALUES (DEFAULT, 'Abril', 'Díaz', 'Av. Callao 678, Buenos Aires', 1155557890, 8);
INSERT INTO CLIENTE (idCliente, nombre, apellido, dirección, telefono, Medidas) VALUES (DEFAULT, 'Julieta', 'Hernández', 'Av. 9 de Julio 901, Buenos Aires', 1155552345, 9);
INSERT INTO CLIENTE (idCliente, nombre, apellido, dirección, telefono, Medidas) VALUES (DEFAULT, 'Valeria', 'Suárez', 'Av. Belgrano 234, Buenos Aires', 1155556789, 10);
INSERT INTO CLIENTE (idCliente, nombre, apellido, dirección, telefono, Medidas) VALUES (DEFAULT, 'Camila', 'Torres', 'Av. Libertador 567, Buenos Aires', 1155550123, 11);
INSERT INTO CLIENTE (idCliente, nombre, apellido, dirección, telefono, Medidas) VALUES (DEFAULT, 'Mariana', 'Romero', 'Av. Scalabrini Ortiz 890, Buenos Aires', 1155553456, 12);
INSERT INTO CLIENTE (idCliente, nombre, apellido, dirección, telefono, Medidas) VALUES (DEFAULT, 'Luciana', 'Álvarez', 'Calle Sarmiento 123, Buenos Aires', 1155557890, 13);
INSERT INTO CLIENTE (idCliente, nombre, apellido, dirección, telefono, Medidas) VALUES (DEFAULT, 'Martina', 'Benítez', 'Av. Pueyrredón 456, Buenos Aires', 1155552345, 14);
INSERT INTO CLIENTE (idCliente, nombre, apellido, dirección, telefono, Medidas) VALUES (DEFAULT, 'Juana', 'Gutiérrez', 'Av. San Martín 678, Buenos Aires', 1155556789, 15);
INSERT INTO CLIENTE (idCliente, nombre, apellido, dirección, telefono, Medidas) VALUES (DEFAULT, 'Agustina', 'Luna', 'Av. Rivadavia 901, Buenos Aires', 1155550123, 16);
INSERT INTO CLIENTE (idCliente, nombre, apellido, dirección, telefono, Medidas) VALUES (DEFAULT, 'Valentina', 'Castro', 'Calle Florida 234, Buenos Aires', 1155553456, 17);
INSERT INTO CLIENTE (idCliente, nombre, apellido, dirección, telefono, Medidas) VALUES (DEFAULT, 'María', 'Ferreira', 'Av. Corrientes 567, Buenos Aires', 1155557890, 18);
INSERT INTO CLIENTE (idCliente, nombre, apellido, dirección, telefono, Medidas) VALUES (DEFAULT, 'Sara', 'Blanco', 'Av. Santa Fe 890, Buenos Aires', 1155552345, 19);
INSERT INTO CLIENTE (idCliente, nombre, apellido, dirección, telefono, Medidas) VALUES (DEFAULT, 'Victoria', 'Ortega', 'Av. de Mayo 123, Buenos Aires', 1155556789, 20);

-- DELETE FROM cliente;

-- CREACION INSERT TABLA PROVEEDORES
INSERT INTO PROVEEDORES (idProveedores, nombre, dirección, telefono, precio) VALUES (DEFAULT, 'Textil Buenos Aires', 'Calle Falsa 123, Buenos Aires', 1155551111, 4500.0);
INSERT INTO PROVEEDORES (idProveedores, nombre, dirección, telefono, precio) VALUES (DEFAULT, 'Telas del Sur', 'Avenida Siempreviva 742, Buenos Aires', 1155552222, 12000.0);
INSERT INTO PROVEEDORES (idProveedores, nombre, dirección, telefono, precio) VALUES (DEFAULT, 'Fabricas Unidas', 'Calle de la Moda 456, Buenos Aires', 1155553333, 7000.0);
INSERT INTO PROVEEDORES (idProveedores, nombre, dirección, telefono, precio) VALUES (DEFAULT, 'Telas y Más', 'Boulevard de los Sueños Rotos 789, Buenos Aires', 1155554444, 11000.0);
INSERT INTO PROVEEDORES (idProveedores, nombre, dirección, telefono, precio) VALUES (DEFAULT, 'Tejidos Argentinos', 'Avenida Libertador 1000, Buenos Aires', 1155555555, 15000.0);
INSERT INTO PROVEEDORES (idProveedores, nombre, dirección, telefono, precio) VALUES (DEFAULT, 'La Casa de las Telas', 'Calle Falsa 1234, Buenos Aires', 1155556666, 20000.0);
INSERT INTO PROVEEDORES (idProveedores, nombre, dirección, telefono, precio) VALUES (DEFAULT, 'Moda Textil', 'Avenida Corrientes 456, Buenos Aires', 1155557777, 9000.0);
INSERT INTO PROVEEDORES (idProveedores, nombre, dirección, telefono, precio) VALUES (DEFAULT, 'Telas Premium', 'Calle de la Moda 789, Buenos Aires', 1155558888, 14000.0);
INSERT INTO PROVEEDORES (idProveedores, nombre, dirección, telefono, precio) VALUES (DEFAULT, 'Tejidos y Diseños', 'Boulevard de los Sueños Rotos 123, Buenos Aires', 1155559999, 6000.0);
INSERT INTO PROVEEDORES (idProveedores, nombre, dirección, telefono, precio) VALUES (DEFAULT, 'La Fábrica de Telas', 'Avenida Siempreviva 742, Buenos Aires', 1155550000, 13000.0);

-- CREACION INSERT TELAS
INSERT INTO TELAS (idTela, tipodetela, descripcion) VALUES (DEFAULT, 'Algodón', 'Tejido natural suave y transpirable');
INSERT INTO TELAS (idTela, tipodetela, descripcion) VALUES (DEFAULT, 'Seda', 'Tejido natural brillante y suave');
INSERT INTO TELAS (idTela, tipodetela, descripcion) VALUES (DEFAULT, 'Lino', 'Tejido natural resistente y fresco');
INSERT INTO TELAS (idTela, tipodetela, descripcion) VALUES (DEFAULT, 'Lana', 'Tejido natural cálido y aislante');
INSERT INTO TELAS (idTela, tipodetela, descripcion) VALUES (DEFAULT, 'Poliéster', 'Tejido sintético duradero y de secado rápido');
INSERT INTO TELAS (idTela, tipodetela, descripcion) VALUES (DEFAULT, 'Nylon', 'Tejido sintético fuerte y elástico');
INSERT INTO TELAS (idTela, tipodetela, descripcion) VALUES (DEFAULT, 'Rayón', 'Tejido semisintético suave y absorbente');
INSERT INTO TELAS (idTela, tipodetela, descripcion) VALUES (DEFAULT, 'Acrílico', 'Tejido sintético cálido y ligero');
INSERT INTO TELAS (idTela, tipodetela, descripcion) VALUES (DEFAULT, 'Spandex', 'Tejido sintético muy elástico');
INSERT INTO TELAS (idTela, tipodetela, descripcion) VALUES (DEFAULT, 'Viscosa', 'Tejido semisintético suave y sedoso');
INSERT INTO TELAS (idTela, tipodetela, descripcion) VALUES (DEFAULT, 'Franela', 'Tejido de algodón o lana suave y cálido');
INSERT INTO TELAS (idTela, tipodetela, descripcion) VALUES (DEFAULT, 'Denim', 'Tejido de algodón resistente y duradero');
INSERT INTO TELAS (idTela, tipodetela, descripcion) VALUES (DEFAULT, 'Gasa', 'Tejido ligero y transparente');
INSERT INTO TELAS (idTela, tipodetela, descripcion) VALUES (DEFAULT, 'Chifón', 'Tejido ligero y translúcido');
INSERT INTO TELAS (idTela, tipodetela, descripcion) VALUES (DEFAULT, 'Tul', 'Tejido de malla fina y ligera');
INSERT INTO TELAS (idTela, tipodetela, descripcion) VALUES (DEFAULT, 'Terciopelo', 'Tejido lujoso con una superficie suave');
INSERT INTO TELAS (idTela, tipodetela, descripcion) VALUES (DEFAULT, 'Pana', 'Tejido de algodón con una textura acanalada');
INSERT INTO TELAS (idTela, tipodetela, descripcion) VALUES (DEFAULT, 'Gabardina', 'Tejido de algodón o lana resistente y duradero');
INSERT INTO TELAS (idTela, tipodetela, descripcion) VALUES (DEFAULT, 'Sarga', 'Tejido de algodón con un patrón diagonal');
INSERT INTO TELAS (idTela, tipodetela, descripcion) VALUES (DEFAULT, 'Lycra', 'Tejido sintético muy elástico y ajustado');

-- CREACION INSERT PROV_TELAS
INSERT INTO PROV_TELAS (id_tela, id_Proveedores) VALUES (1, 1);
INSERT INTO PROV_TELAS (id_tela, id_Proveedores) VALUES (2, 2);
INSERT INTO PROV_TELAS (id_tela, id_Proveedores) VALUES (3, 3);
INSERT INTO PROV_TELAS (id_tela, id_Proveedores) VALUES (4, 4);
INSERT INTO PROV_TELAS (id_tela, id_Proveedores) VALUES (5, 5);
INSERT INTO PROV_TELAS (id_tela, id_Proveedores) VALUES (6, 6);
INSERT INTO PROV_TELAS (id_tela, id_Proveedores) VALUES (7, 7);
INSERT INTO PROV_TELAS (id_tela, id_Proveedores) VALUES (8, 8);
INSERT INTO PROV_TELAS (id_tela, id_Proveedores) VALUES (9, 9);
INSERT INTO PROV_TELAS (id_tela, id_Proveedores) VALUES (10, 10);
INSERT INTO PROV_TELAS (id_tela, id_Proveedores) VALUES (11, 1);
INSERT INTO PROV_TELAS (id_tela, id_Proveedores) VALUES (12, 2);
INSERT INTO PROV_TELAS (id_tela, id_Proveedores) VALUES (13, 3);
INSERT INTO PROV_TELAS (id_tela, id_Proveedores) VALUES (14, 4);
INSERT INTO PROV_TELAS (id_tela, id_Proveedores) VALUES (15, 5);
INSERT INTO PROV_TELAS (id_tela, id_Proveedores) VALUES (16, 6);
INSERT INTO PROV_TELAS (id_tela, id_Proveedores) VALUES (17, 7);
INSERT INTO PROV_TELAS (id_tela, id_Proveedores) VALUES (18, 8);
INSERT INTO PROV_TELAS (id_tela, id_Proveedores) VALUES (19, 9);
INSERT INTO PROV_TELAS (id_tela, id_Proveedores) VALUES (20, 10);

-- CREACION INSERT PRODUCTO
INSERT INTO PRODUCTO (idProducto, tipódeproducto, precio) VALUES (DEFAULT, 'Vestido de noche', 30000.0);
INSERT INTO PRODUCTO (idProducto, tipódeproducto, precio) VALUES (DEFAULT, 'Blusa casual', 8000.0);
INSERT INTO PRODUCTO (idProducto, tipódeproducto, precio) VALUES (DEFAULT, 'Pantalón de vestir', 12000.0);
INSERT INTO PRODUCTO (idProducto, tipódeproducto, precio) VALUES (DEFAULT, 'Falda de verano', 9000.0);
INSERT INTO PRODUCTO (idProducto, tipódeproducto, precio) VALUES (DEFAULT, 'Abrigo de lana', 25000.0);
INSERT INTO PRODUCTO (idProducto, tipódeproducto, precio) VALUES (DEFAULT, 'Chaqueta de cuero', 45000.0);
INSERT INTO PRODUCTO (idProducto, tipódeproducto, precio) VALUES (DEFAULT, 'Camisa de seda', 20000.0);
INSERT INTO PRODUCTO (idProducto, tipódeproducto, precio) VALUES (DEFAULT, 'Vestido de cóctel', 35000.0);
INSERT INTO PRODUCTO (idProducto, tipódeproducto, precio) VALUES (DEFAULT, 'Blusa de lino', 7000.0);
INSERT INTO PRODUCTO (idProducto, tipódeproducto, precio) VALUES (DEFAULT, 'Pantalón de lino', 15000.0);
INSERT INTO PRODUCTO (idProducto, tipódeproducto, precio) VALUES (DEFAULT, 'Falda lápiz', 12000.0);
INSERT INTO PRODUCTO (idProducto, tipódeproducto, precio) VALUES (DEFAULT, 'Abrigo de gabardina', 30000.0);
INSERT INTO PRODUCTO (idProducto, tipódeproducto, precio) VALUES (DEFAULT, 'Chaqueta de jean', 18000.0);
INSERT INTO PRODUCTO (idProducto, tipódeproducto, precio) VALUES (DEFAULT, 'Camisa de algodón', 5000.0);
INSERT INTO PRODUCTO (idProducto, tipódeproducto, precio) VALUES (DEFAULT, 'Vestido de gala', 50000.0);

-- Verificar si el producto existe
SELECT * FROM PRODUCTO WHERE idProducto = 16;

-- CREACION INSERT PEDIDO
INSERT INTO PEDIDO (idPedido, id_Cliente, fecha_compra) VALUES (DEFAULT, 1, '2023-01-15');
INSERT INTO PEDIDO (idPedido, id_Cliente, fecha_compra) VALUES (DEFAULT, 2, '2023-02-20');
INSERT INTO PEDIDO (idPedido, id_Cliente, fecha_compra) VALUES (DEFAULT, 3, '2023-03-10');
INSERT INTO PEDIDO (idPedido, id_Cliente, fecha_compra) VALUES (DEFAULT, 4, '2023-04-05');
INSERT INTO PEDIDO (idPedido, id_Cliente, fecha_compra) VALUES (DEFAULT, 5, '2023-05-12');
INSERT INTO PEDIDO (idPedido, id_Cliente, fecha_compra) VALUES (DEFAULT, 6, '2023-06-18');
INSERT INTO PEDIDO (idPedido, id_Cliente, fecha_compra) VALUES (DEFAULT, 7, '2023-07-22');
INSERT INTO PEDIDO (idPedido, id_Cliente, fecha_compra) VALUES (DEFAULT, 8, '2023-08-14');
INSERT INTO PEDIDO (idPedido, id_Cliente, fecha_compra) VALUES (DEFAULT, 9, '2023-09-19');
INSERT INTO PEDIDO (idPedido, id_Cliente, fecha_compra) VALUES (DEFAULT, 10, '2023-10-23');
INSERT INTO PEDIDO (idPedido, id_Cliente, fecha_compra) VALUES (DEFAULT, 11, '2023-11-04');
INSERT INTO PEDIDO (idPedido, id_Cliente, fecha_compra) VALUES (DEFAULT, 12, '2023-12-01');
INSERT INTO PEDIDO (idPedido, id_Cliente, fecha_compra) VALUES (DEFAULT, 13, '2024-01-07');
INSERT INTO PEDIDO (idPedido, id_Cliente, fecha_compra) VALUES (DEFAULT, 14, '2024-02-15');
INSERT INTO PEDIDO (idPedido, id_Cliente, fecha_compra) VALUES (DEFAULT, 15, '2024-03-10');
INSERT INTO PEDIDO (idPedido, id_Cliente, fecha_compra) VALUES (DEFAULT, 16, '2024-04-20');
INSERT INTO PEDIDO (idPedido, id_Cliente, fecha_compra) VALUES (DEFAULT, 17, '2024-05-25');
INSERT INTO PEDIDO (idPedido, id_Cliente, fecha_compra) VALUES (DEFAULT, 18, '2024-06-30');
INSERT INTO PEDIDO (idPedido, id_Cliente, fecha_compra) VALUES (DEFAULT, 19, '2024-07-10');
INSERT INTO PEDIDO (idPedido, id_Cliente, fecha_compra) VALUES (DEFAULT, 20, '2024-08-15');

-- CREACION INSERT DETALLE_PEDIDO
INSERT INTO DETALLE_PEDIDO (idDetalle, NroPedido, id_Producto, precio_unitario, cantidad) VALUES (DEFAULT, 1, 1, 22000.00, 2);
INSERT INTO DETALLE_PEDIDO (idDetalle, NroPedido, id_Producto, precio_unitario, cantidad) VALUES (DEFAULT, 2, 2, 25000.00, 3);
INSERT INTO DETALLE_PEDIDO (idDetalle, NroPedido, id_Producto, precio_unitario, cantidad) VALUES (DEFAULT, 3, 3, 28000.00, 1);
INSERT INTO DETALLE_PEDIDO (idDetalle, NroPedido, id_Producto, precio_unitario, cantidad) VALUES (DEFAULT, 4, 4, 30000.00, 2);
INSERT INTO DETALLE_PEDIDO (idDetalle, NroPedido, id_Producto, precio_unitario, cantidad) VALUES (DEFAULT, 5, 5, 32000.00, 4);
INSERT INTO DETALLE_PEDIDO (idDetalle, NroPedido, id_Producto, precio_unitario, cantidad) VALUES (DEFAULT, 6, 6, 34000.00, 1);
INSERT INTO DETALLE_PEDIDO (idDetalle, NroPedido, id_Producto, precio_unitario, cantidad) VALUES (DEFAULT, 7, 7, 36000.00, 2);
INSERT INTO DETALLE_PEDIDO (idDetalle, NroPedido, id_Producto, precio_unitario, cantidad) VALUES (DEFAULT, 8, 8, 38000.00, 3);
INSERT INTO DETALLE_PEDIDO (idDetalle, NroPedido, id_Producto, precio_unitario, cantidad) VALUES (DEFAULT, 9, 9, 40000.00, 2);
INSERT INTO DETALLE_PEDIDO (idDetalle, NroPedido, id_Producto, precio_unitario, cantidad) VALUES (DEFAULT, 10, 10, 42000.00, 4);
INSERT INTO DETALLE_PEDIDO (idDetalle, NroPedido, id_Producto, precio_unitario, cantidad) VALUES (DEFAULT, 11, 11, 44000.00, 1);
INSERT INTO DETALLE_PEDIDO (idDetalle, NroPedido, id_Producto, precio_unitario, cantidad) VALUES (DEFAULT, 12, 12, 46000.00, 2);
INSERT INTO DETALLE_PEDIDO (idDetalle, NroPedido, id_Producto, precio_unitario, cantidad) VALUES (DEFAULT, 13, 13, 48000.00, 3);
INSERT INTO DETALLE_PEDIDO (idDetalle, NroPedido, id_Producto, precio_unitario, cantidad) VALUES (DEFAULT, 14, 14, 50000.00, 2);
INSERT INTO DETALLE_PEDIDO (idDetalle, NroPedido, id_Producto, precio_unitario, cantidad) VALUES (DEFAULT, 15, 15, 52000.00, 4);
INSERT INTO DETALLE_PEDIDO (idDetalle, NroPedido, id_Producto, precio_unitario, cantidad) VALUES (DEFAULT, 14, 14, 54000.00, 1);
INSERT INTO DETALLE_PEDIDO (idDetalle, NroPedido, id_Producto, precio_unitario, cantidad) VALUES (DEFAULT, 11, 11, 56000.00, 2);
INSERT INTO DETALLE_PEDIDO (idDetalle, NroPedido, id_Producto, precio_unitario, cantidad) VALUES (DEFAULT, 10, 10, 58000.00, 3);
INSERT INTO DETALLE_PEDIDO (idDetalle, NroPedido, id_Producto, precio_unitario, cantidad) VALUES (DEFAULT, 4, 4, 60000.00, 2);
INSERT INTO DETALLE_PEDIDO (idDetalle, NroPedido, id_Producto, precio_unitario, cantidad) VALUES (DEFAULT, 2, 2, 62000.00, 4);

-- CREACION INSERT ARREGLOS
INSERT INTO ARREGLOS (idArreglos, arreglos, id_cliente, id_producto, id_pedido) VALUES (DEFAULT, 'Ajuste de cintura', 1, 1, 1);
INSERT INTO ARREGLOS (idArreglos, arreglos, id_cliente, id_producto, id_pedido) VALUES (DEFAULT, 'Cambio de cremallera', 2, 2, 2);
INSERT INTO ARREGLOS (idArreglos, arreglos, id_cliente, id_producto, id_pedido) VALUES (DEFAULT, 'Acortar mangas', 3, 3, 3);
INSERT INTO ARREGLOS (idArreglos, arreglos, id_cliente, id_producto, id_pedido) VALUES (DEFAULT, 'Ajuste de hombros', 4, 4, 4);
INSERT INTO ARREGLOS (idArreglos, arreglos, id_cliente, id_producto, id_pedido) VALUES (DEFAULT, 'Ensanchado de cadera', 5, 5, 5);
INSERT INTO ARREGLOS (idArreglos, arreglos, id_cliente, id_producto, id_pedido) VALUES (DEFAULT, 'Ajuste de busto', 6, 6, 6);
INSERT INTO ARREGLOS (idArreglos, arreglos, id_cliente, id_producto, id_pedido) VALUES (DEFAULT, 'Cambio de botones', 7, 7, 7);
INSERT INTO ARREGLOS (idArreglos, arreglos, id_cliente, id_producto, id_pedido) VALUES (DEFAULT, 'Ajuste de largo', 8, 8, 8);
INSERT INTO ARREGLOS (idArreglos, arreglos, id_cliente, id_producto, id_pedido) VALUES (DEFAULT, 'Ajuste de cintura', 9, 9, 9);
INSERT INTO ARREGLOS (idArreglos, arreglos, id_cliente, id_producto, id_pedido) VALUES (DEFAULT, 'Cambio de cremallera', 10, 10, 10);
INSERT INTO ARREGLOS (idArreglos, arreglos, id_cliente, id_producto, id_pedido) VALUES (DEFAULT, 'Acortar mangas', 11, 11, 11);
INSERT INTO ARREGLOS (idArreglos, arreglos, id_cliente, id_producto, id_pedido) VALUES (DEFAULT, 'Ajuste de hombros', 12, 12, 12);
INSERT INTO ARREGLOS (idArreglos, arreglos, id_cliente, id_producto, id_pedido) VALUES (DEFAULT, 'Ensanchado de cadera', 13, 13, 13);
INSERT INTO ARREGLOS (idArreglos, arreglos, id_cliente, id_producto, id_pedido) VALUES (DEFAULT, 'Ajuste de busto', 14, 14, 14);
INSERT INTO ARREGLOS (idArreglos, arreglos, id_cliente, id_producto, id_pedido) VALUES (DEFAULT, 'Cambio de botones', 15, 15, 15);
INSERT INTO ARREGLOS (idArreglos, arreglos, id_cliente, id_producto, id_pedido) VALUES (DEFAULT, 'Ajuste de largo', 16, 14, 16);
INSERT INTO ARREGLOS (idArreglos, arreglos, id_cliente, id_producto, id_pedido) VALUES (DEFAULT, 'Ajuste de cintura', 17, 11, 17);
INSERT INTO ARREGLOS (idArreglos, arreglos, id_cliente, id_producto, id_pedido) VALUES (DEFAULT, 'Cambio de cremallera', 18, 10, 18);
INSERT INTO ARREGLOS (idArreglos, arreglos, id_cliente, id_producto, id_pedido) VALUES (DEFAULT, 'Acortar mangas', 19, 4, 19);
INSERT INTO ARREGLOS (idArreglos, arreglos, id_cliente, id_producto, id_pedido) VALUES (DEFAULT, 'Ajuste de hombros', 20, 2, 20);


-- CREACION INSERT TURNOS
INSERT INTO TURNOS (idTurno, fechaturno, retiro, confección) VALUES (DEFAULT, '2024-05-17 08:00:00', '2024-05-17 12:00:00', 1);
INSERT INTO TURNOS (idTurno, fechaturno, retiro, confección) VALUES (DEFAULT, '2024-05-17 09:00:00', '2024-05-17 13:00:00', 2);
INSERT INTO TURNOS (idTurno, fechaturno, retiro, confección) VALUES (DEFAULT, '2024-05-17 10:00:00', '2024-05-17 14:00:00', 3);
INSERT INTO TURNOS (idTurno, fechaturno, retiro, confección) VALUES (DEFAULT, '2024-05-17 11:00:00', '2024-05-17 15:00:00', 4);
INSERT INTO TURNOS (idTurno, fechaturno, retiro, confección) VALUES (DEFAULT, '2024-05-17 12:00:00', '2024-05-17 16:00:00', 5);
INSERT INTO TURNOS (idTurno, fechaturno, retiro, confección) VALUES (DEFAULT, '2024-05-17 13:00:00', '2024-05-17 17:00:00', 6);
INSERT INTO TURNOS (idTurno, fechaturno, retiro, confección) VALUES (DEFAULT, '2024-05-17 14:00:00', '2024-05-17 18:00:00', 7);
INSERT INTO TURNOS (idTurno, fechaturno, retiro, confección) VALUES (DEFAULT, '2024-05-17 15:00:00', '2024-05-17 19:00:00', 8);
INSERT INTO TURNOS (idTurno, fechaturno, retiro, confección) VALUES (DEFAULT, '2024-05-17 16:00:00', '2024-05-17 20:00:00', 9);
INSERT INTO TURNOS (idTurno, fechaturno, retiro, confección) VALUES (DEFAULT, '2024-05-17 17:00:00', '2024-05-17 21:00:00', 10);
INSERT INTO TURNOS (idTurno, fechaturno, retiro, confección) VALUES (DEFAULT, '2024-05-17 08:30:00', '2024-05-17 12:30:00', 11);
INSERT INTO TURNOS (idTurno, fechaturno, retiro, confección) VALUES (DEFAULT, '2024-05-17 09:30:00', '2024-05-17 13:30:00', 12);
INSERT INTO TURNOS (idTurno, fechaturno, retiro, confección) VALUES (DEFAULT, '2024-05-17 10:30:00', '2024-05-17 14:30:00', 13);
INSERT INTO TURNOS (idTurno, fechaturno, retiro, confección) VALUES (DEFAULT, '2024-05-17 11:30:00', '2024-05-17 15:30:00', 14);
INSERT INTO TURNOS (idTurno, fechaturno, retiro, confección) VALUES (DEFAULT, '2024-05-17 12:30:00', '2024-05-17 16:30:00', 15);
INSERT INTO TURNOS (idTurno, fechaturno, retiro, confección) VALUES (DEFAULT, '2024-05-17 13:30:00', '2024-05-17 17:30:00', 16);
INSERT INTO TURNOS (idTurno, fechaturno, retiro, confección) VALUES (DEFAULT, '2024-05-17 14:30:00', '2024-05-17 18:30:00', 17);
INSERT INTO TURNOS (idTurno, fechaturno, retiro, confección) VALUES (DEFAULT, '2024-05-17 15:30:00', '2024-05-17 19:30:00', 18);
INSERT INTO TURNOS (idTurno, fechaturno, retiro, confección) VALUES (DEFAULT, '2024-05-17 16:30:00', '2024-05-17 20:30:00', 19);
INSERT INTO TURNOS (idTurno, fechaturno, retiro, confección) VALUES (DEFAULT, '2024-05-17 17:30:00', '2024-05-17 21:30:00', 20);
-- describe turnos;

/* CREACION DE VISTAS */

-- CREACION DE VISTA DE MEDIDAS DE CLIENTE
CREATE VIEW Vista_Clientes_Medidas AS
 SELECT c.idCliente, c.nombre, c.apellido, c.dirección, c.telefono, m.altura, m.busto, m.cintura, m.cadera, m.largoespalda
 FROM CLIENTE c
 INNER JOIN MEDIDAS m ON c.Medidas = m.idMedidas;

-- INVOCACION DE VISTA DE MEDIDAS DE CLIENTE
SELECT * FROM Vista_Clientes_Medidas;

/* ARREGLOS
-- Actualizar identificadores de la tabla CLIENTE
SET @id := 0;
UPDATE CLIENTE SET idCliente = (@id := @id + 1) ORDER BY idCliente; */


-- CREACION DE VISTA TELAS Y PROVEEDORES
CREATE VIEW Vista_Telas_Proveedores AS
SELECT t.tipodetela, t.descripcion, p.nombre AS nombre_proveedor, p.dirección AS dirección_proveedor, p.telefono AS telefono_proveedor, p.precio AS precio_tela
FROM TELAS t
LEFT JOIN PROV_TELAS pt ON t.idTela = pt.id_tela
LEFT JOIN PROVEEDORES p ON pt.id_Proveedores = p.idProveedores;


-- INVOCACION DE LA VISTA
SELECT * FROM Vista_Telas_Proveedores;


-- CREACION DE VISTA DE DETALLE DE PEDIDO 
CREATE VIEW Vista_Detalles_Pedidos AS
SELECT dp.idDetalle, p.tipódeproducto, dp.precio_unitario, dp.cantidad, cl.nombre AS nombre_cliente, cl.apellido AS apellido_cliente
FROM DETALLE_PEDIDO dp
INNER JOIN PRODUCTO p ON dp.id_Producto = p.idProducto
INNER JOIN PEDIDO pd ON dp.NroPedido = pd.idPedido
INNER JOIN CLIENTE cl ON pd.id_Cliente = cl.idCliente;

-- DESCRIBE DETALLE_PEDIDO;

-- INVOCACION DE LA VISTA
 SELECT * FROM vista_detalles_pedidos;
 
 
 -- CREACION DE LA VISTA DE ARREGLOS Y TURNOS
CREATE VIEW Vista_Arreglos_Turnos AS 
SELECT a.arreglos, a.id_cliente, a.id_producto, a.id_pedido, t.fechaturno, t.retiro 
FROM ARREGLOS a 
RIGHT JOIN TURNOS t ON a.id_pedido = t.confección;

-- INVOCACION DE LA VISTA 
SELECT * FROM vista_arreglos_turnos;

/*ARREGLOS
 DESCRIBE arreglos; */
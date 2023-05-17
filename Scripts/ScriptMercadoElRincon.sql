/*Creacion base de datos y tablas*/

Create Database Mercado_ElRincon;
Use Mercado_ElRincon;

CREATE TABLE Proveedores (
Proveedor_ID INT PRIMARY KEY,
Nombre VARCHAR(255),
Tipo VARCHAR(255)
);

CREATE TABLE Productos (
Producto_ID INT PRIMARY KEY,
Nombre VARCHAR(255),
);

CREATE TABLE Clientes (
Cliente_ID INT PRIMARY KEY,
Nombre VARCHAR(255),
LineaCredito DECIMAL(10, 2)
);

CREATE TABLE Compras (
Compra_ID INT PRIMARY KEY,
Cliente_ID INT,
Fecha DATE
);

CREATE TABLE DetallesCompra (
Compra_ID INT,
Producto_ID INT,
Cantidad INT,
PrecioCompra DECIMAL(10, 2),
PRIMARY KEY (Compra_ID, Producto_ID),
FOREIGN KEY (Compra_ID) REFERENCES Compras(Compra_ID),
FOREIGN KEY (Producto_ID) REFERENCES Productos(Producto_ID)
);

CREATE TABLE PagosClientes (
Pago_ID INT PRIMARY KEY,
Cliente_ID INT,
Monto DECIMAL(10, 2),
Fecha DATE,
FOREIGN KEY (Cliente_ID) REFERENCES Clientes(Cliente_ID)
);

CREATE TABLE CajaApertura (
Apertura_ID INT PRIMARY KEY,
Fecha DATE,
Monto DECIMAL(10, 2)
);

/*Creacion de tablas*/

INSERT INTO Proveedores (Proveedor_ID, Nombre, Tipo) VALUES
(1001, 'KEVIN',   'AMBULANTE'),
(1002, 'EDINER',  'AMBULANTE'),
(1003, 'MARCELA', 'AMBULANTE'),
(1004, 'JUAN',    'AMBULANTE'),
(1005, 'PABLO',   'AMBULANTE'),
(1006, 'JOSE',    'AMBULANTE'),
(1007, 'SURTIDORA5', 'SURTIDORA'),
(1008, 'LOSPATOS',   'SURTIDORA'),
(1009, 'SHUYINDUSTRIES', 'SURTIDORA'),
(1010, 'SOSUINDUSTRIES', 'SURTIDORA');

INSERT INTO Productos (Producto_ID, Nombre) VALUES
(1, 'verduras'),
(2, 'Jabones'),
(3, 'Doggi'),
(4, 'Super perro'),
(5, 'chichrarron'),
(6, 'Huevos'),
(7, 'Jamon'),
(8, '6-pax de coca'),
(9, 'Jabon ultra'),
(10, '12 powerade');

INSERT INTO Clientes (Cliente_ID, Nombre, LineaCredito) VALUES
(1111, 'Keyla', 100.00),
(2222, 'Susana', 200.00),
(3333, 'Marita', 150.00),
(4444, 'Don Sebastian', 300.00),
(5555, 'Betillo', 250.00),
(6666, 'Kevin', 180.00),
(7777, 'La lora', 120.00),
(8888, 'La tita de la camisa azul', 400.00),
(9999, 'Don Jose', 220.00),
(1100, 'Shuy', 280.00);

INSERT INTO Compras (Compra_ID, Cliente_ID, Fecha) VALUES
(501, 1111, '2023-01-01'),
(502, 1111, '2023-02-05'),
(503, 2222, '2023-03-10'),
(504, 3333, '2023-04-15'),
(505, 4444, '2023-05-20'),
(506, 5555, '2023-06-25'),
(507, 6666, '2023-07-30'),
(508, 7777, '2023-08-05'),
(509, 8888, '2023-09-10'),
(510, 9999, '2023-10-15');

INSERT INTO DetallesCompra (Compra_ID, Producto_ID, Cantidad, PrecioCompra) VALUES
(501, 1, 5, 10.99),
(501, 2, 3, 5.99),
(502, 3, 2, 15.99),
(502, 4, 4, 8.99),
(503, 5, 1, 12.99),
(503, 6, 3, 9.99),
(504, 7, 2, 7.99),
(504, 8, 6, 11.99),
(505, 9, 4, 14.99),
(505, 10, 5, 6.99);

INSERT INTO PagosClientes (Pago_ID, Cliente_ID, Monto, Fecha) VALUES
(1, 1111, 50.00, '2023-01-01'),
(2, 2222, 75.00, '2023-02-05'),
(3, 3333, 100.00, '2023-03-10'),
(4, 4444, 60.00, '2023-04-15'),
(5, 5555, 90.00, '2023-05-20'),
(6, 6666, 120.00, '2023-06-25'),
(7, 7777, 80.00, '2023-07-30'),
(8, 8888, 110.00, '2023-08-05'),
(9, 9999, 95.00, '2023-09-10'),
(10, 1100, 70.00, '2023-10-15');

INSERT INTO CajaApertura (Apertura_ID, Fecha, Monto) VALUES
(1, '2023-01-01', 100.00),
(2, '2023-02-05', 500.00),
(3, '2023-03-10', 200.00),
(4, '2023-04-15', 100.00),
(5, '2023-05-20', 800.00),
(6, '2023-06-25', 500.00),
(7, '2023-07-30', 300.00),
(8, '2023-08-05', 600.00),
(9, '2023-09-10', 200.00),
(10, '2023-10-15',900.00);

 